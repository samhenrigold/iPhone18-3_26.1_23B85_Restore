@interface CSProcessManager
+ (id)sharedInstanceWithEnrolledProcesses:(id)processes andProcessPolicies:(id)policies andBand95:(id)band95 andBand80:(id)band80;
+ (int)coalitionIDForPid:(int)pid coalitionID:(unint64_t *)d;
- (BOOL)fillPIDDictionary:(id)dictionary;
- (BOOL)isAppleXPCServiceWithRBS:(id)s andPID:(int)d;
- (BOOL)isXPCServiceExempt:(id)exempt withIssueType:(unsigned __int8)type;
- (BOOL)modifyTargetProcessMitigationRecords:(id)records;
- (double)pollPIDs;
- (id)_initWithEnrolledProcesses:(id)processes andProcessPolicies:(id)policies andBand95:(id)band95 andBand80:(id)band80;
- (id)fullProcessNameForPid:(int)pid;
- (id)getMaxRelaunchPollingInterval;
- (id)getMonitoredList;
- (id)getPollingInterval;
- (id)getProcessForPID:(int)d;
- (id)getProcessForProcessName:(id)name;
- (id)getProcessForUUID:(id)d;
- (id)getRelaunchPollingInterval;
- (id)getTargetProcessMitigationRecords;
- (id)identiferForName:(id)name;
- (id)processNameForIdentifier:(id)identifier;
- (int)discoverPidForProcessName:(id)name withError:(id *)error;
- (unsigned)getPollPIDsCount;
- (void)applyRecordsForProcess:(id)process;
- (void)clearAllCounters;
- (void)clearMitigationRecords;
- (void)clearTargetProcessState;
- (void)importMitigationRecords;
- (void)initRelaunchPollingTimer;
- (void)modifyMaxRelaunchPollingInterval:(id)interval;
- (void)modifyPollingInterval:(id)interval;
- (void)modifyRelaunchPollingInterval:(id)interval;
- (void)notifyObserversOfNewInstances:(id)instances;
- (void)pollPIDs;
- (void)pollPenaltyBoxProcessRelaunch;
- (void)recordTerminationForPID:(int)d;
- (void)registerForPenaltyBoxRelaunchPolling:(id)polling;
- (void)schedulePIDPolling;
- (void)unregisterAllForPenaltyBoxRelaunchPolling;
- (void)unregisterForPenaltyBoxRelaunchPolling:(id)polling;
@end

@implementation CSProcessManager

void __38__CSProcessManager_schedulePIDPolling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pollPIDs];
}

- (void)pollPIDs
{
  selfCopy = self;
  v275 = *MEMORY[0x277D85DE8];
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  v4 = selfCopy->_logger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CSProcessManager *)selfCopy pollPIDs];
  }

  pollPIDsCount = selfCopy->_pollPIDsCount;
  if (pollPIDsCount != 255)
  {
    selfCopy->_pollPIDsCount = pollPIDsCount + 1;
  }

  v216 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (selfCopy->_savedPIDPollingInterval != 0.0)
  {
    selfCopy->_savedPIDPollingInterval = 0.0;
    dispatch_suspend(selfCopy->_pollingTimer);
    pollingTimer = selfCopy->_pollingTimer;
    v8 = dispatch_walltime(0, (selfCopy->_PIDPollingInterval * 1000000000.0));
    dispatch_source_set_timer(pollingTimer, v8, (selfCopy->_PIDPollingInterval * 1000000000.0), 0x6FC23AC00uLL);
    dispatch_resume(selfCopy->_pollingTimer);
  }

  v9 = selfCopy->_logger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_currentPIDList)
    {
      v10 = "not null";
    }

    else
    {
      v10 = "null";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_243DC3000, v9, OS_LOG_TYPE_DEFAULT, "pollPIDs: called, currentPIDList: %s", buf, 0xCu);
  }

  if ([(CSProcessManager *)selfCopy fillPIDDictionary:dictionary])
  {
    if ([dictionary count] >> 31)
    {
      v11 = selfCopy->_logger;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CSProcessManager pollPIDs];
      }

      v185 = 0x7FFFFFFFLL;
    }

    else
    {
      v185 = [dictionary count];
    }

    v187 = dictionary;
    v12 = [dictionary mutableCopy];
    v254 = 0u;
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    v13 = [(NSMutableDictionary *)selfCopy->_allProcessesMap copy];
    v14 = [v13 countByEnumeratingWithState:&v254 objects:v274 count:16];
    p_isa = &selfCopy->super.isa;
    if (v14)
    {
      v15 = v14;
      obj = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v223 = 0;
      v211 = *v255;
      v207 = v13;
      while (1)
      {
        v20 = 0;
        v209 = v15;
        do
        {
          if (*v255 != v211)
          {
            v21 = v20;
            objc_enumerationMutation(v13);
            v20 = v21;
          }

          v215 = v20;
          v22 = *(*(&v254 + 1) + 8 * v20);

          context = objc_autoreleasePoolPush();
          if (v22 && ([(NSMutableDictionary *)selfCopy->_allProcessesMap objectForKey:v22], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = v23;
            v217 = v22;
            ++v17;
            v16 += [v23 xpcService];
            trackedPIDs = [v19 trackedPIDs];
            v25 = [trackedPIDs count];

            if (v25)
            {
              v200 = v17;
              v197 = v16;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              trackedPIDs2 = [v19 trackedPIDs];
              v27 = [trackedPIDs2 countByEnumeratingWithState:&v246 objects:v272 count:16];
              if (!v27)
              {
                goto LABEL_50;
              }

              v28 = v27;
              v29 = 0;
              v30 = *v247;
              while (1)
              {
                v31 = 0;
                do
                {
                  v32 = v29;
                  if (*v247 != v30)
                  {
                    objc_enumerationMutation(trackedPIDs2);
                  }

                  v29 = *(*(&v246 + 1) + 8 * v31);

                  v33 = objc_autoreleasePoolPush();
                  v34 = [v12 objectForKey:v29];

                  uuid = [v19 uuid];
                  v223 = v34;
                  LODWORD(v34) = [v34 isEqual:uuid];

                  if (!v34)
                  {
                    exitMonitors = [v19 exitMonitors];
                    v38 = [exitMonitors objectForKey:v29];

                    if (v38)
                    {
                      v39 = p_isa[5];
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        processName = [v19 processName];
                        intValue = [v29 intValue];
                        *buf = 138412546;
                        *&buf[4] = processName;
                        *&buf[12] = 1024;
                        *&buf[14] = intValue;
                        v42 = v39;
                        v43 = "pollPIDs: Process %@ was PID: %d before. CSProcess exit handler should fire soon.";
                        goto LABEL_47;
                      }
                    }

                    else
                    {
                      [v19 performCleanupOnExitOnPID:{objc_msgSend(v29, "intValue")}];
                      v39 = p_isa[5];
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        processName = [v19 processName];
                        intValue2 = [v29 intValue];
                        *buf = 138412546;
                        *&buf[4] = processName;
                        *&buf[12] = 1024;
                        *&buf[14] = intValue2;
                        v42 = v39;
                        v43 = "pollPIDs: Process %@ was PID: %d before and no exit handler, assume pid exited";
LABEL_47:
                        _os_log_debug_impl(&dword_243DC3000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0x12u);
                      }
                    }

                    goto LABEL_44;
                  }

                  if ([v19 resetNonFatalCPUMonitor])
                  {
                    v36 = p_isa[5];
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      processName2 = [v19 processName];
                      intValue3 = [v29 intValue];
                      *buf = 138412546;
                      *&buf[4] = processName2;
                      *&buf[12] = 1024;
                      *&buf[14] = intValue3;
                      _os_log_debug_impl(&dword_243DC3000, v36, OS_LOG_TYPE_DEBUG, "pollPIDs: Process:%@ (%d) got a non fatal violation, trying to re-arm the monitoring", buf, 0x12u);
                    }

                    [v216 addObject:v217];
                  }

                  [v12 removeObjectForKey:v29];
LABEL_44:
                  objc_autoreleasePoolPop(v33);
                  ++v31;
                }

                while (v28 != v31);
                v47 = [trackedPIDs2 countByEnumeratingWithState:&v246 objects:v272 count:16];
                v28 = v47;
                if (!v47)
                {

                  selfCopy = p_isa;
                  v13 = v207;
LABEL_50:

                  uuid2 = [v19 uuid];
                  v49 = [v12 allKeysForObject:uuid2];

                  if (v49)
                  {
                    v15 = v209;
                    if ([v49 count])
                    {
                      v244 = 0u;
                      v245 = 0u;
                      v242 = 0u;
                      v243 = 0u;
                      obj = v49;
                      v50 = [obj countByEnumeratingWithState:&v242 objects:v271 count:16];
                      if (v50)
                      {
                        v51 = v50;
                        v52 = 0;
                        v53 = *v243;
                        do
                        {
                          v54 = 0;
                          v55 = v52;
                          do
                          {
                            if (*v243 != v53)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v52 = *(*(&v242 + 1) + 8 * v54);

                            v56 = selfCopy->_logger;
                            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                            {
                              processName3 = [v19 processName];
                              intValue4 = [v52 intValue];
                              *buf = 138412546;
                              *&buf[4] = processName3;
                              *&buf[12] = 1024;
                              *&buf[14] = intValue4;
                              _os_log_impl(&dword_243DC3000, v56, OS_LOG_TYPE_DEFAULT, "pollPIDs: Process:%@ found duplicate process with pid:%d", buf, 0x12u);
                            }

                            [v19 addNewTrackedPID:{objc_msgSend(v52, "intValue")}];
                            [v12 removeObjectForKey:v52];
                            ++v54;
                            v55 = v52;
                          }

                          while (v51 != v54);
                          v51 = [obj countByEnumeratingWithState:&v242 objects:v271 count:16];
                        }

                        while (v51);

                        v13 = v207;
                        v15 = v209;
                      }

                      [v19 setNeedClearRestrictions:1];
                      v18 = v217;
                      [v216 addObject:v217];
                      v16 = v197;
                      v17 = v200;
                      goto LABEL_84;
                    }

                    obj = v49;
                    v16 = v197;
                    v17 = v200;
LABEL_83:
                    v18 = v217;
                    goto LABEL_84;
                  }

                  obj = 0;
                  v16 = v197;
                  v17 = v200;
LABEL_82:
                  v15 = v209;
                  goto LABEL_83;
                }
              }
            }

            uuid3 = [v19 uuid];
            v61 = [v12 allKeysForObject:uuid3];

            if (!v61)
            {
              obj = 0;
              goto LABEL_82;
            }

            v15 = v209;
            if (![v61 count])
            {
              obj = v61;
              goto LABEL_83;
            }

            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            obj = v61;
            v62 = [obj countByEnumeratingWithState:&v250 objects:v273 count:16];
            if (v62)
            {
              v63 = v62;
              v201 = v17;
              v64 = v16;
              v65 = 0;
              v66 = *v251;
              do
              {
                v67 = 0;
                v68 = v65;
                do
                {
                  if (*v251 != v66)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v65 = *(*(&v250 + 1) + 8 * v67);

                  v69 = selfCopy->_logger;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    processName4 = [v19 processName];
                    intValue5 = [v65 intValue];
                    *buf = 138412546;
                    *&buf[4] = processName4;
                    *&buf[12] = 1024;
                    *&buf[14] = intValue5;
                    _os_log_impl(&dword_243DC3000, v69, OS_LOG_TYPE_DEFAULT, "pollPIDs: Process:%@ seems to have relaunched with pid:%d", buf, 0x12u);
                  }

                  [v19 addNewTrackedPID:{objc_msgSend(v65, "intValue")}];
                  [v12 removeObjectForKey:v65];
                  ++v67;
                  v68 = v65;
                }

                while (v63 != v67);
                v63 = [obj countByEnumeratingWithState:&v250 objects:v273 count:16];
              }

              while (v63);

              v16 = v64;
              v17 = v201;
              v13 = v207;
              v15 = v209;
            }

            v18 = v217;
            [v216 addObject:v217];
          }

          else
          {
            v59 = selfCopy->_logger;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v22;
              _os_log_error_impl(&dword_243DC3000, v59, OS_LOG_TYPE_ERROR, "pollPIDs: Skipping processNameIdentifier: %@ because its CSProcess is NULL?", buf, 0xCu);
            }

            v19 = 0;
            v18 = v22;
          }

