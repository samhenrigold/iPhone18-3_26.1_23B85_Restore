@interface CLCircularRegion(MKMapItemAdditions)
+ (id)circularRegionFromMapRegion:()MKMapItemAdditions;
@end

@implementation CLCircularRegion(MKMapItemAdditions)

+ (id)circularRegionFromMapRegion:()MKMapItemAdditions
{
  GEOMapRectForMapRegion();
  v12 = MKCoordinateRegionForMapRect(v11);
  latitude = v12.center.latitude;
  longitude = v12.center.longitude;
  v5 = 0;
  if (fabs(v12.center.longitude) <= 180.0 && fabs(v12.center.latitude) <= 90.0)
  {
    v5 = 0;
    if (v12.span.latitudeDelta >= 0.0 && v12.span.latitudeDelta <= 180.0 && v12.span.longitudeDelta >= 0.0 && v12.span.longitudeDelta <= 360.0)
    {
      GEOCalculateDistance();
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&latitude, *&longitude, *&v6];
      v5 = [objc_alloc(MEMORY[0x1E695FBB0]) initWithCenter:v8 radius:latitude identifier:{longitude, v7}];
    }
  }

  return v5;
}

@end