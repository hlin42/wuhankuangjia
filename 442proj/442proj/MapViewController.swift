//
//  MapViewController.swift
//  442proj
//
//  Created by Kevin CHEUNG on 10/14/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UISearchBarDelegate
    {
    
    //MAP
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    var searchActive : Bool = true
    
    
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
        
        map.setRegion(region, animated: true)
        
        self.map.showsUserLocation = true
        
        let pin = MKPointAnnotation()
        pin.coordinate.latitude = 43.0022062
        pin.coordinate.longitude = -78.7876327
        pin.title = "Home"
        map.addAnnotation(pin)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        searchBar.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
