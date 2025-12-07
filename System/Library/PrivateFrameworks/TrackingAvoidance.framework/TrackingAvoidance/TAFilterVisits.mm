@interface TAFilterVisits
+ (BOOL)sensitiveVisitsTooCloseBetweenFromLOIType:(unint64_t)type toLOIType:(unint64_t)iType distance:(double)distance settings:(id)settings;
+ (BOOL)shouldDetectWithStore:(id)store settings:(id)settings;
+ (id)filterSuspiciousDeviceWithStore:(id)store andAppendOutgoingRequestsTo:(id)to;
+ (id)filterSuspiciousDeviceWithStore:(id)store settings:(id)settings andAppendOutgoingRequestsTo:(id)to;
+ (id)getAddressSetInTAVisitSnapshot:(id)snapshot;
+ (id)getEntryAddressSetInTAVisitSnapshot:(id)snapshot usingSettings:(id)settings;
+ (id)getExitAddressSetInTAVisitSnapshot:(id)snapshot usingSettings:(id)settings;
+ (id)getIntersectionOfFirstSet:(id)set andSecondSet:(id)secondSet;
+ (id)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(id)snapshot toVisitSnapshot:(id)visitSnapshot settings:(id)settings currentClockTime:(id)time skipFreshObservationCheck:(BOOL)check;
+ (unint64_t)identifyDetectionTypeWithStore:(id)store settings:(id)settings;
@end

@implementation TAFilterVisits

+ (id)filterSuspiciousDeviceWithStore:(id)store andAppendOutgoingRequestsTo:(id)to
{
  toCopy = to;
  storeCopy = store;
  initWithDefaults = [[TAFilterVisitsSettings alloc] initWithDefaults];
  v8 = [TAFilterVisits filterSuspiciousDeviceWithStore:storeCopy settings:initWithDefaults andAppendOutgoingRequestsTo:toCopy];

  return v8;
}

