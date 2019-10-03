//
//  UIStoryboard+Ext.swift
//  SlideOutNavigation
//
//  Created by Qaptive Technologies on 02/05/19.
//  Copyright © 2019 James Frost. All rights reserved.
//

import UIKit

extension UIStoryboard {
  
    
    //MARK:-----------***For Picker Storyboard***-----------//
    //MARK: @@@PlacePicker
    
    
   public static func pickerStoryboard() -> UIStoryboard {
     let bundle = Bundle(identifier: "QaptiveTech.LocationPicker")
        return UIStoryboard(name: "Main", bundle: bundle)
    }

   static func nearByPlacesListViewController() -> NearByPlacesListViewController? {
        if #available(iOS 13.0, *) {
            return pickerStoryboard().instantiateViewController(identifier: "NearByPlacesListViewController") as? NearByPlacesListViewController
        } else {
            return pickerStoryboard().instantiateViewController(withIdentifier: "NearByPlacesListViewController") as? NearByPlacesListViewController
        }
    
    }

    
    public static func mapViewController() -> PickerMapViewController? {
        if #available(iOS 13.0, *) {
            return pickerStoryboard().instantiateViewController(identifier: "VC") as? PickerMapViewController
        } else {
            return pickerStoryboard().instantiateViewController(withIdentifier: "VC") as? PickerMapViewController
        }
    }
}
