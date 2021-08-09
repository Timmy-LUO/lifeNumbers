//
//  LifeNumbersViewController.swift
//  lifeNumbers
//
//  Created by 羅承志 on 2021/8/6.
//

import UIKit

class LifeNumbersViewController: UIViewController {
    
    @IBOutlet weak var constellationDatePicker: UIDatePicker!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func constellation() {
        //選取日期
        let pickDate = constellationDatePicker.date
        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: pickDate)
        let year = dateComponents.year!
        let month = dateComponents.month!
        let day = dateComponents.day!
        //取現在日期
        let today = Date()
        let currentDateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: today)
        let currentYear = currentDateComponents.year!
        var age = 0
        //計算當前年紀
        age = currentYear - year
        //年紀不出現負數
        if age < 0 {
            age = 0
        }
        ageLabel.text = "您目前 \(age) 歲"
        
        //設定星座的日期區間、顯示星座和對應的照片
        if month == 1 && day >= 19 || month == 2 && day <= 19 {
            starLabel.text = "水瓶座"
            starImageView.image = UIImage(named: "10")
        } else if month == 2 && day >= 20 || month == 3 && day <= 20 {
            starLabel.text = "雙魚座"
            starImageView.image = UIImage(named: "11")
        } else if month == 3 && day >= 21 || month == 4 && day <= 20 {
            starLabel.text = "牡羊座"
            starImageView.image = UIImage(named: "00")
        } else if month == 4 && day >= 21 || month == 5 && day <= 20 {
            starLabel.text = "金牛座"
            starImageView.image = UIImage(named: "01")
        } else if month == 5 && day >= 21 || month == 6 && day <= 20 {
            starLabel.text = "雙子座"
            starImageView.image = UIImage(named: "02")
        } else if month == 6 && day >= 21 || month == 7 && day <= 22 {
            starLabel.text = "巨蟹"
            starImageView.image = UIImage(named: "03")
        } else if month == 7 && day >= 23 || month == 8 && day <= 22 {
            starLabel.text = "獅子座"
            starImageView.image = UIImage(named: "04")
        } else if month == 8 && day >= 23 || month == 9 && day <= 22 {
            starLabel.text = "處女座"
            starImageView.image = UIImage(named: "05")
        } else if month == 9 && day >= 23 || month == 10 && day <= 22 {
            starLabel.text = "天秤座"
            starImageView.image = UIImage(named: "06")
        } else if month == 10 && day >= 23 || month == 11 && day <= 22 {
            starLabel.text = "天蠍座"
            starImageView.image = UIImage(named: "07")
        } else if month == 11 && day >= 23 || month == 12 && day <= 22 {
            starLabel.text = "射手座"
            starImageView.image = UIImage(named: "08")
        } else {
            starLabel.text = "摩羯座"
            starImageView.image = UIImage(named: "09")
        }
    }
        @IBAction func showConstellation(_ sender: UIButton) {
        constellation()
    }
    
    @IBSegueAction func lifeNumberWeb(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.lifeNumber = constellationDatePicker.date
        return controller
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
