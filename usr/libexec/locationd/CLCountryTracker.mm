@interface CLCountryTracker
+ (BOOL)territoriesAreUnchanged:(id)unchanged fromOldList:(id)list;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)getHasAtLeastOneValidLocation;
- (BOOL)locationIsUsable:(id)usable;
- (BOOL)shouldSendUpdateForCurrentList:(id)list previousList:(id)previousList previousTimestamp:(double)timestamp withDescription:(id)description;
- (CLCountryTracker)init;
- (double)calculateDistance:(id)distance b:(id)b;
- (id).cxx_construct;
- (void)beginService;
- (void)checkLocationServicesStatusAndEnableExpensiveScansIfNecessary;
- (void)endService;
- (void)handleNewLocation:(id)location shouldUpdateTerritories:(BOOL)territories;
- (void)handleResponseFromPossibleTerritoriesFetch:(id)fetch withError:(id)error;
- (void)handleRevGeocodeCompletionForPlacemarks:(id)placemarks withError:(id)error;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)onLocationUnknownTimer;
- (void)onManagerNotification:(const int *)notification data:(const void *)data;
- (void)refreshSettings;
- (void)requestLocationWithDesiredAccuracy:(double)accuracy;
- (void)revGeoForAdminArea:(id)area;
- (void)updateLocationUnknown;
@end

@implementation CLCountryTracker

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102659DE0 != -1)
  {
    sub_10192B7D0();
  }

  return qword_102659DD8;
}

- (CLCountryTracker)init
{
  v3.receiver = self;
  v3.super_class = CLCountryTracker;
  return [(CLCountryTracker *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLCountryTrackerProtocol outboundProtocol:&OBJC_PROTOCOL___CLCountryTrackerClientProtocol];
}

- (void)beginService
{
  self->fAtLeastOneAuthDetermination = 0;
  self->_previousLocation = 0;
  self->fLocationUnknownTimeoutTimer = 0;
  self->_previousCountryCodeTimeStamp = -1.0;
  self->_previousDisputedState = 0;
  -[CLCountryTracker setSettings:](self, "setSettings:", [[CLSettingsMirror alloc] initInUniverse:{-[CLCountryTracker universe](self, "universe")}]);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100762EE0;
  v21[3] = &unk_10246F4D0;
  v21[4] = self;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] setSettingsChangeHandler:v21];
  [(CLCountryTracker *)self refreshSettings];
  if (qword_1025D4750 != -1)
  {
    sub_100260318();
  }

  v3 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    allowSimulatedLocations = [(CLCountryTracker *)self allowSimulatedLocations];
    minimumConfidence = [(CLCountryTracker *)self minimumConfidence];
    [(CLCountryTracker *)self maximumCountryLocationChangeSpeed];
    v7 = v6;
    [(CLCountryTracker *)self maximumCountryLocationChangeAccuracy];
    v9 = v8;
    [(CLCountryTracker *)self minimumMoveDistance];
    v11 = v10;
    [(CLCountryTracker *)self debounceTime];
    v13 = v12;
    [(CLCountryTracker *)self stalenessTime];
    v15 = v14;
    [(CLCountryTracker *)self timeToUnknown];
    v17 = v16;
    [(CLCountryTracker *)self minTimeBetweenExpensiveQueries];
    v19 = v18;
    [(CLCountryTracker *)self timeToActiveGiveup];
    *buf = 68291586;
    *&buf[4] = 0;
    v23[0] = 2082;
    *&v23[1] = "";
    v23[5] = 1026;
    v24 = allowSimulatedLocations;
    v25 = 1026;
    v26 = minimumConfidence;
    v27 = 2050;
    v28 = v7;
    v29 = 2050;
    v30 = v9;
    v31 = 2050;
    v32 = v11;
    v33 = 2050;
    v34 = v13;
    v35 = 2050;
    v36 = v15;
    v37 = 2050;
    v38 = v17;
    v39 = 2050;
    v40 = v19;
    v41 = 2050;
    v42 = v20;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:settings initialized, AllowSimulatedLocations:%{public}hhd, CountryLocationMinimumConfidence:%{public}d, MaximumCountryLocationChangeSpeed:%{public}f, MaximumCountryLocationChangeAccuracy:%{public}f, MinimumMoveDistance:%{public}f, CountryLocationDebounceTime:%{public}f, CountryLocationStalenessTime:%{public}f, TimeToCountryUnknown:%{public}f, MinimumTimeBetweenExpensiveQueries:%{public}f, TimeToCountryCheapLocation:%{public}f}", buf, 0x6Eu);
  }

  self->_locManager = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/CountryTracker.bundle" delegate:self onQueue:{objc_msgSend(objc_msgSend(-[CLCountryTracker universe](self, "universe"), "silo"), "queue")}];
  self->_authStatus = 0;
  [(CLCountryTracker *)self universe];
  sub_1007A98FC();
}

- (void)endService
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v3 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:shutting down...}", buf, 0x12u);
  }

  [(CLCountryTracker *)self requestLocationWithDesiredAccuracy:kCLLocationAccuracyBystander];
  ptr = self->fClientManagerClient.__ptr_;
  self->fClientManagerClient.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10076382C;
  v5[3] = &unk_102447418;
  v5[4] = [(CLCountryTracker *)self locManager];
  [objc_msgSend(-[CLCountryTracker universe](self "universe")];
  [(CLCountryTracker *)self setLocManager:0];
  if (objc_opt_class())
  {

    self->fShareListener = 0;
  }

  [(CLTimer *)self->fLocationRequestTimer invalidate];

  self->fLocationRequestTimer = 0;
  [(CLTimer *)self->fLocationUnknownTimeoutTimer invalidate];

  self->fLocationUnknownTimeoutTimer = 0;
  [(CLTimer *)self->fActiveLocationDeregisterTimer invalidate];

  self->fActiveLocationDeregisterTimer = 0;
}

