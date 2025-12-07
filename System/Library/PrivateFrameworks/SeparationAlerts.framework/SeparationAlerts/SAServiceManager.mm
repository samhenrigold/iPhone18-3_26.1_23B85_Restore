@interface SAServiceManager
+ (unint64_t)convertBeaconToDeviceType:(id)type;
+ (unint64_t)convertCLReferenceFrameToSAReferenceFrame:(int)frame;
- (SAServiceManager)initWithQueue:(id)queue;
- (void)_fetchAndIngestLastVisit;
- (void)_ingestVisit:(id)visit;
- (void)dealloc;
- (void)didFetchAllDevices:(id)devices;
- (void)didFetchAllSafeLocations:(id)locations;
- (void)ingestTAEvent:(id)event;
- (void)scheduleBeaconGroupMetricSubmission;
- (void)separationAlertsService:(id)service addGeofence:(id)geofence;
- (void)separationAlertsService:(id)service cancelSATimeEventForAlarm:(id)alarm;
- (void)separationAlertsService:(id)service enableMonitoringForSeparations:(BOOL)separations;
- (void)separationAlertsService:(id)service notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context;
- (void)separationAlertsService:(id)service removeGeofence:(id)geofence;
- (void)separationAlertsService:(id)service requestBluetoothScanForTypes:(unint64_t)types;
- (void)separationAlertsService:(id)service requestLocationForType:(unint64_t)type;
- (void)separationAlertsService:(id)service requestStateForRegion:(id)region;
- (void)separationAlertsService:(id)service scheduleSATimeEvent:(double)event forAlarm:(id)alarm;
- (void)separationAlertsServiceFetchLastVisit:(id)visit;
- (void)separationAlertsServiceStartBackgroundScanning:(id)scanning;
- (void)separationAlertsServiceStopBackgroundScanning:(id)scanning;
- (void)separationAlertsServiceStopLongAggressiveScan:(id)scan;
@end

@implementation SAServiceManager

- (SAServiceManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v51.receiver = self;
  v51.super_class = SAServiceManager;
  v6 = [(SAServiceManager *)&v51 init];
  v8 = v6;
  if (v6)
  {
    TARegisterLogs(v6, v7);
    objc_storeStrong(&v8->_queue, queue);
    v9 = [[SAAudioAccessory alloc] initWithQueue:queueCopy];
    audioAcccessory = v8->_audioAcccessory;
    v8->_audioAcccessory = v9;

    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v8->_clients;
    v8->_clients = v11;

    v13 = [SAAnalytics alloc];
    v14 = [[SAAnalyticsSettings alloc] initWithEnableSubmission:1];
    v15 = [(SAAnalytics *)v13 initWithSettings:v14];
    analytics = v8->_analytics;
    v8->_analytics = v15;

    v17 = objc_alloc(MEMORY[0x277CBEAA8]);
    analytics = [(SAServiceManager *)v8 analytics];
    [analytics publishingInterval];
    v19 = [v17 initWithTimeIntervalSinceNow:?];
    nextAnalyticsSubmission = v8->_nextAnalyticsSubmission;
    v8->_nextAnalyticsSubmission = v19;

    v21 = [SAService alloc];
    analytics2 = [(SAServiceManager *)v8 analytics];
    v23 = [(SAService *)v21 initWithAnalytics:analytics2 isReplay:0 audioAccessoryManager:v8->_audioAcccessory];
    service = v8->_service;
    v8->_service = v23;

    [(SAService *)v8->_service addClient:v8];
    v25 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v8->_routineManager;
    v8->_routineManager = v25;

    *&v8->_hasAttemptedToIngestLastVisitAtStartup = 256;
    v8->_beaconGroupSafeLocationsMatch = 1;
    scheduledMetricSubmissionBlock = v8->_scheduledMetricSubmissionBlock;
    v8->_scheduledMetricSubmissionBlock = 0;

    v28 = objc_opt_new();
    ownerSession = v8->_ownerSession;
    v8->_ownerSession = v28;

    v30 = objc_alloc_init(MEMORY[0x277D49690]);
    v31 = [v30 performSelector:sel_separationMonitoringSession];
    separationMonitoringSession = v8->_separationMonitoringSession;
    v8->_separationMonitoringSession = v31;

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __34__SAServiceManager_initWithQueue___block_invoke;
    v49[3] = &unk_279B9C7B0;
    v33 = v8;
    v50 = v33;
    v34 = MEMORY[0x26675C330](v49);
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = __34__SAServiceManager_initWithQueue___block_invoke_3;
    v47 = &unk_279B9C7B0;
    v48 = v33;
    v35 = MEMORY[0x26675C330](&v44);
    v36 = v8->_separationMonitoringSession;
    v40 = MEMORY[0x26675C330](v35, v37, v38, v39);
    [(SPSeparationMonitoringProtocol *)v36 performSelector:sel_startRefreshingSafeLocationWithBlock_ withObject:v40, v44, v45, v46, v47];

    v41 = v8->_separationMonitoringSession;
    v42 = MEMORY[0x26675C330](v34);
    [(SPSeparationMonitoringProtocol *)v41 performSelector:sel_startRefreshingBeaconsForSeparationMonitoringWithBlock_ withObject:v42];
  }

  return v8;
}

