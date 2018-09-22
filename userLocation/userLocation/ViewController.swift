//
//  ViewController.swift
//  userLocation
//
//  Created by hang lin on 9/21/18.
//  Copyright © 2018 WuHanKuangJia. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    var latitudeLabel: UILabel!
    var longitudeLabel: UILabel!
    let manager = CLLocationManager()
    
    //MAP
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    @IBAction func GPSButton(_ sender: AnyObject) {
        var currentLocation: CLLocation!
        if(CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
            CLLocationManager.authorizationStatus() == .authorizedAlways){
            currentLocation = manager.location
        }
        
        latitudeLabel = UILabel()
        latitudeLabel.text = "The Latitude is \(currentLocation.coordinate.latitude)"
        latitudeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        latitudeLabel.sizeToFit()
        latitudeLabel.center = CGPoint(x: 120, y : 40)
        view.addSubview(latitudeLabel)
        
        longitudeLabel = UILabel()
        longitudeLabel.text = "The Longitude is \(currentLocation.coordinate.longitude)"
        longitudeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        longitudeLabel.sizeToFit()
        longitudeLabel.center = CGPoint(x: 120, y : 70)
        view.addSubview(longitudeLabel)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
