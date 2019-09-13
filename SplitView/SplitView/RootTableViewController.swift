//
//  RootTableViewController.swift
//  SplitView
//
//  Created by Ufuk Köşker on 30.08.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
    
    var allCompanies = [Company]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let apple = Company(name: "Apple",
                           foundationYear: "1 Nisan 1976" ,
                           logo: UIImage(named: "apple"),
                           description: "Apple şirketinin kurucuları Steve Jobs ve Steve Wozniak lisede (high school) sınıf arkadaşıydılar. Okul sonrası iletişimleri bir süre koptu. 1974 yılında Intel 8080’i çıkartıp ilk mikrobilgisayar olan Altair de yapılınca Amerika’da mikrobilgisayarlara ilgi çok arttı. Her yerde bilgisayar kulüpleri kuruldu. Genç girişimciler de çeşitli olanaklar için fırsat kollamaya başladılar. Bill Gates ve arkadaşı Paul Allen Altair için Basic yorumlayıcısı yazıp işi biraz büyütmüşlerdi. 1975 yılında Harward’tan ayrılarak Microsoft şirketini kurdular.")
        
        let microsoft = Company(name: "Microsoft",
                                 foundationYear: "4 Nisan 1975",
                                 logo: UIImage(named: "microsoft"),
                                 description: "29 Temmuz 1975’te Bill Gates, “Micro-Soft” adını Paul Allen’a yazdığı bir mektupta ortaklıklarından bahsetmek için kullandı. “Micro” kelimesi mikro işlemciyi, “Soft” kelimesi ise yazılımı temsil ediyordu. Bu isim, 26 Kasım 1976’da New Mexico eyalet sekreteri tarafından tescil edildi. Ağustos 1977’de, şirket, ilk uluslararası ofisini ASCII Microsoft adıyla Japonya’da açtı. 1981 yılında şirket, Washington eyaletinde anonim bir şirkete haline geldi ve Microsoft Inc. ismini aldı. Bill Gates, şirketin CEO’su ve yönetim kurulu başkanıydı ve Paul Allen ise başkan yardımcısıydı.")
        
        let samsung = Company(name: "Samsung", foundationYear: "1 Mart 1938", logo: UIImage(named: "samsung"), description: "Samsung, 1938’de Byung-Chull Lee tarafından Kore’nin Taegu şehrinde kuruldu. Şirket işe Kore’de bir gıda ihracatçısı olarak başladı ve Çin’e kurutulmuş balık, meyve, sebze ve un gibi gıda ürünleri ihraç ediyordu.")
        
        allCompanies = [apple, microsoft, samsung]
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allCompanies.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rootCell", for: indexPath)
        let company = allCompanies[indexPath.row]
        cell.textLabel?.text = company.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCompany = allCompanies[indexPath.row]
        let VC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController//Burada View Controller sayfamızdaki 
        VC.company = selectedCompany
        splitViewController?.showDetailViewController(VC, sender: nil)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