void __34__SAServiceManager_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SAServiceManager_initWithQueue___block_invoke_2;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __34__SAServiceManager_initWithQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SAServiceManager_initWithQueue___block_invoke_4;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)dealloc
{
  [(SAService *)self->_service removeClient:self];
  separationMonitoringSession = self->_separationMonitoringSession;
  self->_separationMonitoringSession = 0;

  ownerSession = self->_ownerSession;
  self->_ownerSession = 0;

  v5.receiver = self;
  v5.super_class = SAServiceManager;
  [(SAServiceManager *)&v5 dealloc];
}

+ (unint64_t)convertBeaconToDeviceType:(id)type
{
  typeCopy = type;
  type = [typeCopy type];
  if ([type isEqual:*MEMORY[0x277D49810]])
  {
    v5 = 2;
  }

  else if ([type isEqual:*MEMORY[0x277D49808]])
  {
    v5 = 4;
  }

  else if ([type isEqual:*MEMORY[0x277D49818]])
  {
    v5 = 16;
  }

  else
  {
    model = [typeCopy model];
    v7 = [model hasPrefix:@"Watch"];

    if (v7)
    {
      v5 = 8;
    }

    else if ([type isEqual:*MEMORY[0x277D49830]])
    {
      v5 = 1;
    }

    else
    {
      v8 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        [(SAServiceManager *)type convertBeaconToDeviceType:v8];
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (unint64_t)convertCLReferenceFrameToSAReferenceFrame:(int)frame
{
  if (frame == 2)
  {
    return 2;
  }

  else
  {
    return frame == 1;
  }
}

- (void)didFetchAllSafeLocations:(id)locations
{
  v71 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v4 = locationsCopy;
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v51;
    v45 = *v51;
    v46 = v4;
    do
    {
      v8 = 0;
      v48 = v6;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v50 + 1) + 8 * v8);
        if ([v9 approvalState] == 1)
        {
          v49 = [SASafeLocation alloc];
          identifier = [v9 identifier];
          location = [v9 location];
          [location coordinate];
          v13 = v12;
          location2 = [v9 location];
          [location2 coordinate];
          v16 = v15;
          location3 = [v9 location];
          [location3 horizontalAccuracy];
          v19 = v18;
          location4 = [v9 location];
          v21 = +[SAServiceManager convertCLReferenceFrameToSAReferenceFrame:](SAServiceManager, "convertCLReferenceFrameToSAReferenceFrame:", [location4 referenceFrame]);
          name = [v9 name];
          v23 = [MEMORY[0x277CBEAA8] now];
          v24 = [(SASafeLocation *)v49 initWithLocationUUID:identifier latitude:v21 longitude:name radius:v23 referenceFrame:v13 name:v16 date:v19];

          identifier2 = [v9 identifier];
          [v47 setObject:v24 forKeyedSubscript:identifier2];

          v26 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            identifier3 = [(SASafeLocation *)v24 identifier];
            name2 = [(SASafeLocation *)v24 name];
            [(SASafeLocation *)v24 latitude];
            v31 = v30;
            [(SASafeLocation *)v24 longitude];
            v33 = v32;
            [(SASafeLocation *)v24 radius];
            v35 = v34;
            referenceFrame = [(SASafeLocation *)v24 referenceFrame];
            *buf = 68290563;
            v55 = 0;
            v56 = 2082;
            v57 = "";
            v58 = 2113;
            v59 = identifier3;
            v60 = 2113;
            v61 = name2;
            v62 = 2053;
            v63 = v31;
            v64 = 2053;
            v65 = v33;
            v66 = 2050;
            v67 = v35;
            v68 = 2049;
            v69 = referenceFrame;
            _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchSafe, uuid:%{private}@, name:%{private}@, lat:%{sensitive}f, lon:%{sensitive}f, radius:%{public}f, refFrame:%{private}lu}", buf, 0x4Eu);
          }

          v7 = v45;
          v4 = v46;
          v6 = v48;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v50 objects:v70 count:16];
    }

    while (v6);
  }

  v37 = [SASafeLocationsEvent alloc];
  v38 = [MEMORY[0x277CBEAA8] now];
  v39 = [(SASafeLocationsEvent *)v37 initWithSafeLocations:v47 date:v38];

  [(SAServiceManager *)self ingestTAEvent:v39];
  v40 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    v42 = [v4 count];
    *buf = 67240192;
    v55 = v42;
    _os_log_impl(&dword_2656EA000, v41, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchSafe, %{public}d", buf, 8u);
  }

  analytics = [(SAServiceManager *)self analytics];
  [analytics addSafeLocationFetchResultCount:{objc_msgSend(v4, "count")}];
}

