//
//  MainViewController.swift
//  Uber Eats
//
//  Created by Ben Clarke on 18/01/2021.
//

import UIKit

class MainViewController: UICollectionViewController {
    
    private let reuseIdentifier = "Cell"
    
    //MARK: - Data
    var titleData = [TitleCard]()
    var catData = [CategoryCard]()
    var listData = [ListCard]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///NavigationController formatting
        navigationItem.title = "Uber Eats UI"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .black
        
        ///CollectionView set-up & cell registering
        collectionView.collectionViewLayout = createLayout()
        collectionView.backgroundColor = .systemGray5
        
        self.collectionView!.register(HeaderCollectionViewCell.self, forCellWithReuseIdentifier: HeaderCollectionViewCell.id)
        self.collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.id)
        self.collectionView.register(NotificationCollectionViewCell.self, forCellWithReuseIdentifier: NotificationCollectionViewCell.id)
        self.collectionView.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: ListCollectionViewCell.id)
        self.collectionView.register(Header.self, forSupplementaryViewOfKind: categoryHeaderID, withReuseIdentifier: headerID)
        
        configureData()
    }
    
    //MARK: - CompositionalLayout - assisting function can be found in CollectionViewExtensions
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, enviroment) -> NSCollectionLayoutSection? in
            
            if sectionNumber ==  0 {
                ///Title cards
                return self.collectionView.titleCard()
            } else if sectionNumber == 1 {
                ///Category cards
                return self.collectionView.categoryCards(headerID: self.categoryHeaderID)
            } else if sectionNumber == 2 {
                ///Message/notificationc card
                return self.collectionView.messageCard()
            } else if sectionNumber == 3 {
                ///Favourite cards
                return self.collectionView.favouriteCards(headerID: self.categoryHeaderID)
            } else {
                /// In a rushc ards
                return self.collectionView.rushCards(headerID: self.categoryHeaderID)
            }
        }
    }
    
    
    
    // MARK: UICollectionViewDataSource methods
    let categoryHeaderID = "categoryHeaderID"
    let headerID = "headerID"
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath) as! Header
        
        if indexPath.section == 1 {
            header.label.text = "Restaurants, cuisines & dishes"
        } else if indexPath.section == 3 {
            header.label.text = "Favourites"
        } else {
            header.label.text = "In a rush?"
        }
        
        return header
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return titleData.count
        } else if section == 1 {
            return catData.count
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return listData.count
        }
        
        return listData.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderCollectionViewCell.id, for: indexPath) as! HeaderCollectionViewCell
            cell.titleLabel.text  = titleData[indexPath.item].headLine
            cell.buttonLabel.text = titleData[indexPath.item].buttonText
            cell.titleImageView.image = UIImage(named: "\(titleData[indexPath.row].imageName)")
            
            return cell
            
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.id, for: indexPath) as! CategoryCollectionViewCell
            cell.catFoodImgLabel.text = catData[indexPath.item].imgLabelIcon
            cell.catLabel.text = catData[indexPath.item].descriptionLabel
            
            return cell
            
        } else if indexPath.section == 2 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NotificationCollectionViewCell.id, for: indexPath) as! NotificationCollectionViewCell
            cell.notificationImage.image =  UIImage(named: "error")
            cell.infoLabel.text = "Configure account"
            
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListCollectionViewCell.id, for: indexPath) as! ListCollectionViewCell
            cell.titleImageView.image = UIImage(named: listData[indexPath.item].imageName)
            cell.titleLabel.text = listData[indexPath.row].headLine
            cell.bottomLabel.text = listData[indexPath.item].bottomText
            
            return cell
        }
    }
    
    
    //MARK: - Configure Data
    func configureData() {
        titleData = TitleCard.returnData()
        catData = CategoryCard.returnData()
        listData = ListCard.returnData()
    }
    
}