+ (id)filterSuspiciousDeviceWithStore:(id)store settings:(id)settings andAppendOutgoingRequestsTo:(id)to
{
  v190 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  settingsCopy = settings;
  toCopy = to;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!settingsCopy)
  {
    settingsCopy = [[TAFilterVisitsSettings alloc] initWithDefaults];
  }

  if ([TAFilterVisits shouldDetectWithStore:storeCopy settings:settingsCopy])
  {
    v148 = toCopy;
    v167 = v10;
    visitState = [storeCopy visitState];
    visitSnapshotBuffer = [visitState visitSnapshotBuffer];
    lastObject = [visitSnapshotBuffer lastObject];

    visitState2 = [storeCopy visitState];
    visitSnapshotBuffer2 = [visitState2 visitSnapshotBuffer];
    v16 = storeCopy;
    v17 = [visitSnapshotBuffer2 count] - 2;

    visitState3 = [storeCopy visitState];
    visitSnapshotBuffer3 = [visitState3 visitSnapshotBuffer];
    bufferCopy = [visitSnapshotBuffer3 bufferCopy];
    v21 = [bufferCopy objectAtIndex:v17];

    v22 = lastObject;
    representativeVisit = [v21 representativeVisit];
    representativeVisit2 = [lastObject representativeVisit];
    v25 = [TALocationLite alloc];
    departureDate = [representativeVisit departureDate];
    [representativeVisit coordinate];
    v28 = v27;
    [representativeVisit coordinate];
    v30 = v29;
    v147 = representativeVisit;
    [representativeVisit horizontalAccuracy];
    v32 = [(TALocationLite *)v25 initWithTimestamp:departureDate latitude:v28 longitude:v30 horizontalAccuracy:v31];

    v33 = [TALocationLite alloc];
    arrivalDate = [representativeVisit2 arrivalDate];
    [representativeVisit2 coordinate];
    v36 = v35;
    [representativeVisit2 coordinate];
    v38 = v37;
    v146 = representativeVisit2;
    [representativeVisit2 horizontalAccuracy];
    v40 = [(TALocationLite *)v33 initWithTimestamp:arrivalDate latitude:v36 longitude:v38 horizontalAccuracy:v39];

    loiType = [v21 loiType];
    loiType2 = [v22 loiType];
    v162 = v40;
    v163 = v32;
    [(TALocationLite *)v32 distanceFromLocation:v40];
    v168 = v16;
    if ([TAFilterVisits sensitiveVisitsTooCloseBetweenFromLOIType:loiType toLOIType:loiType2 distance:settingsCopy settings:?])
    {
      v43 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v188 = 2082;
        v189 = "";
        _os_log_impl(&dword_26F2E2000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterVisit two sensitive visits too close, abort detection}", &buf, 0x12u);
      }

      v10 = v167;
      v44 = v167;
      storeCopy = v16;
      toCopy = v148;
    }

    else
    {
      clock = [v16 clock];
      v151 = v22;
      v47 = [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v21 toVisitSnapshot:v22 settings:settingsCopy currentClockTime:clock];

      v165 = objc_alloc_init(MEMORY[0x277CBEB58]);
      visitState4 = [v16 visitState];
      visitSnapshotBuffer4 = [visitState4 visitSnapshotBuffer];
      v50 = [visitSnapshotBuffer4 count];

      v150 = settingsCopy;
      v152 = v21;
      if (v50 < 3)
      {
        v149 = 0;
      }

      else
      {
        visitState5 = [v16 visitState];
        visitSnapshotBuffer5 = [visitState5 visitSnapshotBuffer];
        v53 = [visitSnapshotBuffer5 count] - 3;

        visitState6 = [v16 visitState];
        visitSnapshotBuffer6 = [visitState6 visitSnapshotBuffer];
        bufferCopy2 = [visitSnapshotBuffer6 bufferCopy];
        v57 = [bufferCopy2 objectAtIndex:v53];

        representativeVisit3 = [v57 representativeVisit];
        v59 = [TALocationLite alloc];
        departureDate2 = [representativeVisit3 departureDate];
        [representativeVisit3 coordinate];
        v62 = v61;
        [representativeVisit3 coordinate];
        v64 = v63;
        [representativeVisit3 horizontalAccuracy];
        v66 = [(TALocationLite *)v59 initWithTimestamp:departureDate2 latitude:v62 longitude:v64 horizontalAccuracy:v65];

        v149 = v57;
        loiType3 = [v57 loiType];
        loiType4 = [v21 loiType];
        [(TALocationLite *)v66 distanceFromLocation:v32];
        v69 = loiType4;
        settingsCopy = v150;
        if (![TAFilterVisits sensitiveVisitsTooCloseBetweenFromLOIType:loiType3 toLOIType:v69 distance:v150 settings:?])
        {
          clock2 = [v168 clock];
          v71 = [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v149 toVisitSnapshot:v21 settings:v150 currentClockTime:clock2 skipFreshObservationCheck:1];

          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v72 = v71;
          v73 = [v72 countByEnumeratingWithState:&v177 objects:v186 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v178;
            do
            {
              for (i = 0; i != v74; ++i)
              {
                if (*v178 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                address = [*(*(&v177 + 1) + 8 * i) address];
                [v165 addObject:address];
              }

              v74 = [v72 countByEnumeratingWithState:&v177 objects:v186 count:16];
            }

            while (v74);
          }

          settingsCopy = v150;
        }
      }

      v78 = [TAVisitDetectionMetrics alloc];
      [v162 distanceFromLocation:v32];
      v80 = v79;
      [TALocationLite residualDistanceFromLocation:v32 toLocation:v162 nSigma:[(TAFilterVisitsSettings *)settingsCopy minNSigmaBetweenVisits]];
      v166 = [(TAVisitDetectionMetrics *)v78 initWithDistance:[(TAFilterVisitsSettings *)settingsCopy minNSigmaBetweenVisits] residualDistance:v80 nSigma:v81];
      storeCopy = v168;
      v82 = [TAFilterVisits identifyDetectionTypeWithStore:v168 settings:settingsCopy];
      v159 = v82 == 5;
      v160 = v82;
      v83 = 1;
      if (v82 == 5)
      {
        v83 = 2;
      }

      v158 = v83;
      v184[0] = @"DetectionAlgorithm";
      v84 = 0x279DD1000uLL;
      v85 = [TAMetricsDetection convertTADetectionTypeToString:v82];
      v185[0] = v85;
      v184[1] = @"LastVisit";
      representativeVisit4 = [v152 representativeVisit];
      descriptionDictionary = [representativeVisit4 descriptionDictionary];
      v185[1] = descriptionDictionary;
      v184[2] = @"CurrentVisit";
      representativeVisit5 = [v151 representativeVisit];
      descriptionDictionary2 = [representativeVisit5 descriptionDictionary];
      v185[2] = descriptionDictionary2;
      v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:3];

      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      obj = v47;
      v164 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
      if (v164)
      {
        v157 = *v174;
        do
        {
          v90 = 0;
          do
          {
            if (*v174 != v157)
            {
              objc_enumerationMutation(obj);
            }

            v171 = v90;
            v91 = *(*(&v173 + 1) + 8 * v90);
            v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v92 addObject:v163];
            visitState7 = [storeCopy visitState];
            interVisitMetricSnapshotBuffer = [visitState7 interVisitMetricSnapshotBuffer];
            lastObject2 = [interVisitMetricSnapshotBuffer lastObject];

            if (lastObject2)
            {
              accumulatedDeviceMetrics = [lastObject2 accumulatedDeviceMetrics];
              address2 = [v91 address];
              v98 = [accumulatedDeviceMetrics objectForKey:address2];

              if (v98)
              {
                sampledObservedLocations = [v98 sampledObservedLocations];
                [v92 addObjectsFromArray:sampledObservedLocations];
              }
            }

            v170 = lastObject2;
            [v92 addObject:v162];
            v100 = [objc_alloc(*(v84 + 1400)) initWithDetectionType:v160 visitDetectionMetrics:v166 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v91];
            v101 = [TASuspiciousDevice alloc];
            clock3 = [storeCopy clock];
            v172 = v92;
            v103 = [v92 copy];
            deviceRecord = [storeCopy deviceRecord];
            [v91 address];
            v106 = v105 = v84;
            v107 = [deviceRecord getAccessoryInfo:v106];
            v169 = v100;
            v108 = [(TASuspiciousDevice *)v101 initWithLatestAdv:v91 detectionSummary:v161 date:clock3 locHistory:v103 detectionMetrics:v100 detectionType:v160 immediacyType:v158 accessoryInfo:v107 forceSurfaceReason:v159];
            [v167 addObject:v108];

            address3 = [v91 address];
            LODWORD(clock3) = [v165 containsObject:address3];

            if (clock3)
            {
              v181[0] = @"DetectionAlgorithm";
              v110 = [*(v105 + 1400) convertTADetectionTypeToString:16];
              v182[0] = v110;
              v181[1] = @"LastVisit";
              representativeVisit6 = [v152 representativeVisit];
              descriptionDictionary3 = [representativeVisit6 descriptionDictionary];
              v182[1] = descriptionDictionary3;
              v181[2] = @"CurrentVisit";
              representativeVisit7 = [v151 representativeVisit];
              descriptionDictionary4 = [representativeVisit7 descriptionDictionary];
              v182[2] = descriptionDictionary4;
              v181[3] = @"PastTwoVisit";
              v115 = v105;
              if (v149)
              {
                representativeVisit8 = [v149 representativeVisit];
                descriptionDictionary5 = [representativeVisit8 descriptionDictionary];
                v116 = descriptionDictionary5;
              }

              else
              {
                v116 = &stru_287F632C0;
              }

              v182[3] = v116;
              v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:4];
              if (v149)
              {
              }

              v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
              visitState8 = [v168 visitState];
              interVisitMetricSnapshotBuffer2 = [visitState8 interVisitMetricSnapshotBuffer];
              v121 = [interVisitMetricSnapshotBuffer2 count];

              if (v121 < 2)
              {
                v133 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  buf = 68289026;
                  v188 = 2082;
                  v189 = "";
                  _os_log_impl(&dword_26F2E2000, v133, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterVisits missing intervisit metrics}", &buf, 0x12u);
                }
              }

              else
              {
                visitState9 = [v168 visitState];
                interVisitMetricSnapshotBuffer3 = [visitState9 interVisitMetricSnapshotBuffer];
                v124 = [interVisitMetricSnapshotBuffer3 count] - 2;

                visitState10 = [v168 visitState];
                interVisitMetricSnapshotBuffer4 = [visitState10 interVisitMetricSnapshotBuffer];
                bufferCopy3 = [interVisitMetricSnapshotBuffer4 bufferCopy];
                v128 = [bufferCopy3 objectAtIndex:v124];

                v115 = 0x279DD1000;
                if (v128)
                {
                  accumulatedDeviceMetrics2 = [v128 accumulatedDeviceMetrics];
                  address4 = [v91 address];
                  v131 = [accumulatedDeviceMetrics2 objectForKey:address4];

                  if (v131)
                  {
                    sampledObservedLocations2 = [v131 sampledObservedLocations];
                    [v118 addObjectsFromArray:sampledObservedLocations2];
                  }
                }
              }

              [v118 addObjectsFromArray:v172];
              v134 = [objc_alloc(*(v115 + 1400)) initWithDetectionType:16 visitDetectionMetrics:v166 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v91];
              v135 = [TASuspiciousDevice alloc];
              clock4 = [v168 clock];
              v137 = [v118 copy];
              threeVisitImmediacyType = [(TAFilterVisitsSettings *)v150 threeVisitImmediacyType];
              [v168 deviceRecord];
              v140 = v139 = v118;
              address5 = [v91 address];
              v142 = [v140 getAccessoryInfo:address5];
              v143 = [(TASuspiciousDevice *)v135 initWithLatestAdv:v91 detectionSummary:v156 date:clock4 locHistory:v137 detectionMetrics:v134 detectionType:16 immediacyType:threeVisitImmediacyType accessoryInfo:v142 forceSurfaceReason:0];
              [v167 addObject:v143];

              storeCopy = v168;
              v117 = v172;
            }

            else
            {
              storeCopy = v168;
              v117 = v172;
            }

            v90 = v171 + 1;
            v84 = 0x279DD1000;
          }

          while (v164 != v171 + 1);
          v164 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
        }

        while (v164);
      }

      v10 = v167;
      v144 = v167;

      toCopy = v148;
      settingsCopy = v150;
      v22 = v151;
      v21 = v152;
    }
  }

  else
  {
    v45 = v10;
  }

  return v10;
}

