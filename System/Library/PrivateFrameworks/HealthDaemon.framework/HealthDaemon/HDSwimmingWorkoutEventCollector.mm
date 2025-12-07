@interface HDSwimmingWorkoutEventCollector
+ (BOOL)isAvailableInCurrentHardware;
- (HDSwimmingWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate;
- (void)_queue_errorOccurred:(void *)occurred;
- (void)_queue_querySwimDataWithCompletion:(uint64_t)completion;
- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion;
- (void)startWithSessionId:(id)id;
- (void)stop;
@end

@implementation HDSwimmingWorkoutEventCollector

+ (BOOL)isAvailableInCurrentHardware
{
  if (_HDIsUnitTesting)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821208B0](self, a2);
  }
}

- (HDSwimmingWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = HDSwimmingWorkoutEventCollector;
  v4 = [(HDWorkoutEventCollector *)&v12 initWithProfile:profile delegate:delegate];
  if (v4)
  {
    v5 = HKCreateSerialDispatchQueue();
    workoutEventQueue = v4->_workoutEventQueue;
    v4->_workoutEventQueue = v5;

    profile = [(HDWorkoutEventCollector *)v4 profile];
    workoutManager = [profile workoutManager];
    newCMSwimTracker = [workoutManager newCMSwimTracker];
    swimTracker = v4->_swimTracker;
    v4->_swimTracker = newCMSwimTracker;
  }

  return v4;
}

- (void)startWithSessionId:(id)id
{
  idCopy = id;
  workoutEventQueue = self->_workoutEventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSwimmingWorkoutEventCollector_startWithSessionId___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_sync(workoutEventQueue, v7);
}

void __54__HDSwimmingWorkoutEventCollector_startWithSessionId___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v2;
      v5 = *&buf[4];
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting swim workout event collector for sessionID %@", buf, 0x16u);
    }

    v13.receiver = v1;
    v13.super_class = HDSwimmingWorkoutEventCollector;
    objc_msgSendSuper2(&v13, sel_startWithSessionId_, v2);
    v6 = objc_alloc(MEMORY[0x277CC1D58]);
    v7 = [v1 sessionId];
    v8 = [v6 initWithSessionId:v7];
    v9 = v1[5];
    v1[5] = v8;

    objc_initWeak(&location, v1);
    v10 = v1[4];
    v11 = v1[5];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __71__HDSwimmingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke;
    v15 = &unk_27861EAC0;
    objc_copyWeak(v16, &location);
    [v10 startUpdatesFromRecord:v11 handler:buf];
    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

- (void)stop
{
  workoutEventQueue = self->_workoutEventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSwimmingWorkoutEventCollector_stop__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(workoutEventQueue, block);
}

void *__39__HDSwimmingWorkoutEventCollector_stop__block_invoke(void *result)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = result[4];
  if (v1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = objc_opt_class();
      v5 = v4;
      v6 = [v1 sessionId];
      *v7 = 138543618;
      *&v7[4] = v4;
      *&v7[12] = 2112;
      *&v7[14] = v6;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping swim workout event collector for sessionID: %@", v7, 0x16u);
    }

    [v1[4] stopUpdates];
    *v7 = v1;
    *&v7[8] = HDSwimmingWorkoutEventCollector;
    return objc_msgSendSuper2(v7, sel_stop);
  }

  return result;
}

- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  workoutEventQueue = self->_workoutEventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_async(workoutEventQueue, block);
}

void __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke(id *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] sessionId];

  if (v2)
  {
    v3 = (a1 + 4);
    objc_initWeak(location, a1[4]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke_2;
    aBlock[3] = &unk_27861EA98;
    objc_copyWeak(&v12, location);
    v10 = a1[5];
    v11 = a1[6];
    v4 = _Block_copy(aBlock);
    [(HDSwimmingWorkoutEventCollector *)*v3 _queue_querySwimDataWithCompletion:v4];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v8 = *(location + 4);
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Terminating request for collecting pending swim events as sessionId is nil", location, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      v6[2](v6, 1, 0);
    }
  }
}

