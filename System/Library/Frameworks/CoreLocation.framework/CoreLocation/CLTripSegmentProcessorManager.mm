@interface CLTripSegmentProcessorManager
- (CLTripSegmentProcessorManager)init;
- (id).cxx_construct;
- (id)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler;
- (id)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)errorObject:(int64_t)object description:(id)description;
- (id)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler;
- (id)getWaypointsSubsetFromSnapPointOnRoute:(id)route modeOfTransport:(int64_t)transport snapLocation:(id)location snapRoad:(id)road waypoints:(id)waypoints routeID:(id)d withOptions:(id)options outputHandler:(id)self0;
- (id)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)matchLocations:(id)locations toRoute:(id)route withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler;
- (id)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler;
- (void)cancelMapHelperRoadDataRequest;
- (void)clearMapHelperMemoryAndExitCleanly;
- (void)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0;
- (void)dealloc;
- (void)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)killProcessingWithID:(id)d;
- (void)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0;
- (void)outputRouteLearningDebuggingDataInCLTSPFile:(id)file;
- (void)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)simulateSparseTrajectoryAndSubmitCoreAnalytics:(id)analytics;
@end

@implementation CLTripSegmentProcessorManager

- (CLTripSegmentProcessorManager)init
{
  v4.receiver = self;
  v4.super_class = CLTripSegmentProcessorManager;
  v2 = [(CLTripSegmentProcessorManager *)&v4 init];
  if (v2)
  {
    v2->fQueue = dispatch_queue_create("com.apple.CoreLocation.TripSegmentProcessor", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->fQueue);
  v3.receiver = self;
  v3.super_class = CLTripSegmentProcessorManager;
  [(CLTripSegmentProcessorManager *)&v3 dealloc];
}

- (id)errorObject:(int64_t)object description:(id)description
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"%@", v8, description, *MEMORY[0x1E696A578]);
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v14, &v13, 1);
  return objc_msgSend_initWithDomain_code_userInfo_(v6, v11, @"com.apple.locationd.TripSegmentProcessor", object, v10);
}

- (id)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler
{
  v101 = *MEMORY[0x1E69E9840];
  if (data)
  {
    if (objc_msgSend_modeOfTransport(data, a2, data, options))
    {
      v12 = objc_msgSend_tripLocations(data, v9, v10, v11);
      if (objc_msgSend_count(v12, v13, v14, v15) > 1)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v44 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
        {
          v48 = objc_msgSend_tripLocations(data, v45, v46, v47);
          *buf = 67240450;
          *&buf[4] = objc_msgSend_count(v48, v49, v50, v51);
          v98 = 2114;
          v99 = objc_msgSend_tripSegmentID(data, v52, v53, v54);
          _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEFAULT, "CLTSP,processTripSegmentData called with locations count,%{public}d,tripSegmentID,%{public}@", buf, 0x12u);
        }

        v55 = sub_19B87DD40();
        if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          v59 = qword_1EAFE46E8;
          v60 = objc_msgSend_tripLocations(data, v56, v57, v58);
          v93 = 67240450;
          v94 = objc_msgSend_count(v60, v61, v62, v63);
          v95 = 2114;
          v96 = objc_msgSend_tripSegmentID(data, v64, v65, v66);
          v67 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v59, 0, "CLTSP,processTripSegmentData called with locations count,%{public}d,tripSegmentID,%{public}@", &v93, 18);
          sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v67);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        if (sub_19BA51D50(&self->cltsp, data, options, handler))
        {
          return 0;
        }

        else
        {
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          v71 = qword_1EAFE5B10;
          v72 = objc_msgSend_tripSegmentID(data, v68, v69, v70);
          v76 = objc_msgSend_UUIDString(v72, v73, v74, v75);
          v80 = objc_msgSend_UTF8String(v76, v77, v78, v79);
          sub_19B8759E8(buf, v80);
          v81 = sub_19B95D0F0(v71, buf);
          if (v100 < 0)
          {
            operator delete(*buf);
          }

          sub_19BA566AC(&self->cltsp, data, v81);
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          v85 = qword_1EAFE5B10;
          v86 = objc_msgSend_tripSegmentID(data, v82, v83, v84);
          sub_19B9545AC(v85, v86, v87, v88);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          v89 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            *&buf[4] = v81;
            _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_ERROR, "CLTSP,trip segment processing failed,%{public}d", buf, 8u);
          }

          v90 = sub_19B87DD40();
          if ((*(v90 + 160) & 0x80000000) == 0 || (*(v90 + 164) & 0x80000000) == 0 || (*(v90 + 168) & 0x80000000) == 0 || *(v90 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
            }

            v93 = 67240192;
            v94 = v81;
            v92 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,trip segment processing failed,%{public}d", &v93, 8);
            sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v92);
            if (v92 != buf)
            {
              free(v92);
            }
          }

          return objc_msgSend_errorObject_description_(self, v91, v81, @"CLTSP,trip segment processing failed");
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v16 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_msgSend_tripLocations(data, v17, v18, v19);
          *buf = 67240192;
          *&buf[4] = objc_msgSend_count(v20, v21, v22, v23);
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLTSP,location count less than two,count,%{public}d", buf, 8u);
        }

        v24 = sub_19B87DD40();
        if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          v29 = qword_1EAFE46E8;
          v30 = objc_msgSend_tripLocations(data, v26, v27, v28);
          v93 = 67240192;
          v94 = objc_msgSend_count(v30, v31, v32, v33);
          v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 16, "CLTSP,location count less than two,count,%{public}d", &v93, 8);
          sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        return objc_msgSend_errorObject_description_(self, v25, 1, @"CLTSP,location object has less than two entries");
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v40 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,unknown mode of transport", buf, 2u);
      }

      v41 = sub_19B87DD40();
      if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        LOWORD(v93) = 0;
        v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,unknown mode of transport", &v93, 2);
        sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      return objc_msgSend_errorObject_description_(self, v42, 1, @"CLTSP,invalid mode of transport");
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v36 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLTSP,trip segment data is nil", buf, 2u);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      LOWORD(v93) = 0;
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,trip segment data is nil", &v93, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    return objc_msgSend_errorObject_description_(self, v38, 1, @"CLTSP,trip segment data is nil");
  }
}

