@interface MNLocationTracker
- (MNLocationTracker)init;
- (MNLocationTracker)initWithNavigationSession:(id)session;
- (MNLocationTrackerDelegate)delegate;
- (MNNavigationSession)navigationSession;
- (id)matchedLocationForLocation:(id)location;
- (int)transportType;
- (void)_roadFeaturesForFeature:(id)feature outRoadName:(id *)name outShieldText:(id *)text outShieldType:(int64_t *)type;
- (void)_setState:(int)state;
- (void)_setTargetLegIndex:(unint64_t)index;
- (void)_updateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)dealloc;
- (void)insertWaypoint:(id)waypoint completionHandler:(id)handler;
- (void)removeWaypointAtIndex:(unint64_t)index completionHandler:(id)handler;
- (void)rerouteWithWaypoints:(id)waypoints completionHandler:(id)handler;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)updateDestination:(id)destination completionHandler:(id)handler;
@end

@implementation MNLocationTracker

- (MNNavigationSession)navigationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  return WeakRetained;
}

- (MNLocationTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_roadFeaturesForFeature:(id)feature outRoadName:(id *)name outShieldText:(id *)text outShieldType:(int64_t *)type
{
  v35 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v11 = featureCopy;
  if (featureCopy)
  {
    feature = [featureCopy feature];
    if (feature)
    {
      v13 = feature;
      if (self->_localizeRoadNames)
      {
        GEOFeatureGetLocalizedLabel();
      }

      else
      {
        GEOFeatureGetNativeLabel();
      }

      GEOFeatureGetLocalizedShield();
      attributes = [v13 attributes];
      isRamp = [attributes isRamp];

      if (isRamp)
      {
        attributes2 = [v13 attributes];
        rampType = [attributes2 rampType];

        switch(rampType)
        {
          case 2:
            attributes3 = [v13 attributes];
            rampDirection = [attributes3 rampDirection];

            v21 = 0;
            if (rampDirection > 1)
            {
              if (rampDirection == 2)
              {
                v22 = @"Freeway Off Ramp";
                goto LABEL_44;
              }

              if (rampDirection != 3)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (rampDirection)
              {
                if (rampDirection == 1)
                {
                  v22 = @"Freeway On Ramp";
                  goto LABEL_44;
                }

LABEL_45:
                if (name)
                {
                  v27 = v21;
                  *name = v21;
                }

                if (text)
                {
                  v28 = 0;
                  *text = 0;
                }

                if (type)
                {
                  *type = 0;
                }

                goto LABEL_52;
              }

              v26 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v30 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
                v31 = 2080;
                v32 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
                v33 = 1024;
                v34 = 335;
                _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
              }
            }

            v22 = @"Freeway Ramp";
            goto LABEL_44;
          case 1:
LABEL_19:
            attributes4 = [v13 attributes];
            rampDirection2 = [attributes4 rampDirection];

            v21 = 0;
            if (rampDirection2 > 1)
            {
              if (rampDirection2 == 2)
              {
                v22 = @"Off Ramp";
                goto LABEL_44;
              }

              if (rampDirection2 != 3)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (rampDirection2)
              {
                if (rampDirection2 == 1)
                {
                  v22 = @"On Ramp";
LABEL_44:
                  v21 = _MNLocalizedStringFromThisBundle(v22);
                  goto LABEL_45;
                }

                goto LABEL_45;
              }

              v25 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v30 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
                v31 = 2080;
                v32 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
                v33 = 1024;
                v34 = 319;
                _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
              }
            }

            v22 = @"Ramp";
            goto LABEL_44;
          case 0:
            v18 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v30 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
              v31 = 2080;
              v32 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
              v33 = 1024;
              v34 = 314;
              _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
            }

            goto LABEL_19;
        }
      }

      v21 = 0;
      goto LABEL_45;
    }
  }

  if (name)
  {
    *name = 0;
  }

  if (text)
  {
    *text = 0;
  }

  if (type)
  {
    *type = 0;
  }

LABEL_52:
}

- (void)_updateArrivalInfo:(id)info previousState:(int64_t)state
{
  infoCopy = info;
  p_arrivalInfo = &self->_arrivalInfo;
  if (self->_arrivalInfo != infoCopy)
  {
    v10 = infoCopy;
    objc_storeStrong(p_arrivalInfo, info);
    if ([(MNArrivalInfo *)v10 isInArrivalState])
    {
      self->_hasVisitedFirstStop = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateArrivalInfo:v10 previousState:state];
  }

  MEMORY[0x1EEE66BE0](p_arrivalInfo);
}

- (void)_setTargetLegIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_targetLegIndex != index)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      targetLegIndex = self->_targetLegIndex;
      v8[0] = 67109376;
      v8[1] = targetLegIndex;
      v9 = 1024;
      indexCopy = index;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Changing target leg index from %d to %d.", v8, 0xEu);
    }

    self->_targetLegIndex = index;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateTargetLegIndex:index];
  }
}

- (void)_setState:(int)state
{
  if (self->_state != state)
  {
    v4 = *&state;
    self->_state = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didChangeState:v4];
  }
}

- (id)matchedLocationForLocation:(id)location
{
  v20 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v18 = 138412290;
    v19 = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNLocationTracker::matchedLocationForLocation:", &v18, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedLocationForLocation", "", &v18, 2u);
  }

  v11 = [(MNLocationTracker *)self _matchedLocationForLocation:locationCopy];
  if (v11)
  {
    v12 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      uuid2 = [v11 uuid];
      v18 = 138412290;
      v19 = uuid2;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - calling didUpdateMatchedLocation:", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateMatchedLocation:v11];
  }

  v15 = v10;
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_END, v8, "MatchedLocationForLocation", "", &v18, 2u);
  }

  return v11;
}

- (void)updateDestination:(id)destination completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)removeWaypointAtIndex:(unint64_t)index completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)insertWaypoint:(id)waypoint completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)rerouteWithWaypoints:(id)waypoints completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v5 = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo:location];
  route = [v5 route];

  routeInitializerData = [route routeInitializerData];
  directionsRequest = [routeInitializerData directionsRequest];
  tripInfo = [directionsRequest tripInfo];
  hasVisitedFirstStop = [tripInfo hasVisitedFirstStop];

  if (hasVisitedFirstStop)
  {
    self->_hasVisitedFirstStop = 1;
  }
}

- (int)transportType
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    v7 = 136316162;
    v8 = "[MNLocationTracker transportType]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
    v11 = 1024;
    v12 = 74;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v7, 0x30u);
  }

  return 4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA70] object:0];

  v4.receiver = self;
  v4.super_class = MNLocationTracker;
  [(MNLocationTracker *)&v4 dealloc];
}

- (MNLocationTracker)initWithNavigationSession:(id)session
{
  sessionCopy = session;
  v5 = [(MNLocationTracker *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    objc_storeWeak(&v5->_navigationSession, sessionCopy);
    v6->_targetLegIndex = 0x7FFFFFFFFFFFFFFFLL;
    auditToken = [sessionCopy auditToken];
    auditToken = v6->_auditToken;
    v6->_auditToken = auditToken;

    v9 = v6;
  }

  return v6;
}

- (MNLocationTracker)init
{
  v6.receiver = self;
  v6.super_class = MNLocationTracker;
  v2 = [(MNLocationTracker *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MNLocationTracker *)v2 _updateShouldLocalizeRoadNames];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__defaultsDidChange name:*MEMORY[0x1E696AA70] object:0];
  }

  return v3;
}

@end