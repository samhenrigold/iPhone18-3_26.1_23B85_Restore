@interface MKMapViewAccessibility__Maps__MapKit
- (id)snapshotImageWithScale:(double)scale;
@end

@implementation MKMapViewAccessibility__Maps__MapKit

- (id)snapshotImageWithScale:(double)scale
{
  _UIAccessibilityBlockPostingOfNotification();
  v7.receiver = self;
  v7.super_class = MKMapViewAccessibility__Maps__MapKit;
  v5 = [(MKMapViewAccessibility__Maps__MapKit *)&v7 snapshotImageWithScale:scale];
  _UIAccessibilityUnblockPostingOfNotification();

  return v5;
}

@end