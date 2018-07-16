
import UIKit
protocol OnDrawerItemSelected {
    
    func onPeopleStoriesSelected()
    
    func onGymAlternativesSelected()
    
    func onFoodSelected()
    
    func onGymSelected()
    
    func onHomeRemediesSelected()
    
    static func getCurrentIndexName() -> String
    
}

class SenfinaSideMenuTableTableViewController: UITableViewController {
    
    let senfinaMenuHeaders:[String] = ["Motivation","Workouts","Diet"]
    let senfinaMenuItems:[[String]] = [["People & Stories"],["Gym", "Gym Alternatives"],["Food","Home Remedies"]]
    let genericDrawerViewController = GenericDrawerViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsetsMake(64.0, 0, -22, 0)
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.white
        tableView.scrollsToTop = false
        tableView.sectionFooterHeight = 1
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return senfinaMenuItems.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return senfinaMenuItems[section].count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        var cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "SideMenuCell")
            cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator             //disclosureIndicator
            cell!.backgroundColor = UIColor.white
            cell!.textLabel?.textColor = UIColor.black
            cell?.textLabel?.font = UIFont(name: "Avenir-Light", size: 13)
            cell?.indentationLevel = 4
            let selectedBackgroundView = UIView(frame: CGRect(x : 0,y : 0,width : cell!.frame.size.width,height : cell!.frame.size.height))
            selectedBackgroundView.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
            cell!.selectedBackgroundView = selectedBackgroundView
            cell!.separatorInset = UIEdgeInsets.zero
            
            let separator = UIView(frame: CGRect(x : 55, y : cell!.frame.size.height,width : self.tableView.frame.size.width,height : 1))
            separator.backgroundColor = UIColor.black
            separator.tag = 9999
            cell?.addSubview(separator)
        }
        let view = cell!.viewWithTag(9999)
        let count = senfinaMenuItems[indexPath.section].count
        if indexPath.row == count - 1 {
            view?.isHidden = true
        } else {
            view?.isHidden = false
        }
        
        cell!.textLabel?.text = senfinaMenuItems[indexPath.section][indexPath.row]
        cell?.selectionStyle = .none
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x : 0,y : 0,width : view.frame.size.width,height : 40))
        //        let imageView =  UIImageView(image:UIImage(named: "drawer-new-\(headerImages[section])"))
        //        imageView.frame = CGRect(x : 10, y : 02,width : 35,height : 35)
        //        imageView.contentMode = UIViewContentMode.center
        //        headerView.addSubview(imageView)
        
        let titleLable = UILabel(frame: CGRect(x : 57,y : 0,width : view.frame.size.width-60,height : 40))
        titleLable.text = senfinaMenuHeaders[section]
        titleLable.textColor = UIColor.white
        titleLable.font = UIFont(name: "Avenir-Medium", size: 16)
        headerView.addSubview(titleLable)
        headerView.backgroundColor = UIColor.black
        return headerView
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedString = senfinaMenuItems[indexPath.section][indexPath.row]
        if "People & Stories" == selectedString{
            genericDrawerViewController.onPeopleStoriesSelected()
        }
        else if "Gym" == selectedString{
            genericDrawerViewController.onGymSelected()
        }
        else if "Gym Alternatives" == selectedString{
            genericDrawerViewController.onGymAlternativesSelected()
        }
        else if "Food" == selectedString{
            genericDrawerViewController.onFoodSelected()
        }
        else if "Home Remedies" == selectedString{
            genericDrawerViewController.onHomeRemediesSelected()
        }
        
        
        
    }

    
    
}
