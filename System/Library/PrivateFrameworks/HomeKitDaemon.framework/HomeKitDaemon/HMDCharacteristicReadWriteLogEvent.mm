@interface HMDCharacteristicReadWriteLogEvent
+ (id)eventWithCharacteristicsToRead:(id)read hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isLocal:(BOOL)local transactionId:(id)id isCached:(BOOL)cached bundleId:(id)self0 userUUID:(id)self1;
+ (id)eventWithCharacteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)self0 bundleId:(id)self1 userUUID:(id)self2 writtenValues:(id)self3;
+ (id)eventWithCharacteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)id bundleId:(id)self0 userUUID:(id)self1 writtenValues:(id)self2;
+ (id)eventWithStartTime:(double)time characteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)self0 bundleId:(id)self1 userUUID:(id)self2 writtenValues:(id)self3;
- (BOOL)_isRequestForTHSensorOnAppleMediaAccessory:(id)accessory characteristicsInRequest:(id)request;
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer;
- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)self0 transactionId:(id)self1 isCached:(BOOL)self2 bundleId:(id)self3 userUUID:(id)self4 writtenValues:(id)self5;
- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)local transactionId:(id)self0 isCached:(BOOL)self1 bundleId:(id)self2 userUUID:(id)self3 writtenValues:(id)self4;
- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)time characteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)self0 isLocal:(BOOL)self1 transactionId:(id)self2 isCached:(BOOL)self3 bundleId:(id)self4 userUUID:(id)self5 writtenValues:(id)self6 readWriteLogEventManager:(id)self7;
- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)time characteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)self0 transactionId:(id)self1 isCached:(BOOL)self2 bundleId:(id)self3 userUUID:(id)self4 writtenValues:(id)self5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (SISchemaTopLevelUnionType)siriInstrumentationMessage;
- (id)biomeEventsRepresentationForLogObserver:(id)observer;
- (id)firstDonatableCharacteristicForLogEventObserver:(void *)observer;
- (id)microLocationMetadataForLogEventObserver:(id)observer;
- (unint64_t)microLocationScanTriggerTypeForLogEventObserver:(id)observer;
- (void)_populateTHSensorMetricsForAccessory:(id)accessory accessoryServer:(id)server characteristicsInRequest:(id)request home:(id)home;
- (void)_setBtLoad;
- (void)_updateResidentFirstErrorWithHomeHubError;
- (void)markEndTime;
- (void)prepareForObservation;
- (void)setResidentFirstEndTime:(double)time;
- (void)setResidentFirstError:(id)error;
- (void)updateWithTHSensorNetworkData:(id)data primaryNetworkData:(id)networkData accessoryServer:(id)server;
@end

@implementation HMDCharacteristicReadWriteLogEvent

- (id)biomeEventsRepresentationForLogObserver:(id)observer
{
  v238 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (![(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    goto LABEL_15;
  }

  characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v5 = [characteristicsInRequest count];
  writtenValues = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
  v7 = [writtenValues count];

  if (v5 != v7)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      characteristicsInRequest2 = [(HMDCharacteristicReadWriteLogEvent *)selfCopy2 characteristicsInRequest];
      v23 = MEMORY[0x277CCABB0];
      characteristicsInRequest3 = [(HMDCharacteristicReadWriteLogEvent *)selfCopy2 characteristicsInRequest];
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(characteristicsInRequest3, "count")}];
      writtenValues2 = [(HMDCharacteristicReadWriteLogEvent *)selfCopy2 writtenValues];
      v27 = MEMORY[0x277CCABB0];
      writtenValues3 = [(HMDCharacteristicReadWriteLogEvent *)selfCopy2 writtenValues];
      v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(writtenValues3, "count")}];
      *buf = 138544386;
      v229 = v21;
      v230 = 2112;
      v231 = characteristicsInRequest2;
      v232 = 2112;
      v233 = v25;
      v234 = 2112;
      v235 = writtenValues2;
      v236 = 2112;
      v237 = v29;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Attempting to get metadata for mismatched number of characteristics (%@) : %@, and values (%@): %@", buf, 0x34u);

LABEL_13:
    }

LABEL_14:

    objc_autoreleasePoolPop(v18);
