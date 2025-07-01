//
//  MusicTableViewCell.swift
//  music-app
//
//  Created by COTEMIG on 01/07/25.
//

import UIKit

struct MusicData{
    let nome: String
    let img: String
}

class MusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var musicName: UILabel!
    @IBOutlet weak var musicImage: UIImageView!
    func configure(musicData: MusicData){
        musicName.text = musicData.nome
        musicImage.image = UIImage(named:  musicData.img)
    }
    
 

}