- (void)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_19B954784;
  v13[4] = sub_19B954794;
  v13[5] = data;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_19B954784;
  v12[4] = sub_19B954794;
  v12[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9547A0;
  block[3] = &unk_1E753DD18;
  block[7] = v13;
  block[8] = v12;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

- (void)outputRouteLearningDebuggingDataInCLTSPFile:(id)file
{
  v11 = *MEMORY[0x1E69E9840];
  if (file && objc_msgSend_count(file, a2, file, v3))
  {

    sub_19BA60970(&self->cltsp, 1, 8, file);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLTSP,tspManager,outputTripMatchingDebuggingDataInCLTSPFile - invalid data", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v9[0] = 0;
      v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,tspManager,outputTripMatchingDebuggingDataInCLTSPFile - invalid data", v9, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager outputRouteLearningDebuggingDataInCLTSPFile:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

- (id)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v105[203] + 4) = *MEMORY[0x1E69E9840];
  if (!data || !objc_msgSend_count(data, a2, d, options))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v43 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_msgSend_UUIDString(d, v44, v45, v46);
      *buf = 136446210;
      v105[0] = objc_msgSend_UTF8String(v47, v48, v49, v50);
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v51 = sub_19B87DD40();
    if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v56 = qword_1EAFE46E8;
      v57 = objc_msgSend_UUIDString(d, v53, v54, v55);
      v102 = 136446210;
      v103[0] = objc_msgSend_UTF8String(v57, v58, v59, v60);
      v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v56, 16, "CLTSP,route road data is nil or empty,tripID,%{public}s", &v102, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v62 = @"CLTSP,route road data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v52, 1, v62);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v63 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v67 = objc_msgSend_UUIDString(d, v64, v65, v66);
      *buf = 136446210;
      v105[0] = objc_msgSend_UTF8String(v67, v68, v69, v70);
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v71 = sub_19B87DD40();
    if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v75 = qword_1EAFE46E8;
      v76 = objc_msgSend_UUIDString(d, v72, v73, v74);
      v102 = 136446210;
      v103[0] = objc_msgSend_UTF8String(v76, v77, v78, v79);
      v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v75, 16, "CLTSP,unsupported mode of transport,tripID,%{public}s", &v102, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }
    }

    v62 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v52, 1, v62);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v16 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_count(data, v17, v18, v19);
    v24 = objc_msgSend_UUIDString(d, v21, v22, v23);
    *buf = 67240450;
    LODWORD(v105[0]) = v20;
    WORD2(v105[0]) = 2082;
    *(v105 + 6) = objc_msgSend_UTF8String(v24, v25, v26, v27);
    _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteUsingRoadData called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v28 = sub_19B87DD40();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v32 = qword_1EAFE46E8;
    v33 = objc_msgSend_count(data, v29, v30, v31);
    v37 = objc_msgSend_UUIDString(d, v34, v35, v36);
    v102 = 67240450;
    LODWORD(v103[0]) = v33;
    WORD2(v103[0]) = 2082;
    *(v103 + 6) = objc_msgSend_UTF8String(v37, v38, v39, v40);
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "CLTSP,constructRouteUsingRoadData called with roads,%{public}d,tripID,%{public}s", &v102, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  if (sub_19BA61BD0(&self->cltsp, d, data, road, endRoad, 1, options, handler))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v81 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v85 = objc_msgSend_UUIDString(d, v82, v83, v84);
    v89 = objc_msgSend_UTF8String(v85, v86, v87, v88);
    *buf = 136446210;
    v105[0] = v89;
    _os_log_impl(&dword_19B873000, v81, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingRoadData failed,tripID,%{public}s", buf, 0xCu);
  }

  v90 = sub_19B87DD40();
  if ((*(v90 + 160) & 0x80000000) == 0 || (*(v90 + 164) & 0x80000000) == 0 || (*(v90 + 168) & 0x80000000) == 0 || *(v90 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v95 = qword_1EAFE46E8;
    v96 = objc_msgSend_UUIDString(d, v92, v93, v94);
    v100 = objc_msgSend_UTF8String(v96, v97, v98, v99);
    v102 = 136446210;
    v103[0] = v100;
    v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v95, 16, "CLTSP,constructRouteUsingRoadData failed,tripID,%{public}s", &v102, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v101);
    if (v101 != buf)
    {
      free(v101);
    }
  }

  return objc_msgSend_errorObject_description_(self, v91, 7, @"CLTSP,constructRouteUsingRoadData");
}

- (void)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_19B954784;
  v22[4] = sub_19B954794;
  v22[5] = d;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3052000000;
  v21[3] = sub_19B954784;
  v21[4] = sub_19B954794;
  v21[5] = options;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = data;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = road;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = endRoad;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9555FC;
  block[3] = &unk_1E753DD40;
  block[8] = v21;
  block[9] = v20;
  block[10] = v19;
  block[11] = v18;
  block[12] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v22;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
}

- (id)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler
{
  *(&v104[203] + 4) = *MEMORY[0x1E69E9840];
  if (!data || !objc_msgSend_count(data, a2, d, options))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v42 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_msgSend_UUIDString(d, v43, v44, v45);
      *buf = 136446210;
      v104[0] = objc_msgSend_UTF8String(v46, v47, v48, v49);
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v50 = sub_19B87DD40();
    if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v55 = qword_1EAFE46E8;
      v56 = objc_msgSend_UUIDString(d, v52, v53, v54);
      v101 = 136446210;
      v102[0] = objc_msgSend_UTF8String(v56, v57, v58, v59);
      v60 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v55, 16, "CLTSP,route road data is nil or empty,tripID,%{public}s", &v101, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    v61 = @"CLTSP,route road data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v51, 1, v61);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v62 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_msgSend_UUIDString(d, v63, v64, v65);
      *buf = 136446210;
      v104[0] = objc_msgSend_UTF8String(v66, v67, v68, v69);
      _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v70 = sub_19B87DD40();
    if ((*(v70 + 160) & 0x80000000) == 0 || (*(v70 + 164) & 0x80000000) == 0 || (*(v70 + 168) & 0x80000000) == 0 || *(v70 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v74 = qword_1EAFE46E8;
      v75 = objc_msgSend_UUIDString(d, v71, v72, v73);
      v101 = 136446210;
      v102[0] = objc_msgSend_UTF8String(v75, v76, v77, v78);
      v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v74, 16, "CLTSP,unsupported mode of transport,tripID,%{public}s", &v101, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v79);
      if (v79 != buf)
      {
        free(v79);
      }
    }

    v61 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v51, 1, v61);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v15 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_count(data, v16, v17, v18);
    v23 = objc_msgSend_UUIDString(d, v20, v21, v22);
    *buf = 67240450;
    LODWORD(v104[0]) = v19;
    WORD2(v104[0]) = 2082;
    *(v104 + 6) = objc_msgSend_UTF8String(v23, v24, v25, v26);
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRouteID called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v27 = sub_19B87DD40();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v31 = qword_1EAFE46E8;
    v32 = objc_msgSend_count(data, v28, v29, v30);
    v36 = objc_msgSend_UUIDString(d, v33, v34, v35);
    v101 = 67240450;
    LODWORD(v102[0]) = v32;
    WORD2(v102[0]) = 2082;
    *(v102 + 6) = objc_msgSend_UTF8String(v36, v37, v38, v39);
    v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v31, 0, "CLTSP,simulateLocationOnRouteID called with roads,%{public}d,tripID,%{public}s", &v101, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  if (sub_19BA5F0E0(&self->cltsp, d, data, 1, options, handler, speed))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v80 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v84 = objc_msgSend_UUIDString(d, v81, v82, v83);
    v88 = objc_msgSend_UTF8String(v84, v85, v86, v87);
    *buf = 136446210;
    v104[0] = v88;
    _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLTSP,simulateLocationOnRouteID failed,tripID,%{public}s", buf, 0xCu);
  }

  v89 = sub_19B87DD40();
  if ((*(v89 + 160) & 0x80000000) == 0 || (*(v89 + 164) & 0x80000000) == 0 || (*(v89 + 168) & 0x80000000) == 0 || *(v89 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v94 = qword_1EAFE46E8;
    v95 = objc_msgSend_UUIDString(d, v91, v92, v93);
    v99 = objc_msgSend_UTF8String(v95, v96, v97, v98);
    v101 = 136446210;
    v102[0] = v99;
    v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v94, 16, "CLTSP,simulateLocationOnRouteID failed,tripID,%{public}s", &v101, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v100);
    if (v100 != buf)
    {
      free(v100);
    }
  }

  return objc_msgSend_errorObject_description_(self, v90, 8, @"CLTSP,simulateLocationOnRouteID");
}

