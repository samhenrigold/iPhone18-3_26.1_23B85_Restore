@interface FMDConservativeLocatorPublisher
- (FMDConservativeLocatorPublisher)init;
- (void)_cancelPublishTimer;
- (void)_publishResultLocation:(id)location reason:(int64_t)reason;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)block;
- (void)updatedLocations:(id)locations reason:(int64_t)reason;
@end

@implementation FMDConservativeLocatorPublisher

- (FMDConservativeLocatorPublisher)init
{
  v5.receiver = self;
  v5.super_class = FMDConservativeLocatorPublisher;
  v2 = [(FMDConservativeLocatorPublisher *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDConservativeLocatorPublisher *)v2 setStartThreshold:&off_1002E8240];
    [(FMDConservativeLocatorPublisher *)v3 setEndThreshold:&off_1002E8250];
    [(FMDConservativeLocatorPublisher *)v3 setDecayFactor:&off_1002E8260];
    [(FMDConservativeLocatorPublisher *)v3 setCachedLocationValidityTimeInterval:&off_1002E8270];
    [(FMDConservativeLocatorPublisher *)v3 setPublishTimeInterval:&off_1002E7C90];
    [(FMDConservativeLocatorPublisher *)v3 setMinimumDistance:&off_1002E8280];
  }

  return v3;
}

- (void)startPublishingWithBlock:(id)block
{
  [(FMDConservativeLocatorPublisher *)self setPublishingBlock:block];
  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:1];
  startThreshold = [(FMDConservativeLocatorPublisher *)self startThreshold];
  [(FMDConservativeLocatorPublisher *)self setCurrentThreshold:startThreshold];

  v5 = +[NSDate date];
  [(FMDConservativeLocatorPublisher *)self setLaunchDate:v5];
}

- (void)updatedLocations:(id)locations reason:(int64_t)reason
{
  locationsCopy = locations;
  startedPublishing = [(FMDConservativeLocatorPublisher *)self startedPublishing];
  if ((startedPublishing & 1) == 0)
  {
    v8 = sub_10017D9A8(startedPublishing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022F784(v8);
    }

    goto LABEL_12;
  }

  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    v8 = lastObject;
    if (!lastObject)
    {
LABEL_12:

      goto LABEL_13;
    }

    v9 = sub_10017D9A8(lastObject);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F7C8(self, v8, v9);
    }

    horizontalAccuracy = [v8 horizontalAccuracy];
    [horizontalAccuracy doubleValue];
    v12 = v11 < 0.0;

    if (v12)
    {
      v14 = sub_10017D9A8(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FMDConservativeLocatorPublisher *)self fm_logID];
        horizontalAccuracy2 = [v8 horizontalAccuracy];
        [horizontalAccuracy2 doubleValue];
        *buf = 138412546;
        v145 = fm_logID;
        v146 = 2048;
        v147 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Location has a -ve horizontalAccuracy (%.2f). Not using it", buf, 0x16u);
      }

