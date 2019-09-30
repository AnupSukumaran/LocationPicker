//
//  Picker.swift
//  LocationPicker
//
//  Created by Qaptive Technologies on 26/09/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

public class Picker: NSObject {

   public static var shared = Picker()
    
   public func pickerVC(_ main: UIViewController) {
    
    guard let vc = storyboard.instantiateViewController(withIdentifier: "PickerMapViewController") as? PickerMapViewController else {fatalError("PickerMapViewController IS MISSING LocationPicker pod file")}
        vc.funcs.delegate = main as? PickerMapViewModelDelegate
        let nav = UINavigationController.init(rootViewController: vc)
        nav.modalPresentationStyle  = .fullScreen
        main.present(nav, animated: true, completion: nil)
    }
    
//    func showController() {
//          let bundle = Bundle(identifier: "QaptiveTech.LocationPicker")
//          guard let vc = UIStoryboard(name: "Main", bundle: bundle).instantiateViewController(withIdentifier: "PickerMapViewController") as? PickerMapViewController else {fatalError("PickerMapViewController IS MISSING LocationPicker pod file")}
//              vc.funcs.delegate = self.rootController as? PickerMapViewModelDelegate
//              let nav = UINavigationController.init(rootViewController: vc)
//              nav.modalPresentationStyle  = .fullScreen
//          self.rootController?.present(vc, animated: true, completion: nil)
//      }
}
