@interface SingleLocationUpdate
- (BOOL)_isLocationGoodEnough:(id)enough;
- (double)acceptableAccuracy;
- (double)desiredAccuracy;
- (void)_cleanup;
- (void)_completeWithLocation:(id)location error:(id)error;
- (void)_firstTimeout;
- (void)_timeoutWithForcedCompletion:(BOOL)completion rescheduleInterval:(double)interval selector:(SEL)selector;
- (void)cancel;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestSingleLocationUpdateWithCompletionHandler:(id)handler;
- (void)setAcceptableAccuracy:(double)accuracy;
- (void)setDesiredAccuracy:(double)accuracy;
@end

@implementation SingleLocationUpdate

- (void)dealloc
{
  [(SingleLocationUpdate *)self _cleanup];
  v3.receiver = self;
  v3.super_class = SingleLocationUpdate;
  [(SingleLocationUpdate *)&v3 dealloc];
}

- (void)requestSingleLocationUpdateWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004B700;
  v4[3] = &unk_100085C10;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)cancel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B9D8;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (double)desiredAccuracy
{
  result = self->_desiredAccuracy;
  if (result <= 0.0)
  {
    return 35.0;
  }

  return result;
}

- (void)setDesiredAccuracy:(double)accuracy
{
  if (!self->_active)
  {
    self->_desiredAccuracy = accuracy;
  }
}

- (double)acceptableAccuracy
{
  result = self->_acceptableAccuracy;
  if (result <= 0.0)
  {
    return 65.0;
  }

  return result;
}

- (void)setAcceptableAccuracy:(double)accuracy
{
  if (!self->_active)
  {
    self->_acceptableAccuracy = accuracy;
  }
}

- (void)_firstTimeout
{
  [(SingleLocationUpdate *)self _timeSinceStart];
  v4 = 10.0 - v3;

  [(SingleLocationUpdate *)self _timeoutWithForcedCompletion:0 rescheduleInterval:"_finalTimeout" selector:v4];
}

- (void)_timeoutWithForcedCompletion:(BOOL)completion rescheduleInterval:(double)interval selector:(SEL)selector
{
  completionCopy = completion;
  [(NSTimer *)self->_timeout invalidate];
  if ([(SingleLocationUpdate *)self _isLocationGoodEnough:self->_lastLocation])
  {
    lastLocation = self->_lastLocation;
  }

  else
  {
    lastLocation = 0;
  }

  v10 = lastLocation;
  v11 = v10;
  if (v10 || completionCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004BC84;
    v14[3] = &unk_1000856F8;
    v14[4] = self;
    v15 = v10;
    dispatch_async(&_dispatch_main_q, v14);
    timeout = v15;
    goto LABEL_10;
  }

  if (interval >= 0.0 && selector)
  {
    v12 = [NSTimer scheduledTimerWithTimeInterval:self target:selector selector:0 userInfo:0 repeats:interval];
    timeout = self->_timeout;
    self->_timeout = v12;
LABEL_10:
  }
}

- (void)_cleanup
{
  self->_active = 0;
  lastLocation = self->_lastLocation;
  self->_lastLocation = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  [(NSTimer *)self->_timeout invalidate];
  timeout = self->_timeout;
  self->_timeout = 0;

  v6 = self->_locationManager;
  v7 = self->_assertion;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004BD98;
  v11[3] = &unk_1000856F8;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = objc_retainBlock(v11);
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v4 = [authorizationCopy authorizationStatus] - 3;
  if (self->_active && v4 <= 1)
  {
    [authorizationCopy startUpdatingLocation];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  objc_storeStrong(&self->_lastLocation, lastObject);
  if ([(SingleLocationUpdate *)self _isLocationGoodEnough:lastObject])
  {
    [(SingleLocationUpdate *)self _completeWithLocation:lastObject error:0];
  }
}

- (BOOL)_isLocationGoodEnough:(id)enough
{
  enoughCopy = enough;
  v5 = enoughCopy;
  if (!enoughCopy)
  {
    goto LABEL_7;
  }

  [enoughCopy horizontalAccuracy];
  v7 = v6;
  [(SingleLocationUpdate *)self desiredAccuracy];
  if (v7 <= v8)
  {
    v12 = 1;
    goto LABEL_9;
  }

  [(SingleLocationUpdate *)self _timeSinceStart];
  v10 = v9;
  if (v9 > 5.0)
  {
    [(SingleLocationUpdate *)self acceptableAccuracy];
    v12 = v7 <= v11 || v10 >= 10.0;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] || (objc_msgSend(errorCopy, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", kCLErrorDomain), v5, (v6 & 1) == 0))
  {
    [(SingleLocationUpdate *)self _completeWithLocation:0 error:errorCopy];
  }
}

- (void)_completeWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  invalidate = [(NSTimer *)self->_timeout invalidate];
  if (locationCopy)
  {
    v9 = sub_10004B920(invalidate);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      [(SingleLocationUpdate *)self _timeSinceStart];
      v11 = v10;
      [locationCopy horizontalAccuracy];
      v13 = v12;
      [(SingleLocationUpdate *)self desiredAccuracy];
      v15 = v14;
      [(SingleLocationUpdate *)self acceptableAccuracy];
      v31 = 134219008;
      selfCopy3 = self;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v15;
      v39 = 2048;
      v40 = v16;
      v17 = "Single location update %p got a good-enough location after %#.3lfs (accuracy: ±%#.2lfm, desired: ±%#.2lfm, acceptable: ±%#.2lfm)";
      v18 = v9;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 52;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, &v31, v20);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = sub_10004B920(invalidate);
  v21 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (errorCopy)
  {
    if (v21)
    {
      [(SingleLocationUpdate *)self _timeSinceStart];
      v31 = 134218498;
      selfCopy3 = self;
      v33 = 2048;
      v34 = v22;
      v35 = 2112;
      v36 = errorCopy;
      v17 = "Single location update %p failed after %#.3lfs with error: %@";
      v18 = v9;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 32;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v21)
  {
    [(SingleLocationUpdate *)self _timeSinceStart];
    v25 = v24;
    [(CLLocation *)self->_lastLocation horizontalAccuracy];
    v27 = v26;
    [(SingleLocationUpdate *)self desiredAccuracy];
    v29 = v28;
    [(SingleLocationUpdate *)self acceptableAccuracy];
    v31 = 134219008;
    selfCopy3 = self;
    v33 = 2048;
    v34 = v25;
    v35 = 2048;
    v36 = v27;
    v37 = 2048;
    v38 = v29;
    v39 = 2048;
    v40 = v30;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Single location update %p never got a good-enough location after %#.3lfs (best received: ±%#.2lfm, desired: ±%#.2lfm, acceptable: ±%#.2lfm)", &v31, 0x34u);
  }

  errorCopy = [NSError errorWithDomain:kCLErrorDomain code:0 userInfo:0];
LABEL_9:
  v23 = objc_retainBlock(self->_completionHandler);
  [(SingleLocationUpdate *)self _cleanup];
  if (v23)
  {
    v23[2](v23, locationCopy, errorCopy);
  }
}

@end