LABEL_84:
          objc_autoreleasePoolPop(context);
          v20 = v215 + 1;
        }

        while (v215 + 1 != v15);
        v72 = [v13 countByEnumeratingWithState:&v254 objects:v274 count:16];
        v15 = v72;
        if (!v72)
        {

          goto LABEL_90;
        }
      }
    }

    obj = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    v223 = 0;
LABEL_90:
    v202 = v17;
    v198 = v16;

    location = &selfCopy->_currentPIDList;
    if (selfCopy->_currentPIDList)
    {
      v240 = 0u;
      v241 = 0u;
      v238 = 0u;
      v239 = 0u;
      v220 = [v12 copy];
      v73 = [v220 countByEnumeratingWithState:&v238 objects:v270 count:16];
      if (v73)
      {
        v74 = v73;
        v199 = 0;
        v75 = 0;
        v76 = 0;
        v218 = 0;
        v77 = *v239;
        while (1)
        {
          for (i = 0; i != v74; ++i)
          {
            v79 = v223;
            v80 = v218;
            v81 = v75;
            if (*v239 != v77)
            {
              objc_enumerationMutation(v220);
            }

            v75 = *(*(&v238 + 1) + 8 * i);

            v82 = objc_autoreleasePoolPush();
            v218 = [*location objectForKey:v75];

            v223 = [v12 objectForKey:v75];

            if (gTargetProcess)
            {
              v83 = [p_isa fullProcessNameForPid:{objc_msgSend(v75, "intValue")}];

              if (v83)
              {
                if ([v83 isEqualToString:gTargetProcess])
                {
                  v84 = p_isa[5];
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                  {
                    v85 = gTargetProcess;
                    intValue6 = [v75 intValue];
                    *buf = 138412546;
                    *&buf[4] = v85;
                    *&buf[12] = 1024;
                    *&buf[14] = intValue6;
                    _os_log_debug_impl(&dword_243DC3000, v84, OS_LOG_TYPE_DEBUG, "pollPIDs: Allowing target process of %@ (%d) in newProcessesList", buf, 0x12u);
                  }

                  v76 = v83;
                  goto LABEL_106;
                }

                v76 = v83;
              }

              else
              {
                v76 = 0;
              }
            }

            if ([v223 isEqual:v218])
            {
              ++v199;
              [v12 removeObjectForKey:v75];
            }

LABEL_106:
            selfCopy = p_isa;
            objc_autoreleasePoolPop(v82);
          }

          v74 = [v220 countByEnumeratingWithState:&v238 objects:v270 count:16];
          if (!v74)
          {

            goto LABEL_111;
          }
        }
      }

      v199 = 0;
      v76 = 0;
      v218 = 0;
LABEL_111:
    }

    else
    {
      v199 = 0;
      v76 = 0;
      v218 = 0;
    }

    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v205 = v12;
    v208 = [v205 countByEnumeratingWithState:&v234 objects:v269 count:16];
    if (v208)
    {
      v87 = 0;
      daemonJobLabel = 0;
      v88 = 0;
      v206 = *v235;
      v89 = 0x277D46000uLL;
      while (1)
      {
        for (j = 0; j != v208; ++j)
        {
          v91 = v76;
          if (*v235 != v206)
          {
            objc_enumerationMutation(v205);
          }

          v92 = *(*(&v234 + 1) + 8 * j);

          v88 = v92;
          v221 = objc_autoreleasePoolPush();
          intValue7 = [v92 intValue];
          v76 = -[CSProcessManager fullProcessNameForPid:](selfCopy, "fullProcessNameForPid:", [v92 intValue]);

          if (v76)
          {
            v210 = j;
            v94 = *(v89 + 3912);
            v95 = [MEMORY[0x277CCABB0] numberWithInt:intValue7];
            v233 = 0;
            v96 = [v94 handleForIdentifier:v95 error:&v233];
            v97 = v233;

            v212 = v97;
            contexta = v96;
            if (v97)
            {
              logger = selfCopy->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = intValue7;
                *&buf[8] = 2112;
                *&buf[10] = v97;
                _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "pollPIDs: Error grabbing RBSProcessHandle (pid%i) to perform isDaemon check %@", buf, 0x12u);
              }

              goto LABEL_209;
            }

            identity = [v96 identity];
            v196 = identity;
            if (gTargetProcess && [v76 isEqualToString:?])
            {
              v102 = selfCopy->_logger;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                *&buf[4] = gTargetProcess;
                *&buf[12] = 1024;
                *&buf[14] = intValue7;
                _os_log_debug_impl(&dword_243DC3000, v102, OS_LOG_TYPE_DEBUG, "pollPIDs: Allowing target process of %@ (%d)", buf, 0x12u);
              }

LABEL_135:
              v104 = 1;
LABEL_136:

              if ([identity isDaemon])
              {
                daemonJobLabel = [contexta daemonJobLabel];
                v105 = selfCopy->_logger;
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *&buf[4] = daemonJobLabel;
                  *&buf[12] = 1024;
                  *&buf[14] = intValue7;
                  v106 = v105;
                  v107 = "Using daemonJobLabel:%@ for pid: %d";
                  goto LABEL_142;
                }

                goto LABEL_152;
              }

              if ([identity isXPCService])
              {
                xpcServiceIdentifier = [contexta xpcServiceIdentifier];
                daemonJobLabel = convertXPCServiceName(xpcServiceIdentifier);

                v105 = selfCopy->_logger;
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *&buf[4] = daemonJobLabel;
                  *&buf[12] = 1024;
                  *&buf[14] = intValue7;
                  v106 = v105;
                  v107 = "Using xpcServiceIdentifier:%@ for pid: %d";
LABEL_142:
                  _os_log_debug_impl(&dword_243DC3000, v106, OS_LOG_TYPE_DEBUG, v107, buf, 0x12u);
                }

LABEL_152:

                if (!daemonJobLabel)
                {
                  v117 = selfCopy->_logger;
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    *&buf[4] = intValue7;
                    _os_log_debug_impl(&dword_243DC3000, v117, OS_LOG_TYPE_DEBUG, "Skipping pid: %d since we could not get daemonJobLabel, bundleIDidentifier or name", buf, 8u);
                  }

                  daemonJobLabel = 0;
                  goto LABEL_156;
                }
              }

              else
              {
                v193 = v87;
                bundle = [contexta bundle];
                if (bundle)
                {
                  v113 = bundle;
                  bundle2 = [contexta bundle];
                  identifier = [bundle2 identifier];

                  if (identifier)
                  {
                    bundle3 = [contexta bundle];
                    daemonJobLabel = [bundle3 identifier];

                    v105 = selfCopy->_logger;
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      *&buf[4] = daemonJobLabel;
                      *&buf[12] = 1024;
                      *&buf[14] = intValue7;
                      _os_log_debug_impl(&dword_243DC3000, v105, OS_LOG_TYPE_DEBUG, "Using bundleID:%@ for pid: %d", buf, 0x12u);
                    }

                    v87 = v193;
                    v89 = 0x277D46000;
                    goto LABEL_152;
                  }
                }

                daemonJobLabel = v76;
                v120 = selfCopy->_logger;
                if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *&buf[4] = daemonJobLabel;
                  *&buf[12] = 1024;
                  *&buf[14] = intValue7;
                  _os_log_debug_impl(&dword_243DC3000, v120, OS_LOG_TYPE_DEBUG, "Using name:%@ for pid: %d", buf, 0x12u);
                }

                v87 = v193;
                v89 = 0x277D46000;
              }

              v119 = [v205 objectForKey:v88];

              v118 = [(CSProcessManager *)selfCopy getProcessForUUID:v119];

              if (v118)
              {
                v121 = v88;
                v122 = v87;
                v123 = selfCopy->_logger;
                if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                {
                  v124 = v123;
                  processName5 = [v118 processName];
                  intValue8 = [v121 intValue];
                  *buf = 138412546;
                  *&buf[4] = processName5;
                  *&buf[12] = 1024;
                  *&buf[14] = intValue8;
                  _os_log_impl(&dword_243DC3000, v124, OS_LOG_TYPE_DEFAULT, "pollPIDs: Process:%@ found another new duplicate process with pid:%d", buf, 0x12u);
                }

                [v118 addNewTrackedPID:{objc_msgSend(v121, "intValue")}];
                v87 = v122;
                v88 = v121;
              }

              else
              {
                v127 = [[CSProcess alloc] initWithIdentifier:daemonJobLabel andPID:intValue7];
                if (v127)
                {
                  v118 = v127;
                  [v205 objectForKey:v88];
                  v129 = v128 = v104;

                  v191 = v129;
                  [v118 setUuid:v129];
                  if (v128)
                  {
                    [v118 setProcessName:v76];
                    v130 = selfCopy->_logger;
                    v131 = daemonJobLabel;
                    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      *&buf[4] = v76;
                      *&buf[12] = 2112;
                      *&buf[14] = daemonJobLabel;
                      _os_log_debug_impl(&dword_243DC3000, v130, OS_LOG_TYPE_DEBUG, "pollPIDs: name: %@ identifier: %@", buf, 0x16u);
                    }

                    [(NSMutableDictionary *)selfCopy->_processNameIdentiferByName setObject:daemonJobLabel forKey:v76];
                  }

                  else
                  {
                    v133 = v88;
                    v134 = v87;
                    v135 = convertXPCServiceName(v76);
                    [v118 setProcessName:v135];

                    v136 = selfCopy->_logger;
                    v131 = daemonJobLabel;
                    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                    {
                      v167 = convertXPCServiceName(v76);
                      *buf = 138412546;
                      *&buf[4] = v167;
                      *&buf[12] = 2112;
                      *&buf[14] = daemonJobLabel;
                      _os_log_debug_impl(&dword_243DC3000, v136, OS_LOG_TYPE_DEBUG, "pollPIDs: name: %@ identifier: %@", buf, 0x16u);
                    }

                    processNameIdentiferByName = selfCopy->_processNameIdentiferByName;
                    v138 = convertXPCServiceName(v76);
                    [(NSMutableDictionary *)processNameIdentiferByName setObject:daemonJobLabel forKey:v138];

                    [v118 setXpcService:1];
                    v87 = v134;
                    v88 = v133;
                    v89 = 0x277D46000;
                  }

                  v139 = [(NSDictionary *)selfCopy->_processPoliciesDict objectForKey:v131];
                  v190 = v139;
                  if (v139)
                  {
                    [v118 setPolicyBitMask:{objc_msgSend(v139, "intValue")}];
                  }

                  else if ([(NSSet *)selfCopy->_band95ProcessesSet containsObject:v131])
                  {
                    [v118 setBand95Mitigations:1];
                  }

                  else if ([(NSSet *)selfCopy->_band80ProcessesSet containsObject:v131])
                  {
                    [v118 setBand80Mitigations:1];
                  }

                  v268 = 0u;
                  v267 = 0u;
                  memset(buf, 0, sizeof(buf));
                  if (proc_pidinfo(intValue7, 13, 0, buf, 64) == 64 && !DWORD1(v267))
                  {
                    v140 = selfCopy->_logger;
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
                    {
                      *v259 = 138412546;
                      *v260 = v76;
                      *&v260[8] = 1024;
                      *&v260[10] = intValue7;
                      _os_log_debug_impl(&dword_243DC3000, v140, OS_LOG_TYPE_DEBUG, "pollPIDs: Auto exempting root process: %@ (%d)", v259, 0x12u);
                    }

                    [v118 setRootDaemon:1];
                    [v118 setPolicyBitMask:3];
                  }

                  [(NSMutableDictionary *)selfCopy->_allProcessesMap setObject:v118 forKey:v131];
                  [v216 addObject:v131];
                  v141 = selfCopy->_logger;
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
                  {
                    [v118 processName];
                    v164 = v88;
                    v166 = v165 = v87;
                    *v259 = 138412546;
                    *v260 = v166;
                    *&v260[8] = 1024;
                    *&v260[10] = intValue7;
                    _os_log_debug_impl(&dword_243DC3000, v141, OS_LOG_TYPE_DEBUG, "pollPIDs: Tracking process:%@ (%d)", v259, 0x12u);

                    v87 = v165;
                    v88 = v164;
                  }

                  [(CSProcessManager *)selfCopy applyRecordsForProcess:v118];
                  if (!selfCopy->_currentPIDList)
                  {
                    v231 = 0u;
                    v232 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    trackedPIDs3 = [v118 trackedPIDs];
                    v143 = [trackedPIDs3 countByEnumeratingWithState:&v229 objects:v265 count:16];
                    if (v143)
                    {
                      v144 = v143;
                      v192 = v88;
                      v194 = v87;
                      v188 = v76;
                      v145 = 0;
                      v146 = *v230;
                      do
                      {
                        for (k = 0; k != v144; ++k)
                        {
                          v148 = v145;
                          if (*v230 != v146)
                          {
                            objc_enumerationMutation(trackedPIDs3);
                          }

                          v145 = *(*(&v229 + 1) + 8 * k);

                          intValue9 = [v145 intValue];
                          *__error() = 0;
                          v150 = getpriority(9, intValue9);
                          if (!*__error() && v150 == 1)
                          {
                            logger = [(CSProcessManager *)selfCopy logger];
                            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                            {
                              processName6 = [v118 processName];
                              *v259 = 138412546;
                              *v260 = processName6;
                              *&v260[8] = 1024;
                              *&v260[10] = intValue9;
                              _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "pollPIDs: Releasing process:%@ (%d) since it was left in penalty box", v259, 0x12u);

                              selfCopy = p_isa;
                            }

                            *__error() = 0;
                            if (setpriority(9, intValue9, 0))
                            {
                              v153 = selfCopy->_logger;
                              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                              {
                                v224 = *__error();
                                v154 = __error();
                                v155 = strerror(*v154);
                                processName7 = [v118 processName];
                                *v259 = 67109890;
                                *v260 = v224;
                                *&v260[4] = 2080;
                                *&v260[6] = v155;
                                v261 = 2112;
                                v262 = processName7;
                                v263 = 1024;
                                v264 = intValue9;
                                _os_log_error_impl(&dword_243DC3000, v153, OS_LOG_TYPE_ERROR, "pollPIDs: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", v259, 0x22u);

                                selfCopy = p_isa;
                              }
                            }

                            else
                            {
                              v157 = +[CSMitigationManager sharedInstance];
                              processName8 = [v118 processName];
                              [v157 logMitigationAsSignpost:processName8 withPid:intValue9 withIssueType:objc_msgSend(v118 withMitigationType:"issueType") withReason:3 withPenaltyBoxEndTime:{20, 0}];

                              trackedPIDs4 = [v118 trackedPIDs];
                              v153 = [trackedPIDs4 objectForKeyedSubscript:v145];

                              v160 = +[CSMitigationManager sharedInstance];
                              longLongValue = [v153 longLongValue];
                              issueType = [v118 issueType];
                              v163 = longLongValue;
                              selfCopy = p_isa;
                              [v160 logMitigationToPowerLogForProcess:v118 withPid:intValue9 withCoalitionID:v163 withIssueType:issueType withMitigationType:3 withReason:20];
                            }
                          }
                        }

                        v144 = [trackedPIDs3 countByEnumeratingWithState:&v229 objects:v265 count:16];
                      }

                      while (v144);

                      v76 = v188;
                      v87 = v194;
                      v88 = v192;
                      v89 = 0x277D46000;
                    }
                  }

                  v119 = v191;
                }

                else
                {
                  v132 = selfCopy->_logger;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    *&buf[4] = daemonJobLabel;
                    *&buf[12] = 1024;
                    *&buf[14] = intValue7;
                    _os_log_debug_impl(&dword_243DC3000, v132, OS_LOG_TYPE_DEBUG, "Skipping process:%@ (%d) since could not create CSProcess", buf, 0x12u);
                  }

                  v118 = 0;
                }
              }
            }

            else
            {
              if (selfCopy->_monitorFilterBitMap)
              {
                v103 = [identity isDaemon] ^ 1;
              }

              else
              {
                v103 = 1;
              }

              if (gMitigateXPCServices == 1 && (selfCopy->_monitorFilterBitMap & 0x10) != 0)
              {
                v109 = [(CSProcessManager *)selfCopy isAppleXPCServiceWithRBS:identity andPID:0];
                v104 = !v109;
                if (v109 || ((v103 ^ 1) & 1) != 0)
                {
                  goto LABEL_136;
                }
              }

              else if (!v103)
              {
                goto LABEL_135;
              }

              v110 = selfCopy->_logger;
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
              {
                monitorFilterBitMap = selfCopy->_monitorFilterBitMap;
                *buf = 67109376;
                *&buf[4] = intValue7;
                *&buf[8] = 1024;
                *&buf[10] = monitorFilterBitMap;
                _os_log_debug_impl(&dword_243DC3000, v110, OS_LOG_TYPE_DEBUG, "pollPIDs: Skipping pid: %d since it does not match current filter map 0x%x", buf, 0xEu);
              }

LABEL_156:
              v118 = v19;
              v119 = v223;
            }

            v19 = v118;
            v223 = v119;
