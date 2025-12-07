@interface CMSwimTrackerInternal
- (CMSwimTrackerInternal)init;
- (void)_handleUpdates:(id)updates;
- (void)_querySWOLFSummaryWithSessionID:(id)d handler:(id)handler;
- (void)_querySwimUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_resetOffsets;
- (void)_startUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_stopUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSwimTrackerInternal

- (CMSwimTrackerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSwimTrackerInternal;
  v2 = [(CMSwimTrackerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSwimTracker", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMSwimTrackerInternal;
  [(CMSwimTrackerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;
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
  block[2] = sub_19B776E90;
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
  block[2] = sub_19B777500;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)_querySwimUpdatesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B777828;
  block[3] = &unk_1E7532C08;
  block[4] = record;
  block[5] = self;
  block[6] = handler;
  dispatch_async(fInternalQueue, block);
}

- (void)_querySWOLFSummaryWithSessionID:(id)d handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2978 != -1)
  {
    dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
  }

  v7 = qword_1EAFE2980;
  if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = objc_msgSend_UUIDString(d, v8, v9);
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "SWOLF query for session: %@", buf, 0xCu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v13 = qword_1EAFE2980;
    v18 = 138412290;
    v19 = objc_msgSend_UUIDString(d, v11, v12);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 0, "SWOLF query for session: %@", &v18, 12);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _querySWOLFSummaryWithSessionID:handler:]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B778154;
  block[3] = &unk_1E7532C80;
  block[5] = self;
  block[6] = handler;
  block[4] = d;
  dispatch_async(fInternalQueue, block);
}

