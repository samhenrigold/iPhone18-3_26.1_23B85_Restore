@interface CLLocationSmoother
- (CLLocationManagerDelegateInternal)delegate;
- (CLLocationSmoother)initWithWorkoutActivityType:(unint64_t)type shouldReconstructEntireRoute:(BOOL)route timeIntervalsThatNeedPopulating:(id)populating;
- (_CLLocationSmootherProxy)locationManagerSmootherProxy;
- (void)configureWithWorkoutActivityType:(unint64_t)type shouldReconstructEntireRoute:(BOOL)route timeIntervalsThatNeedPopulating:(id)populating;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)smoothLocations:(id)locations;
- (void)smoothLocations:(id)locations batchType:(unint64_t)type handler:(id)handler;
- (void)smoothLocations:(id)locations workoutActivityType:(unint64_t)type shouldReconstructRoute:(BOOL)route timeIntervalsThatNeedPopulated:(id)populated handler:(id)handler;
@end

@implementation CLLocationSmoother

- (void)configureWithWorkoutActivityType:(unint64_t)type shouldReconstructEntireRoute:(BOOL)route timeIntervalsThatNeedPopulating:(id)populating
{
  populatingCopy = populating;
  selfCopy = self;
  v146 = *MEMORY[0x1E69E9840];
  self->fWorkoutActivityType = type;
  self->fShouldReconstructEntireRoute = route;
  if (populating && objc_msgSend_count(populating, a2, type, route))
  {
    v130 = selfCopy;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(populatingCopy, v7, &v131, v145, 16);
    if (v8)
    {
      v11 = v8;
      v12 = 0;
      v13 = *v132;
      do
      {
        v14 = 0;
        do
        {
          if (*v132 != v13)
          {
            objc_enumerationMutation(populatingCopy);
          }

          v15 = *(*(&v131 + 1) + 8 * v14);
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
          }

          v16 = qword_1EAFE47A0;
          if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
          {
            started = objc_msgSend_startDate(v15, v17, v18, v19);
            objc_msgSend_timeIntervalSinceReferenceDate(started, v21, v22, v23);
            v25 = v24;
            v29 = objc_msgSend_endDate(v15, v26, v27, v28);
            objc_msgSend_timeIntervalSinceReferenceDate(v29, v30, v31, v32);
            v34 = v33;
            v38 = objc_msgSend_endDate(v15, v35, v36, v37);
            objc_msgSend_timeIntervalSinceReferenceDate(v38, v39, v40, v41);
            v43 = v42;
            v47 = objc_msgSend_startDate(v15, v44, v45, v46);
            objc_msgSend_timeIntervalSinceReferenceDate(v47, v48, v49, v50);
            *buf = 134349824;
            *v141 = v12;
            *&v141[8] = 2050;
            *v142 = v25;
            *&v142[8] = 2050;
            *&v142[10] = v34;
            v143 = 2050;
            v144 = v43 - v51;
            _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,timeIntervalsThatNeedPopulating,index,%{public}zu,start,%{public}.lf,stop,%{public}.1lf,diff,%{public}.1lf", buf, 0x2Au);
          }

          v52 = sub_19B87DD40();
          if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4798 != -1)
            {
              dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
            }

            v57 = qword_1EAFE47A0;
            v58 = objc_msgSend_startDate(v15, v54, v55, v56);
            objc_msgSend_timeIntervalSinceReferenceDate(v58, v59, v60, v61);
            v63 = v62;
            v67 = objc_msgSend_endDate(v15, v64, v65, v66);
            objc_msgSend_timeIntervalSinceReferenceDate(v67, v68, v69, v70);
            v72 = v71;
            v76 = objc_msgSend_endDate(v15, v73, v74, v75);
            objc_msgSend_timeIntervalSinceReferenceDate(v76, v77, v78, v79);
            v81 = v80;
            v85 = objc_msgSend_startDate(v15, v82, v83, v84);
            objc_msgSend_timeIntervalSinceReferenceDate(v85, v86, v87, v88);
            v135 = 134349824;
            *v136 = v12;
            *&v136[8] = 2050;
            *v137 = v63;
            *&v137[8] = 2050;
            *&v137[10] = v72;
            v138 = 2050;
            v139 = v81 - v89;
            v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v57, 0, "CLRS,timeIntervalsThatNeedPopulating,index,%{public}zu,start,%{public}.lf,stop,%{public}.1lf,diff,%{public}.1lf", &v135, 42);
            sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v90);
            if (v90 != buf)
            {
              free(v90);
            }
          }

          ++v12;
          ++v14;
        }

        while (v11 != v14);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(populatingCopy, v53, &v131, v145, 16);
      }

      while (v11);
    }

    v91 = objc_msgSend_authorizationStatusForBundlePath_(CLLocationManager, v9, @"/System/Library/LocationBundles/AppleWatchWorkout.bundle", v10);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
    }

    v92 = v91 - 3;
    v93 = qword_1EAFE47A0;
    selfCopy = v130;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *v141 = v92 < 2;
      *&v141[4] = 1026;
      *&v141[6] = v91;
      _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEFAULT, "CLRS,workoutAppIsAuthorizedForLocations,%{public}d,workoutAppAuthorizationStatus,%{public}d", buf, 0xEu);
    }

    v94 = sub_19B87DD40();
    if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
      }

      v135 = 67240448;
      *v136 = v92 < 2;
      *&v136[4] = 1026;
      *&v136[6] = v91;
      v95 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 0, "CLRS,workoutAppIsAuthorizedForLocations,%{public}d,workoutAppAuthorizationStatus,%{public}d", &v135, 14);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v95);
      if (v95 != buf)
      {
        free(v95);
      }
    }

    if (v92 >= 2)
    {
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
      }

      v96 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *v141 = v91;
        _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_ERROR, "CLRS,workout app is not authorized for locations,clearing time intervals that need populated,status,%{public}d", buf, 8u);
      }

      v97 = sub_19B87DD40();
      if ((*(v97 + 160) & 0x80000000) == 0 || (*(v97 + 164) & 0x80000000) == 0 || (*(v97 + 168) & 0x80000000) == 0 || *(v97 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
        }

        v135 = 67240192;
        *v136 = v91;
        v98 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 16, "CLRS,workout app is not authorized for locations,clearing time intervals that need populated,status,%{public}d", &v135, 8);
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v98);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      populatingCopy = 0;
    }
  }

  selfCopy->fTimeIntervalsThatNeedPopulating = populatingCopy;
  if (qword_1EAFE4798 != -1)
  {
    dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
  }

  v99 = qword_1EAFE47A0;
  if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
  {
    fShouldReconstructEntireRoute = selfCopy->fShouldReconstructEntireRoute;
    fTimeIntervalsThatNeedPopulating = selfCopy->fTimeIntervalsThatNeedPopulating;
    fWorkoutActivityType = selfCopy->fWorkoutActivityType;
    if (fTimeIntervalsThatNeedPopulating)
    {
      fTimeIntervalsThatNeedPopulating = objc_msgSend_count(fTimeIntervalsThatNeedPopulating, v100, v101, v102);
    }

    *buf = 134349568;
    *v141 = fWorkoutActivityType;
    *&v141[8] = 1026;
    *v142 = fShouldReconstructEntireRoute;
    *&v142[4] = 2050;
    *&v142[6] = fTimeIntervalsThatNeedPopulating;
    _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEFAULT, "CLRS,configureWithWorkoutActivityType,HKWorkoutActivityType,%{public}lu,shouldReconstructEntireRoute,%{public}d,timeIntervalsThatNeedPopulating,%{public}lu", buf, 0x1Cu);
  }

  v106 = sub_19B87DD40();
  if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
    }

    v113 = qword_1EAFE47A0;
    v114 = selfCopy->fShouldReconstructEntireRoute;
    v115 = selfCopy->fTimeIntervalsThatNeedPopulating;
    v116 = selfCopy->fWorkoutActivityType;
    if (v115)
    {
      v115 = objc_msgSend_count(v115, v110, v111, v112);
    }

    v135 = 134349568;
    *v136 = v116;
    *&v136[8] = 1026;
    *v137 = v114;
    *&v137[4] = 2050;
    *&v137[6] = v115;
    v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v113, 0, "CLRS,configureWithWorkoutActivityType,HKWorkoutActivityType,%{public}lu,shouldReconstructEntireRoute,%{public}d,timeIntervalsThatNeedPopulating,%{public}lu", &v135, 28);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v117);
    if (v117 != buf)
    {
      free(v117);
    }
  }

  v118 = objc_msgSend_locationManagerSmootherProxy(selfCopy, v107, v108, v109);
  v122 = objc_msgSend_connection(v118, v119, v120, v121);
  v126 = objc_msgSend_remoteObjectProxy(v122, v123, v124, v125);
  v128 = selfCopy->fWorkoutActivityType;
  if (v128 > 59)
  {
    if (v128 > 69)
    {
      if ((v128 - 70) < 2)
      {
        objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 90603, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
        return;
      }
    }

    else
    {
      switch(v128)
      {
        case '<':
          objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 19090, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
          return;
        case '=':
          objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 19150, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
          return;
        case 'C':
          objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 519150, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
          return;
      }
    }

    goto LABEL_86;
  }

  v129 = 4;
  if (v128 <= 36)
  {
    switch(v128)
    {
      case 13:
        objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 6, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
        return;
      case 21:
        objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 15255, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
        return;
      case 24:
        goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v128 == 37)
  {
    objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 8, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
    return;
  }

  if (v128 == 46)
  {
    objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, 18240, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
    return;
  }

  if (v128 != 52)
  {
LABEL_86:
    v129 = 62;
  }

LABEL_87:
  objc_msgSend_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v126, v127, v129, selfCopy->fShouldReconstructEntireRoute, selfCopy->fTimeIntervalsThatNeedPopulating);
}

