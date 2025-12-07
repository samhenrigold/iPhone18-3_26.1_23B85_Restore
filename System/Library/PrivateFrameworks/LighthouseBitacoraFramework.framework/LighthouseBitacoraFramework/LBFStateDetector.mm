@interface LBFStateDetector
- (LBFStateDetector)init;
- (LBFStateDetector)initWithState:(int64_t)state;
- (id)processDprivacydEvent:(id)event;
- (id)processEventsStartingFromState:(int64_t)state bucketStartTime:(id)time events:(id)events;
- (id)processLighthouseEvent:(id)event;
- (id)processMLRuntimedEvent:(id)event;
- (id)processTrialdEvent:(id)event;
- (id)validateTransition:(id)transition;
@end

@implementation LBFStateDetector

- (LBFStateDetector)init
{
  v3.receiver = self;
  v3.super_class = LBFStateDetector;
  result = [(LBFStateDetector *)&v3 init];
  if (result)
  {
    result->_currentState = 0;
  }

  return result;
}

- (LBFStateDetector)initWithState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = LBFStateDetector;
  result = [(LBFStateDetector *)&v5 init];
  if (result)
  {
    result->_currentState = state;
  }

  return result;
}

- (id)processEventsStartingFromState:(int64_t)state bucketStartTime:(id)time events:(id)events
{
  v109 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  eventsCopy = events;
  self->_currentState = state;
  objc_storeStrong(&self->_currentTime, time);
  if (!objc_msgSend_count(eventsCopy, v11, v13, v12))
  {
    sub_255F0AAB8();
  }

  v17 = objc_msgSend_firstObject(eventsCopy, v14, v16, v15);
  objc_opt_class();
  v100 = v17;
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_timestamp(v17, v18, v20, v19);
    if (objc_msgSend_compare_(v21, v22, v23, self->_currentTime) == -1)
    {
      objc_storeStrong(&self->_currentTime, v21);
      v24 = LBFLogContextStateDetector;
      if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AA80(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_timestamp(v17, v32, v34, v33);
    if (objc_msgSend_compare_(v21, v35, v36, self->_currentTime) == -1)
    {
      objc_storeStrong(&self->_currentTime, v21);
      v37 = LBFLogContextStateDetector;
      if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AA48(v37, v38, v39, v40, v41, v42, v43, v44);
      }
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_timestamp(v17, v45, v47, v46);
    if (objc_msgSend_compare_(v21, v48, v49, self->_currentTime) != -1)
    {
      goto LABEL_19;
    }

    objc_storeStrong(&self->_currentTime, v21);
    v50 = LBFLogContextStateDetector;
    if (!os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v51 = "found earlier triald event";
LABEL_18:
    _os_log_impl(&dword_255ED5000, v50, OS_LOG_TYPE_INFO, v51, buf, 2u);
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_timestamp(v17, v52, v54, v53);
    if (objc_msgSend_compare_(v21, v55, v56, self->_currentTime) != -1)
    {
      goto LABEL_19;
    }

    objc_storeStrong(&self->_currentTime, v21);
    v50 = LBFLogContextStateDetector;
    if (!os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v51 = "found earlier dprivacyd event";
    goto LABEL_18;
  }

  objc_storeStrong(&self->_currentTime, time);
  v92 = LBFLogContextStateDetector;
  if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AA10(v92, v93, v94, v95, v96, v97, v98, v99);
  }

LABEL_20:
  v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v57 = eventsCopy;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, v59, &v102, v108, 16);
  if (v60)
  {
    v61 = v60;
    v62 = *v103;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v103 != v62)
        {
          objc_enumerationMutation(v57);
        }

        v64 = *(*(&v102 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = objc_msgSend_processMLRuntimedEvent_(self, v65, v66, v64);
        }

        else
        {
          v67 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v70 = objc_msgSend_processLighthouseEvent_(self, v68, v69, v64);

          v67 = v70;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v73 = objc_msgSend_processTrialdEvent_(self, v71, v72, v64);

          v67 = v73;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v76 = objc_msgSend_validateTransition_(self, v74, v75, v67);
          objc_msgSend_addObject_(v101, v77, v78, v76);
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v79, v80, &v102, v108, 16);
    }

    while (v61);
  }

  v83 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v81, v82, self->_currentState);
  v107[0] = v83;
  v87 = objc_msgSend_copy(v101, v84, v86, v85);
  v107[1] = v87;
  v90 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, v89, v107, 2);

  return v90;
}

