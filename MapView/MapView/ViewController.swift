//
//  ViewController.swift
//  MapView
//
//  Created by WonIk on 2018. 4. 14..
//  Copyright © 2018년 Walter. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager() //지도 띄우기
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //정확도 최고
        locationManager.requestWhenInUseAuthorization() //사용자 인증 요청
        locationManager.startUpdatingLocation() //위치 업데이트 시작
        mapView.showsUserLocation = true //현재 위치에 마커로 표시됨
        
    }

    
    func myLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta: Double){
        let coordinateLocation = CLLocationCoordinate2DMake(latitude, longitude)
        let spanValue = MKCoordinateSpanMake(delta, delta)
        let locationRegion = MKCoordinateRegionMake(coordinateLocation, spanValue)
        mapView.setRegion(locationRegion, animated: true)
        
    }
    
    //업데이트 되는 위치정보 표시
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLocation = locations.last //가장 최근의 위치정보 저장
      myLocation(latitude: (lastLocation?.coordinate.latitude)!, longitude: (lastLocation?.coordinate.longitude)!, delta: 0.01) //delat값이 1보다 작을수록 확대됨. 0.01은 100배확대
        
    }

}

