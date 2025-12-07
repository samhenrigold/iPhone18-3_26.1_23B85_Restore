@interface LBFBitacoraStateInfo
+ (id)getCAEventDictionaryFromBiomeEvent:(id)event;
- (BOOL)uploadRawEventsToCoreAnalytics;
- (BOOL)uploadToCoreAnalytics;
- (BOOL)uploadToDedisco;
- (LBFBitacoraStateInfo)initWithBitcoraState:(id)state bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events;
- (LBFBitacoraStateInfo)initWithBitcoraStateMLHost:(id)host bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events;
- (id)getDictionaryRepresentation;
- (id)getPETState;
- (id)maxTimedelta_To_State_Activated;
- (id)maxTimedelta_To_State_ActivatedFailed;
- (id)maxTimedelta_To_State_Allocated;
- (id)maxTimedelta_To_State_AllocatedFailed;
- (id)maxTimedelta_To_State_Deativated;
- (id)maxTimedelta_To_State_DeativatedFailed;
- (id)maxTimedelta_To_State_DprivacydBudgetCheck;
- (id)maxTimedelta_To_State_DprivacydBudgetCheckFailed;
- (id)maxTimedelta_To_State_DprivacydDonationReceived;
- (id)maxTimedelta_To_State_DprivacydDonationReceivedFailed;
- (id)maxTimedelta_To_State_DprivacydPayloadCreation;
- (id)maxTimedelta_To_State_DprivacydPayloadCreationFailed;
- (id)maxTimedelta_To_State_DprivacydRandomization;
- (id)maxTimedelta_To_State_DprivacydRandomizationFailed;
- (id)maxTimedelta_To_State_DprivacydUpload;
- (id)maxTimedelta_To_State_DprivacydUploadFailed;
- (id)maxTimedelta_To_State_PerformTask;
- (id)maxTimedelta_To_State_PerformTaskFailed;
- (id)maxTimedelta_To_State_TaskCompleted;
- (id)maxTimedelta_To_State_TaskCompletedFailed;
- (id)maxTimedelta_To_State_TaskFetched;
- (id)maxTimedelta_To_State_TaskFetchedFailed;
- (id)maxTimedelta_To_State_TaskScheduled;
- (id)maxTimedelta_To_State_TaskScheduledFailed;
- (id)maxTimedelta_To_State_Unexpeted;
- (void)iterateEvents;
- (void)iterateTransitions;
@end

@implementation LBFBitacoraStateInfo

- (LBFBitacoraStateInfo)initWithBitcoraState:(id)state bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events
{
  stateCopy = state;
  timeCopy = time;
  endTimeCopy = endTime;
  statusCopy = status;
  transitionsCopy = transitions;
  eventsCopy = events;
  v70.receiver = self;
  v70.super_class = LBFBitacoraStateInfo;
  v19 = [(LBFBitacoraStateInfo *)&v70 init];
  v21 = v19;
  if (v19)
  {
    LBFLoggingUtilsInit(v19, v20);
    objc_storeStrong(&v21->_bitacoraStateTransitions, transitions);
    objc_storeStrong(&v21->_bitacoraEvents, events);
    v25 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v22, v24, v23, endTimeCopy, timeCopy);
    v29 = objc_msgSend_UUIDString(v25, v26, v28, v27);
    stateId = v21->_stateId;
    v21->_stateId = v29;

    objc_storeStrong(&v21->_trialIdentifiers, state);
    v34 = objc_msgSend_getContextId(LBFContextId, v31, v33, v32);
    contextId = v21->_contextId;
    v21->_contextId = v34;

    v39 = objc_msgSend_isActivated(statusCopy, v36, v38, v37);
    isActivated = v21->_isActivated;
    v21->_isActivated = v39;

    v44 = objc_msgSend_isAllocated(statusCopy, v41, v43, v42);
    isAllocated = v21->_isAllocated;
    v21->_isAllocated = v44;

    v21->_isActivated_implicit = objc_msgSend_isActivated_implicit(statusCopy, v46, v48, v47);
    v21->_isAllocated_implicit = objc_msgSend_isAllocated_implicit(statusCopy, v49, v51, v50);
    objc_storeStrong(&v21->_bucketStartTime, time);
    objc_storeStrong(&v21->_bucketEndTime, endTime);
    if (objc_msgSend_count(transitionsCopy, v52, v54, v53))
    {
      v58 = objc_msgSend_lastObject(transitionsCopy, v55, v57, v56);
      v21->_latestState = objc_msgSend_state(v58, v59, v61, v60);

      if (v21->_latestState == 8)
      {
        v62 = LBFLogContextBitacoraStateInfo;
        if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_255ED5000, v62, OS_LOG_TYPE_INFO, "LBFBitacoraState_Unexpected state", buf, 2u);
        }
      }
    }

    else
    {
      v21->_latestState = 0;
    }

    if (stateCopy)
    {
      objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v55, v57, stateCopy);
    }

    objc_msgSend_iterateEvents(v21, v55, v57, v56);
    objc_msgSend_iterateTransitions(v21, v63, v65, v64);
  }

  return v21;
}

- (LBFBitacoraStateInfo)initWithBitcoraStateMLHost:(id)host bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events
{
  started = objc_msgSend_initWithBitcoraState_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(self, a2, v8, host, time, endTime, status, transitions, events);
  v12 = started;
  if (started)
  {
    v13 = objc_msgSend_addMLHostMarkerToString_(started, v10, v11, started[2]);
    stateId = v12->_stateId;
    v12->_stateId = v13;
  }

  return v12;
}