- (id)processMLRuntimedEvent:(id)event
{
  eventCopy = event;
  v8 = objc_msgSend_timestamp(eventCopy, v5, v7, v6);
  objc_msgSend_timeIntervalSinceDate_(v8, v9, v10, self->_currentTime);
  v12 = v11;

  currentState = self->_currentState;
  v17 = objc_msgSend_taskFetched(eventCopy, v14, v16, v15);

  if (v17)
  {
    v21 = objc_msgSend_taskFetched(eventCopy, v18, v20, v19);
    v25 = objc_msgSend_succeeded(v21, v22, v24, v23);

    v29 = v25 == 0;
    v30 = 12;
    v31 = 4;
  }

  else
  {
    v32 = objc_msgSend_taskScheduled(eventCopy, v18, v20, v19);

    if (v32)
    {
      v36 = objc_msgSend_taskScheduled(eventCopy, v33, v35, v34);
      v40 = objc_msgSend_succeeded(v36, v37, v39, v38);

      v29 = v40 == 0;
      v30 = 13;
      v31 = 5;
    }

    else
    {
      v41 = objc_msgSend_taskCompleted(eventCopy, v33, v35, v34);

      if (!v41)
      {
        v47 = 8;
        goto LABEL_10;
      }

      v42 = objc_msgSend_taskCompleted(eventCopy, v26, v28, v27);
      v46 = objc_msgSend_succeeded(v42, v43, v45, v44);

      v29 = v46 == 0;
      v30 = 14;
      v31 = 6;
    }
  }

  if (v29)
  {
    v47 = v30;
  }

  else
  {
    v47 = v31;
  }

LABEL_10:
  v48 = objc_msgSend_timestamp(eventCopy, v26, v28, v27);
  currentTime = self->_currentTime;
  self->_currentTime = v48;

  self->_currentState = v47;
  v50 = [LBFBitacoraStateTransition alloc];
  v54 = objc_msgSend_timestamp(eventCopy, v51, v53, v52);
  v55.n128_u64[0] = v12;
  v57 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v50, v56, v55, v47, currentState, v54);

  return v57;
}

- (id)processLighthouseEvent:(id)event
{
  eventCopy = event;
  v8 = objc_msgSend_timestamp(eventCopy, v5, v7, v6);
  objc_msgSend_timeIntervalSinceDate_(v8, v9, v10, self->_currentTime);
  v12 = v11;

  currentState = self->_currentState;
  v17 = objc_msgSend_performTaskStatus(eventCopy, v14, v16, v15);

  if (v17)
  {
    v21 = objc_msgSend_performTaskStatus(eventCopy, v18, v20, v19);
    goto LABEL_5;
  }

  v25 = objc_msgSend_performTrialTaskStatus(eventCopy, v18, v20, v19);

  if (v25)
  {
    v21 = objc_msgSend_performTrialTaskStatus(eventCopy, v26, v28, v27);
LABEL_5:
    v29 = v21;
    v30 = objc_msgSend_succeeded(v21, v22, v24, v23);

    if (v30)
    {
      v34 = 7;
    }

    else
    {
      v34 = 15;
    }

    goto LABEL_8;
  }

  v46 = objc_msgSend_stop(eventCopy, v26, v28, v27);

  if (v46)
  {
    v47 = objc_msgSend_stop(eventCopy, v31, v33, v32);
    v51 = objc_msgSend_succeeded(v47, v48, v50, v49);

    if (v51)
    {
      v34 = 16;
    }

    else
    {
      v34 = 17;
    }
  }

  else
  {
    v34 = 8;
  }

LABEL_8:
  v35 = objc_msgSend_timestamp(eventCopy, v31, v33, v32);
  currentTime = self->_currentTime;
  self->_currentTime = v35;

  self->_currentState = v34;
  v37 = [LBFBitacoraStateTransition alloc];
  v41 = objc_msgSend_timestamp(eventCopy, v38, v40, v39);
  v42.n128_u64[0] = v12;
  v44 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v37, v43, v42, v34, currentState, v41);

  return v44;
}