- (CLLocationSmoother)initWithWorkoutActivityType:(unint64_t)type shouldReconstructEntireRoute:(BOOL)route timeIntervalsThatNeedPopulating:(id)populating
{
  routeCopy = route;
  v12.receiver = self;
  v12.super_class = CLLocationSmoother;
  v8 = [(CLLocationSmoother *)&v12 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_configureWithWorkoutActivityType_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(v8, v9, type, routeCopy, populating);
  }

  return v10;
}

- (void)dealloc
{
  self->fWorkoutActivityType = 3000;
  self->fShouldReconstructEntireRoute = 0;

  self->fTimeIntervalsThatNeedPopulating = 0;
  v3.receiver = self;
  v3.super_class = CLLocationSmoother;
  [(CLLocationSmoother *)&v3 dealloc];
}

- (_CLLocationSmootherProxy)locationManagerSmootherProxy
{
  result = self->_locationManagerSmootherProxy;
  if (!result)
  {
    v4 = [_CLLocationSmootherProxy alloc];
    result = objc_msgSend_initWithCLLocationSmoother_(v4, v5, self, v6);
    self->_locationManagerSmootherProxy = result;
  }

  return result;
}

- (void)smoothLocations:(id)locations
{
  v6 = *(objc_msgSend_locationManagerSmootherProxy(self, a2, locations, v3) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B8DABE4;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = locations;
  dispatch_async(v6, v7);
}

- (void)smoothLocations:(id)locations batchType:(unint64_t)type handler:(id)handler
{
  if (sub_19B93C23C())
  {
    v12 = objc_msgSend_locationManagerSmootherProxy(self, v9, v10, v11);
    v16 = objc_msgSend_connection(v12, v13, v14, v15);
    v20 = objc_msgSend_remoteObjectProxy(v16, v17, v18, v19);

    MEMORY[0x1EEE66B58](v20, sel_smoothLocations_batchType_handler_, locations, type);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B8DAD48;
    block[3] = &unk_1E753CCE0;
    block[4] = handler;
    dispatch_async(global_queue, block);
  }
}

- (void)smoothLocations:(id)locations workoutActivityType:(unint64_t)type shouldReconstructRoute:(BOOL)route timeIntervalsThatNeedPopulated:(id)populated handler:(id)handler
{
  objc_msgSend_configureWithWorkoutActivityType_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_(self, a2, type, route, populated);

  MEMORY[0x1EEE66B58](self, sel_smoothLocations_batchType_handler_, locations, 0);
}

- (void)setDelegate:(id)delegate
{
  v6 = *(objc_msgSend_locationManagerSmootherProxy(self, a2, delegate, v3) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B8DAE9C;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = delegate;
  dispatch_async(v6, v7);
}

- (CLLocationManagerDelegateInternal)delegate
{
  v4 = objc_msgSend_locationManagerSmootherProxy(self, a2, v2, v3);

  return objc_msgSend_delegate(v4, v5, v6, v7);
}

@end