LABEL_209:
            j = v210;
            v100 = v221;
            ++v87;

            goto LABEL_210;
          }

          v99 = selfCopy->_logger;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = intValue7;
            _os_log_error_impl(&dword_243DC3000, v99, OS_LOG_TYPE_ERROR, "pollPIDs: fullProcessNameForPid failed for pid: %i", buf, 8u);
          }

          v100 = v221;
LABEL_210:
          objc_autoreleasePoolPop(v100);
        }

        v208 = [v205 countByEnumeratingWithState:&v234 objects:v269 count:16];
        if (!v208)
        {
          v195 = v87;
          v189 = v76;

          goto LABEL_214;
        }
      }
    }

    v189 = v76;
    v195 = 0;
    daemonJobLabel = 0;
LABEL_214:

    currentPIDList = selfCopy->_currentPIDList;
    selfCopy->_currentPIDList = 0;

    objc_storeStrong(location, v187);
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_allProcessesMap allValues];
    v170 = [allValues countByEnumeratingWithState:&v225 objects:v258 count:16];
    if (v170)
    {
      v171 = v170;
      v172 = *v226;
      do
      {
        for (m = 0; m != v171; ++m)
        {
          if (*v226 != v172)
          {
            objc_enumerationMutation(allValues);
          }

          v174 = *(*(&v225 + 1) + 8 * m);
          v175 = objc_autoreleasePoolPush();
          trackedPIDs5 = [v174 trackedPIDs];
          v177 = [trackedPIDs5 count];

          if (v177)
          {
            energySnapshotNew = [v174 energySnapshotNew];
            time = [energySnapshotNew time];

            if (!time || ([MEMORY[0x277CBEAA8] now], v180 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v180, "timeIntervalSinceDate:", time), v182 = v181, v180, v182 > 600.0))
            {
              [v174 snapshotCPUEnergy];
            }
          }

          objc_autoreleasePoolPop(v175);
        }

        v171 = [allValues countByEnumeratingWithState:&v225 objects:v258 count:16];
      }

      while (v171);
    }

    v183 = +[CSMitigationManager sharedInstance];
    [v183 logPenaltyBoxListAsSignposts];

    [p_isa notifyObserversOfNewInstances:v216];
    v184 = p_isa[5];
    if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *&buf[4] = v186;
      *&buf[8] = 1024;
      *&buf[10] = v199;
      *&buf[14] = 1024;
      *&buf[16] = v195;
      *&buf[20] = 1024;
      *&buf[22] = v202;
      *&buf[26] = 1024;
      *&buf[28] = v198;
      _os_log_impl(&dword_243DC3000, v184, OS_LOG_TYPE_DEFAULT, "pollPIDs: totalPIDs: %d skippedPIDs: %d queryRBSPIDs: %d monitorPIDs: %d xpcServicesPIDs: %d", buf, 0x20u);
    }

    dictionary = v187;
  }

  else if (os_log_type_enabled(selfCopy->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSProcessManager pollPIDs];
  }
}