- (id)processTrialdEvent:(id)event
{
  eventCopy = event;
  v8 = objc_msgSend_timestamp(eventCopy, v5, v7, v6);
  objc_msgSend_timeIntervalSinceDate_(v8, v9, v10, self->_currentTime);
  v12 = v11;

  currentState = self->_currentState;
  if (objc_msgSend_eventType(eventCopy, v14, v16, v15) == 1)
  {
    if (objc_msgSend_eventSucceeded(eventCopy, v17, v19, v18))
    {
      v23 = 1;
    }

    else
    {
      v23 = 9;
    }
  }

  else
  {
    if (objc_msgSend_eventType(eventCopy, v17, v19, v18) == 2)
    {
      v27 = objc_msgSend_eventSucceeded(eventCopy, v24, v26, v25) == 0;
      v28 = 10;
      v29 = 2;
    }

    else
    {
      if (objc_msgSend_eventType(eventCopy, v24, v26, v25) != 3)
      {
        v23 = 8 * (objc_msgSend_eventType(eventCopy, v30, v32, v31) != 0);
        goto LABEL_13;
      }

      v27 = objc_msgSend_eventSucceeded(eventCopy, v30, v32, v31) == 0;
      v28 = 11;
      v29 = 3;
    }

    if (v27)
    {
      v23 = v28;
    }

    else
    {
      v23 = v29;
    }
  }

LABEL_13:
  v33 = objc_msgSend_timestamp(eventCopy, v20, v22, v21);
  currentTime = self->_currentTime;
  self->_currentTime = v33;

  self->_currentState = v23;
  v35 = [LBFBitacoraStateTransition alloc];
  v39 = objc_msgSend_timestamp(eventCopy, v36, v38, v37);
  v40.n128_u64[0] = v12;
  v42 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v35, v41, v40, v23, currentState, v39);

  return v42;
}

- (id)processDprivacydEvent:(id)event
{
  eventCopy = event;
  v8 = objc_msgSend_timestamp(eventCopy, v5, v7, v6);
  objc_msgSend_timeIntervalSinceDate_(v8, v9, v10, self->_currentTime);
  v12 = v11;

  currentState = self->_currentState;
  v17 = objc_msgSend_event(eventCopy, v14, v16, v15);
  v21 = objc_msgSend_phase(v17, v18, v20, v19);

  v25 = 8;
  if (v21 <= 2)
  {
    if (v21 == 1)
    {
      v49 = objc_msgSend_event(eventCopy, v22, v24, v23);
      v53 = objc_msgSend_succeeded(v49, v50, v52, v51);

      v31 = v53 == 0;
      v32 = 26;
      v33 = 21;
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_15;
      }

      v34 = objc_msgSend_event(eventCopy, v22, v24, v23);
      v38 = objc_msgSend_succeeded(v34, v35, v37, v36);

      v31 = v38 == 0;
      v32 = 27;
      v33 = 22;
    }
  }

  else
  {
    switch(v21)
    {
      case 3:
        v39 = objc_msgSend_event(eventCopy, v22, v24, v23);
        v43 = objc_msgSend_succeeded(v39, v40, v42, v41);

        v31 = v43 == 0;
        v32 = 28;
        v33 = 23;
        break;
      case 4:
        v44 = objc_msgSend_event(eventCopy, v22, v24, v23);
        v48 = objc_msgSend_succeeded(v44, v45, v47, v46);

        v31 = v48 == 0;
        v32 = 29;
        v33 = 24;
        break;
      case 5:
        v26 = objc_msgSend_event(eventCopy, v22, v24, v23);
        v30 = objc_msgSend_succeeded(v26, v27, v29, v28);

        v31 = v30 == 0;
        v32 = 30;
        v33 = 25;
        break;
      default:
        goto LABEL_15;
    }
  }

  if (v31)
  {
    v25 = v32;
  }

  else
  {
    v25 = v33;
  }

LABEL_15:
  v54 = objc_msgSend_timestamp(eventCopy, v22, v24, v23);
  currentTime = self->_currentTime;
  self->_currentTime = v54;

  self->_currentState = v25;
  v56 = [LBFBitacoraStateTransition alloc];
  v60 = objc_msgSend_timestamp(eventCopy, v57, v59, v58);
  v61.n128_u64[0] = v12;
  v63 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v56, v62, v61, v25, currentState, v60);

  return v63;
}

- (id)validateTransition:(id)transition
{
  transitionCopy = transition;
  v9 = objc_msgSend_state(transitionCopy, v4, v6, v5) - 2;
  if (v9 <= 0xE && ((0x403Du >> v9) & 1) != 0)
  {
    v11 = *(&off_279813908 + v9);
    v12 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_previousState(transitionCopy, v7, v10, v8);
    v16 = objc_msgSend_numberWithInteger_(v12, v14, v15, v13);
    LOBYTE(v11) = objc_msgSend_containsObject_(v11, v17, v18, v16);

    if ((v11 & 1) == 0)
    {
      v19 = [LBFBitacoraStateTransition alloc];
      v23 = objc_msgSend_previousState(transitionCopy, v20, v22, v21);
      v27 = objc_msgSend_timestamp(transitionCopy, v24, v26, v25);
      objc_msgSend_timedelta(transitionCopy, v28, v30, v29);
      v33 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v19, v31, v32, 8, v23, v27);

      transitionCopy = v33;
    }
  }

  return transitionCopy;
}

@end