@interface CLLocationManagerStateTracker
- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints;
- (CLLocationManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state;
- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state;
- (void)dealloc;
- (void)setActivityType:(int64_t)type;
- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations;
- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates;
- (void)setAllowsLocationPrompts:(BOOL)prompts;
- (void)setAllowsMapCorrection:(BOOL)correction;
- (void)setBatchingLocation:(BOOL)location;
- (void)setCourtesyPromptNeeded:(BOOL)needed;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled;
- (void)setFusionInfoEnabled:(BOOL)enabled;
- (void)setGroundAltitudeEnabled:(BOOL)enabled;
- (void)setHeadingFilter:(double)filter;
- (void)setIsAuthorizedForWidgetUpdates:(BOOL)updates;
- (void)setLimitsPrecision:(BOOL)precision;
- (void)setMatchInfoEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
- (void)setPausesLocationUpdatesAutomatically:(int)automatically;
- (void)setPreviousAuthorizationStatus:(int)status;
- (void)setPreviousAuthorizationStatusValid:(BOOL)valid;
- (void)setRequestingLocation:(BOOL)location;
- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator;
- (void)setTrackRunInfoEnabled:(BOOL)enabled;
- (void)setUpdatingHeading:(BOOL)heading;
- (void)setUpdatingLocation:(BOOL)location;
- (void)setUpdatingVehicleHeading:(BOOL)heading;
- (void)setUpdatingVehicleSpeed:(BOOL)speed;
- (void)updateState:(id)state;
@end

@implementation CLLocationManagerStateTracker

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290562;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "state_transition";
    v14 = 2082;
    v15 = "LocationManager";
    v16 = 2050;
    v17 = objc_msgSend_identifier(self, v4, v5, v6);
    v18 = 2082;
    v19 = "lifecycle";
    v20 = 2050;
    selfCopy = self;
    v22 = 2050;
    v23 = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  v7.receiver = self;
  v7.super_class = CLLocationManagerStateTracker;
  [(CLStateTracker *)&v7 dealloc];
}

- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state
{
  objc_msgSend_assertInside(silo, a2, silo, identifier);
  v13 = objc_msgSend_queue(silo, v9, v10, v11);

  return objc_msgSend_initWithQueue_identifier_state_(self, v12, v13, identifier, state);
}

- (CLLocationManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state
{
  v37 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CLLocationManagerStateTracker;
  v7 = [(CLStateTracker *)&v22 initWithQueue:queue];
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  v7->_identifier = identifier;
  if (!state)
  {
    goto LABEL_7;
  }

  if (v7->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v20 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v21 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "!_inTransaction";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Already in a transaction. LocationManager threading bug?", "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v8 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, &v8->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 281, "[CLLocationManagerStateTracker initWithQueue:identifier:state:]");
  }

  else
  {
    v7->_inTransaction = 1;
    (*(state + 2))(state, v7);
    v8->_inTransaction = 0;
    if (qword_1ED519078 == -1)
    {
      goto LABEL_5;
    }
  }

  dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
LABEL_5:
  v9 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_msgSend_identifier(v8, v10, v11, v12);
    *buf = 68290562;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "state_transition";
    v29 = 2082;
    v30 = "LocationManager";
    v31 = 2050;
    v32 = v13;
    v33 = 2082;
    v34 = "init";
    v35 = 1040;
    *v36 = 80;
    *&v36[4] = 2098;
    *&v36[6] = &v8->_state;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, new:%{public, location:_CLLocationManagerStateTrackerState}.*P}", buf, 0x4Au);
LABEL_7:
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v14 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_msgSend_identifier(v8, v15, v16, v17);
    *buf = 68290562;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "state_transition";
    v29 = 2082;
    v30 = "LocationManager";
    v31 = 2050;
    v32 = v18;
    v33 = 2082;
    v34 = "lifecycle";
    v35 = 2050;
    *v36 = 0;
    *&v36[8] = 2050;
    *&v36[10] = v8;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  return v8;
}

