//
//  RedViewController.swift
//  music-app
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class RedViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
    }
    
    let musicList : [MusicData]=[
        MusicData(nome: "Kriptonite", img: "AntagonistCover"),
                  ]
                
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return musicList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier:"musicCell") as? MusicTableViewCell else{
                fatalError("Nao foi encontrado")
            }
            cell.configure(musicData: musicList[indexPath.item])
            return cell
        }

    
    
    
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