- (double)pollPIDs
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(self + 16);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "pollPIDs: Start, interval: %f", &v4, 0xCu);
  return result;
}

+ (int)coalitionIDForPid:(int)pid coalitionID:(unint64_t *)d
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = proc_pidinfo(pid, 20, 1uLL, v6, 40);
  if (result == 40)
  {
    result = 0;
    if (d)
    {
      *d = *&v6[0];
    }
  }

  return result;
}

+ (id)sharedInstanceWithEnrolledProcesses:(id)processes andProcessPolicies:(id)policies andBand95:(id)band95 andBand80:(id)band80
{
  processesCopy = processes;
  policiesCopy = policies;
  band95Copy = band95;
  band80Copy = band80;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__CSProcessManager_sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___block_invoke;
  v21[3] = &unk_278DF53E8;
  v22 = processesCopy;
  v23 = policiesCopy;
  v24 = band95Copy;
  v25 = band80Copy;
  v13 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80__onceToken;
  v14 = band80Copy;
  v15 = band95Copy;
  v16 = policiesCopy;
  v17 = processesCopy;
  if (v13 != -1)
  {
    dispatch_once(&sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80__onceToken, v21);
  }

  v18 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance;
  v19 = sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance;

  return v18;
}

uint64_t __95__CSProcessManager_sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___block_invoke(void *a1)
{
  sharedInstanceWithEnrolledProcesses_andProcessPolicies_andBand95_andBand80___sharedInstance = [[CSProcessManager alloc] _initWithEnrolledProcesses:a1[4] andProcessPolicies:a1[5] andBand95:a1[6] andBand80:a1[7]];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithEnrolledProcesses:(id)processes andProcessPolicies:(id)policies andBand95:(id)band95 andBand80:(id)band80
{
  policiesCopy = policies;
  band95Copy = band95;
  band80Copy = band80;
  v26.receiver = self;
  v26.super_class = CSProcessManager;
  v13 = [(CSProcessManager *)&v26 init];
  if (v13)
  {
    v14 = [CSLogger logForCategory:@"CSProcessManager"];
    logger = v13->_logger;
    v13->_logger = v14;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allProcessesMap = v13->_allProcessesMap;
    v13->_allProcessesMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    processNameIdentiferByName = v13->_processNameIdentiferByName;
    v13->_processNameIdentiferByName = dictionary2;

    objc_storeStrong(&v13->_processPoliciesDict, policies);
    objc_storeStrong(&v13->_band95ProcessesSet, band95);
    objc_storeStrong(&v13->_band80ProcessesSet, band80);
    v13->_monitorFilterBitMap = 17;
    pollingTimer = v13->_pollingTimer;
    v13->_pollingTimer = 0;

    v21 = [MEMORY[0x277CBEB58] set];
    observers = v13->_observers;
    v13->_observers = v21;

    *&v13->_PIDPollingInterval = 1133903872;
    currentPIDList = v13->_currentPIDList;
    v13->_currentPIDList = 0;

    [(CSProcessManager *)v13 initRelaunchPollingTimer];
    [(CSProcessManager *)v13 importMitigationRecords];
    [(CSProcessManager *)v13 schedulePIDPolling];
    v24 = v13;
  }

  return v13;
}

- (void)schedulePIDPolling
{
  v3 = getMainQueue(self);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  pollingTimer = self->_pollingTimer;
  self->_pollingTimer = v4;

  v6 = self->_pollingTimer;
  v7 = dispatch_walltime(0, 60000000000);
  dispatch_source_set_timer(v6, v7, (self->_PIDPollingInterval * 1000000000.0), 0x6FC23AC00uLL);
  objc_initWeak(&location, self);
  v8 = self->_pollingTimer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CSProcessManager_schedulePIDPolling__block_invoke;
  v9[3] = &unk_278DF5180;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_pollingTimer);
  self->_pollingTimerActive = 1;
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSProcessManager schedulePIDPolling];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)initRelaunchPollingTimer
{
  v3 = [MEMORY[0x277CBEB58] set];
  relaunchPollingUUIDs = self->_relaunchPollingUUIDs;
  self->_relaunchPollingUUIDs = v3;

  v6 = getMainQueue(v5);
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);
  relaunchPollingTimer = self->_relaunchPollingTimer;
  self->_relaunchPollingTimer = v7;

  objc_initWeak(&location, self);
  v9 = self->_relaunchPollingTimer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__CSProcessManager_initRelaunchPollingTimer__block_invoke;
  v10[3] = &unk_278DF5180;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  *&self->_relaunchPollingIntervalStartS = 0x4396000040A00000;
  self->_savedRelaunchPollingIntervalStartS = 0.0;
  self->_relaunchPollingTimerActive = 0;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __44__CSProcessManager_initRelaunchPollingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pollPenaltyBoxProcessRelaunch];
}