- (void)iterateEvents
{
  v456 = *MEMORY[0x277D85DE8];
  v449 = 0u;
  v450 = 0u;
  v451 = 0u;
  v452 = 0u;
  v3 = self->_bitacoraEvents;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, &v449, v455, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v450;
    do
    {
      v9 = 0;
      do
      {
        if (*v450 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v449 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v15 = objc_msgSend_timestamp(v11, v12, v14, v13);
          v18 = objc_msgSend_compare_(v15, v16, v17, self->_bucketStartTime);

          if (v18 == -1)
          {
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AE60(&v447, v448);
            }

            goto LABEL_87;
          }

          v22 = objc_msgSend_taskFetched(v11, v19, v21, v20);

          if (v22)
          {
            v26 = objc_msgSend_taskFetched(v11, v23, v25, v24);
            v30 = objc_msgSend_succeeded(v26, v27, v29, v28);

            v34 = MEMORY[0x277CCABB0];
            if (v30)
            {
              v35 = objc_msgSend_intValue(self->_count_TaskFetched_Succeeded, v31, v33, v32);
              v38 = objc_msgSend_numberWithInt_(v34, v36, v37, (v35 + 1));
              count_TaskFetched_Succeeded = self->_count_TaskFetched_Succeeded;
              self->_count_TaskFetched_Succeeded = v38;

              v43 = objc_msgSend_timestamp(v11, v40, v42, v41);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Succeeded;
              self->_timestamp_TaskFetched_Succeeded = v43;
            }

            else
            {
              v67 = objc_msgSend_intValue(self->_count_TaskFetched_Failed, v31, v33, v32);
              v70 = objc_msgSend_numberWithInt_(v34, v68, v69, (v67 + 1));
              count_TaskFetched_Failed = self->_count_TaskFetched_Failed;
              self->_count_TaskFetched_Failed = v70;

              v75 = objc_msgSend_timestamp(v11, v72, v74, v73);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Failed;
              self->_timestamp_TaskFetched_Failed = v75;
            }

            goto LABEL_25;
          }

          v45 = objc_msgSend_taskCompleted(v11, v23, v25, v24);

          if (v45)
          {
            v49 = objc_msgSend_taskCompleted(v11, v46, v48, v47);
            v53 = objc_msgSend_succeeded(v49, v50, v52, v51);

            v57 = MEMORY[0x277CCABB0];
            if (v53)
            {
              v58 = objc_msgSend_intValue(self->_count_TaskCompleted_Succeeded, v54, v56, v55);
              v61 = objc_msgSend_numberWithInt_(v57, v59, v60, (v58 + 1));
              count_TaskCompleted_Succeeded = self->_count_TaskCompleted_Succeeded;
              self->_count_TaskCompleted_Succeeded = v61;

              v66 = objc_msgSend_timestamp(v11, v63, v65, v64);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskCompleted_Succeeded;
              self->_timestamp_TaskCompleted_Succeeded = v66;
            }

            else
            {
              v98 = objc_msgSend_intValue(self->_count_TaskCompleted_Failed, v54, v56, v55);
              v101 = objc_msgSend_numberWithInt_(v57, v99, v100, (v98 + 1));
              count_TaskCompleted_Failed = self->_count_TaskCompleted_Failed;
              self->_count_TaskCompleted_Failed = v101;

              v106 = objc_msgSend_timestamp(v11, v103, v105, v104);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskCompleted_Failed;
              self->_timestamp_TaskCompleted_Failed = v106;
            }

            goto LABEL_25;
          }

          v76 = objc_msgSend_taskScheduled(v11, v46, v48, v47);

          if (v76)
          {
            v80 = objc_msgSend_taskScheduled(v11, v77, v79, v78);
            v84 = objc_msgSend_succeeded(v80, v81, v83, v82);

            v88 = MEMORY[0x277CCABB0];
            if (v84)
            {
              v89 = objc_msgSend_intValue(self->_count_TaskScheduled_Succeeded, v85, v87, v86);
              v92 = objc_msgSend_numberWithInt_(v88, v90, v91, (v89 + 1));
              count_TaskScheduled_Succeeded = self->_count_TaskScheduled_Succeeded;
              self->_count_TaskScheduled_Succeeded = v92;

              v97 = objc_msgSend_timestamp(v11, v94, v96, v95);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskScheduled_Succeeded;
              self->_timestamp_TaskScheduled_Succeeded = v97;
            }

            else
            {
              v108 = objc_msgSend_intValue(self->_count_TaskScheduled_Failed, v85, v87, v86);
              v111 = objc_msgSend_numberWithInt_(v88, v109, v110, (v108 + 1));
              count_TaskScheduled_Failed = self->_count_TaskScheduled_Failed;
              self->_count_TaskScheduled_Failed = v111;

              v116 = objc_msgSend_timestamp(v11, v113, v115, v114);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskScheduled_Failed;
              self->_timestamp_TaskScheduled_Failed = v116;
            }

LABEL_25:
          }

          else
          {
            v107 = objc_msgSend_activityScheduleStatus(v11, v77, v79, v78);

            if (!v107 && os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AD14(&v445, v446);
            }
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_40;
        }

        v117 = v10;
        v121 = objc_msgSend_timestamp(v117, v118, v120, v119);
        v124 = objc_msgSend_compare_(v121, v122, v123, self->_bucketStartTime);

        if (v124 == -1)
        {
          if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
          {
            sub_255F0AE34(&v443, v444);
          }

          goto LABEL_87;
        }

        v128 = objc_msgSend_performTaskStatus(v117, v125, v127, v126);

        if (v128)
        {
          v132 = objc_msgSend_performTaskStatus(v117, v129, v131, v130);
          goto LABEL_35;
        }

        v136 = objc_msgSend_performTrialTaskStatus(v117, v129, v131, v130);

        if (v136)
        {
          v132 = objc_msgSend_performTrialTaskStatus(v117, v137, v139, v138);
LABEL_35:
          v140 = v132;
          v141 = objc_msgSend_succeeded(v132, v133, v135, v134);

          v145 = MEMORY[0x277CCABB0];
          if (v141)
          {
            v146 = objc_msgSend_intValue(self->_count_PerformTask_Succeeded, v142, v144, v143);
            v149 = objc_msgSend_numberWithInt_(v145, v147, v148, (v146 + 1));
            count_PerformTask_Succeeded = self->_count_PerformTask_Succeeded;
            self->_count_PerformTask_Succeeded = v149;

            v154 = objc_msgSend_timestamp(v117, v151, v153, v152);
            timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Succeeded;
            self->_timestamp_PerformTask_Succeeded = v154;
          }

          else
          {
            v156 = objc_msgSend_intValue(self->_count_PerformTask_Failed, v142, v144, v143);
            v159 = objc_msgSend_numberWithInt_(v145, v157, v158, (v156 + 1));
            count_PerformTask_Failed = self->_count_PerformTask_Failed;
            self->_count_PerformTask_Failed = v159;

            v164 = objc_msgSend_timestamp(v117, v161, v163, v162);
            timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Failed;
            self->_timestamp_PerformTask_Failed = v164;
          }

          goto LABEL_38;
        }

        v224 = objc_msgSend_stop(v117, v137, v139, v138);

        if (!v224)
        {
          if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
          {
            sub_255F0AD40(&v441, v442);
          }

          goto LABEL_39;
        }

        v228 = objc_msgSend_stop(v117, v225, v227, v226);
        v232 = objc_msgSend_succeeded(v228, v229, v231, v230);

        v236 = MEMORY[0x277CCABB0];
        if (v232)
        {
          v237 = objc_msgSend_intValue(self->_count_Stop_Succeeded, v233, v235, v234);
          v240 = objc_msgSend_numberWithInt_(v236, v238, v239, (v237 + 1));
          count_Stop_Succeeded = self->_count_Stop_Succeeded;
          self->_count_Stop_Succeeded = v240;

          v245 = objc_msgSend_timestamp(v117, v242, v244, v243);
          timestamp_PerformTask_Succeeded = self->_timestamp_Stop_Succeeded;
          self->_timestamp_Stop_Succeeded = v245;
        }

        else
        {
          v431 = objc_msgSend_intValue(self->_count_Stop_Failed, v233, v235, v234);
          v434 = objc_msgSend_numberWithInt_(v236, v432, v433, (v431 + 1));
          count_Stop_Failed = self->_count_Stop_Failed;
          self->_count_Stop_Failed = v434;

          v439 = objc_msgSend_timestamp(v117, v436, v438, v437);
          timestamp_PerformTask_Succeeded = self->_timestamp_Stop_Failed;
          self->_timestamp_Stop_Failed = v439;
        }

LABEL_38:

LABEL_39:
LABEL_40:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_61;
        }

        v165 = v10;
        v169 = objc_msgSend_timestamp(v165, v166, v168, v167);
        v172 = objc_msgSend_compare_(v169, v170, v171, self->_bucketStartTime);

        if (v172 == -1)
        {
          goto LABEL_87;
        }

        v176 = objc_msgSend_eventType(v165, v173, v175, v174);
        switch(v176)
        {
          case 1:
            v209 = objc_msgSend_eventSucceeded(v165, v177, v179, v178);
            v213 = MEMORY[0x277CCABB0];
            if (v209)
            {
              v214 = objc_msgSend_intValue(self->_count_Allocated_Succeeded, v210, v212, v211);
              v217 = objc_msgSend_numberWithInt_(v213, v215, v216, (v214 + 1));
              count_Allocated_Succeeded = self->_count_Allocated_Succeeded;
              self->_count_Allocated_Succeeded = v217;

              v222 = objc_msgSend_timestamp(v165, v219, v221, v220);
              timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Succeeded;
              self->_timestamp_Allocated_Succeeded = v222;
            }

            else
            {
              v255 = objc_msgSend_intValue(self->_count_Allocated_Failed, v210, v212, v211);
              v258 = objc_msgSend_numberWithInt_(v213, v256, v257, (v255 + 1));
              count_Allocated_Failed = self->_count_Allocated_Failed;
              self->_count_Allocated_Failed = v258;

              v263 = objc_msgSend_timestamp(v165, v260, v262, v261);
              timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Failed;
              self->_timestamp_Allocated_Failed = v263;
            }

            break;
          case 3:
            v195 = objc_msgSend_eventSucceeded(v165, v177, v179, v178);
            v199 = MEMORY[0x277CCABB0];
            if (v195)
            {
              v200 = objc_msgSend_intValue(self->_count_Deactivated_Succeeded, v196, v198, v197);
              v203 = objc_msgSend_numberWithInt_(v199, v201, v202, (v200 + 1));
              count_Deactivated_Succeeded = self->_count_Deactivated_Succeeded;
              self->_count_Deactivated_Succeeded = v203;

              v208 = objc_msgSend_timestamp(v165, v205, v207, v206);
              timestamp_Allocated_Succeeded = self->_timestamp_Deactivated_Succeeded;
              self->_timestamp_Deactivated_Succeeded = v208;
            }

            else
            {
              v246 = objc_msgSend_intValue(self->_count_Deactivated_Failed, v196, v198, v197);
              v249 = objc_msgSend_numberWithInt_(v199, v247, v248, (v246 + 1));
              count_Deactivated_Failed = self->_count_Deactivated_Failed;
              self->_count_Deactivated_Failed = v249;

              v254 = objc_msgSend_timestamp(v165, v251, v253, v252);
              timestamp_Allocated_Succeeded = self->_timestamp_Deactivated_Failed;
              self->_timestamp_Deactivated_Failed = v254;
            }

            break;
          case 2:
            v180 = objc_msgSend_eventSucceeded(v165, v177, v179, v178);
            v184 = MEMORY[0x277CCABB0];
            if (v180)
            {
              v185 = objc_msgSend_intValue(self->_count_Activated_Succeeded, v181, v183, v182);
              v188 = objc_msgSend_numberWithInt_(v184, v186, v187, (v185 + 1));
              count_Activated_Succeeded = self->_count_Activated_Succeeded;
              self->_count_Activated_Succeeded = v188;

              v193 = objc_msgSend_timestamp(v165, v190, v192, v191);
              timestamp_Allocated_Succeeded = self->_timestamp_Activated_Succeeded;
              self->_timestamp_Activated_Succeeded = v193;
            }

            else
            {
              v264 = objc_msgSend_intValue(self->_count_Activated_Failed, v181, v183, v182);
              v267 = objc_msgSend_numberWithInt_(v184, v265, v266, (v264 + 1));
              count_Activated_Failed = self->_count_Activated_Failed;
              self->_count_Activated_Failed = v267;

              v272 = objc_msgSend_timestamp(v165, v269, v271, v270);
              timestamp_Allocated_Succeeded = self->_timestamp_Activated_Failed;
              self->_timestamp_Activated_Failed = v272;
            }

            break;
          default:
            v223 = LBFLogContextBitacoraStateInfo;
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AD6C(v454, v223);
            }

            goto LABEL_60;
        }

LABEL_60:
LABEL_61:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_88;
        }

        v275 = v10;
        v279 = objc_msgSend_timestamp(v275, v276, v278, v277);
        v282 = objc_msgSend_compare_(v279, v280, v281, self->_bucketStartTime);

        if (v282 != -1)
        {
          v286 = objc_msgSend_event(v275, v283, v285, v284);
          v290 = objc_msgSend_phase(v286, v287, v289, v288);

          if (v290 <= 2)
          {
            if (v290 == 1)
            {
              v367 = objc_msgSend_event(v275, v291, v293, v292);
              v371 = objc_msgSend_succeeded(v367, v368, v370, v369);

              v375 = MEMORY[0x277CCABB0];
              if (v371)
              {
                v376 = objc_msgSend_intValue(self->_count_DprivacydDonationReceived_Succeeded, v372, v374, v373);
                v379 = objc_msgSend_numberWithInt_(v375, v377, v378, (v376 + 1));
                count_DprivacydDonationReceived_Succeeded = self->_count_DprivacydDonationReceived_Succeeded;
                self->_count_DprivacydDonationReceived_Succeeded = v379;

                v384 = objc_msgSend_timestamp(v275, v381, v383, v382);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Succeeded;
                self->_timestamp_DprivacydDonationReceived_Succeeded = v384;
              }

              else
              {
                v404 = objc_msgSend_intValue(self->_count_DprivacydDonationReceived_Failed, v372, v374, v373);
                v407 = objc_msgSend_numberWithInt_(v375, v405, v406, (v404 + 1));
                count_DprivacydDonationReceived_Failed = self->_count_DprivacydDonationReceived_Failed;
                self->_count_DprivacydDonationReceived_Failed = v407;

                v412 = objc_msgSend_timestamp(v275, v409, v411, v410);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Failed;
                self->_timestamp_DprivacydDonationReceived_Failed = v412;
              }
            }

            else
            {
              if (v290 != 2)
              {
LABEL_79:
                v385 = LBFLogContextBitacoraStateInfo;
                if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
                {
                  sub_255F0ADC8(v453, v385);
                }

                goto LABEL_87;
              }

              v313 = objc_msgSend_event(v275, v291, v293, v292);
              v317 = objc_msgSend_succeeded(v313, v314, v316, v315);

              v321 = MEMORY[0x277CCABB0];
              if (v317)
              {
                v322 = objc_msgSend_intValue(self->_count_DprivacydRandomization_Succeeded, v318, v320, v319);
                v325 = objc_msgSend_numberWithInt_(v321, v323, v324, (v322 + 1));
                count_DprivacydRandomization_Succeeded = self->_count_DprivacydRandomization_Succeeded;
                self->_count_DprivacydRandomization_Succeeded = v325;

                v330 = objc_msgSend_timestamp(v275, v327, v329, v328);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydRandomization_Succeeded;
                self->_timestamp_DprivacydRandomization_Succeeded = v330;
              }

              else
              {
                v422 = objc_msgSend_intValue(self->_count_DprivacydRandomization_Failed, v318, v320, v319);
                v425 = objc_msgSend_numberWithInt_(v321, v423, v424, (v422 + 1));
                count_DprivacydRandomization_Failed = self->_count_DprivacydRandomization_Failed;
                self->_count_DprivacydRandomization_Failed = v425;

                v430 = objc_msgSend_timestamp(v275, v427, v429, v428);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydRandomization_Failed;
                self->_timestamp_DprivacydRandomization_Failed = v430;
              }
            }
          }

          else
          {
            switch(v290)
            {
              case 3:
                v331 = objc_msgSend_event(v275, v291, v293, v292);
                v335 = objc_msgSend_succeeded(v331, v332, v334, v333);

                v339 = MEMORY[0x277CCABB0];
                if (v335)
                {
                  v340 = objc_msgSend_intValue(self->_count_DprivacydBudgetCheck_Succeeded, v336, v338, v337);
                  v343 = objc_msgSend_numberWithInt_(v339, v341, v342, (v340 + 1));
                  count_DprivacydBudgetCheck_Succeeded = self->_count_DprivacydBudgetCheck_Succeeded;
                  self->_count_DprivacydBudgetCheck_Succeeded = v343;

                  v348 = objc_msgSend_timestamp(v275, v345, v347, v346);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydBudgetCheck_Succeeded;
                  self->_timestamp_DprivacydBudgetCheck_Succeeded = v348;
                }

                else
                {
                  v386 = objc_msgSend_intValue(self->_count_DprivacydBudgetCheck_Failed, v336, v338, v337);
                  v389 = objc_msgSend_numberWithInt_(v339, v387, v388, (v386 + 1));
                  count_DprivacydBudgetCheck_Failed = self->_count_DprivacydBudgetCheck_Failed;
                  self->_count_DprivacydBudgetCheck_Failed = v389;

                  v394 = objc_msgSend_timestamp(v275, v391, v393, v392);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydBudgetCheck_Failed;
                  self->_timestamp_DprivacydBudgetCheck_Failed = v394;
                }

                break;
              case 4:
                v349 = objc_msgSend_event(v275, v291, v293, v292);
                v353 = objc_msgSend_succeeded(v349, v350, v352, v351);

                v357 = MEMORY[0x277CCABB0];
                if (v353)
                {
                  v358 = objc_msgSend_intValue(self->_count_DprivacydPayloadCreation_Succeeded, v354, v356, v355);
                  v361 = objc_msgSend_numberWithInt_(v357, v359, v360, (v358 + 1));
                  count_DprivacydPayloadCreation_Succeeded = self->_count_DprivacydPayloadCreation_Succeeded;
                  self->_count_DprivacydPayloadCreation_Succeeded = v361;

                  v366 = objc_msgSend_timestamp(v275, v363, v365, v364);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydPayloadCreation_Succeeded;
                  self->_timestamp_DprivacydPayloadCreation_Succeeded = v366;
                }

                else
                {
                  v395 = objc_msgSend_intValue(self->_count_DprivacydPayloadCreation_Failed, v354, v356, v355);
                  v398 = objc_msgSend_numberWithInt_(v357, v396, v397, (v395 + 1));
                  count_DprivacydPayloadCreation_Failed = self->_count_DprivacydPayloadCreation_Failed;
                  self->_count_DprivacydPayloadCreation_Failed = v398;

                  v403 = objc_msgSend_timestamp(v275, v400, v402, v401);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydPayloadCreation_Failed;
                  self->_timestamp_DprivacydPayloadCreation_Failed = v403;
                }

                break;
              case 5:
                v294 = objc_msgSend_event(v275, v291, v293, v292);
                v298 = objc_msgSend_succeeded(v294, v295, v297, v296);

                v302 = MEMORY[0x277CCABB0];
                if (v298)
                {
                  v303 = objc_msgSend_intValue(self->_count_DprivacydUpload_Succeeded, v299, v301, v300);
                  v306 = objc_msgSend_numberWithInt_(v302, v304, v305, (v303 + 1));
                  count_DprivacydUpload_Succeeded = self->_count_DprivacydUpload_Succeeded;
                  self->_count_DprivacydUpload_Succeeded = v306;

                  v311 = objc_msgSend_timestamp(v275, v308, v310, v309);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydUpload_Succeeded;
                  self->_timestamp_DprivacydUpload_Succeeded = v311;
                }

                else
                {
                  v413 = objc_msgSend_intValue(self->_count_DprivacydUpload_Failed, v299, v301, v300);
                  v416 = objc_msgSend_numberWithInt_(v302, v414, v415, (v413 + 1));
                  count_DprivacydUpload_Failed = self->_count_DprivacydUpload_Failed;
                  self->_count_DprivacydUpload_Failed = v416;

                  v421 = objc_msgSend_timestamp(v275, v418, v420, v419);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydUpload_Failed;
                  self->_timestamp_DprivacydUpload_Failed = v421;
                }

                break;
              default:
                goto LABEL_79;
            }
          }
        }

LABEL_87:

LABEL_88:
        ++v9;
      }

      while (v7 != v9);
      v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v273, v274, &v449, v455, 16);
      v7 = v440;
    }

    while (v440);
  }
}

- (void)iterateTransitions
{
  v83 = *MEMORY[0x277D85DE8];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v3 = self->_bitacoraStateTransitions;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, &v77, v82, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v78;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v78 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v77 + 1) + 8 * i);
        switch(objc_msgSend_state(v13, v7, v9, v8, v77))
        {
          case 0:
          case 18:
          case 19:
            continue;
          case 1:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
            if (!timedeltas_To_State_Allocated)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v16 = self->_timedeltas_To_State_Allocated;
              self->_timedeltas_To_State_Allocated = v15;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
            }

            goto LABEL_63;
          case 2:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Activated;
            if (!timedeltas_To_State_Allocated)
            {
              v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Activated = self->_timedeltas_To_State_Activated;
              self->_timedeltas_To_State_Activated = v54;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Activated;
            }

            goto LABEL_63;
          case 3:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Deactivated;
            if (!timedeltas_To_State_Allocated)
            {
              v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Deactivated = self->_timedeltas_To_State_Deactivated;
              self->_timedeltas_To_State_Deactivated = v39;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Deactivated;
            }

            goto LABEL_63;
          case 4:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetched;
            if (!timedeltas_To_State_Allocated)
            {
              v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskFetched = self->_timedeltas_To_State_TaskFetched;
              self->_timedeltas_To_State_TaskFetched = v45;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetched;
            }

            goto LABEL_63;
          case 5:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduled;
            if (!timedeltas_To_State_Allocated)
            {
              v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskScheduled = self->_timedeltas_To_State_TaskScheduled;
              self->_timedeltas_To_State_TaskScheduled = v47;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduled;
            }

            goto LABEL_63;
          case 6:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompleted;
            if (!timedeltas_To_State_Allocated)
            {
              v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskCompleted = self->_timedeltas_To_State_TaskCompleted;
              self->_timedeltas_To_State_TaskCompleted = v58;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompleted;
            }

            goto LABEL_63;
          case 7:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTask;
            if (!timedeltas_To_State_Allocated)
            {
              v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PerformTask = self->_timedeltas_To_State_PerformTask;
              self->_timedeltas_To_State_PerformTask = v56;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTask;
            }

            goto LABEL_63;
          case 8:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Unexpeted;
            if (!timedeltas_To_State_Allocated)
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Unexpeted = self->_timedeltas_To_State_Unexpeted;
              self->_timedeltas_To_State_Unexpeted = v27;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Unexpeted;
            }

            goto LABEL_63;
          case 9:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_AllocatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_AllocatedFailed = self->_timedeltas_To_State_AllocatedFailed;
              self->_timedeltas_To_State_AllocatedFailed = v41;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_AllocatedFailed;
            }

            goto LABEL_63;
          case 10:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_ActivatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_ActivatedFailed = self->_timedeltas_To_State_ActivatedFailed;
              self->_timedeltas_To_State_ActivatedFailed = v33;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_ActivatedFailed;
            }

            goto LABEL_63;
          case 11:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DeactivatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DeactivatedFailed = self->_timedeltas_To_State_DeactivatedFailed;
              self->_timedeltas_To_State_DeactivatedFailed = v21;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DeactivatedFailed;
            }

            goto LABEL_63;
          case 12:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetchedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskFetchedFailed = self->_timedeltas_To_State_TaskFetchedFailed;
              self->_timedeltas_To_State_TaskFetchedFailed = v49;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetchedFailed;
            }

            goto LABEL_63;
          case 13:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduledFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskScheduledFailed = self->_timedeltas_To_State_TaskScheduledFailed;
              self->_timedeltas_To_State_TaskScheduledFailed = v51;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduledFailed;
            }

            goto LABEL_63;
          case 14:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompletedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskCompletedFailed = self->_timedeltas_To_State_TaskCompletedFailed;
              self->_timedeltas_To_State_TaskCompletedFailed = v62;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompletedFailed;
            }

            goto LABEL_63;
          case 15:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTaskFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PerformTaskFailed = self->_timedeltas_To_State_PerformTaskFailed;
              self->_timedeltas_To_State_PerformTaskFailed = v60;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTaskFailed;
            }

            goto LABEL_63;
          case 16:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStop;
            if (!timedeltas_To_State_Allocated)
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PluginStop = self->_timedeltas_To_State_PluginStop;
              self->_timedeltas_To_State_PluginStop = v17;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStop;
            }

            goto LABEL_63;
          case 17:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStopFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PluginStopFailed = self->_timedeltas_To_State_PluginStopFailed;
              self->_timedeltas_To_State_PluginStopFailed = v35;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStopFailed;
            }

            goto LABEL_63;
          case 21:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceived;
            if (!timedeltas_To_State_Allocated)
            {
              v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydDonationReceived = self->_timedeltas_To_State_DprivacydDonationReceived;
              self->_timedeltas_To_State_DprivacydDonationReceived = v64;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceived;
            }

            goto LABEL_63;
          case 22:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomization;
            if (!timedeltas_To_State_Allocated)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydRandomization = self->_timedeltas_To_State_DprivacydRandomization;
              self->_timedeltas_To_State_DprivacydRandomization = v19;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomization;
            }

            goto LABEL_63;
          case 23:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheck;
            if (!timedeltas_To_State_Allocated)
            {
              v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydBudgetCheck = self->_timedeltas_To_State_DprivacydBudgetCheck;
              self->_timedeltas_To_State_DprivacydBudgetCheck = v31;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheck;
            }

            goto LABEL_63;
          case 24:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreation;
            if (!timedeltas_To_State_Allocated)
            {
              v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydPayloadCreation = self->_timedeltas_To_State_DprivacydPayloadCreation;
              self->_timedeltas_To_State_DprivacydPayloadCreation = v25;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreation;
            }

            goto LABEL_63;
          case 25:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUpload;
            if (!timedeltas_To_State_Allocated)
            {
              v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydUpload = self->_timedeltas_To_State_DprivacydUpload;
              self->_timedeltas_To_State_DprivacydUpload = v43;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUpload;
            }

            goto LABEL_63;
          case 26:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydDonationReceivedFailed = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
              self->_timedeltas_To_State_DprivacydDonationReceivedFailed = v23;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
            }

            goto LABEL_63;
          case 27:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomizationFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydRandomizationFailed = self->_timedeltas_To_State_DprivacydRandomizationFailed;
              self->_timedeltas_To_State_DprivacydRandomizationFailed = v68;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomizationFailed;
            }

            goto LABEL_63;
          case 28:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydBudgetCheckFailed = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
              self->_timedeltas_To_State_DprivacydBudgetCheckFailed = v66;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
            }

            goto LABEL_63;
          case 29:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydPayloadCreationFailed = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
              self->_timedeltas_To_State_DprivacydPayloadCreationFailed = v29;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
            }

            goto LABEL_63;
          case 30:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUploadFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydUploadFailed = self->_timedeltas_To_State_DprivacydUploadFailed;
              self->_timedeltas_To_State_DprivacydUploadFailed = v37;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUploadFailed;
            }

