@interface FMDTrackedLocationPublisher
- (void)_publishResultLocation:(id)location reason:(int64_t)reason;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)block;
- (void)updatedLocations:(id)locations reason:(int64_t)reason;
@end

@implementation FMDTrackedLocationPublisher

- (void)startPublishingWithBlock:(id)block
{
  [(FMDTrackedLocationPublisher *)self setPublishingBlock:block];

  [(FMDTrackedLocationPublisher *)self setStartedPublishing:1];
}

- (void)updatedLocations:(id)locations reason:(int64_t)reason
{
  locationsCopy = locations;
  startedPublishing = [(FMDTrackedLocationPublisher *)self startedPublishing];
  if ((startedPublishing & 1) == 0)
  {
    lastObject = sub_10017D9A8(startedPublishing);
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      sub_100227638(lastObject);
    }

    goto LABEL_27;
  }

  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    lastLocation = [(FMDTrackedLocationPublisher *)self lastLocation];
    v10 = [(FMDTrackedLocationPublisher *)self setLastLocation:lastObject];
    if (!lastLocation)
    {
      v54 = sub_100002880(v10);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v55) = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "New location is the first recorded location. Recording this location...", &v55, 2u);
      }

      [(FMDTrackedLocationPublisher *)self _publishResultLocation:lastObject reason:reason];
      goto LABEL_26;
    }

    latitude = [lastObject latitude];
    [latitude doubleValue];
    v13 = v12;

    longitude = [lastObject longitude];
    [longitude doubleValue];
    v16 = v15;

    horizontalAccuracy = [lastObject horizontalAccuracy];
    [horizontalAccuracy doubleValue];
    v19 = v18;

    verticalAccuracy = [lastObject verticalAccuracy];
    [verticalAccuracy doubleValue];
    v22 = v21;

    floor = [lastObject floor];
    integerValue = [floor integerValue];

    v25 = [[CLLocation alloc] initWithLatitude:v13 longitude:v16];
    latitude2 = [lastLocation latitude];
    [latitude2 doubleValue];
    v28 = v27;

    longitude2 = [lastLocation longitude];
    [longitude2 doubleValue];
    v31 = v30;

    horizontalAccuracy2 = [lastLocation horizontalAccuracy];
    [horizontalAccuracy2 doubleValue];
    v34 = v33;

    verticalAccuracy2 = [lastLocation verticalAccuracy];
    [verticalAccuracy2 doubleValue];
    v37 = v36;

    floor2 = [lastLocation floor];
    integerValue2 = [floor2 integerValue];

    v40 = [[CLLocation alloc] initWithLatitude:v28 longitude:v31];
    [v25 distanceFromLocation:v40];
    v42 = v41;
    minimumDistance = [(FMDTrackedLocationPublisher *)self minimumDistance];
    [minimumDistance doubleValue];
    v45 = v44;

    v47 = sub_100002880(v46);
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    if (v42 < v45 && integerValue2 == integerValue)
    {
      if (v48)
      {
        v55 = 134217984;
        v56 = v42;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "New location was %f metres away (not significant enough) from the previous recorded location.", &v55, 0xCu);
      }

      v50 = sub_100002880(v49);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      if (v19 >= v34 && v22 >= v37)
      {
        if (v51)
        {
          LOWORD(v55) = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "New location does not have a better accuracy.", &v55, 2u);
        }

        selfCopy2 = self;
        v53 = lastLocation;
        goto LABEL_25;
      }

      if (v51)
      {
        LOWORD(v55) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "New location has a better accuracy. Replacing the previous recorded location...", &v55, 2u);
      }
    }

    else
    {
      if (v48)
      {
        v55 = 134217984;
        v56 = v42;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "New location was %f metres away (significant enough) from the previous recorded location. Recording this location anew...", &v55, 0xCu);
      }
    }

    selfCopy2 = self;
    v53 = lastObject;
LABEL_25:
    [(FMDTrackedLocationPublisher *)selfCopy2 _publishResultLocation:v53 reason:reason];

LABEL_26:
LABEL_27:
  }
}

- (void)_publishResultLocation:(id)location reason:(int64_t)reason
{
  locationCopy = location;
  v7 = sub_100002880(locationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDTrackedLocationPublisher _publishResultLocation %li", &v10, 0xCu);
  }

  [(FMDTrackedLocationPublisher *)self setLastPublishedLocation:locationCopy];
  publishingBlock = [(FMDTrackedLocationPublisher *)self publishingBlock];
  v9 = publishingBlock;
  if (publishingBlock)
  {
    (*(publishingBlock + 16))(publishingBlock, 0, locationCopy, reason);
  }
}

- (void)flushLocations
{
  [(FMDTrackedLocationPublisher *)self setLastLocation:0];
  lastLocation = [(FMDTrackedLocationPublisher *)self lastLocation];
  v4 = lastLocation;
  if (lastLocation)
  {
    v6 = lastLocation;
    lastPublishedLocation = [(FMDTrackedLocationPublisher *)self lastPublishedLocation];

    v4 = v6;
    if (v6 != lastPublishedLocation)
    {
      [(FMDTrackedLocationPublisher *)self _publishResultLocation:v6 reason:5];
      lastLocation = [(FMDTrackedLocationPublisher *)self setLastLocation:0];
      v4 = v6;
    }
  }

  _objc_release_x1(lastLocation, v4);
}

@end