- (void)refreshSettings
{
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"MaximumCountryLocationChangeSpeed" defaultValue:125.0];
  self->_maximumCountryLocationChangeSpeed = v3;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"MaximumCountryLocationChangeAccuracy" defaultValue:1000.0];
  self->_maximumCountryLocationChangeAccuracy = v4;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"MinimumMoveDistance" defaultValue:5000.0];
  self->_minimumMoveDistance = v5;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"CountryLocationDebounceTime" defaultValue:180.0];
  self->_debounceTime = v6;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"CountryLocationStalenessTime" defaultValue:600.0];
  self->_stalenessTime = v7;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"TimeToCountryUnknown" defaultValue:3600.0];
  self->_timeToUnknown = v8;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"TimeToCountryCheapLocation" defaultValue:10.0];
  self->_timeToActiveGiveup = v9;
  self->_minimumConfidence = [(CLSettingsMirror *)[(CLCountryTracker *)self settings] intForKey:@"CountryLocationMinimumConfidence" defaultValue:33];
  self->_allowSimulatedLocations = [(CLSettingsMirror *)[(CLCountryTracker *)self settings] BOOLForKey:@"AllowSimulatedLocations" defaultValue:0];
  self->_countryCodeDebounceInterval = [(CLSettingsMirror *)[(CLCountryTracker *)self settings] intForKey:@"CountryDebounceInterval" defaultValue:10800];
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"TimeToRequestCheapActiveLocation" defaultValue:1800.0];
  self->_timeToRequestCheapActiveLocation = v10;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"MinimumTimeBetweenExpensiveQueries" defaultValue:2700.0];
  self->_minTimeBetweenExpensiveQueries = v11;
  [(CLSettingsMirror *)[(CLCountryTracker *)self settings] doubleForKey:@"TimeToCountryCheapLocationAfterLSToggle" defaultValue:30.0];
  self->_timeToActiveGiveupAfterLSToggle = v12;
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v13 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    allowSimulatedLocations = [(CLCountryTracker *)self allowSimulatedLocations];
    minimumConfidence = [(CLCountryTracker *)self minimumConfidence];
    [(CLCountryTracker *)self maximumCountryLocationChangeSpeed];
    v32 = v16;
    [(CLCountryTracker *)self maximumCountryLocationChangeAccuracy];
    v18 = v17;
    [(CLCountryTracker *)self minimumMoveDistance];
    v20 = v19;
    [(CLCountryTracker *)self debounceTime];
    v22 = v21;
    [(CLCountryTracker *)self stalenessTime];
    v24 = v23;
    [(CLCountryTracker *)self timeToUnknown];
    v26 = v25;
    [(CLCountryTracker *)self timeToActiveGiveup];
    v28 = v27;
    [(CLCountryTracker *)self timeToRequestCheapActiveLocation];
    v30 = v29;
    [(CLCountryTracker *)self minTimeBetweenExpensiveQueries];
    *buf = 68292098;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 1026;
    v38 = allowSimulatedLocations;
    v39 = 1026;
    v40 = minimumConfidence;
    v41 = 2050;
    v42 = v32;
    v43 = 2050;
    v44 = v18;
    v45 = 2050;
    v46 = v20;
    v47 = 2050;
    v48 = v22;
    v49 = 2050;
    v50 = v24;
    v51 = 2050;
    v52 = v26;
    v53 = 2050;
    v54 = v28;
    v55 = 2050;
    v56 = v30;
    v57 = 2050;
    v58 = v31;
    v59 = 1026;
    countryCodeDebounceInterval = [(CLCountryTracker *)self countryCodeDebounceInterval];
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:settings updated, AllowSimulatedLocations:%{public}hhd, CountryLocationMinimumConfidence:%{public}d, MaximumCountryLocationChangeSpeed:%{public}f, MaximumCountryLocationChangeAccuracy:%{public}f, MinimumMoveDistance:%{public}f, CountryLocationDebounceTime:%{public}f, CountryLocationStalenessTime:%{public}f, TimeToCountryUnknown:%{public}f, TimeToCountryCheapLocation:%{public}f, TimeToRequestCheapActiveLocation:%{public}f, MinimumTimeBetweenExpensiveQueries:%{public}f, CountryDebounceInterval:%{public}d}", buf, 0x7Eu);
  }
}

- (BOOL)getHasAtLeastOneValidLocation
{
  previousLocation = [(CLCountryTracker *)self previousLocation];
  if (previousLocation)
  {
    [(CLLocation *)[(CLCountryTracker *)self previousLocation] coordinate];

    LOBYTE(previousLocation) = CLLocationCoordinate2DIsValid(*&v4);
  }

  return previousLocation;
}