- (void)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = d;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = options;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = data;
  fQueue = self->fQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B95621C;
  v17[3] = &unk_1E753DD68;
  v17[8] = v19;
  v17[9] = v18;
  v17[10] = transport;
  *&v17[11] = speed;
  v17[4] = self;
  v17[5] = handler;
  v17[6] = completionHandler;
  v17[7] = v20;
  dispatch_async(fQueue, v17);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (id)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v126[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || !objc_msgSend_count(route, a2, locations, route))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v46 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_msgSend_UUIDString(d, v47, v48, v49);
      *buf = 136446210;
      v126[0] = objc_msgSend_UTF8String(v50, v51, v52, v53);
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v59 = qword_1EAFE46E8;
      v60 = objc_msgSend_UUIDString(d, v56, v57, v58);
      v123 = 136446210;
      v124[0] = objc_msgSend_UTF8String(v60, v61, v62, v63);
      v64 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v59, 16, "CLTSP,route road data is nil or empty,tripID,%{public}s", &v123, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    v65 = @"CLTSP,route road data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v55, 1, v65);
  }

  if (!locations || !objc_msgSend_count(locations, v16, v17, v18))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v66 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v70 = objc_msgSend_UUIDString(d, v67, v68, v69);
      *buf = 136446210;
      v126[0] = objc_msgSend_UTF8String(v70, v71, v72, v73);
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v74 = sub_19B87DD40();
    if ((*(v74 + 160) & 0x80000000) == 0 || (*(v74 + 164) & 0x80000000) == 0 || (*(v74 + 168) & 0x80000000) == 0 || *(v74 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v78 = qword_1EAFE46E8;
      v79 = objc_msgSend_UUIDString(d, v75, v76, v77);
      v123 = 136446210;
      v124[0] = objc_msgSend_UTF8String(v79, v80, v81, v82);
      v83 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v78, 16, "CLTSP,location data is nil or empty,tripID,%{public}s", &v123, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v83);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    v65 = @"CLTSP,location data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v55, 1, v65);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v84 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v88 = objc_msgSend_UUIDString(d, v85, v86, v87);
      *buf = 136446210;
      v126[0] = objc_msgSend_UTF8String(v88, v89, v90, v91);
      _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v92 = sub_19B87DD40();
    if ((*(v92 + 160) & 0x80000000) == 0 || (*(v92 + 164) & 0x80000000) == 0 || (*(v92 + 168) & 0x80000000) == 0 || *(v92 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v96 = qword_1EAFE46E8;
      v97 = objc_msgSend_UUIDString(d, v93, v94, v95);
      v123 = 136446210;
      v124[0] = objc_msgSend_UTF8String(v97, v98, v99, v100);
      v101 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v96, 16, "CLTSP,unsupported mode of transport,tripID,%{public}s", &v123, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v101);
      if (v101 != buf)
      {
        free(v101);
      }
    }

    v65 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v55, 1, v65);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v19 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_msgSend_count(route, v20, v21, v22);
    v27 = objc_msgSend_UUIDString(d, v24, v25, v26);
    *buf = 67240450;
    LODWORD(v126[0]) = v23;
    WORD2(v126[0]) = 2082;
    *(v126 + 6) = objc_msgSend_UTF8String(v27, v28, v29, v30);
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v31 = sub_19B87DD40();
  if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v35 = qword_1EAFE46E8;
    v36 = objc_msgSend_count(route, v32, v33, v34);
    v40 = objc_msgSend_UUIDString(d, v37, v38, v39);
    v123 = 67240450;
    LODWORD(v124[0]) = v36;
    WORD2(v124[0]) = 2082;
    *(v124 + 6) = objc_msgSend_UTF8String(v40, v41, v42, v43);
    v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v35, 0, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", &v123, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  if (sub_19BA66898(&self->cltsp, d, route, waypoints, 1, locations, options, handler))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v102 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v106 = objc_msgSend_UUIDString(d, v103, v104, v105);
    v110 = objc_msgSend_UTF8String(v106, v107, v108, v109);
    *buf = 136446210;
    v126[0] = v110;
    _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
  }

  v111 = sub_19B87DD40();
  if ((*(v111 + 160) & 0x80000000) == 0 || (*(v111 + 164) & 0x80000000) == 0 || (*(v111 + 168) & 0x80000000) == 0 || *(v111 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v116 = qword_1EAFE46E8;
    v117 = objc_msgSend_UUIDString(d, v113, v114, v115);
    v121 = objc_msgSend_UTF8String(v117, v118, v119, v120);
    v123 = 136446210;
    v124[0] = v121;
    v122 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v116, 16, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", &v123, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v122);
    if (v122 != buf)
    {
      free(v122);
    }
  }

  return objc_msgSend_errorObject_description_(self, v112, 2, @"CLTSP,matchLocationsToRoute failed to snap");
}

- (id)matchLocations:(id)locations toRoute:(id)route withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v125[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || !objc_msgSend_count(route, a2, locations, route))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v45 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_msgSend_UUIDString(d, v46, v47, v48);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v49, v50, v51, v52);
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v53 = sub_19B87DD40();
    if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v58 = qword_1EAFE46E8;
      v59 = objc_msgSend_UUIDString(d, v55, v56, v57);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v59, v60, v61, v62);
      v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 16, "CLTSP,route road data is nil or empty,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v63);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    v64 = @"CLTSP,route road data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (!locations || !objc_msgSend_count(locations, v15, v16, v17))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v65 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_msgSend_UUIDString(d, v66, v67, v68);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v69, v70, v71, v72);
      _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v73 = sub_19B87DD40();
    if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v77 = qword_1EAFE46E8;
      v78 = objc_msgSend_UUIDString(d, v74, v75, v76);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v78, v79, v80, v81);
      v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v77, 16, "CLTSP,location data is nil or empty,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }

    v64 = @"CLTSP,location data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v83 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_msgSend_UUIDString(d, v84, v85, v86);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v87, v88, v89, v90);
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v91 = sub_19B87DD40();
    if ((*(v91 + 160) & 0x80000000) == 0 || (*(v91 + 164) & 0x80000000) == 0 || (*(v91 + 168) & 0x80000000) == 0 || *(v91 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v95 = qword_1EAFE46E8;
      v96 = objc_msgSend_UUIDString(d, v92, v93, v94);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v96, v97, v98, v99);
      v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v95, 16, "CLTSP,unsupported mode of transport,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v100);
      if (v100 != buf)
      {
        free(v100);
      }
    }

    v64 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v18 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_msgSend_count(route, v19, v20, v21);
    v26 = objc_msgSend_UUIDString(d, v23, v24, v25);
    *buf = 67240450;
    LODWORD(v125[0]) = v22;
    WORD2(v125[0]) = 2082;
    *(v125 + 6) = objc_msgSend_UTF8String(v26, v27, v28, v29);
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v30 = sub_19B87DD40();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v34 = qword_1EAFE46E8;
    v35 = objc_msgSend_count(route, v31, v32, v33);
    v39 = objc_msgSend_UUIDString(d, v36, v37, v38);
    v122 = 67240450;
    LODWORD(v123[0]) = v35;
    WORD2(v123[0]) = 2082;
    *(v123 + 6) = objc_msgSend_UTF8String(v39, v40, v41, v42);
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v34, 0, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", &v122, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  if (sub_19BA686C4(&self->cltsp, d, route, 1, locations, options, handler))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v101 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v105 = objc_msgSend_UUIDString(d, v102, v103, v104);
    v109 = objc_msgSend_UTF8String(v105, v106, v107, v108);
    *buf = 136446210;
    v125[0] = v109;
    _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
  }

  v110 = sub_19B87DD40();
  if ((*(v110 + 160) & 0x80000000) == 0 || (*(v110 + 164) & 0x80000000) == 0 || (*(v110 + 168) & 0x80000000) == 0 || *(v110 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v115 = qword_1EAFE46E8;
    v116 = objc_msgSend_UUIDString(d, v112, v113, v114);
    v120 = objc_msgSend_UTF8String(v116, v117, v118, v119);
    v122 = 136446210;
    v123[0] = v120;
    v121 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v115, 16, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", &v122, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v121);
    if (v121 != buf)
    {
      free(v121);
    }
  }

  return objc_msgSend_errorObject_description_(self, v111, 2, @"CLTSP,matchLocationsToRoute failed to snap");
}