LABEL_63:
            v70 = MEMORY[0x277CCABB0];
            objc_msgSend_timedelta(v13, v7, v9, v8);
            v74 = objc_msgSend_numberWithDouble_(v70, v71, v73, v72);
            objc_msgSend_addObject_(timedeltas_To_State_Allocated, v75, v76, v74);

            break;
          default:
            v53 = LBFLogContextBitacoraStateInfo;
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AE8C(v81, v53);
            }

            break;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v7, v9, &v77, v82, 16);
    }

    while (v10);
  }
}

- (id)getDictionaryRepresentation
{
  v380[30] = *MEMORY[0x277D85DE8];
  v379[0] = &unk_286801060;
  v379[1] = &unk_286801078;
  v380[0] = @"state_Unknown";
  v380[1] = @"state_Allocated";
  v379[2] = &unk_286801090;
  v379[3] = &unk_2868010A8;
  v380[2] = @"state_Activated";
  v380[3] = @"state_Deativated";
  v379[4] = &unk_2868010C0;
  v379[5] = &unk_2868010D8;
  v380[4] = @"state_TaskFetched";
  v380[5] = @"state_TaskScheduled";
  v379[6] = &unk_2868010F0;
  v379[7] = &unk_286801108;
  v380[6] = @"state_TaskCompleted";
  v380[7] = @"state_PerformTaskSucceeded";
  v379[8] = &unk_286801120;
  v379[9] = &unk_286801138;
  v380[8] = @"state_Unexpected";
  v380[9] = @"state_AllocateFailed";
  v379[10] = &unk_286801150;
  v379[11] = &unk_286801168;
  v380[10] = @"state_ActivateFailed";
  v380[11] = @"state_DeativateFailed";
  v379[12] = &unk_286801180;
  v379[13] = &unk_286801198;
  v380[12] = @"state_TaskFetcheFailed";
  v380[13] = @"state_TaskScheduleFailed";
  v379[14] = &unk_2868011B0;
  v379[15] = &unk_2868011C8;
  v380[14] = @"state_TaskCompleteFailed";
  v380[15] = @"state_PerformTaskFailed";
  v379[16] = &unk_2868011E0;
  v379[17] = &unk_2868011F8;
  v380[16] = @"state_PluginStop";
  v380[17] = @"state_PluginStopFailed";
  v379[18] = &unk_286801210;
  v379[19] = &unk_286801228;
  v380[18] = @"state_AllocatedIdle";
  v380[19] = @"state_ActivatedIdle";
  v379[20] = &unk_286801240;
  v379[21] = &unk_286801258;
  v380[20] = @"state_DonationReceived";
  v380[21] = @"state_Randomization";
  v379[22] = &unk_286801270;
  v379[23] = &unk_286801288;
  v380[22] = @"state_BudgetCheck";
  v380[23] = @"state_PayloadCreation";
  v379[24] = &unk_2868012A0;
  v379[25] = &unk_2868012B8;
  v380[24] = @"state_Upload";
  v380[25] = @"state_DonationReceivedFailed";
  v379[26] = &unk_2868012D0;
  v379[27] = &unk_2868012E8;
  v380[26] = @"state_RandomizationFailed";
  v380[27] = @"state_BudgetCheckFailed";
  v379[28] = &unk_286801300;
  v379[29] = &unk_286801318;
  v380[28] = @"state_PayloadCreationFailed";
  v380[29] = @"state_UploadFailed";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v2, v380, v379, 30);
  latestState = self->_latestState;
  v376 = v4;
  if (latestState >= 0x1F)
  {
    v10 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AEE8(&self->_latestState, v10);
    }

    v9 = &unk_286801120;
  }

  else
  {
    v9 = qword_279813A48[latestState];
  }

  v377[0] = @"contextId";
  v11 = objc_msgSend_UUIDString(self->_contextId, v5, v7, v6);
  count_Activated_Succeeded = self->_count_Activated_Succeeded;
  if (!count_Activated_Succeeded)
  {
    count_Activated_Succeeded = &unk_286801060;
  }

  v360 = v11;
  v378[0] = v11;
  v378[1] = count_Activated_Succeeded;
  v377[1] = @"count_Activated";
  v377[2] = @"count_Allocated";
  isActivated = self->_isActivated;
  count_Allocated_Succeeded = self->_count_Allocated_Succeeded;
  if (!count_Allocated_Succeeded)
  {
    count_Allocated_Succeeded = &unk_286801060;
  }

  count_Deactivated_Succeeded = self->_count_Deactivated_Succeeded;
  if (!count_Deactivated_Succeeded)
  {
    count_Deactivated_Succeeded = &unk_286801060;
  }

  v378[2] = count_Allocated_Succeeded;
  v378[3] = count_Deactivated_Succeeded;
  v377[3] = @"count_Deactivated";
  v377[4] = @"count_PerformTask_Failed";
  count_PerformTask_Succeeded = self->_count_PerformTask_Succeeded;
  count_PerformTask_Failed = self->_count_PerformTask_Failed;
  if (!count_PerformTask_Failed)
  {
    count_PerformTask_Failed = &unk_286801060;
  }

  if (!count_PerformTask_Succeeded)
  {
    count_PerformTask_Succeeded = &unk_286801060;
  }

  v378[4] = count_PerformTask_Failed;
  v378[5] = count_PerformTask_Succeeded;
  v377[5] = @"count_PerformTask_Succeeded";
  v377[6] = @"count_Stop_Failed";
  count_Stop_Succeeded = self->_count_Stop_Succeeded;
  count_Stop_Failed = self->_count_Stop_Failed;
  if (!count_Stop_Failed)
  {
    count_Stop_Failed = &unk_286801060;
  }

  if (!count_Stop_Succeeded)
  {
    count_Stop_Succeeded = &unk_286801060;
  }

  v378[6] = count_Stop_Failed;
  v378[7] = count_Stop_Succeeded;
  v377[7] = @"count_Stop_Succeeded";
  v377[8] = @"count_TaskCompleted_Failed";
  count_TaskCompleted_Succeeded = self->_count_TaskCompleted_Succeeded;
  count_TaskCompleted_Failed = self->_count_TaskCompleted_Failed;
  if (!count_TaskCompleted_Failed)
  {
    count_TaskCompleted_Failed = &unk_286801060;
  }

  if (!count_TaskCompleted_Succeeded)
  {
    count_TaskCompleted_Succeeded = &unk_286801060;
  }

  v378[8] = count_TaskCompleted_Failed;
  v378[9] = count_TaskCompleted_Succeeded;
  v377[9] = @"count_TaskCompleted_Succeeded";
  v377[10] = @"count_TaskFetched_Failed";
  count_TaskFetched_Succeeded = self->_count_TaskFetched_Succeeded;
  count_TaskFetched_Failed = self->_count_TaskFetched_Failed;
  if (!count_TaskFetched_Failed)
  {
    count_TaskFetched_Failed = &unk_286801060;
  }

  if (!count_TaskFetched_Succeeded)
  {
    count_TaskFetched_Succeeded = &unk_286801060;
  }

  v378[10] = count_TaskFetched_Failed;
  v378[11] = count_TaskFetched_Succeeded;
  v377[11] = @"count_TaskFetched_Succeeded";
  v377[12] = @"count_TaskScheduled_Failed";
  count_TaskScheduled_Succeeded = self->_count_TaskScheduled_Succeeded;
  count_TaskScheduled_Failed = self->_count_TaskScheduled_Failed;
  if (!count_TaskScheduled_Failed)
  {
    count_TaskScheduled_Failed = &unk_286801060;
  }

  if (!count_TaskScheduled_Succeeded)
  {
    count_TaskScheduled_Succeeded = &unk_286801060;
  }

  v378[12] = count_TaskScheduled_Failed;
  v378[13] = count_TaskScheduled_Succeeded;
  v377[13] = @"count_TaskScheduled_Succeeded";
  v377[14] = @"count_DprivacydDonationReceived_Failed";
  count_DprivacydDonationReceived_Succeeded = self->_count_DprivacydDonationReceived_Succeeded;
  count_DprivacydDonationReceived_Failed = self->_count_DprivacydDonationReceived_Failed;
  if (!count_DprivacydDonationReceived_Failed)
  {
    count_DprivacydDonationReceived_Failed = &unk_286801060;
  }

  if (!count_DprivacydDonationReceived_Succeeded)
  {
    count_DprivacydDonationReceived_Succeeded = &unk_286801060;
  }

  v378[14] = count_DprivacydDonationReceived_Failed;
  v378[15] = count_DprivacydDonationReceived_Succeeded;
  v377[15] = @"count_DprivacydDonationReceived_Succeeded";
  v377[16] = @"count_DprivacydRandomization_Failed";
  count_DprivacydRandomization_Succeeded = self->_count_DprivacydRandomization_Succeeded;
  count_DprivacydRandomization_Failed = self->_count_DprivacydRandomization_Failed;
  if (!count_DprivacydRandomization_Failed)
  {
    count_DprivacydRandomization_Failed = &unk_286801060;
  }

  if (!count_DprivacydRandomization_Succeeded)
  {
    count_DprivacydRandomization_Succeeded = &unk_286801060;
  }

  v378[16] = count_DprivacydRandomization_Failed;
  v378[17] = count_DprivacydRandomization_Succeeded;
  v377[17] = @"count_DprivacydRandomization_Succeeded";
  v377[18] = @"count_DprivacydBudgetCheck_Failed";
  count_DprivacydBudgetCheck_Succeeded = self->_count_DprivacydBudgetCheck_Succeeded;
  count_DprivacydBudgetCheck_Failed = self->_count_DprivacydBudgetCheck_Failed;
  if (!count_DprivacydBudgetCheck_Failed)
  {
    count_DprivacydBudgetCheck_Failed = &unk_286801060;
  }

  if (!count_DprivacydBudgetCheck_Succeeded)
  {
    count_DprivacydBudgetCheck_Succeeded = &unk_286801060;
  }

  v378[18] = count_DprivacydBudgetCheck_Failed;
  v378[19] = count_DprivacydBudgetCheck_Succeeded;
  v377[19] = @"count_DprivacydBudgetCheck_Succeeded";
  v377[20] = @"count_DprivacydPayloadCreation_Failed";
  count_DprivacydPayloadCreation_Succeeded = self->_count_DprivacydPayloadCreation_Succeeded;
  count_DprivacydPayloadCreation_Failed = self->_count_DprivacydPayloadCreation_Failed;
  if (!count_DprivacydPayloadCreation_Failed)
  {
    count_DprivacydPayloadCreation_Failed = &unk_286801060;
  }

  if (!count_DprivacydPayloadCreation_Succeeded)
  {
    count_DprivacydPayloadCreation_Succeeded = &unk_286801060;
  }

  v378[20] = count_DprivacydPayloadCreation_Failed;
  v378[21] = count_DprivacydPayloadCreation_Succeeded;
  v377[21] = @"count_DprivacydPayloadCreation_Succeeded";
  v377[22] = @"count_DprivacydUpload_Failed";
  count_DprivacydUpload_Succeeded = self->_count_DprivacydUpload_Succeeded;
  count_DprivacydUpload_Failed = self->_count_DprivacydUpload_Failed;
  if (!count_DprivacydUpload_Failed)
  {
    count_DprivacydUpload_Failed = &unk_286801060;
  }

  if (!count_DprivacydUpload_Succeeded)
  {
    count_DprivacydUpload_Succeeded = &unk_286801060;
  }

  v378[22] = count_DprivacydUpload_Failed;
  v378[23] = count_DprivacydUpload_Succeeded;
  v377[23] = @"count_DprivacydUpload_Succeeded";
  v377[24] = @"isActivated";
  v39 = isActivated;
  v359 = isActivated;
  if (!isActivated)
  {
    v39 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v14, v13);
  }

  v316 = v39;
  v378[24] = v39;
  v377[25] = @"isAllocated";
  isAllocated = self->_isAllocated;
  v358 = isAllocated;
  if (!isAllocated)
  {
    isAllocated = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v14, v13);
  }

  v315 = isAllocated;
  v378[25] = isAllocated;
  v377[26] = @"isActivated_implicit";
  v357 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v12, v14, self->_isActivated_implicit);
  v378[26] = v357;
  v377[27] = @"isAllocated_implicit";
  v356 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v41, v42, self->_isAllocated_implicit);
  v378[27] = v356;
  v377[28] = @"maxTimedelta_To_State_Activated";
  v46 = objc_msgSend_maxTimedelta_To_State_Activated(self, v43, v45, v44);
  v50 = v46;
  if (!v46)
  {
    v46 = objc_msgSend_null(MEMORY[0x277CBEB68], v47, v49, v48);
  }

  v314 = v46;
  v378[28] = v46;
  v377[29] = @"maxTimedelta_To_State_ActivatedFailed";
  v51 = objc_msgSend_maxTimedelta_To_State_ActivatedFailed(self, v47, v49, v48);
  v55 = v51;
  if (!v51)
  {
    v51 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v54, v53);
  }

  v313 = v51;
  v378[29] = v51;
  v377[30] = @"maxTimedelta_To_State_Allocated";
  v58 = objc_msgSend_maxTimedelta_To_State_Allocated(self, v52, v54, v53);
  v353 = v58;
  if (!v58)
  {
    v58 = objc_msgSend_null(MEMORY[0x277CBEB68], v56, v59, v57);
  }

  v312 = v58;
  v378[30] = v58;
  v377[31] = @"maxTimedelta_To_State_AllocatedFailed";
  v62 = objc_msgSend_maxTimedelta_To_State_AllocatedFailed(self, v56, v59, v57);
  v352 = v62;
  if (!v62)
  {
    v62 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v63, v61);
  }

  v311 = v62;
  v378[31] = v62;
  v377[32] = @"maxTimedelta_To_State_Deativated";
  v64 = objc_msgSend_maxTimedelta_To_State_Deativated(self, v60, v63, v61);
  v68 = v64;
  if (!v64)
  {
    v64 = objc_msgSend_null(MEMORY[0x277CBEB68], v65, v67, v66);
  }

  v310 = v64;
  v378[32] = v64;
  v377[33] = @"maxTimedelta_To_State_DeativatedFailed";
  v69 = objc_msgSend_maxTimedelta_To_State_DeativatedFailed(self, v65, v67, v66);
  v73 = v69;
  if (!v69)
  {
    v69 = objc_msgSend_null(MEMORY[0x277CBEB68], v70, v72, v71);
  }

  v309 = v69;
  v378[33] = v69;
  v377[34] = @"maxTimedelta_To_State_PerformTaskFailed";
  v74 = objc_msgSend_maxTimedelta_To_State_PerformTaskFailed(self, v70, v72, v71);
  v78 = v74;
  if (!v74)
  {
    v74 = objc_msgSend_null(MEMORY[0x277CBEB68], v75, v77, v76);
  }

  v308 = v74;
  v378[34] = v74;
  v377[35] = @"maxTimedelta_To_State_PerformTaskSucceeded";
  v79 = objc_msgSend_maxTimedelta_To_State_PerformTask(self, v75, v77, v76);
  v83 = v79;
  if (!v79)
  {
    v79 = objc_msgSend_null(MEMORY[0x277CBEB68], v80, v82, v81);
  }

  v307 = v79;
  v378[35] = v79;
  v377[36] = @"maxTimedelta_To_State_TaskCompleted";
  v84 = objc_msgSend_maxTimedelta_To_State_TaskCompleted(self, v80, v82, v81);
  v88 = v84;
  if (!v84)
  {
    v84 = objc_msgSend_null(MEMORY[0x277CBEB68], v85, v87, v86);
  }

  v306 = v84;
  v378[36] = v84;
  v377[37] = @"maxTimedelta_To_State_TaskCompletedFailed";
  v91 = objc_msgSend_maxTimedelta_To_State_TaskCompletedFailed(self, v85, v87, v86);
  v375 = v91;
  if (!v91)
  {
    v91 = objc_msgSend_null(MEMORY[0x277CBEB68], v89, v92, v90);
  }

  v305 = v91;
  v378[37] = v91;
  v377[38] = @"maxTimedelta_To_State_TaskFetched";
  v95 = objc_msgSend_maxTimedelta_To_State_TaskFetched(self, v89, v92, v90);
  v374 = v95;
  if (!v95)
  {
    v95 = objc_msgSend_null(MEMORY[0x277CBEB68], v93, v96, v94);
  }

  v304 = v95;
  v378[38] = v95;
  v377[39] = @"maxTimedelta_To_State_TaskFetchedFailed";
  v99 = objc_msgSend_maxTimedelta_To_State_TaskFetchedFailed(self, v93, v96, v94);
  v373 = v99;
  if (!v99)
  {
    v99 = objc_msgSend_null(MEMORY[0x277CBEB68], v97, v100, v98);
  }

  v303 = v99;
  v378[39] = v99;
  v377[40] = @"maxTimedelta_To_State_TaskScheduled";
  v103 = objc_msgSend_maxTimedelta_To_State_TaskScheduled(self, v97, v100, v98);
  v372 = v103;
  if (!v103)
  {
    v103 = objc_msgSend_null(MEMORY[0x277CBEB68], v101, v104, v102);
  }

  v302 = v103;
  v378[40] = v103;
  v377[41] = @"maxTimedelta_To_State_TaskScheduledFailed";
  v107 = objc_msgSend_maxTimedelta_To_State_TaskScheduledFailed(self, v101, v104, v102);
  v371 = v107;
  if (!v107)
  {
    v107 = objc_msgSend_null(MEMORY[0x277CBEB68], v105, v108, v106);
  }

  v301 = v107;
  v378[41] = v107;
  v377[42] = @"maxTimedelta_To_State_DprivacydDonationReceived";
  v111 = objc_msgSend_maxTimedelta_To_State_DprivacydDonationReceived(self, v105, v108, v106);
  v370 = v111;
  if (!v111)
  {
    v111 = objc_msgSend_null(MEMORY[0x277CBEB68], v109, v112, v110);
  }

  v300 = v111;
  v378[42] = v111;
  v377[43] = @"maxTimedelta_To_State_DprivacydDonationReceivedFailed";
  v115 = objc_msgSend_maxTimedelta_To_State_DprivacydDonationReceivedFailed(self, v109, v112, v110);
  v369 = v115;
  if (!v115)
  {
    v115 = objc_msgSend_null(MEMORY[0x277CBEB68], v113, v116, v114);
  }

  v299 = v115;
  v378[43] = v115;
  v377[44] = @"maxTimedelta_To_State_DprivacydRandomization";
  v119 = objc_msgSend_maxTimedelta_To_State_DprivacydRandomization(self, v113, v116, v114);
  v368 = v119;
  if (!v119)
  {
    v119 = objc_msgSend_null(MEMORY[0x277CBEB68], v117, v120, v118);
  }

  v298 = v119;
  v378[44] = v119;
  v377[45] = @"maxTimedelta_To_State_DprivacydRandomizationFailed";
  v123 = objc_msgSend_maxTimedelta_To_State_DprivacydRandomizationFailed(self, v117, v120, v118);
  v367 = v123;
  if (!v123)
  {
    v123 = objc_msgSend_null(MEMORY[0x277CBEB68], v121, v124, v122);
  }

  v297 = v123;
  v378[45] = v123;
  v377[46] = @"maxTimedelta_To_State_DprivacydBudgetCheck";
  v127 = objc_msgSend_maxTimedelta_To_State_DprivacydBudgetCheck(self, v121, v124, v122);
  v366 = v127;
  if (!v127)
  {
    v127 = objc_msgSend_null(MEMORY[0x277CBEB68], v125, v128, v126);
  }

  v296 = v127;
  v378[46] = v127;
  v377[47] = @"maxTimedelta_To_State_DprivacydBudgetCheckFailed";
  v131 = objc_msgSend_maxTimedelta_To_State_DprivacydBudgetCheckFailed(self, v125, v128, v126);
  v365 = v131;
  if (!v131)
  {
    v131 = objc_msgSend_null(MEMORY[0x277CBEB68], v129, v132, v130);
  }

  v295 = v131;
  v378[47] = v131;
  v377[48] = @"maxTimedelta_To_State_DprivacydPayloadCreation";
  v135 = objc_msgSend_maxTimedelta_To_State_DprivacydPayloadCreation(self, v129, v132, v130);
  v364 = v135;
  if (!v135)
  {
    v135 = objc_msgSend_null(MEMORY[0x277CBEB68], v133, v136, v134);
  }

  v294 = v135;
  v378[48] = v135;
  v377[49] = @"maxTimedelta_To_State_DprivacydPayloadCreationFailed";
  v139 = objc_msgSend_maxTimedelta_To_State_DprivacydPayloadCreationFailed(self, v133, v136, v134);
  v363 = v139;
  if (!v139)
  {
    v139 = objc_msgSend_null(MEMORY[0x277CBEB68], v137, v140, v138);
  }

  v293 = v139;
  v378[49] = v139;
  v377[50] = @"maxTimedelta_To_State_DprivacydUpload";
  v143 = objc_msgSend_maxTimedelta_To_State_DprivacydUpload(self, v137, v140, v138);
  v362 = v143;
  if (!v143)
  {
    v143 = objc_msgSend_null(MEMORY[0x277CBEB68], v141, v144, v142);
  }

  v292 = v143;
  v378[50] = v143;
  v377[51] = @"maxTimedelta_To_State_DprivacydUploadFailed";
  v147 = objc_msgSend_maxTimedelta_To_State_DprivacydUploadFailed(self, v141, v144, v142);
  v361 = v147;
  if (!v147)
  {
    v147 = objc_msgSend_null(MEMORY[0x277CBEB68], v145, v148, v146);
  }

  v291 = v147;
  v378[51] = v147;
  v377[52] = @"maxTimedelta_To_State_Unexpeted";
  v151 = objc_msgSend_maxTimedelta_To_State_Unexpeted(self, v145, v148, v146);
  v346 = v151;
  if (!v151)
  {
    v151 = objc_msgSend_null(MEMORY[0x277CBEB68], v149, v152, v150);
  }

  v290 = v151;
  v378[52] = v151;
  v378[53] = v9;
  v377[53] = @"state";
  v377[54] = @"stateString";
  v153 = objc_msgSend_objectForKey_(v376, v149, v152, v9);
  stateId = self->_stateId;
  v345 = v153;
  v378[54] = v153;
  v378[55] = stateId;
  v377[55] = @"stateID";
  v377[56] = @"timestamp";
  v344 = objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v155, v156, self->_bucketEndTime);
  v378[56] = v344;
  v377[57] = @"timestamp_Activated";
  timestamp_Activated_Succeeded = self->_timestamp_Activated_Succeeded;
  if (timestamp_Activated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v157, v158, timestamp_Activated_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v157, v158, 0);
  }
  v343 = ;
  v378[57] = v343;
  v377[58] = @"timestamp_Allocated";
  timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Succeeded;
  if (timestamp_Allocated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v160, v161, timestamp_Allocated_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v160, v161, 0);
  }
  v342 = ;
  v378[58] = v342;
  v377[59] = @"timestamp_Deactivated";
  timestamp_Deactivated_Succeeded = self->_timestamp_Deactivated_Succeeded;
  if (timestamp_Deactivated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v163, v164, timestamp_Deactivated_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v163, v164, 0);
  }
  v341 = ;
  v378[59] = v341;
  v377[60] = @"timestamp_PerformTask_Failed";
  timestamp_PerformTask_Failed = self->_timestamp_PerformTask_Failed;
  if (timestamp_PerformTask_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v166, v167, timestamp_PerformTask_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v166, v167, 0);
  }
  v340 = ;
  v378[60] = v340;
  v377[61] = @"timestamp_PerformTask_Succeeded";
  timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Succeeded;
  if (timestamp_PerformTask_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v169, v170, timestamp_PerformTask_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v169, v170, 0);
  }
  v339 = ;
  v378[61] = v339;
  v377[62] = @"timestamp_Stop_Failed";
  timestamp_Stop_Failed = self->_timestamp_Stop_Failed;
  if (timestamp_Stop_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v172, v173, timestamp_Stop_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v172, v173, 0);
  }
  v338 = ;
  v378[62] = v338;
  v377[63] = @"timestamp_Stop_Succeeded";
  timestamp_Stop_Succeeded = self->_timestamp_Stop_Succeeded;
  if (timestamp_Stop_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v175, v176, timestamp_Stop_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v175, v176, 0);
  }
  v337 = ;
  v378[63] = v337;
  v377[64] = @"timestamp_TaskCompleted_Failed";
  timestamp_TaskCompleted_Failed = self->_timestamp_TaskCompleted_Failed;
  if (timestamp_TaskCompleted_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v178, v179, timestamp_TaskCompleted_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v178, v179, 0);
  }
  v336 = ;
  v378[64] = v336;
  v377[65] = @"timestamp_TaskCompleted_Succeeded";
  timestamp_TaskCompleted_Succeeded = self->_timestamp_TaskCompleted_Succeeded;
  if (timestamp_TaskCompleted_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v181, v182, timestamp_TaskCompleted_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v181, v182, 0);
  }
  v335 = ;
  v378[65] = v335;
  v377[66] = @"timestamp_TaskFetched_Failed";
  timestamp_TaskFetched_Failed = self->_timestamp_TaskFetched_Failed;
  if (timestamp_TaskFetched_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v184, v185, timestamp_TaskFetched_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v184, v185, 0);
  }
  v334 = ;
  v378[66] = v334;
  v377[67] = @"timestamp_TaskFetched_Succeeded";
  timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Succeeded;
  if (timestamp_TaskFetched_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v187, v188, timestamp_TaskFetched_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v187, v188, 0);
  }
  v333 = ;
  v378[67] = v333;
  v377[68] = @"timestamp_TaskScheduled_Failed";
  timestamp_TaskScheduled_Failed = self->_timestamp_TaskScheduled_Failed;
  if (timestamp_TaskScheduled_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v190, v191, timestamp_TaskScheduled_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v190, v191, 0);
  }
  v332 = ;
  v378[68] = v332;
  v377[69] = @"timestamp_TaskScheduled_Succeeded";
  timestamp_TaskScheduled_Succeeded = self->_timestamp_TaskScheduled_Succeeded;
  if (timestamp_TaskScheduled_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v193, v194, timestamp_TaskScheduled_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v193, v194, 0);
  }
  v331 = ;
  v378[69] = v331;
  v377[70] = @"timestamp_DprivacydDonationReceived_Failed";
  timestamp_DprivacydDonationReceived_Failed = self->_timestamp_DprivacydDonationReceived_Failed;
  if (timestamp_DprivacydDonationReceived_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v196, v197, timestamp_DprivacydDonationReceived_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v196, v197, 0);
  }
  v330 = ;
  v378[70] = v330;
  v377[71] = @"timestamp_DprivacydDonationReceived_Succeeded";
  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Succeeded;
  if (timestamp_DprivacydDonationReceived_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v199, v200, timestamp_DprivacydDonationReceived_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v199, v200, 0);
  }
  v329 = ;
  v378[71] = v329;
  v377[72] = @"timestamp_DprivacydRandomization_Failed";
  timestamp_DprivacydRandomization_Failed = self->_timestamp_DprivacydRandomization_Failed;
  if (timestamp_DprivacydRandomization_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v202, v203, timestamp_DprivacydRandomization_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v202, v203, 0);
  }
  v327 = ;
  v378[72] = v327;
  v377[73] = @"timestamp_DprivacydRandomization_Succeeded";
  timestamp_DprivacydRandomization_Succeeded = self->_timestamp_DprivacydRandomization_Succeeded;
  if (timestamp_DprivacydRandomization_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v205, v206, timestamp_DprivacydRandomization_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v205, v206, 0);
  }
  v326 = ;
  v378[73] = v326;
  v377[74] = @"timestamp_DprivacydBudgetCheck_Failed";
  timestamp_DprivacydBudgetCheck_Failed = self->_timestamp_DprivacydBudgetCheck_Failed;
  if (timestamp_DprivacydBudgetCheck_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v208, v209, timestamp_DprivacydBudgetCheck_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v208, v209, 0);
  }
  v325 = ;
  v378[74] = v325;
  v377[75] = @"timestamp_DprivacydBudgetCheck_Succeeded";
  timestamp_DprivacydBudgetCheck_Succeeded = self->_timestamp_DprivacydBudgetCheck_Succeeded;
  if (timestamp_DprivacydBudgetCheck_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v211, v212, timestamp_DprivacydBudgetCheck_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v211, v212, 0);
  }
  v324 = ;
  v378[75] = v324;
  v377[76] = @"timestamp_DprivacydPayloadCreation_Failed";
  timestamp_DprivacydPayloadCreation_Failed = self->_timestamp_DprivacydPayloadCreation_Failed;
  if (timestamp_DprivacydPayloadCreation_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v214, v215, timestamp_DprivacydPayloadCreation_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v214, v215, 0);
  }
  v323 = ;
  v378[76] = v323;
  v377[77] = @"timestamp_DprivacydPayloadCreation_Succeeded";
  timestamp_DprivacydPayloadCreation_Succeeded = self->_timestamp_DprivacydPayloadCreation_Succeeded;
  if (timestamp_DprivacydPayloadCreation_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v217, v218, timestamp_DprivacydPayloadCreation_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v217, v218, 0);
  }
  v322 = ;
  v378[77] = v322;
  v377[78] = @"timestamp_DprivacydUpload_Failed";
  timestamp_DprivacydUpload_Failed = self->_timestamp_DprivacydUpload_Failed;
  if (timestamp_DprivacydUpload_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v220, v221, timestamp_DprivacydUpload_Failed);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v220, v221, 0);
  }
  v321 = ;
  v378[78] = v321;
  v377[79] = @"timestamp_DprivacydUpload_Succeeded";
  timestamp_DprivacydUpload_Succeeded = self->_timestamp_DprivacydUpload_Succeeded;
  v349 = v78;
  if (timestamp_DprivacydUpload_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v223, v224, timestamp_DprivacydUpload_Succeeded);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v223, v224, 0);
  }

  v320 = v354 = v55;
  v378[79] = v320;
  v377[80] = @"trialIdentifiers_BMLTIdentifiers_trialDeploymentID";
  v319 = objc_msgSend_bmltIdentifiers(self->_trialIdentifiers, v226, v228, v227);
  v232 = objc_msgSend_trialDeploymentID(v319, v229, v231, v230);
  v236 = v232;
  if (!v232)
  {
    v232 = objc_msgSend_null(MEMORY[0x277CBEB68], v233, v235, v234);
  }

  v351 = v68;
  v355 = v50;
  v289 = v232;
  v378[80] = v232;
  v377[81] = @"trialIdentifiers_BMLTIdentifiers_trialTaskID";
  v318 = objc_msgSend_bmltIdentifiers(self->_trialIdentifiers, v233, v235, v234);
  v240 = objc_msgSend_trialTaskID(v318, v237, v239, v238);
  v244 = v240;
  if (!v240)
  {
    v240 = objc_msgSend_null(MEMORY[0x277CBEB68], v241, v243, v242);
  }

  v348 = v83;
  v288 = v240;
  v378[81] = v240;
  v377[82] = @"trialIdentifiers_experimentIdentifiers_trialDeploymentID";
  v317 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v241, v243, v242);
  v250 = objc_msgSend_trialDeploymentID(v317, v245, v247, v246);
  v252 = v250;
  if (!v250)
  {
    v252 = objc_msgSend_null(MEMORY[0x277CBEB68], v248, v251, v249);
  }

  v347 = v88;
  v350 = v73;
  v378[82] = v252;
  v377[83] = @"trialIdentifiers_experimentIdentifiers_trialExperimentID";
  v253 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v248, v251, v249);
  v259 = objc_msgSend_trialExperimentID(v253, v254, v256, v255);
  v261 = v259;
  if (!v259)
  {
    v261 = objc_msgSend_null(MEMORY[0x277CBEB68], v257, v260, v258);
  }

  v378[83] = v261;
  v377[84] = @"trialIdentifiers_experimentIdentifiers_trialTreatmentID";
  v262 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v257, v260, v258);
  v268 = objc_msgSend_trialTreatmentID(v262, v263, v265, v264);
  v270 = v268;
  if (!v268)
  {
    v270 = objc_msgSend_null(MEMORY[0x277CBEB68], v266, v269, v267);
  }

  v378[84] = v270;
  v328 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v266, v269, v378, v377, 85);
  if (!v268)
  {
  }

  if (!v259)
  {
  }

  if (!v250)
  {
  }

  if (!v244)
  {
  }

  if (!v236)
  {
  }

  if (!v346)
  {
  }

  v271 = v361;
  if (!v361)
  {

    v271 = 0;
  }

  v272 = v362;
  if (!v362)
  {

    v272 = 0;
  }

  v273 = v363;
  if (!v363)
  {

    v273 = 0;
  }

  v274 = v364;
  if (!v364)
  {

    v274 = 0;
  }

  v275 = v365;
  if (!v365)
  {

    v275 = 0;
  }

  v276 = v366;
  if (!v366)
  {

    v276 = 0;
  }

  v277 = v367;
  if (!v367)
  {

    v277 = 0;
  }

  v278 = v368;
  if (!v368)
  {

    v278 = 0;
  }

  v279 = v369;
  if (!v369)
  {

    v279 = 0;
  }

  v280 = v370;
  if (!v370)
  {

    v280 = 0;
  }

  v281 = v371;
  if (!v371)
  {

    v281 = 0;
  }

  v282 = v372;
  if (!v372)
  {

    v282 = 0;
  }

  v283 = v373;
  if (!v373)
  {

    v283 = 0;
  }

  v284 = v374;
  if (!v374)
  {

    v284 = 0;
  }

  v285 = v375;
  if (!v375)
  {

    v285 = 0;
  }

  if (!v347)
  {
  }

  if (!v348)
  {
  }

  if (!v349)
  {
  }

  if (!v350)
  {
  }

  if (!v351)
  {
  }

  if (!v352)
  {
  }

  if (!v353)
  {
  }

  if (!v354)
  {
  }

  if (!v355)
  {
  }

  if (!v358)
  {
  }

  if (!v359)
  {
  }

  v286 = v328;
  return v328;
}