- (void)setDistanceFilter:(double)filter
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      distanceFilter = self->_state.distanceFilter;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "distanceFilter";
      v22 = 2050;
      v23 = distanceFilter;
      v24 = 2050;
      filterCopy = filter;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v11, 0x4Eu);
    }
  }

  self->_state.distanceFilter = filter;
}

- (void)setDesiredAccuracy:(double)accuracy
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      desiredAccuracy = self->_state.desiredAccuracy;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "desiredAccuracy";
      v22 = 2050;
      v23 = desiredAccuracy;
      v24 = 2050;
      accuracyCopy = accuracy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v11, 0x4Eu);
    }
  }

  self->_state.desiredAccuracy = accuracy;
}

- (void)setUpdatingLocation:(BOOL)location
{
  locationCopy = location;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      updatingLocation = self->_state.updatingLocation;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "updatingLocation";
      v22 = 1026;
      v23 = updatingLocation;
      v24 = 1026;
      v25 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.updatingLocation = locationCopy;
}

- (void)setRequestingLocation:(BOOL)location
{
  locationCopy = location;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      requestingLocation = self->_state.requestingLocation;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "requestingLocation";
      v22 = 1026;
      v23 = requestingLocation;
      v24 = 1026;
      v25 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.requestingLocation = locationCopy;
}

- (void)setUpdatingHeading:(BOOL)heading
{
  headingCopy = heading;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      updatingHeading = self->_state.updatingHeading;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "updatingHeading";
      v22 = 1026;
      v23 = updatingHeading;
      v24 = 1026;
      v25 = headingCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.updatingHeading = headingCopy;
}

- (void)setHeadingFilter:(double)filter
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      headingFilter = self->_state.headingFilter;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "headingFilter";
      v22 = 2050;
      v23 = headingFilter;
      v24 = 2050;
      filterCopy = filter;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v11, 0x4Eu);
    }
  }

  self->_state.headingFilter = filter;
}

- (void)setAllowsLocationPrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      allowsLocationPrompts = self->_state.allowsLocationPrompts;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "allowsLocationPrompts";
      v22 = 1026;
      v23 = allowsLocationPrompts;
      v24 = 1026;
      v25 = promptsCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.allowsLocationPrompts = promptsCopy;
}

- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations
{
  locationsCopy = locations;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      allowsAlteredAccessoryLocations = self->_state.allowsAlteredAccessoryLocations;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "allowsAlteredAccessoryLocations";
      v22 = 1026;
      v23 = allowsAlteredAccessoryLocations;
      v24 = 1026;
      v25 = locationsCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.allowsAlteredAccessoryLocations = locationsCopy;
}

- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      dynamicAccuracyReductionEnabled = self->_state.dynamicAccuracyReductionEnabled;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "dynamicAccuracyReductionEnabled";
      v22 = 1026;
      v23 = dynamicAccuracyReductionEnabled;
      v24 = 1026;
      v25 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.dynamicAccuracyReductionEnabled = enabledCopy;
}

- (void)setPreviousAuthorizationStatusValid:(BOOL)valid
{
  validCopy = valid;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      previousAuthorizationStatusValid = self->_state.previousAuthorizationStatusValid;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "previousAuthorizationStatusValid";
      v22 = 1026;
      v23 = previousAuthorizationStatusValid;
      v24 = 1026;
      v25 = validCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.previousAuthorizationStatusValid = validCopy;
}

- (void)setPreviousAuthorizationStatus:(int)status
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      previousAuthorizationStatus = self->_state.previousAuthorizationStatus;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "previousAuthorizationStatus";
      v22 = 2050;
      v23 = previousAuthorizationStatus;
      v24 = 2050;
      statusCopy = status;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLClientAuthorizationStatus}lld, new:%{public, location:CLClientAuthorizationStatus}lld}", v11, 0x4Eu);
    }
  }

  self->_state.previousAuthorizationStatus = status;
}

- (void)setLimitsPrecision:(BOOL)precision
{
  precisionCopy = precision;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      limitsPrecision = self->_state.limitsPrecision;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "limitsPrecision";
      v22 = 1026;
      v23 = limitsPrecision;
      v24 = 1026;
      v25 = precisionCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.limitsPrecision = precisionCopy;
}