- (BOOL)locationIsUsable:(id)usable
{
  [usable horizontalAccuracy];
  if (v5 >= 0.0)
  {
    [usable coordinate];
    v10 = v9;
    [usable coordinate];
    if (sub_100020608(v10, v11))
    {
      [usable speed];
      v13 = v12;
      [(CLCountryTracker *)self maximumCountryLocationChangeSpeed];
      if (v13 <= v14)
      {
        [usable horizontalAccuracy];
        v23 = v22;
        [(CLCountryTracker *)self maximumCountryLocationChangeAccuracy];
        if (v23 <= v24)
        {
          if (usable)
          {
            objc_msgSend_clientLocation(usable);
            v28 = DWORD1(v40);
          }

          else
          {
            v28 = 0;
            v42 = 0u;
            memset(v43, 0, sizeof(v43));
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            memset(buf, 0, sizeof(buf));
          }

          if (v28 >= [(CLCountryTracker *)self minimumConfidence])
          {
            if ([objc_msgSend(usable "sourceInformation")] && !-[CLCountryTracker allowSimulatedLocations](self, "allowSimulatedLocations"))
            {
              if (qword_1025D4750 != -1)
              {
                sub_100260318();
              }

              v6 = qword_1025D4758;
              v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
              if (v7)
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                v8 = "{msg%{public}.0s:location is simulated, rejecting}";
                goto LABEL_16;
              }
            }

            else
            {
              LOBYTE(v7) = 1;
            }
          }

          else
          {
            if (qword_1025D4750 != -1)
            {
              sub_100260318();
            }

            v29 = qword_1025D4758;
            v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
            if (v7)
            {
              if (usable)
              {
                objc_msgSend_clientLocation(usable);
                v30 = DWORD1(v40);
              }

              else
              {
                v30 = 0;
                v42 = 0u;
                memset(v43, 0, sizeof(v43));
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                memset(buf, 0, sizeof(buf));
              }

              v32[0] = 68289282;
              v32[1] = 0;
              v33 = 2082;
              v34 = "";
              v35 = 1026;
              v36 = v30;
              v8 = "{msg%{public}.0s:location confidence too low, discarding, confidence:%{public}d}";
              v19 = v32;
              v20 = v29;
              v21 = 24;
              goto LABEL_23;
            }
          }

          return v7;
        }

        if (qword_1025D4750 != -1)
        {
          sub_10192B7E4();
        }

        v15 = qword_1025D4758;
        v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
        if (!v7)
        {
          return v7;
        }

        [usable horizontalAccuracy];
        v26 = v25;
        [(CLCountryTracker *)self maximumCountryLocationChangeAccuracy];
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v26;
        *&buf[28] = 2050;
        *&buf[30] = v27;
        v8 = "{msg%{public}.0s:location accuracy too low, discarding, accuracy:%{public}f, limit:%{public}f}";
      }

      else
      {
        if (qword_1025D4750 != -1)
        {
          sub_10192B7E4();
        }

        v15 = qword_1025D4758;
        v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
        if (!v7)
        {
          return v7;
        }

        [usable speed];
        v17 = v16;
        [(CLCountryTracker *)self maximumCountryLocationChangeSpeed];
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v17;
        *&buf[28] = 2050;
        *&buf[30] = v18;
        v8 = "{msg%{public}.0s:location speed too high, discarding, speed:%{public}f, limit:%{public}f}";
      }

      v19 = buf;
      v20 = v15;
      v21 = 38;
      goto LABEL_23;
    }

    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v6 = qword_1025D4758;
    v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
    if (v7)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v8 = "{msg%{public}.0s:location not valid: bad coordinate}";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v6 = qword_1025D4758;
    v7 = os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO);
    if (v7)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v8 = "{msg%{public}.0s:location not valid: horizontalAccuracy less than zero}";
LABEL_16:
      v19 = buf;
      v20 = v6;
      v21 = 18;