- (void)_handleUpdates:(id)updates
{
  v169[202] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(self->fHandler, a2, updates);
  v7 = objc_msgSend_objectForKeyedSubscript_(updates, v6, @"CMErrorMessage");
  v9 = objc_msgSend_objectForKeyedSubscript_(updates, v8, @"CMSwimKeyDataArray");
  if (v7)
  {
    self->fStartedUpdates = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77967C;
    block[3] = &unk_1E7532B90;
    block[4] = v7;
    block[5] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = block;
LABEL_3:
    dispatch_async(v12, v13);
    return;
  }

  v14 = v9;
  if (!v9)
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v133 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_19B41C000, v133, OS_LOG_TYPE_FAULT, "Unable to parse update message, %p", buf, 0xCu);
    }

    v134 = sub_19B420058();
    if ((*(v134 + 160) & 0x80000000) == 0 || (*(v134 + 164) & 0x80000000) == 0 || (*(v134 + 168) & 0x80000000) == 0 || *(v134 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v158 = 134217984;
      selfCopy4 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2980, 17, "Unable to parse update message, %p", &v158);
      v136 = v135;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v135);
      if (v136 != buf)
      {
        free(v136);
      }
    }

    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = sub_19B7796F4;
    v155[3] = &unk_1E7532B40;
    v155[4] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = v155;
    goto LABEL_3;
  }

  if (objc_msgSend_count(v9, v10, v11))
  {
    if (self->fDistanceOffset == 1.79769313e308)
    {
      Object = objc_msgSend_firstObject(v14, v15, v16);
      objc_msgSend_distance(Object, v18, v19);
      self->fDistanceOffset = v20;
      self->fStrokeCountOffset = objc_msgSend_strokeCount(Object, v21, v22);
      self->fLapCountOffset = objc_msgSend_lapCount(Object, v23, v24);
      self->fSegmentCountOffset = objc_msgSend_segment(Object, v25, v26);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v27 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
      {
        v28 = getpid();
        *buf = 138413058;
        selfCopy3 = Object;
        v166 = 2112;
        ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v29, v28);
        v168 = 1024;
        LODWORD(v169[0]) = getpid();
        WORD2(v169[0]) = 2048;
        *(v169 + 6) = self;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "Setting offset record for live updates, %@, %@, %d, %p", buf, 0x26u);
      }

      v30 = sub_19B420058();
      if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v31 = qword_1EAFE2980;
        v32 = getpid();
        v158 = 138413058;
        selfCopy4 = Object;
        v160 = 2112;
        v161 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v33, v32);
        v162 = 1024;
        LODWORD(v163[0]) = getpid();
        WORD2(v163[0]) = 2048;
        *(v163 + 6) = self;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v31, 0, "Setting offset record for live updates, %@, %@, %d, %p", &v158, 38);
        v35 = v34;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v34);
        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v142 = v5;
    v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v36, &v151, v157, 16);
    if (v37)
    {
      v40 = v37;
      v149 = *v152;
      v143 = v14;
      do
      {
        v41 = 0;
        v145 = v40;
        do
        {
          if (*v152 != v149)
          {
            objc_enumerationMutation(v14);
          }

          v42 = *(*(&v151 + 1) + 8 * v41);
          objc_msgSend_distance(v42, v38, v39);
          v46 = v45 - self->fDistanceOffset;
          if (v46 >= -2.22044605e-16)
          {
            if (v46 >= 2.22044605e-16)
            {
              v58 = objc_msgSend_endDate(v42, v43, v44);
              objc_msgSend_timeIntervalSinceReferenceDate(v58, v59, v60);
              v62 = v61;
              started = objc_msgSend_startDate(v42, v63, v64);
              objc_msgSend_timeIntervalSinceReferenceDate(started, v66, v67);
              self->fActiveTime = self->fActiveTime + v62 - v68;
              v148 = [CMSwimData alloc];
              v147 = objc_msgSend_recordId(v42, v69, v70);
              v146 = objc_msgSend_sourceId(v42, v71, v72);
              v75 = objc_msgSend_sessionId(v42, v73, v74);
              v78 = objc_msgSend_startDate(v42, v76, v77);
              v81 = objc_msgSend_endDate(v42, v79, v80);
              v84 = objc_msgSend_strokeCount(v42, v82, v83);
              fStrokeCountOffset = self->fStrokeCountOffset;
              objc_msgSend_distance(v42, v86, v87);
              v89 = v88;
              fDistanceOffset = self->fDistanceOffset;
              v93 = objc_msgSend_distanceTimestamp(v42, v91, v92);
              objc_msgSend_distance(v42, v94, v95);
              v98 = 0.0;
              if (v99 > self->fDistanceOffset)
              {
                fActiveTime = self->fActiveTime;
                objc_msgSend_distance(v42, v96, v97);
                v98 = fActiveTime / (v101 - self->fDistanceOffset);
              }

              v102 = v84 - fStrokeCountOffset;
              v103 = objc_msgSend_lapCount(v42, v96, v97) - self->fLapCountOffset;
              v106 = objc_msgSend_strokeType(v42, v104, v105);
              v109 = objc_msgSend_segment(v42, v107, v108);
              v111 = objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_strokeCount_distance_distanceTimestamp_avgPace_lapCount_strokeType_segment_SWOLF_segmentSWOLF_(v148, v110, v147, v146, v75, v78, v81, v102, v89 - fDistanceOffset, v98, 0.0, 0.0, v93, v103, v106, v109 - self->fSegmentCountOffset);
              objc_msgSend_addObject_(v144, v112, v111);

              v14 = v143;
              v40 = v145;
            }

            else
            {
              if (qword_1EAFE2978 != -1)
              {
                dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
              }

              v53 = qword_1EAFE2980;
              if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
              {
                v54 = self->fDistanceOffset;
                *buf = 134218498;
                selfCopy3 = *&v54;
                v166 = 2112;
                ExecutablePathFromPid = v42;
                v168 = 2048;
                v169[0] = self;
                _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEFAULT, "(Approximately) Zero distance from offset, %f, %@, %p", buf, 0x20u);
              }

              v55 = sub_19B420058();
              if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2978 != -1)
                {
                  dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
                }

                v56 = self->fDistanceOffset;
                v158 = 134218498;
                selfCopy4 = *&v56;
                v160 = 2112;
                v161 = v42;
                v162 = 2048;
                v163[0] = self;
                LODWORD(v141) = 32;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2980, 0, "(Approximately) Zero distance from offset, %f, %@, %p", &v158, v141);
                v52 = v57;
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v57);
                goto LABEL_48;
              }
            }
          }

          else
          {
            if (qword_1EAFE2978 != -1)
            {
              dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
            }

            v47 = qword_1EAFE2980;
            if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_ERROR))
            {
              v48 = self->fDistanceOffset;
              *buf = 134218498;
              selfCopy3 = *&v48;
              v166 = 2112;
              ExecutablePathFromPid = v42;
              v168 = 2048;
              v169[0] = self;
              _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_ERROR, "Negative distance from offset, %f, %@, %p", buf, 0x20u);
            }

            v49 = sub_19B420058();
            if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2978 != -1)
              {
                dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
              }

              v50 = self->fDistanceOffset;
              v158 = 134218498;
              selfCopy4 = *&v50;
              v160 = 2112;
              v161 = v42;
              v162 = 2048;
              v163[0] = self;
              LODWORD(v141) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2980, 16, "Negative distance from offset, %f, %@, %p", &v158, v141);
              v52 = v51;
              sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v51);
