//
//  ViewController.swift
//  didw
//
//  Created by 이예림 on 2022/09/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //navigation bar 커스텀
        self.title = "더보기"
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "otherCell", for: indexPath) as? OtherTableViewCell else { return UITableViewCell() }
            // 셀에 넣을 text을 정하고
        
        switch indexPath.row {
            case 0: cell.setOtherLabelCell(text: "공지사항")
            case 1: cell.setOtherLabelCell(text: "고객센터")
            case 2: cell.setOtherLabelCell(text: "앱 설정")
            default: cell.setOtherLabelCell(text: "공지사항")
        }
            // 셀에 text를 넣어준다.
            // 셀을 리턴한다.
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.5
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
