@interface CSExcessiveCPUViolationHandler
+ (id)sharedInstance;
- (id)_init;
- (void)handleViolationByProcess:(id)process pid:(unint64_t)pid path:(id)path endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1;
@end

@implementation CSExcessiveCPUViolationHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CSExcessiveCPUViolationHandler sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __48__CSExcessiveCPUViolationHandler_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = [[CSExcessiveCPUViolationHandler alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = CSExcessiveCPUViolationHandler;
  v2 = [(CSExcessiveCPUViolationHandler *)&v10 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSExcessiveCPUViolationHandler"];
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.computesafeguards.excessivecpuhandler", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = v2;
  }

  return v2;
}

- (void)handleViolationByProcess:(id)process pid:(unint64_t)pid path:(id)path endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1
{
  v52 = *MEMORY[0x277D85DE8];
  processCopy = process;
  pathCopy = path;
  logger = self->_logger;
  v19 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v20 = "(NON FATAL) ";
    if (fatal)
    {
      v20 = "(FATAL) ";
    }

    *buf = 136317186;
    v35 = v20;
    v36 = 2112;
    v37 = processCopy;
    v40 = 2112;
    v46 = 1024;
    v38 = 2048;
    pidCopy = pid;
    v41 = pathCopy;
    v42 = 2048;
    v43 = value / 1000000000.0;
    v44 = 2048;
    v45 = window / 1000000000.0;
    v47 = 100 * value / window;
    v48 = 2048;
    v49 = limitValue / 1000000000.0;
    v50 = 2048;
    v51 = limitWindow / 0x3B9ACA00uLL;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "handleViolationByProcess: Received %sCPU violation: %@[%llu] (%@) used %.2f seconds of CPU over %.2f seconds (averaging %d%%), violating a CPU usage limit of %.2f seconds over %lld seconds.", buf, 0x58u);
  }

  if (processCopy)
  {
    v21 = getMainQueue(v19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke;
    block[3] = &unk_278DF51F8;
    pidCopy2 = pid;
    block[4] = self;
    v25 = pathCopy;
    valueCopy = value;
    windowCopy = window;
    limitValueCopy = limitValue;
    limitWindowCopy = limitWindow;
    timeCopy = time;
    v26 = processCopy;
    fatalCopy = fatal;
    dispatch_sync(v21, block);
  }

  else
  {
    v22 = self->_logger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [CSExcessiveCPUViolationHandler handleViolationByProcess:v22 pid:? path:? endTime:? observedValue:? observationWindow:? limitValue:? limitWindow:? fatal:?];
    }
  }
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 56);
  v3 = getProcessUUID(*(a1 + 56));
  if (v3)
  {
    v4 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 getProcessForUUID:v3];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 identifier];
        if (v8)
        {
          v9 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
          v10 = [v9 determineScenarioForProcess:v8];

          if (!v10)
          {
            v11 = *(*(a1 + 32) + 16);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_1(v2, v11);
            }

            v10 = @"Unknown";
          }

          v12 = +[CSMitigationManager sharedInstance];
          if (v12)
          {
            v13 = *(a1 + 40);
            if (v13 && [v13 length])
            {
              [v7 setViolationPath:*(a1 + 40)];
            }

            else
            {
              v18 = [v12 getProcessPathForPID:*v2];
              [v7 setViolationPath:v18];
            }

            [v7 setViolationEndTime:*(a1 + 96)];
            [v7 setViolationObservedValue:*(a1 + 64)];
            [v7 setViolationObservationWindow:*(a1 + 72)];
            [v7 setViolationLimitValue:*(a1 + 80)];
            [v7 setViolationLimitWindow:*(a1 + 88)];
            [v7 setViolationPid:*(a1 + 56)];
            v19 = MEMORY[0x277CCACA8];
            v20 = [*(a1 + 48) UTF8String];
            v21 = *(a1 + 64);
            v22 = v21 / 1000000000.0;
            v23 = *(a1 + 72);
            v79 = v10;
            v80 = v8;
            v78 = v12;
            if (v23)
            {
              v24 = 100 * v21 / v23;
            }

            else
            {
              v24 = 0;
            }

            v77 = [v19 stringWithFormat:@"Received CPU violation: %s[%llu] (%@) used %.2f seconds of CPU over %.2f seconds (averaging %d%%), violating a CPU usage limit of %.2f seconds over %lld seconds.", v20, *(a1 + 56), *(a1 + 40), *&v22, v23 / 1000000000.0, v24, *(a1 + 80) / 1000000000.0, *(a1 + 88) / 0x3B9ACA00uLL];
            [v7 setViolationDetectorString:?];
            v26 = [v7 cpuTimeWindow];
            v27 = [v26 longLongValue];

            v28 = [v7 cpuThreshold];
            v29 = [v28 longLongValue];

            v81 = v27;
            v30 = ((v29 * v27 * 0xA3D70A3D70A3D70BLL) >> 64) + v29 * v27;
            v73 = [v7 issueType];
            v71 = [v7 mitigationType];
            v69 = [v7 mitigationReason];
            v31 = [v7 energySnapshotNew];
            v32 = [v31 time];

            v33 = [MEMORY[0x277CBEAA8] now];
            [v33 timeIntervalSinceDate:v32];
            v35 = v34;

            v36 = (*(a1 + 88) / 0x3B9ACA00uLL);
            if (v35 < v36 && ([v7 energySnapshot], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
            {
              v38 = [v7 energySnapshot];
              v39 = [v38 time];

              v40 = [MEMORY[0x277CBEAA8] now];
              v83 = v39;
              [v40 timeIntervalSinceDate:v39];
              v42 = v41;

              v43 = [v7 energySnapshot];
              [v7 computeEnergyDiff:v43];
              v45 = v44;

              if (v42 == 0.0)
              {
                v46 = 0;
              }

              else
              {
                v46 = (v45 * v36 / v42 * 1000.0);
              }
            }

            else
            {
              v46 = [v7 energySnapshotNew];

              if (v46)
              {
                v47 = [v7 energySnapshotNew];
                [v7 computeEnergyDiff:v47];
                v49 = v48;

                if (v35 == 0.0)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = (v49 * v36 / v35 * 1000.0);
                }
              }

              v83 = v32;
            }

            v50 = (v30 >> 6) + (v30 >> 63);
            [v7 setEstimatedEnergyDiff:v46];
            if (v81 == *(a1 + 88) / 0x3B9ACA00uLL && v50 == *(a1 + 80) / 0x3B9ACA00uLL)
            {
              v51 = 1;
            }

            else
            {
              v52 = *(*(a1 + 32) + 16);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v68 = *(a1 + 104);
                v63 = *(a1 + 88) / 0x3B9ACA00uLL;
                v64 = v46;
                v46 = *(a1 + 80) / 0x3B9ACA00uLL;
                log = v52;
                v65 = [v7 processName];
                v66 = *(a1 + 56);
                *buf = 67110658;
                *v85 = v68;
                *&v85[4] = 2048;
                *&v85[6] = v81;
                *&v85[14] = 2048;
                *&v85[16] = v63;
                *&v85[24] = 2048;
                *&v85[26] = v50;
                v86 = 2048;
                *v87 = v46;
                LODWORD(v46) = v64;
                *&v87[8] = 2112;
                v88 = v65;
                *v89 = 2048;
                *&v89[2] = v66;
                _os_log_debug_impl(&dword_243DC3000, log, OS_LOG_TYPE_DEBUG, "handleViolationByProcess: Violation not from us? isFatal (%d), savedTimeWindow (%lld) == limitWindow (%lld), savedThreshold (%llu) == limitValue (%lld) for process %@ (%llu)", buf, 0x44u);
              }

              v51 = 0;
            }

            v53 = *(*(a1 + 32) + 16);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v53;
              loga = PEIssueTypeString(v73);
              v74 = PEMitigationTypeString(v71);
              v72 = PEReasonString(v69);
              v70 = [v7 cpuFatalCnt];
              v54 = [v7 cpuNonFatalCnt];
              v55 = [v7 exitsCnt];
              v56 = v51;
              v57 = [v7 penaltyBoxCnt];
              v58 = [v7 processName];
              v59 = v46;
              v60 = v58;
              v61 = *v2;
              *buf = 136317698;
              *v85 = loga;
              *&v85[8] = 2080;
              *&v85[10] = v74;
              *&v85[18] = 2080;
              *&v85[20] = v72;
              *&v85[28] = 1024;
              *&v85[30] = v70;
              v86 = 1024;
              *v87 = v54;
              *&v87[4] = 1024;
              *&v87[6] = v55;
              LOWORD(v88) = 1024;
              *(&v88 + 2) = v57;
              v51 = v56;
              HIWORD(v88) = 1024;
              *v89 = v59;
              *&v89[4] = 2112;
              *&v89[6] = v83;
              v90 = 2112;
              v91 = v58;
              v92 = 2048;
              v93 = v61;
              _os_log_impl(&dword_243DC3000, v82, OS_LOG_TYPE_DEFAULT, "handleViolationByProcess: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u estimatedEnergyDiff:%u date:%@ for process %@ (%llu)", buf, 0x5Cu);
            }

            v8 = v80;
            v12 = v78;
            if (v51)
            {
              CoalitionID = getCoalitionID(*(a1 + 56));
              LOBYTE(v67) = *(a1 + 104);
              [v78 handleCPUDetectionViolation:v7 coalitionID:CoalitionID pid:*(a1 + 56) endTime:*(a1 + 96) observedValue:*(a1 + 64) observationWindow:*(a1 + 72) limitValue:*(a1 + 80) limitWindow:*(a1 + 88) fatal:v67];
            }

            v10 = v79;
          }

          else
          {
            v25 = *(*(a1 + 32) + 16);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_2(v25, v7);
            }
          }
        }

        else
        {
          v17 = *(*(a1 + 32) + 16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_3(v17, v7);
          }
        }
      }

      else
      {
        v16 = *(*(a1 + 32) + 16);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_4(v2, v16);
        }
      }
    }

    else
    {
      v15 = *(*(a1 + 32) + 16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_5(v2, v15);
      }
    }
  }

  else
  {
    v14 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_6(v14, v2);
    }
  }
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "handleViolationByProcess: No scenarioName to use, logging empty scenario name for violation for pid %llu.", &v3, 0xCu);
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 processName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243DC3000, v5, v6, "handleViolationByProcess: Failed to get mitigationManager for process %@ (%llu)???", v7, v8, v9, v10);
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 processName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243DC3000, v5, v6, "handleViolationByProcess: No ProcessIdentifier for process %@ (%llu)???", v7, v8, v9, v10);
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_4(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "handleViolationByProcess: Failed to get CSProcess for logging violation for pid %llu???", &v3, 0xCu);
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_5(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "handleViolationByProcess: Failed to get CSProcessManager for logging violation for pid %llu???", &v3, 0xCu);
}

void __137__CSExcessiveCPUViolationHandler_handleViolationByProcess_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal___block_invoke_cold_6(void *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = *__error();
  v5 = *a2;
  v6[0] = 67109376;
  v6[1] = v4;
  v7 = 2048;
  v8 = v5;
  _os_log_error_impl(&dword_243DC3000, v3, OS_LOG_TYPE_ERROR, "handleViolationByProcess: getProcessUUID() failed %d for pid %llu", v6, 0x12u);
}

@end