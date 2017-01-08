//
//  ViewController.swift
//  MapView
//
//  Created by Sangeetha Sasikumar on 1/7/17.
//  Copyright © 2017 Sangeetha Sasikumar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var MapView: MKMapView!
    
    let locationManager=CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.locationManager.desiredAccuracy=kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.MapView.showsUserLocation = true
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
    let location = locations.last
    
    let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
    
    let region = MKCoordinateRegion(center:center, span:MKCoordinateSpan(latitudeDelta:1, longitudeDelta:1))
    
    

    

}