- (id)getWaypointsSubsetFromSnapPointOnRoute:(id)route modeOfTransport:(int64_t)transport snapLocation:(id)location snapRoad:(id)road waypoints:(id)waypoints routeID:(id)d withOptions:(id)options outputHandler:(id)self0
{
  *(&v125[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || !objc_msgSend_count(route, a2, route, transport))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v45 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_msgSend_UUIDString(d, v46, v47, v48);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v49, v50, v51, v52);
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v53 = sub_19B87DD40();
    if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v58 = qword_1EAFE46E8;
      v59 = objc_msgSend_UUIDString(d, v55, v56, v57);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v59, v60, v61, v62);
      v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 16, "CLTSP,route road data is nil or empty,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v63);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    v64 = @"CLTSP,route road data is nil or empty";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (!location || !road)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v65 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_msgSend_UUIDString(d, v66, v67, v68);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v69, v70, v71, v72);
      _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v73 = sub_19B87DD40();
    if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v77 = qword_1EAFE46E8;
      v78 = objc_msgSend_UUIDString(d, v74, v75, v76);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v78, v79, v80, v81);
      v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v77, 16, "CLTSP,location data is nil or empty,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }

    v64 = @"CLTSP,snap data is nil";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v83 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_msgSend_UUIDString(d, v84, v85, v86);
      *buf = 136446210;
      v125[0] = objc_msgSend_UTF8String(v87, v88, v89, v90);
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v91 = sub_19B87DD40();
    if ((*(v91 + 160) & 0x80000000) == 0 || (*(v91 + 164) & 0x80000000) == 0 || (*(v91 + 168) & 0x80000000) == 0 || *(v91 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v95 = qword_1EAFE46E8;
      v96 = objc_msgSend_UUIDString(d, v92, v93, v94);
      v122 = 136446210;
      v123[0] = objc_msgSend_UTF8String(v96, v97, v98, v99);
      v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v95, 16, "CLTSP,unsupported mode of transport,tripID,%{public}s", &v122, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v100);
      if (v100 != buf)
      {
        free(v100);
      }
    }

    v64 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v54, 1, v64);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v17 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_count(route, v18, v19, v20);
    v25 = objc_msgSend_UUIDString(d, v22, v23, v24);
    *buf = 67240450;
    LODWORD(v125[0]) = v21;
    WORD2(v125[0]) = 2082;
    *(v125 + 6) = objc_msgSend_UTF8String(v25, v26, v27, v28);
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  handlerCopy2 = handler;
  v30 = sub_19B87DD40();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v34 = qword_1EAFE46E8;
    v35 = objc_msgSend_count(route, v31, v32, v33);
    v39 = objc_msgSend_UUIDString(d, v36, v37, v38);
    v122 = 67240450;
    LODWORD(v123[0]) = v35;
    WORD2(v123[0]) = 2082;
    *(v123 + 6) = objc_msgSend_UTF8String(v39, v40, v41, v42);
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v34, 0, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", &v122, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }

    handlerCopy2 = handler;
  }

  if (sub_19BA6984C(&self->cltsp, d, 1, location, road, route, waypoints, options, handlerCopy2))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v101 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v105 = objc_msgSend_UUIDString(d, v102, v103, v104);
    v109 = objc_msgSend_UTF8String(v105, v106, v107, v108);
    *buf = 136446210;
    v125[0] = v109;
    _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
  }

  v110 = sub_19B87DD40();
  if ((*(v110 + 160) & 0x80000000) == 0 || (*(v110 + 164) & 0x80000000) == 0 || (*(v110 + 168) & 0x80000000) == 0 || *(v110 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v115 = qword_1EAFE46E8;
    v116 = objc_msgSend_UUIDString(d, v112, v113, v114);
    v120 = objc_msgSend_UTF8String(v116, v117, v118, v119);
    v122 = 136446210;
    v123[0] = v120;
    v121 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v115, 16, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", &v122, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v121);
    if (v121 != buf)
    {
      free(v121);
    }
  }

  return objc_msgSend_errorObject_description_(self, v111, 2, @"CLTSP,getWaypointsSubsetFromSnapPointOnRoute failed to snap");
}

- (void)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_19B954784;
  v22[4] = sub_19B954794;
  v22[5] = d;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3052000000;
  v21[3] = sub_19B954784;
  v21[4] = sub_19B954794;
  v21[5] = locations;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = options;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = route;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = waypoints;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9581CC;
  block[3] = &unk_1E753DD40;
  block[8] = v19;
  block[9] = v18;
  block[10] = v20;
  block[11] = v22;
  block[12] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v21;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
}

- (id)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v101[203] + 4) = *MEMORY[0x1E69E9840];
  if ((*&distance <= -1 || ((*&distance & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&distance - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v101 = distance;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,distance invalid,%{public}.2lf", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v98 = 134349056;
      *v99 = distance;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,propagateLocation,distance invalid,%{public}.2lf", &v98, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v18 = @"CLTSP,propagateLocation,distance invalid";
    return objc_msgSend_errorObject_description_(self, v16, 1, v18);
  }

  if (!(location | route))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v101 = distance;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,both locations and route are nil, one must be provided,%{public}.2lf", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v98 = 134349056;
      *v99 = distance;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,propagateLocation,both locations and route are nil, one must be provided,%{public}.2lf", &v98, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = @"CLTSP,propagateLocation,both locations and route are nil, one must be provided";
    return objc_msgSend_errorObject_description_(self, v16, 1, v18);
  }

  if (!objc_msgSend_count(location, a2, location, route) && !objc_msgSend_count(route, v26, v27, v28))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v95 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v101 = distance;
      _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,both locations and route are empty, one must be provided,%{public}.2lf", buf, 0xCu);
    }

    v96 = sub_19B87DD40();
    if ((*(v96 + 160) & 0x80000000) == 0 || (*(v96 + 164) & 0x80000000) == 0 || (*(v96 + 168) & 0x80000000) == 0 || *(v96 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v98 = 134349056;
      *v99 = distance;
      v97 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,propagateLocation,both locations and route are empty, one must be provided,%{public}.2lf", &v98, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v97);
      if (v97 != buf)
      {
        free(v97);
      }
    }

    v18 = @"CLTSP,propagateLocation,both locations and route are empty, one must be provided";
    return objc_msgSend_errorObject_description_(self, v16, 1, v18);
  }

  v29 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v56 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v60 = objc_msgSend_UUIDString(v29, v57, v58, v59);
      *buf = 136446210;
      v101[0] = objc_msgSend_UTF8String(v60, v61, v62, v63);
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,input modeOfTransport not supported,tripID,%{public}s", buf, 0xCu);
    }

    v64 = sub_19B87DD40();
    if ((*(v64 + 160) & 0x80000000) == 0 || (*(v64 + 164) & 0x80000000) == 0 || (*(v64 + 168) & 0x80000000) == 0 || *(v64 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v68 = qword_1EAFE46E8;
      v69 = objc_msgSend_UUIDString(v29, v65, v66, v67);
      v98 = 136446210;
      v99[0] = objc_msgSend_UTF8String(v69, v70, v71, v72);
      v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v68, 16, "CLTSP,propagateLocation,input modeOfTransport not supported,tripID,%{public}s", &v98, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    v18 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v16, 1, v18);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v30 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_count(location, v31, v32, v33);
    v38 = objc_msgSend_UUIDString(v29, v35, v36, v37);
    *buf = 67240450;
    LODWORD(v101[0]) = v34;
    WORD2(v101[0]) = 2082;
    *(v101 + 6) = objc_msgSend_UTF8String(v38, v39, v40, v41);
    _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "CLTSP,propagateLocation called with locations,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v42 = sub_19B87DD40();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v46 = qword_1EAFE46E8;
    v47 = objc_msgSend_count(location, v43, v44, v45);
    v51 = objc_msgSend_UUIDString(v29, v48, v49, v50);
    v98 = 67240450;
    LODWORD(v99[0]) = v47;
    WORD2(v99[0]) = 2082;
    *(v99 + 6) = objc_msgSend_UTF8String(v51, v52, v53, v54);
    v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v46, 0, "CLTSP,propagateLocation called with locations,%{public}d,tripID,%{public}s", &v98, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v55);
    if (v55 != buf)
    {
      free(v55);
    }
  }

  if (sub_19BA6AA10(&self->cltsp, v29, 1, location, route, options, handler, distance))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v74 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v78 = objc_msgSend_UUIDString(v29, v75, v76, v77);
    v82 = objc_msgSend_UTF8String(v78, v79, v80, v81);
    *buf = 136446210;
    v101[0] = v82;
    _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation failed,routeID,%{public}s", buf, 0xCu);
  }

  v83 = sub_19B87DD40();
  if ((*(v83 + 160) & 0x80000000) == 0 || (*(v83 + 164) & 0x80000000) == 0 || (*(v83 + 168) & 0x80000000) == 0 || *(v83 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v88 = qword_1EAFE46E8;
    v89 = objc_msgSend_UUIDString(v29, v85, v86, v87);
    v93 = objc_msgSend_UTF8String(v89, v90, v91, v92);
    v98 = 136446210;
    v99[0] = v93;
    v94 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v88, 16, "CLTSP,propagateLocation failed,routeID,%{public}s", &v98, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v94);
    if (v94 != buf)
    {
      free(v94);
    }
  }

  return objc_msgSend_errorObject_description_(self, v84, 2, @"CLTSP,propagateLocation failed to snap");
}

