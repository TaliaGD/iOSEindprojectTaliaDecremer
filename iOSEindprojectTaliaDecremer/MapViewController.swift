//
//  MapViewController.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager.init()
    var data:StageDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //verwijsing naar datasource
        data = StageDataSource.init()
        mapView.addAnnotations(data!.stage)
        // Map configureren
        let visibleRegion = MKCoordinateRegion.init(center: CLLocationCoordinate2DMake (51.149888, 2.7675) , latitudinalMeters: 6000, longitudinalMeters: 6000)
        mapView.region = visibleRegion
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:mapView.mapType = .standard
        case 1:mapView.mapType = .satellite
        case 2:mapView.mapType = .hybrid
        case 3:mapView.mapType = .satelliteFlyover
        default:print("tss is niet mogelijk he")
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
}
//ik laat custemised pin weg aangezien ik er nog geen permanent label aan toe gevoegd heb
//extension MapViewController:MKMapViewDelegate{
//
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//
//        if let soi = annotation as? Stage{
//            //nagaan of er aleenpin was getekend
//            if let customView = mapView.dequeueReusableAnnotationView(withIdentifier: "pin"){
//                //soi=stage of interest
//                customView.annotation = soi
//
//                return customView
//            }else{
//                //pin bestond nog niet, pin opbouwen
//                //gebruiken van een bestaande annotatie klasse uit gemak
//                let customView = MKPinAnnotationView.init(annotation: soi, reuseIdentifier: "pin")
//                customView.pinTintColor = UIColor.darkGray
//                customView.animatesDrop = true
//                customView.canShowCallout = true
//
//
//                return customView
//            }
//        }
//        return nil
//
//    }
//}
