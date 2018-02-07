//
//  ViewController.swift
//  SimpleTable
//
//  Created by HSU JUI-FU on 2018/2/7.
//  Copyright © 2018年 AndyShi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oyster","For Kee Restaurant","Po's Atelier","Bourke Street Bakery","Haigh's Chocolate","Palomino Espresso","Upstate","Traif","Graham Avenue Meats and Deli","Waffie & Wolf","Five Leaves","Cafe Lore","Confessional","Barrafina","Donostia","Royal Oak","CASK Pub and Kitchen"];
    var restaurantImage = [#imageLiteral(resourceName: "cafedeadend"),#imageLiteral(resourceName: "homei"),#imageLiteral(resourceName: "teakha"),#imageLiteral(resourceName: "cafeloisl"),#imageLiteral(resourceName: "petiteoyster"),#imageLiteral(resourceName: "forkeerestaurant"),#imageLiteral(resourceName: "posatelier"),#imageLiteral(resourceName: "bourkestreetbakery"),#imageLiteral(resourceName: "haighschocolate"),#imageLiteral(resourceName: "palominoespresso"),#imageLiteral(resourceName: "upstate"),#imageLiteral(resourceName: "traif"),#imageLiteral(resourceName: "grahamavenuemeats"),#imageLiteral(resourceName: "wafflewolf"),#imageLiteral(resourceName: "fiveleaves"),#imageLiteral(resourceName: "cafelore"),#imageLiteral(resourceName: "confessional"),#imageLiteral(resourceName: "barrafina"),#imageLiteral(resourceName: "donostia"),#imageLiteral(resourceName: "royaloak"),#imageLiteral(resourceName: "caskpubkitchen")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell";
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row];
        cell.imageView?.image = restaurantImage[indexPath.row];
        
        return cell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 隱藏時間等等最上調bar的狀態列
    override var prefersStatusBarHidden:Bool{
        return true;
    }

}

