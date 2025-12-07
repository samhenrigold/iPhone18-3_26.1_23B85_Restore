@interface TAFilterSingleVisit
+ (BOOL)shouldDetectWithStore:(id)store filterSingleVisitSettings:(id)settings;
+ (id)filterSuspiciousDeviceWithStore:(id)store singleVisitSettings:(id)settings andAppendOutgoingRequestsTo:(id)to;
+ (unint64_t)getSingleVisitDetectionTypeForLOIType:(unint64_t)type;
+ (unint64_t)getSingleVisitNotificationImmediacyTypeForLOIType:(unint64_t)type singleVisitSettings:(id)settings;
@end

@implementation TAFilterSingleVisit

+ (id)filterSuspiciousDeviceWithStore:(id)store singleVisitSettings:(id)settings andAppendOutgoingRequestsTo:(id)to
{
  v144 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  settingsCopy = settings;
  v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v124 = storeCopy;
  if ([TAFilterSingleVisit shouldDetectWithStore:storeCopy filterSingleVisitSettings:settingsCopy])
  {
    if (!settingsCopy)
    {
      settingsCopy = [[TAFilterSingleVisitSettings alloc] initWithDefaults];
    }

    visitState = [storeCopy visitState];
    visitSnapshotBuffer = [visitState visitSnapshotBuffer];
    lastObject = [visitSnapshotBuffer lastObject];

    loiType = [lastObject loiType];
    representativeVisit = [lastObject representativeVisit];
    v12 = [TALocationLite alloc];
    arrivalDate = [representativeVisit arrivalDate];
    [representativeVisit coordinate];
    v15 = v14;
    [representativeVisit coordinate];
    v17 = v16;
    v106 = representativeVisit;
    [representativeVisit horizontalAccuracy];
    v108 = [(TALocationLite *)v12 initWithTimestamp:arrivalDate latitude:v15 longitude:v17 horizontalAccuracy:v18];

    visitState2 = [v124 visitState];
    interVisitMetricSnapshotBuffer = [visitState2 interVisitMetricSnapshotBuffer];
    lastObject2 = [interVisitMetricSnapshotBuffer lastObject];

    visitsSettings = [(TAFilterSingleVisitSettings *)settingsCopy visitsSettings];
    v23 = [TAFilterVisits getEntryAddressSetInTAVisitSnapshot:lastObject usingSettings:visitsSettings];

    v24 = MEMORY[0x277CBEB98];
    v115 = lastObject2;
    accumulatedDeviceMetrics = [lastObject2 accumulatedDeviceMetrics];
    allKeys = [accumulatedDeviceMetrics allKeys];
    v27 = [v24 setWithArray:allKeys];

    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v28 singleVisitSettings:v23 andAppendOutgoingRequestsTo:?];
    }

    v29 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v29 singleVisitSettings:v27 andAppendOutgoingRequestsTo:?];
    }

    v104 = v27;
    v105 = v23;
    v30 = [TAFilterVisits getIntersectionOfFirstSet:v23 andSecondSet:v27];
    v31 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      *buf = 134349056;
      v130 = [v30 count];
      _os_log_impl(&dword_26F2E2000, v32, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit identified %{public}lu suspicious candidates ...", buf, 0xCu);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v33 = v30;
    v123 = [v33 countByEnumeratingWithState:&v125 objects:v143 count:16];
    if (v123)
    {
      v122 = *v126;
      v116 = settingsCopy;
      v119 = lastObject;
      v114 = v33;
      do
      {
        for (i = 0; i != v123; ++i)
        {
          if (*v126 != v122)
          {
            objc_enumerationMutation(v33);
          }

          v35 = *(*(&v125 + 1) + 8 * i);
          latestUtAdvertisements = [lastObject latestUtAdvertisements];
          v37 = [latestUtAdvertisements objectForKey:v35];
          getDate = [v37 getDate];

          clock = [v124 clock];
          [clock timeIntervalSinceDate:getDate];
          v41 = v40;
          visitsSettings2 = [(TAFilterSingleVisitSettings *)settingsCopy visitsSettings];
          [visitsSettings2 maxSuspiciousDuration];
          v44 = v43;

          if (v41 < v44)
          {
            earliestUtAdvertisements = [lastObject earliestUtAdvertisements];
            v46 = [earliestUtAdvertisements objectForKey:v35];

            latestUtAdvertisements2 = [lastObject latestUtAdvertisements];
            v48 = [latestUtAdvertisements2 objectForKey:v35];

            v121 = v48;
            if (v46 && v48)
            {
              getDate2 = [v48 getDate];
              v120 = v46;
              getDate3 = [v46 getDate];
              [getDate2 timeIntervalSinceDate:getDate3];
              v52 = v51;
              visitsSettings3 = [(TAFilterSingleVisitSettings *)settingsCopy visitsSettings];
              [visitsSettings3 minObservationInterval];
              v55 = v54;

              accumulatedDeviceMetrics2 = [v115 accumulatedDeviceMetrics];
              v57 = [accumulatedDeviceMetrics2 objectForKey:v35];

              [v57 distance];
              v59 = v58;
              [(TAFilterSingleVisitSettings *)settingsCopy thresholdOfSignificantDistance];
              v61 = v60;
              [v57 duration];
              v63 = v62;
              [(TAFilterSingleVisitSettings *)settingsCopy thresholdOfSignificantDuration];
              v65 = v64;
              segmentSpeedExceedsLimit = [v57 segmentSpeedExceedsLimit];
              v67 = segmentSpeedExceedsLimit;
              if (v59 <= v61 || v63 <= v65 || (segmentSpeedExceedsLimit & 1) != 0 || v52 <= v55)
              {
                v81 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = v67 ^ 1;
                  v83 = v81;
                  hexString = [v35 hexString];
                  *buf = 138478851;
                  v130 = hexString;
                  v131 = 1026;
                  v132 = v59 > v61;
                  settingsCopy = v116;
                  v133 = 1026;
                  v134 = v63 > v65;
                  v135 = 1026;
                  v136 = v82;
                  v137 = 1026;
                  v138 = v52 > v55;
                  lastObject = v119;
                  _os_log_impl(&dword_26F2E2000, v83, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit not adding %{private}@ because satisfy-length=%{public}d satisfy-duration=%{public}d satisfy-speed=%{public}d  satisfy-min-observation-duration=%{public}d", buf, 0x24u);
                }
              }

              else
              {
                latestUtAdvertisements3 = [lastObject latestUtAdvertisements];
                v69 = [latestUtAdvertisements3 objectForKey:v35];

                sampledObservedLocations = [v57 sampledObservedLocations];
                v113 = [sampledObservedLocations arrayByAddingObject:v108];

                visitState3 = [v124 visitState];
                visitSnapshotBuffer2 = [visitState3 visitSnapshotBuffer];
                v73 = [visitSnapshotBuffer2 count] - 2;

                visitState4 = [v124 visitState];
                visitSnapshotBuffer3 = [visitState4 visitSnapshotBuffer];
                v76 = [visitSnapshotBuffer3 getObjectAtIndex:v73];

                if (v76)
                {
                  visitState5 = [v124 visitState];
                  visitSnapshotBuffer4 = [visitState5 visitSnapshotBuffer];
                  v79 = [visitSnapshotBuffer4 getObjectAtIndex:v73];
                  loiType2 = [v79 loiType];
                }

                else
                {
                  loiType2 = 0;
                }

                v139[0] = @"DetectionAlgorithm";
                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v140[0] = v86;
                v139[1] = @"CurrentVisit";
                representativeVisit2 = [v119 representativeVisit];
                descriptionDictionary = [representativeVisit2 descriptionDictionary];
                v140[1] = descriptionDictionary;
                v139[2] = @"LastObservation";
                descriptionDictionary2 = [v69 descriptionDictionary];
                v140[2] = descriptionDictionary2;
                v139[3] = @"LengthTraveled";
                v117 = v69;
                v90 = MEMORY[0x277CCABB0];
                [v57 distance];
                v91 = [v90 numberWithDouble:?];
                v140[3] = v91;
                v139[4] = @"Duration";
                v92 = MEMORY[0x277CCABB0];
                [v57 duration];
                v93 = [v92 numberWithDouble:?];
                v140[4] = v93;
                v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:5];

                v118 = v57;
                v94 = [TAFilterSingleVisit getSingleVisitDetectionTypeForLOIType:loiType];
                v95 = [TAFilterSingleVisit getSingleVisitNotificationImmediacyTypeForLOIType:loiType singleVisitSettings:v116];
                v112 = -[TASingleVisitDetectionMetrics initWithInterVisitMetrics:loiType:previousVisitType:]([TASingleVisitDetectionMetrics alloc], "initWithInterVisitMetrics:loiType:previousVisitType:", v118, [v119 loiType], loiType2);
                v96 = [[TAMetricsDetection alloc] initWithDetectionType:v94 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:v112 latestAdvertisement:v117];
                v97 = [TASuspiciousDevice alloc];
                clock2 = [v124 clock];
                deviceRecord = [v124 deviceRecord];
                v100 = [deviceRecord getAccessoryInfo:v35];
                v101 = v94;
                v57 = v118;
                v102 = [(TASuspiciousDevice *)v97 initWithLatestAdv:v117 detectionSummary:v110 date:clock2 locHistory:v113 detectionMetrics:v96 detectionType:v101 immediacyType:v95 accessoryInfo:v100 forceSurfaceReason:1];
                [v109 addObject:v102];

                settingsCopy = v116;
                lastObject = v119;
              }

              v33 = v114;
              v46 = v120;
            }

            else
            {
              v80 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
              {
                [(TAFilterSingleVisit *)v141 filterSuspiciousDeviceWithStore:v80 singleVisitSettings:v35 andAppendOutgoingRequestsTo:&v142];
              }
            }
          }
        }

        v123 = [v33 countByEnumeratingWithState:&v125 objects:v143 count:16];
      }

      while (v123);
    }
  }

  return v109;
}