LABEL_23:
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, v8, v19, v21);
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  firstObject = [locations firstObject];
  if ([(CLCountryTracker *)self locationIsUsable:firstObject])
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v6 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
    {
      [firstObject coordinate];
      v8 = v7;
      [firstObject coordinate];
      v10 = v9;
      [firstObject horizontalAccuracy];
      v12 = v11;
      [objc_msgSend(firstObject "timestamp")];
      v14 = v13;
      if (firstObject)
      {
        objc_msgSend_clientLocation(firstObject);
        v15 = *(&v87 + 1);
        objc_msgSend_clientLocation(firstObject);
        v16 = DWORD1(v61);
      }

      else
      {
        v16 = 0;
        v15 = 0;
        v89 = 0u;
        memset(v90, 0, sizeof(v90));
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        *&v65[-4] = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
      }

      *buf = 134546945;
      *&buf[4] = v8;
      *&buf[12] = 2053;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      *&buf[32] = 2048;
      *&buf[34] = v14;
      *&buf[42] = 2048;
      *&buf[44] = v15;
      *&buf[52] = 1024;
      *&buf[54] = v16;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Got a usable location <%{sensitive}+.8lf,%{sensitive}+.8lf>, acc %.2f, timestamp %.2f, lifespan %.2f, confidence %d", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v84, 0x65CuLL);
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v43 = qword_1025D4758;
      [firstObject coordinate];
      v45 = v44;
      [firstObject coordinate];
      v47 = v46;
      [firstObject horizontalAccuracy];
      v49 = v48;
      [objc_msgSend(firstObject "timestamp")];
      v51 = v50;
      if (firstObject)
      {
        objc_msgSend_clientLocation(firstObject);
        v52 = *(&v61 + 1);
        objc_msgSend_clientLocation(firstObject);
        v53 = DWORD1(v68);
      }

      else
      {
        v53 = 0;
        *&v65[-4] = 0u;
        v52 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v70 = 0u;
        memset(v71, 0, 28);
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      v72 = 134546945;
      v73 = v45;
      v74 = 2053;
      v75 = v47;
      v76 = 2048;
      v77 = v49;
      v78 = 2048;
      v79 = v51;
      v80 = 2048;
      v81 = v52;
      v82 = 1024;
      v83 = v53;
      _os_log_send_and_compose_impl(2, 0, v84, 1628, dword_100000000, v43, 1, "Got a usable location <%{sensitive}+.8lf,%{sensitive}+.8lf>, acc %.2f, timestamp %.2f, lifespan %.2f, confidence %d", &v72, 58, v56, v57, v58, v59, v60, v61, v62, v63, v64, *v65, *&v65[8], *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], *&buf[48], *&buf[56], v67, v68, v69, v70, v71[0], *&v71[1], v71[3]);
      v55 = v54;
      sub_100152C7C("Generic", 1, 0, 2, "[CLCountryTracker locationManager:didUpdateLocations:]", "%s\n", v54);
      if (v55 != v84)
      {
        free(v55);
      }
    }

    fLocationRequestTimer = self->fLocationRequestTimer;
    [(CLCountryTracker *)self timeToRequestCheapActiveLocation];
    [(CLTimer *)fLocationRequestTimer setNextFireDelay:?];
    v18 = 0.0;
    v19 = 0.0;
    if ([(CLCountryTracker *)self getHasAtLeastOneValidLocation])
    {
      [(CLLocation *)[(CLCountryTracker *)self previousLocation] coordinate];
      [(CLCountryTracker *)self calculateDistance:firstObject b:[(CLCountryTracker *)self previousLocation]];
      v19 = v20;
      [objc_msgSend(firstObject "timestamp")];
      v22 = v21;
      [(NSDate *)[(CLLocation *)[(CLCountryTracker *)self previousLocation] timestamp] timeIntervalSince1970];
      v24 = v23;
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v18 = vabdd_f64(v22, v24);
      v25 = qword_1025D4758;
      if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
      {
        [(CLCountryTracker *)self debounceTime];
        v27 = v26;
        [(CLCountryTracker *)self stalenessTime];
        v29 = v28;
        v30 = LocationLogEncryptionDataSize();
        v31 = LocationLogEncryptionEncryptData();
        *v84 = 68290562;
        *&v84[4] = 0;
        *&v84[8] = 2082;
        *&v84[10] = "";
        *&v84[18] = 2050;
        *&v84[20] = v19;
        *&v84[28] = 2050;
        *&v84[30] = v18;
        *&v84[38] = 2050;
        *&v84[40] = v27;
        LOWORD(v85) = 2050;
        *(&v85 + 2) = v29;
        WORD5(v85) = 1040;
        HIDWORD(v85) = v30;
        LOWORD(v86) = 2098;
        *(&v86 + 2) = v31;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:computed deltas, deltaR:%{public}f, deltaT:%{public}f, debounceTime:%{public}f, staleTime:%{public}f, prevCoordinate:%{public, location:Encrypted_CLLocationCoordinate2D}.*P}", v84, 0x4Au);
      }
    }

    if (![(CLCountryTracker *)self getHasAtLeastOneValidLocation])
    {
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v37 = qword_1025D4758;
      if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
      {
        *v84 = 68289026;
        *&v84[4] = 0;
        *&v84[8] = 2082;
        *&v84[10] = "";
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "{msg%{public}.0s:first valid location since start!}", v84, 0x12u);
      }

      [(CLCountryTracker *)self requestLocationWithDesiredAccuracy:kCLLocationAccuracyBystander];
      [(CLTimer *)self->fActiveLocationDeregisterTimer setNextFireDelay:1.79769313e308];
      goto LABEL_33;
    }

    [(CLCountryTracker *)self minimumMoveDistance];
    if (v19 > v32 && ([(CLCountryTracker *)self debounceTime], v18 >= v33))
    {
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v35 = qword_1025D4758;
      if (!os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *v84 = 68289026;
      *&v84[4] = 0;
      *&v84[8] = 2082;
      *&v84[10] = "";
      v36 = "{msg%{public}.0s:accepting location because we've moved enough and we're past the debounce time}";
    }

    else
    {
      [(CLCountryTracker *)self stalenessTime];
      if (v18 < v34)
      {
        return;
      }

      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v35 = qword_1025D4758;
      if (!os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *v84 = 68289026;
      *&v84[4] = 0;
      *&v84[8] = 2082;
      *&v84[10] = "";
      v36 = "{msg%{public}.0s:accepting location because it's been long enough without an update}";
    }

    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, v36, v84, 0x12u);
LABEL_33:
    [(CLCountryTracker *)self prevExpensiveTerritoryQueryTime];
    v39 = v38;
    [+[NSDate now](NSDate timeIntervalSince1970];
    v41 = vabdd_f64(v39, v40);
    [(CLCountryTracker *)self minTimeBetweenExpensiveQueries];
    [(CLCountryTracker *)self handleNewLocation:firstObject shouldUpdateTerritories:v41 >= v42];

    self->_previousLocation = 0;
    self->_previousLocation = firstObject;
    [(CLTimer *)self->fLocationUnknownTimeoutTimer setNextFireDelay:1.79769313e308];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  -[CLCountryTracker setAuthStatus:](self, "setAuthStatus:", [authorization authorizationStatus]);
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v4 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    [(CLCountryTracker *)self authStatus];
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2050;
    authStatus = [(CLCountryTracker *)self authStatus];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:authorization status changed, status:%{public, location:CLAuthorizationStatus}lld}", v5, 0x1Cu);
  }

  [(CLCountryTracker *)self checkLocationServicesStatusAndEnableExpensiveScansIfNecessary];
  self->fAtLeastOneAuthDetermination = 1;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v6 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = [objc_msgSend(error "description")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got location unavailable, error:%{public, location:escape_only}s}", v8, 0x1Cu);
  }

  if ([(CLCountryTracker *)self getHasAtLeastOneValidLocation])
  {

    self->_previousLocation = 0;
    fLocationUnknownTimeoutTimer = self->fLocationUnknownTimeoutTimer;
    [(CLCountryTracker *)self timeToUnknown];
    [(CLTimer *)fLocationUnknownTimeoutTimer setNextFireDelay:?];
  }
}

+ (BOOL)territoriesAreUnchanged:(id)unchanged fromOldList:(id)list
{
  if (!(unchanged | list))
  {
    return 1;
  }

  result = 0;
  if (unchanged)
  {
    if (list)
    {
      v6 = [[NSSet alloc] initWithArray:list];
      v7 = [[NSSet alloc] initWithArray:unchanged];
      v8 = [v6 isEqualToSet:v7];

      return v8;
    }
  }

  return result;
}