- (void)importMitigationRecords
{
  v36 = *MEMORY[0x277D85DE8];
  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;

  v5 = +[CSPowerlogDBReader sharedInstance];
  v6 = [MEMORY[0x277CBEAA8] now];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar startOfDayForDate:v6];
  getDeviceBootTime = [v5 getDeviceBootTime];
  if ([v8 compare:getDeviceBootTime] == -1)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v8;
      v34 = 2112;
      v35 = getDeviceBootTime;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "importMitigationRecords: Updated startDate (was %@) to deviceBootTime %@", buf, 0x16u);
    }

    v11 = getDeviceBootTime;

    v8 = v11;
  }

  [v5 openConnection];
  v12 = [v5 getPowerExceptionsRecordsWithStartDate:v8 andEndDate:v6];
  [v5 closeConnection];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 count])
      {
        v13 = [v12 mutableCopy];
        v14 = self->_powerlogRecords;
        self->_powerlogRecords = v13;
      }
    }
  }

  if (self->_powerlogRecords)
  {
    v23 = getDeviceBootTime;
    v24 = v8;
    v25 = currentCalendar;
    v26 = v6;
    array = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = self->_powerlogRecords;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"PUUID"];
          [array addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    currentCalendar = v25;
    v6 = v26;
    v8 = v24;
    if ([array count])
    {
      v22 = self->_logger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243DC3000, v22, OS_LOG_TYPE_DEFAULT, "importMitigationRecords: found records", buf, 2u);
      }

      objc_storeStrong(&self->_powerlogRecordsUUIDs, array);
    }

    getDeviceBootTime = v23;
  }
}

- (void)registerForPenaltyBoxRelaunchPolling:(id)polling
{
  pollingCopy = polling;
  v5 = getMainQueue(pollingCopy);
  dispatch_assert_queue_V2(v5);

  if (([(NSMutableSet *)self->_relaunchPollingUUIDs containsObject:pollingCopy]& 1) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSProcessManager registerForPenaltyBoxRelaunchPolling:];
    }
  }

  else
  {
    [(NSMutableSet *)self->_relaunchPollingUUIDs addObject:pollingCopy];
  }

  relaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
  self->_relaunchPollingIntervalS = relaunchPollingIntervalStartS;
  relaunchPollingTimer = self->_relaunchPollingTimer;
  v8 = dispatch_walltime(0, (relaunchPollingIntervalStartS * 1000000000.0));
  dispatch_source_set_timer(relaunchPollingTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  if (!self->_relaunchPollingTimerActive)
  {
    dispatch_resume(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 1;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "registerForPenaltyBoxRelaunchPolling: timer now active", v10, 2u);
    }
  }
}

- (void)unregisterForPenaltyBoxRelaunchPolling:(id)polling
{
  pollingCopy = polling;
  v5 = getMainQueue(pollingCopy);
  dispatch_assert_queue_V2(v5);

  [(NSMutableSet *)self->_relaunchPollingUUIDs minusSet:pollingCopy];
  if (![(NSMutableSet *)self->_relaunchPollingUUIDs count]&& self->_relaunchPollingTimerActive)
  {
    dispatch_suspend(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 0;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "unregisterForPenaltyBoxRelaunchPolling: timer now inactive", v7, 2u);
    }
  }
}

- (void)unregisterAllForPenaltyBoxRelaunchPolling
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  [(NSMutableSet *)self->_relaunchPollingUUIDs removeAllObjects];
  if (self->_relaunchPollingTimerActive)
  {
    dispatch_suspend(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 0;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "unregisterAllForPenaltyBoxRelaunchPolling: timer now inactive", v5, 2u);
    }
  }
}

