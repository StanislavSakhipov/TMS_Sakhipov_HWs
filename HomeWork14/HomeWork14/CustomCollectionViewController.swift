//
//  CustomCollectionViewController.swift
//  HomeWork14
//
//  Created by Stanislav Sakhipov on 8/21/24.
//

import UIKit

final class CustomCollectionViewController: UIViewController {
    
    private let clubData: [String] = ["Arsenal", "Aston Villa", "Bournemouth", "Brentford F.C.", "Brighton & Hove Albion", "Chelsea", "Crystal Palace F.C.", "Everton F.C.", "Fulham F.C.", "Leeds United", "Leicester City", "Liverpool F.C.", "Manchester City F.C.", "Manchester United", "Newcastle United", "Nottingham Forest F.C.", "Southampton F.C.", "Tottenham Hotspur F.C.", "Wolverhampton Wanderers", "West Ham United"]
    
    private let viewCellIdentifier = "Cell"
    
    private lazy var customCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let customCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        customCollectionView.register(Cell.self, forCellWithReuseIdentifier: viewCellIdentifier)
        customCollectionView.delegate = self
        customCollectionView.dataSource = self
        return customCollectionView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(customCollectionView)
        customCollectionView.frame = view.bounds
    }
}

extension CustomCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clubData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = customCollectionView.dequeueReusableCell(withReuseIdentifier: viewCellIdentifier, for: indexPath) as?  Cell
        else {return UICollectionViewCell()}
        let imageLogo = UIImage(named: clubData[indexPath.item])
        cell.configure(imageClubLogo: imageLogo ?? UIImage(),  labelClubName: clubData[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 170, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        15
    }
}
  