+ (unint64_t)getSingleVisitDetectionTypeForLOIType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_26F331690[type];
  }
}

+ (unint64_t)getSingleVisitNotificationImmediacyTypeForLOIType:(unint64_t)type singleVisitSettings:(id)settings
{
  settingsCopy = settings;
  v6 = settingsCopy;
  if (type)
  {
    if (type == 1)
    {
      type = 2;
    }

    else if (type == 2)
    {
      type = [settingsCopy arrivingWorkImmediacyType];
    }

    else
    {
      type = 0;
    }
  }

  return type;
}

+ (BOOL)shouldDetectWithStore:(id)store filterSingleVisitSettings:(id)settings
{
  v36 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  settingsCopy = settings;
  if (!storeCopy)
  {
    goto LABEL_16;
  }

  visitState = [storeCopy visitState];
  visitSnapshotBuffer = [visitState visitSnapshotBuffer];
  v9 = [visitSnapshotBuffer count];

  if (!v9)
  {
    v28 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v32 = 68289026;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v29 = "{msg%{public}.0s:#TAFilterSingleVisit no snapshots}";
LABEL_15:
    _os_log_impl(&dword_26F2E2000, v28, OS_LOG_TYPE_DEBUG, v29, &v32, 0x12u);
    goto LABEL_16;
  }

  visitState2 = [storeCopy visitState];
  visitSnapshotBuffer2 = [visitState2 visitSnapshotBuffer];
  lastObject = [visitSnapshotBuffer2 lastObject];
  loiType = [lastObject loiType];

  enabledLoiTypes = [settingsCopy enabledLoiTypes];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:loiType];
  LOBYTE(lastObject) = [enabledLoiTypes containsObject:v15];

  if ((lastObject & 1) == 0)
  {
    v30 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAFilterSingleVisit *)v30 shouldDetectWithStore:loiType filterSingleVisitSettings:settingsCopy];
    }

    goto LABEL_16;
  }

  visitState3 = [storeCopy visitState];
  interVisitMetricSnapshotBuffer = [visitState3 interVisitMetricSnapshotBuffer];
  v18 = [interVisitMetricSnapshotBuffer count];

  if (!v18)
  {
    v28 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v32 = 68289026;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v29 = "{msg%{public}.0s:#TAFilterSingleVisit no intervisit snapshots}";
    goto LABEL_15;
  }

  visitState4 = [storeCopy visitState];
  interVisitMetricSnapshotBuffer2 = [visitState4 interVisitMetricSnapshotBuffer];
  lastObject2 = [interVisitMetricSnapshotBuffer2 lastObject];
  isClosed = [lastObject2 isClosed];

  if ((isClosed & 1) == 0)
  {
    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v32 = 68289026;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v29 = "{msg%{public}.0s:#TAFilterSingleVisit last snapshot not closed}";
      goto LABEL_15;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  visitState5 = [storeCopy visitState];
  visitSnapshotBuffer3 = [visitState5 visitSnapshotBuffer];
  lastObject3 = [visitSnapshotBuffer3 lastObject];
  isClosed2 = [lastObject3 isClosed];

  v27 = isClosed2 ^ 1;
LABEL_17:

  return v27;
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 singleVisitSettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(v10) = 134349056;
  *(&v10 + 4) = [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterSingleVisit observed %{public}lu devices in current visit", v6, v7, v8, v9, v10, DWORD2(v10));
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 singleVisitSettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(v10) = 134349056;
  *(&v10 + 4) = [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterSingleVisit observed %{public}lu devices before the current visit", v6, v7, v8, v9, v10, DWORD2(v10));
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a3 singleVisitSettings:(void *)a4 andAppendOutgoingRequestsTo:.cold.3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_fault_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_FAULT, "#TAFilterSingleVisit some advertisements not present for %{private}@", a1, 0xCu);
}

+ (void)shouldDetectWithStore:(void *)a3 filterSingleVisitSettings:.cold.1(void *a1, unint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = TALocationOfInterestTypeToString(a2);
  v7 = [a3 enabledLoiTypesToString];
  v8 = 138478083;
  v9 = v6;
  v10 = 2113;
  v11 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterSingleVisit LOI type %{private}@ is not in the enabled list %{private}@", &v8, 0x16u);
}

@end