+ (id)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(id)snapshot toVisitSnapshot:(id)visitSnapshot settings:(id)settings currentClockTime:(id)time skipFreshObservationCheck:(BOOL)check
{
  v126 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  visitSnapshotCopy = visitSnapshot;
  settingsCopy = settings;
  timeCopy = time;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = snapshotCopy;
  representativeVisit = [snapshotCopy representativeVisit];
  representativeVisit2 = [visitSnapshotCopy representativeVisit];
  v16 = [TALocationLite alloc];
  departureDate = [representativeVisit departureDate];
  [representativeVisit coordinate];
  v19 = v18;
  [representativeVisit coordinate];
  v21 = v20;
  [representativeVisit horizontalAccuracy];
  v93 = [(TALocationLite *)v16 initWithTimestamp:departureDate latitude:v19 longitude:v21 horizontalAccuracy:v22];

  v23 = [TALocationLite alloc];
  arrivalDate = [representativeVisit2 arrivalDate];
  [representativeVisit2 coordinate];
  v26 = v25;
  [representativeVisit2 coordinate];
  v28 = v27;
  v92 = representativeVisit2;
  [representativeVisit2 horizontalAccuracy];
  v94 = [(TALocationLite *)v23 initWithTimestamp:arrivalDate latitude:v26 longitude:v28 horizontalAccuracy:v29];

  checkCopy = check;
  if (!check && ([visitSnapshotCopy latestLocationInsideVisit] & 1) == 0)
  {
    v85 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2E2000, v85, OS_LOG_TYPE_DEFAULT, "The latest location infers that we may be leaving the current visit; suppress visit-based detection logic", buf, 2u);
    }

    v82 = [v13 copy];
    goto LABEL_38;
  }

  minNSigmaBetweenVisits = [settingsCopy minNSigmaBetweenVisits];
  [settingsCopy minInterVisitDistance];
  v31 = v93;
  if ([TALocationLite distanceFromLocation:v93 toLocation:v94 satisfyNSigma:minNSigmaBetweenVisits satisfyMinDistance:?])
  {
    if (![TAFilterVisits isReasonableSpeedOfTravelFrom:v93 to:v94])
    {
      v86 = TAStatusLog;
      v84 = representativeVisit2;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v86, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits visit-to-visit speed exceeds threshold, not attempting to perform visit detection", buf, 2u);
      }

      v82 = [v13 copy];
      goto LABEL_42;
    }

    v89 = representativeVisit;
    v96 = v13;
    v32 = [TAFilterVisits getEntryAddressSetInTAVisitSnapshot:visitSnapshotCopy usingSettings:settingsCopy];
    v33 = [TAFilterVisits getExitAddressSetInTAVisitSnapshot:v104 usingSettings:settingsCopy];
    [settingsCopy exitDisplayOnBudget];
    [v104 getDurationOfVisitExitConsideredWithDisplayOnBudget:?];
    v35 = v34;
    getEntryIntervalEvaluatedUntil = [visitSnapshotCopy getEntryIntervalEvaluatedUntil];
    v36 = TAStatusLog;
    v37 = &off_26F331000;
    v99 = visitSnapshotCopy;
    v91 = v32;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x277CBEAA8];
      loga = v36;
      v39 = [v38 alloc];
      representativeVisit3 = [v104 representativeVisit];
      departureDate2 = [representativeVisit3 departureDate];
      obja = [v39 initWithTimeInterval:departureDate2 sinceDate:-v35];
      getDateString = [obja getDateString];
      representativeVisit4 = [v104 representativeVisit];
      departureDate3 = [representativeVisit4 departureDate];
      getDateString2 = [departureDate3 getDateString];
      representativeVisit5 = [v99 representativeVisit];
      arrivalDate2 = [representativeVisit5 arrivalDate];
      getDateString3 = [arrivalDate2 getDateString];
      getDateString4 = [getEntryIntervalEvaluatedUntil getDateString];
      *buf = 138478595;
      v120 = getDateString;
      v121 = 2113;
      *v122 = getDateString2;
      *&v122[8] = 2113;
      v123 = getDateString3;
      v124 = 2113;
      v125 = getDateString4;
      _os_log_impl(&dword_26F2E2000, loga, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits past visit window of consideration %{private}@/%{private}@ and current window of consideration %{private}@/%{private}@", buf, 0x2Au);

      v37 = &off_26F331000;
      visitSnapshotCopy = v99;

      v32 = v91;
    }

    v88 = v33;
    [TAFilterVisits getIntersectionOfFirstSet:v32 andSecondSet:v33];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v115 = 0u;
    log = [obj countByEnumeratingWithState:&v112 objects:v118 count:16];
    if (log)
    {
      v47 = *v113;
      v95 = *(v37 + 213);
      v98 = *v113;
      do
      {
        v48 = 0;
        do
        {
          if (*v113 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v112 + 1) + 8 * v48);
          latestUtAdvertisements = [visitSnapshotCopy latestUtAdvertisements];
          v51 = [latestUtAdvertisements objectForKey:v49];

          getDate = [v51 getDate];
          v111 = getDate;
          if (checkCopy)
          {
            v53 = 1;
          }

          else
          {
            [timeCopy timeIntervalSinceDate:getDate];
            v55 = v54;
            [settingsCopy maxSuspiciousDuration];
            v53 = v55 < v56;
          }

          v109 = v53;
          earliestUtAdvertisements = [v104 earliestUtAdvertisements];
          v58 = [earliestUtAdvertisements objectForKey:v49];

          latestUtAdvertisements2 = [v104 latestUtAdvertisements];
          v60 = [latestUtAdvertisements2 objectForKey:v49];

          earliestUtAdvertisements2 = [visitSnapshotCopy earliestUtAdvertisements];
          v62 = [earliestUtAdvertisements2 objectForKey:v49];

          latestUtAdvertisements3 = [visitSnapshotCopy latestUtAdvertisements];
          v64 = [latestUtAdvertisements3 objectForKey:v49];

          if (v58 && v60 && v62 && v64)
          {
            getDate2 = [v60 getDate];
            getDate3 = [v58 getDate];
            [getDate2 timeIntervalSinceDate:getDate3];
            v68 = v67;
            [settingsCopy minObservationInterval];
            v70 = v69;

            getDate4 = [v64 getDate];
            getDate5 = [v62 getDate];
            [getDate4 timeIntervalSinceDate:getDate5];
            v74 = v73;
            [settingsCopy minObservationInterval];
            v76 = v75;

            v77 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
            {
              v78 = v77;
              hexString = [v49 hexString];
              *buf = v95;
              v120 = hexString;
              v121 = 1025;
              *v122 = v109;
              *&v122[4] = 1025;
              *&v122[6] = v68 > v70;
              LOWORD(v123) = 1025;
              *(&v123 + 2) = v74 > v76;
              _os_log_impl(&dword_26F2E2000, v78, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits considering %{private}@ based on satisfyFreshObservation:%{private}d satisfyPastVisitObservationDuration:%{private}d satisfyCurrentVisitObservationDuration:%{private}d", buf, 0x1Eu);
            }

            v80 = v68 > v70 && v109;
            v47 = v98;
            visitSnapshotCopy = v99;
            if (v80 && v74 > v76)
            {
              [v96 addObject:v51];
            }
          }

          else
          {
            v81 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v116 toVisitSnapshot:v81 settings:v49 currentClockTime:&v117 skipFreshObservationCheck:?];
            }
          }

          v48 = (v48 + 1);
        }

        while (log != v48);
        log = [obj countByEnumeratingWithState:&v112 objects:v118 count:16];
      }

      while (log);
    }

    v13 = v96;
    v82 = [v96 copy];

    representativeVisit = v89;
