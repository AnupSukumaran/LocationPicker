//
//  MapViewController.swift
//  MyPlacePicker
//
//  Created by Qaptive Technologies on 30/05/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit
import GoogleMaps

public protocol MapViewControllerDelegate: class {
    func didCancelSelection()
    func send_Selected_Text_MapView(_ address: String, _ coord: CLLocationCoordinate2D)
}

public class PickerMapViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var pinVerticalCenter_Constrain: NSLayoutConstraint!
    @IBOutlet weak var pinImg: UIImageView!
    
    public weak var delegate: MapViewControllerDelegate?
    public var funcs = PickerMapViewModel()
    
    let styleForm = [["featureType":"poi.business","elementType":"all","stylers": [["visibility":"on"]]], ["featureType":"transit","elementType":"labels.icon","stylers": [["visibility":"on"]]]] as [JSON]
    

    override public func viewDidLoad() {
        super.viewDidLoad()
       
        funcs.delegate = self
        mapView.settings.rotateGestures = false
        funcs.set_Delegates(self, mapView)
        styleMapView()
       
    }
    
    func dictToJson_Convertor(_ params: [JSON]) -> NSString? {
         let jsonData = try! JSONSerialization.data(withJSONObject: params)
         let jsonString = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)
         Logger.pnt("jsonString = \(jsonString ?? "-")")
         return jsonString
     }
    
    fileprivate func styleMapView() {
        do {
           // Set the map style by passing a valid JSON string.
           let kMapStyle = dictToJson_Convertor(styleForm)
           mapView.mapStyle = try GMSMapStyle(jsonString: kMapStyle! as String)
        } catch {
           NSLog("One or more of the map styles failed to load. \(error)")
        }
    }
    
    @IBAction func viewListView(_ sender: UIBarButtonItem) {
        funcs.autoCompView(self)
    }
    
    @IBAction func backBtn(_ sender: UIBarButtonItem) {
        delegate?.didCancelSelection()
        dismiss(animated: true, completion: nil)
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        GVars.selectedMarkerIndex = nil
    }

}
