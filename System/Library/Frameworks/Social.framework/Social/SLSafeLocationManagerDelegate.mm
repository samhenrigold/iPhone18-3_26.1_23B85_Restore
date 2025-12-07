@interface SLSafeLocationManagerDelegate
- (CLLocationManagerDelegate)delegate;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation SLSafeLocationManagerDelegate

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v5 = *&status;
  managerCopy = manager;
  delegate = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didChangeAuthorizationStatus: calling strong delegate %@", v8, v9, v10, v11, v12, delegate);
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate locationManager:managerCopy didChangeAuthorizationStatus:v5];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  managerCopy = manager;
  delegate = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didUpdateLocations: calling strong delegate %@", v9, v10, v11, v12, v13, delegate);
  [delegate locationManager:managerCopy didUpdateLocations:locationsCopy];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  managerCopy = manager;
  delegate = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didFailWithError: calling strong delegate %@", v9, v10, v11, v12, v13, delegate);
  [delegate locationManager:managerCopy didFailWithError:errorCopy];
}

- (CLLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end