- (void)handleNewLocation:(id)location shouldUpdateTerritories:(BOOL)territories
{
  [location coordinate];
  v8 = v7;
  [location coordinate];
  v10 = [[GEOLocation alloc] initWithGEOCoordinate:{v8, v9}];
  if (v10)
  {
    v11 = v10;
    [location altitude];
    [v11 setAltitude:v12];
    [location horizontalAccuracy];
    [v11 setHorizontalAccuracy:?];
    [location verticalAccuracy];
    [v11 setVerticalAccuracy:?];
    referenceFrame = [location referenceFrame];
    if (referenceFrame == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (referenceFrame == 2);
    }

    [v11 setReferenceFrame:v14];
    *buf = 0;
    *&v20 = buf;
    *(&v20 + 1) = 0x3052000000;
    v21 = sub_1000474D4;
    v22 = sub_100048440;
    v23 = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.CountryTracker.fetchCountries"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100764DB4;
    v17[3] = &unk_10246F538;
    v17[5] = location;
    v17[6] = buf;
    territoriesCopy = territories;
    v17[4] = self;
    +[GEOGeographicMetadataRequester fetchPossibleTerritoriesForLocation:responseQueue:responseBlock:](GEOGeographicMetadataRequester, "fetchPossibleTerritoriesForLocation:responseQueue:responseBlock:", v11, [objc_msgSend(-[CLCountryTracker universe](self "universe")], v17);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v15 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v20) = 2082;
      *(&v20 + 2) = "";
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to allocate a GEOLocation object?}", buf, 0x12u);
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }
    }

    v16 = qword_1025D4758;
    if (os_signpost_enabled(qword_1025D4758))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v20) = 2082;
      *(&v20 + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to allocate a GEOLocation object?", "{msg%{public}.0s:failed to allocate a GEOLocation object?}", buf, 0x12u);
    }
  }
}

- (void)handleResponseFromPossibleTerritoriesFetch:(id)fetch withError:(id)error
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v6 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
  {
    buf = 68289539;
    v48 = 2082;
    v49 = "";
    v50 = 2113;
    errorCopy3 = fetch;
    v52 = 2114;
    errorCopy = error;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:response from fetchPossibleTerritoriesForLocation, results:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", &buf, 0x26u);
  }

  if (error)
  {
    if (qword_1025D4750 != -1)
    {
      sub_100260318();
    }

    v7 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
    {
      buf = 68289282;
      v48 = 2082;
      v49 = "";
      v50 = 2114;
      errorCopy3 = error;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:error getting country info, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }
    }

    v8 = qword_1025D4758;
    if (os_signpost_enabled(qword_1025D4758))
    {
      buf = 68289282;
      v48 = 2082;
      v49 = "";
      v50 = 2114;
      errorCopy3 = error;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "error getting country info", "{msg%{public}.0s:error getting country info, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }

    return;
  }

  selfCopy = self;
  if (!fetch)
  {
    if (qword_1025D4750 != -1)
    {
      sub_100260318();
    }

    v35 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
    {
      buf = 68289282;
      v48 = 2082;
      v49 = "";
      v50 = 2114;
      errorCopy3 = @"XZ";
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:no country info found, defaulting to international waters, code:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }

    v10 = [NSMutableArray arrayWithObject:@"XZ", self];
    goto LABEL_68;
  }

  fetchCopy3 = fetch;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fetch count]);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(fetch);
  if (!v11)
  {
LABEL_68:
    v13 = 0;
    goto LABEL_69;
  }

  v12 = v11;
  v13 = 0;
  v14 = MEMORY[0];
  v43 = MEMORY[0];
  do
  {
    v15 = 0;
    v42 = v12;
    do
    {
      if (MEMORY[0] != v14)
      {
        objc_enumerationMutation(fetchCopy3);
      }

      v44 = v15;
      v16 = *(8 * v15);
      if (v16)
      {
        if ([(__CFString *)v16 isDisputed])
        {
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }

          v17 = qword_1025D4758;
          if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
          {
            v18 = [-[__CFString disputedTerritoryName](v16 "disputedTerritoryName")];
            buf = 68289283;
            v48 = 2082;
            v49 = "";
            v50 = 2081;
            errorCopy3 = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:result is a disputed territory, adding all interested parties, name:%{private, location:escape_only}s}", &buf, 0x1Cu);
          }

          interestedPartyIso3166CountryCodes2 = [(__CFString *)v16 interestedPartyIso3166CountryCodes2];
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(interestedPartyIso3166CountryCodes2);
          if (v20)
          {
            v21 = v20;
            v22 = MEMORY[0];
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (MEMORY[0] != v22)
                {
                  objc_enumerationMutation(interestedPartyIso3166CountryCodes2);
                }

                v24 = [*(8 * i) copy];
                [(NSMutableArray *)v10 addObject:v24];
                if (qword_1025D4750 != -1)
                {
                  sub_100260318();
                }

                v25 = qword_1025D4758;
                if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
                {
                  uTF8String = [v24 UTF8String];
                  buf = 68289283;
                  v48 = 2082;
                  v49 = "";
                  v50 = 2081;
                  errorCopy3 = uTF8String;
                  _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:adding interested party, countryCode:%{private, location:escape_only}s}", &buf, 0x1Cu);
                }
              }

              v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(interestedPartyIso3166CountryCodes2);
            }

            while (v21);
            v13 = 1;
            fetchCopy3 = fetch;
            v12 = v42;
            v14 = v43;
          }

          else
          {
            v13 = 1;
          }