- (void)didFetchAllDevices:(id)devices
{
  v172 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v119 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v121 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = devicesCopy;
  v134 = v4;
  v120 = v5;
  v123 = [obj countByEnumeratingWithState:&v149 objects:v171 count:16];
  if (v123)
  {
    v110 = 0;
    v111 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v112 = 0;
    v122 = 0;
    v117 = *v150;
    v116 = *MEMORY[0x277D49810];
    v114 = *MEMORY[0x277D49808];
    v109 = *MEMORY[0x277D49818];
    v6 = 1;
    do
    {
      v7 = 0;
      do
      {
        if (*v150 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v124 = v7;
        v8 = *(*(&v149 + 1) + 8 * v7);
        groupIdentifier = [v8 groupIdentifier];

        if (groupIdentifier)
        {
          groupIdentifier2 = [v8 groupIdentifier];
          v11 = [v5 objectForKey:groupIdentifier2];

          if (v11)
          {
            groupIdentifier3 = [v8 groupIdentifier];
            v13 = [v5 objectForKeyedSubscript:groupIdentifier3];

            identifier = [v8 identifier];
            [v13 addObject:identifier];
          }

          else
          {
            v15 = MEMORY[0x277CBEB58];
            identifier = [v8 identifier];
            v13 = [v15 setWithObject:identifier];
          }

          groupIdentifier4 = [v8 groupIdentifier];
          [v5 setObject:v13 forKeyedSubscript:groupIdentifier4];
        }

        type = [v8 type];
        v18 = [type isEqual:v116];

        v126 = v6;
        if (v18)
        {
          ++v122;
        }

        else
        {
          type2 = [v8 type];
          v77 = [type2 isEqual:v114];

          if (v77)
          {
            if ([v8 isAppleAudioAccessory])
            {
              ++v110;
            }

            else
            {
              ++v111;
            }
          }

          else
          {
            type3 = [v8 type];
            v79 = [type3 isEqual:v109];

            if (v79)
            {
              ++v112;
            }

            else
            {
              model = [v8 model];
              v81 = [model hasPrefix:@"iPhone"];

              if (v81)
              {
                ++v108;
              }

              else
              {
                model2 = [v8 model];
                v83 = [model2 hasPrefix:@"iPad"];

                if (v83)
                {
                  ++v107;
                }

                else
                {
                  model3 = [v8 model];
                  v85 = [model3 hasPrefix:@"MacBook"];

                  if (v85)
                  {
                    ++v105;
                  }

                  else
                  {
                    ++v106;
                  }
                }
              }
            }
          }
        }

        v140 = [SADevice alloc];
        identifier2 = [v8 identifier];
        groupIdentifier5 = [v8 groupIdentifier];
        partIdentifier = [v8 partIdentifier];
        name = [v8 name];
        model4 = [v8 model];
        systemVersion = [v8 systemVersion];
        vendorId = [v8 vendorId];
        productId = [v8 productId];
        v129 = v8;
        v26 = [SAServiceManager convertBeaconToDeviceType:v8];
        isAppleAudioAccessory = [v129 isAppleAudioAccessory];
        date = [MEMORY[0x277CBEAA8] date];
        BYTE1(v104) = isAppleAudioAccessory;
        LOBYTE(v104) = 1;
        v128 = [(SADevice *)v140 initWithDeviceUUID:identifier2 groupIdentifier:groupIdentifier5 macAddress:0 partIdentifier:partIdentifier name:name model:model4 systemVersion:systemVersion vendorId:vendorId productId:productId deviceType:v26 notifyEnabled:v104 isAppleAudioAccessory:date date:?];

        if ([v129 isAppleAudioAccessory])
        {
          groupIdentifier6 = [v129 groupIdentifier];

          if (groupIdentifier6)
          {
            ownerSession = self->_ownerSession;
            groupIdentifier7 = [v129 groupIdentifier];
            v147[0] = MEMORY[0x277D85DD0];
            v147[1] = 3221225472;
            v147[2] = __39__SAServiceManager_didFetchAllDevices___block_invoke;
            v147[3] = &unk_279B9C7D8;
            v147[4] = self;
            v148 = v128;
            [(SPOwnerSession *)ownerSession beaconGroupForIdentifier:groupIdentifier7 completion:v147];
          }
        }

        v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        safeLocations = [v129 safeLocations];
        v33 = [safeLocations countByEnumeratingWithState:&v143 objects:v170 count:16];
        v4 = v134;
        if (v33)
        {
          v34 = v33;
          v35 = *v144;
          v130 = *v144;
          v132 = v32;
          do
          {
            v36 = 0;
            v135 = v34;
            do
            {
              if (*v144 != v35)
              {
                objc_enumerationMutation(safeLocations);
              }

              v37 = *(*(&v143 + 1) + 8 * v36);
              identifier3 = [v37 identifier];
              [v32 addObject:identifier3];

              if ([v37 approvalState] == 1)
              {
                v39 = [SASafeLocation alloc];
                identifier4 = [v37 identifier];
                location = [v37 location];
                [location coordinate];
                v42 = v41;
                location2 = [v37 location];
                [location2 coordinate];
                v45 = v44;
                location3 = [v37 location];
                [location3 horizontalAccuracy];
                v48 = v47;
                location4 = [v37 location];
                v50 = +[SAServiceManager convertCLReferenceFrameToSAReferenceFrame:](SAServiceManager, "convertCLReferenceFrameToSAReferenceFrame:", [location4 referenceFrame]);
                name2 = [v37 name];
                v52 = [MEMORY[0x277CBEAA8] now];
                v53 = [(SASafeLocation *)v39 initWithLocationUUID:identifier4 latitude:v50 longitude:name2 radius:v52 referenceFrame:v42 name:v45 date:v48];

                v4 = v134;
                identifier5 = [v37 identifier];
                [v134 setObject:v53 forKeyedSubscript:identifier5];

                v55 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
                {
                  v56 = v55;
                  identifier6 = [v129 identifier];
                  identifier7 = [(SASafeLocation *)v53 identifier];
                  name3 = [(SASafeLocation *)v53 name];
                  [(SASafeLocation *)v53 latitude];
                  v61 = v60;
                  [(SASafeLocation *)v53 longitude];
                  v63 = v62;
                  [(SASafeLocation *)v53 radius];
                  v65 = v64;
                  referenceFrame = [(SASafeLocation *)v53 referenceFrame];
                  *buf = 68290819;
                  v154 = 2082;
                  v155 = "";
                  v156 = 2113;
                  v157 = identifier6;
                  v158 = 2113;
                  v159 = identifier7;
                  v160 = 2113;
                  v161 = name3;
                  v162 = 2053;
                  v163 = v61;
                  v164 = 2053;
                  v165 = v63;
                  v166 = 2050;
                  v167 = v65;
                  v168 = 2049;
                  v169 = referenceFrame;
                  _os_log_impl(&dword_2656EA000, v56, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa ServiceMgr FetchSafeForBeacon, device:%{private}@, uuid:%{private}@, name:%{private}@, lat:%{sensitive}f, lon:%{sensitive}f, radius:%{public}f, refFrame:%{private}lu}", buf, 0x58u);
                }

                v35 = v130;
                v32 = v132;
                v34 = v135;
              }

              ++v36;
            }

            while (v34 != v36);
            v34 = [safeLocations countByEnumeratingWithState:&v143 objects:v170 count:16];
          }

          while (v34);
        }

        identifier8 = [v129 identifier];
        [v119 setObject:v128 forKeyedSubscript:identifier8];

        identifier9 = [v129 identifier];
        [v118 setObject:v32 forKeyedSubscript:identifier9];

        v69 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
          name4 = [v129 name];
          identifier10 = [v129 identifier];
          type4 = [v129 type];
          *buf = 68290051;
          v154 = 2082;
          v155 = "";
          v156 = 2113;
          v157 = name4;
          v158 = 2113;
          v159 = identifier10;
          v160 = 2113;
          v161 = type4;
          v162 = 2113;
          v163 = v32;
          _os_log_impl(&dword_2656EA000, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchAll, name:%{private}@, device:%{private}@, type:%{private}@, safes:%{private}@}", buf, 0x3Au);
        }

        v74 = [v121 setByAddingObjectsFromSet:v32];
        v5 = v120;
        if (v126)
        {
          v75 = [v121 count];
          v6 = v75 == [v32 count];
        }

        else
        {
          v6 = 0;
        }

        v7 = v124 + 1;
      }

      while (v124 + 1 != v123);
      v86 = [obj countByEnumeratingWithState:&v149 objects:v171 count:16];
      v123 = v86;
    }

    while (v86);
    v127 = v6;
    v139 = v107;
    v142 = v108;
    v136 = v105;
    v133 = v110;
  }

  else
  {
    v133 = 0;
    v106 = 0;
    v136 = 0;
    v139 = 0;
    v142 = 0;
    v111 = 0;
    v112 = 0;
    v122 = 0;
    v127 = 1;
  }

  [(SAServiceManager *)self setBeaconGroupComplete:1];
  [(SAServiceManager *)self setBeaconGroupSafeLocationsMatch:1];
  v87 = [SABeaconGroupVerifier verifyBeaconGroupsWithBeaconGroups:v5 deviceUUIDtoDeviceMap:v119 deviceToSafeLocationMap:v118];
  -[SAServiceManager setBeaconGroupComplete:](self, "setBeaconGroupComplete:", [v87 beaconGroupComplete]);
  -[SAServiceManager setBeaconGroupSafeLocationsMatch:](self, "setBeaconGroupSafeLocationsMatch:", [v87 beaconGroupSafeLocationsMatch]);
  deviceUUIDtoDeviceMap = [v87 deviceUUIDtoDeviceMap];

  v131 = v87;
  deviceToSafeLocationMap = [v87 deviceToSafeLocationMap];

  v90 = [SASafeLocationsEvent alloc];
  v91 = [MEMORY[0x277CBEAA8] now];
  v92 = [(SASafeLocationsEvent *)v90 initWithSafeLocations:v4 date:v91];

  v125 = v92;
  [(SAServiceManager *)self ingestTAEvent:v92];
  v93 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v94 = v93;
    v95 = [v4 count];
    *buf = 67240192;
    *&buf[4] = v95;
    _os_log_impl(&dword_2656EA000, v94, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchBeaconsSafe, %{public}d", buf, 8u);
  }

  analytics = [(SAServiceManager *)self analytics];
  [analytics addSafeLocationFetchResultCount:{objc_msgSend(v4, "count")}];

  v97 = [SADevicesWithSafeLocationsEvent alloc];
  date2 = [MEMORY[0x277CBEAA8] date];
  v99 = [(SADevicesWithSafeLocationsEvent *)v97 initWithDevices:deviceUUIDtoDeviceMap safeLocationUUIDs:deviceToSafeLocationMap date:date2];

  [(SAServiceManager *)self ingestTAEvent:v99];
  v100 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v101 = v100;
    v102 = [obj count];
    *buf = 67240448;
    *&buf[4] = v102;
    v154 = 1026;
    LODWORD(v155) = 100 * v111 + 10000 * (v112 + v106) + v122;
    _os_log_impl(&dword_2656EA000, v101, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr endFetchAll %{public}d, types, %{public}d", buf, 0xEu);
  }

  analytics2 = [(SAServiceManager *)self analytics];
  LOBYTE(v104) = v127;
  [analytics2 addDeviceFetchResultCount:objc_msgSend(obj type1count:"count") type2count:v122 type3count:v111 type4count:v112 type5count:v106 type6count:v142 type7count:v139 type8count:v136 safeCount:v133 usingSameSafe:{objc_msgSend(v121, "count"), v104}];

  [(SAServiceManager *)self scheduleBeaconGroupMetricSubmission];
}