- (void)setActivityType:(int64_t)type
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      activityType = self->_state.activityType;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "activityType";
      v22 = 2050;
      v23 = activityType;
      v24 = 2050;
      typeCopy = type;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLActivityType}lld, new:%{public, location:CLActivityType}lld}", v11, 0x4Eu);
    }
  }

  self->_state.activityType = type;
}

- (void)setPausesLocationUpdatesAutomatically:(int)automatically
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      pausesLocationUpdatesAutomatically = self->_state.pausesLocationUpdatesAutomatically;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "pausesLocationUpdatesAutomatically";
      v22 = 2050;
      v23 = pausesLocationUpdatesAutomatically;
      v24 = 2050;
      automaticallyCopy = automatically;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLAutoPause}lld, new:%{public, location:CLAutoPause}lld}", v11, 0x4Eu);
    }
  }

  self->_state.pausesLocationUpdatesAutomatically = automatically;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      paused = self->_state.paused;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "paused";
      v22 = 1026;
      pausedCopy2 = paused;
      v24 = 1026;
      v25 = pausedCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.paused = pausedCopy;
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      allowsBackgroundLocationUpdates = self->_state.allowsBackgroundLocationUpdates;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "allowsBackgroundLocationUpdates";
      v22 = 1026;
      v23 = allowsBackgroundLocationUpdates;
      v24 = 1026;
      v25 = updatesCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.allowsBackgroundLocationUpdates = updatesCopy;
}

- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      showsBackgroundLocationIndicator = self->_state.showsBackgroundLocationIndicator;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "showsBackgroundLocationIndicator";
      v22 = 1026;
      v23 = showsBackgroundLocationIndicator;
      v24 = 1026;
      v25 = indicatorCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.showsBackgroundLocationIndicator = indicatorCopy;
}

- (void)setAllowsMapCorrection:(BOOL)correction
{
  correctionCopy = correction;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      allowsMapCorrection = self->_state.allowsMapCorrection;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "allowsMapCorrection";
      v22 = 1026;
      v23 = allowsMapCorrection;
      v24 = 1026;
      v25 = correctionCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.allowsMapCorrection = correctionCopy;
}

- (void)setBatchingLocation:(BOOL)location
{
  locationCopy = location;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      batchingLocation = self->_state.batchingLocation;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "batchingLocation";
      v22 = 1026;
      v23 = batchingLocation;
      v24 = 1026;
      v25 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.batchingLocation = locationCopy;
}

- (void)setUpdatingVehicleSpeed:(BOOL)speed
{
  speedCopy = speed;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      updatingVehicleSpeed = self->_state.updatingVehicleSpeed;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "updatingVehicleSpeed";
      v22 = 1026;
      v23 = updatingVehicleSpeed;
      v24 = 1026;
      v25 = speedCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.updatingVehicleSpeed = speedCopy;
}

- (void)setUpdatingVehicleHeading:(BOOL)heading
{
  headingCopy = heading;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      updatingVehicleHeading = self->_state.updatingVehicleHeading;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "updatingVehicleHeading";
      v22 = 1026;
      v23 = updatingVehicleHeading;
      v24 = 1026;
      v25 = headingCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.updatingVehicleHeading = headingCopy;
}

- (void)setMatchInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      matchInfoEnabled = self->_state.matchInfoEnabled;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "matchInfoEnabled";
      v22 = 1026;
      v23 = matchInfoEnabled;
      v24 = 1026;
      v25 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.matchInfoEnabled = enabledCopy;
}

- (void)setGroundAltitudeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      groundAltitudeEnabled = self->_state.groundAltitudeEnabled;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "groundAltitudeEnabled";
      v22 = 1026;
      v23 = groundAltitudeEnabled;
      v24 = 1026;
      v25 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.groundAltitudeEnabled = enabledCopy;
}