- (void)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = location;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = route;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = options;
  fQueue = self->fQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B959110;
  v17[3] = &unk_1E753DD68;
  *&v17[10] = distance;
  v17[8] = v19;
  v17[9] = v18;
  v17[11] = transport;
  v17[4] = self;
  v17[5] = handler;
  v17[6] = completionHandler;
  v17[7] = v20;
  dispatch_async(fQueue, v17);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (id)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v81[203] + 4) = *MEMORY[0x1E69E9840];
  if (route && objc_msgSend_count(route, a2, route, d))
  {
    if (transport == 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v13 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_msgSend_count(route, v14, v15, v16);
        v21 = objc_msgSend_UUIDString(d, v18, v19, v20);
        *buf = 67240450;
        LODWORD(v81[0]) = v17;
        WORD2(v81[0]) = 2082;
        *(v81 + 6) = objc_msgSend_UTF8String(v21, v22, v23, v24);
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "CLTSP,generateWaypointsOnTheRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
      }

      v25 = sub_19B87DD40();
      if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v29 = qword_1EAFE46E8;
        v30 = objc_msgSend_count(route, v26, v27, v28);
        v34 = objc_msgSend_UUIDString(d, v31, v32, v33);
        v78 = 67240450;
        LODWORD(v79[0]) = v30;
        WORD2(v79[0]) = 2082;
        *(v79 + 6) = objc_msgSend_UTF8String(v34, v35, v36, v37);
        v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "CLTSP,generateWaypointsOnTheRoute called with roads,%{public}d,tripID,%{public}s", &v78, 18);
        sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      sub_19BA6C9AC(&self->cltsp, d, route, 1, options, handler);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v59 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_msgSend_UUIDString(d, v60, v61, v62);
      *buf = 136446210;
      v81[0] = objc_msgSend_UTF8String(v63, v64, v65, v66);
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLTSP,generateWaypointsOnTheRoute,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v67 = sub_19B87DD40();
    if ((*(v67 + 160) & 0x80000000) == 0 || (*(v67 + 164) & 0x80000000) == 0 || (*(v67 + 168) & 0x80000000) == 0 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v71 = qword_1EAFE46E8;
      v72 = objc_msgSend_UUIDString(d, v68, v69, v70);
      v78 = 136446210;
      v79[0] = objc_msgSend_UTF8String(v72, v73, v74, v75);
      v76 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v71, 16, "CLTSP,generateWaypointsOnTheRoute,unsupported mode of transport,tripID,%{public}s", &v78, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v76);
      if (v76 != buf)
      {
        free(v76);
      }
    }

    v58 = @"CLTSP,input modeOfTransport not supported";
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v39 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_msgSend_UUIDString(d, v40, v41, v42);
      *buf = 136446210;
      v81[0] = objc_msgSend_UTF8String(v43, v44, v45, v46);
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLTSP,generateWaypointsOnTheRoute,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v52 = qword_1EAFE46E8;
      v53 = objc_msgSend_UUIDString(d, v49, v50, v51);
      v78 = 136446210;
      v79[0] = objc_msgSend_UTF8String(v53, v54, v55, v56);
      v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v52, 16, "CLTSP,generateWaypointsOnTheRoute,route road data is nil or empty,tripID,%{public}s", &v78, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    v58 = @"CLTSP,route road data is nil or empty";
  }

  return objc_msgSend_errorObject_description_(self, v48, 1, v58);
}

- (void)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = d;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = sub_19B954784;
  v17[4] = sub_19B954794;
  v17[5] = route;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B959CC0;
  block[3] = &unk_1E753DD90;
  block[8] = v18;
  block[9] = v16;
  block[10] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v17;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

- (id)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler
{
  *(&v81[203] + 4) = *MEMORY[0x1E69E9840];
  if (waypoints && objc_msgSend_count(waypoints, a2, waypoints, d))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v11 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_msgSend_count(waypoints, v12, v13, v14);
      v19 = objc_msgSend_UUIDString(d, v16, v17, v18);
      *buf = 67240450;
      LODWORD(v81[0]) = v15;
      WORD2(v81[0]) = 2082;
      *(v81 + 6) = objc_msgSend_UTF8String(v19, v20, v21, v22);
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteFromWaypoints called with waypoints,%{public}d,tripID,%{public}s", buf, 0x12u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v27 = qword_1EAFE46E8;
      v28 = objc_msgSend_count(waypoints, v24, v25, v26);
      v32 = objc_msgSend_UUIDString(d, v29, v30, v31);
      v78 = 67240450;
      LODWORD(v79[0]) = v28;
      WORD2(v79[0]) = 2082;
      *(v79 + 6) = objc_msgSend_UTF8String(v32, v33, v34, v35);
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v27, 0, "CLTSP,constructRouteFromWaypoints called with waypoints,%{public}d,tripID,%{public}s", &v78, 18);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    if (sub_19BA6E0B0(&self->cltsp, d, waypoints, options, handler))
    {
      return 0;
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v57 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_msgSend_UUIDString(d, v58, v59, v60);
        v65 = objc_msgSend_UTF8String(v61, v62, v63, v64);
        *buf = 136446210;
        v81[0] = v65;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints failed,routeID,%{public}s", buf, 0xCu);
      }

      v66 = sub_19B87DD40();
      if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v71 = qword_1EAFE46E8;
        v72 = objc_msgSend_UUIDString(d, v68, v69, v70);
        v76 = objc_msgSend_UTF8String(v72, v73, v74, v75);
        v78 = 136446210;
        v79[0] = v76;
        v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v71, 16, "CLTSP,constructRouteFromWaypoints failed,routeID,%{public}s", &v78, 12);
        sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v77);
        if (v77 != buf)
        {
          free(v77);
        }
      }

      return objc_msgSend_errorObject_description_(self, v67, 2, @"CLTSP,constructRouteFromWaypoints failed");
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v38 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_msgSend_UUIDString(d, v39, v40, v41);
      *buf = 136446210;
      v81[0] = objc_msgSend_UTF8String(v42, v43, v44, v45);
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints,waypoints data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v51 = qword_1EAFE46E8;
      v52 = objc_msgSend_UUIDString(d, v48, v49, v50);
      v78 = 136446210;
      v79[0] = objc_msgSend_UTF8String(v52, v53, v54, v55);
      v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v51, 16, "CLTSP,constructRouteFromWaypoints,waypoints data is nil or empty,tripID,%{public}s", &v78, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    return objc_msgSend_errorObject_description_(self, v47, 1, @"CLTSP,waypoints data is nil or empty");
  }
}

