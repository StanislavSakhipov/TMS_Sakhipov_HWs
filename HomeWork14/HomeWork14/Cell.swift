//
//  Cell.swift
//  HomeWork14
//
//  Created by Stanislav Sakhipov on 8/22/24.
//

import UIKit

final class Cell: UICollectionViewCell {
    
    private let labelClub : UILabel = {
        let labelClub = UILabel()
        labelClub.textColor = .black
        labelClub.textAlignment = .center
        return labelClub
    }()
    
    private lazy var imageClub: UIImageView = {
        let imageClub = UIImageView()
        imageClub.contentMode = .scaleAspectFit
        return imageClub
    }()
    
    private lazy var stackClub: UIStackView = {
        let stackClub = UIStackView()
        stackClub.axis = .vertical
        stackClub.distribution = .equalCentering
        return stackClub
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stackClub)
        stackClub.addArrangedSubview(imageClub)
        stackClub.addArrangedSubview(labelClub)
        stackClub.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackClub.widthAnchor.constraint(equalToConstant: 170)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure (imageClubLogo: UIImage, labelClubName: String) {
        labelClub.text = labelClubName
        imageClub.image = imageClubLogo
    }
    
    override func prepareForReuse() {
        imageClub.image = nil
    }

}