- (void)setFusionInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      fusionInfoEnabled = self->_state.fusionInfoEnabled;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "fusionInfoEnabled";
      v22 = 1026;
      v23 = fusionInfoEnabled;
      v24 = 1026;
      v25 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.fusionInfoEnabled = enabledCopy;
}

- (void)setCourtesyPromptNeeded:(BOOL)needed
{
  neededCopy = needed;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      courtesyPromptNeeded = self->_state.courtesyPromptNeeded;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "courtesyPromptNeeded";
      v22 = 1026;
      v23 = courtesyPromptNeeded;
      v24 = 1026;
      v25 = neededCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.courtesyPromptNeeded = neededCopy;
}

- (void)setIsAuthorizedForWidgetUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      isAuthorizedForWidgetUpdates = self->_state.isAuthorizedForWidgetUpdates;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "isAuthorizedForWidgetUpdates";
      v22 = 1026;
      v23 = isAuthorizedForWidgetUpdates;
      v24 = 1026;
      v25 = updatesCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.isAuthorizedForWidgetUpdates = updatesCopy;
}

- (void)setTrackRunInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_identifier(self, v6, v7, v8);
      trackRunInfoEnabled = self->_state.trackRunInfoEnabled;
      v11[0] = 68290562;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "state_transition";
      v16 = 2082;
      v17 = "LocationManager";
      v18 = 2050;
      v19 = v9;
      v20 = 2082;
      v21 = "trackRunInfoEnabled";
      v22 = 1026;
      v23 = trackRunInfoEnabled;
      v24 = 1026;
      v25 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v11, 0x46u);
    }
  }

  self->_state.trackRunInfoEnabled = enabledCopy;
}

- (void)updateState:(id)state
{
  v35 = *MEMORY[0x1E69E9840];
  p_state = &self->_state;
  v4 = *&self->_state.activityType;
  v14[2] = *&self->_state.allowsLocationPrompts;
  v14[3] = v4;
  v14[4] = *&self->_state.batchingLocation;
  v5 = *&self->_state.updatingLocation;
  v14[0] = *&self->_state.distanceFilter;
  v14[1] = v5;
  if (self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v12 = qword_1ED519080;
    p_state = "assert";
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v13 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!_inTransaction";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Already in a transaction. LocationManager threading bug?", "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    selfCopy = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, &selfCopy->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 281, "[CLLocationManagerStateTracker updateState:]");
  }

  else
  {
    selfCopy = self;
    self->_inTransaction = 1;
    (*(state + 2))(state, self);
    selfCopy->_inTransaction = 0;
    if (qword_1ED519078 == -1)
    {
      goto LABEL_3;
    }
  }

  dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
LABEL_3:
  v7 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_msgSend_identifier(selfCopy, v8, v9, v10);
    *buf = 68291074;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "state_transition";
    v21 = 2082;
    v22 = "LocationManager";
    v23 = 2050;
    v24 = v11;
    v25 = 2082;
    v26 = "allStates";
    v27 = 1040;
    v28 = 80;
    v29 = 2098;
    v30 = v14;
    v31 = 1040;
    v32 = 80;
    v33 = 2098;
    v34 = p_state;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:_CLLocationManagerStateTrackerState}.*P, new:%{public, location:_CLLocationManagerStateTrackerState}.*P}", buf, 0x5Au);
  }
}

- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints
{
  v20 = *MEMORY[0x1E69E9840];
  if (size <= 0x4F)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v9 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = 80;
      v18 = 2050;
      sizeCopy2 = size;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v12, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v10 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v12 = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = 80;
      v18 = 2050;
      sizeCopy2 = size;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "state dump failure", "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v12, 0x26u);
    }
  }

  else
  {
    *state = *&self->_state.distanceFilter;
    v6 = *&self->_state.batchingLocation;
    v8 = *&self->_state.updatingLocation;
    v7 = *&self->_state.allowsLocationPrompts;
    *(state + 3) = *&self->_state.activityType;
    *(state + 4) = v6;
    *(state + 1) = v8;
    *(state + 2) = v7;
  }

  return size > 0x4F;
}

@end