LABEL_59:
          v27 = v44;
          goto LABEL_60;
        }

        if (([(__CFString *)v16 isDisputed]& 1) != 0 || ![(__CFString *)v16 iso3166CountryCode2])
        {
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }

          v33 = qword_1025D4758;
          if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_FAULT))
          {
            buf = 68289282;
            v48 = 2082;
            v49 = "";
            v50 = 2114;
            errorCopy3 = v16;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:got a result that lacked a 2-letter ISO country code, terr:%{public, location:escape_only}@}", &buf, 0x1Cu);
            if (qword_1025D4750 != -1)
            {
              sub_100260318();
            }
          }

          v34 = qword_1025D4758;
          if (os_signpost_enabled(qword_1025D4758))
          {
            buf = 68289282;
            v48 = 2082;
            v49 = "";
            v50 = 2114;
            errorCopy3 = v16;
            _os_signpost_emit_with_name_impl(dword_100000000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "got a result that lacked a 2-letter ISO country code", "{msg%{public}.0s:got a result that lacked a 2-letter ISO country code, terr:%{public, location:escape_only}@}", &buf, 0x1Cu);
          }

          goto LABEL_59;
        }

        v30 = [-[__CFString iso3166CountryCode2](v16 "iso3166CountryCode2")];
        [(NSMutableArray *)v10 addObject:v30];
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }

        v27 = v44;
        v31 = qword_1025D4758;
        if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
        {
          uTF8String2 = [v30 UTF8String];
          buf = 68289283;
          v48 = 2082;
          v49 = "";
          v50 = 2081;
          errorCopy3 = uTF8String2;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "{msg%{public}.0s:adding resultant country code, countryCode:%{private, location:escape_only}s}", &buf, 0x1Cu);
        }

        v14 = v43;
      }

      else
      {
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }

        v27 = v44;
        v28 = qword_1025D4758;
        if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
        {
          buf = 68289026;
          v48 = 2082;
          v49 = "";
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:empty territory element?}", &buf, 0x12u);
          if (qword_1025D4750 != -1)
          {
            sub_100260318();
          }
        }

        v29 = qword_1025D4758;
        if (os_signpost_enabled(qword_1025D4758))
        {
          buf = 68289026;
          v48 = 2082;
          v49 = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "empty territory element?", "{msg%{public}.0s:empty territory element?}", &buf, 0x12u);
        }
      }

LABEL_60:
      v15 = v27 + 1;
    }

    while (v15 != v12);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(fetchCopy3);
  }

  while (v12);
LABEL_69:
  v36 = [+[NSSet setWithArray:](NSSet allObjects:v10];
  previousCountries = [v40 previousCountries];
  [v40 previousCountryCodeTimeStamp];
  if ([v40 shouldSendUpdateForCurrentList:v36 previousList:previousCountries previousTimestamp:@"countries" withDescription:?])
  {

    *(v40 + 256) = [(NSArray *)v36 copy];
    [+[NSDate now](NSDate timeIntervalSince1970];
    *(v40 + 264) = v38;
    *(v40 + 146) = v13 & 1;
    v45[0] = kRDUpdateKeyCountryCodes;
    v45[1] = kRDUpdateKeyInDisputedArea;
    v46[0] = v36;
    v46[1] = [NSNumber numberWithBool:?];
    [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    if (&_RDUpdateCountryCodeInfoFromLocation)
    {
      RDUpdateCountryCodeInfoFromLocation();
    }
  }
}

- (void)updateLocationUnknown
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v3 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting country code from location to be unknown}", v4, 0x12u);
  }

  if (&_RDUpdateCountryCodeInfoFromLocation)
  {
    RDUpdateCountryCodeInfoFromLocation();
  }

  [(CLCountryTracker *)self handleRevGeocodeCompletionForPlacemarks:0 withError:0];
}

- (void)onLocationUnknownTimer
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v3 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:no known location received beyond the time limit}", v4, 0x12u);
  }

  self->_previousLocation = 0;
  self->_previousCountries = 0;
  [(CLCountryTracker *)self updateLocationUnknown];
  [(CLTimer *)self->fLocationUnknownTimeoutTimer setNextFireDelay:1.79769313e308];

  self->_previousEligibilityTerrs = 0;
}

- (void)requestLocationWithDesiredAccuracy:(double)accuracy
{
  if (kCLLocationAccuracyBystander == accuracy)
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v9 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289026;
      *v11 = 2082;
      *&v11[2] = "";
      v6 = "{msg%{public}.0s:registering for bystander location updates}";
      v7 = v9;
      v8 = 18;
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v5 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      *v11 = 2082;
      *&v11[2] = "";
      *&v11[10] = 2050;
      *&v11[12] = accuracy;
      v6 = "{msg%{public}.0s:registering for active location updates, accuracy:%{public}f}";
      v7 = v5;
      v8 = 28;
LABEL_10:
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  [(CLLocationManager *)self->_locManager setDesiredAccuracy:accuracy, v10, *v11, *&v11[8]];
}

- (void)checkLocationServicesStatusAndEnableExpensiveScansIfNecessary
{
  if (sub_10003845C() != 1)
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v6 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:location services are disabled, stopping updates}", &v8, 0x12u);
    }

    goto LABEL_18;
  }

  if ([(CLCountryTracker *)self authStatus]== 3)
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v3 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      [(CLCountryTracker *)self timeToActiveGiveupAfterLSToggle];
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      LODWORD(authStatus) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:location services was toggled on, and this service is authorized, doing an initial high-accuracy scan, duration:%{public}d}", &v8, 0x18u);
    }

    [(CLCountryTracker *)self requestLocationWithDesiredAccuracy:kCLLocationAccuracyBest];
    fActiveLocationDeregisterTimer = self->fActiveLocationDeregisterTimer;
    [(CLCountryTracker *)self timeToActiveGiveupAfterLSToggle];
    [(CLTimer *)fActiveLocationDeregisterTimer setNextFireDelay:?];
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v7 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      [(CLCountryTracker *)self authStatus];
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      authStatus = [(CLCountryTracker *)self authStatus];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:location services was toggled on, but the service isn't authorized, so not scanning, status:%{public, location:CLAuthorizationStatus}lld}", &v8, 0x1Cu);
    }
  }

  if (self->fAtLeastOneAuthDetermination && [(CLCountryTracker *)self authStatus]!= 3)
  {
LABEL_18:
    [(CLCountryTracker *)self updateLocationUnknown];
    [(CLCountryTracker *)self requestLocationWithDesiredAccuracy:kCLLocationAccuracyBystander];

    self->_previousLocation = 0;
    self->_previousCountries = 0;

    self->_previousEligibilityTerrs = 0;
  }
}

