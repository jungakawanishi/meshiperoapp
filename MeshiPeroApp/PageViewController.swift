//
//  PageViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/04/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
                
    }
            
    func getFirst() -> CurryRiceViewController {
        return storyboard!.instantiateViewController(withIdentifier: "CurryRiceViewController") as!CurryRiceViewController
    }
    
    func getSecond() -> FriedRiceViewController {
        return storyboard!.instantiateViewController(withIdentifier: "FriedRiceViewController") as!FriedRiceViewController
    }
    
}
        
    extension PageViewController : UIPageViewControllerDataSource {
            
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
                if viewController.isKind(of: FriedRiceViewController.self) {
                    return getFirst()
                } else {
                    return nil
                }
            }
            
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
                if viewController.isKind(of: CurryRiceViewController.self) {
                    return getSecond()
                } else {
                    return nil
                }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