- (void)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = d;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = sub_19B954784;
  v15[4] = sub_19B954794;
  v15[5] = waypoints;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = sub_19B954784;
  v14[4] = sub_19B954794;
  v14[5] = options;
  fQueue = self->fQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B95A6AC;
  v13[3] = &unk_1E753DDB8;
  v13[8] = v16;
  v13[9] = v14;
  v13[4] = self;
  v13[5] = handler;
  v13[6] = completionHandler;
  v13[7] = v15;
  dispatch_async(fQueue, v13);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
}

- (void)clearMapHelperMemoryAndExitCleanly
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, a2, v2, v3);
  objc_msgSend_clearMemoryAndExitHelperProcessCleanly(v4, v5, v6, v7);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v8 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLTSP,tspManager,clearMemoryAndExitHelperProcessCleanly", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v11[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,tspManager,clearMemoryAndExitHelperProcessCleanly", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager clearMapHelperMemoryAndExitCleanly]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

- (void)cancelMapHelperRoadDataRequest
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, a2, v2, v3);
  objc_msgSend_cancelRoadDataRequest(v4, v5, v6, v7);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v8 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLTSP,tspManager,cancelRoadDataRequest", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v11[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,tspManager,cancelRoadDataRequest", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager cancelMapHelperRoadDataRequest]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

- (id)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler
{
  *(&v90[203] + 4) = *MEMORY[0x1E69E9840];
  if (!candidates)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v40 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,locations are nil", buf, 2u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      LOWORD(v87) = 0;
      v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getMatchedLocationCandidates,locations are nil", &v87, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    v44 = @"CLTSP,locations are nil";
    return objc_msgSend_errorObject_description_(self, v42, 1, v44);
  }

  if (!objc_msgSend_count(candidates, a2, candidates, d))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v45 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,location count received is 0", buf, 2u);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      LOWORD(v87) = 0;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getMatchedLocationCandidates,location count received is 0", &v87, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v44 = @"CLTSP,location count received is 0";
    return objc_msgSend_errorObject_description_(self, v42, 1, v44);
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v48 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_msgSend_UUIDString(d, v49, v50, v51);
      *buf = 136446210;
      v90[0] = objc_msgSend_UTF8String(v52, v53, v54, v55);
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,input modeOfTransport not supported,tripID,%{public}s", buf, 0xCu);
    }

    v56 = sub_19B87DD40();
    if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v60 = qword_1EAFE46E8;
      v61 = objc_msgSend_UUIDString(d, v57, v58, v59);
      v87 = 136446210;
      v88[0] = objc_msgSend_UTF8String(v61, v62, v63, v64);
      v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v60, 16, "CLTSP,getMatchedLocationCandidates,input modeOfTransport not supported,tripID,%{public}s", &v87, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    v44 = @"CLTSP,input modeOfTransport not supported";
    return objc_msgSend_errorObject_description_(self, v42, 1, v44);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v13 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_count(candidates, v14, v15, v16);
    v21 = objc_msgSend_UUIDString(d, v18, v19, v20);
    *buf = 67240450;
    LODWORD(v90[0]) = v17;
    WORD2(v90[0]) = 2082;
    *(v90 + 6) = objc_msgSend_UTF8String(v21, v22, v23, v24);
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "CLTSP,getMatchedLocationCandidates called with locations,%{public}d,dataID,%{public}s", buf, 0x12u);
  }

  v25 = sub_19B87DD40();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v29 = qword_1EAFE46E8;
    v30 = objc_msgSend_count(candidates, v26, v27, v28);
    v34 = objc_msgSend_UUIDString(d, v31, v32, v33);
    v87 = 67240450;
    LODWORD(v88[0]) = v30;
    WORD2(v88[0]) = 2082;
    *(v88 + 6) = objc_msgSend_UTF8String(v34, v35, v36, v37);
    v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "CLTSP,getMatchedLocationCandidates called with locations,%{public}d,dataID,%{public}s", &v87, 18);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (sub_19BA6D394(&self->cltsp, d, 1, candidates, options, handler))
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v66 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_msgSend_UUIDString(d, v67, v68, v69);
    v74 = objc_msgSend_UTF8String(v70, v71, v72, v73);
    *buf = 136446210;
    v90[0] = v74;
    _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates failed,dataID,%{public}s", buf, 0xCu);
  }

  v75 = sub_19B87DD40();
  if ((*(v75 + 160) & 0x80000000) == 0 || (*(v75 + 164) & 0x80000000) == 0 || (*(v75 + 168) & 0x80000000) == 0 || *(v75 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v80 = qword_1EAFE46E8;
    v81 = objc_msgSend_UUIDString(d, v77, v78, v79);
    v85 = objc_msgSend_UTF8String(v81, v82, v83, v84);
    v87 = 136446210;
    v88[0] = v85;
    v86 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v80, 16, "CLTSP,getMatchedLocationCandidates failed,dataID,%{public}s", &v87, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v86);
    if (v86 != buf)
    {
      free(v86);
    }
  }

  return objc_msgSend_errorObject_description_(self, v76, 2, @"CLTSP,getMatchedLocationCandidates failed to snap");
}

- (void)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = d;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = sub_19B954784;
  v17[4] = sub_19B954794;
  v17[5] = candidates;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B95B6B4;
  block[3] = &unk_1E753DD90;
  block[9] = v16;
  block[10] = transport;
  block[7] = v17;
  block[8] = v18;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

- (void)killProcessingWithID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = objc_msgSend_UUIDString(d, v5, v6, v7);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "CLTSP,killProcessingWithID,ID,%{public}@", buf, 0xCu);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v15 = qword_1EAFE46E8;
    v23 = 138543362;
    v24 = objc_msgSend_UUIDString(d, v12, v13, v14);
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v15, 1, "CLTSP,killProcessingWithID,ID,%{public}@", &v23, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager killProcessingWithID:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  v17 = qword_1EAFE5B10;
  v18 = objc_msgSend_UUIDString(d, v9, v10, v11);
  v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
  sub_19B8759E8(buf, v22);
  std::mutex::lock(v17);
  sub_19B95D910(v17, buf, 1);
  std::mutex::unlock(v17);
  if (v26 < 0)
  {
    operator delete(*buf);
  }
}

