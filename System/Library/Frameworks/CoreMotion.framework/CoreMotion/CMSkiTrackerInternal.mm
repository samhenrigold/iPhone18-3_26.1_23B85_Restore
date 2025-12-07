@interface CMSkiTrackerInternal
- (CMSkiTrackerInternal)init;
- (void)_handleUpdates:(id)updates;
- (void)_queryUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_startLiveUpdatesWithHandler:(id)handler;
- (void)_startUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_stopLiveUpdates;
- (void)_stopUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSkiTrackerInternal

- (CMSkiTrackerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSkiTrackerInternal;
  v2 = [(CMSkiTrackerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSkiTracker", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMSkiTrackerInternal;
  [(CMSkiTrackerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;

  self->fLiveUpdateHandler = 0;
  self->fMostRecentRecord = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startUpdatesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7319D8;
  block[3] = &unk_1E7532C80;
  block[5] = record;
  block[6] = handler;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7321DC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)_queryUpdatesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7324D0;
  block[3] = &unk_1E7532C08;
  block[4] = record;
  block[5] = self;
  block[6] = handler;
  dispatch_async(fInternalQueue, block);
}

- (void)_handleUpdates:(id)updates
{
  v139 = *MEMORY[0x1E69E9840];
  v5 = COERCE_DOUBLE(objc_msgSend_copy(self->fHandler, a2, updates));
  v7 = objc_msgSend_objectForKeyedSubscript_(updates, v6, @"CMErrorMessage");
  v9 = objc_msgSend_objectForKeyedSubscript_(updates, v8, @"CMSkiKeyDataArray");
  if (v7)
  {
    self->fStartedUpdates = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B7332C0;
    block[3] = &unk_1E7532B90;
    block[4] = v7;
    *&block[5] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = block;
LABEL_3:
    dispatch_async(v12, v13);
    return;
  }

  v14 = v9;
  if (!v9)
  {
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v105 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v105, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageSkiDataUpdate message.", buf, 2u);
    }

    v106 = sub_19B420058();
    if ((*(v106 + 160) & 0x80000000) == 0 || (*(v106 + 164) & 0x80000000) == 0 || (*(v106 + 168) & 0x80000000) == 0 || *(v106 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      LOWORD(v122) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 17, "Unable to parse kCLConnectionMessageSkiDataUpdate message.", &v122, 2);
      v108 = v107;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v107);
      if (v108 != buf)
      {
        free(v108);
      }
    }

    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = sub_19B733350;
    v115[3] = &unk_1E7532B40;
    *&v115[4] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = v115;
    goto LABEL_3;
  }

  if (objc_msgSend_count(v9, v10, v11))
  {
    v110 = v5;
    if (self->fRunDistanceOffset == -1.0)
    {
      Object = objc_msgSend_firstObject(v14, v15, v16);
      objc_msgSend_runDistance(Object, v18, v19);
      self->fRunDistanceOffset = v20;
      objc_msgSend_runElevationDescent(Object, v21, v22);
      self->fRunElevationDescendedOffset = v23;
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v25, &v117, v138, 16);
    if (v113)
    {
      v28 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
      v29 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
      v112 = *v118;
      obj = v14;
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v118 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v117 + 1) + 8 * i);
          if (*(v28 + 242) != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v32 = *(v29 + 249);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            fRunDistanceOffset = self->fRunDistanceOffset;
            objc_msgSend_runDistance(v31, v33, v34);
            v37 = v36;
            fRunElevationDescendedOffset = self->fRunElevationDescendedOffset;
            objc_msgSend_runElevationDescent(v31, v39, v40);
            *buf = 134218752;
            v131 = fRunDistanceOffset;
            v132 = 2048;
            v133 = v37;
            v134 = 2048;
            v135 = fRunElevationDescendedOffset;
            v136 = 2048;
            v137 = v41;
            _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEFAULT, "Delivering update with distance offset %f for record distance %f, elevation offset %f for record elevation %f", buf, 0x2Au);
          }

          v42 = sub_19B420058();
          if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (*(v28 + 242) != -1)
            {
              dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
            }

            v47 = *(v29 + 249);
            v48 = self->fRunDistanceOffset;
            objc_msgSend_runDistance(v31, v45, v46);
            v50 = v49;
            v51 = self->fRunElevationDescendedOffset;
            objc_msgSend_runElevationDescent(v31, v52, v53);
            v122 = 134218752;
            v123 = v48;
            v124 = 2048;
            v125 = v50;
            v126 = 2048;
            v127 = v51;
            v128 = 2048;
            v129 = v54;
            LODWORD(v109) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v47, 0, "Delivering update with distance offset %f for record distance %f, elevation offset %f for record elevation %f", COERCE_DOUBLE(&v122), v109, v110, *&obj);
            v56 = v55;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v55);
            if (v56 != buf)
            {
              free(v56);
            }
          }

          objc_msgSend_runDistance(v31, v43, v44);
          if (v59 <= self->fRunDistanceOffset)
          {
            objc_msgSend_runElevationDescent(v31, v57, v58);
            if (v61 <= self->fRunElevationDescendedOffset)
            {
              continue;
            }
          }

          v114 = [CMSkiData alloc];
          v64 = v24;
          v65 = objc_msgSend_recordId(v31, v62, v63);
          v68 = v29;
          v69 = objc_msgSend_sourceId(v31, v66, v67);
          v72 = objc_msgSend_sessionId(v31, v70, v71);
          started = objc_msgSend_startDate(v31, v73, v74);
          v78 = objc_msgSend_endDate(v31, v76, v77);
          objc_msgSend_runDistance(v31, v79, v80);
          v82 = v81 - self->fRunDistanceOffset;
          objc_msgSend_runAvgSpeed(v31, v83, v84);
          v86 = v85;
          objc_msgSend_runMaxSpeed(v31, v87, v88);
          v90 = v89;
          objc_msgSend_runSlope(v31, v91, v92);
          v94 = v93;
          objc_msgSend_runElevationDescent(v31, v95, v96);
          v98 = v65;
          v24 = v64;
          v28 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
          v99 = v69;
          v29 = v68;
          v101 = objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_runDistance_runAvgSpeed_runMaxSpeed_runSlope_runElevationDescent_(v114, v100, v98, v99, v72, started, v78, v82, v86, v90, v94, v97 - self->fRunElevationDescendedOffset);
          objc_msgSend_addObject_(v24, v102, v101);
        }

        v14 = obj;
        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v117, v138, 16);
      }

      while (v113);
    }

    if (objc_msgSend_count(v24, v26, v27))
    {
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = sub_19B733338;
      v116[3] = &unk_1E7532B90;
      v116[4] = v24;
      *&v116[5] = v110;
      dispatch_async(MEMORY[0x1E69E96A0], v116);
    }

    self->fMostRecentRecord = objc_msgSend_lastObject(v14, v103, v104);
  }
}

- (void)_startLiveUpdatesWithHandler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B733428;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(fInternalQueue, v4);
}

- (void)_stopLiveUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v3 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[live data] stopping updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 0, "[live data] stopping updates", v9, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _stopLiveUpdates]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B734058;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

@end