void __39__SAServiceManager_didFetchAllDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SAServiceManager_didFetchAllDevices___block_invoke_2;
  v6[3] = &unk_279B9C788;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __39__SAServiceManager_didFetchAllDevices___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = [*(a1 + 40) macAddress];
    v7 = [v6 fm_hexString];
    v11[0] = 68289539;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2113;
    v15 = v5;
    v16 = 2113;
    v17 = v7;
    _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr FetchBeaconGroup, device:%{private}@, macAddress:%{private}@}", v11, 0x26u);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) macAddress];
  v10 = [v9 fm_hexString];
  [v8 setMacAddress:v10];
}

- (void)scheduleBeaconGroupMetricSubmission
{
  scheduledMetricSubmissionBlock = [(SAServiceManager *)self scheduledMetricSubmissionBlock];

  if (scheduledMetricSubmissionBlock)
  {
    scheduledMetricSubmissionBlock2 = [(SAServiceManager *)self scheduledMetricSubmissionBlock];
    dispatch_block_cancel(scheduledMetricSubmissionBlock2);

    [(SAServiceManager *)self setScheduledMetricSubmissionBlock:0];
  }

  v5 = dispatch_time(0, 60000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SAServiceManager_scheduleBeaconGroupMetricSubmission__block_invoke;
  block[3] = &unk_279B9C800;
  block[4] = self;
  v6 = dispatch_block_create(0, block);
  dispatch_after(v5, self->_queue, v6);
  [(SAServiceManager *)self setScheduledMetricSubmissionBlock:v6];
  v7 = MEMORY[0x26675C330](v6);
  _Block_release(v7);
}

uint64_t __55__SAServiceManager_scheduleBeaconGroupMetricSubmission__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if ([v3 beaconGroupComplete])
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = [*(a1 + 32) beaconGroupSafeLocationsMatch];
    LODWORD(v10) = 68289538;
    if (v6)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    HIDWORD(v10) = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = v5;
    v15 = 2082;
    v16 = v7;
    _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #beaconMonitoring timed-out submitting metrics, beaconGroupComplete:%{public}s, beaconGroupSafeLocationsMatch:%{public}s}", &v10, 0x26u);
  }

  v8 = [*(a1 + 32) analytics];
  [v8 submitBeaconMonitoringEvent:objc_msgSend(*(a1 + 32) safeLocationsMatch:{"beaconGroupComplete"), objc_msgSend(*(a1 + 32), "beaconGroupSafeLocationsMatch")}];

  return [*(a1 + 32) setScheduledMetricSubmissionBlock:0];
}