void __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(WeakRetained + 7) == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_18;
    }

    v7 = *(WeakRetained + 8);
    v8 = [*(WeakRetained + 6) endDate];
    LOBYTE(v7) = [v7 isEqualToDate:v8];

    if (v7)
    {
      goto LABEL_18;
    }

    v9 = [*(WeakRetained + 6) endDate];
    if (!v9 || [*(WeakRetained + 7) hk_isAfterDate:v9])
    {
      v10 = v5;

      v9 = v10;
    }

    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(WeakRetained + 7) endDate:v9];
    [v11 duration];
    if (v12 == 0.0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
LABEL_17:

LABEL_18:
        v23 = *(WeakRetained + 7);
        *(WeakRetained + 7) = 0;

        goto LABEL_19;
      }

      v14 = v13;
      v15 = objc_opt_class();
      v16 = *(WeakRetained + 7);
      *buf = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v5;
      v17 = v15;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping zero-duration segment created with start date: %{public}@, end date: %{public}@ and fallback end date: %{public}@", buf, 0x2Au);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCDE58]);
      v19 = [WeakRetained sessionId];
      v14 = [v18 initWithEventType:9 sessionId:v19 dateInterval:v11 metadata:0];

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        *buf = 138543618;
        v26 = objc_opt_class();
        v27 = 2114;
        v28 = v14;
        v22 = v26;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collection stopping: Adding workout segment event %{public}@", buf, 0x16u);
      }

      v17 = [WeakRetained delegate];
      [v17 receivedWorkoutEvent:v14];
    }

    goto LABEL_17;
  }

LABEL_19:
  (*(*(a1 + 40) + 16))();
}

- (void)_queue_querySwimDataWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 32);
    v6 = *(completion + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke;
    v7[3] = &unk_27861B2F8;
    v7[4] = completion;
    v8 = v3;
    [v5 querySwimUpdatesFromRecord:v6 handler:v7];
  }
}

void __71__HDSwimmingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (WeakRetained)
  {
    v8 = WeakRetained[9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDSwimmingWorkoutEventCollector__startUpdatesFromRecordHandler_error___block_invoke;
    block[3] = &unk_278613920;
    v11 = v7;
    v12 = WeakRetained;
    dispatch_async(v8, block);
  }
}

void __72__HDSwimmingWorkoutEventCollector__startUpdatesFromRecordHandler_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    [(HDSwimmingWorkoutEventCollector *)v1 _queue_errorOccurred:v2];
  }

  else
  {
    [(HDSwimmingWorkoutEventCollector *)v1 _queue_querySwimDataWithCompletion:?];
  }
}

- (void)_queue_errorOccurred:(void *)occurred
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (occurred)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v9 = v4;
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v3;
      v10 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error getting swim data for lap events: %{public}@", &v11, 0x16u);
    }

    v5 = objc_alloc(MEMORY[0x277CCDE58]);
    sessionId = [occurred sessionId];
    v7 = [v5 initWithSessionId:sessionId error:v3];

    delegate = [occurred delegate];
    [delegate receivedWorkoutEvent:v7];
  }
}