LABEL_15:
    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  homeUniqueIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self homeUniqueIdentifier];

  if (!homeUniqueIdentifier)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v229 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no home data for event", buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (self)
  {
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [(HMMDatedHomeLogEvent *)self startDate];
    endDate = [(HMMDatedHomeLogEvent *)self endDate];
    v12 = [v9 initWithStartDate:startDate endDate:endDate];

    biomeSource = [(HMDCharacteristicReadWriteLogEvent *)self biomeSource];
    v14 = @"ActionSet";
    if (biomeSource != 1)
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v15;
    if (biomeSource == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = HMDRequestSourceAsString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
    }

    v32 = v17;

    v33 = objc_alloc(MEMORY[0x277CF1980]);
    homeUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self homeUniqueIdentifier];
    uUIDString = [homeUniqueIdentifier2 UUIDString];
    isAtHome = [(HMDCharacteristicReadWriteLogEvent *)self isAtHome];
    bundleId = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
    clientMetricIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
    if (clientMetricIdentifier)
    {
      v220 = [v33 initWithDateInterval:v12 homeUniqueIdentifier:uUIDString homeOccupancy:isAtHome source:v32 clientName:bundleId eventCorrelationIdentifier:clientMetricIdentifier];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [uUID UUIDString];
      v40 = v39 = v12;
      v220 = [v33 initWithDateInterval:v39 homeUniqueIdentifier:uUIDString homeOccupancy:isAtHome source:v32 clientName:bundleId eventCorrelationIdentifier:v40];

      v12 = v39;
    }
  }

  else
  {
    v220 = 0;
  }

  v41 = MEMORY[0x277CBEB18];
  characteristicsInRequest4 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v219 = [v41 arrayWithCapacity:{objc_msgSend(characteristicsInRequest4, "count")}];

  characteristicsInRequest5 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v44 = [characteristicsInRequest5 count];

  if (v44)
  {
    v45 = 0;
    v176 = *MEMORY[0x277CCFB48];
    v175 = *MEMORY[0x277CCFBA8];
    v174 = *MEMORY[0x277CCF980];
    selfCopy3 = self;
    do
    {
      characteristicsInRequest6 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v47 = [characteristicsInRequest6 objectAtIndexedSubscript:v45];

      service = [v47 service];
      type = [service type];
      v227 = v47;
      type2 = [v47 type];
      v51 = type2;
      if (type)
      {
        if (type2)
        {
          v52 = type;
          v53 = v51;
          if (observerCopy)
          {
            v223 = v53;
            WeakRetained = objc_loadWeakRetained(observerCopy + 2);
            if (WeakRetained)
            {
              v55 = WeakRetained;
              v56 = v51;
              v57 = [WeakRetained hapMetadataForBiomeLogEventObserver:observerCopy];
              if (([v52 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v57, "shouldFilterServiceOfTypeFromApp:", v52) & 1) == 0)
              {
                v58 = v52;
                v59 = [v57 isStandardServiceType:v52];
              }

              else
              {
                v58 = v52;
                v59 = 0;
              }

              if ([v57 shouldFilterCharacteristicOfTypeFromApp:v223])
              {
                v70 = 0;
              }

              else
              {
                v70 = [v57 isStandardCharacteristicType:v223];
              }

              v76 = v59 & v70;

              v77 = v58;
              v51 = v56;
              if (v76)
              {
                writtenValues4 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
                v221 = [writtenValues4 objectAtIndexedSubscript:v45];

                v217 = v77;
                if ([v77 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"])
                {
                  v79 = v223;
                  v80 = v221;
                  v81 = v220;
                  v224 = v80;
                  if (self)
                  {
                    accessoryMediaRouteID = [(HMDCharacteristicReadWriteLogEvent *)self accessoryMediaRouteID];

                    v218 = v79;
                    if (accessoryMediaRouteID)
                    {
                      v215 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
                      if ([v79 isEqualToString:v176])
                      {
                        v83 = v80;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v84 = v83;
                        }

                        else
                        {
                          v84 = 0;
                        }

                        v85 = v84;

                        if (v85)
                        {
                          integerValue = [v85 integerValue];
                          if (integerValue >= 3)
                          {
                            v209 = service;
                            v87 = objc_autoreleasePoolPush();
                            selfCopy4 = self;
                            v89 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                            {
                              v90 = HMFGetLogIdentifier();
                              *buf = 138543362;
                              v229 = v90;
                              _os_log_impl(&dword_229538000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, unknown playback state not eligible for donation", buf, 0xCu);
                            }

                            objc_autoreleasePoolPop(v87);
                            v91 = 0;
                            service = v209;
                            goto LABEL_105;
                          }

                          v208 = v51;
                          v211 = type;
                          v150 = [MEMORY[0x277CCABB0] numberWithInteger:qword_22A587EB0[integerValue]];
                          [v215 setObject:v150 forKeyedSubscript:@"playback-state"];

LABEL_99:
                          v213 = v81;

LABEL_100:
                          v202 = objc_alloc(MEMORY[0x277CF1988]);
                          accessoryUniqueIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                          uUIDString2 = [accessoryUniqueIdentifier UUIDString];
                          v200 = objc_msgSend_copy(v215);
                          accessoryMediaRouteID2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryMediaRouteID];
                          accessoryZoneUniqueIdentifiers = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                          accessoryRoomUniqueIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                          uUIDString3 = [accessoryRoomUniqueIdentifier UUIDString];
                          accessoryName = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                          accessoryRoomName = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                          accessoryZoneNames = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                          [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                          v154 = v153 = service;
                          v81 = v213;
                          v91 = [v202 initWithBase:v213 accessoryUniqueIdentifier:uUIDString2 accessoryStateString:MEMORY[0x277CBEC10] accessoryStateNumber:v200 accessoryStateData:MEMORY[0x277CBEC10] accessoryMediaRouteIdentifier:accessoryMediaRouteID2 zoneUniqueIdentifiers:accessoryZoneUniqueIdentifiers roomUniqueIdentifier:uUIDString3 accessoryName:accessoryName roomName:accessoryRoomName zoneNames:accessoryZoneNames homeName:v154];

                          service = v153;
                          v51 = v208;
                          type = v211;
                          goto LABEL_105;
                        }

                        v142 = objc_autoreleasePoolPush();
                        selfCopy6 = self;
                        v144 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                        {
                          HMFGetLogIdentifier();
                          v214 = v81;
                          v145 = type;
                          v147 = v146 = service;
                          *buf = 138543362;
                          v229 = v147;
                          v148 = v144;
                          v149 = "%{public}@Unable to log event metadata to biome, non number playback state not eligible for donation";
                          goto LABEL_103;
                        }

                        goto LABEL_104;
                      }

                      if ([v79 isEqualToString:v175])
                      {
                        v132 = v80;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v133 = v132;
                        }

                        else
                        {
                          v133 = 0;
                        }

                        v85 = v133;

                        if (v85)
                        {
                          v208 = v51;
                          v211 = type;
                          [v215 setObject:v85 forKeyedSubscript:@"volume"];
                          goto LABEL_99;
                        }

                        v142 = objc_autoreleasePoolPush();
                        selfCopy6 = self;
                        v144 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                        {
                          HMFGetLogIdentifier();
                          v214 = v81;
                          v145 = type;
                          v147 = v146 = service;
                          *buf = 138543362;
                          v229 = v147;
                          v148 = v144;
                          v149 = "%{public}@Unable to log event metadata to biome, unknown volume state not eligible for donation";
LABEL_103:
                          _os_log_impl(&dword_229538000, v148, OS_LOG_TYPE_DEFAULT, v149, buf, 0xCu);

                          service = v146;
                          type = v145;
                          v81 = v214;
                        }

LABEL_104:

                        objc_autoreleasePoolPop(v142);
                        v91 = 0;
                        goto LABEL_105;
                      }

                      v211 = type;
                      v213 = v81;
                      v208 = v51;
                      if (![v79 isEqualToString:v174])
                      {
                        goto LABEL_100;
                      }

                      v134 = v80;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v135 = v134;
                      }

                      else
                      {
                        v135 = 0;
                      }

                      v85 = v135;

                      if (v85)
                      {
                        [v215 setObject:v85 forKeyedSubscript:@"mute"];
                        goto LABEL_99;
                      }

                      v162 = objc_autoreleasePoolPush();
                      selfCopy7 = self;
                      v164 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                      {
                        HMFGetLogIdentifier();
                        v166 = v165 = service;
                        *buf = 138543362;
                        v229 = v166;
                        _os_log_impl(&dword_229538000, v164, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, unknown mute state not eligible for donation", buf, 0xCu);

                        service = v165;
                      }

                      objc_autoreleasePoolPop(v162);
                      v91 = 0;
                      type = v211;
LABEL_105:
                    }

                    else
                    {
                      v126 = objc_autoreleasePoolPush();
                      selfCopy8 = self;
                      v128 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                      {
                        HMFGetLogIdentifier();
                        v129 = type;
                        v131 = v130 = service;
                        *buf = 138543362;
                        v229 = v131;
                        _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, smart speaker event is missing media profile", buf, 0xCu);

                        service = v130;
                        type = v129;
                      }

                      objc_autoreleasePoolPop(v126);
                      v91 = 0;
                    }

                    v79 = v218;
                  }

                  else
                  {
                    v91 = 0;
                  }

                  [v219 na_safeAddObject:v91];
                }

                else
                {
                  v97 = v221;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v98 = v97;
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v99 = v98;

                  v100 = v97;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v101 = v100;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v102 = v101;

                  v103 = v100;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v104 = v103;
                  }

                  else
                  {
                    v104 = 0;
                  }

                  v105 = v104;

                  v199 = v105;
                  v201 = v99;
                  v197 = v102;
                  if (v99)
                  {
                    v177 = objc_alloc(MEMORY[0x277CF1960]);
                    accessoryUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                    uUIDString4 = [accessoryUniqueIdentifier2 UUIDString];
                    spiClientIdentifier = [service spiClientIdentifier];
                    uUIDString5 = [spiClientIdentifier UUIDString];
                    serviceUUIDToServiceGroupUniqueIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                    uuid = [service uuid];
                    v191 = serviceUUIDToServiceGroupUniqueIdentifier;
                    v188 = [serviceUUIDToServiceGroupUniqueIdentifier objectForKeyedSubscript:?];
                    uUIDString6 = [v188 UUIDString];
                    accessoryZoneUniqueIdentifiers2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                    accessoryRoomUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                    uUIDString7 = [accessoryRoomUniqueIdentifier2 UUIDString];
                    accessoryName2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                    name = [service name];
                    accessoryRoomName2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                    serviceUUIDToServiceGroupName = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                    uuid2 = [service uuid];
                    v186 = serviceUUIDToServiceGroupName;
                    v111 = [serviceUUIDToServiceGroupName objectForKeyedSubscript:?];
                    accessoryZoneNames2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                    homeName = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                    v183 = accessoryZoneNames2;
                    v173 = accessoryZoneNames2;
                    v184 = v111;
                    v170 = v111;
                    accessoryRoomName4 = accessoryRoomName2;
                    accessoryName4 = accessoryName2;
                    v167 = accessoryName2;
                    name3 = name;
                    v114 = uUIDString7;
                    v115 = v201;
                    v116 = [v177 initWithBase:v220 numberAccessoryState:v201 accessoryUniqueIdentifier:uUIDString4 serviceUniqueIdentifier:uUIDString5 serviceType:v217 characteristicType:v223 serviceGroupUniqueIdentifier:uUIDString6 zoneUniqueIdentifiers:accessoryZoneUniqueIdentifiers2 roomUniqueIdentifier:uUIDString7 accessoryName:v167 serviceName:name roomName:accessoryRoomName2 serviceGroupName:v170 zoneNames:v173 homeName:homeName];
                    v117 = v197;
                  }

                  else
                  {
                    if (v102)
                    {
                      v178 = objc_alloc(MEMORY[0x277CF1960]);
                      accessoryUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                      uUIDString4 = [accessoryUniqueIdentifier2 UUIDString];
                      spiClientIdentifier = [service spiClientIdentifier];
                      uUIDString5 = [spiClientIdentifier UUIDString];
                      serviceUUIDToServiceGroupUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                      uuid = [service uuid];
                      v191 = serviceUUIDToServiceGroupUniqueIdentifier2;
                      v188 = [serviceUUIDToServiceGroupUniqueIdentifier2 objectForKeyedSubscript:?];
                      uUIDString6 = [v188 UUIDString];
                      accessoryZoneUniqueIdentifiers2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                      accessoryRoomUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                      uUIDString8 = [accessoryRoomUniqueIdentifier2 UUIDString];
                      accessoryName3 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                      name2 = [service name];
                      accessoryRoomName3 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                      serviceUUIDToServiceGroupName2 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                      uuid2 = [service uuid];
                      v186 = serviceUUIDToServiceGroupName2;
                      v123 = [serviceUUIDToServiceGroupName2 objectForKeyedSubscript:?];
                      accessoryZoneNames3 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                      homeName = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                      v183 = accessoryZoneNames3;
                      v184 = v123;
                      v169 = accessoryRoomName3;
                      v171 = v123;
                      accessoryRoomName4 = accessoryRoomName3;
                      accessoryName4 = accessoryName3;
                      v168 = accessoryName3;
                      name3 = name2;
                      v114 = uUIDString8;
                      v117 = v197;
                      v125 = [v178 initWithBase:v220 stringAccessoryState:v197 accessoryUniqueIdentifier:uUIDString4 serviceUniqueIdentifier:uUIDString5 serviceType:v217 characteristicType:v223 serviceGroupUniqueIdentifier:uUIDString6 zoneUniqueIdentifiers:accessoryZoneUniqueIdentifiers2 roomUniqueIdentifier:uUIDString8 accessoryName:v168 serviceName:name2 roomName:v169 serviceGroupName:v171 zoneNames:accessoryZoneNames3 homeName:homeName];
                    }

                    else
                    {
                      if (!v105)
                      {
                        v155 = service;
                        v156 = objc_autoreleasePoolPush();
                        selfCopy9 = self;
                        v158 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
                        {
                          v159 = HMFGetLogIdentifier();
                          v160 = objc_opt_class();
                          *buf = 138544386;
                          v229 = v159;
                          v230 = 2112;
                          v231 = v160;
                          v232 = 2112;
                          v233 = v227;
                          v234 = 2112;
                          v235 = v155;
                          v236 = 2112;
                          v237 = v103;
                          v161 = v160;
                          _os_log_impl(&dword_229538000, v158, OS_LOG_TYPE_INFO, "%{public}@Unable to log event metadata to biome, unknown write value type (%@) for characteristic: %@, Service: %@, written value: %@", buf, 0x34u);
                        }

                        objc_autoreleasePoolPop(v156);
                        service = v155;
                        goto LABEL_108;
                      }

                      v181 = objc_alloc(MEMORY[0x277CF1960]);
                      accessoryUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                      uUIDString4 = [accessoryUniqueIdentifier2 UUIDString];
                      spiClientIdentifier = [service spiClientIdentifier];
                      uUIDString5 = [spiClientIdentifier UUIDString];
                      serviceUUIDToServiceGroupUniqueIdentifier3 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                      uuid = [service uuid];
                      v191 = serviceUUIDToServiceGroupUniqueIdentifier3;
                      v188 = [serviceUUIDToServiceGroupUniqueIdentifier3 objectForKeyedSubscript:?];
                      uUIDString6 = [v188 UUIDString];
                      accessoryZoneUniqueIdentifiers2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                      accessoryRoomUniqueIdentifier2 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                      uUIDString9 = [accessoryRoomUniqueIdentifier2 UUIDString];
                      accessoryName4 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                      name3 = [service name];
                      accessoryRoomName4 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                      serviceUUIDToServiceGroupName3 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                      uuid2 = [service uuid];
                      v186 = serviceUUIDToServiceGroupName3;
                      v139 = [serviceUUIDToServiceGroupName3 objectForKeyedSubscript:?];
                      [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                      v140 = v105;
                      v141 = v114 = uUIDString9;
                      homeName = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                      v183 = v141;
                      v184 = v139;
                      v172 = v139;
                      v117 = v197;
                      v125 = [v181 initWithBase:v220 dataAccessoryState:v140 accessoryUniqueIdentifier:uUIDString4 serviceUniqueIdentifier:uUIDString5 serviceType:v217 characteristicType:v223 serviceGroupUniqueIdentifier:uUIDString6 zoneUniqueIdentifiers:accessoryZoneUniqueIdentifiers2 roomUniqueIdentifier:v114 accessoryName:accessoryName4 serviceName:name3 roomName:accessoryRoomName4 serviceGroupName:v172 zoneNames:v141 homeName:homeName];
                    }

                    v116 = v125;
                    v115 = 0;
                  }

                  [v219 addObject:v116];
                }

LABEL_108:

                goto LABEL_62;
              }

              goto LABEL_59;
            }

            v71 = objc_autoreleasePoolPush();
            v72 = observerCopy;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v75 = v74 = v51;
              *buf = 138543362;
              v229 = v75;
              _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@HAP event ineligible for donation because data source is nil", buf, 0xCu);

              v51 = v74;
              self = selfCopy3;
            }

            objc_autoreleasePoolPop(v71);
            v53 = v223;
          }

LABEL_59:
          v60 = objc_autoreleasePoolPush();
          selfCopy12 = self;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v92 = type;
            v94 = v93 = service;
            *buf = 138543874;
            v229 = v94;
            v230 = 2112;
            v231 = v227;
            v232 = 2112;
            v233 = v93;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEBUG, "%{public}@Unable to log event metadata to biome, not eligible for donation. Characteristic: %@, Service: %@", buf, 0x20u);

            service = v93;
            type = v92;
          }

          goto LABEL_61;
        }

        v60 = objc_autoreleasePoolPush();
        selfCopy12 = self;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v66 = type;
          v68 = v67 = service;
          v69 = [MEMORY[0x277CCABB0] numberWithInt:v45];
          *buf = 138543874;
          v229 = v68;
          v230 = 2112;
          v231 = v227;
          v232 = 2112;
          v233 = v69;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no characteristic type for characteristic (%@) at index: %@", buf, 0x20u);

          service = v67;
          type = v66;
          v51 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v60 = objc_autoreleasePoolPush();
        selfCopy12 = self;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v63 = service;
          v65 = [MEMORY[0x277CCABB0] numberWithInt:v45];
          *buf = 138543874;
          v229 = v64;
          v230 = 2112;
          v231 = v227;
          v232 = 2112;
          v233 = v65;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no service type for characteristic (%@) at index: %@", buf, 0x20u);

          service = v63;
          type = 0;
LABEL_37:
          self = selfCopy3;
        }
      }

LABEL_61:

      objc_autoreleasePoolPop(v60);
LABEL_62:

      ++v45;
      characteristicsInRequest7 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v96 = [characteristicsInRequest7 count];
    }

    while (v96 > v45);
  }

  v30 = objc_msgSend_copy(v219);

LABEL_16:

  return v30;
}