- (void)_ingestVisit:(id)visit
{
  v25 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  service = [(SAServiceManager *)self service];

  if (service)
  {
    location = [visitCopy location];
    [location latitude];
    v8 = v7;
    location2 = [visitCopy location];
    [location2 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);

    v12 = objc_alloc(MEMORY[0x277D73430]);
    location3 = [visitCopy location];
    [location3 horizontalUncertainty];
    v15 = v14;
    entry = [visitCopy entry];
    exit = [visitCopy exit];
    date = [visitCopy date];
    v19 = [v12 initWithCoordinate:entry horizontalAccuracy:exit arrivalDate:date departureDate:2 detectionDate:v11.latitude confidence:{v11.longitude, v15}];

    service2 = [(SAServiceManager *)self service];
    [service2 ingestTAEvent:v19];
  }

  else
  {
    v21 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 68289026;
      v22[1] = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:visit not ingesting TAEvent as SA service is down}", v22, 0x12u);
    }
  }
}

- (void)_fetchAndIngestLastVisit
{
  v3 = objc_alloc(MEMORY[0x277D01340]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v5 = [v3 initWithAscending:0 confidence:v4 dateInterval:0 labelVisit:1 limit:&unk_287710108];

  routineManager = [(SAServiceManager *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke;
  v7[3] = &unk_279B9C878;
  v7[4] = self;
  [routineManager fetchStoredVisitsWithOptions:v5 handler:v7];
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2;
  v7[3] = &unk_279B9C788;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2117;
      v25 = v4;
      _os_log_impl(&dword_2656EA000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit got last visit, visits:%{sensitive}@}", buf, 0x1Cu);
    }

    v5 = [*(a1 + 32) firstObject];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_16;
    }

    v7 = [v5 entry];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v6 entry];
    [v9 timeIntervalSinceDate:v10];
    if (v11 <= 0.0)
    {
    }

    else
    {
      v12 = [v6 location];

      if (!v12)
      {
LABEL_16:

        return;
      }

      v13 = [v6 placeInference];
      v8 = [v13 loiIdentifier];

      if (v8 && ([v6 exit], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
      {
        v16 = [*(a1 + 40) routineManager];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_44;
        v17[3] = &unk_279B9C850;
        v17[4] = *(a1 + 40);
        v18 = v6;
        v19 = v8;
        [v16 fetchLocationOfInterestWithIdentifier:v19 withHandler:v17];
      }

      else
      {
        [*(a1 + 40) _ingestVisit:v6];
      }
    }

    goto LABEL_16;
  }

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit no last visit to bootstrap onto}", buf, 0x12u);
  }
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_44(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2_45;
  block[3] = &unk_279B9C828;
  v13 = v6;
  v8 = a1[5];
  v9 = a1[4];
  v14 = v8;
  v15 = v9;
  v16 = v5;
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __44__SAServiceManager__fetchAndIngestLastVisit__block_invoke_2_45(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      [*(a1 + 48) _ingestVisit:{*(a1 + 40), v31, *v32, *&v32[8], *&v32[16], *&v32[24], v33}];
      return;
    }

    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v31 = 68289539;
    *v32 = 2082;
    *&v32[2] = "";
    *&v32[10] = 2117;
    *&v32[12] = v3;
    *&v32[20] = 2114;
    *&v32[22] = v4;
    v5 = "{msg%{public}.0s:#sa #loi error fetching LOI, visit:%{sensitive}@, error:%{public}@}";
    v6 = v2;
    v7 = OS_LOG_TYPE_ERROR;
LABEL_4:
    _os_log_impl(&dword_2656EA000, v6, v7, v5, &v31, 0x26u);
    goto LABEL_5;
  }

  v8 = TASALog;
  if (!*(a1 + 56))
  {
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 64);
    v31 = 68289539;
    *v32 = 2082;
    *&v32[2] = "";
    *&v32[10] = 2117;
    *&v32[12] = v29;
    *&v32[20] = 2113;
    *&v32[22] = v30;
    v5 = "{msg%{public}.0s:#sa #loi received nil in return when fetching LOI, visit:%{sensitive}@, loiIdentifier:%{private}@}";
    v6 = v8;
    v7 = OS_LOG_TYPE_FAULT;
    goto LABEL_4;
  }

  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v31 = 68289539;
    *v32 = 2082;
    *&v32[2] = "";
    *&v32[10] = 2117;
    *&v32[12] = v9;
    *&v32[20] = 2113;
    *&v32[22] = v10;
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #loi received LOI, loi:%{sensitive}@, loiIdentifier:%{private}@}", &v31, 0x26u);
  }

  v11 = [*(a1 + 56) type];
  v12 = [*(a1 + 48) service];

  if (v12)
  {
    if (v11)
    {
      v13 = 2 * (v11 == 1);
    }

    else
    {
      v13 = 1;
    }

    v14 = objc_alloc(MEMORY[0x277D73450]);
    v15 = [*(a1 + 56) location];
    [v15 latitude];
    v17 = v16;
    v18 = [*(a1 + 56) location];
    [v18 longitude];
    v20 = v19;
    v21 = [*(a1 + 56) location];
    [v21 horizontalUncertainty];
    v23 = v22;
    v24 = [*(a1 + 56) location];
    v25 = [v24 referenceFrame];
    v26 = [MEMORY[0x277CBEAA8] date];
    v27 = [v14 initWithType:v13 latitude:v25 longitude:v26 horizontalAccuracy:v17 referenceFrame:v20 date:v23];

    v28 = [*(a1 + 48) service];
    [v28 ingestTAEvent:v27];
  }
}