LABEL_56:

      goto LABEL_12;
    }

    horizontalAccuracy3 = [v8 horizontalAccuracy];
    [horizontalAccuracy3 doubleValue];
    v20 = v19;
    [(NSNumber *)self->_startThreshold doubleValue];
    v22 = v20 > v21;

    if (v22)
    {
      v14 = sub_10017D9A8(v23);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        horizontalAccuracy4 = [v8 horizontalAccuracy];
        [horizontalAccuracy4 doubleValue];
        v27 = v26;
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412802;
        v145 = fm_logID2;
        v146 = 2048;
        v147 = v27;
        v148 = 2048;
        longValue = v28;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Location has a horizontalAccuracy of %.2f > start threshold %.2f. Not using it", buf, 0x20u);
      }

      goto LABEL_56;
    }

    timestamp = [v8 timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v31 = v30;

    launchDate = [(FMDConservativeLocatorPublisher *)self launchDate];
    [launchDate timeIntervalSinceReferenceDate];
    v34 = v33;

    cachedLocationValidityTimeInterval = [(FMDConservativeLocatorPublisher *)self cachedLocationValidityTimeInterval];
    [cachedLocationValidityTimeInterval doubleValue];
    v37 = v36;

    if (v31 <= v34 - v37)
    {
      v14 = sub_10017D9A8(v38);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID3 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v145 = fm_logID3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Location is really old. Waiting for a newer one", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 < v34)
    {
      v39 = sub_10017D9A8(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID4 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_cachedLocationValidityTimeInterval doubleValue];
        *buf = 138412546;
        v145 = fm_logID4;
        v146 = 2048;
        v147 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@ Location is an old cached one but not older than %.0f seconds before the start of this cycle. Considering it for later use", buf, 0x16u);
      }

      v42 = 0;
      v43 = 1;
      goto LABEL_23;
    }

    horizontalAccuracy5 = [v8 horizontalAccuracy];
    [horizontalAccuracy5 doubleValue];
    v71 = v70;
    [(NSNumber *)self->_endThreshold doubleValue];
    v73 = v71 > v72;

    if (!v73)
    {
      v100 = sub_10017D9A8(v74);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID5 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_endThreshold doubleValue];
        *buf = 138412546;
        v145 = fm_logID5;
        v146 = 2048;
        v147 = v102;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy below the end threshold %f. Publishing it immediately & finishing the locate cycle", buf, 0x16u);
      }

      [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
      [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
      [(FMDConservativeLocatorPublisher *)self _publishResultLocation:v8 reason:3];
      goto LABEL_12;
    }

    horizontalAccuracy6 = [v8 horizontalAccuracy];
    [horizontalAccuracy6 doubleValue];
    v77 = v76;
    [(NSNumber *)self->_currentThreshold doubleValue];
    v79 = v77 < v78;

    if (v79)
    {
      v81 = sub_10017D9A8(v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID6 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        v84 = v83;
        publishTimeInterval = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
        *buf = 138412802;
        v145 = fm_logID6;
        v146 = 2048;
        v147 = v84;
        v148 = 2048;
        longValue = [publishTimeInterval longValue];
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy within current publish threshold of %.2f. Publishing it within the next %ld seconds", buf, 0x20u);
      }

      do
      {
        ++self->_currentDecayMultiplier;
        [(NSNumber *)self->_startThreshold doubleValue];
        v87 = v86;
        [(NSNumber *)self->_decayFactor doubleValue];
        v89 = [NSNumber numberWithDouble:(v87 * exp(-(v88 * self->_currentDecayMultiplier)))];
        currentThreshold = self->_currentThreshold;
        self->_currentThreshold = v89;

        [(NSNumber *)self->_currentThreshold doubleValue];
        v92 = v91;
        horizontalAccuracy7 = [v8 horizontalAccuracy];
        [horizontalAccuracy7 doubleValue];
        v95 = v92 < v94;
      }

      while (!v95);
      v97 = sub_10017D9A8(v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID7 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        *buf = 138412546;
        v145 = fm_logID7;
        v146 = 2048;
        v147 = v99;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%@ New publish threshold is %.2f", buf, 0x16u);
      }

      v43 = 1;
      v42 = 2;
    }

    else
    {
      v43 = 0;
      v42 = 0;
    }

    lastLocation = [(FMDConservativeLocatorPublisher *)self lastLocation];
    if (!lastLocation)
    {
      horizontalAccuracy8 = [v8 horizontalAccuracy];
      [horizontalAccuracy8 doubleValue];
      v107 = v106;
      [(NSNumber *)self->_startThreshold doubleValue];
      v109 = v107 > v108;

      if (v109)
      {
        goto LABEL_65;
      }

      lastLocation = sub_10017D9A8(v110);
      if (os_log_type_enabled(lastLocation, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID8 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412546;
        v145 = fm_logID8;
        v146 = 2048;
        v147 = v112;
        _os_log_impl(&_mh_execute_header, lastLocation, OS_LOG_TYPE_DEFAULT, "%@ This is the first location with accuracy below the start threshold %.2f. Publishing it immediately", buf, 0x16u);
      }

      v43 = 2;
      v42 = 1;
    }

LABEL_65:
    lastLocation2 = [(FMDConservativeLocatorPublisher *)self lastLocation];

    if (!lastLocation2)
    {
      goto LABEL_24;
    }

    if (![v8 locationType])
    {
      goto LABEL_24;
    }

    locationType = [v8 locationType];
    lastLocation3 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    LOBYTE(locationType) = locationType == [lastLocation3 locationType];

    if (locationType)
    {
      goto LABEL_24;
    }

    v116 = [CLLocation alloc];
    lastLocation4 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    latitude = [lastLocation4 latitude];
    [latitude doubleValue];
    v120 = v119;
    lastLocation5 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    longitude = [lastLocation5 longitude];
    [longitude doubleValue];
    v39 = [v116 initWithLatitude:v120 longitude:v123];

    v124 = [CLLocation alloc];
    latitude2 = [v8 latitude];
    [latitude2 doubleValue];
    v127 = v126;
    longitude2 = [v8 longitude];
    [longitude2 doubleValue];
    v130 = [v124 initWithLatitude:v127 longitude:v129];

    [v39 distanceFromLocation:v130];
    v132 = v131;
    minimumDistance = [(FMDConservativeLocatorPublisher *)self minimumDistance];
    [minimumDistance doubleValue];
    LOBYTE(longitude2) = v132 < v134;

    if ((longitude2 & 1) == 0)
    {
      v136 = sub_10017D9A8(v135);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID9 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        lastLocation6 = [(FMDConservativeLocatorPublisher *)self lastLocation];
        locationType2 = [lastLocation6 locationType];
        locationType3 = [v8 locationType];
        *buf = 138413058;
        v145 = fm_logID9;
        v146 = 2048;
        v147 = locationType2;
        v148 = 2048;
        longValue = locationType3;
        v150 = 2048;
        v151 = v132;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "%@ Location type changed from %ld to %ld with distance traveled %.2lf. Publishing it immediately", buf, 0x2Au);
      }

      v43 = 2;
      v42 = 4;
    }