- (unint64_t)microLocationScanTriggerTypeForLogEventObserver:(id)observer
{
  v3 = [(HMDCharacteristicReadWriteLogEvent *)self firstDonatableCharacteristicForLogEventObserver:observer];
  service = [v3 service];
  type = [service type];
  v6 = [type isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

  return v6;
}

- (id)firstDonatableCharacteristicForLogEventObserver:(void *)observer
{
  v3 = a2;
  if (observer)
  {
    characteristicsInRequest = [observer characteristicsInRequest];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __108__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__firstDonatableCharacteristicForLogEventObserver___block_invoke;
    v6[3] = &unk_278675CE8;
    v7 = v3;
    observerCopy = observer;
    observer = [characteristicsInRequest na_firstObjectPassingTest:v6];
  }

  return observer;
}

uint64_t __108__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__firstDonatableCharacteristicForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (v4 && (v6 = *(a1 + 32), [v4 type], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "type"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = -[HMDMicroLocationLogEventObserver isEligibleForDonationWithHAPServiceType:HAPCharacteristicType:](v6, v7, v8), v8, v7, v6))
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer
{
  observerCopy = observer;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __119__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationRecordingScanForLogEventObserver___block_invoke;
    v8[3] = &unk_278675CE8;
    v9 = observerCopy;
    selfCopy = self;
    v6 = [characteristicsInRequest na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __119__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationRecordingScanForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (v4 && (v6 = *(a1 + 32), [v4 type], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "type"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = -[HMDMicroLocationLogEventObserver isEligibleForDonationWithHAPServiceType:HAPCharacteristicType:](v6, v7, v8), v8, v7, v6))
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer
{
  observerCopy = observer;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __122__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationLocalizationScanForLogEventObserver___block_invoke;
    v8[3] = &unk_278675CE8;
    v9 = observerCopy;
    selfCopy = self;
    v6 = [characteristicsInRequest na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __122__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationLocalizationScanForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (v4 && (v6 = *(a1 + 32), [v4 type], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "type"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = -[HMDMicroLocationLogEventObserver isEligibleForDonationWithHAPServiceType:HAPCharacteristicType:](v6, v7, v8), v8, v7, v6))
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)microLocationMetadataForLogEventObserver:(id)observer
{
  observerCopy = observer;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v5 = [(HMDCharacteristicReadWriteLogEvent *)self firstDonatableCharacteristicForLogEventObserver:observerCopy];
    service = [v5 service];
    accessory = [v5 accessory];
    v8 = accessory;
    v9 = MEMORY[0x277CBEC10];
    if (v5 && service && accessory)
    {
      characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v11 = [characteristicsInRequest indexOfObject:v5];

      writtenValues = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
      v13 = [writtenValues count];

      if (v11 <= v13)
      {
        writtenValues2 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
        v15 = [writtenValues2 objectAtIndexedSubscript:v11];

        v16 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (v18)
        {
          stringValue = [v18 stringValue];
        }

        else if (v21)
        {
          v22 = v21;
          stringValue = v19;
        }

        else
        {
          stringValue = @"unknown";
        }
      }

      else
      {
        stringValue = @"unknown";
      }

      spiClientIdentifier = [service spiClientIdentifier];
      uUIDString = [spiClientIdentifier UUIDString];

      type = [service type];
      type2 = [v5 type];
      serviceUUIDToServiceGroupUniqueIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
      v44 = service;
      uuid = [service uuid];
      v28 = [serviceUUIDToServiceGroupUniqueIdentifier objectForKeyedSubscript:uuid];
      uUIDString2 = [v28 UUIDString];
      v30 = uUIDString2;
      v31 = &stru_283CF9D50;
      if (uUIDString2)
      {
        v31 = uUIDString2;
      }

      v46 = v31;

      v45 = observerCopy;
      v42 = v5;
      if ([(__CFString *)type isEqualToString:@"00000228-0000-1000-8000-0026BB765291"])
      {

        uUIDString = @"media";
        v32 = @"media";
        v46 = &stru_283CF9D50;
        type2 = @"media";
      }

      else
      {
        v32 = type;
      }

      v33 = MEMORY[0x277D28780];
      spiClientIdentifier2 = [v8 spiClientIdentifier];
      uUIDString3 = [spiClientIdentifier2 UUIDString];
      v35 = HMDRequestSourceAsString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
      room = [v8 room];
      spiClientIdentifier3 = [room spiClientIdentifier];
      [spiClientIdentifier3 UUIDString];
      v39 = v38 = v8;
      v9 = [v33 metadataForHomekitAccessoryControlEventWithUUID:uUIDString3 stateString:stringValue serviceUUID:uUIDString serviceType:v32 characteristicType:type2 serviceGroupUUID:v46 source:v35 roomUUID:v39];

      v8 = v38;
      service = v44;
      observerCopy = v45;
      v5 = v42;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (SISchemaTopLevelUnionType)siriInstrumentationMessage
{
  v3 = objc_alloc_init(MEMORY[0x277D57AE8]);
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  clientMetricIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
  v6 = [v4 initWithUUIDString:clientMetricIdentifier];

  v7 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v6];
  [v3 setSharedMetricsId:v7];

  accessoryCategory = [(HMDCharacteristicReadWriteLogEvent *)self accessoryCategory];
  [v3 setAccessoryCategory:accessoryCategory];

  communicationProtocol = [(HMDCharacteristicReadWriteLogEvent *)self communicationProtocol];
  if (communicationProtocol == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (communicationProtocol == 2);
  }

  [v3 setCommunicationProtocol:v10];
  isLocal = [(HMDCharacteristicReadWriteLogEvent *)self isLocal];
  linkType = [(HMDCharacteristicReadWriteLogEvent *)self linkType];
  isSentOverThread = [(HMDCharacteristicReadWriteLogEvent *)self isSentOverThread];
  [(HMDCharacteristicReadWriteLogEvent *)self transportType];
  v14 = 2 * (linkType == 2);
  if (linkType == 1)
  {
    v14 = 1;
  }

  if (isSentOverThread)
  {
    v14 = 3;
  }

  if (isLocal)
  {
    v15 = v14;
  }

  else
  {
    v15 = 4;
  }

  [v3 setTransportType:v15];
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v3 setOperationType:v16];
  [v3 setWasLocal:{-[HMDCharacteristicReadWriteLogEvent isLocal](self, "isLocal")}];
  [v3 setWasCached:{-[HMDCharacteristicReadWriteLogEvent isCached](self, "isCached")}];
  [v3 setWasRemoteAccessAllowed:{-[HMDCharacteristicReadWriteLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [v3 setWasResidentFirstEnabled:{-[HMDCharacteristicReadWriteLogEvent isResidentFirstEnabled](self, "isResidentFirstEnabled")}];
  [v3 setWasRapportSlow:{-[HMDCharacteristicReadWriteLogEvent isSlowRapport](self, "isSlowRapport")}];
  [v3 setResidentFirstDuration:{-[HMDCharacteristicReadWriteLogEvent residentFirstDurationInMilliseconds](self, "residentFirstDurationInMilliseconds")}];
  residentFirstError = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
  domain = [residentFirstError domain];
  [v3 setResidentFirstErrorDomain:domain];

  residentFirstError2 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
  [v3 setResidentFirstErrorCode:{objc_msgSend(residentFirstError2, "code")}];

  [v3 setTotalDuration:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  error = [(HMMLogEvent *)self error];
  domain2 = [error domain];
  [v3 setFinalErrorDomain:domain2];

  error2 = [(HMMLogEvent *)self error];
  [v3 setFinalErrorCode:{objc_msgSend(error2, "code")}];

  [v3 setConsecutiveFailureCount:{-[HMDCharacteristicReadWriteLogEvent consecutiveFailureCount](self, "consecutiveFailureCount")}];
  v23 = objc_alloc_init(MEMORY[0x277D57AF8]);
  [v23 setHomeKitAccessoryOperationReported:v3];

  return v23;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(HMDCharacteristicReadWriteLogEvent *)self accessoryCertificationStatus];
  v4 = HMAccessoryCertificationStatusToString();
  [dictionary setObject:v4 forKeyedSubscript:@"accessoryCertificationStatus"];

  if (isInternalBuild())
  {
    accessoryUUID = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUUID];
    uUIDString = [accessoryUUID UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"accessoryUUID"];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"accessoryUUID"];
  }

  primaryServiceType = [(HMDCharacteristicReadWriteLogEvent *)self primaryServiceType];
  [dictionary setObject:primaryServiceType forKeyedSubscript:@"accessoryPrimaryServiceType"];

  bundleId = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
  if ([HMDMetricsUtilities shouldRedactBundleID:bundleId])
  {
    [dictionary setObject:@"Third-party app" forKeyedSubscript:@"appIdentifier"];
  }

  else
  {
    bundleId2 = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
    [dictionary setObject:bundleId2 forKeyedSubscript:@"appIdentifier"];
  }

  if (isInternalBuild())
  {
    clientMetricIdentifier = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
    [dictionary setObject:clientMetricIdentifier forKeyedSubscript:@"clientMetricIdentifier"];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"clientMetricIdentifier"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent communicationProtocol](self, "communicationProtocol")}];
  [dictionary setObject:v11 forKeyedSubscript:@"communicationProtocol"];

  expectedTransport = [(HMDCharacteristicReadWriteLogEvent *)self expectedTransport];
  [dictionary setObject:expectedTransport forKeyedSubscript:@"expectedTransport"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCached](self, "isCached")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isCached"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isCurrentDeviceConfirmedPrimaryResident"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident")}];
  [dictionary setObject:v15 forKeyedSubscript:@"isCurrentDevicePrimaryResident"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDeviceAvailableResident](self, "isCurrentDeviceAvailableResident")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isCurrentDeviceAvailableResident"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isPrimaryResidentReachable](self, "isPrimaryResidentReachable")}];
  [dictionary setObject:v17 forKeyedSubscript:@"isPrimaryResidentReachable"];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent isLocal](self, "isLocal") ^ 1}];
  [dictionary setObject:v18 forKeyedSubscript:@"isRemote"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isRemotelyReachable](self, "isRemotelyReachable")}];
  [dictionary setObject:v19 forKeyedSubscript:@"isRemotelyReachable"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [dictionary setObject:v20 forKeyedSubscript:@"isRemoteAccessAllowed"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isResidentAvailable](self, "isResidentAvailable")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isResidentAvailable"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self linkLayerType]== 4)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isSentOverThread"];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSentOverThread](self, "isSentOverThread")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isSentOverThread"];
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self linkLayerType]== 4)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isThreadAccessory"];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isThreadAccessory](self, "isThreadAccessory")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isThreadAccessory"];
  }

  hapAccessoryThreadCapabilities = [(HMDCharacteristicReadWriteLogEvent *)self hapAccessoryThreadCapabilities];
  [dictionary setObject:hapAccessoryThreadCapabilities forKeyedSubscript:@"hapThreadAccessoryCapabilities"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isWriteOperation](self, "isWriteOperation")}];
  [dictionary setObject:v25 forKeyedSubscript:@"isWrite"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isTimedWrite](self, "isTimedWrite")}];
  [dictionary setObject:v26 forKeyedSubscript:@"isTimedWrite"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent triggerSource](self, "triggerSource")}];
  [dictionary setObject:v27 forKeyedSubscript:@"sourceEnum"];

  v28 = HMDRequestSourceAsLegacyMetricString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
  [dictionary setObject:v28 forKeyedSubscript:@"source"];

  v29 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceFirstFailure];
  v30 = [v29 numberWithDouble:?];
  [dictionary setObject:v30 forKeyedSubscript:@"timeElapsedSinceFirstFailure"];

  v31 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self noSessionDuration];
  v33 = [v31 numberWithInteger:v32];
  [dictionary setObject:v33 forKeyedSubscript:@"noSessionDuration"];

  transportProtocolVersion = [(HMDCharacteristicReadWriteLogEvent *)self transportProtocolVersion];
  [dictionary setObject:transportProtocolVersion forKeyedSubscript:@"transportProtocolVersion"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal])
  {
    [(HMDCharacteristicReadWriteLogEvent *)self linkType];
    v35 = HAPLinkTypeDescription();
  }

  else
  {
    transportType = [(HMDCharacteristicReadWriteLogEvent *)self transportType];
    if (transportType > 7)
    {
      v37 = 0;
    }

    else
    {
      v37 = off_2786897D0[transportType];
    }

    v35 = v37;
  }

  v38 = v35;
  [dictionary setObject:v35 forKeyedSubscript:@"transportType"];

  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent linkLayerType](self, "linkLayerType")}];
  [dictionary setObject:v39 forKeyedSubscript:@"linkLayerType"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isModernTransport](self, "isModernTransport")}];
  [dictionary setObject:v40 forKeyedSubscript:@"isModernTransport"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSlowRapport](self, "isSlowRapport")}];
  [dictionary setObject:v41 forKeyedSubscript:@"isSlowRapport"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isDeviceAtHome](self, "isDeviceAtHome")}];
  [dictionary setObject:v42 forKeyedSubscript:@"isDeviceAtHome"];

  v43 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent localDurationInMilliseconds](self, "localDurationInMilliseconds")}];
  [dictionary setObject:v43 forKeyedSubscript:@"localDuration"];

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent residentFirstDurationInMilliseconds](self, "residentFirstDurationInMilliseconds")}];
  [dictionary setObject:v44 forKeyedSubscript:@"residentFirstDuration"];

  v45 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v45 forKeyedSubscript:@"duration"];

  v46 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btLoad](self, "btLoad")}];
  [dictionary setObject:v46 forKeyedSubscript:@"btLoad"];

  v47 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btAudioTask](self, "btAudioTask")}];
  [dictionary setObject:v47 forKeyedSubscript:@"btAudioTask"];

  v48 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btNonAudioTask](self, "btNonAudioTask")}];
  [dictionary setObject:v48 forKeyedSubscript:@"btNonAudioTask"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasSession](self, "hasSession")}];
  [dictionary setObject:v49 forKeyedSubscript:@"hasActiveSession"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isReachable](self, "isReachable")}];
  [dictionary setObject:v50 forKeyedSubscript:@"isReachable"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent recentSessionRetries](self, "recentSessionRetries")}];
  [dictionary setObject:v51 forKeyedSubscript:@"recentSessionRetries"];

  v52 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent topSessionFailureErrorCode](self, "topSessionFailureErrorCode")}];
  [dictionary setObject:v52 forKeyedSubscript:@"topSessionFailureErrorCode"];

  topSessionFailureErrorDomain = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorDomain];
  [dictionary setObject:topSessionFailureErrorDomain forKeyedSubscript:@"topSessionFailureErrorDomain"];

  v54 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isHomeThreadCapable](self, "isHomeThreadCapable")}];
  [dictionary setObject:v54 forKeyedSubscript:@"isHomeThreadCapable"];

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent lastKnownLinkQuality](self, "lastKnownLinkQuality")}];
  [dictionary setObject:v55 forKeyedSubscript:@"lastKnownLinkQuality"];

  residentFirstError = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];

  if (residentFirstError)
  {
    residentFirstError2 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    domain = [residentFirstError2 domain];
    [dictionary setObject:domain forKeyedSubscript:@"residentFirstErrorDomain"];

    v59 = MEMORY[0x277CCABB0];
    residentFirstError3 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    v61 = [v59 numberWithInteger:{objc_msgSend(residentFirstError3, "code")}];
    [dictionary setObject:v61 forKeyedSubscript:@"residentFirstErrorCode"];
  }

  residentFirstUnderlyingError = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];

  if (residentFirstUnderlyingError)
  {
    residentFirstUnderlyingError2 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];
    domain2 = [residentFirstUnderlyingError2 domain];
    [dictionary setObject:domain2 forKeyedSubscript:@"residentFirstUnderlyingErrorDomain"];

    v65 = MEMORY[0x277CCABB0];
    residentFirstUnderlyingError3 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];
    v67 = [v65 numberWithInteger:{objc_msgSend(residentFirstUnderlyingError3, "code")}];
    [dictionary setObject:v67 forKeyedSubscript:@"residentFirstUnderlyingErrorCode"];
  }

  v68 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isNetworkAvailable](self, "isNetworkAvailable")}];
  [dictionary setObject:v68 forKeyedSubscript:@"isNetworkAvailable"];

  v69 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isLocalFallback](self, "isLocalFallback")}];
  [dictionary setObject:v69 forKeyedSubscript:@"isLocalFallback"];

  v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isLinkFallback](self, "isLinkFallback")}];
  [dictionary setObject:v70 forKeyedSubscript:@"isLinkFallback"];

  v71 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceLastSuccessfulRequest];
  v73 = [v71 numberWithInteger:v72];
  [dictionary setObject:v73 forKeyedSubscript:@"durationSecondsSinceLastSuccessfulRequest"];

  v74 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceLastFailedRequest];
  v76 = [v74 numberWithInteger:v75];
  [dictionary setObject:v76 forKeyedSubscript:@"durationSecondsSinceLastFailedRequest"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasSucceededOnce](self, "hasSucceededOnce")}];
  [dictionary setObject:v77 forKeyedSubscript:@"hasSucceededOnce"];

  v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasFailedOnce](self, "hasFailedOnce")}];
  [dictionary setObject:v78 forKeyedSubscript:@"hasFailedOnce"];

  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent consecutiveSuccessCount](self, "consecutiveSuccessCount")}];
  [dictionary setObject:v79 forKeyedSubscript:@"consecutiveSuccessCount"];

  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent consecutiveFailureCount](self, "consecutiveFailureCount")}];
  [dictionary setObject:v80 forKeyedSubscript:@"consecutiveFailureCount"];

  v81 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent lastSuccessLinkLayerType](self, "lastSuccessLinkLayerType")}];
  [dictionary setObject:v81 forKeyedSubscript:@"lastSuccessLinkLayerType"];

  v82 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent lastFailedLinkLayerType](self, "lastFailedLinkLayerType")}];
  [dictionary setObject:v82 forKeyedSubscript:@"lastFailedLinkLayerType"];

  v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSSIDSameAsLastSuccessRequest](self, "isSSIDSameAsLastSuccessRequest")}];
  [dictionary setObject:v83 forKeyedSubscript:@"isSSIDSameAsLastSuccessRequest"];

  v84 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isBSSIDSameAsLastSuccessRequest](self, "isBSSIDSameAsLastSuccessRequest")}];
  [dictionary setObject:v84 forKeyedSubscript:@"isBSSIDSameAsLastSuccessRequest"];

  v85 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isPrimaryResidentAvailable](self, "isPrimaryResidentAvailable")}];
  [dictionary setObject:v85 forKeyedSubscript:@"isPrimaryResidentAvailable"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v86 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceCurrentDeviceAsPrimary];
    v88 = [v86 numberWithInteger:v87];
    [dictionary setObject:v88 forKeyedSubscript:@"currentDeviceAsPrimaryDurationSeconds"];

    if (isHomePod())
    {
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent mediaSystemConfiguration](self, "mediaSystemConfiguration")}];
      [dictionary setObject:v89 forKeyedSubscript:@"mediaSystemConfiguration"];
    }
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self hasEnabledResidents])
  {
    v90 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSincePrimaryChanged];
    v92 = [v90 numberWithInteger:v91];
    [dictionary setObject:v92 forKeyedSubscript:@"durationSecondsSincePrimaryChanged"];

    v93 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSincePrimaryLost];
    v95 = [v93 numberWithInteger:v94];
    [dictionary setObject:v95 forKeyedSubscript:@"durationSecondsSincePrimaryLost"];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent percentageOfLocalReachableResidents](self, "percentageOfLocalReachableResidents")}];
    [dictionary setObject:v96 forKeyedSubscript:@"percentageOfLocalReachableResidents"];

    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent percentageOfIDSReachableResidents](self, "percentageOfIDSReachableResidents")}];
    [dictionary setObject:v97 forKeyedSubscript:@"percentageOfIDSReachableResidents"];
  }

  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent wifiConnectionState](self, "wifiConnectionState")}];
  [dictionary setObject:v98 forKeyedSubscript:@"wifiConnectionState"];

  v99 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent bluetoothState](self, "bluetoothState")}];
  [dictionary setObject:v99 forKeyedSubscript:@"bluetoothState"];

  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent ethernetConnectionState](self, "ethernetConnectionState")}];
  [dictionary setObject:v100 forKeyedSubscript:@"ethernetConnectionState"];

  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent cellularDataConnectionState](self, "cellularDataConnectionState")}];
  [dictionary setObject:v101 forKeyedSubscript:@"cellularDataConnectionState"];

  v102 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isConnectedToInternet](self, "isConnectedToInternet")}];
  [dictionary setObject:v102 forKeyedSubscript:@"isConnectedToInternet"];

  v103 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentNetworkSignatureSameAsLastSuccess](self, "isCurrentNetworkSignatureSameAsLastSuccess")}];
  [dictionary setObject:v103 forKeyedSubscript:@"isCurrentNetworkSignatureSameAsLastSuccess"];

  v104 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentNetworkSignatureSameAsLastFailure](self, "isCurrentNetworkSignatureSameAsLastFailure")}];
  [dictionary setObject:v104 forKeyedSubscript:@"isCurrentNetworkSignatureSameAsLastFailure"];

  wifiAccessPointOUI = [(HMDCharacteristicReadWriteLogEvent *)self wifiAccessPointOUI];
  [dictionary setObject:wifiAccessPointOUI forKeyedSubscript:@"wifiAccessPointOUI"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isIPAccessoryServer])
  {
    v106 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSeenOnBonjour](self, "isSeenOnBonjour")}];
    [dictionary setObject:v106 forKeyedSubscript:@"isSeenOnBonjour"];

    v107 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipHasCachedIP](self, "ipHasCachedIP")}];
    [dictionary setObject:v107 forKeyedSubscript:@"IPHasCachedIP"];

    v108 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipHasSelfAssignedIP](self, "ipHasSelfAssignedIP")}];
    [dictionary setObject:v108 forKeyedSubscript:@"IPHasSelfAssignedIP"];

    ipSocketIPType = [(HMDCharacteristicReadWriteLogEvent *)self ipSocketIPType];
    [dictionary setObject:ipSocketIPType forKeyedSubscript:@"IPSocketIPType"];

    ipSocketUpdateType = [(HMDCharacteristicReadWriteLogEvent *)self ipSocketUpdateType];
    [dictionary setObject:ipSocketUpdateType forKeyedSubscript:@"IPSocketUpdateType"];

    v111 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipTriedConnectingToIPv4Address](self, "ipTriedConnectingToIPv4Address")}];
    [dictionary setObject:v111 forKeyedSubscript:@"IPTriedConnectingOverIPv4"];

    v112 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipTriedConnectingToIPv6Address](self, "ipTriedConnectingToIPv6Address")}];
    [dictionary setObject:v112 forKeyedSubscript:@"IPTriedConnectingOverIPv6"];
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCurrentDeviceAvailableResident])
  {
    v113 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isThreadNetworkUpInHome](self, "isThreadNetworkUpInHome")}];
    [dictionary setObject:v113 forKeyedSubscript:@"isThreadNetworkUpInHome"];

    v114 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent threadPreferredNetworkExistsInHome](self, "threadPreferredNetworkExistsInHome")}];
    [dictionary setObject:v114 forKeyedSubscript:@"threadPreferredNetworkExistsInHome"];
  }

  v115 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent threadNetworkConnectionState](self, "threadNetworkConnectionState")}];
  [dictionary setObject:v115 forKeyedSubscript:@"threadNetworkConnectionState"];

  v116 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent threadNetworkNodeType](self, "threadNetworkNodeType")}];
  [dictionary setObject:v116 forKeyedSubscript:@"threadNetworkNodeType"];

  coreHAPRetryStatus = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryStatus];

  if (coreHAPRetryStatus)
  {
    coreHAPRetryStatus2 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryStatus];
    [dictionary setObject:coreHAPRetryStatus2 forKeyedSubscript:@"coreHAPRetryStatus"];

    v119 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryTimeAllotted];
    v120 = [v119 numberWithDouble:?];
    [dictionary setObject:v120 forKeyedSubscript:@"coreHAPRetryTimeAllotted"];

    v121 = MEMORY[0x277CCABB0];
    coreHAPRetryError = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryError];
    v123 = [v121 numberWithInteger:{objc_msgSend(coreHAPRetryError, "code")}];
    [dictionary setObject:v123 forKeyedSubscript:@"coreHAPRetryErrorCode"];

    coreHAPRetryError2 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryError];
    domain3 = [coreHAPRetryError2 domain];
    [dictionary setObject:domain3 forKeyedSubscript:@"coreHAPRetryErrorDomain"];
  }

  v126 = objc_msgSend_copy(dictionary);

  return v126;
}

