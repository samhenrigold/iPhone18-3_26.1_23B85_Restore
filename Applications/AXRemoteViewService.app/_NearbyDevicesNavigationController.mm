@interface _NearbyDevicesNavigationController
- (_NearbyDevicesNavigationControllerDelegate)dismissObserver;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation _NearbyDevicesNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _NearbyDevicesNavigationController;
  [(_NearbyDevicesNavigationController *)&v5 viewDidDisappear:disappear];
  dismissObserver = [(_NearbyDevicesNavigationController *)self dismissObserver];
  [dismissObserver _nearbyDevicesNavigationControllerDidDismiss];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissObserver = [(_NearbyDevicesNavigationController *)self dismissObserver];
  [dismissObserver _nearbyDevicesNavigationControllerDidDismiss];
}

- (_NearbyDevicesNavigationControllerDelegate)dismissObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissObserver);

  return WeakRetained;
}

@end