- (BOOL)uploadToCoreAnalytics
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_getDictionaryRepresentation(self, a2, v3, v2);
  v5 = LBFLogContextBitacoraStateInfo;
  if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_255ED5000, v5, OS_LOG_TYPE_INFO, "Emit CA Message %@", buf, 0xCu);
  }

  v9 = v4;
  v6 = v4;
  v7 = AnalyticsSendEventLazy();

  return v7;
}

- (id)maxTimedelta_To_State_Activated
{
  timedeltas_To_State_Activated = self->_timedeltas_To_State_Activated;
  if (timedeltas_To_State_Activated)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Activated, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_ActivatedFailed
{
  timedeltas_To_State_ActivatedFailed = self->_timedeltas_To_State_ActivatedFailed;
  if (timedeltas_To_State_ActivatedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_ActivatedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_Allocated
{
  timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
  if (timedeltas_To_State_Allocated)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Allocated, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_AllocatedFailed
{
  timedeltas_To_State_AllocatedFailed = self->_timedeltas_To_State_AllocatedFailed;
  if (timedeltas_To_State_AllocatedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_AllocatedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_Deativated
{
  timedeltas_To_State_Deactivated = self->_timedeltas_To_State_Deactivated;
  if (timedeltas_To_State_Deactivated)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Deactivated, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DeativatedFailed
{
  timedeltas_To_State_DeactivatedFailed = self->_timedeltas_To_State_DeactivatedFailed;
  if (timedeltas_To_State_DeactivatedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DeactivatedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_PerformTaskFailed
{
  timedeltas_To_State_PerformTaskFailed = self->_timedeltas_To_State_PerformTaskFailed;
  if (timedeltas_To_State_PerformTaskFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_PerformTaskFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_PerformTask
{
  timedeltas_To_State_PerformTask = self->_timedeltas_To_State_PerformTask;
  if (timedeltas_To_State_PerformTask)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_PerformTask, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskCompleted
{
  timedeltas_To_State_TaskCompleted = self->_timedeltas_To_State_TaskCompleted;
  if (timedeltas_To_State_TaskCompleted)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskCompleted, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskCompletedFailed
{
  timedeltas_To_State_TaskCompletedFailed = self->_timedeltas_To_State_TaskCompletedFailed;
  if (timedeltas_To_State_TaskCompletedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskCompletedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskFetched
{
  timedeltas_To_State_TaskFetched = self->_timedeltas_To_State_TaskFetched;
  if (timedeltas_To_State_TaskFetched)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskFetched, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskFetchedFailed
{
  timedeltas_To_State_TaskFetchedFailed = self->_timedeltas_To_State_TaskFetchedFailed;
  if (timedeltas_To_State_TaskFetchedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskFetchedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskScheduled
{
  timedeltas_To_State_TaskScheduled = self->_timedeltas_To_State_TaskScheduled;
  if (timedeltas_To_State_TaskScheduled)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskScheduled, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_TaskScheduledFailed
{
  timedeltas_To_State_TaskScheduledFailed = self->_timedeltas_To_State_TaskScheduledFailed;
  if (timedeltas_To_State_TaskScheduledFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskScheduledFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_Unexpeted
{
  timedeltas_To_State_Unexpeted = self->_timedeltas_To_State_Unexpeted;
  if (timedeltas_To_State_Unexpeted)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Unexpeted, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydDonationReceived
{
  timedeltas_To_State_DprivacydDonationReceived = self->_timedeltas_To_State_DprivacydDonationReceived;
  if (timedeltas_To_State_DprivacydDonationReceived)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydDonationReceived, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydDonationReceivedFailed
{
  timedeltas_To_State_DprivacydDonationReceivedFailed = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
  if (timedeltas_To_State_DprivacydDonationReceivedFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydDonationReceivedFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydRandomization
{
  timedeltas_To_State_DprivacydRandomization = self->_timedeltas_To_State_DprivacydRandomization;
  if (timedeltas_To_State_DprivacydRandomization)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydRandomization, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydRandomizationFailed
{
  timedeltas_To_State_DprivacydRandomizationFailed = self->_timedeltas_To_State_DprivacydRandomizationFailed;
  if (timedeltas_To_State_DprivacydRandomizationFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydRandomizationFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydBudgetCheck
{
  timedeltas_To_State_DprivacydBudgetCheck = self->_timedeltas_To_State_DprivacydBudgetCheck;
  if (timedeltas_To_State_DprivacydBudgetCheck)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydBudgetCheck, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydBudgetCheckFailed
{
  timedeltas_To_State_DprivacydBudgetCheckFailed = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
  if (timedeltas_To_State_DprivacydBudgetCheckFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydBudgetCheckFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydPayloadCreation
{
  timedeltas_To_State_DprivacydPayloadCreation = self->_timedeltas_To_State_DprivacydPayloadCreation;
  if (timedeltas_To_State_DprivacydPayloadCreation)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydPayloadCreation, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydPayloadCreationFailed
{
  timedeltas_To_State_DprivacydPayloadCreationFailed = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
  if (timedeltas_To_State_DprivacydPayloadCreationFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydPayloadCreationFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydUpload
{
  timedeltas_To_State_DprivacydUpload = self->_timedeltas_To_State_DprivacydUpload;
  if (timedeltas_To_State_DprivacydUpload)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydUpload, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)maxTimedelta_To_State_DprivacydUploadFailed
{
  timedeltas_To_State_DprivacydUploadFailed = self->_timedeltas_To_State_DprivacydUploadFailed;
  if (timedeltas_To_State_DprivacydUploadFailed)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydUploadFailed, a2, v2, @"@max.self");
    objc_msgSend_doubleValue(v5, v6, v8, v7);
    v10.n128_f64[0] = v9 * 1000.0;
    v12 = objc_msgSend_numberWithLong_(v4, v11, v10, v10.n128_f64[0]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getPETState
{
  v375 = *MEMORY[0x277D85DE8];
  v368 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v3 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBitacoraState);
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSince1970(self->_bucketEndTime, v5, v7, v6);
  v11 = objc_msgSend_numberWithDouble_(v4, v8, v10, v9);
  v367 = objc_msgSend_longValue(v11, v12, v14, v13);

  objc_msgSend_setCountTaskFetchedFailed_(v3, v15, v16, 0);
  objc_msgSend_setCountTaskFetchedSucceeded_(v3, v17, v18, 0);
  objc_msgSend_setCountTaskScheduledFailed_(v3, v19, v20, 0);
  objc_msgSend_setCountTaskScheduledSucceeded_(v3, v21, v22, 0);
  objc_msgSend_setCountTaskCompletedFailed_(v3, v23, v24, 0);
  objc_msgSend_setCountTaskCompletedSucceeded_(v3, v25, v26, 0);
  objc_msgSend_setCountPerformTaskFailed_(v3, v27, v28, 0);
  objc_msgSend_setCountPerformTaskSucceeded_(v3, v29, v30, 0);
  objc_msgSend_setCountStopFailed_(v3, v31, v32, 0);
  objc_msgSend_setCountStopSucceeded_(v3, v33, v34, 0);
  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  selfCopy = self;
  v35 = self->_bitacoraEvents;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, v37, &v370, v374, 16);
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v371;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v371 != v41)
        {
          objc_enumerationMutation(v35);
        }

        v43 = *(*(&v370 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
          v45 = LBFLogContextEventsHolder;
          if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_255ED5000, v45, OS_LOG_TYPE_INFO, "Lighthouse Plugin Event.", buf, 2u);
          }

          v49 = objc_msgSend_performTrialTaskStatus(v44, v46, v48, v47);

          if (v49)
          {
            v53 = objc_msgSend_performTrialTaskStatus(v44, v50, v52, v51);
            v57 = objc_msgSend_succeeded(v53, v54, v56, v55);

            if (v57)
            {
              v61 = objc_msgSend_countPerformTaskSucceeded(v3, v58, v60, v59);
              objc_msgSend_setCountPerformTaskSucceeded_(v3, v62, v63, (v61 + 1));
            }

            else
            {
              v64 = objc_msgSend_countPerformTaskFailed(v3, v58, v60, v59);
              objc_msgSend_setCountPerformTaskFailed_(v3, v65, v66, (v64 + 1));
            }
          }

          v67 = objc_msgSend_performTaskStatus(v44, v50, v52, v51);

          if (v67)
          {
            v71 = objc_msgSend_performTaskStatus(v44, v68, v70, v69);
            v75 = objc_msgSend_succeeded(v71, v72, v74, v73);

            if (v75)
            {
              v79 = objc_msgSend_countPerformTaskSucceeded(v3, v76, v78, v77);
              objc_msgSend_setCountPerformTaskSucceeded_(v3, v80, v81, (v79 + 1));
            }

            else
            {
              v82 = objc_msgSend_countPerformTaskFailed(v3, v76, v78, v77);
              objc_msgSend_setCountPerformTaskFailed_(v3, v83, v84, (v82 + 1));
            }
          }

          v85 = objc_msgSend_stop(v44, v68, v70, v69);

          if (v85)
          {
            v89 = objc_msgSend_stop(v44, v86, v88, v87);
            v93 = objc_msgSend_succeeded(v89, v90, v92, v91);

            if (v93)
            {
              v97 = objc_msgSend_countStopSucceeded(v3, v94, v96, v95);
              objc_msgSend_setCountStopSucceeded_(v3, v98, v99, (v97 + 1));
            }

            else
            {
              v100 = objc_msgSend_countStopFailed(v3, v94, v96, v95);
              objc_msgSend_setCountStopFailed_(v3, v101, v102, (v100 + 1));
            }
          }

          v103 = objc_msgSend_trialIdentifiers(v44, v86, v88, v87);

          v40 = v103;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v104 = v43;
          v108 = objc_msgSend_taskFetched(v104, v105, v107, v106);

          if (v108)
          {
            v112 = objc_msgSend_taskFetched(v104, v109, v111, v110);
            v116 = objc_msgSend_succeeded(v112, v113, v115, v114);

            if (v116)
            {
              v120 = objc_msgSend_countTaskFetchedSucceeded(v3, v117, v119, v118);
              objc_msgSend_setCountTaskFetchedSucceeded_(v3, v121, v122, (v120 + 1));
            }

            else
            {
              v123 = objc_msgSend_countTaskFetchedFailed(v3, v117, v119, v118);
              objc_msgSend_setCountTaskFetchedFailed_(v3, v124, v125, (v123 + 1));
            }
          }

          v126 = objc_msgSend_taskCompleted(v104, v109, v111, v110);

          if (v126)
          {
            v130 = objc_msgSend_taskCompleted(v104, v127, v129, v128);
            v134 = objc_msgSend_succeeded(v130, v131, v133, v132);

            if (v134)
            {
              v138 = objc_msgSend_countTaskCompletedSucceeded(v3, v135, v137, v136);
              objc_msgSend_setCountTaskCompletedSucceeded_(v3, v139, v140, (v138 + 1));
            }

            else
            {
              v141 = objc_msgSend_countTaskCompletedFailed(v3, v135, v137, v136);
              objc_msgSend_setCountTaskCompletedFailed_(v3, v142, v143, (v141 + 1));
            }
          }

          v144 = objc_msgSend_taskScheduled(v104, v127, v129, v128);

          if (v144)
          {
            v148 = objc_msgSend_taskScheduled(v104, v145, v147, v146);
            v152 = objc_msgSend_succeeded(v148, v149, v151, v150);

            if (v152)
            {
              v156 = objc_msgSend_countTaskScheduledSucceeded(v3, v153, v155, v154);
              objc_msgSend_setCountTaskScheduledSucceeded_(v3, v157, v158, (v156 + 1));
            }

            else
            {
              v159 = objc_msgSend_countTaskScheduledFailed(v3, v153, v155, v154);
              objc_msgSend_setCountTaskScheduledFailed_(v3, v160, v161, (v159 + 1));
            }
          }

          v162 = objc_msgSend_activityScheduleStatus(v104, v145, v147, v146);

          if (v162)
          {
            v166 = objc_msgSend_activityScheduleStatus(v104, v163, v165, v164);
            v170 = objc_msgSend_scheduled(v166, v167, v169, v168);

            if (v170)
            {
              v174 = objc_msgSend_countTaskScheduledSucceeded(v3, v171, v173, v172);
              objc_msgSend_setCountTaskScheduledSucceeded_(v3, v175, v176, (v174 + 1));
            }

            else
            {
              v177 = objc_msgSend_countTaskScheduledFailed(v3, v171, v173, v172);
              objc_msgSend_setCountTaskScheduledFailed_(v3, v178, v179, (v177 + 1));
            }
          }

          v180 = objc_msgSend_trialIdentifiers(v104, v163, v165, v164);

          v40 = v180;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v183 = v43;
          v184 = LBFLogContextEventsHolder;
          if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_255ED5000, v184, OS_LOG_TYPE_INFO, "Triald Event.", buf, 2u);
          }

          if (objc_msgSend_eventType(v183, v185, v187, v186))
          {
            if (objc_msgSend_eventType(v183, v188, v190, v189) == 2)
            {
              objc_msgSend_setIsActivated_(v3, v191, v193, 1);
            }

            if (objc_msgSend_eventType(v183, v191, v193, v192) == 1)
            {
              objc_msgSend_setIsAllocated_(v3, v194, v196, 1);
            }

            if (objc_msgSend_eventType(v183, v194, v196, v195) == 3)
            {
              objc_msgSend_setIsActivated_(v3, v188, v190, 0);
            }
          }

          if (!v40)
          {
            v40 = objc_msgSend_trialIdentifiers(v183, v188, v190, v189);
          }
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v181, v182, &v370, v374, 16);
    }

    while (v39);
  }

  else
  {
    v40 = 0;
  }

  if ((objc_msgSend_isActivated(v3, v197, v199, v198) & 1) == 0)
  {
    objc_msgSend_setIsActivated_(v3, v200, v202, selfCopy->_isActivated_implicit);
  }

  if ((objc_msgSend_isAllocated(v3, v200, v202, v201) & 1) == 0)
  {
    objc_msgSend_setIsAllocated_(v3, v203, v205, selfCopy->_isAllocated_implicit);
  }

  v206 = objc_msgSend_experimentIdentifiers(v40, v203, v205, v204);

  if (v206)
  {
    v210 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
    objc_msgSend_setExperimentIdentifiers_(v368, v211, v212, v210);

    v216 = objc_msgSend_experimentIdentifiers(v40, v213, v215, v214);
    v220 = objc_msgSend_trialTreatmentID(v216, v217, v219, v218);
    v224 = objc_msgSend_experimentIdentifiers(v368, v221, v223, v222);
    objc_msgSend_setTrialTreatmentID_(v224, v225, v226, v220);

    v230 = objc_msgSend_experimentIdentifiers(v40, v227, v229, v228);
    v234 = objc_msgSend_trialDeploymentID(v230, v231, v233, v232);
    v238 = objc_msgSend_experimentIdentifiers(v368, v235, v237, v236);
    objc_msgSend_setTrialDeploymentID_(v238, v239, v240, v234);

    v244 = objc_msgSend_experimentIdentifiers(v40, v241, v243, v242);
    v248 = objc_msgSend_trialExperimentID(v244, v245, v247, v246);
    v252 = objc_msgSend_experimentIdentifiers(v368, v249, v251, v250);
    objc_msgSend_setTrialExperimentID_(v252, v253, v254, v248);

    objc_msgSend_setTrialIdentifierType_(v3, v255, v256, 1);
    v260 = objc_msgSend_experimentIdentifiers(v40, v257, v259, v258);
    v264 = objc_msgSend_trialTreatmentID(v260, v261, v263, v262);
    objc_msgSend_setTrialTreatmentID_(v3, v265, v266, v264);

    v270 = objc_msgSend_experimentIdentifiers(v40, v267, v269, v268);
    v274 = objc_msgSend_trialDeploymentID(v270, v271, v273, v272);
    objc_msgSend_setTrialDeploymentID_(v3, v275, v276, v274);

    v280 = objc_msgSend_experimentIdentifiers(v40, v277, v279, v278);
    v284 = objc_msgSend_trialExperimentID(v280, v281, v283, v282);
    objc_msgSend_setTrialExperimentID_(v3, v285, v286, v284);
  }

  v287 = objc_msgSend_bmltIdentifiers(v40, v207, v209, v208);

  if (v287)
  {
    v290 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    objc_msgSend_setBmltIdentifiers_(v368, v291, v292, v290);

    v296 = objc_msgSend_bmltIdentifiers(v40, v293, v295, v294);
    v300 = objc_msgSend_trialDeploymentID(v296, v297, v299, v298);
    v304 = objc_msgSend_bmltIdentifiers(v368, v301, v303, v302);
    objc_msgSend_setTrialDeploymentID_(v304, v305, v306, v300);

    v310 = objc_msgSend_bmltIdentifiers(v40, v307, v309, v308);
    v314 = objc_msgSend_trialTaskID(v310, v311, v313, v312);
    v318 = objc_msgSend_bmltIdentifiers(v368, v315, v317, v316);
    objc_msgSend_setTrialTaskID_(v318, v319, v320, v314);

    objc_msgSend_setTrialIdentifierType_(v3, v321, v322, 2);
    v326 = objc_msgSend_bmltIdentifiers(v40, v323, v325, v324);
    v330 = objc_msgSend_trialDeploymentID(v326, v327, v329, v328);
    objc_msgSend_setTrialDeploymentID_(v3, v331, v332, v330);

    v336 = objc_msgSend_bmltIdentifiers(v40, v333, v335, v334);
    v340 = objc_msgSend_trialTaskID(v336, v337, v339, v338);
    objc_msgSend_setTrialTaskID_(v3, v341, v342, v340);
  }

  objc_msgSend_setTrialIdentifiers_(v3, v288, v289, v368);
  objc_msgSend_setTimestamp_(v3, v343, v344, v367);
  v348 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v345, v347, v346);
  v352 = objc_msgSend_UUIDString(v348, v349, v351, v350);
  objc_msgSend_setTelemetryID_(v3, v353, v354, v352);

  v358 = objc_msgSend_getContextId(LBFContextId, v355, v357, v356);
  v362 = objc_msgSend_UUIDString(v358, v359, v361, v360);
  objc_msgSend_setContextID_(v3, v363, v364, v362);

  return v3;
}

+ (id)getCAEventDictionaryFromBiomeEvent:(id)event
{
  v811[42] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = objc_msgSend_getContextId(LBFContextId, v4, v6, v5);
  v777 = objc_msgSend_UUIDString(v7, v8, v10, v9);

  v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v13, v12);
  v776 = objc_msgSend_UUIDString(v14, v15, v17, v16);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v775 = 0;
    v797 = 0;
    v798 = 0;
    v799 = 0;
    v34 = 0;
    v806 = 0;
    v807 = 0;
    v808 = 0;
    v79 = 0;
    v804 = 0;
    v803 = 0;
    v802 = 0;
    v801 = 0;
    v800 = 0;
    v796 = 0;
    v22 = 0;
    v117 = &unk_286801060;
    goto LABEL_22;
  }

  v18 = eventCopy;
  v22 = objc_msgSend_timestamp(v18, v19, v21, v20);
  v26 = objc_msgSend_trialIdentifiers(v18, v23, v25, v24);
  v30 = objc_msgSend_bmltIdentifiers(v26, v27, v29, v28);
  v34 = objc_msgSend_trialDeploymentID(v30, v31, v33, v32);

  v38 = objc_msgSend_trialIdentifiers(v18, v35, v37, v36);
  v42 = objc_msgSend_bmltIdentifiers(v38, v39, v41, v40);
  v806 = objc_msgSend_trialTaskID(v42, v43, v45, v44);

  v49 = objc_msgSend_trialIdentifiers(v18, v46, v48, v47);
  v53 = objc_msgSend_experimentIdentifiers(v49, v50, v52, v51);
  v807 = objc_msgSend_trialDeploymentID(v53, v54, v56, v55);

  v60 = objc_msgSend_trialIdentifiers(v18, v57, v59, v58);
  v64 = objc_msgSend_experimentIdentifiers(v60, v61, v63, v62);
  v808 = objc_msgSend_trialExperimentID(v64, v65, v67, v66);

  v71 = objc_msgSend_trialIdentifiers(v18, v68, v70, v69);
  v75 = objc_msgSend_experimentIdentifiers(v71, v72, v74, v73);
  v79 = objc_msgSend_trialTreatmentID(v75, v76, v78, v77);

  v83 = objc_msgSend_taskFetched(v18, v80, v82, v81);

  if (v83)
  {
    v87 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_taskFetched(v18, v84, v86, v85);
    v92 = objc_msgSend_succeeded(v88, v89, v91, v90);
    v775 = objc_msgSend_numberWithBool_(v87, v93, v94, v92);

    v98 = objc_msgSend_taskFetched(v18, v95, v97, v96);
    LOBYTE(v88) = objc_msgSend_succeeded(v98, v99, v101, v100);

    if ((v88 & 1) == 0)
    {
      v102 = objc_msgSend_taskFetched(v18, v84, v86, v85);
      v804 = objc_msgSend_errorDomain(v102, v103, v105, v104);

      v106 = MEMORY[0x277CCACA8];
      v110 = objc_msgSend_taskFetched(v18, v107, v109, v108);
      v114 = objc_msgSend_errorCode(v110, v111, v113, v112);
      v803 = objc_msgSend_stringWithFormat_(v106, v115, v116, @"%d", v114);

      goto LABEL_8;
    }
  }

  else
  {
    v775 = 0;
  }

  v804 = 0;
  v803 = 0;
LABEL_8:
  v118 = objc_msgSend_taskCompleted(v18, v84, v86, v85);

  if (!v118)
  {
    v802 = 0;
    goto LABEL_12;
  }

  v122 = MEMORY[0x277CCABB0];
  v123 = objc_msgSend_taskCompleted(v18, v119, v121, v120);
  v127 = objc_msgSend_succeeded(v123, v124, v126, v125);
  v802 = objc_msgSend_numberWithBool_(v122, v128, v129, v127);

  v133 = objc_msgSend_taskCompleted(v18, v130, v132, v131);
  LOBYTE(v123) = objc_msgSend_succeeded(v133, v134, v136, v135);

  if (v123)
  {
LABEL_12:
    v801 = 0;
    v800 = 0;
    goto LABEL_13;
  }

  v137 = objc_msgSend_taskCompleted(v18, v119, v121, v120);
  v801 = objc_msgSend_errorDomain(v137, v138, v140, v139);

  v141 = MEMORY[0x277CCACA8];
  v145 = objc_msgSend_taskCompleted(v18, v142, v144, v143);
  v149 = objc_msgSend_errorCode(v145, v146, v148, v147);
  v800 = objc_msgSend_stringWithFormat_(v141, v150, v151, @"%d", v149);

LABEL_13:
  v152 = objc_msgSend_taskScheduled(v18, v119, v121, v120);

  if (v152)
  {
    v156 = MEMORY[0x277CCABB0];
    v157 = objc_msgSend_taskScheduled(v18, v153, v155, v154);
    v161 = objc_msgSend_succeeded(v157, v158, v160, v159);
    v799 = objc_msgSend_numberWithBool_(v156, v162, v163, v161);

    v167 = objc_msgSend_taskScheduled(v18, v164, v166, v165);
    LOBYTE(v157) = objc_msgSend_succeeded(v167, v168, v170, v169);

    if (v157)
    {
      v797 = 0;
      v798 = 0;
    }

    else
    {
      v171 = objc_msgSend_taskScheduled(v18, v153, v155, v154);
      v798 = objc_msgSend_errorDomain(v171, v172, v174, v173);

      v175 = MEMORY[0x277CCACA8];
      v179 = objc_msgSend_taskScheduled(v18, v176, v178, v177);
      v183 = objc_msgSend_errorCode(v179, v180, v182, v181);
      v797 = objc_msgSend_stringWithFormat_(v175, v184, v185, @"%d", v183);
    }
  }

  else
  {
    v797 = 0;
    v798 = 0;
    v799 = 0;
  }

  v186 = objc_msgSend_activityScheduleStatus(v18, v153, v155, v154);

  if (v186)
  {
    v190 = MEMORY[0x277CCABB0];
    v191 = objc_msgSend_activityScheduleStatus(v18, v187, v189, v188);
    v195 = objc_msgSend_scheduled(v191, v192, v194, v193);
    v796 = objc_msgSend_numberWithBool_(v190, v196, v197, v195);
  }

  else
  {
    v796 = 0;
  }

  v117 = &unk_286801090;
LABEL_22:
  objc_opt_class();
  v778 = eventCopy;
  if (objc_opt_isKindOfClass())
  {
    v198 = eventCopy;
    v791 = objc_msgSend_timestamp(v198, v199, v201, v200);

    v205 = objc_msgSend_trialIdentifiers(v198, v202, v204, v203);
    v209 = objc_msgSend_bmltIdentifiers(v205, v206, v208, v207);
    v213 = objc_msgSend_trialDeploymentID(v209, v210, v212, v211);

    v217 = objc_msgSend_trialIdentifiers(v198, v214, v216, v215);
    v221 = objc_msgSend_bmltIdentifiers(v217, v218, v220, v219);
    v225 = objc_msgSend_trialTaskID(v221, v222, v224, v223);

    v229 = objc_msgSend_trialIdentifiers(v198, v226, v228, v227);
    objc_msgSend_experimentIdentifiers(v229, v230, v232, v231);
    v234 = v233 = v79;
    v238 = objc_msgSend_trialDeploymentID(v234, v235, v237, v236);

    v242 = objc_msgSend_trialIdentifiers(v198, v239, v241, v240);
    v246 = objc_msgSend_experimentIdentifiers(v242, v243, v245, v244);
    v250 = objc_msgSend_trialExperimentID(v246, v247, v249, v248);

    v254 = objc_msgSend_trialIdentifiers(v198, v251, v253, v252);
    v258 = objc_msgSend_experimentIdentifiers(v254, v255, v257, v256);
    v79 = objc_msgSend_trialTreatmentID(v258, v259, v261, v260);

    v265 = objc_msgSend_performTaskStatus(v198, v262, v264, v263);

    if (v265 && (v269 = MEMORY[0x277CCABB0], objc_msgSend_performTaskStatus(v198, v266, v268, v267), v270 = objc_claimAutoreleasedReturnValue(), v274 = objc_msgSend_succeeded(v270, v271, v273, v272), objc_msgSend_numberWithBool_(v269, v275, v276, v274), v265 = objc_claimAutoreleasedReturnValue(), v270, objc_msgSend_performTaskStatus(v198, v277, v279, v278), v280 = objc_claimAutoreleasedReturnValue(), v284 = objc_msgSend_succeeded(v280, v281, v283, v282), v280, (v284 & 1) == 0))
    {
      v288 = objc_msgSend_performTaskStatus(v198, v266, v268, v267);
      v805 = objc_msgSend_errorDomain(v288, v289, v291, v290);

      v292 = MEMORY[0x277CCACA8];
      v296 = objc_msgSend_performTaskStatus(v198, v293, v295, v294);
      v300 = objc_msgSend_errorCode(v296, v297, v299, v298);
      v303 = objc_msgSend_stringWithFormat_(v292, v301, v302, @"%d", v300);

      v285 = v303;
    }

    else
    {
      v285 = 0;
      v805 = 0;
    }

    v304 = objc_msgSend_performTrialTaskStatus(v198, v266, v268, v267);

    if (v304)
    {
      v308 = v285;
      v309 = MEMORY[0x277CCABB0];
      v310 = objc_msgSend_performTrialTaskStatus(v198, v305, v307, v306);
      v314 = objc_msgSend_succeeded(v310, v311, v313, v312);
      v795 = objc_msgSend_numberWithBool_(v309, v315, v316, v314);

      v320 = objc_msgSend_performTrialTaskStatus(v198, v317, v319, v318);
      LOBYTE(v309) = objc_msgSend_succeeded(v320, v321, v323, v322);

      if (v309)
      {
        v285 = v308;
      }

      else
      {
        v324 = objc_msgSend_performTrialTaskStatus(v198, v305, v307, v306);
        v328 = objc_msgSend_errorDomain(v324, v325, v327, v326);

        v329 = MEMORY[0x277CCACA8];
        v333 = objc_msgSend_performTrialTaskStatus(v198, v330, v332, v331);
        v337 = objc_msgSend_errorCode(v333, v334, v336, v335);
        v340 = objc_msgSend_stringWithFormat_(v329, v338, v339, @"%d", v337);

        v285 = v340;
        v805 = v328;
      }
    }

    else
    {
      v795 = v265;
    }

    v287 = objc_msgSend_stop(v198, v305, v307, v306);

    if (v287)
    {
      v344 = MEMORY[0x277CCABB0];
      v345 = objc_msgSend_stop(v198, v341, v343, v342);
      v349 = objc_msgSend_succeeded(v345, v346, v348, v347);
      v352 = objc_msgSend_numberWithBool_(v344, v350, v351, v349);

      v356 = objc_msgSend_stop(v198, v353, v355, v354);
      LOBYTE(v345) = objc_msgSend_succeeded(v356, v357, v359, v358);

      if (v345)
      {
        v794 = 0;
        v286 = 0;
      }

      else
      {
        v363 = objc_msgSend_stop(v198, v360, v362, v361);
        objc_msgSend_errorDomain(v363, v364, v366, v365);
        v809 = v79;
        v367 = v250;
        v368 = v238;
        v369 = v225;
        v371 = v370 = v213;

        v372 = MEMORY[0x277CCACA8];
        v376 = objc_msgSend_stop(v198, v373, v375, v374);
        v380 = objc_msgSend_errorCode(v376, v377, v379, v378);
        v794 = objc_msgSend_stringWithFormat_(v372, v381, v382, @"%d", v380);

        v286 = v371;
        v213 = v370;
        v225 = v369;
        v238 = v368;
        v250 = v367;
        v79 = v809;
      }

      v287 = v352;
    }

    else
    {
      v794 = 0;
      v286 = 0;
    }

    v806 = v225;
    v807 = v238;
    v808 = v250;
    v22 = v791;
    v117 = &unk_2868010A8;
    eventCopy = v778;
  }

  else
  {
    v213 = v34;
    v285 = 0;
    v805 = 0;
    v794 = 0;
    v795 = 0;
    v286 = 0;
    v287 = 0;
  }

  objc_opt_class();
  v767 = v286;
  v768 = v287;
  if (objc_opt_isKindOfClass())
  {
    v383 = eventCopy;
    v792 = objc_msgSend_timestamp(v383, v384, v386, v385);

    v390 = objc_msgSend_trialIdentifiers(v383, v387, v389, v388);
    v394 = objc_msgSend_bmltIdentifiers(v390, v391, v393, v392);
    v789 = objc_msgSend_trialDeploymentID(v394, v395, v397, v396);

    v401 = objc_msgSend_trialIdentifiers(v383, v398, v400, v399);
    v405 = objc_msgSend_bmltIdentifiers(v401, v402, v404, v403);
    v409 = objc_msgSend_trialTaskID(v405, v406, v408, v407);

    v413 = objc_msgSend_trialIdentifiers(v383, v410, v412, v411);
    objc_msgSend_experimentIdentifiers(v413, v414, v416, v415);
    v418 = v417 = v79;
    v422 = objc_msgSend_trialDeploymentID(v418, v419, v421, v420);

    v426 = objc_msgSend_trialIdentifiers(v383, v423, v425, v424);
    v430 = objc_msgSend_experimentIdentifiers(v426, v427, v429, v428);
    v434 = objc_msgSend_trialExperimentID(v430, v431, v433, v432);

    v438 = objc_msgSend_trialIdentifiers(v383, v435, v437, v436);
    v442 = objc_msgSend_experimentIdentifiers(v438, v439, v441, v440);
    v79 = objc_msgSend_trialTreatmentID(v442, v443, v445, v444);

    v449 = objc_msgSend_eventType(v383, v446, v448, v447) - 1;
    if (v449 >= 3)
    {
      v451 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(v451, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AF64(v383, v451, v452, v453);
      }

      v450 = &unk_286801060;
    }

    else
    {
      v450 = qword_279813B40[v449];
    }

    v774 = v450;
    v286 = v767;

    v806 = v409;
    v807 = v422;
    v808 = v434;
    v213 = v789;
    v22 = v792;
    v117 = &unk_286801078;
    eventCopy = v778;
    v287 = v768;
  }

  else
  {
    v774 = 0;
  }

  objc_opt_class();
  v769 = v285;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v790 = 0;
    v793 = 0;
    v550 = 0;
    v787 = 0;
    v788 = 0;
    v770 = 0;
    v771 = 0;
    v785 = 0;
    v786 = 0;
    v782 = 0;
    v783 = 0;
    v780 = 0;
    v781 = 0;
    v784 = 0;
    v779 = 0;
    v530 = v775;
    v551 = v213;
    goto LABEL_90;
  }

  v457 = eventCopy;
  v461 = objc_msgSend_timestamp(v457, v458, v460, v459);

  v465 = objc_msgSend_trialIdentifiers(v457, v462, v464, v463);
  v469 = objc_msgSend_bmltIdentifiers(v465, v466, v468, v467);
  v763 = objc_msgSend_trialDeploymentID(v469, v470, v472, v471);

  v476 = objc_msgSend_trialIdentifiers(v457, v473, v475, v474);
  v480 = objc_msgSend_bmltIdentifiers(v476, v477, v479, v478);
  v484 = objc_msgSend_trialTaskID(v480, v481, v483, v482);

  v488 = objc_msgSend_trialIdentifiers(v457, v485, v487, v486);
  v492 = objc_msgSend_experimentIdentifiers(v488, v489, v491, v490);
  v496 = objc_msgSend_trialDeploymentID(v492, v493, v495, v494);

  v500 = objc_msgSend_trialIdentifiers(v457, v497, v499, v498);
  v504 = objc_msgSend_experimentIdentifiers(v500, v501, v503, v502);
  v772 = objc_msgSend_trialExperimentID(v504, v505, v507, v506);

  v511 = objc_msgSend_trialIdentifiers(v457, v508, v510, v509);
  v515 = objc_msgSend_experimentIdentifiers(v511, v512, v514, v513);
  v765 = objc_msgSend_trialTreatmentID(v515, v516, v518, v517);

  v522 = objc_msgSend_event(v457, v519, v521, v520);
  v526 = objc_msgSend_phase(v522, v523, v525, v524);

  if (v526 <= 2)
  {
    if (v526 == 1)
    {
      v531 = v496;
      v22 = v461;
      v606 = MEMORY[0x277CCABB0];
      v607 = objc_msgSend_event(v457, v527, v529, v528);
      v611 = objc_msgSend_succeeded(v607, v608, v610, v609);
      v793 = objc_msgSend_numberWithBool_(v606, v612, v613, v611);

      v617 = objc_msgSend_event(v457, v614, v616, v615);
      LOBYTE(v607) = objc_msgSend_succeeded(v617, v618, v620, v619);

      v530 = v775;
      if (v607)
      {
        v550 = 0;
      }

      else
      {
        v649 = objc_msgSend_event(v457, v621, v623, v622);
        v550 = objc_msgSend_errorMessage(v649, v650, v652, v651);

        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v550, v653, v654, @";"))
        {
          v624 = objc_msgSend_componentsSeparatedByString_(v550, v655, v656, @"");;
          v788 = objc_msgSend_objectAtIndexedSubscript_(v624, v657, v658, 0);
LABEL_75:
          v790 = 0;
          v771 = 0;
          v785 = 0;
LABEL_76:
          v787 = 0;
          v770 = 0;
          v782 = 0;
          goto LABEL_77;
        }
      }

      v788 = 0;
      v790 = 0;
    }

    else
    {
      v530 = v775;
      if (v526 != 2)
      {
        goto LABEL_66;
      }

      v531 = v496;
      v552 = MEMORY[0x277CCABB0];
      v553 = objc_msgSend_event(v457, v527, v529, v528);
      v557 = objc_msgSend_succeeded(v553, v554, v556, v555);
      v790 = objc_msgSend_numberWithBool_(v552, v558, v559, v557);

      v563 = objc_msgSend_event(v457, v560, v562, v561);
      LOBYTE(v553) = objc_msgSend_succeeded(v563, v564, v566, v565);

      v22 = v461;
      if ((v553 & 1) == 0)
      {
        v720 = objc_msgSend_event(v457, v567, v569, v568);
        v724 = objc_msgSend_errorMessage(v720, v721, v723, v722);

        v771 = v724;
        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v724, v725, v726, @";"))
        {
          v624 = objc_msgSend_componentsSeparatedByString_(v724, v727, v728, @"");;
          v785 = objc_msgSend_objectAtIndexedSubscript_(v624, v729, v730, 0);
          v793 = 0;
          v550 = 0;
          v788 = 0;
          goto LABEL_76;
        }

        v793 = 0;
        v550 = 0;
        v788 = 0;
        goto LABEL_82;
      }

      v793 = 0;
      v550 = 0;
      v788 = 0;
    }

    v771 = 0;
LABEL_82:
    v785 = 0;
    v787 = 0;
    goto LABEL_83;
  }

  if (v526 == 3)
  {
    v531 = v496;
    v570 = MEMORY[0x277CCABB0];
    v571 = objc_msgSend_event(v457, v527, v529, v528);
    v575 = objc_msgSend_succeeded(v571, v572, v574, v573);
    v787 = objc_msgSend_numberWithBool_(v570, v576, v577, v575);

    v581 = objc_msgSend_event(v457, v578, v580, v579);
    LOBYTE(v571) = objc_msgSend_succeeded(v581, v582, v584, v583);

    v530 = v775;
    v22 = v461;
    if ((v571 & 1) == 0)
    {
      v627 = objc_msgSend_event(v457, v585, v587, v586);
      v631 = objc_msgSend_errorMessage(v627, v628, v630, v629);

      v770 = v631;
      if (objc_msgSend_localizedCaseInsensitiveContainsString_(v631, v632, v633, @";"))
      {
        v624 = objc_msgSend_componentsSeparatedByString_(v631, v634, v635, @"");;
        v782 = objc_msgSend_objectAtIndexedSubscript_(v624, v636, v637, 0);
        v790 = 0;
        v793 = 0;
        v550 = 0;
        v788 = 0;
        v771 = 0;
        v785 = 0;
LABEL_77:
        v786 = 0;
        v783 = 0;
        v780 = 0;
        goto LABEL_78;
      }

      v790 = 0;
      v793 = 0;
      v550 = 0;
      v788 = 0;
      v771 = 0;
      v785 = 0;
      goto LABEL_84;
    }

    v790 = 0;
    v793 = 0;
    v550 = 0;
    v788 = 0;
    v771 = 0;
    v785 = 0;
LABEL_83:
    v770 = 0;
LABEL_84:
    v782 = 0;
    v786 = 0;
    goto LABEL_85;
  }

  v530 = v775;
  if (v526 == 4)
  {
    v531 = v496;
    v588 = MEMORY[0x277CCABB0];
    v589 = objc_msgSend_event(v457, v527, v529, v528);
    v593 = objc_msgSend_succeeded(v589, v590, v592, v591);
    v786 = objc_msgSend_numberWithBool_(v588, v594, v595, v593);

    v599 = objc_msgSend_event(v457, v596, v598, v597);
    LOBYTE(v589) = objc_msgSend_succeeded(v599, v600, v602, v601);

    v22 = v461;
    if ((v589 & 1) == 0)
    {
      v638 = objc_msgSend_event(v457, v603, v605, v604);
      v642 = objc_msgSend_errorMessage(v638, v639, v641, v640);

      v783 = v642;
      if (objc_msgSend_localizedCaseInsensitiveContainsString_(v642, v643, v644, @";"))
      {
        v624 = objc_msgSend_componentsSeparatedByString_(v642, v645, v646, @"");;
        v780 = objc_msgSend_objectAtIndexedSubscript_(v624, v647, v648, 0);
        v790 = 0;
        v793 = 0;
        v550 = 0;
        v787 = 0;
        v788 = 0;
        v770 = 0;
        v771 = 0;
        v785 = 0;
        v782 = 0;
LABEL_78:
        v784 = 0;
        v781 = 0;
        v779 = 0;
        goto LABEL_79;
      }

      v790 = 0;
      v793 = 0;
      v550 = 0;
      v787 = 0;
      v788 = 0;
      v770 = 0;
      v771 = 0;
      v785 = 0;
      v782 = 0;
LABEL_86:
      v780 = 0;
      v784 = 0;
      goto LABEL_87;
    }

    v790 = 0;
    v793 = 0;
    v550 = 0;
    v787 = 0;
    v788 = 0;
    v770 = 0;
    v771 = 0;
    v785 = 0;
    v782 = 0;
LABEL_85:
    v783 = 0;
    goto LABEL_86;
  }

  if (v526 != 5)
  {
LABEL_66:
    v531 = v496;
    v22 = v461;
    v624 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AFE8(v457, v624, v625, v626);
    }

    v793 = 0;
    v550 = 0;
    v788 = 0;
    goto LABEL_75;
  }

  v531 = v496;
  v532 = MEMORY[0x277CCABB0];
  v533 = objc_msgSend_event(v457, v527, v529, v528);
  v537 = objc_msgSend_succeeded(v533, v534, v536, v535);
  v784 = objc_msgSend_numberWithBool_(v532, v538, v539, v537);

  v543 = objc_msgSend_event(v457, v540, v542, v541);
  LOBYTE(v533) = objc_msgSend_succeeded(v543, v544, v546, v545);

  v22 = v461;
  if (v533)
  {
    v790 = 0;
    v793 = 0;
    v550 = 0;
    v787 = 0;
    v788 = 0;
    v770 = 0;
    v771 = 0;
    v785 = 0;
    v786 = 0;
    v782 = 0;
    v783 = 0;
    v780 = 0;
LABEL_87:
    v781 = 0;
LABEL_88:
    v779 = 0;
    v551 = v763;
    goto LABEL_89;
  }

  v709 = objc_msgSend_event(v457, v547, v549, v548);
  v713 = objc_msgSend_errorMessage(v709, v710, v712, v711);

  v781 = v713;
  if (!objc_msgSend_localizedCaseInsensitiveContainsString_(v713, v714, v715, @";"))
  {
    v790 = 0;
    v793 = 0;
    v550 = 0;
    v787 = 0;
    v788 = 0;
    v770 = 0;
    v771 = 0;
    v785 = 0;
    v786 = 0;
    v782 = 0;
    v783 = 0;
    v780 = 0;
    goto LABEL_88;
  }

  v624 = objc_msgSend_componentsSeparatedByString_(v713, v716, v717, @"");;
  v779 = objc_msgSend_objectAtIndexedSubscript_(v624, v718, v719, 0);
  v780 = 0;
  v790 = 0;
  v793 = 0;
  v550 = 0;
  v787 = 0;
  v788 = 0;
  v770 = 0;
  v771 = 0;
  v785 = 0;
  v786 = 0;
  v782 = 0;
  v783 = 0;
LABEL_79:
  v551 = v763;

LABEL_89:
  v806 = v484;
  v807 = v531;
  v808 = v772;
  v79 = v765;
  v117 = &unk_2868010C0;
  v285 = v769;
LABEL_90:
  v810[0] = @"contextId";
  v810[1] = @"event_donator";
  v811[0] = v777;
  v811[1] = v117;
  v811[2] = v776;
  v659 = v285;
  v810[2] = @"eventId";
  v810[3] = @"lighthouseplugin_performTaskStatus_errorCode";
  if (!v285)
  {
    v659 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v761 = v659;
  v811[3] = v659;
  v810[4] = @"lighthouseplugin_performTaskStatus_errorDomain";
  v660 = v805;
  if (!v805)
  {
    v660 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v760 = v660;
  v811[4] = v660;
  v810[5] = @"lighthouseplugin_performTaskStatus_succeeded";
  v661 = v795;
  if (!v795)
  {
    v661 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v759 = v661;
  v811[5] = v661;
  v810[6] = @"lighthouseplugin_stop_errorCode";
  v662 = v794;
  if (!v794)
  {
    v662 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v758 = v662;
  v811[6] = v662;
  v810[7] = @"lighthouseplugin_stop_errorDomain";
  v663 = v286;
  if (!v286)
  {
    v663 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v757 = v663;
  v811[7] = v663;
  v810[8] = @"lighthouseplugin_stop_succeeded";
  v664 = v287;
  if (!v287)
  {
    v664 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v756 = v664;
  v811[8] = v664;
  v810[9] = @"mlruntimed_activityScheduleStatus_scheduled";
  v665 = v796;
  if (!v796)
  {
    v665 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v755 = v665;
  v811[9] = v665;
  v810[10] = @"mlruntimed_taskCompleted_errorCode";
  v666 = v800;
  if (!v800)
  {
    v666 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v754 = v666;
  v811[10] = v666;
  v810[11] = @"mlruntimed_taskCompleted_errorDomain";
  v667 = v801;
  if (!v801)
  {
    v667 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v753 = v667;
  v811[11] = v667;
  v810[12] = @"mlruntimed_taskCompleted_succeeded";
  v668 = v802;
  if (!v802)
  {
    v668 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v752 = v668;
  v811[12] = v668;
  v810[13] = @"mlruntimed_taskFetched_errorCode";
  v669 = v803;
  if (!v803)
  {
    v669 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v751 = v669;
  v811[13] = v669;
  v810[14] = @"mlruntimed_taskFetched_errorDomain";
  v670 = v804;
  if (!v804)
  {
    v670 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v750 = v670;
  v811[14] = v670;
  v810[15] = @"mlruntimed_taskFetched_succeeded";
  v671 = v530;
  if (!v530)
  {
    v671 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v749 = v671;
  v811[15] = v671;
  v810[16] = @"mlruntimed_taskScheduled_errorCode";
  v672 = v797;
  if (!v797)
  {
    v672 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v748 = v672;
  v811[16] = v672;
  v810[17] = @"mlruntimed_taskScheduled_errorDomain";
  v673 = v798;
  if (!v798)
  {
    v673 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v747 = v673;
  v811[17] = v673;
  v810[18] = @"mlruntimed_taskScheduled_succeeded";
  v674 = v799;
  if (!v799)
  {
    v674 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v746 = v674;
  v811[18] = v674;
  v810[19] = @"dprivacyd_donationReceived_succeeded";
  v675 = v793;
  if (!v793)
  {
    v675 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v745 = v675;
  v811[19] = v675;
  v810[20] = @"dprivacyd_donationReceived_errorMessage";
  v676 = v550;
  if (!v550)
  {
    v676 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v744 = v676;
  v811[20] = v676;
  v810[21] = @"dprivacyd_donationReceived_errorCode";
  v677 = v788;
  if (!v788)
  {
    v677 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v743 = v677;
  v811[21] = v677;
  v810[22] = @"dprivacyd_randomization_succeeded";
  v678 = v790;
  if (!v790)
  {
    v678 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v742 = v678;
  v811[22] = v678;
  v810[23] = @"dprivacyd_randomization_errorMessage";
  v679 = v771;
  if (!v771)
  {
    v679 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v741 = v679;
  v811[23] = v679;
  v810[24] = @"dprivacyd_randomization_errorCode";
  v680 = v785;
  if (!v785)
  {
    v680 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v740 = v680;
  v811[24] = v680;
  v810[25] = @"dprivacyd_budgetCheck_succeeded";
  v681 = v787;
  if (!v787)
  {
    v681 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v739 = v681;
  v811[25] = v681;
  v810[26] = @"dprivacyd_budgetCheck_errorMessage";
  v682 = v770;
  if (!v770)
  {
    v682 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v738 = v682;
  v811[26] = v682;
  v810[27] = @"dprivacyd_budgetCheck_errorCode";
  v683 = v782;
  if (!v782)
  {
    v683 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v737 = v683;
  v811[27] = v683;
  v810[28] = @"dprivacyd_payloadCreation_succeeded";
  v684 = v786;
  if (!v786)
  {
    v684 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v736 = v684;
  v811[28] = v684;
  v810[29] = @"dprivacyd_payloadCreation_errorMessage";
  v685 = v783;
  if (!v783)
  {
    v685 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v735 = v685;
  v811[29] = v685;
  v810[30] = @"dprivacyd_payloadCreation_errorCode";
  v686 = v780;
  if (!v780)
  {
    v686 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v734 = v686;
  v811[30] = v686;
  v810[31] = @"dprivacyd_upload_succeeded";
  v687 = v784;
  if (!v784)
  {
    v687 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v733 = v687;
  v811[31] = v687;
  v810[32] = @"dprivacyd_upload_errorMessage";
  v688 = v781;
  if (!v781)
  {
    v688 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v732 = v688;
  v811[32] = v688;
  v810[33] = @"dprivacyd_upload_errorCode";
  v689 = v779;
  if (!v779)
  {
    v689 = objc_msgSend_null(MEMORY[0x277CBEB68], v454, v456, v455);
  }

  v731 = v689;
  v811[33] = v689;
  v810[34] = @"timestamp";
  v764 = v22;
  v762 = objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v454, v456, v22);
  v811[34] = v762;
  v810[35] = @"triald_eventSucceeded";
  v695 = objc_msgSend_null(MEMORY[0x277CBEB68], v690, v692, v691);
  v811[35] = v695;
  v810[36] = @"triald_eventType";
  v697 = v774;
  if (!v774)
  {
    v697 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v773 = v550;
  v811[36] = v697;
  v810[37] = @"trialIdentifiers_BMLTIdentifiers_trialDeploymentID";
  v698 = v551;
  v766 = v551;
  if (!v551)
  {
    v698 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v699 = v79;
  v811[37] = v698;
  v810[38] = @"trialIdentifiers_BMLTIdentifiers_trialTaskID";
  v700 = v806;
  if (!v806)
  {
    v700 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v811[38] = v700;
  v810[39] = @"trialIdentifiers_experimentIdentifiers_trialDeploymentID";
  v701 = v807;
  if (!v807)
  {
    v701 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v811[39] = v701;
  v810[40] = @"trialIdentifiers_experimentIdentifiers_trialExperimentID";
  v702 = v808;
  if (!v808)
  {
    v702 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v811[40] = v702;
  v810[41] = @"trialIdentifiers_experimentIdentifiers_trialTreatmentID";
  v703 = v699;
  if (!v699)
  {
    v703 = objc_msgSend_null(MEMORY[0x277CBEB68], v693, v696, v694);
  }

  v811[41] = v703;
  v704 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v693, v696, v811, v810, 42);
  if (!v699)
  {
  }

  if (!v808)
  {
  }

  if (!v807)
  {
  }

  if (!v806)
  {
  }

  if (!v766)
  {
  }

  if (!v774)
  {
  }

  if (!v779)
  {
  }

  v705 = v704;
  if (!v781)
  {

    v705 = v704;
  }

  if (!v784)
  {

    v705 = v704;
  }

  if (!v780)
  {

    v705 = v704;
  }

  if (!v783)
  {

    v705 = v704;
  }

  if (!v786)
  {

    v705 = v704;
  }

  if (v782)
  {
    if (v770)
    {
      goto LABEL_190;
    }
  }

  else
  {

    v705 = v704;
    if (v770)
    {
      goto LABEL_190;
    }
  }

  v705 = v704;
LABEL_190:
  if (!v787)
  {

    v705 = v704;
  }

  if (v785)
  {
    if (v771)
    {
      goto LABEL_194;
    }
  }

  else
  {

    v705 = v704;
    if (v771)
    {
      goto LABEL_194;
    }
  }

  v705 = v704;
LABEL_194:
  if (!v790)
  {

    v705 = v704;
  }

  if (!v788)
  {

    v705 = v704;
  }

  if (!v773)
  {

    v705 = v704;
  }

  if (!v793)
  {

    v705 = v704;
  }

  if (!v799)
  {

    v705 = v704;
  }

  if (!v798)
  {

    v705 = v704;
  }

  if (v797)
  {
    if (v775)
    {
      goto LABEL_208;
    }
  }

  else
  {

    v705 = v704;
    if (v775)
    {
      goto LABEL_208;
    }
  }

  v705 = v704;
LABEL_208:
  if (!v804)
  {

    v705 = v704;
  }

  if (!v803)
  {

    v705 = v704;
  }

  if (!v802)
  {

    v705 = v704;
  }

  if (!v801)
  {

    v705 = v704;
  }

  if (!v800)
  {

    v705 = v704;
  }

  if (v796)
  {
    if (v768)
    {
      goto LABEL_220;
    }

LABEL_235:

    v705 = v704;
    if (v767)
    {
      goto LABEL_221;
    }

    goto LABEL_236;
  }

  v705 = v704;
  if (!v768)
  {
    goto LABEL_235;
  }

LABEL_220:
  if (v767)
  {
    goto LABEL_221;
  }

LABEL_236:

  v705 = v704;
LABEL_221:
  if (!v794)
  {

    v705 = v704;
  }

  if (!v795)
  {

    v705 = v704;
  }

  if (!v805)
  {

    v705 = v704;
    if (v769)
    {
      goto LABEL_227;
    }

LABEL_238:

    v705 = v704;
    goto LABEL_227;
  }

  if (!v769)
  {
    goto LABEL_238;
  }

LABEL_227:
  v706 = v705;
  v707 = v705;

  return v706;
}

- (BOOL)uploadRawEventsToCoreAnalytics
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_bitacoraEvents;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v13 = objc_msgSend_getCAEventDictionaryFromBiomeEvent_(LBFBitacoraStateInfo, v6, v7, *(*(&v14 + 1) + 8 * i));
        v11 = v13;
        AnalyticsSendEventLazy();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, v7, &v14, v18, 16);
    }

    while (v8);
  }

  return 1;
}

- (BOOL)uploadToDedisco
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_getDictionaryRepresentation(self, a2, v3, v2);
  v9 = objc_msgSend_trialIdentifiers(self, v6, v8, v7);
  v13 = objc_msgSend_experimentIdentifiers(v9, v10, v12, v11);

  v14 = LBFLogContextBitacoraStateInfo;
  if (v13)
  {
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_255ED5000, v14, OS_LOG_TYPE_INFO, "Dedisco CA Input Dictionary: %@", &buf, 0xCu);
    }

    v18 = objc_msgSend_trialIdentifiers(self, v15, v17, v16);
    v22 = objc_msgSend_experimentIdentifiers(v18, v19, v21, v20);
    v26 = objc_msgSend_trialExperimentID(v22, v23, v25, v24);

    v30 = objc_msgSend_trialIdentifiers(self, v27, v29, v28);
    v34 = objc_msgSend_experimentIdentifiers(v30, v31, v33, v32);
    v38 = objc_msgSend_trialDeploymentID(v34, v35, v37, v36);

    v42 = objc_msgSend_trialIdentifiers(self, v39, v41, v40);
    v46 = objc_msgSend_experimentIdentifiers(v42, v43, v45, v44);
    v50 = objc_msgSend_trialTreatmentID(v46, v47, v49, v48);

    v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, v52, @"fedstats:com.apple.insights.telemetry:dprivacyd:%@:%@:%@", v26, v38, v50);
    v75 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, v54, @"fedstats:com.apple.insights.telemetry:plugin_success:%@:%@:%@", v26, v38, v50);
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, v56, @"fedstats:com.apple.insights.telemetry:plugin_success_time_deltas:%@:%@:%@", v26, v38, v50);
    v58 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_255ED5000, v58, OS_LOG_TYPE_INFO, "Uploading to Fedstats.", &buf, 2u);
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x2050000000;
    v59 = qword_27F817DF0;
    v83 = qword_27F817DF0;
    if (!qword_27F817DF0)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v85 = sub_255EE831C;
      v86 = &unk_2798139F0;
      v87 = &v80;
      sub_255EE831C(&buf);
      v59 = v81[3];
    }

    v60 = v59;
    _Block_object_dispose(&v80, 8);
    if (!v59 && os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B07C();
    }

    v79 = 0;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v59, v61, v62, v5, &unk_2868014C0, v76, &v79);
    v63 = v79;
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B0BC();
    }

    if (v63)
    {
      v66 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B148(v66, v63);
      }
    }

    v78 = v63;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v59, v64, v65, v5, &unk_2868016A0, v75, &v78);
    v67 = v78;

    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B1FC();
    }

    if (v67)
    {
      v70 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B288(v70, v67);
      }
    }

    v77 = v67;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v59, v68, v69, v5, &unk_286801880, v57, &v77);
    v71 = v77;

    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B33C();
    }

    v72 = v71 == 0;
    if (v71)
    {
      v73 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B3C8(v73, v71);
      }

      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
      {
        sub_255F0B47C();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B4BC(v14);
    }

    v72 = 0;
  }

  return v72;
}

@end