LABEL_48:
              if (v52 != buf)
              {
                free(v52);
              }
            }
          }

          ++v41;
        }

        while (v40 != v41);
        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v38, &v151, v157, 16);
        v40 = v113;
      }

      while (v113);
    }

    if (objc_msgSend_count(v144, v38, v39))
    {
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = sub_19B779758;
      v150[3] = &unk_1E7532B90;
      v150[4] = v144;
      v150[5] = v142;
      dispatch_async(MEMORY[0x1E69E96A0], v150);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v114 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
      {
        v117 = objc_msgSend_lastObject(v144, v115, v116);
        v118 = getpid();
        v120 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v119, v118);
        v121 = getpid();
        *buf = 138413058;
        selfCopy3 = v117;
        v166 = 2112;
        ExecutablePathFromPid = v120;
        v168 = 1024;
        LODWORD(v169[0]) = v121;
        WORD2(v169[0]) = 2048;
        *(v169 + 6) = self;
        _os_log_impl(&dword_19B41C000, v114, OS_LOG_TYPE_DEFAULT, "%@, %@, %d, %p", buf, 0x26u);
      }

      v122 = sub_19B420058();
      if (*(v122 + 160) > 1 || *(v122 + 164) > 1 || *(v122 + 168) > 1 || *(v122 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v125 = qword_1EAFE2980;
        v126 = objc_msgSend_lastObject(v144, v123, v124);
        v127 = getpid();
        v129 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v128, v127);
        v130 = getpid();
        v158 = 138413058;
        selfCopy4 = v126;
        v160 = 2112;
        v161 = v129;
        v162 = 1024;
        LODWORD(v163[0]) = v130;
        WORD2(v163[0]) = 2048;
        *(v163 + 6) = self;
        LODWORD(v141) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v125, 0, "%@, %@, %d, %p", &v158, v141);
        v132 = v131;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v131);
        if (v132 != buf)
        {
          free(v132);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v137 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_DEFAULT, "#Warning Empty swim update, %p", buf, 0xCu);
    }

    v138 = sub_19B420058();
    if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v158 = 134217984;
      selfCopy4 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2980, 0, "#Warning Empty swim update, %p", &v158);
      v140 = v139;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v139);
      if (v140 != buf)
      {
        free(v140);
      }
    }
  }
}

- (void)_resetOffsets
{
  self->fStrokeCountOffset = 0;
  self->fDistanceOffset = 1.79769313e308;
  self->fActiveTime = 0.0;
  self->fSegmentCountOffset = 0;
  self->fLapCountOffset = 0;
}

@end