- (void)separationAlertsService:(id)service enableMonitoringForSeparations:(BOOL)separations
{
  separationsCopy = separations;
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v20 = separationsCopy;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr enableMonitoringForSeparations: %{public}d", buf, 8u);
  }

  allObjects = [(NSHashTable *)self->_clients allObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 separationAlertsServiceManager:self enableMonitoringForSeparations:separationsCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)separationAlertsService:(id)service notifySeparationsForDevices:(id)devices withLocation:(id)location withContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  devicesCopy = devices;
  locationCopy = location;
  contextCopy = context;
  service = [(SAServiceManager *)self service];
  v15 = service;
  if (devicesCopy && service == serviceCopy && [devicesCopy count])
  {

    if (contextCopy)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        *buf = 134283521;
        v33 = [devicesCopy count];
        _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr notifyAboutDevices:%{private}ld", buf, 0xCu);
      }

      v26 = serviceCopy;
      if ([devicesCopy count])
      {
        v18 = 0;
        do
        {
          analytics = [(SAServiceManager *)self analytics];
          [analytics addAlertWithContext:contextCopy];

          ++v18;
        }

        while (v18 < [devicesCopy count]);
      }

      allObjects = [(NSHashTable *)self->_clients allObjects];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v21 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          v24 = 0;
          do
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(allObjects);
            }

            v25 = *(*(&v27 + 1) + 8 * v24);
            if (objc_opt_respondsToSelector())
            {
              [v25 separationAlertsServiceManager:self notifySeparationsForDevices:devicesCopy withLocation:locationCopy withContext:contextCopy];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v22);
      }

      serviceCopy = v26;
    }
  }

  else
  {
  }
}

