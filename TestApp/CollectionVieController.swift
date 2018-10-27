//
//  CollectionVieController.swift
//  TestApp
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import UIKit


extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    }
    
    
}