- (void)simulateSparseTrajectoryAndSubmitCoreAnalytics:(id)analytics
{
  v368 = *MEMORY[0x1E69E9840];
  v341 = 0;
  v342 = &v341;
  v343 = 0x3812000000;
  v344 = sub_19B95CCC0;
  v345 = nullsub_22;
  v346 = "";
  v347 = -1.0;
  v4 = mach_continuous_time();
  v347 = sub_19B994BF4(v4);
  v337 = 0;
  v338 = &v337;
  v339 = 0x2020000000;
  v340 = 0;
  v336[0] = MEMORY[0x1E69E9820];
  v336[1] = 3221225472;
  v336[2] = sub_19B95CCD0;
  v336[3] = &unk_1E753DDE0;
  v336[4] = analytics;
  v336[5] = &v337;
  v336[6] = &v341;
  v8 = objc_msgSend_tripLocations(analytics, v5, v6, v7);
  if (objc_msgSend_count(v8, v9, v10, v11) < 2)
  {
LABEL_52:
    v46 = objc_msgSend_mutableCopy(v8, v12, v13, v14);
    goto LABEL_53;
  }

  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v15 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v348, v367, 16);
  if (v19)
  {
    v20 = *v349;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v349 != v20)
        {
          objc_enumerationMutation(v8);
        }

        v15 += objc_msgSend_isGPSLocationType(*(*(&v348 + 1) + 8 * i), v16, v17, v18);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v348, v367, 16);
    }

    while (v19);
  }

  Object = objc_msgSend_lastObject(v8, v16, v17, v18);
  v26 = objc_msgSend_timestamp(Object, v23, v24, v25);
  v30 = objc_msgSend_firstObject(v8, v27, v28, v29);
  v34 = objc_msgSend_timestamp(v30, v31, v32, v33);
  objc_msgSend_timeIntervalSinceDate_(v26, v35, v34, v36);
  v38 = v37;
  if (v15 < 2 || (v39 = (v37 * 0.6), v15 <= v39))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v68 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v359 = *&v38;
      v360 = 1026;
      *v361 = v15;
      _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_INFO, "CLTSP,hasSubstantialGPSData,0,duration,%{public}.1lf,numberOfGPSLocations,%{public}d", buf, 0x12u);
    }

    v69 = sub_19B87DD40();
    if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v352 = 134349312;
      v353 = v38;
      v354 = 1026;
      v355 = v15;
      v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,hasSubstantialGPSData,0,duration,%{public}.1lf,numberOfGPSLocations,%{public}d", &v352, 18);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::hasSubstantialGPSData(NSArray<CLTripSegmentLocation *> * _Nonnull, double)", "CoreLocation: %s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }

    goto LABEL_52;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v40 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    v359 = *&v38;
    v360 = 1026;
    *v361 = v15;
    *&v361[4] = 1026;
    *&v361[6] = v39;
    _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_INFO, "CLTSP,hasSubstantialGPSData,1,duration,%{public}.1lf,numberOfGPSLocations,%{public}d,threshold,%{public}d", buf, 0x18u);
  }

  v41 = sub_19B87DD40();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v352 = 134349568;
    v353 = v38;
    v354 = 1026;
    v355 = v15;
    v356 = 1026;
    v357 = v39;
    v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,hasSubstantialGPSData,1,duration,%{public}.1lf,numberOfGPSLocations,%{public}d,threshold,%{public}d", &v352, 24);
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::hasSubstantialGPSData(NSArray<CLTripSegmentLocation *> * _Nonnull, double)", "CoreLocation: %s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  v43 = objc_alloc(MEMORY[0x1E695DF70]);
  v46 = objc_msgSend_initWithArray_(v43, v44, v8, v45);
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v367, 0, 64);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v48, v367, buf, 16);
  analyticsCopy = analytics;
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    v55 = **&v367[1];
    v56 = -1.0;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (**&v367[1] != v55)
        {
          objc_enumerationMutation(v8);
        }

        v58 = *(*(&v367[0] + 1) + 8 * j);
        if (objc_msgSend_isGPSLocationType(v58, v49, v50, v51))
        {
          v59 = objc_msgSend_timestamp(v58, v49, v50, v51);
          objc_msgSend_timeIntervalSinceReferenceDate(v59, v60, v61, v62);
          v64 = v63;
          if (vabdd_f64(v63, v56) < 3.0)
          {
            ++v53;
          }

          else
          {
            v53 = 1;
          }

          if (v53 >= 11)
          {
            objc_msgSend_addObject_(v47, v49, v58, v51);
            if (v54 <= 119)
            {
              ++v54;
            }

            else
            {
              v53 = 0;
              v54 = 0;
            }
          }

          v56 = v64;
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v49, v367, buf, 16);
    }

    while (v52);
  }

  objc_msgSend_removeObjectsInArray_(v46, v49, v47, v51);
  analytics = analyticsCopy;