- (void)onManagerNotification:(const int *)notification data:(const void *)data
{
  if (*notification == 4)
  {

    [(CLCountryTracker *)self checkLocationServicesStatusAndEnableExpensiveScansIfNecessary];
  }

  else if (!*notification)
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v5 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning location status reset; removing all clients", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192B7F8();
    }

    self->_previousLocation = 0;
    [(CLCountryTracker *)self updateLocationUnknown];
    [objc_msgSend(objc_msgSend(-[CLCountryTracker universe](self "universe")];
  }
}

- (double)calculateDistance:(id)distance b:(id)b
{
  if (qword_1025D4750 != -1)
  {
    sub_10192B7E4();
  }

  v7 = qword_1025D4758;
  if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEBUG))
  {
    [distance coordinate];
    v9 = v8;
    [distance coordinate];
    v11 = v10;
    [b coordinate];
    v13 = v12;
    [b coordinate];
    *buf = 134546433;
    *&buf[4] = v9;
    *&buf[12] = 2053;
    *&buf[14] = v11;
    *&buf[22] = 2053;
    *&buf[24] = v13;
    LOWORD(v37) = 2053;
    *(&v37 + 2) = v14;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "computing distance between points at <%{sensitive}+.8lf,%{sensitive}+.8lf> and <%{sensitive}+.8lf,%{sensitive}+.8lf>", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B90C(distance, b);
  }

  if (distance)
  {
    objc_msgSend_clientLocation(distance);
  }

  else
  {
    v34 = 0u;
    memset(v35, 0, 28);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  v41 = v33;
  v42 = v34;
  v43[0] = v35[0];
  *(v43 + 12) = *(v35 + 12);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  *buf = v27;
  *&buf[16] = v28;
  if (b)
  {
    objc_msgSend_clientLocation(b);
  }

  else
  {
    v23 = 0u;
    memset(v24, 0, 28);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v25[6] = v22;
  v25[7] = v23;
  v26[0] = v24[0];
  *(v26 + 12) = *(v24 + 12);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v25[0] = v16;
  v25[1] = v17;
  sub_1001097CC(&self->fDistanceCalc, buf, v25);
  return result;
}

- (BOOL)shouldSendUpdateForCurrentList:(id)list previousList:(id)previousList previousTimestamp:(double)timestamp withDescription:(id)description
{
  if ([CLCountryTracker territoriesAreUnchanged:"territoriesAreUnchanged:fromOldList:" fromOldList:?])
  {
    [+[NSDate now](NSDate timeIntervalSince1970];
    if ([(CLCountryTracker *)self countryCodeDebounceInterval]> (v11 - timestamp))
    {
      if (qword_1025D4750 != -1)
      {
        sub_10192B7E4();
      }

      v12 = qword_1025D4758;
      if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
      {
        uTF8String = [description UTF8String];
        [+[NSDate now](NSDate timeIntervalSince1970];
        v24 = 68290050;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        uTF8String3 = uTF8String;
        v30 = 1026;
        *v31 = v14;
        *&v31[4] = 2050;
        *&v31[6] = timestamp;
        *&v31[14] = 1026;
        *&v31[16] = [(CLCountryTracker *)self countryCodeDebounceInterval];
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:already sent this, skipping, description:%{public, location:escape_only}s, now:%{public}d, prevTime:%{public}f, delta:%{public}d}", &v24, 0x32u);
      }

      return 0;
    }

    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v20 = qword_1025D4758;
    v15 = 1;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
    {
      uTF8String2 = [description UTF8String];
      [+[NSDate now](NSDate timeIntervalSince1970];
      v24 = 68290050;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      uTF8String3 = uTF8String2;
      v30 = 1026;
      *v31 = v22;
      *&v31[4] = 2050;
      *&v31[6] = timestamp;
      *&v31[14] = 1026;
      *&v31[16] = [(CLCountryTracker *)self countryCodeDebounceInterval];
      v17 = "{msg%{public}.0s:already sent this, but it's been long enough so sending it again, description:%{public, location:escape_only}s, now:%{public}d, prevTime:%{public}f, delta:%{public}d}";
      v18 = v20;
      v19 = 50;
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v16 = qword_1025D4758;
    v15 = 1;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
    {
      v24 = 68289795;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      uTF8String3 = [description UTF8String];
      v30 = 2113;
      *v31 = previousList;
      *&v31[8] = 2113;
      *&v31[10] = list;
      v17 = "{msg%{public}.0s:lists have changed, sending, description:%{public, location:escape_only}s, prev:%{private, location:escape_only}@, curr:%{private, location:escape_only}@}";
      v18 = v16;
      v19 = 48;
LABEL_16:
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, v17, &v24, v19);
    }
  }

  return v15;
}

- (void)revGeoForAdminArea:(id)area
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_1000474D4;
  v6[4] = sub_100048440;
  v6[5] = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.CountryTracker.fetchAdmin"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007666C8;
  v5[3] = &unk_10246F560;
  v5[4] = self;
  v5[5] = v6;
  [objc_alloc_init(CLGeocoder) reverseGeocodeLocation:area completionHandler:v5];
  _Block_object_dispose(v6, 8);
}

- (void)handleRevGeocodeCompletionForPlacemarks:(id)placemarks withError:(id)error
{
  xarray = xpc_array_create(0, 0);
  v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(placemarks, "count")}];
  v7 = [placemarks count];
  if (error || !v7)
  {
    if (error)
    {
      if (qword_1025D4750 != -1)
      {
        sub_10192B7E4();
      }

      v22 = qword_1025D4758;
      if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
      {
        buf = 68289282;
        v37 = 2082;
        v38 = "";
        v39 = 2114;
        v40 = [error description];
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to revgeo, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }
      }

      v23 = qword_1025D4758;
      if (os_signpost_enabled(qword_1025D4758))
      {
        v24 = [error description];
        buf = 68289282;
        v37 = 2082;
        v38 = "";
        v39 = 2114;
        v40 = v24;
        _os_signpost_emit_with_name_impl(dword_100000000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to revgeo", "{msg%{public}.0s:failed to revgeo, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D4750 != -1)
    {
      sub_10192B7E4();
    }

    v8 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
    {
      buf = 68289282;
      v37 = 2082;
      v38 = "";
      v39 = 2050;
      v40 = [placemarks count];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:parsing results for eligibility, count:%{public}lu}", &buf, 0x1Cu);
    }

    count = xpc_array_get_count(self->fEligibilityPrecise);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(placemarks);
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(placemarks);
          }

          v14 = *(8 * v13);
          if ([objc_msgSend(v14 _geoMapItem])
          {
            if (count)
            {
              v15 = 0;
              while (1)
              {
                string = xpc_array_get_string(self->fEligibilityPrecise, v15);
                if (!strcmp(string, [objc_msgSend(objc_msgSend(v14 "_geoMapItem")]))
                {
                  break;
                }

                if (count == ++v15)
                {
                  goto LABEL_17;
                }
              }

              if (qword_1025D4750 != -1)
              {
                sub_100260318();
              }

              v19 = qword_1025D4758;
              if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
              {
                v20 = [objc_msgSend(v14 "_geoMapItem")];
                buf = 68289283;
                v37 = 2082;
                v38 = "";
                v39 = 2113;
                v40 = v20;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:found os_eligibility territory of interest, terr:%{private, location:escape_only}@}", &buf, 0x1Cu);
              }

              v21 = xpc_string_create([objc_msgSend(objc_msgSend(v14 "_geoMapItem")]);
              xpc_array_append_value(xarray, v21);
              [v35 addObject:{objc_msgSend(objc_msgSend(v14, "_geoMapItem"), "_iso3166SubdivisionCode")}];
            }

            else
            {
LABEL_17:
              if (qword_1025D4750 != -1)
              {
                sub_100260318();
              }

              v17 = qword_1025D4758;
              if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_INFO))
              {
                v18 = [objc_msgSend(v14 "_geoMapItem")];
                buf = 68289283;
                v37 = 2082;
                v38 = "";
                v39 = 2113;
                v40 = v18;
                _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:os_eligibility not interested in this, ignoring, terr:%{private, location:escape_only}@}", &buf, 0x1Cu);
              }
            }
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(placemarks);
      }

      while (v11);
    }
  }

  previousEligibilityTerrs = [(CLCountryTracker *)self previousEligibilityTerrs];
  [(CLCountryTracker *)self previousEligibilityTerrsTimeStamp];
  if ([(CLCountryTracker *)self shouldSendUpdateForCurrentList:v35 previousList:previousEligibilityTerrs previousTimestamp:@"territories" withDescription:?])
  {

    self->_previousEligibilityTerrs = [v35 copy];
    [+[NSDate now](NSDate timeIntervalSince1970];
    self->_previousEligibilityTerrsTimeStamp = v26;
    if (qword_1025D4750 != -1)
    {
      sub_100260318();
    }

    v27 = qword_1025D4758;
    if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_DEFAULT))
    {
      v28 = xpc_array_get_count(xarraya);
      buf = 68289282;
      v37 = 2082;
      v38 = "";
      v39 = 2050;
      v40 = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending updates to os_eligibility, count:%{public}lu}", &buf, 0x1Cu);
    }

    v29 = os_eligibility_set_input();
    if (v29)
    {
      v30 = v29;
      if (qword_1025D4750 != -1)
      {
        sub_100260318();
      }

      v31 = qword_1025D4758;
      if (os_log_type_enabled(qword_1025D4758, OS_LOG_TYPE_ERROR))
      {
        buf = 68289282;
        v37 = 2082;
        v38 = "";
        v39 = 1026;
        LODWORD(v40) = v30;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to post to os_eligibility, error:%{public}d}", &buf, 0x18u);
        if (qword_1025D4750 != -1)
        {
          sub_100260318();
        }
      }

      v32 = qword_1025D4758;
      if (os_signpost_enabled(qword_1025D4758))
      {
        buf = 68289282;
        v37 = 2082;
        v38 = "";
        v39 = 1026;
        LODWORD(v40) = v30;
        _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to post to os_eligibility", "{msg%{public}.0s:Failed to post to os_eligibility, error:%{public}d}", &buf, 0x18u);
      }
    }
  }

  xpc_release(xarraya);
}

- (id).cxx_construct
{
  sub_10018D404(&self->fDistanceCalc);
  self->fClientManagerClient.__ptr_ = 0;
  self->fCountriesNeedingPrecise.__table_.__bucket_list_ = 0u;
  *&self->fCountriesNeedingPrecise.__table_.__first_node_.__next_ = 0u;
  self->fCountriesNeedingPrecise.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end