- (BOOL)isAppleXPCServiceWithRBS:(id)s andPID:(int)d
{
  v4 = *&d;
  sCopy = s;
  v7 = sCopy;
  if (sCopy)
  {
    identity = sCopy;
  }

  else
  {
    v11 = MEMORY[0x277D46F48];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v15 = 0;
    v13 = [v11 handleForIdentifier:v12 error:&v15];
    xpcServiceIdentifier = v15;

    if (xpcServiceIdentifier)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSProcessManager isAppleXPCServiceWithRBS:andPID:];
      }

      identity = 0;
      v10 = 0;
      goto LABEL_10;
    }

    identity = [v13 identity];
  }

  if ([identity isXPCService])
  {
    xpcServiceIdentifier = [identity xpcServiceIdentifier];
    v10 = [xpcServiceIdentifier hasPrefix:@"com.apple"];
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)pollPenaltyBoxProcessRelaunch
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    relaunchPollingIntervalS = self->_relaunchPollingIntervalS;
    *buf = 134217984;
    v50 = relaunchPollingIntervalS;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "pollPenaltyBoxProcessRelaunch: Start (interval: %f)", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = +[CSMitigationManager sharedInstance];
  penaltyBoxProcesses = [v7 penaltyBoxProcesses];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(CSProcessManager *)self fillPIDDictionary:?])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [penaltyBoxProcesses allValues];
    v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          relaunchPollingUUIDs = self->_relaunchPollingUUIDs;
          uuid = [v13 uuid];
          LODWORD(relaunchPollingUUIDs) = [(NSMutableSet *)relaunchPollingUUIDs containsObject:uuid];

          if (relaunchPollingUUIDs)
          {
            context = objc_autoreleasePoolPush();
            uuid2 = [v13 uuid];
            v17 = [dictionary allKeysForObject:uuid2];

            if (v17 && [v17 count])
            {
              v35 = penaltyBoxProcesses;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v40;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v40 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v39 + 1) + 8 * j);
                    trackedPIDs = [v13 trackedPIDs];
                    allKeys = [trackedPIDs allKeys];
                    LOBYTE(v23) = [allKeys containsObject:v23];

                    if ((v23 & 1) == 0)
                    {
                      v26 = self->_logger;
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = v26;
                        identifier = [v13 identifier];
                        *buf = 138412290;
                        v50 = *&identifier;
                        _os_log_impl(&dword_243DC3000, v27, OS_LOG_TYPE_DEFAULT, "pollPenaltyBoxProcessRelaunch: found %@", buf, 0xCu);
                      }

                      uuid3 = [v13 uuid];
                      [v6 addObject:uuid3];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v20);
              }

              objc_autoreleasePoolPop(context);
              penaltyBoxProcesses = v35;
              goto LABEL_30;
            }

            objc_autoreleasePoolPop(context);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSProcessManager pollPenaltyBoxProcessRelaunch];
  }

  if ([v6 count])
  {
    [(CSProcessManager *)self unregisterForPenaltyBoxRelaunchPolling:v6];
  }

  savedRelaunchPollingIntervalStartS = self->_savedRelaunchPollingIntervalStartS;
  if (savedRelaunchPollingIntervalStartS != 0.0)
  {
    self->_relaunchPollingIntervalS = savedRelaunchPollingIntervalStartS;
    self->_relaunchPollingIntervalStartS = savedRelaunchPollingIntervalStartS;
    self->_savedRelaunchPollingIntervalStartS = 0.0;
  }

  if (self->_relaunchPollingTimerActive && [(NSMutableSet *)self->_relaunchPollingUUIDs count]&& (v31 = self->_relaunchPollingIntervalS, v31 <= 1.7014e38) && v31 <= (self->_relaunchPollingIntervalMaxS * 0.5))
  {
    v32 = v31 + v31;
    self->_relaunchPollingIntervalS = v32;
    relaunchPollingTimer = self->_relaunchPollingTimer;
    v34 = dispatch_walltime(0, (v32 * 1000000000.0));
    dispatch_source_set_timer(relaunchPollingTimer, v34, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  }

  else
  {
    [(CSProcessManager *)self unregisterAllForPenaltyBoxRelaunchPolling];
  }

  if ([v6 count])
  {
    [(CSProcessManager *)self pollPIDs];
  }
}

- (BOOL)fillPIDDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

    goto LABEL_13;
  }

  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = v5;
  v8 = malloc_type_malloc(v5, 0x100004052888210uLL);
  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager fillPIDDictionary:];
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  memset(v8, 255, v7);
  v10 = proc_listpids(1u, 0, v9, v6);
  if (v10 >= 4)
  {
    v12 = 0;
    v11 = 0;
    if (v10 >> 2 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10 >> 2;
    }

    v16 = v9;
    do
    {
      v18 = *v16++;
      v17 = v18;
      if (v18 >= 1)
      {
        v19 = getProcessUUID(v17);

        if (v19)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithInt:v17];

          [dictionaryCopy setObject:v19 forKey:v20];
          v11 = v20;
          v12 = v19;
        }

        else
        {
          logger = self->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            v22 = logger;
            v23 = *__error();
            *buf = 67109376;
            v25 = v23;
            v26 = 1024;
            v27 = v17;
            _os_log_error_impl(&dword_243DC3000, v22, OS_LOG_TYPE_ERROR, "fillPIDDictionary: getProcessUUID() failed %d, so skipping pid: %d", buf, 0xEu);
          }

          v12 = 0;
        }
      }

      --v15;
    }

    while (v15);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  free(v9);

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)applyRecordsForProcess:(id)process
{
  v76 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = processCopy;
  if (self->_targetProcessRecords)
  {
    v6 = gTargetProcess == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ([processCopy processName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", gTargetProcess), v7, !v8))
  {
    powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
    uuid = [v5 uuid];
    uUIDString = [uuid UUIDString];
    LODWORD(powerlogRecordsUUIDs) = [(NSMutableArray *)powerlogRecordsUUIDs containsObject:uUIDString];

    if (powerlogRecordsUUIDs)
    {
      array = [MEMORY[0x277CBEB18] array];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = [(NSMutableArray *)self->_powerlogRecords copy];
      v15 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v67;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v67 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v66 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:@"PUUID"];
            uuid2 = [v5 uuid];
            uUIDString2 = [uuid2 UUIDString];
            v23 = [v20 isEqualToString:uUIDString2];

            if (v23)
            {
              [array addObject:v19];
              [(NSMutableArray *)self->_powerlogRecords removeObject:v19];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v16);
      }

      if ([array count])
      {
        v11 = array;
      }

      else
      {
        v11 = 0;
      }

      v24 = self->_powerlogRecordsUUIDs;
      uuid3 = [v5 uuid];
      uUIDString3 = [uuid3 UUIDString];
      [(NSMutableArray *)v24 removeObject:uUIDString3];

      v59 = 0;
    }

    else
    {
      v59 = 0;
      v11 = 0;
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      targetProcessRecords = self->_targetProcessRecords;
      *buf = 138412546;
      v73 = gTargetProcess;
      v74 = 2112;
      v75 = targetProcessRecords;
      _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "applyRecordsForProcess: for target process %@, use _targetProcessRecords: %@", buf, 0x16u);
    }

    v11 = self->_targetProcessRecords;
    v59 = 1;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v27 = v11;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v28)
  {
    v30 = v28;
    v31 = *v63;
    *&v29 = 67109120;
    v58 = v29;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v62 + 1) + 8 * j);
        v34 = self->_logger;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          processName = [v5 processName];
          *buf = 138412546;
          v73 = processName;
          v74 = 2112;
          v75 = v33;
          _os_log_impl(&dword_243DC3000, v35, OS_LOG_TYPE_DEFAULT, "applyRecordsForProcess: process: %@ record: %@", buf, 0x16u);
        }

        v37 = [(NSArray *)v33 objectForKeyedSubscript:@"FatalCount", v58];
        intValue = [v37 intValue];

        [v5 setCpuFatalCnt:intValue];
        v39 = [(NSArray *)v33 objectForKeyedSubscript:@"NonFatalCount"];
        intValue2 = [v39 intValue];

        [v5 setCpuNonFatalCnt:intValue2];
        v41 = [(NSArray *)v33 objectForKeyedSubscript:@"MitigationType"];
        intValue3 = [v41 intValue];

        v43 = [(NSArray *)v33 objectForKeyedSubscript:@"timestampEnd"];
        [v43 doubleValue];
        v45 = v44;

        v46 = [(NSArray *)v33 objectForKeyedSubscript:@"TimeWindowSize"];
        [v46 doubleValue];
        v48 = v47;

        if (intValue3 > 4)
        {
          if (intValue3 <= 6)
          {
            if (intValue3 == 5)
            {
              goto LABEL_51;
            }

            [v5 setPenaltyBoxPending:1];
LABEL_39:
            if (v59)
            {
              [v5 addPenaltyBoxCoalitionID:{objc_msgSend(v5, "lastCoalitionID")}];
            }

            else
            {
              v55 = [(NSArray *)v33 objectForKeyedSubscript:@"CoalitionID"];
              [v5 addPenaltyBoxCoalitionID:{objc_msgSend(v55, "intValue")}];
            }

            goto LABEL_51;
          }

          if (intValue3 != 7 && intValue3 != 255)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (intValue3 <= 2)
          {
            if (intValue3 < 2)
            {
              goto LABEL_51;
            }

            if (intValue3 != 2)
            {
LABEL_48:
              v56 = self->_logger;
              if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_51;
              }

              *buf = v58;
              LODWORD(v73) = intValue3;
              v52 = v56;
              v53 = "applyRecordsForProcess: skipping unknown mitigationType value: %d";
              v54 = 8;
              goto LABEL_50;
            }

            v49 = +[CSMitigationManager sharedInstance];
            v50 = [v49 penaltyBoxDurationMinsForProcess:v5];

            [v5 setPenaltyBoxDurationMins:v50];
            [v5 setPenaltyBoxEndTime:{getCurrentTime() + 60 * objc_msgSend(v5, "penaltyBoxDurationMins")}];
            goto LABEL_39;
          }

          if (intValue3 != 3)
          {
            v51 = self->_logger;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v52 = v51;
              v53 = "applyRecordsForProcess: unexpected PEMitigationDefault value";
              v54 = 2;
LABEL_50:
              _os_log_impl(&dword_243DC3000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
            }
          }
        }