LABEL_53:
  v71 = objc_msgSend_count(v46, v65, v66, v67);
  *(v338 + 6) = v71;
  v75 = objc_msgSend_tripLocations(analytics, v72, v73, v74);
  v79 = objc_msgSend_count(v75, v76, v77, v78);
  if (v79 == objc_msgSend_count(v46, v80, v81, v82))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v83 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v87 = objc_msgSend_tripSegmentID(analytics, v84, v85, v86);
      v91 = objc_msgSend_UUIDString(v87, v88, v89, v90);
      v95 = objc_msgSend_UTF8String(v91, v92, v93, v94);
      v99 = objc_msgSend_modeOfTransport(analytics, v96, v97, v98);
      v103 = objc_msgSend_tripLocations(analytics, v100, v101, v102);
      v107 = objc_msgSend_count(v103, v104, v105, v106);
      *buf = 136446722;
      v359 = v95;
      v360 = 1026;
      *v361 = v99;
      *&v361[4] = 1026;
      *&v361[6] = v107;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,data not created,ID,%{public}s,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x18u);
    }

    v108 = sub_19B87DD40();
    if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v115 = qword_1EAFE46E8;
      v116 = objc_msgSend_tripSegmentID(analytics, v112, v113, v114);
      v120 = objc_msgSend_UUIDString(v116, v117, v118, v119);
      v124 = objc_msgSend_UTF8String(v120, v121, v122, v123);
      v128 = objc_msgSend_modeOfTransport(analytics, v125, v126, v127);
      v132 = objc_msgSend_tripLocations(analytics, v129, v130, v131);
      v136 = objc_msgSend_count(v132, v133, v134, v135);
      LODWORD(v367[0]) = 136446722;
      *(v367 + 4) = v124;
      WORD6(v367[0]) = 1026;
      *(v367 + 14) = v128;
      WORD1(v367[1]) = 1026;
      DWORD1(v367[1]) = v136;
      v137 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v115, 0, "CLTSP,simulatedSparse,data not created,ID,%{public}s,modeOfTransport,%{public}d,locations,%{public}d", v367, 24);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v137);
      if (v137 != buf)
      {
        free(v137);
      }
    }

    if (objc_msgSend_isFinalPart(analytics, v109, v110, v111))
    {
      v138 = sub_19BA3C324();
      sub_19BA3D1E8(v138);
    }
  }

  else
  {
    if (*(sub_19BA3C324() + 608) < 1)
    {
      v152 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v139, v140, v141);
      analyticsCopy3 = analytics;
    }

    else
    {
      analyticsCopy3 = analytics;
      v143 = MEMORY[0x1E696AEC0];
      v144 = sub_19BA3C324();
      v147 = (v144 + 40);
      if (*(v144 + 63) < 0)
      {
        v147 = *v147;
      }

      v148 = objc_msgSend_stringWithFormat_(v143, v145, @"%s", v146, v147);
      v149 = objc_alloc(MEMORY[0x1E696AFB0]);
      v152 = objc_msgSend_initWithUUIDString_(v149, v150, v148, v151);
    }

    v153 = [CLTripSegmentInputData alloc];
    isFinalPart = objc_msgSend_isFinalPart(analyticsCopy3, v154, v155, v156);
    v161 = objc_msgSend_modeOfTransport(analyticsCopy3, v158, v159, v160);
    started = objc_msgSend_startTripLocation(analyticsCopy3, v162, v163, v164);
    v169 = objc_msgSend_stopTripLocation(analyticsCopy3, v166, v167, v168);
    v173 = objc_msgSend_inertialData(analyticsCopy3, v170, v171, v172);
    isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialData = objc_msgSend_initWithTripSegmentID_isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialData_(v153, v174, v152, isFinalPart, v161, v46, started, v169, v173);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v176 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v180 = objc_msgSend_tripSegmentID(analyticsCopy3, v177, v178, v179);
      v184 = objc_msgSend_UUIDString(v180, v181, v182, v183);
      v188 = objc_msgSend_UTF8String(v184, v185, v186, v187);
      v192 = objc_msgSend_tripSegmentID(isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialData, v189, v190, v191);
      v196 = objc_msgSend_UUIDString(v192, v193, v194, v195);
      v200 = objc_msgSend_UTF8String(v196, v197, v198, v199);
      v204 = objc_msgSend_modeOfTransport(analyticsCopy3, v201, v202, v203);
      v208 = objc_msgSend_tripLocations(analyticsCopy3, v205, v206, v207);
      v212 = objc_msgSend_count(v208, v209, v210, v211);
      v216 = objc_msgSend_count(v46, v213, v214, v215);
      *buf = 136447234;
      v359 = v188;
      v360 = 2082;
      *v361 = v200;
      *&v361[8] = 1026;
      v362 = v204;
      v363 = 1026;
      v364 = v212;
      v365 = 1026;
      v366 = v216;
      _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,data created,origID,%{public}s,newID,%{public}s,modeOfTransport,%{public}d,origLocations,%{public}d,sparseLocations,%{public}d", buf, 0x28u);
    }

    v217 = sub_19B87DD40();
    v218 = analyticsCopy3;
    if (*(v217 + 160) > 1 || *(v217 + 164) > 1 || *(v217 + 168) > 1 || *(v217 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v222 = qword_1EAFE46E8;
      v223 = analyticsCopy3;
      v224 = objc_msgSend_tripSegmentID(analyticsCopy3, v219, v220, v221);
      v228 = objc_msgSend_UUIDString(v224, v225, v226, v227);
      v232 = objc_msgSend_UTF8String(v228, v229, v230, v231);
      v236 = objc_msgSend_tripSegmentID(isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialData, v233, v234, v235);
      v240 = objc_msgSend_UUIDString(v236, v237, v238, v239);
      v244 = objc_msgSend_UTF8String(v240, v241, v242, v243);
      v248 = objc_msgSend_modeOfTransport(v223, v245, v246, v247);
      v252 = objc_msgSend_tripLocations(v223, v249, v250, v251);
      v256 = objc_msgSend_count(v252, v253, v254, v255);
      v260 = objc_msgSend_count(v46, v257, v258, v259);
      LODWORD(v367[0]) = 136447234;
      *(v367 + 4) = v232;
      WORD6(v367[0]) = 2082;
      *(v367 + 14) = v244;
      WORD3(v367[1]) = 1026;
      DWORD2(v367[1]) = v248;
      WORD6(v367[1]) = 1026;
      *(&v367[1] + 14) = v256;
      WORD1(v367[2]) = 1026;
      DWORD1(v367[2]) = v260;
      v261 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v222, 0, "CLTSP,simulatedSparse,data created,origID,%{public}s,newID,%{public}s,modeOfTransport,%{public}d,origLocations,%{public}d,sparseLocations,%{public}d", v367, 40);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v261);
      v218 = v223;
      if (v261 != buf)
      {
        free(v261);
      }
    }

    v262 = objc_alloc_init(CLTripSegmentProcessorOptions);
    objc_msgSend_setSimulatedSparseProcessing_(v262, v263, 1, v264);
    if (objc_msgSend_processTripSegmentData_withOptions_outputHandler_(self, v265, isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialData, v262, v336))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v266 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v270 = objc_msgSend_tripSegmentID(v218, v267, v268, v269);
        v274 = objc_msgSend_UUIDString(v270, v271, v272, v273);
        v278 = objc_msgSend_UTF8String(v274, v275, v276, v277);
        v279 = v342;
        v280 = 0.0;
        if (v342[6] >= 0.0)
        {
          v281 = mach_continuous_time();
          v280 = vabdd_f64(sub_19B994BF4(v281), v279[6]) * 1000.0;
        }

        *buf = 136446466;
        v359 = v278;
        v360 = 2050;
        *v361 = v280;
        _os_log_impl(&dword_19B873000, v266, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,failedtripID,%{public}s,processingTime,%{public}.2lf", buf, 0x16u);
      }

      v282 = sub_19B87DD40();
      if (*(v282 + 160) > 1 || *(v282 + 164) > 1 || *(v282 + 168) > 1 || *(v282 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v286 = qword_1EAFE46E8;
        v287 = objc_msgSend_tripSegmentID(v218, v283, v284, v285);
        v291 = objc_msgSend_UUIDString(v287, v288, v289, v290);
        v295 = objc_msgSend_UTF8String(v291, v292, v293, v294);
        v296 = v342;
        v297 = 0.0;
        if (v342[6] >= 0.0)
        {
          v298 = mach_continuous_time();
          v297 = vabdd_f64(sub_19B994BF4(v298), v296[6]) * 1000.0;
        }

        LODWORD(v367[0]) = 136446466;
        *(v367 + 4) = v295;
        WORD6(v367[0]) = 2050;
        *(v367 + 14) = v297;
        v299 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v286, 0, "CLTSP,simulatedSparse,failedtripID,%{public}s,processingTime,%{public}.2lf", v367, 22);
        sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v299);
        if (v299 != buf)
        {
          free(v299);
        }
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v300 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v304 = objc_msgSend_tripSegmentID(v218, v301, v302, v303);
      v308 = objc_msgSend_UUIDString(v304, v305, v306, v307);
      v312 = objc_msgSend_UTF8String(v308, v309, v310, v311);
      v313 = v342;
      v314 = 0.0;
      if (v342[6] >= 0.0)
      {
        v315 = mach_continuous_time();
        v314 = vabdd_f64(sub_19B994BF4(v315), v313[6]) * 1000.0;
      }

      *buf = 136446466;
      v359 = v312;
      v360 = 2050;
      *v361 = v314;
      _os_log_impl(&dword_19B873000, v300, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,success,tripID,%{public}s,processingTime,%{public}.2lf", buf, 0x16u);
    }

    v316 = sub_19B87DD40();
    if (*(v316 + 160) > 1 || *(v316 + 164) > 1 || *(v316 + 168) > 1 || *(v316 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v320 = qword_1EAFE46E8;
      v321 = objc_msgSend_tripSegmentID(v218, v317, v318, v319);
      v325 = objc_msgSend_UUIDString(v321, v322, v323, v324);
      v329 = objc_msgSend_UTF8String(v325, v326, v327, v328);
      v330 = v342;
      v331 = 0.0;
      if (v342[6] >= 0.0)
      {
        v332 = mach_continuous_time();
        v331 = vabdd_f64(sub_19B994BF4(v332), v330[6]) * 1000.0;
      }

      LODWORD(v367[0]) = 136446466;
      *(v367 + 4) = v329;
      WORD6(v367[0]) = 2050;
      *(v367 + 14) = v331;
      v333 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v320, 0, "CLTSP,simulatedSparse,success,tripID,%{public}s,processingTime,%{public}.2lf", v367, 22);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v333);
      if (v333 != buf)
      {
        free(v333);
      }
    }
  }

  _Block_object_dispose(&v337, 8);
  _Block_object_dispose(&v341, 8);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 1) = xmmword_19BA89490;
  *(self + 6) = 0x3FF0000000000000;
  *(self + 28) = 1;
  *(self + 8) = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
  return self;
}

@end