void __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 72);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke_2;
  v12[3] = &unk_278613680;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v132 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v5;
  if (v2)
  {
    if (v5)
    {
      [(HDSwimmingWorkoutEventCollector *)v2 _queue_errorOccurred:v5];
      goto LABEL_58;
    }

    v7 = 0x280D58000uLL;
    v8 = [*(v2 + 40) recordId];
    v9 = MEMORY[0x277CCC330];
    if (!v8)
    {
      v10 = [v4 firstObject];
      v11 = *(v2 + 40);
      *(v2 + 40) = v10;

      _HKInitializeLogging();
      v12 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v99 = v12;
        v100 = objc_opt_class();
        v101 = *(v2 + 40);
        *v118 = 138543618;
        v119 = v100;
        v120 = 2112;
        v121 = v101;
        v102 = v100;
        _os_log_debug_impl(&dword_228986000, v99, OS_LOG_TYPE_DEBUG, "[%{public}@] Setting initial reference swim data to %@", v118, 0x16u);
      }
    }

    v104 = v1;
    if (!*(v2 + 56))
    {
      v13 = [*(v2 + 40) startDate];
      v14 = *(v2 + 56);
      *(v2 + 56) = v13;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v103 = v4;
    obj = v4;
    v113 = [obj countByEnumeratingWithState:&v114 objects:v118 count:16];
    if (v113)
    {
      v112 = *v115;
      v108 = *MEMORY[0x277CCC518];
      v107 = *MEMORY[0x277CCC500];
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v115 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v114 + 1) + 8 * i);
          _HKInitializeLogging();
          v17 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = objc_opt_class();
            *buf = 138543618;
            v125 = v19;
            v126 = 2112;
            v127 = v16;
            v20 = v19;
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing swim data: %@", buf, 0x16u);
          }

          v21 = [v16 sessionId];
          v22 = [v2 sessionId];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            v24 = [v16 lapCount];
            v25 = [*(v2 + *(v7 + 3020)) lapCount];
            if (v24 > v25)
            {
              v109 = v24;
              v26 = v16;
              v27 = MEMORY[0x277CCABB0];
              v28 = [v26 strokeType];
              if (v28 >= 7)
              {
                v36 = [MEMORY[0x277CCA890] currentHandler];
                v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKSwimmingStrokeStyle _HKSwimmingStrokeStyleFromCMSwimStrokeType(CMSwimStrokeType)"];
                [v36 handleFailureInFunction:v37 file:@"HDSwimmingWorkoutEventCollector.m" lineNumber:352 description:@"Invalid swimming stroke style"];

                v29 = 0;
              }

              else
              {
                v29 = qword_22916AB38[v28];
              }

              v38 = [v27 numberWithInteger:v29];
              if ([v26 isSWOLFValid])
              {
                v39 = MEMORY[0x277CCABB0];
                [v26 SWOLF];
                v40 = [v39 numberWithDouble:?];
                v122[0] = v108;
                v122[1] = v107;
                v123[0] = v38;
                v123[1] = v40;
                v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
              }

              else
              {
                v122[0] = v108;
                v123[0] = v38;
                v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:1];
              }

              v41 = [v26 endDate];
              v42 = [v26 startDate];
              v43 = [v41 hk_isBeforeDate:v42];

              if (v43)
              {
                _HKInitializeLogging();
                v44 = *MEMORY[0x277CCC298];
                v45 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT);
                v9 = MEMORY[0x277CCC330];
                if (v45)
                {
                  log = v44;
                  v46 = objc_opt_class();
                  v106 = v46;
                  v47 = [v26 startDate];
                  v48 = [v26 endDate];
                  *buf = 138543874;
                  v125 = v46;
                  v126 = 2114;
                  v127 = v47;
                  v128 = 2114;
                  v129 = v48;
                  _os_log_fault_impl(&dword_228986000, log, OS_LOG_TYPE_FAULT, "[%{public}@] Out-of-order CMSwimData lap events: %{public}@, %{public}@", buf, 0x20u);

                  v9 = MEMORY[0x277CCC330];
                }
              }

              else
              {
                v49 = objc_alloc(MEMORY[0x277CCA970]);
                v50 = [v26 startDate];
                v51 = [v26 endDate];
                v52 = [v49 initWithStartDate:v50 endDate:v51];

                v53 = objc_alloc(MEMORY[0x277CCDE58]);
                v54 = [v2 sessionId];
                v55 = [v53 initWithEventType:5 sessionId:v54 dateInterval:v52 metadata:v111];

                _HKInitializeLogging();
                v56 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v56;
                  v58 = objc_opt_class();
                  *buf = 138543618;
                  v125 = v58;
                  v126 = 2112;
                  v127 = v55;
                  v59 = v58;
                  _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding workout lap event: %@", buf, 0x16u);
                }

                v7 = 0x280D58000uLL;
                if (*(v2 + 80) == 1)
                {
                  v60 = [v26 startDate];
                  v61 = *(v2 + 56);
                  *(v2 + 56) = v60;

                  *(v2 + 80) = 0;
                }

                v62 = [v2 delegate];
                [v62 receivedWorkoutEvent:v55];

                v9 = MEMORY[0x277CCC330];
              }

              v24 = v109;
            }

            v63 = [v16 segment];
            if (v63 <= [*(v2 + *(v7 + 3020)) segment])
            {
              if (v24 > v25)
              {
                goto LABEL_53;
              }

              goto LABEL_54;
            }

            v64 = v16;
            v65 = [*(v2 + 48) endDate];
            v66 = [v65 hk_isBeforeDate:*(v2 + 56)];

            if (v66)
            {
              _HKInitializeLogging();
              v67 = *MEMORY[0x277CCC298];
              if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
              {
                v68 = v67;
                v69 = objc_opt_class();
                v70 = *(v2 + 56);
                v71 = *(v2 + 48);
                v72 = v69;
                v73 = [v71 endDate];
                *buf = 138543874;
                v125 = v69;
                v126 = 2114;
                v127 = v70;
                v9 = MEMORY[0x277CCC330];
                v128 = 2114;
                v129 = v73;
                _os_log_fault_impl(&dword_228986000, v68, OS_LOG_TYPE_FAULT, "[%{public}@] Out-of-order CMSwimData segment events: %{public}@, %{public}@", buf, 0x20u);

                goto LABEL_51;
              }

LABEL_52:

LABEL_53:
              objc_storeStrong((v2 + *(v7 + 3020)), v16);
LABEL_54:
              objc_storeStrong((v2 + 48), v16);
              continue;
            }

            v74 = objc_alloc(MEMORY[0x277CCA970]);
            v75 = *(v2 + 56);
            v76 = [*(v2 + 48) endDate];
            v68 = [v74 initWithStartDate:v75 endDate:v76];

            [v68 duration];
            if (v77 == 0.0)
            {
              _HKInitializeLogging();
              v78 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                v79 = v78;
                v80 = objc_opt_class();
                v81 = *(v2 + 56);
                v82 = *(v2 + 48);
                v83 = v80;
                v84 = [v82 endDate];
                *buf = 138544130;
                v125 = v80;
                v126 = 2114;
                v127 = v64;
                v128 = 2114;
                v129 = v81;
                v7 = 0x280D58000;
                v130 = 2114;
                v131 = v84;
                _os_log_error_impl(&dword_228986000, v79, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping zero-duration segment created from data: %{public}@ with start date: %{public}@ and end date: %{public}@", buf, 0x2Au);

                v9 = MEMORY[0x277CCC330];
                goto LABEL_50;
              }
            }

            else
            {
              if ([v64 isSegmentSWOLFValid])
              {
                v85 = MEMORY[0x277CCABB0];
                [v64 segmentSWOLF];
                v86 = [v85 numberWithDouble:?];
                v122[0] = v107;
                v123[0] = v86;
                v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:1];
              }

              else
              {
                v79 = 0;
              }

              v87 = objc_alloc(MEMORY[0x277CCDE58]);
              v88 = [v2 sessionId];
              v89 = [v87 initWithEventType:9 sessionId:v88 dateInterval:v68 metadata:v79];

              *(v2 + 80) = 1;
              v90 = [v64 endDate];
              v91 = *(v2 + 64);
              *(v2 + 64) = v90;

              _HKInitializeLogging();
              v92 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v92;
                v94 = objc_opt_class();
                *buf = 138543618;
                v125 = v94;
                v126 = 2114;
                v127 = v89;
                v95 = v94;
                _os_log_impl(&dword_228986000, v93, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding workout segment event: %{public}@", buf, 0x16u);

                v9 = MEMORY[0x277CCC330];
              }

              v96 = [v2 delegate];
              [v96 receivedWorkoutEvent:v89];

LABEL_50:
            }

LABEL_51:

            goto LABEL_52;
          }

          _HKInitializeLogging();
          v30 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = objc_opt_class();
            v33 = v32;
            v34 = [v16 sessionId];
            v35 = [v2 sessionId];
            *buf = 138543874;
            v125 = v32;
            v126 = 2112;
            v127 = v34;
            v128 = 2112;
            v129 = v35;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring swim data with mismatched session id. Swim data session id: %@ [self sessionID]: %@", buf, 0x20u);
          }
        }

        v113 = [obj countByEnumeratingWithState:&v114 objects:v118 count:16];
      }

      while (v113);
    }

    v4 = v103;
    v1 = v104;
    v6 = 0;
  }

LABEL_58:

  result = *(v1 + 56);
  if (result)
  {
    v98 = *(result + 16);

    return v98();
  }

  return result;
}

@end