LABEL_51:
        v57 = [(NSArray *)v33 objectForKeyedSubscript:@"IssueType"];
        [v5 addViolationEvent:objc_msgSend(v57 startTime:"intValue") endTime:{v45 - v48, v45}];
      }

      v30 = [(NSArray *)v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v30);
  }
}

- (void)notifyObserversOfNewInstances:(id)instances
{
  v15 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) observeNewRunningProcesses:{instancesCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)identiferForName:(id)name
{
  nameCopy = name;
  v5 = getMainQueue(nameCopy);
  dispatch_assert_queue_V2(v5);

  v6 = [(NSMutableDictionary *)self->_processNameIdentiferByName objectForKeyedSubscript:nameCopy];

  processNameIdentiferByName = self->_processNameIdentiferByName;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)processNameIdentiferByName objectForKeyedSubscript:nameCopy];
LABEL_5:
    v11 = v8;
    goto LABEL_6;
  }

  allValues = [(NSMutableDictionary *)processNameIdentiferByName allValues];
  v10 = [allValues containsObject:nameCopy];

  if (v10)
  {
    v8 = nameCopy;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)processNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = getMainQueue(identifierCopy);
  dispatch_assert_queue_V2(v5);

  v6 = [(CSProcessManager *)self processForIdentifier:identifierCopy];

  if (v6)
  {
    processName = [v6 processName];
  }

  else
  {
    processName = 0;
  }

  return processName;
}

- (id)getProcessForProcessName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = getMainQueue(nameCopy);
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        processName = [v10 processName];
        v12 = [processName isEqualToString:nameCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)getProcessForUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getMainQueue(dCopy);
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)getProcessForPID:(int)d
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSMutableDictionary *)self->_allProcessesMap copy];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v12 = v9;
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);

        if (v9 && ([(NSMutableDictionary *)self->_allProcessesMap objectForKey:v9], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v8 = v13;
          trackedPIDs = [v13 trackedPIDs];
          v15 = [trackedPIDs count];

          if (v15)
          {
            trackedPIDs2 = [v8 trackedPIDs];
            v17 = [trackedPIDs2 objectForKey:v4];

            if (v17)
            {
              v8 = v8;

              v5 = v9;
              v19 = v8;
              goto LABEL_17;
            }
          }
        }

        else
        {
          logger = self->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "getProcessForPID: Skipping processNameIdentifier: %@ because its CSProcess is NULL?", buf, 0xCu);
          }

          v8 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
    v19 = 0;
    v17 = v9;
LABEL_17:
  }

  else
  {
    v8 = 0;
    v19 = 0;
  }

  return v19;
}

- (void)recordTerminationForPID:(int)d
{
  v3 = *&d;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(CSProcessManager *)self getProcessForPID:?];
  logger = self->_logger;
  if (v5)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = logger;
      processName = [v5 processName];
      v19 = 138412546;
      v20 = processName;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_243DC3000, v7, OS_LOG_TYPE_DEFAULT, "recordTerminationForPID: Process:%@ (%d) exited", &v19, 0x12u);
    }

    if ([v5 inPenaltyBox])
    {
      v9 = +[CSMitigationManager sharedInstance];
      processName2 = [v5 processName];
      [v9 logMitigationAsSignpost:processName2 withPid:v3 withIssueType:objc_msgSend(v5 withMitigationType:"issueType") withReason:3 withPenaltyBoxEndTime:{12, 0}];
    }

    v11 = +[CSMitigationManager sharedInstance];
    penaltyBoxProcesses = [v11 penaltyBoxProcesses];
    allKeys = [penaltyBoxProcesses allKeys];

    uuid = [v5 uuid];
    LODWORD(penaltyBoxProcesses) = [allKeys containsObject:uuid];

    if (penaltyBoxProcesses)
    {
      v15 = self->_logger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        processName3 = [v5 processName];
        v19 = 138412290;
        v20 = processName3;
        _os_log_impl(&dword_243DC3000, v16, OS_LOG_TYPE_DEFAULT, "recordTerminationForPID: request polling for relaunch of process:%@", &v19, 0xCu);
      }

      uuid2 = [v5 uuid];
      [(CSProcessManager *)self registerForPenaltyBoxRelaunchPolling:uuid2];
    }

    [v5 performCleanupOnExitOnPID:v3];
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [(CSProcessManager *)v3 recordTerminationForPID:?];
  }
}

- (void)clearAllCounters
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_allProcessesMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 setCpuFatalCnt:0];
        [v9 setCpuNonFatalCnt:0];
        [v9 setExitsCnt:0];
        [v9 setPenaltyBoxCnt:0];
        [v9 setPenaltyBoxPending:0];
        [v9 setEventHistory:0];
        [v9 setPenaltyBoxEndTime:0];
        penaltyBoxCoalitionIDs = [v9 penaltyBoxCoalitionIDs];
        [penaltyBoxCoalitionIDs removeAllObjects];
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;
}

- (id)getPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue(self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CSProcessManager_getPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__CSProcessManager_getPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return MEMORY[0x2821F96F8]();
}

- (id)getRelaunchPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue(self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CSProcessManager_getRelaunchPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__CSProcessManager_getRelaunchPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 28);
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return MEMORY[0x2821F96F8]();
}

- (id)getMaxRelaunchPollingInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = getMainQueue(self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CSProcessManager_getMaxRelaunchPollingInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__CSProcessManager_getMaxRelaunchPollingInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return MEMORY[0x2821F96F8]();
}

- (void)modifyPollingInterval:(id)interval
{
  intervalCopy = interval;
  v4 = getMainQueue(intervalCopy);
  dispatch_assert_queue_V2(v4);

  PIDPollingInterval = self->_PIDPollingInterval;
  [intervalCopy floatValue];
  if (PIDPollingInterval != v6)
  {
    dispatch_suspend(self->_pollingTimer);
    [intervalCopy floatValue];
    if (v7 == 0.0)
    {
      self->_savedPIDPollingInterval = self->_PIDPollingInterval;
      pollingTimer = self->_pollingTimer;
      v9 = dispatch_walltime(0, 0);
      v10 = pollingTimer;
      v11 = 1;
    }

    else
    {
      [intervalCopy floatValue];
      self->_PIDPollingInterval = v12;
      v13 = self->_pollingTimer;
      v9 = dispatch_walltime(0, 0);
      v11 = (self->_PIDPollingInterval * 1000000000.0);
      v10 = v13;
    }

    dispatch_source_set_timer(v10, v9, v11, 0x6FC23AC00uLL);
    dispatch_resume(self->_pollingTimer);
  }
}