- (void)_setBtLoad
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[HMDWirelessLoadManager sharedInstance];
  getBtLoadData = [v3 getBtLoadData];
  v5 = [getBtLoadData objectForKeyedSubscript:@"kBtLoadKey"];
  self->_btLoad = [v5 intValue];

  v6 = [getBtLoadData objectForKeyedSubscript:@"kBtAudioTask"];
  self->_btAudioTask = [v6 intValue];

  v7 = [getBtLoadData objectForKeyedSubscript:@"kBtNonAudioTask"];
  self->_btNonAudioTask = [v7 intValue];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138544130;
    v13 = v11;
    v14 = 1024;
    btLoad = [(HMDCharacteristicReadWriteLogEvent *)selfCopy btLoad];
    v16 = 1024;
    btAudioTask = [(HMDCharacteristicReadWriteLogEvent *)selfCopy btAudioTask];
    v18 = 1024;
    btNonAudioTask = [(HMDCharacteristicReadWriteLogEvent *)selfCopy btNonAudioTask];
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@RW BT Load: %d AudioTsk: %d NonAudioTsk: %d", &v12, 0x1Eu);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)prepareForObservation
{
  v67 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMDCharacteristicReadWriteLogEvent;
  [(HMMLogEvent *)&v30 prepareForObservation];
  readWriteLogEventManager = [(HMDCharacteristicReadWriteLogEvent *)self readWriteLogEventManager];
  [readWriteLogEventManager _updateNetworkStatisticsForLogEvent:self];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCached]|| ![(HMDCharacteristicReadWriteLogEvent *)self isLocal])
  {
    [(HMDCharacteristicReadWriteLogEvent *)self setIsSentOverThread:0];
  }

  [(HMDCharacteristicReadWriteLogEvent *)self _updateResidentFirstErrorWithHomeHubError];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
    {
      v6 = @"Writing";
    }

    else
    {
      v6 = @"Reading";
    }

    characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v7 = [characteristicsInRequest count];
    accessoryUUID = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUUID];
    accessoryManufacturer = [(HMDCharacteristicReadWriteLogEvent *)self accessoryManufacturer];
    error = [(HMMLogEvent *)self error];
    residentFirstError = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    durationMilliseconds = [(HMMLogEvent *)self durationMilliseconds];
    localDurationInMilliseconds = [(HMDCharacteristicReadWriteLogEvent *)self localDurationInMilliseconds];
    residentFirstDurationInMilliseconds = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstDurationInMilliseconds];
    log = v5;
    if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal])
    {
      [(HMDCharacteristicReadWriteLogEvent *)self linkType];
      v8 = HAPLinkTypeDescription();
    }

    else
    {
      transportType = [(HMDCharacteristicReadWriteLogEvent *)self transportType];
      if (transportType > 7)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_2786897D0[transportType];
      }

      v8 = v10;
    }

    v19 = v8;
    v18 = HMDRequestSourceAsLegacyMetricString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
    [(HMDCharacteristicReadWriteLogEvent *)self isReachable];
    v11 = HMFBooleanToString();
    [(HMDCharacteristicReadWriteLogEvent *)self hasSession];
    v17 = HMFBooleanToString();
    recentSessionRetries = [(HMDCharacteristicReadWriteLogEvent *)self recentSessionRetries];
    topSessionFailureErrorDomain = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorDomain];
    topSessionFailureErrorCode = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorCode];
    [(HMDCharacteristicReadWriteLogEvent *)self isHomeThreadCapable];
    v14 = HMFBooleanToString();
    *buf = 138547714;
    v32 = v29;
    v33 = 2114;
    v34 = v6;
    v35 = 2050;
    v36 = v7;
    v37 = 2114;
    v38 = accessoryUUID;
    v39 = 2112;
    v40 = accessoryManufacturer;
    v41 = 2114;
    v42 = error;
    v43 = 2114;
    v44 = residentFirstError;
    v45 = 2048;
    v46 = durationMilliseconds;
    v47 = 2048;
    v48 = localDurationInMilliseconds;
    v49 = 2048;
    v50 = residentFirstDurationInMilliseconds;
    v51 = 2114;
    v52 = v19;
    v53 = 2114;
    v54 = v18;
    v55 = 2114;
    v56 = v11;
    v57 = 2114;
    v58 = v17;
    v59 = 2048;
    v60 = recentSessionRetries;
    v61 = 2112;
    v62 = topSessionFailureErrorDomain;
    v63 = 2048;
    v64 = topSessionFailureErrorCode;
    v65 = 2114;
    v66 = v14;
    v15 = v14;
    v5 = log;
    _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_INFO, "%{public}@[CA] HMDCharacteristicReadWriteLogEvent -- %{public}@ %{public}tu characteristic(s) on accessory %{public}@ (%@) completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@, Request source: %{public}@, isReachable:%{public}@, hasSession: %{public}@, recentSessionRetries: %lu, topSessionFailureErrorDomain: %@, topSessionFailureErrorCode: %ld, homeThreadCapable: %{public}@", buf, 0xB6u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)markEndTime
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicReadWriteLogEvent;
  [(HMMDatedHomeLogEvent *)&v4 markEndTime];
  os_unfair_lock_lock_with_options();
  readWriteLogEventManager = [(HMDCharacteristicReadWriteLogEvent *)self readWriteLogEventManager];
  [readWriteLogEventManager updateStatisticsForLogEvent:self];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDCharacteristicReadWriteLogEvent *)self _setBtLoad];
}