- (void)separationAlertsService:(id)service requestBluetoothScanForTypes:(unint64_t)types
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v8 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      typesCopy = types;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestBluetoothScan:%{private}#lx", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    [analytics addAggressiveScanRequest:types == 1];

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self requestBluetoothScanForTypes:types];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)separationAlertsService:(id)service requestLocationForType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v8 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      typeCopy = type;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestLocationForType:%{private}#lx", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    v10 = analytics;
    if (type)
    {
      [analytics addWifiLocationRequest:1];
    }

    else
    {
      [analytics addGpsLocationRequest:1];
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 separationAlertsServiceManager:self requestLocationForType:type];
          }
        }

        v13 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)separationAlertsService:(id)service addGeofence:(id)geofence
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  geofenceCopy = geofence;
  service = [(SAServiceManager *)self service];

  if (geofenceCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr addGeofence", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self addGeofence:geofenceCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)separationAlertsService:(id)service removeGeofence:(id)geofence
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  geofenceCopy = geofence;
  service = [(SAServiceManager *)self service];

  if (geofenceCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr removeGeofence", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self removeGeofence:geofenceCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)separationAlertsService:(id)service requestStateForRegion:(id)region
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  regionCopy = region;
  service = [(SAServiceManager *)self service];

  if (regionCopy && service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr requestStateForRegion", buf, 2u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self requestStateForRegion:regionCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)separationAlertsService:(id)service scheduleSATimeEvent:(double)event forAlarm:(id)alarm
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  alarmCopy = alarm;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      eventCopy = event;
      _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "#sa ServiceMgr scheduleSATimeEvent:%{public}#lf", buf, 0xCu);
    }

    analytics = [(SAServiceManager *)self analytics];
    [analytics addWakeTimerRequest];

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(allObjects);
          }

          v18 = *(*(&v19 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 separationAlertsServiceManager:self scheduleSATimeEvent:alarmCopy forAlarm:event];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)separationAlertsService:(id)service cancelSATimeEventForAlarm:(id)alarm
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  alarmCopy = alarm;
  service = [(SAServiceManager *)self service];

  if (service == serviceCopy)
  {
    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = alarmCopy;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr cancelSATimeEventForAlarm, uuid:%{public}@}", &buf, 0x1Cu);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 separationAlertsServiceManager:self cancelSATimeEventForAlarm:alarmCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)separationAlertsServiceStartBackgroundScanning:(id)scanning
{
  v21 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  service = [(SAServiceManager *)self service];

  if (service == scanningCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr startBackgroundScanning}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStartBackgroundScanning:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)separationAlertsServiceStopBackgroundScanning:(id)scanning
{
  v21 = *MEMORY[0x277D85DE8];
  scanningCopy = scanning;
  service = [(SAServiceManager *)self service];

  if (service == scanningCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr stopBackgroundScanning}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStopBackgroundScanning:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)separationAlertsServiceStopLongAggressiveScan:(id)scan
{
  v21 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  service = [(SAServiceManager *)self service];

  if (service == scanCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr stopLongAggressiveScan}", &buf, 0x12u);
    }

    allObjects = [(NSHashTable *)self->_clients allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 separationAlertsServiceManagerStopLongAggressiveScan:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)separationAlertsServiceFetchLastVisit:(id)visit
{
  v10 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  service = [(SAServiceManager *)self service];

  if (service == visitCopy)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa ServiceMgr fetchLastVisit}", v7, 0x12u);
    }

    [(SAServiceManager *)self _fetchAndIngestLastVisit];
  }
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  service = self->_service;
  v18 = eventCopy;
  if (service)
  {
    [(SAService *)service ingestTAEvent:eventCopy];
    hasAttemptedToIngestLastVisitAtStartup = [(SAServiceManager *)self hasAttemptedToIngestLastVisitAtStartup];
    eventCopy = v18;
    if (!hasAttemptedToIngestLastVisitAtStartup)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      eventCopy = v18;
      if (isKindOfClass)
      {
        v8 = v18;
        if ([v8 systemStateType] == 11 && objc_msgSend(v8, "isOn"))
        {
          [(SAServiceManager *)self _fetchAndIngestLastVisit];
          [(SAServiceManager *)self setHasAttemptedToIngestLastVisitAtStartup:1];
        }

        eventCopy = v18;
      }
    }
  }

  getDate = [eventCopy getDate];
  nextAnalyticsSubmission = [(SAServiceManager *)self nextAnalyticsSubmission];
  [getDate timeIntervalSinceDate:nextAnalyticsSubmission];
  v12 = v11;

  if (v12 >= 0.0)
  {
    analytics = [(SAServiceManager *)self analytics];
    [analytics submitDefaultAlertRateEvent];

    analytics2 = [(SAServiceManager *)self analytics];
    [analytics2 publishAndResetAggregation];

    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    analytics3 = [(SAServiceManager *)self analytics];
    [analytics3 publishingInterval];
    v17 = [v15 initWithTimeIntervalSinceNow:?];
    [(SAServiceManager *)self setNextAnalyticsSubmission:v17];
  }
}

+ (void)convertBeaconToDeviceType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_fault_impl(&dword_2656EA000, a2, OS_LOG_TYPE_FAULT, "#sa ServiceMgr received unknown device type, %{private}@", &v2, 0xCu);
}

@end