- (void)modifyRelaunchPollingInterval:(id)interval
{
  intervalCopy = interval;
  v4 = getMainQueue(intervalCopy);
  dispatch_assert_queue_V2(v4);

  relaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
  [intervalCopy floatValue];
  v6 = intervalCopy;
  if (relaunchPollingIntervalStartS != v7)
  {
    if (self->_relaunchPollingTimerActive)
    {
      dispatch_suspend(self->_relaunchPollingTimer);
    }

    [intervalCopy floatValue];
    if (v8 == 0.0)
    {
      self->_savedRelaunchPollingIntervalStartS = self->_relaunchPollingIntervalStartS;
      self->_relaunchPollingIntervalS = 1.0;
      v9 = 1000000000;
    }

    else
    {
      [intervalCopy floatValue];
      v6 = intervalCopy;
      if (v10 >= self->_relaunchPollingIntervalMaxS)
      {
        goto LABEL_9;
      }

      [intervalCopy floatValue];
      self->_relaunchPollingIntervalS = v11;
      self->_relaunchPollingIntervalStartS = v11;
      v9 = (v11 * 1000000000.0);
    }

    relaunchPollingTimer = self->_relaunchPollingTimer;
    v13 = dispatch_walltime(0, v9);
    dispatch_source_set_timer(relaunchPollingTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    dispatch_resume(self->_relaunchPollingTimer);
    self->_relaunchPollingTimerActive = 1;
    v6 = intervalCopy;
  }

LABEL_9:
}

- (void)modifyMaxRelaunchPollingInterval:(id)interval
{
  intervalCopy = interval;
  v4 = getMainQueue(intervalCopy);
  dispatch_assert_queue_V2(v4);

  [intervalCopy floatValue];
  v5 = intervalCopy;
  if (v6 != 0.0)
  {
    [intervalCopy floatValue];
    v8 = v7;
    v9 = 3600.0;
    if (v8 < 3600.0)
    {
      [intervalCopy floatValue];
    }

    self->_relaunchPollingIntervalMaxS = v9;
    v5 = intervalCopy;
  }
}

- (id)getMonitoredList
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  allProcessesMap = self->_allProcessesMap;

  return allProcessesMap;
}

- (id)fullProcessNameForPid:(int)pid
{
  v7 = *MEMORY[0x277D85DE8];
  if (pid < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(pid, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(buffer)];
  }

  return v4;
}

- (void)clearTargetProcessState
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  if (gTargetProcess)
  {
    v4 = [(CSProcessManager *)self getProcessForProcessName:?];
    if (v4)
    {
      allProcessesMap = self->_allProcessesMap;
      v7 = v4;
      identifier = [v4 identifier];
      [(NSMutableDictionary *)allProcessesMap removeObjectForKey:identifier];

      v4 = v7;
    }
  }
}

- (id)getTargetProcessMitigationRecords
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  targetProcessRecords = self->_targetProcessRecords;

  return targetProcessRecords;
}

- (BOOL)modifyTargetProcessMitigationRecords:(id)records
{
  v63 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = getMainQueue(recordsCopy);
  dispatch_assert_queue_V2(v4);

  array = [MEMORY[0x277CBEB18] array];
  if (!recordsCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 1;
    goto LABEL_45;
  }

  v40 = recordsCopy;
  v41 = array;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = recordsCopy;
  v6 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v6)
  {
    v9 = 1;
    goto LABEL_44;
  }

  v7 = v6;
  v8 = *v59;
  v9 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v58 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v56 modifyTargetProcessMitigationRecords:v57];
        }

        goto LABEL_26;
      }

      v12 = [v11 objectForKeyedSubscript:@"MitigationType"];
      if (!v12 || (v13 = v12, [v11 objectForKeyedSubscript:@"MitigationType"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, v13, (isKindOfClass & 1) == 0))
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v54 modifyTargetProcessMitigationRecords:v55];
        }

LABEL_26:
        v9 = 0;
        goto LABEL_27;
      }

      v16 = [v11 objectForKeyedSubscript:@"MitigationReason"];
      if (v16 && (v17 = v16, [v11 objectForKeyedSubscript:@"MitigationReason"], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) != 0))
      {
        v20 = [v11 objectForKeyedSubscript:@"FatalCount"];
        if (v20 && (v21 = v20, [v11 objectForKeyedSubscript:@"FatalCount"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v23 = objc_opt_isKindOfClass(), v22, v21, (v23 & 1) != 0))
        {
          v24 = [v11 objectForKeyedSubscript:@"NonFatalCount"];
          if (v24 && (v25 = v24, [v11 objectForKeyedSubscript:@"NonFatalCount"], v26 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v27 = objc_opt_isKindOfClass(), v26, v25, (v27 & 1) != 0))
          {
            v28 = [v11 objectForKeyedSubscript:@"timestampEnd"];
            if (v28 && (v29 = v28, [v11 objectForKeyedSubscript:@"timestampEnd"], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v31 = objc_opt_isKindOfClass(), v30, v29, (v31 & 1) != 0))
            {
              v32 = [v11 objectForKeyedSubscript:@"TimeWindowSize"];
              if (v32)
              {
                v33 = v32;
                v34 = [v11 objectForKeyedSubscript:@"TimeWindowSize"];
                objc_opt_class();
                v35 = objc_opt_isKindOfClass();

                if (v35)
                {
                  [v41 addObject:v11];
                  goto LABEL_27;
                }
              }

              if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
              {
                [(CSProcessManager *)&v44 modifyTargetProcessMitigationRecords:v45];
              }
            }

            else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              [(CSProcessManager *)&v46 modifyTargetProcessMitigationRecords:v47];
            }
          }

          else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            [(CSProcessManager *)&v48 modifyTargetProcessMitigationRecords:v49];
          }
        }

        else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSProcessManager *)&v50 modifyTargetProcessMitigationRecords:v51];
        }
      }

      else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [(CSProcessManager *)&v52 modifyTargetProcessMitigationRecords:v53];
      }

      v9 = 0;
LABEL_27:
      ++v10;
    }

    while (v7 != v10);
    v36 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    v7 = v36;
  }

  while (v36);
LABEL_44:

  recordsCopy = v40;
  array = v41;
LABEL_45:
  v37 = [array count];
  if (v37)
  {
    v37 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  targetProcessRecords = self->_targetProcessRecords;
  self->_targetProcessRecords = v37;

  return v9 & 1;
}

- (void)clearMitigationRecords
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  powerlogRecords = self->_powerlogRecords;
  self->_powerlogRecords = 0;

  powerlogRecordsUUIDs = self->_powerlogRecordsUUIDs;
  self->_powerlogRecordsUUIDs = 0;

  targetProcessRecords = self->_targetProcessRecords;
  self->_targetProcessRecords = 0;
}

- (int)discoverPidForProcessName:(id)name withError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = getMainQueue(nameCopy);
  dispatch_assert_queue_V2(v7);

  v8 = proc_listpids(1u, 0, 0, 0);
  if ((v8 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA5B8];
    v21 = 3;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v8;
  v11 = malloc_type_malloc(v8, 0x100004052888210uLL);
  if (!v11)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA5B8];
    v21 = 12;
    goto LABEL_21;
  }

  v12 = v11;
  memset(v11, 255, v10);
  v13 = proc_listpids(1u, 0, v12, v9);
  if (v13 < 4)
  {
LABEL_12:
    free(v12);
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSProcessManager discoverPidForProcessName:withError:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = @"CSRestrictionManagerErrorDomain";
    v21 = 0;
LABEL_21:
    [v19 errorWithDomain:v20 code:v21 userInfo:0];
    *error = v16 = 0;
    goto LABEL_22;
  }

  v14 = 0;
  if (v13 >> 2 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13 >> 2;
  }

  while (1)
  {
    v16 = v12[v14];
    if (v16 >= 1)
    {
      break;
    }

LABEL_11:
    if (v15 == ++v14)
    {
      goto LABEL_12;
    }
  }

  v17 = [(CSProcessManager *)self fullProcessNameForPid:v12[v14]];
  v18 = v17;
  if (!v17 || ([v17 isEqualToString:nameCopy] & 1) == 0)
  {

    goto LABEL_11;
  }

  free(v12);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67109120;
    v24[1] = v16;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "discoverPidForProcessName: found pid: %d", v24, 8u);
  }

LABEL_22:

  return v16;
}

- (BOOL)isXPCServiceExempt:(id)exempt withIssueType:(unsigned __int8)type
{
  typeCopy = type;
  exemptCopy = exempt;
  v7 = [(NSDictionary *)self->_processPoliciesDict objectForKey:exemptCopy];
  v8 = v7;
  if (v7)
  {
    intValue = [v7 intValue];
    if (typeCopy == 1)
    {
      v10 = (intValue >> 1) & 1;
    }

    else if (typeCopy)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSProcessManager isXPCServiceExempt:withIssueType:];
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = intValue & 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unsigned)getPollPIDsCount
{
  v3 = getMainQueue(self);
  dispatch_assert_queue_V2(v3);

  return self->_pollPIDsCount;
}

- (void)recordTerminationForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "recordTerminationForPID: Process not found for exited pid (%d)", v2, 8u);
}

@end