- (void)setResidentFirstEndTime:(double)time
{
  [(HMMLogEvent *)self startTime];

  [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstDurationInMilliseconds:((time - v5) * 1000.0)];
}

- (void)setResidentFirstError:(id)error
{
  errorCopy = error;
  objc_storeStrong(&self->_residentFirstError, error);
  [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:0];
  if (errorCopy && ![(HMDCharacteristicReadWriteLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v5 = objc_msgSend_copy(errorCopy);
    underlyingErrors = [v5 underlyingErrors];
    v7 = [underlyingErrors count];

    if (v7)
    {
      underlyingErrors2 = [v5 underlyingErrors];
      firstObject = [underlyingErrors2 firstObject];

      underlyingErrors3 = [firstObject underlyingErrors];
      v11 = [underlyingErrors3 count];

      if (v11)
      {
        objc_storeStrong(&self->_residentFirstError, firstObject);
        underlyingErrors4 = [firstObject underlyingErrors];
        firstObject2 = [underlyingErrors4 firstObject];
        [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:firstObject2];
      }

      else
      {
        [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:firstObject];
      }
    }
  }
}

- (void)_updateResidentFirstErrorWithHomeHubError
{
  v23 = *MEMORY[0x277D85DE8];
  residentFirstError = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];

  if (!residentFirstError)
  {
    if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal]|| ([(HMMLogEvent *)self error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      if ([(HMDCharacteristicReadWriteLogEvent *)self cellularDataConnectionState]== 1 && [(HMDCharacteristicReadWriteLogEvent *)self ethernetConnectionState]== 1 && ([(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 1 || [(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 2 || [(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 5))
      {
        v5 = objc_autoreleasePoolPush();
        selfCopy = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v21 = 138543362;
          v22 = v8;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current device has no cellular or wifi data connectivity", &v21, 0xCu);
        }

        v9 = 3605;
      }

      else if ([(HMDCharacteristicReadWriteLogEvent *)self isNetworkAvailable])
      {
        if ([(HMDCharacteristicReadWriteLogEvent *)self isRemoteAccessAllowed])
        {
          if ([(HMDCharacteristicReadWriteLogEvent *)self isResidentAvailable])
          {
            if ([(HMDCharacteristicReadWriteLogEvent *)self isPrimaryResidentAvailable])
            {
              if ([(HMDCharacteristicReadWriteLogEvent *)self isPrimaryResidentReachable])
              {
                return;
              }

              v5 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v7 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
              {
                v11 = HMFGetLogIdentifier();
                v21 = 138543362;
                v22 = v11;
                _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Primary resident is unreachable", &v21, 0xCu);
              }

              v9 = 3602;
            }

            else
            {
              v5 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v7 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
              {
                v19 = HMFGetLogIdentifier();
                v21 = 138543362;
                v22 = v19;
                _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: No primary resident in home", &v21, 0xCu);
              }

              v9 = 3601;
            }
          }

          else
          {
            v5 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v7 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              v21 = 138543362;
              v22 = v17;
              _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: No resident in this home", &v21, 0xCu);
            }

            v9 = 3600;
          }
        }

        else
        {
          v5 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v7 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v21 = 138543362;
            v22 = v15;
            _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current user is not allowed remote access", &v21, 0xCu);
          }

          v9 = 3606;
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v21 = 138543362;
          v22 = v13;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current device has no network connectivity", &v21, 0xCu);
        }

        v9 = 3604;
      }

      objc_autoreleasePoolPop(v5);
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:v9];
      [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstError:v20];
    }
  }
}

- (BOOL)_isRequestForTHSensorOnAppleMediaAccessory:(id)accessory characteristicsInRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  requestCopy = request;
  hostAccessory = [accessoryCopy hostAccessory];

  if (hostAccessory)
  {
    hostAccessory2 = [accessoryCopy hostAccessory];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = 0;
    if ((isKindOfClass & 1) != 0 && hostAccessory2)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = requestCopy;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        v21 = requestCopy;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            service = [*(*(&v22 + 1) + 8 * i) service];
            type = [service type];
            if ([type isEqualToString:@"0000008A-0000-1000-8000-0026BB765291"])
            {

LABEL_17:
              v10 = 1;
              requestCopy = v21;
              goto LABEL_18;
            }

            type2 = [service type];
            v19 = [type2 isEqualToString:@"00000082-0000-1000-8000-0026BB765291"];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          v10 = 0;
          requestCopy = v21;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_18:
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateWithTHSensorNetworkData:(id)data primaryNetworkData:(id)networkData accessoryServer:(id)server
{
  v129 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  networkDataCopy = networkData;
  serverCopy = server;
  v10 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  networkInformationCache = [v10 networkInformationCache];
  wifiSSID = [networkInformationCache wifiSSID];

  if (wifiSSID)
  {
    v13 = objc_alloc(MEMORY[0x277CCABB0]);
    networkInformationCache2 = [v10 networkInformationCache];
    wifiSSID2 = [networkInformationCache2 wifiSSID];
    v16 = [wifiSSID2 dataUsingEncoding:4];
    v17 = [v13 initWithLong:HMDTruncatedHash(v16)];
  }

  else
  {
    v17 = 0;
  }

  hashWifiSSID = [networkDataCopy hashWifiSSID];
  v19 = [hashWifiSSID isEqual:v17];

  if ((v19 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v23 = v106 = v17;
      networkInformationCache3 = [v10 networkInformationCache];
      [networkInformationCache3 wifiSSID];
      v109 = v10;
      v26 = v25 = dataCopy;
      [networkDataCopy wifiSSID];
      v28 = v27 = networkDataCopy;
      *buf = 138543874;
      v124 = v23;
      v125 = 2112;
      v126 = v26;
      v127 = 2112;
      v128 = v28;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Wifi information mismatch with statusKit data. Local wifi ssid: %@, statusKit wifi ssid: %@", buf, 0x20u);

      networkDataCopy = v27;
      dataCopy = v25;
      v10 = v109;

      v17 = v106;
    }

    objc_autoreleasePoolPop(v20);
  }

  if (v17)
  {
    v29 = [dataCopy objectForKeyedSubscript:@"NwWf"];

    if (v29)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [dataCopy objectForKeyedSubscript:@"NwWf"];
      v32 = [v30 numberWithBool:{objc_msgSend(v17, "isEqual:", v31)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorSSIDSame:v32];
    }
  }

  hashPrimaryIPv4NetworkSignature = [networkDataCopy hashPrimaryIPv4NetworkSignature];
  if (hashPrimaryIPv4NetworkSignature)
  {
    v34 = hashPrimaryIPv4NetworkSignature;
    v35 = [dataCopy objectForKeyedSubscript:@"Nw4s"];

    if (v35)
    {
      v36 = MEMORY[0x277CCABB0];
      hashPrimaryIPv4NetworkSignature2 = [networkDataCopy hashPrimaryIPv4NetworkSignature];
      v38 = [dataCopy objectForKeyedSubscript:@"Nw4s"];
      v39 = [v36 numberWithBool:{objc_msgSend(hashPrimaryIPv4NetworkSignature2, "isEqual:", v38)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4NetworkSignatureSame:v39];
    }
  }

  hashPrimaryIPv6NetworkSignature = [networkDataCopy hashPrimaryIPv6NetworkSignature];
  if (hashPrimaryIPv6NetworkSignature)
  {
    v41 = hashPrimaryIPv6NetworkSignature;
    v42 = [dataCopy objectForKeyedSubscript:@"Nw6s"];

    if (v42)
    {
      v43 = MEMORY[0x277CCABB0];
      hashPrimaryIPv6NetworkSignature2 = [networkDataCopy hashPrimaryIPv6NetworkSignature];
      v45 = [dataCopy objectForKeyedSubscript:@"Nw6s"];
      v46 = [v43 numberWithBool:{objc_msgSend(hashPrimaryIPv6NetworkSignature2, "isEqual:", v45)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6NetworkSignatureSame:v46];
    }
  }

  v47 = [dataCopy objectForKeyedSubscript:@"NwIn"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  [(HMDCharacteristicReadWriteLogEvent *)self setThSensorPrimaryInterfaceName:v49];
  v50 = [dataCopy objectForKeyedSubscript:@"NwIt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;

  [(HMDCharacteristicReadWriteLogEvent *)self setThSensorPrimaryInterfaceType:v52];
  v53 = [dataCopy objectForKeyedSubscript:@"AssertionTimeStamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;

  if (v55)
  {
    v56 = MEMORY[0x277CCABB0];
    [v55 timeIntervalSinceNow];
    if (v57 >= 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = -v57;
    }

    v59 = [v56 numberWithLong:v58];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorDurationSecondsSinceLastStatusKitAssertion:v59];
  }

  v60 = serverCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  if (v62)
  {
    v112 = networkDataCopy;
    currentSocketInfo = [v62 currentSocketInfo];
    v107 = v62;
    cachedSocketInfo = [v62 cachedSocketInfo];
    v65 = cachedSocketInfo;
    v108 = dataCopy;
    if (!currentSocketInfo || !cachedSocketInfo || ([currentSocketInfo isEqual:cachedSocketInfo] & 1) == 0)
    {
      v66 = v65;
      v67 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v70 = v100 = v67;
        [currentSocketInfo shortDescription];
        v71 = v102 = v55;
        [v66 shortDescription];
        v104 = currentSocketInfo;
        v72 = v17;
        v74 = v73 = v10;
        *buf = 138543874;
        v124 = v70;
        v125 = 2112;
        v126 = v71;
        v127 = 2112;
        v128 = v74;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@Unexpected, current socket: %@ does not match cached socket: %@", buf, 0x20u);

        v10 = v73;
        v17 = v72;
        currentSocketInfo = v104;

        v55 = v102;
        v67 = v100;
      }

      objc_autoreleasePoolPop(v67);
      dataCopy = v108;
      v65 = v66;
      if (!v66)
      {
        goto LABEL_72;
      }
    }

    v110 = v10;
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "ipAddressType")}];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorCachedSourceIPType:v75];

    ipAddressString = [v65 ipAddressString];
    v77 = [ipAddressString componentsSeparatedByString:@"%"];
    firstObject = [v77 firstObject];

    v103 = firstObject;
    v79 = [firstObject dataUsingEncoding:4];
    v80 = HMDTruncatedHash(v79);

    ipAddressType = [v65 ipAddressType];
    if ((ipAddressType - 2) >= 3)
    {
      v10 = v110;
      if (ipAddressType != 1)
      {
LABEL_71:

LABEL_72:
        networkDataCopy = v112;
        v62 = v107;
        goto LABEL_73;
      }

      v101 = v65;
      v92 = [dataCopy objectForKeyedSubscript:@"NwI4"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v92;
      }

      else
      {
        v93 = 0;
      }

      v94 = v93;

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v85 = v94;
      v95 = [v85 countByEnumeratingWithState:&v117 objects:v122 count:16];
      if (!v95)
      {
LABEL_70:

        v10 = v110;
        v65 = v101;
        goto LABEL_71;
      }

      v96 = v95;
      v105 = currentSocketInfo;
      v88 = v55;
      v97 = *v118;
      v98 = MEMORY[0x277CBEC28];
      while (2)
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v118 != v97)
          {
            objc_enumerationMutation(v85);
          }

          if (v80 == [*(*(&v117 + 1) + 8 * i) longValue])
          {
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4AddressSameAsCachedIP:MEMORY[0x277CBEC38]];
            goto LABEL_69;
          }

          [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4AddressSameAsCachedIP:v98];
        }

        v96 = [v85 countByEnumeratingWithState:&v117 objects:v122 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v101 = v65;
      v82 = [dataCopy objectForKeyedSubscript:@"NwI6"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      v84 = v83;

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v85 = v84;
      v86 = [v85 countByEnumeratingWithState:&v113 objects:v121 count:16];
      if (!v86)
      {
        goto LABEL_70;
      }

      v87 = v86;
      v105 = currentSocketInfo;
      v88 = v55;
      v89 = *v114;
      v90 = MEMORY[0x277CBEC28];
      while (2)
      {
        for (j = 0; j != v87; ++j)
        {
          if (*v114 != v89)
          {
            objc_enumerationMutation(v85);
          }

          if (v80 == [*(*(&v113 + 1) + 8 * j) longValue])
          {
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6AddressSameAsCachedIP:MEMORY[0x277CBEC38]];
            goto LABEL_69;
          }

          [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6AddressSameAsCachedIP:v90];
        }

        v87 = [v85 countByEnumeratingWithState:&v113 objects:v121 count:16];
        if (v87)
        {
          continue;
        }

        break;
      }
    }

LABEL_69:
    dataCopy = v108;
    v55 = v88;
    currentSocketInfo = v105;
    goto LABEL_70;
  }

LABEL_73:
}

- (void)_populateTHSensorMetricsForAccessory:(id)accessory accessoryServer:(id)server characteristicsInRequest:(id)request home:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  hostAccessory = [accessory hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = hostAccessory;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = homeCopy;
    residentDeviceManager = [homeCopy residentDeviceManager];
    residentDevices = [residentDeviceManager residentDevices];

    obj = residentDevices;
    v13 = [residentDevices countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          device = [v17 device];
          idsIdentifier = [device idsIdentifier];
          device2 = [v10 device];
          idsIdentifier2 = [device2 idsIdentifier];
          v22 = [idsIdentifier hmf_isEqualToUUID:idsIdentifier2];

          if (v22)
          {
            v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isReachableByIDS")}];
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorReachableViaIDS:v23];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorReachable:v24];

    homeCopy = v25;
  }
}

- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)time characteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)self0 isLocal:(BOOL)self1 transactionId:(id)self2 isCached:(BOOL)self3 bundleId:(id)self4 userUUID:(id)self5 writtenValues:(id)self6 readWriteLogEventManager:(id)self7
{
  operationCopy = operation;
  v258 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  accessoryCopy = accessory;
  hapAccessoryCopy = hapAccessory;
  idCopy = id;
  bundleIdCopy = bundleId;
  dCopy = d;
  valuesCopy = values;
  managerCopy = manager;
  v227 = accessoryCopy;
  home = [accessoryCopy home];
  uuid = [home uuid];
  v246.receiver = self;
  v246.super_class = HMDCharacteristicReadWriteLogEvent;
  v27 = home;
  v28 = [(HMMDatedHomeLogEvent *)&v246 initWithStartTime:uuid homeUUID:time];

  if (!v28)
  {
    goto LABEL_90;
  }

  v218 = valuesCopy;
  objc_storeStrong(&v28->_readWriteLogEventManager, manager);
  readWriteLogEventManager = v28->_readWriteLogEventManager;
  v221 = home;
  wifiManager = [home wifiManager];
  [(HMDCharacteristicReadWriteLogEventManager *)readWriteLogEventManager _setupNetworkCacheWithWifiManager:wifiManager];

  currentClientMetricIdentifier = [MEMORY[0x277D0F770] currentClientMetricIdentifier];
  clientMetricIdentifier = v28->_clientMetricIdentifier;
  v28->_clientMetricIdentifier = currentClientMetricIdentifier;

  v33 = objc_autoreleasePoolPush();
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    v36 = v35;
    v37 = @"Reading";
    if (operationCopy)
    {
      v37 = @"Writing";
    }

    *buf = 138543618;
    *&buf[4] = v35;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[HMDCharacteristicReadWriteLogEvent] %@...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v38 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;
  v228 = v38;

  server = [hapAccessoryCopy server];
  if (v40)
  {
    v28->_accessoryCertificationStatus = [v40 certificationStatus];
    v28->_communicationProtocol = [v40 communicationProtocol];
    expectedTransport = [v40 expectedTransport];
    expectedTransport = v28->_expectedTransport;
    v28->_expectedTransport = expectedTransport;
  }

  uuid2 = [v38 uuid];
  accessoryUUID = v28->_accessoryUUID;
  v28->_accessoryUUID = uuid2;

  identifier = [v38 identifier];
  accessoryIdentifier = v28->_accessoryIdentifier;
  v28->_accessoryIdentifier = identifier;

  spiClientIdentifier = [v38 spiClientIdentifier];
  accessoryUniqueIdentifier = v28->_accessoryUniqueIdentifier;
  v28->_accessoryUniqueIdentifier = spiClientIdentifier;

  name = [v38 name];
  accessoryName = v28->_accessoryName;
  v28->_accessoryName = name;

  category = [v38 category];
  categoryType = [category categoryType];
  accessoryCategory = v28->_accessoryCategory;
  v28->_accessoryCategory = categoryType;

  manufacturer = [v38 manufacturer];
  accessoryManufacturer = v28->_accessoryManufacturer;
  v28->_accessoryManufacturer = manufacturer;

  room = [v38 room];
  spiClientIdentifier2 = [room spiClientIdentifier];
  accessoryRoomUniqueIdentifier = v28->_accessoryRoomUniqueIdentifier;
  v28->_accessoryRoomUniqueIdentifier = spiClientIdentifier2;

  v220 = room;
  name2 = [room name];
  v60 = objc_msgSend_copy(name2);
  accessoryRoomName = v28->_accessoryRoomName;
  v28->_accessoryRoomName = v60;

  accessoryMetric = [v40 accessoryMetric];
  sessionMetric = [accessoryMetric sessionMetric];

  v28->_hasSession = [v38 hasActiveSession];
  v28->_reachable = [v38 isReachable];
  successfulSessionRetries = [sessionMetric successfulSessionRetries];
  v28->_recentSessionRetries = [sessionMetric sessionFailures] + successfulSessionRetries;
  topError = [sessionMetric topError];
  v28->_topSessionFailureErrorCode = [topError code];

  v216 = sessionMetric;
  topError2 = [sessionMetric topError];
  domain = [topError2 domain];
  topSessionFailureErrorDomain = v28->_topSessionFailureErrorDomain;
  v28->_topSessionFailureErrorDomain = domain;

  v27 = v221;
  threadNetworkID = [v221 threadNetworkID];
  v28->_homeThreadCapable = threadNetworkID != 0;

  v28->_lastKnownLinkQuality = 5;
  objc_storeStrong(&v28->_characteristicsInRequest, characteristics);
  v28->_triggerSource = source;
  v28->_biomeSource = biomeSource;
  v28->_isWriteOperation = operationCopy;
  v28->_isTimedWrite = write;
  v28->_isLocal = local;
  uUIDString = [idCopy UUIDString];
  transactionIdentifier = v28->_transactionIdentifier;
  v28->_transactionIdentifier = uUIDString;

  v28->_isCached = cached;
  v28->_linkType = [hapAccessoryCopy linkType];
  v28->_linkLayerType = [hapAccessoryCopy linkLayerType];
  version = [server version];
  versionString = [version versionString];
  transportProtocolVersion = v28->_transportProtocolVersion;
  v28->_transportProtocolVersion = versionString;

  v223 = v40;
  v75 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v40];
  primaryServiceType = v28->_primaryServiceType;
  v28->_primaryServiceType = v75;

  if (dCopy)
  {
    uUIDString2 = [dCopy UUIDString];
    userUUID = v28->_userUUID;
    v28->_userUUID = uUIDString2;
  }

  else
  {
    userUUID = [v221 currentUser];
    uuid3 = [userUUID uuid];
    uUIDString3 = [uuid3 UUIDString];
    v81 = v28->_userUUID;
    v28->_userUUID = uUIDString3;
  }

  spiClientIdentifier3 = [v221 spiClientIdentifier];
  v83 = objc_msgSend_copy(spiClientIdentifier3);
  homeUniqueIdentifier = v28->_homeUniqueIdentifier;
  v28->_homeUniqueIdentifier = v83;

  name3 = [v221 name];
  v86 = objc_msgSend_copy(name3);
  homeName = v28->_homeName;
  v28->_homeName = v86;

  atHomeLevel = [v221 atHomeLevel];
  v89 = 1;
  if (atHomeLevel != 2)
  {
    v89 = [v221 atHomeLevel] == 3;
  }

  v28->_isAtHome = v89;
  residentDeviceManager = [v221 residentDeviceManager];
  v28->_isResidentAvailable = [residentDeviceManager isResidentAvailable];

  residentDeviceManager2 = [v221 residentDeviceManager];
  v28->_isCurrentDeviceAvailableResident = [residentDeviceManager2 isCurrentDeviceAvailableResident];

  residentDeviceManager3 = [v221 residentDeviceManager];
  v28->_isCurrentDevicePrimaryResident = [residentDeviceManager3 isCurrentDevicePrimaryResident];

  residentDeviceManager4 = [v221 residentDeviceManager];
  v28->_isCurrentDeviceConfirmedPrimaryResident = [residentDeviceManager4 isCurrentDeviceConfirmedPrimaryResident];

  residentDeviceManager5 = [v221 residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager5 primaryResidentDevice];
  v28->_isPrimaryResidentReachable = [primaryResidentDevice isReachable];

  currentUser = [v221 currentUser];
  v28->_isRemoteAccessAllowed = [currentUser isRemoteAccessAllowed];

  v28->_isRemotelyReachable = [v228 isRemotelyReachable];
  enabledResidents = [v221 enabledResidents];
  v28->_hasEnabledResidents = [enabledResidents count] != 0;

  v28->_isResidentFirstEnabled = 1;
  v28->_isDeviceAtHome = [v221 homeLocation] == 1;
  v98 = [HMDMetricsUtilities redactedThirdPartyBundleID:bundleIdCopy];
  bundleId = v28->_bundleId;
  v28->_bundleId = v98;

  v232 = v28;
  if (v221)
  {
    characteristicsInRequest = [(HMDCharacteristicReadWriteLogEvent *)v28 characteristicsInRequest];
    obja = v221;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    v252 = 0u;
    v102 = characteristicsInRequest;
    v103 = [v102 countByEnumeratingWithState:&v249 objects:buf count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v250;
      do
      {
        for (i = 0; i != v104; ++i)
        {
          if (*v250 != v105)
          {
            objc_enumerationMutation(v102);
          }

          service = [*(*(&v249 + 1) + 8 * i) service];
          v108 = service;
          if (service)
          {
            uuid4 = [service uuid];
            v110 = [dictionary objectForKeyedSubscript:uuid4];

            if (!v110)
            {
              serviceGroups = [obja serviceGroups];
              v247[0] = MEMORY[0x277D85DD0];
              v247[1] = 3221225472;
              v247[2] = __90__HMDCharacteristicReadWriteLogEvent_serviceUUIDToServiceGroupsForCharacteristics_inHome___block_invoke;
              v247[3] = &unk_2786808D0;
              v112 = v108;
              v248 = v112;
              v113 = [serviceGroups na_firstObjectPassingTest:v247];

              if (v113)
              {
                uuid5 = [v112 uuid];
                [dictionary setObject:v113 forKeyedSubscript:uuid5];
              }
            }
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v104);
    }

    v115 = objc_msgSend_copy(dictionary);
    valuesCopy = v218;
    v27 = v221;
  }

  else
  {
    v115 = MEMORY[0x277CBEC10];
  }

  v116 = [v115 na_dictionaryByMappingValues:&__block_literal_global_477_212800];
  v215 = [v115 na_dictionaryByMappingValues:&__block_literal_global_480_212801];
  v117 = objc_msgSend_copy(v215);
  serviceUUIDToServiceGroupName = v28->_serviceUUIDToServiceGroupName;
  v28->_serviceUUIDToServiceGroupName = v117;

  v119 = objc_msgSend_copy(v116);
  serviceUUIDToServiceGroupUniqueIdentifier = v28->_serviceUUIDToServiceGroupUniqueIdentifier;
  v28->_serviceUUIDToServiceGroupUniqueIdentifier = v119;

  v121 = MEMORY[0x277CBEBF8];
  if (v27 && v220)
  {
    uuid6 = [v220 uuid];
    zones = [v27 zones];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __62__HMDCharacteristicReadWriteLogEvent_zonesForRoomUUID_inHome___block_invoke;
    v256 = &unk_2786808A8;
    v124 = uuid6;
    v257 = v124;
    v121 = [zones na_filter:buf];
  }

  v125 = [v121 na_map:&__block_literal_global_483_212802];
  accessoryZoneUniqueIdentifiers = v28->_accessoryZoneUniqueIdentifiers;
  v28->_accessoryZoneUniqueIdentifiers = v125;

  v214 = v121;
  v127 = [v121 na_map:&__block_literal_global_485];
  accessoryZoneNames = v28->_accessoryZoneNames;
  v28->_accessoryZoneNames = v127;

  accessories = [v27 accessories];
  v28->_numAccessoriesInHome = [accessories count];

  actionSets = [v27 actionSets];
  v130 = [actionSets na_filter:&__block_literal_global_488];
  v28->_numNonEmptyScenesInHome = [v130 count];

  accessoryProfiles = [v228 accessoryProfiles];
  v132 = [accessoryProfiles na_firstObjectPassingTest:&__block_literal_global_491_212803];

  v212 = v132;
  mediaRouteID = [v132 mediaRouteID];
  accessoryMediaRouteID = v28->_accessoryMediaRouteID;
  v28->_accessoryMediaRouteID = mediaRouteID;

  v135 = objc_msgSend_copy(valuesCopy);
  writtenValues = v28->_writtenValues;
  v28->_writtenValues = v135;

  v137 = [v223 findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];

  if (v137)
  {
    v28->_threadAccessory = 1;
  }

  v138 = [v223 findCharacteristicType:@"00000702-0000-1000-8000-0026BB765291" forServiceType:@"00000701-0000-1000-8000-0026BB765291"];
  value = [v138 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    value2 = [v138 value];
  }

  else
  {
    value2 = 0;
  }

  objc_storeStrong(&v28->_hapAccessoryThreadCapabilities, value2);
  if (isKindOfClass)
  {
  }

  v211 = v138;

  server2 = [hapAccessoryCopy server];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && server2)
  {
    v28->_isSentOverThread = 1;
  }

  v143 = server2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v144 = v143;
  }

  else
  {
    v144 = 0;
  }

  v145 = v144;

  if (v145)
  {
    v28->_isIPAccessoryServer = 1;
    v28->_isSeenOnBonjour = [v145 isSeenOnBonjour];
    cachedSocketInfo = [v145 cachedSocketInfo];
    v28->_ipHasCachedIP = cachedSocketInfo != 0;

    v28->_ipHasSelfAssignedIP = 0;
    v28->_ipTriedConnectingToIPv4Address = 0;
    v28->_ipTriedConnectingToIPv6Address = 0;
  }

  v209 = v145;
  homeManager = [v27 homeManager];
  reachabilityMonitor = [homeManager reachabilityMonitor];
  v28->_isNetworkAvailable = [reachabilityMonitor isReachable];

  v28->_isLocalFallback = 0;
  v28->_isLinkFallback = 0;
  residentDeviceManager6 = [v27 residentDeviceManager];
  confirmedPrimaryResidentDevice = [residentDeviceManager6 confirmedPrimaryResidentDevice];
  v28->_isPrimaryResidentAvailable = confirmedPrimaryResidentDevice != 0;

  v28->_timeIntervalSinceCurrentDeviceAsPrimary = 0.0;
  [v27 currentDeviceBecamePrimaryTime];
  if (v150 >= 1)
  {
    HMFUptime();
    v152 = v151;
    [v27 currentDeviceBecamePrimaryTime];
    v28->_timeIntervalSinceCurrentDeviceAsPrimary = v152 - v153;
  }

  v210 = v143;
  coreHAPRetryStatus = v28->_coreHAPRetryStatus;
  v28->_coreHAPRetryStatus = 0;

  coreHAPRetryError = v28->_coreHAPRetryError;
  v28->_coreHAPRetryError = 0;

  v28->_coreHAPRetryTimeAllotted = 0.0;
  v28->_timeIntervalSincePrimaryChanged = 0.0;
  [v27 primaryResidentChangedTime];
  if (v156 >= 1)
  {
    HMFUptime();
    v158 = v157;
    [v27 primaryResidentChangedTime];
    v28->_timeIntervalSincePrimaryChanged = v158 - v159;
  }

  v28->_timeIntervalSincePrimaryLost = 0.0;
  reachabilityNotificationManager = [v27 reachabilityNotificationManager];
  [reachabilityNotificationManager primaryResidentUnreachableTime];
  v162 = v161;

  if (v162 >= 1)
  {
    HMFUptime();
    v164 = v163;
    reachabilityNotificationManager2 = [v27 reachabilityNotificationManager];
    [reachabilityNotificationManager2 primaryResidentUnreachableTime];
    v28->_timeIntervalSincePrimaryLost = v164 - v166;
  }

  residentDeviceManager7 = [v27 residentDeviceManager];
  residentDevices = [residentDeviceManager7 residentDevices];
  v169 = [residentDevices count];

  if (v169)
  {
    v206 = v116;
    residentDeviceManager8 = [v27 residentDeviceManager];
    residentDevices2 = [residentDeviceManager8 residentDevices];
    v172 = [residentDevices2 count];

    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    residentDeviceManager9 = [v27 residentDeviceManager];
    residentDevices3 = [residentDeviceManager9 residentDevices];

    v175 = [residentDevices3 countByEnumeratingWithState:&v242 objects:v254 count:16];
    if (v175)
    {
      v176 = v175;
      v177 = v115;
      v178 = 0;
      v179 = 0;
      v180 = *v243;
      do
      {
        for (j = 0; j != v176; ++j)
        {
          if (*v243 != v180)
          {
            objc_enumerationMutation(residentDevices3);
          }

          v182 = *(*(&v242 + 1) + 8 * j);
          if ([v182 isEnabled])
          {
            v178 += [v182 isReachable];
            v179 += [v182 isReachableByIDS];
          }
        }

        v176 = [residentDevices3 countByEnumeratingWithState:&v242 objects:v254 count:16];
      }

      while (v176);
      v183 = 100 * v178;
      v184 = 100 * v179;
      v115 = v177;
      valuesCopy = v218;
    }

    else
    {
      v183 = 0;
      v184 = 0;
    }

    v28->_percentageOfLocalReachableResidents = v183 / v172;
    v28->_percentageOfIDSReachableResidents = v184 / v172;
    v27 = v221;
    v116 = v206;
  }

  v28->_isThreadNetworkUpInHome = [v27 threadNetworkIsUp];
  v28->_threadPreferredNetworkExistsInHome = [v27 threadPreferredNetworkExists];
  v28->_threadNetworkConnectionState = [v27 threadNetworkConnectionState];
  v28->_threadNetworkNodeType = [v27 threadNetworkNodeType];
  if (!v28->_isCurrentDevicePrimaryResident || !isHomePod())
  {
    goto LABEL_86;
  }

  v205 = v115;
  residentDeviceManager10 = [v27 residentDeviceManager];
  primaryResidentDevice2 = [residentDeviceManager10 primaryResidentDevice];

  appleMediaAccessories = [v27 appleMediaAccessories];
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_7;
  v240[3] = &unk_278688F28;
  v188 = primaryResidentDevice2;
  v241 = v188;
  v204 = appleMediaAccessories;
  v189 = [appleMediaAccessories na_firstObjectPassingTest:v240];
  if (!v189)
  {
    goto LABEL_85;
  }

  v203 = v188;
  v207 = v116;
  v230 = [v27 mediaSystemForAppleMediaAccessory:v189];
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  objb = [v27 appleMediaAccessories];
  v190 = [objb countByEnumeratingWithState:&v236 objects:v253 count:16];
  if (!v190)
  {
    goto LABEL_82;
  }

  v191 = v190;
  v192 = *v237;
  do
  {
    for (k = 0; k != v191; ++k)
    {
      if (*v237 != v192)
      {
        objc_enumerationMutation(objb);
      }

      audioDestinationControllerData = [*(*(&v236 + 1) + 8 * k) audioDestinationControllerData];
      destinationIdentifier = [audioDestinationControllerData destinationIdentifier];
      uUIDString4 = [destinationIdentifier UUIDString];

      audioDestination = [v189 audioDestination];
      identifier2 = [audioDestination identifier];
      if ([uUIDString4 isEqualToString:identifier2])
      {
      }

      else
      {
        audioDestination2 = [v230 audioDestination];
        identifier3 = [audioDestination2 identifier];
        v201 = [uUIDString4 isEqualToString:identifier3];

        v28 = v232;
        if (!v201)
        {
          goto LABEL_80;
        }
      }

      v28->_mediaSystemConfiguration |= 2uLL;
LABEL_80:
    }

    v191 = [objb countByEnumeratingWithState:&v236 objects:v253 count:16];
  }

  while (v191);
