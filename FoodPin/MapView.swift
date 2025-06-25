import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.510357, longitude: -0.116773),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var location: String = "524 Ct St, Brooklyn, NY 11231"

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                convertAddress(location: location)
            }
    }
    
    private func convertAddress(location: String) {
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(location) { placemarks, error in
            if let error = error {
                print("Geocoding error: \(error.localizedDescription)")
                return
            }
            guard let placemark = placemarks?.first,
                  let loc = placemark.location else {
                print("No location found.")
                return
            }
            
            DispatchQueue.main.async {
                region = MKCoordinateRegion(
                    center: loc.coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                )
            }
        }
    }
}

#Preview {
    MapView()
}