LABEL_23:
LABEL_24:
    lastLocation7 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    v45 = lastLocation7;
    if (!lastLocation7 || (-[NSObject horizontalAccuracy](v8, "horizontalAccuracy"), v46 = objc_claimAutoreleasedReturnValue(), [v46 doubleValue], v48 = v47, -[FMDConservativeLocatorPublisher lastLocation](self, "lastLocation"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "horizontalAccuracy"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "doubleValue"), v52 = v48 > v51, v50, v49, v46, v45, !v52))
    {
      v53 = sub_10017D9A8(lastLocation7);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID10 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v145 = fm_logID10;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ Storing this location as the best last known location in this locate cycle", buf, 0xCu);
      }

      lastLocation7 = [(FMDConservativeLocatorPublisher *)self setLastLocation:v8];
    }

    if (v43)
    {
      if (v43 == 1)
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        nextPublishTimerFireDate = [(FMDConservativeLocatorPublisher *)self nextPublishTimerFireDate];
        if (!nextPublishTimerFireDate)
        {
          publishTimeInterval2 = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
          [publishTimeInterval2 doubleValue];
          v58 = v57;

          nextPublishTimerFireDate = [NSDate dateWithTimeIntervalSinceNow:v58];
          [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:nextPublishTimerFireDate];
        }

        timeIntervalSinceNow = [nextPublishTimerFireDate timeIntervalSinceNow];
        if (v60 >= 0.0)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0.0;
        }

        v62 = sub_10017D9A8(timeIntervalSinceNow);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID11 = [(FMDConservativeLocatorPublisher *)self fm_logID];
          *buf = 138412546;
          v145 = fm_logID11;
          v146 = 2048;
          v147 = v61;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%@ Scheduling the location to be published in %ld seconds", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v64 = [FMDispatchTimer alloc];
        v65 = &_dispatch_main_q;
        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_1001E1968;
        v141[3] = &unk_1002D1368;
        objc_copyWeak(v143, buf);
        v8 = v8;
        v142 = v8;
        v143[1] = v42;
        v66 = [v64 initWithQueue:&_dispatch_main_q timeout:v141 completion:v61];
        [(FMDConservativeLocatorPublisher *)self setPublishTimer:v66];

        publishTimer = [(FMDConservativeLocatorPublisher *)self publishTimer];
        [publishTimer start];

        objc_destroyWeak(v143);
        objc_destroyWeak(buf);
      }

      else
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:v8 reason:v42];
      }

      goto LABEL_12;
    }

    v14 = sub_10017D9A8(lastLocation7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID12 = [(FMDConservativeLocatorPublisher *)self fm_logID];
      *buf = 138412290;
      v145 = fm_logID12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Not publishing this location", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_13:
}

- (void)flushLocations
{
  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  lastLocation = [(FMDConservativeLocatorPublisher *)self lastLocation];
  if (lastLocation)
  {
    lastPublishedLocation = [(FMDConservativeLocatorPublisher *)self lastPublishedLocation];
    if (lastLocation == lastPublishedLocation)
    {
    }

    else
    {
      startedPublishing = [(FMDConservativeLocatorPublisher *)self startedPublishing];

      if (startedPublishing)
      {
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:lastLocation reason:5];
        [(FMDConservativeLocatorPublisher *)self setLastLocation:0];
      }
    }
  }

  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
}

- (void)_publishResultLocation:(id)location reason:(int64_t)reason
{
  locationCopy = location;
  v7 = sub_10017D9A8(locationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDConservativeLocatorPublisher *)self fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Publishing the location to the server for reason %li", &v11, 0x16u);
  }

  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  [(FMDConservativeLocatorPublisher *)self setLastPublishedLocation:locationCopy];
  publishingBlock = [(FMDConservativeLocatorPublisher *)self publishingBlock];
  v10 = publishingBlock;
  if (publishingBlock)
  {
    (*(publishingBlock + 16))(publishingBlock, 0, locationCopy, reason);
  }
}

- (void)_cancelPublishTimer
{
  publishTimer = [(FMDConservativeLocatorPublisher *)self publishTimer];

  if (publishTimer)
  {
    publishTimer2 = [(FMDConservativeLocatorPublisher *)self publishTimer];
    [publishTimer2 cancel];

    [(FMDConservativeLocatorPublisher *)self setPublishTimer:0];

    [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:0];
  }
}

@end