LABEL_82:

  if (v230)
  {
    v28->_mediaSystemConfiguration |= 4uLL;
  }

  valuesCopy = v218;
  v27 = v221;
  v116 = v207;
  v188 = v203;
LABEL_85:

  v115 = v205;
LABEL_86:
  if (v28->_isCurrentDevicePrimaryResident && [(HMDCharacteristicReadWriteLogEvent *)v28 _isRequestForTHSensorOnAppleMediaAccessory:v228 characteristicsInRequest:characteristicsCopy])
  {
    [(HMDCharacteristicReadWriteLogEvent *)v28 _populateTHSensorMetricsForAccessory:v228 accessoryServer:v210 characteristicsInRequest:characteristicsCopy home:v27];
    [(HMDCharacteristicReadWriteLogEvent *)v28 setIsTHSensorRequest:1];
  }

LABEL_90:
  return v28;
}

uint64_t __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) device];
  v5 = [v4 deviceAddress];
  v6 = [v5 idsIdentifier];
  v7 = [v3 hmf_isEqualToUUID:v6];

  return v7;
}

uint64_t __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

BOOL __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

id __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 spiClientIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

uint64_t __62__HMDCharacteristicReadWriteLogEvent_zonesForRoomUUID_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 roomUUIDs];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __90__HMDCharacteristicReadWriteLogEvent_serviceUUIDToServiceGroupsForCharacteristics_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceUUIDs];
  v4 = [*(a1 + 32) uuid];
  v5 = [v4 UUIDString];
  v6 = [v3 containsObject:v5];

  return v6;
}

- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)time characteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)self0 transactionId:(id)self1 isCached:(BOOL)self2 bundleId:(id)self3 userUUID:(id)self4 writtenValues:(id)self5
{
  operationCopy = operation;
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  characteristicsCopy = characteristics;
  v26 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v30) = cached;
  BYTE1(v29) = local;
  LOBYTE(v29) = write;
  v27 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:characteristicsCopy characteristics:accessoryCopy hmdAccessory:hapAccessoryCopy hapAccessory:source source:0 biomeSource:operationCopy isWriteOperation:time isTimedWrite:v29 isLocal:idCopy transactionId:v30 isCached:bundleIdCopy bundleId:dCopy userUUID:valuesCopy writtenValues:v26 readWriteLogEventManager:?];

  return v27;
}

- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)self0 transactionId:(id)self1 isCached:(BOOL)self2 bundleId:(id)self3 userUUID:(id)self4 writtenValues:(id)self5
{
  operationCopy = operation;
  v18 = MEMORY[0x277D17DC0];
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  characteristicsCopy = characteristics;
  [v18 currentTime];
  v27 = v26;
  v28 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v32) = cached;
  LOWORD(v31) = __PAIR16__(local, write);
  v29 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:characteristicsCopy characteristics:accessoryCopy hmdAccessory:hapAccessoryCopy hapAccessory:source source:biomeSource biomeSource:operationCopy isWriteOperation:v27 isTimedWrite:v31 isLocal:idCopy transactionId:v32 isCached:bundleIdCopy bundleId:dCopy userUUID:valuesCopy writtenValues:v28 readWriteLogEventManager:?];

  return v29;
}

- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)characteristics hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isWriteOperation:(BOOL)operation isTimedWrite:(BOOL)write isLocal:(BOOL)local transactionId:(id)self0 isCached:(BOOL)self1 bundleId:(id)self2 userUUID:(id)self3 writtenValues:(id)self4
{
  operationCopy = operation;
  v17 = MEMORY[0x277D17DC0];
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  characteristicsCopy = characteristics;
  [v17 currentTime];
  v26 = v25;
  v27 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v31) = cached;
  BYTE1(v30) = local;
  LOBYTE(v30) = write;
  v28 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:characteristicsCopy characteristics:accessoryCopy hmdAccessory:hapAccessoryCopy hapAccessory:source source:0 biomeSource:operationCopy isWriteOperation:v26 isTimedWrite:v30 isLocal:idCopy transactionId:v31 isCached:bundleIdCopy bundleId:dCopy userUUID:valuesCopy writtenValues:v27 readWriteLogEventManager:?];

  return v28;
}

+ (id)eventWithStartTime:(double)time characteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)self0 bundleId:(id)self1 userUUID:(id)self2 writtenValues:(id)self3
{
  timedWriteCopy = timedWrite;
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  writeCopy = write;
  LOBYTE(v29) = 0;
  LOBYTE(v28) = local;
  v26 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithStartTime:writeCopy characteristics:accessoryCopy hmdAccessory:hapAccessoryCopy hapAccessory:source source:1 isWriteOperation:timedWriteCopy isTimedWrite:time isLocal:v28 transactionId:idCopy isCached:v29 bundleId:bundleIdCopy userUUID:dCopy writtenValues:valuesCopy];

  return v26;
}

+ (id)eventWithCharacteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source biomeSource:(unint64_t)biomeSource isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)self0 bundleId:(id)self1 userUUID:(id)self2 writtenValues:(id)self3
{
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  writeCopy = write;
  LOBYTE(v27) = 0;
  BYTE1(v26) = local;
  LOBYTE(v26) = timedWrite;
  v24 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithCharacteristics:writeCopy hmdAccessory:accessoryCopy hapAccessory:hapAccessoryCopy source:source biomeSource:biomeSource isWriteOperation:1 isTimedWrite:v26 isLocal:idCopy transactionId:v27 isCached:bundleIdCopy bundleId:dCopy userUUID:valuesCopy writtenValues:?];

  return v24;
}

+ (id)eventWithCharacteristicsToWrite:(id)write hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isTimedWrite:(BOOL)timedWrite isLocal:(BOOL)local transactionId:(id)id bundleId:(id)self0 userUUID:(id)self1 writtenValues:(id)self2
{
  timedWriteCopy = timedWrite;
  valuesCopy = values;
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  writeCopy = write;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = local;
  v24 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithCharacteristics:writeCopy hmdAccessory:accessoryCopy hapAccessory:hapAccessoryCopy source:source isWriteOperation:1 isTimedWrite:timedWriteCopy isLocal:v26 transactionId:idCopy isCached:v27 bundleId:bundleIdCopy userUUID:dCopy writtenValues:valuesCopy];

  return v24;
}

+ (id)eventWithCharacteristicsToRead:(id)read hmdAccessory:(id)accessory hapAccessory:(id)hapAccessory source:(unint64_t)source isLocal:(BOOL)local transactionId:(id)id isCached:(BOOL)cached bundleId:(id)self0 userUUID:(id)self1
{
  dCopy = d;
  bundleIdCopy = bundleId;
  idCopy = id;
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  readCopy = read;
  v23 = [HMDCharacteristicReadWriteLogEvent alloc];
  LOBYTE(v27) = cached;
  LOBYTE(v26) = local;
  v24 = [(HMDCharacteristicReadWriteLogEvent *)v23 initWithCharacteristics:readCopy hmdAccessory:accessoryCopy hapAccessory:hapAccessoryCopy source:source isWriteOperation:0 isTimedWrite:0 isLocal:v26 transactionId:idCopy isCached:v27 bundleId:bundleIdCopy userUUID:dCopy writtenValues:MEMORY[0x277CBEBF8]];

  return v24;
}

@end