LABEL_38:
    v84 = v92;
LABEL_42:
    v31 = v93;
    goto LABEL_43;
  }

  v83 = TAStatusLog;
  v84 = representativeVisit2;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v83, OS_LOG_TYPE_DEFAULT, "Current and past visits are not far enough to be considered for UT", buf, 2u);
  }

  v82 = [v13 copy];
LABEL_43:

  return v82;
}

+ (BOOL)shouldDetectWithStore:(id)store settings:(id)settings
{
  storeCopy = store;
  settingsCopy = settings;
  if (storeCopy && ([storeCopy visitState], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "visitSnapshotBuffer"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9 >= 2))
  {
    visitState = [storeCopy visitState];
    visitSnapshotBuffer = [visitState visitSnapshotBuffer];
    lastObject = [visitSnapshotBuffer lastObject];
    isClosed = [lastObject isClosed];

    v10 = isClosed ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)getEntryAddressSetInTAVisitSnapshot:(id)snapshot usingSettings:(id)settings
{
  snapshotCopy = snapshot;
  v6 = MEMORY[0x277CBEB98];
  if (snapshotCopy)
  {
    [settings entryDisplayOnBudget];
    v7 = [snapshotCopy getEntryAdvertisementsWithDisplayOnBudget:?];
    allKeys = [v7 allKeys];
    v9 = [v6 setWithArray:allKeys];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

+ (id)getExitAddressSetInTAVisitSnapshot:(id)snapshot usingSettings:(id)settings
{
  snapshotCopy = snapshot;
  v6 = MEMORY[0x277CBEB98];
  if (snapshotCopy)
  {
    [settings exitDisplayOnBudget];
    v7 = [snapshotCopy getExitAdvertisementsWithDisplayOnBudget:?];
    allKeys = [v7 allKeys];
    v9 = [v6 setWithArray:allKeys];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

+ (id)getAddressSetInTAVisitSnapshot:(id)snapshot
{
  v3 = MEMORY[0x277CBEB98];
  if (snapshot)
  {
    latestUtAdvertisements = [snapshot latestUtAdvertisements];
    allKeys = [latestUtAdvertisements allKeys];
    v6 = [v3 setWithArray:allKeys];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

+ (id)getIntersectionOfFirstSet:(id)set andSecondSet:(id)secondSet
{
  secondSetCopy = secondSet;
  v6 = secondSetCopy;
  if (set && secondSetCopy)
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:set];
    [v7 intersectSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

+ (unint64_t)identifyDetectionTypeWithStore:(id)store settings:(id)settings
{
  settingsCopy = settings;
  visitState = [store visitState];
  visitSnapshotBuffer = [visitState visitSnapshotBuffer];
  lastObject = [visitSnapshotBuffer lastObject];
  loiType = [lastObject loiType];

  v10 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [(TAFilterVisits *)v10 identifyDetectionTypeWithStore:loiType settings:settingsCopy];
  }

  sensitiveLOITypes = [settingsCopy sensitiveLOITypes];
  v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:loiType];
  v13 = [sensitiveLOITypes containsObject:v12];

  if (v13)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  return v14;
}

+ (BOOL)sensitiveVisitsTooCloseBetweenFromLOIType:(unint64_t)type toLOIType:(unint64_t)iType distance:(double)distance settings:(id)settings
{
  v30 = *MEMORY[0x277D85DE8];
  if (settings)
  {
    settingsCopy = settings;
    sensitiveLOITypes = [settingsCopy sensitiveLOITypes];
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:type];
    v12 = [sensitiveLOITypes containsObject:v11];

    sensitiveLOITypes2 = [settingsCopy sensitiveLOITypes];

    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:iType];
    v15 = [sensitiveLOITypes2 containsObject:v14];

    if (250.0 + 250.0 > distance)
    {
      v16 = v12 & v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 68290051;
      v19[1] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1025;
      v23 = v12;
      v24 = 1025;
      v25 = v15 & 1;
      v26 = 1025;
      v27 = 250.0 + 250.0 > distance;
      v28 = 1025;
      v29 = v16;
      _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterVisits shouldDetectWithPastLOIType:currentLOIType:distance:settings:, pastIsSensitiveVisit:%{private}hhd, currentIsSensitiveVisit:%{private}hhd, pastAndCurrentTooClose:%{private}hhd, sensitiveVisitTooClose:%{private}hhd}", v19, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (void)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(void *)a3 toVisitSnapshot:(void *)a4 settings:currentClockTime:skipFreshObservationCheck:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_fault_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_FAULT, "#TAFilterVisits some advertisements not present for %{private}@", a1, 0xCu);
}

+ (void)identifyDetectionTypeWithStore:(void *)a3 settings:.cold.1(void *a1, unint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = TALocationOfInterestTypeToString(a2);
  v7 = [a3 sensitiveLOITypesToString];
  v8 = 138478083;
  v9 = v6;
  v10 = 2113;
  v11 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterVisits LOI type is %{private}@ and sensitive LOI list contains %{private}@", &v8, 0x16u);
}

@end