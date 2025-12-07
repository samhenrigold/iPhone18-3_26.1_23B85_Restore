@interface IRServicePackageAdapterMedia
+ (id)_getUniqueAirplayRoutsFromCandidateIdentifiers:(id)identifiers inCandiateContainer:(id)container;
- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date;
- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc;
- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date;
- (IRServicePackageAdapterMedia)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_getGeneralWeeklyAnalyticsWithWeeklyHistory:(id)history withCandidatesContainer:(id)container;
- (id)_getUIWeeklyAnalyticsWithWeeklyHistory:(id)history;
- (id)_getWeeklyAnalyticsFromStatistics:(id)statistics candidatesContainer:(id)container;
- (id)filterHistory:(id)history withCandidatesContainer:(id)container;
- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history;
- (id)uiAnalyticsWithEvent:(id)event forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager service:(id)service historyEventsContainer:(id)self0;
- (id)weeklyAnalyticsWithServiceStore:(id)store statistics:(id)statistics service:(id)service;
@end

@implementation IRServicePackageAdapterMedia

- (NSDictionary)contexts
{
  generator = [(IRServicePackageAdapterMedia *)self generator];
  contexts = [generator contexts];

  return contexts;
}

- (IRServicePackageAdapterMedia)init
{
  v5.receiver = self;
  v5.super_class = IRServicePackageAdapterMedia;
  v2 = [(IRServicePackageAdapterMedia *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(IRClassificationGenerator);
    [(IRServicePackageAdapterMedia *)v2 setGenerator:v3];
  }

  return v2;
}

- (NSDictionary)policyInspections
{
  generator = [(IRServicePackageAdapterMedia *)self generator];
  policyInspections = [generator policyInspections];

  return policyInspections;
}

- (BOOL)generateClassificationsWithCandiatesContainer:(id)container systemState:(id)state historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer fillInspection:(BOOL)inspection date:(id)date
{
  inspectionCopy = inspection;
  dateCopy = date;
  deviceContainerCopy = deviceContainer;
  predictionCopy = prediction;
  eventsContainerCopy = eventsContainer;
  stateCopy = state;
  containerCopy = container;
  generator = [(IRServicePackageAdapterMedia *)self generator];
  LOBYTE(inspectionCopy) = [generator generateClassificationsWithCandiatesContainer:containerCopy systemState:stateCopy historyEventsContainer:eventsContainerCopy miloPrediction:predictionCopy nearbyDeviceContainer:deviceContainerCopy fillInspection:inspectionCopy date:dateCopy];

  return inspectionCopy;
}

- (id)filterHistory:(id)history withCandidatesContainer:(id)container
{
  v138 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  containerCopy = container;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    historyEvents = [historyCopy historyEvents];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(historyEvents, "count")}];
    *buf = 136315650;
    *&buf[4] = "#service-package-adapter-media, ";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v137 = v10;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Number of history events before filtering = %@", buf, 0x20u);
  }

  v11 = MEMORY[0x277CBEB18];
  historyEvents2 = [historyCopy historyEvents];
  v13 = [v11 arrayWithArray:historyEvents2];

  if ([&unk_286768F20 count])
  {
    v115 = 0;
    do
    {
      v116 = objc_opt_new();
      v14 = [&unk_286768F20 objectAtIndexedSubscript:v115];
      integerValue = [v14 integerValue];

      v15 = [&unk_286768F20 count];
      v16 = ++v115 / v15;
      v17 = [&unk_286768F20 objectAtIndexedSubscript:v115 - v16 * v15];
      integerValue2 = [v17 integerValue];

      if ([v13 count])
      {
        v18 = 0;
        do
        {
          v19 = [v13 objectAtIndexedSubscript:{v18, containerCopy}];
          event = [v19 event];
          v21 = [event eventType] == integerValue;

          v119 = v18 + 1;
          if (v21 && v119 < [v13 count])
          {
            for (i = v18 + 1; i < [v13 count]; ++i)
            {
              v23 = [v13 objectAtIndexedSubscript:i];
              date = [v23 date];
              v25 = [v13 objectAtIndexedSubscript:v18];
              date2 = [v25 date];
              [date timeIntervalSinceDate:date2];
              v28 = v27;
              v29 = +[IRPreferences shared];
              mediaPlaybackEventsTimeIntervalThreshold = [v29 mediaPlaybackEventsTimeIntervalThreshold];
              [mediaPlaybackEventsTimeIntervalThreshold doubleValue];
              v32 = v28 < v31;

              if (!v32)
              {
                break;
              }

              v33 = [v13 objectAtIndexedSubscript:i];
              event2 = [v33 event];
              v35 = [event2 eventType] == integerValue2;

              if (v35)
              {
                v36 = [v13 objectAtIndexedSubscript:i];
                candidateIdentifier = [v36 candidateIdentifier];
                v38 = [v13 objectAtIndexedSubscript:v18];
                candidateIdentifier2 = [v38 candidateIdentifier];
                v40 = [candidateIdentifier isEqual:candidateIdentifier2];

                if (v40)
                {
                  v41 = [v13 objectAtIndexedSubscript:i];
                  event3 = [v41 event];
                  bundleID = [event3 bundleID];

                  v44 = [v13 objectAtIndexedSubscript:v18];
                  event4 = [v44 event];
                  bundleID2 = [event4 bundleID];

                  if ([bundleID isEqual:bundleID2] && (objc_msgSend(v116, "containsIndex:", i) & 1) == 0)
                  {
                    [v116 addIndex:v18];
                    [v116 addIndex:i];

                    break;
                  }
                }
              }
            }
          }

          ++v18;
        }

        while (v119 < [v13 count]);
      }

      [v13 removeObjectsAtIndexes:{v116, containerCopy}];
    }

    while (v115 < [&unk_286768F20 count]);
  }

  v47 = +[IREventDO mediaUserInteractionEvents];
  v123 = [v47 compactMap:&__block_literal_global_14];

  v118 = objc_opt_new();
  if ([v13 count])
  {
    v48 = 0;
    v120 = 1;
    do
    {
      v49 = MEMORY[0x277CCABB0];
      v50 = [v13 objectAtIndexedSubscript:v48];
      event5 = [v50 event];
      v52 = [v49 numberWithLongLong:{objc_msgSend(event5, "eventType")}];
      LODWORD(v49) = [v123 containsObject:v52];

      if (v49)
      {
        v53 = v120;
        while (v53 < [v13 count])
        {
          v54 = [v13 objectAtIndexedSubscript:v53];
          date3 = [v54 date];
          v56 = [v13 objectAtIndexedSubscript:v48];
          date4 = [v56 date];
          [date3 timeIntervalSinceDate:date4];
          v59 = v58;
          v60 = +[IRPreferences shared];
          mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds = [v60 mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
          [mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds doubleValue];
          v63 = v59 < v62;

          if (!v63)
          {
            break;
          }

          v64 = MEMORY[0x277CCABB0];
          v65 = [v13 objectAtIndexedSubscript:v53];
          event6 = [v65 event];
          v67 = [v64 numberWithLongLong:{objc_msgSend(event6, "eventType")}];
          LODWORD(v64) = [v123 containsObject:v67];

          ++v53;
          if (v64)
          {
            [v118 addIndex:v48];
            break;
          }
        }
      }

      ++v48;
      ++v120;
    }

    while (v48 < [v13 count]);
  }

  [v13 removeObjectsAtIndexes:v118];
  [v118 removeAllIndexes];
  if ([v13 count])
  {
    v68 = 0;
    do
    {
      v69 = MEMORY[0x277CCABB0];
      v70 = [v13 objectAtIndexedSubscript:v68];
      event7 = [v70 event];
      v72 = [v69 numberWithLongLong:{objc_msgSend(event7, "eventType")}];
      LODWORD(v69) = [v123 containsObject:v72];

      v121 = v68 + 1;
      if (v69 && v121 < [v13 count])
      {
        for (j = v68 + 1; j < [v13 count]; ++j)
        {
          v74 = [v13 objectAtIndexedSubscript:j];
          date5 = [v74 date];
          v76 = [v13 objectAtIndexedSubscript:v68];
          date6 = [v76 date];
          [date5 timeIntervalSinceDate:date6];
          v79 = v78;
          v80 = +[IRPreferences shared];
          mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds = [v80 mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds];
          [mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds doubleValue];
          v83 = v79 < v82;

          if (!v83)
          {
            break;
          }

          v84 = MEMORY[0x277CCABB0];
          v85 = [v13 objectAtIndexedSubscript:j];
          event8 = [v85 event];
          v87 = [v84 numberWithLongLong:{objc_msgSend(event8, "eventType")}];
          LODWORD(v84) = [v123 containsObject:v87];

          if (v84)
          {
            v88 = [v13 objectAtIndexedSubscript:j];
            candidateIdentifier3 = [v88 candidateIdentifier];
            v90 = [v13 objectAtIndexedSubscript:v68];
            candidateIdentifier4 = [v90 candidateIdentifier];
            v92 = [candidateIdentifier3 isEqual:candidateIdentifier4];

            if (v92)
            {
              v93 = [v13 objectAtIndexedSubscript:j];
              event9 = [v93 event];
              bundleID3 = [event9 bundleID];

              v96 = [v13 objectAtIndexedSubscript:v68];
              event10 = [v96 event];
              bundleID4 = [event10 bundleID];

              if ([bundleID3 isEqual:bundleID4])
              {
                [v118 addIndex:v68];

                break;
              }
            }
          }
        }
      }

      ++v68;
    }

    while (v121 < [v13 count]);
  }

  [v13 removeObjectsAtIndexes:v118];
  v99 = +[IREventDO mediaBrokeredDeviceEvents];
  v100 = [v99 compactMap:&__block_literal_global_27_0];

  [v118 removeAllIndexes];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v137) = 0;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_3;
  v124[3] = &unk_2797E1C90;
  v101 = v100;
  v125 = v101;
  v129 = buf;
  v102 = v113;
  v126 = v102;
  v103 = v123;
  v127 = v103;
  v104 = v118;
  v128 = v104;
  [v13 enumerateObjectsWithOptions:2 usingBlock:v124];
  [v13 removeObjectsAtIndexes:v104];
  v105 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v106 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
  {
    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *v130 = 136315650;
    v131 = "#service-package-adapter-media, ";
    v132 = 2112;
    v133 = v105;
    v134 = 2112;
    v135 = v107;
    _os_log_impl(&dword_25543D000, v106, OS_LOG_TYPE_INFO, "%s[%@], Number of history events after filtering = %@", v130, 0x20u);
  }

  v108 = [IRHistoryEventsContainerDO alloc];
  v109 = [v13 copy];
  v110 = [(IRHistoryEventsContainerDO *)v108 initWithHistoryEvents:v109];

  _Block_object_dispose(buf, 8);

  return v110;
}

uint64_t __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 eventType];

  return [v2 numberWithLongLong:v3];
}

uint64_t __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 eventType];

  return [v2 numberWithLongLong:v3];
}

void __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCABB0];
  v18 = v5;
  v8 = [v5 event];
  v9 = [v7 numberWithLongLong:{objc_msgSend(v8, "eventType")}];
  LODWORD(v6) = [v6 containsObject:v9];

  if (v6)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v10 = *(a1 + 40);
    v11 = [v18 candidateIdentifier];
    v12 = [v10 candidateForCandidateIdentifier:v11];
    v13 = [v12 isBrokeredDevice];

    if (v13)
    {
      v14 = *(a1 + 48);
      v15 = MEMORY[0x277CCABB0];
      v16 = [v18 event];
      v17 = [v15 numberWithLongLong:{objc_msgSend(v16, "eventType")}];
      LODWORD(v14) = [v14 containsObject:v17];

      if (v14)
      {
        [*(a1 + 56) addIndex:a3];
      }
    }
  }
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)lo historyEventsAsc:(id)asc
{
  v5 = MEMORY[0x277CBEB58];
  ascCopy = asc;
  loCopy = lo;
  v8 = [v5 set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke;
  v16[3] = &unk_2797E1A28;
  v9 = v8;
  v17 = v9;
  [ascCopy enumerateObjectsWithOptions:2 usingBlock:v16];

  candidates = [loCopy candidates];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2;
  v14[3] = &unk_2797E0CD0;
  v15 = v9;
  v11 = v9;
  v12 = [candidates firstWhere:v14];
  LOBYTE(v9) = v12 != 0;

  return v9;
}

void __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v17 date];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;
  v10 = +[IRPreferences shared];
  v11 = [v10 candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  [v11 doubleValue];
  v13 = v12;

  if (v9 >= v13)
  {
    *a4 = 1;
  }

  else
  {
    v14 = [v17 systemState];
    if ([v14 isMiLoSupportedLocation])
    {
      v15 = [v17 candidateIdentifier];

      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = *(a1 + 32);
      v14 = [v17 candidateIdentifier];
      [v16 addObject:v14];
    }
  }

LABEL_7:
}

uint64_t __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsAirplayTarget])
  {
    v4 = *(a1 + 32);
    v5 = [v3 candidateIdentifier];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldRejectEvent:(id)event withHistoryEventsContainer:(id)container withSystemState:(id)state forCandidate:(id)candidate date:(id)date
{
  eventCopy = event;
  containerCopy = container;
  stateCopy = state;
  candidateCopy = candidate;
  dateCopy = date;
  if (+[IRPlatformInfo isIOS](IRPlatformInfo, "isIOS") && ![stateCopy displayOn])
  {
    v24 = 1;
  }

  else if (([candidateCopy isMediaRemoteLocal] & 1) != 0 || (objc_msgSend(candidateCopy, "candidateIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", @"speaker"), v16, v17))
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    if (+[IRPlatformInfo isTVOS])
    {
      v18 = +[IRPreferences shared];
      mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds = [v18 mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
      [mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds doubleValue];
      v21 = [dateCopy dateByAddingTimeInterval:-v20];

      historyEvents = [containerCopy historyEvents];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __111__IRServicePackageAdapterMedia_shouldRejectEvent_withHistoryEventsContainer_withSystemState_forCandidate_date___block_invoke;
      v26[3] = &unk_2797E18B0;
      v23 = v21;
      v27 = v23;
      v28 = &v29;
      [historyEvents enumerateObjectsWithOptions:2 usingBlock:v26];
    }

    v24 = *(v30 + 24);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

void __111__IRServicePackageAdapterMedia_shouldRejectEvent_withHistoryEventsContainer_withSystemState_forCandidate_date___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 date];
  LOBYTE(v7) = [v7 isLaterThan:v8];

  if ((v7 & 1) == 0)
  {
    v9 = [v11 event];
    v10 = [v9 isUserIntentionEvent];

    if (!v10)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = 1;
LABEL_5:
}

- (id)getSignificantBundlesWithCandidates:(id)candidates fromHistory:(id)history
{
  historyCopy = history;
  airplayOrUnknownCandidates = [candidates airplayOrUnknownCandidates];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = +[IRPreferences shared];
  startDateForSignificantBundlesLookup = [v10 startDateForSignificantBundlesLookup];

  historyEvents = [historyCopy historyEvents];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke;
  v22[3] = &unk_2797E1CB8;
  v22[4] = self;
  v23 = airplayOrUnknownCandidates;
  v24 = startDateForSignificantBundlesLookup;
  v25 = v9;
  v13 = dictionary;
  v26 = v13;
  v14 = v9;
  v15 = startDateForSignificantBundlesLookup;
  v16 = airplayOrUnknownCandidates;
  [historyEvents enumerateObjectsUsingBlock:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_45;
  v20[3] = &unk_2797E1CE0;
  v21 = v13;
  v17 = v13;
  v18 = [v14 compactMap:v20];

  return v18;
}

void __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke(void *a1, void *a2)
{
  v26 = a2;
  v3 = [v26 event];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = a1[4];
    v6 = [v26 event];
    LODWORD(v5) = [v5 shouldConsiderEventForSignificantBundles:v6];

    if (v5)
    {
      v7 = [v26 candidateIdentifier];
      v8 = [IRCandidateDO candidateForIdentifier:v7 within:a1[5]];

      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = [v26 date];
      v10 = [v9 isLaterThan:a1[6]];

      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = a1[7];
      v12 = [v26 event];
      v13 = [v12 bundleID];
      [v11 addObject:v13];

      v14 = [v8 nodes];
      LODWORD(v12) = [v14 containsObjectPassingTest:&__block_literal_global_41];

      v15 = a1[8];
      v16 = [v26 event];
      v17 = [v16 bundleID];
      v18 = [v15 objectForKeyedSubscript:v17];

      if (v12)
      {
        if (!v18)
        {
          v25 = a1[8];
          v21 = [v26 event];
          v23 = [v21 bundleID];
          [v25 setObject:&unk_286769088 forKeyedSubscript:v23];
          goto LABEL_12;
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = [v18 integerValue] + 1;
      }

      else
      {
        if (!v18)
        {
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = [v18 integerValue] - 1;
      }

      v21 = [v19 numberWithInteger:v20];
      v22 = a1[8];
      v23 = [v26 event];
      v24 = [v23 bundleID];
      [v22 setObject:v21 forKeyedSubscript:v24];

LABEL_12:
      goto LABEL_13;
    }
  }

LABEL_15:
}

BOOL __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 avOutputDevice];

  if (v3)
  {
    v4 = [v2 avOutputDevice];
    if ([v4 deviceType])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v2 avOutputDevice];
      if ([v6 deviceSubType] == 11)
      {
        v5 = 1;
      }

      else
      {
        v7 = [v2 avOutputDevice];
        if ([v7 deviceSubType] == 13)
        {
          v5 = 1;
        }

        else
        {
          v8 = [v2 avOutputDevice];
          v5 = [v8 deviceSubType] == 17;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 objectForKeyedSubscript:v3];

  v4 = [objc_alloc(MEMORY[0x277D212C0]) initWithBundleType:2 andIdentifier:v3];

  return v4;
}

- (id)weeklyAnalyticsWithServiceStore:(id)store statistics:(id)statistics service:(id)service
{
  serviceCopy = service;
  statisticsCopy = statistics;
  storeCopy = store;
  v11 = +[IRPreferences shared];
  numberOfHistoryEventsInCache = [v11 numberOfHistoryEventsInCache];
  v13 = [storeCopy fetchHistoryEventsContainerWithLimit:{objc_msgSend(numberOfHistoryEventsInCache, "unsignedIntegerValue")}];

  fetchCandidatesContainer = [storeCopy fetchCandidatesContainer];

  date = [MEMORY[0x277CBEAA8] date];
  historyEvents = [v13 historyEvents];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__IRServicePackageAdapterMedia_IRAnalytics__weeklyAnalyticsWithServiceStore_statistics_service___block_invoke;
  v29[3] = &unk_2797E1868;
  v17 = date;
  v30 = v17;
  v18 = [historyEvents allWhere:v29];
  v19 = [IRHistoryEventsContainerDO historyEventsContainerDOWithHistoryEvents:v18];

  v20 = [(IRServicePackageAdapterMedia *)self filterHistory:v19 withCandidatesContainer:fetchCandidatesContainer];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = objc_msgSend_clientIdentifier(serviceCopy);
  if (v22)
  {
    v23 = objc_msgSend_clientIdentifier(serviceCopy);
    [dictionary setObject:v23 forKeyedSubscript:@"General_Weekly_Client_Identifier"];
  }

  else
  {
    [dictionary setObject:&stru_286755D18 forKeyedSubscript:@"General_Weekly_Client_Identifier"];
  }

  v24 = [(IRServicePackageAdapterMedia *)self _getUIWeeklyAnalyticsWithWeeklyHistory:v20];
  [dictionary addEntriesFromDictionary:v24];

  v25 = [(IRServicePackageAdapterMedia *)self _getGeneralWeeklyAnalyticsWithWeeklyHistory:v20 withCandidatesContainer:fetchCandidatesContainer];
  [dictionary addEntriesFromDictionary:v25];

  v26 = [(IRServicePackageAdapterMedia *)self _getWeeklyAnalyticsFromStatistics:statisticsCopy candidatesContainer:fetchCandidatesContainer];

  [dictionary addEntriesFromDictionary:v26];
  v27 = [dictionary copy];

  return v27;
}

uint64_t __96__IRServicePackageAdapterMedia_IRAnalytics__weeklyAnalyticsWithServiceStore_statistics_service___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  v4 = +[IRPreferences shared];
  v5 = [v4 coreAnalyticsXPCHistoryEventsValidThreshold];
  [v5 doubleValue];
  v6 = [v3 dateByAddingTimeInterval:?];
  v7 = [v2 isEarlierThanOrEqualTo:v6];

  return v7;
}

- (id)_getUIWeeklyAnalyticsWithWeeklyHistory:(id)history
{
  v49[10] = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  historyCopy = history;
  historyEvents = [historyCopy historyEvents];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__IRServicePackageAdapterMedia_IRAnalytics___getUIWeeklyAnalyticsWithWeeklyHistory___block_invoke;
  v27[3] = &unk_2797E1D08;
  v27[4] = &v44;
  v27[5] = &v40;
  v27[6] = &v36;
  v27[7] = &v32;
  v27[8] = &v28;
  [historyEvents enumerateObjectsUsingBlock:v27];

  v4 = v45[3];
  v5 = v41[3] + v4;
  if (v5)
  {
    v6 = 100 * v4 / v5;
  }

  else
  {
    v6 = 200;
  }

  v7 = v37[3];
  v8 = v33[3] + v7;
  if (v8)
  {
    v9 = 100 * v7 / v8;
  }

  else
  {
    v9 = 200;
  }

  v11 = v7 + v5;
  v10 = v11 == 0;
  v12 = 100 * v5 / v11;
  if (v10)
  {
    v13 = 200;
  }

  else
  {
    v13 = v12;
  }

  v48[0] = @"Autoroute_UI_Weekly_Accepted";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v49[0] = v26;
  v48[1] = @"Autoroute_UI_Weekly_Rejected";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41[3]];
  v49[1] = v14;
  v48[2] = @"Autoroute_UI_Weekly_Prompt";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v49[2] = v15;
  v48[3] = @"Autoroute_UI_Weekly_Accepted_Ratio";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v49[3] = v16;
  v48[4] = @"OneTap_UI_Weekly_Accepted";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37[3]];
  v49[4] = v17;
  v48[5] = @"OneTap_UI_Weekly_Rejected";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33[3]];
  v49[5] = v18;
  v48[6] = @"OneTap_UI_Weekly_Prompt";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v49[6] = v19;
  v48[7] = @"OneTap_UI_Weekly_Accepted_Ratio";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v49[7] = v20;
  v48[8] = @"Autoroute_To_OneTap_UI_Weekly_Ratio";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v49[8] = v21;
  v48[9] = @"PickerTop_UI_Weekly_Prompt";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29[3]];
  v49[9] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:10];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v23;
}

void __84__IRServicePackageAdapterMedia_IRAnalytics___getUIWeeklyAnalyticsWithWeeklyHistory___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 event];
  v4 = [v3 eventType];

  if (v4 == 1)
  {
    v5 = 32;
LABEL_11:
    v13 = v16;
LABEL_12:
    ++*(*(*(a1 + v5) + 8) + 24);
    goto LABEL_13;
  }

  v6 = [v16 event];
  v7 = [v6 eventType];

  if (v7 == 2)
  {
    v5 = 40;
    goto LABEL_11;
  }

  v8 = [v16 event];
  v9 = [v8 eventType];

  if (v9 == 3)
  {
    v5 = 48;
    goto LABEL_11;
  }

  v10 = [v16 event];
  if ([v10 eventType] == 4)
  {

LABEL_10:
    v5 = 56;
    goto LABEL_11;
  }

  v11 = [v16 event];
  v12 = [v11 eventType];

  if (v12 == 8)
  {
    goto LABEL_10;
  }

  v14 = [v16 event];
  v15 = [v14 eventType];

  v13 = v16;
  if (!v15)
  {
    v5 = 64;
    goto LABEL_12;
  }

LABEL_13:
}

- (id)_getGeneralWeeklyAnalyticsWithWeeklyHistory:(id)history withCandidatesContainer:(id)container
{
  v95[13] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  containerCopy = container;
  v31 = historyCopy;
  historyEvents = [historyCopy historyEvents];
  v8 = [historyEvents count];

  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 200;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__10;
  v80 = __Block_byref_object_dispose__10;
  v81 = [MEMORY[0x277CBEB58] set];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__10;
  v74 = __Block_byref_object_dispose__10;
  v75 = [MEMORY[0x277CBEB58] set];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__10;
  v68 = __Block_byref_object_dispose__10;
  array = [MEMORY[0x277CBEB18] array];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  historyEvents2 = [historyCopy historyEvents];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke;
  v59[3] = &unk_2797E1D30;
  v59[4] = &v90;
  v59[5] = &v64;
  v59[6] = &v86;
  v59[7] = &v82;
  v59[8] = &v70;
  v59[9] = &v76;
  v59[10] = &v60;
  [historyEvents2 enumerateObjectsUsingBlock:v59];

  v10 = [v77[5] count];
  v11 = [v71[5] count];
  v25 = [IRServicePackageAdapterMedia _getUniqueAirplayRoutsFromCandidateIdentifiers:v71[5] inCandiateContainer:containerCopy];
  v26 = [v25 count];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v12 = v65[5];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke_2;
  v32[3] = &unk_2797E1D58;
  v24 = containerCopy;
  v33 = v24;
  v34 = &v55;
  v35 = &v39;
  v36 = &v51;
  v37 = &v47;
  v38 = &v43;
  [v12 enumerateObjectsUsingBlock:v32];
  v94[0] = @"General_Weekly_N_events";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v95[0] = v30;
  v94[1] = @"General_Weekly_N_days_since_last_brokered_scan";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:v91[3]];
  v95[1] = v29;
  v94[2] = @"General_Weekly_N_playbacks_with_milo";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v87[3]];
  v95[2] = v28;
  v94[3] = @"General_Is_Milo_Available_Weekly";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v83[3]];
  v95[3] = v13;
  v94[4] = @"General_N_Routes_In_History_Weekly";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v95[4] = v14;
  v94[5] = @"General_N_Routes_used_With_Milo_Weekly";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v95[5] = v15;
  v94[6] = @"General_N_airplay_Routes_Weekly";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v95[6] = v16;
  v94[7] = @"General_N_airplay_playback_events_Weekly";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56[3]];
  v95[7] = v17;
  v94[8] = @"General_N_airplay_playback_events_custom_loi_Weekly";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52[3]];
  v95[8] = v18;
  v94[9] = @"General_Have_BLE_headphones_Weekly";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61[3]];
  v95[9] = v19;
  v94[10] = @"General_N_airplay_playback_events_Milo_Weekly";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48[3]];
  v95[10] = v20;
  v94[11] = @"General_N_airplay_playback_events_Milo_Eligible_App_Weekly";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44[3]];
  v95[11] = v21;
  v94[12] = @"General_N_airplay_playback_events_Eligible_App_Weekly";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40[3]];
  v95[12] = v22;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:13];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);

  return v27;
}

void __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke(void *a1, void *a2)
{
  v26 = a2;
  v3 = [v26 event];
  v4 = [v3 eventType];

  if (v4 == 9)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = [v26 date];
    v7 = [MEMORY[0x277CBEAA8] now];
    *(*(a1[4] + 8) + 24) = [v5 daysFromDate:v6 toDate:v7];
  }

  v8 = [v26 event];
  v9 = [v8 eventType];

  if (v9 == 5)
  {
    [*(*(a1[5] + 8) + 40) addObject:v26];
    v10 = [v26 miloPredictionEvent];
    v11 = [v10 predictionId];

    if (v11)
    {
      ++*(*(a1[6] + 8) + 24);
    }
  }

  v12 = [v26 systemState];
  v13 = [v12 locationSemanticUserSpecificPlaceType];

  if (v13 == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v14 = [v26 candidateIdentifier];

    if (v14)
    {
      v15 = *(*(a1[8] + 8) + 40);
      v16 = [v26 candidateIdentifier];
      [v15 addObject:v16];
    }
  }

  v17 = [v26 candidateIdentifier];

  if (v17)
  {
    v18 = *(*(a1[9] + 8) + 40);
    v19 = [v26 candidateIdentifier];
    [v18 addObject:v19];
  }

  v20 = [v26 systemState];
  if ([v20 outputDeviceType] == 1)
  {
    v21 = [v26 systemState];
    if ([v21 outputDeviceSubType] == 3)
    {

LABEL_18:
      *(*(a1[10] + 8) + 24) = 1;
      goto LABEL_19;
    }

    v24 = [v26 systemState];
    v25 = [v24 outputDeviceSubType];

    if (v25 == 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = [v26 systemState];
  v23 = [v22 predictedOutputDeviceType];

  if (v23 == 1)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v13 = v3;
  v5 = [v3 candidateIdentifier];
  v6 = [v4 candidateForCandidateIdentifier:v5];

  if (v6 && [v6 containsAirplayTarget])
  {
    ++*(*(a1[5] + 8) + 24);
    v7 = [v13 event];
    v8 = [v7 isEligibleApp];

    if (v8)
    {
      ++*(*(a1[6] + 8) + 24);
    }

    v9 = [v13 systemState];
    v10 = [v9 locationSemanticUserSpecificPlaceType];

    if (v10 == 5)
    {
      ++*(*(a1[7] + 8) + 24);
    }

    v11 = [v13 systemState];
    v12 = [v11 locationSemanticUserSpecificPlaceType];

    if (v12 == 1)
    {
      ++*(*(a1[8] + 8) + 24);
      if (v8)
      {
        ++*(*(a1[9] + 8) + 24);
      }
    }
  }
}

- (id)_getWeeklyAnalyticsFromStatistics:(id)statistics candidatesContainer:(id)container
{
  v36[11] = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  candidates = [container candidates];
  v7 = [candidates count];

  numberOfContextChanges = [statisticsCopy numberOfContextChanges];
  numberOfMiLoPredictions = [statisticsCopy numberOfMiLoPredictions];
  numberOfMiLoPredictionsInUpdatesMode = [statisticsCopy numberOfMiLoPredictionsInUpdatesMode];
  lastMiLoLSLItems = [statisticsCopy lastMiLoLSLItems];
  lastMiLoQualityReasonBitmap = [statisticsCopy lastMiLoQualityReasonBitmap];
  lastMiLoQuality = [statisticsCopy lastMiLoQuality];
  lastMiLoModels = [statisticsCopy lastMiLoModels];
  numberOfPickerChoiceEvents = [statisticsCopy numberOfPickerChoiceEvents];
  numberOfCorrectPickerChoiceEvents = [statisticsCopy numberOfCorrectPickerChoiceEvents];
  if (numberOfPickerChoiceEvents)
  {
    v15 = 100 * numberOfCorrectPickerChoiceEvents / numberOfPickerChoiceEvents;
  }

  else
  {
    v15 = 200;
  }

  timeInUpdatesModeInSeconds = [statisticsCopy timeInUpdatesModeInSeconds];

  v16 = +[IRPreferences shared];
  mobileAssetVersion = [v16 mobileAssetVersion];

  v18 = &stru_286755D18;
  if (mobileAssetVersion)
  {
    v18 = mobileAssetVersion;
  }

  v35[0] = @"General_Weekly_N_candidates";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v7, v18}];
  v36[0] = v34;
  v35[1] = @"General_Weekly_N_context_changes";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfContextChanges];
  v36[1] = v33;
  v35[2] = @"General_Weekly_N_milo_predictions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfMiLoPredictions];
  v36[2] = v19;
  v35[3] = @"General_Weekly_N_Milo_Predictions_in_Update_Mode";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfMiLoPredictionsInUpdatesMode];
  v36[3] = v20;
  v35[4] = @"Milo_Number_of_LSL_Items_Weekly";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:lastMiLoLSLItems];
  v36[4] = v21;
  v35[5] = @"Milo_Quality_Reason_Weekly";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:lastMiLoQualityReasonBitmap];
  v36[5] = v22;
  v35[6] = @"Milo_Quality_Weekly";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:lastMiLoQuality];
  v36[6] = v23;
  v35[7] = @"N_MiLo_Different_Models_Weekly";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:lastMiLoModels];
  v36[7] = v24;
  v35[8] = @"PickerTop_UI_Weekly_SuccessRate";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v36[8] = v25;
  v35[9] = @"Time_In_Update_Mode_Weekly";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:timeInUpdatesModeInSeconds];
  v35[10] = @"General_Weekly_Mobile_Asset_Version";
  v36[9] = v26;
  v36[10] = v29;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:11];

  return v27;
}

- (id)uiAnalyticsWithEvent:(id)event forCandidateIdentifier:(id)identifier systemStateManager:(id)manager candidatesContainer:(id)container inspections:(id)inspections statisticsManager:(id)statisticsManager service:(id)service historyEventsContainer:(id)self0
{
  v180[37] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  identifierCopy = identifier;
  managerCopy = manager;
  containerCopy = container;
  inspectionsCopy = inspections;
  statisticsManagerCopy = statisticsManager;
  serviceCopy = service;
  eventsContainerCopy = eventsContainer;
  v117 = containerCopy;
  v18 = [IRServicePackageAdapterMedia filterHistory:"filterHistory:withCandidatesContainer:" withCandidatesContainer:?];
  historyEvents = [v18 historyEvents];

  v114 = [inspectionsCopy objectForKeyedSubscript:*MEMORY[0x277D21250]];
  v19 = objc_msgSend_clientIdentifier(serviceCopy);
  if (v19)
  {
    v107 = objc_msgSend_clientIdentifier(serviceCopy);
  }

  else
  {
    v107 = &stru_286755D18;
  }

  bundleID = [eventCopy bundleID];
  v102 = [IRAnalyticsUtilities getRedactedBundleID:bundleID];

  isEligibleApp = [eventCopy isEligibleApp];
  systemState = [managerCopy systemState];
  locationSemanticUserSpecificPlaceType = [systemState locationSemanticUserSpecificPlaceType];

  [eventCopy eventType];
  v106 = IRMediaEventTypeToString();
  systemState2 = [managerCopy systemState];
  locationSemanticUserSpecificPlaceType2 = [systemState2 locationSemanticUserSpecificPlaceType];

  miloProviderLslPredictionResults = [managerCopy miloProviderLslPredictionResults];
  canUse = [miloProviderLslPredictionResults canUse];

  miloProviderLslPredictionResults2 = [managerCopy miloProviderLslPredictionResults];
  isPredictionValid = [miloProviderLslPredictionResults2 isPredictionValid];

  miloProviderLslPredictionResults3 = [managerCopy miloProviderLslPredictionResults];
  isMotionDetected = [miloProviderLslPredictionResults3 isMotionDetected];

  miloProviderLslPredictionResults4 = [managerCopy miloProviderLslPredictionResults];
  scores = [miloProviderLslPredictionResults4 scores];
  v89 = [scores count];

  miloProviderLslPredictionResults5 = [managerCopy miloProviderLslPredictionResults];
  isMapValid = [miloProviderLslPredictionResults5 isMapValid];

  miloProviderLslPredictionResults6 = [managerCopy miloProviderLslPredictionResults];
  predictionTime = [miloProviderLslPredictionResults6 predictionTime];
  [predictionTime timeIntervalSinceNow];
  v32 = v31;

  candidates = [containerCopy candidates];
  v79 = [candidates count];

  v175 = 0;
  v176 = &v175;
  v177 = 0x2020000000;
  v178 = 0;
  v171 = 0;
  v172 = &v171;
  v173 = 0x2020000000;
  v174 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy__10;
  v145 = __Block_byref_object_dispose__10;
  v146 = &stru_286755D18;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = __Block_byref_object_copy__10;
  v139 = __Block_byref_object_dispose__10;
  v140 = &stru_286755D18;
  candidates2 = [v114 candidates];
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke;
  v122[3] = &unk_2797E1DA0;
  v125 = &v175;
  v126 = &v171;
  v127 = &v167;
  v128 = &v163;
  v116 = identifierCopy;
  v123 = v116;
  v129 = &v141;
  v130 = &v135;
  v131 = &v159;
  v108 = v114;
  v124 = v108;
  v132 = &v155;
  v133 = &v151;
  v134 = &v147;
  [candidates2 enumerateObjectsUsingBlock:v122];

  v35 = [containerCopy candidateForCandidateIdentifier:v116];
  containsAirplayTarget = [v35 containsAirplayTarget];
  v105 = [IRAnalyticsUtilities candidateTypeForCandidate:v35];
  v104 = [IRAnalyticsUtilities candidateModelTypeForCandidate:v35];
  timeToBannerInMilliSeconds = [statisticsManagerCopy timeToBannerInMilliSeconds];
  if (timeToBannerInMilliSeconds)
  {
    timeToBannerInMilliSeconds2 = [statisticsManagerCopy timeToBannerInMilliSeconds];
    unsignedIntegerValue = [timeToBannerInMilliSeconds2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  generatorNegativeInputs = [v108 generatorNegativeInputs];
  allValues = [generatorNegativeInputs allValues];
  v42 = [allValues firstWhere:&__block_literal_global_249];
  v43 = v42 != 0;

  v44 = +[IRPreferences shared];
  mobileAssetVersion = [v44 mobileAssetVersion];

  v46 = &stru_286755D18;
  if (mobileAssetVersion)
  {
    v46 = mobileAssetVersion;
  }

  v81 = v46;
  historyEvents2 = [eventsContainerCopy historyEvents];
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke_4;
  v120[3] = &unk_2797E1868;
  v69 = v35;
  v121 = v69;
  v48 = [historyEvents2 firstWhere:v120];

  miloProviderLslPredictionResults7 = [managerCopy miloProviderLslPredictionResults];
  date = [MEMORY[0x277CBEAA8] date];
  v115 = [IRCandidateClassificationDetectorSameSpace sameSpaceMiLoScoresForCandidate:v116 basedOnMiLoPrediction:miloProviderLslPredictionResults7 andHistoryEventsAsc:historyEvents andDate:date];

  first = [v115 first];
  unsignedIntegerValue2 = [first unsignedIntegerValue];

  second = [v115 second];
  unsignedIntegerValue3 = [second unsignedIntegerValue];

  v55 = v43;
  if (unsignedIntegerValue3)
  {
    v56 = 100 * unsignedIntegerValue2 / unsignedIntegerValue3;
  }

  else
  {
    v56 = 200;
  }

  isOutsideApp = [eventCopy isOutsideApp];
  v180[0] = v107;
  v179[0] = @"UI_Event_Client_Identifier";
  v179[1] = @"UI_Event_Internal_App_Name_Enum";
  v103 = [MEMORY[0x277CCABB0] numberWithInteger:v102];
  v180[1] = v103;
  v179[2] = @"UI_Event_Is_Eligible_App";
  v101 = [MEMORY[0x277CCABB0] numberWithBool:isEligibleApp];
  v180[2] = v101;
  v179[3] = @"UI_Event_Current_LOI_Enum";
  v99 = [MEMORY[0x277CCABB0] numberWithInt:locationSemanticUserSpecificPlaceType];
  v180[3] = v99;
  v180[4] = v106;
  v179[4] = @"UI_Event_Type";
  v179[5] = @"UI_Event_Count";
  v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v180[5] = v97;
  v179[6] = @"UI_Event_MiLo_Available";
  v96 = [MEMORY[0x277CCABB0] numberWithBool:canUse];
  v180[6] = v96;
  v179[7] = @"UI_Event_MiLo_Confidence";
  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isPredictionValid];
  v180[7] = v94;
  v179[8] = @"UI_Event_Milo_Confidence_Reason";
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isMotionDetected];
  v180[8] = v92;
  v179[9] = @"UI_Event_Milo_N_LSL_Items";
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89];
  v180[9] = v90;
  v179[10] = @"UI_Event_Milo_Quality";
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:isMapValid];
  v180[10] = v88;
  v179[11] = @"UI_Event_Milo_Quality_Reason";
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v180[11] = v86;
  v179[12] = @"UI_Event_Milo_Time_Since_Prediction";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fabs(v32)];
  v180[12] = v85;
  v179[13] = @"UI_Event_N_MiLo_Models";
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v180[13] = v84;
  v179[14] = @"UI_Event_MiLo_Suspended_Reasons";
  v57 = MEMORY[0x277CCABB0];
  miloProvider = [managerCopy miloProvider];
  v82 = [v57 numberWithUnsignedInteger:{objc_msgSend(miloProvider, "miLoServiceSuspendedReasonBitmap")}];
  v180[14] = v82;
  v179[15] = @"UI_Event_N_Candidates";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
  v180[15] = v80;
  v179[16] = @"UI_Event_N_Candidates_Classified_AutoRoute";
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v176[3]];
  v180[16] = v78;
  v179[17] = @"UI_Event_N_Candidates_Classified_OneTap";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172[3]];
  v180[17] = v77;
  v179[18] = @"UI_Event_N_Candidates_Classified_TopOfList";
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168[3]];
  v180[18] = v76;
  v179[19] = @"UI_Event_N_Candidates_Classified_Filter";
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164[3]];
  v180[19] = v75;
  v179[20] = @"UI_Event_Selected_Candidate_Classification";
  v180[20] = v142[5];
  v179[21] = @"UI_Event_Selected_Candidate_Rule_Reason";
  v180[21] = v136[5];
  v180[22] = v105;
  v179[22] = @"UI_Event_Selected_Candidate_Type";
  v179[23] = @"UI_Event_Selected_Candidate_Eligibility";
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v160[3]];
  v180[23] = v74;
  v179[24] = @"UI_Event_Selected_Candidate_Is_Device_Selector_Output";
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v156[3]];
  v180[24] = v73;
  v179[25] = @"UI_Event_Selected_Candidate_Is_Device_Selector_Output_And_Eligible";
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v152[3]];
  v180[25] = v58;
  v179[26] = @"UI_Event_Selected_Candidate_Is_UWB_Or_MiLo";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v148[3]];
  v180[26] = v59;
  v179[27] = @"UI_Event_Selected_Candidate_Is_Airplay_Target";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:containsAirplayTarget];
  v180[27] = v60;
  v179[28] = @"UI_Event_Selected_Candidate_Was_Used_At_Home";
  v61 = [MEMORY[0x277CCABB0] numberWithBool:v48 != 0];
  v180[28] = v61;
  v180[29] = v104;
  v179[29] = @"UI_Event_Selected_Candidate_Device_Model_Type";
  v179[30] = @"UI_Event_Selected_Candidate_Same_Space_MiLo_LSL_Items";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3];
  v180[30] = v62;
  v179[31] = @"UI_Event_Selected_Candidate_Same_Space_MiLo_Agg_Score";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
  v180[31] = v63;
  v179[32] = @"UI_Event_Time_To_Banner_Milli_Seconds";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v180[32] = v64;
  v179[33] = @"UI_Event_Is_Negative_Rules";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
  v180[33] = v65;
  v180[34] = v81;
  v179[34] = @"UI_Event_Mobile_Asset_Version";
  v179[35] = @"UI_Event_Is_Location_Custom";
  v66 = [MEMORY[0x277CCABB0] numberWithBool:locationSemanticUserSpecificPlaceType2 == 5];
  v180[35] = v66;
  v179[36] = @"UI_Event_Is_Widget";
  v67 = [MEMORY[0x277CCABB0] numberWithBool:isOutsideApp];
  v180[36] = v67;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:37];

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v141, 8);

  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);
  _Block_object_dispose(&v171, 8);
  _Block_object_dispose(&v175, 8);

  return v72;
}

void __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 inspectionGenerator];
  if (!v3)
  {
    goto LABEL_21;
  }

  v20 = v3;
  if ([v3 classification] == 4)
  {
    v4 = 48;
  }

  else if ([v20 classification] == 3)
  {
    v4 = 56;
  }

  else if ([v20 classification] == 2)
  {
    v4 = 64;
  }

  else
  {
    if ([v20 classification] != 1)
    {
      goto LABEL_11;
    }

    v4 = 72;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
LABEL_11:
  v5 = *(a1 + 32);
  v6 = [v20 candidate];
  v7 = [v6 candidateIdentifier];
  LODWORD(v5) = [v5 isEqual:v7];

  v3 = v20;
  if (v5)
  {
    [v20 classification];
    v8 = IRCandidateClassificationToString();
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v20 classificationDescription];
    v12 = *(*(a1 + 88) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1 + 88) + 8);
    if (!*(v14 + 40))
    {
      *(v14 + 40) = &stru_286755D18;
    }

    *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 40) stateMachineClassification];
    v15 = [v20 candidateSelectorReasons];
    v16 = [v15 allValues];
    v17 = [v16 firstWhere:&__block_literal_global_15];
    *(*(*(a1 + 104) + 8) + 24) = v17 != 0;

    v18 = *(*(*(a1 + 96) + 8) + 24) >= 3uLL && *(*(*(a1 + 104) + 8) + 24) != 0;
    *(*(*(a1 + 112) + 8) + 24) = v18;
    if ([v20 sameSpaceBasedOnUWB])
    {
      v19 = 1;
    }

    else
    {
      v19 = [v20 sameSpaceBasedOnMiLo];
    }

    *(*(*(a1 + 120) + 8) + 24) = v19;
    v3 = v20;
  }

LABEL_21:
}

BOOL __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 systemState];
    v7 = [v6 locationSemanticUserSpecificPlaceType] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_getUniqueAirplayRoutsFromCandidateIdentifiers:(id)identifiers inCandiateContainer:(id)container
{
  containerCopy = container;
  v6 = MEMORY[0x277CBEB58];
  identifiersCopy = identifiers;
  v8 = [v6 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke;
  v14[3] = &unk_2797E1DC8;
  v15 = containerCopy;
  v9 = v8;
  v16 = v9;
  v10 = containerCopy;
  [identifiersCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) candidateForCandidateIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nodes];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke_2;
    v6[3] = &unk_2797E0CA8;
    v7 = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 deviceTypeAndSubType];
  v4 = [v3 first];
  v5 = [v4 unsignedIntegerValue];

  if (v3 && !v5)
  {
    v6 = *(a1 + 32);
    v7 = [v9 avOutputDevice];
    v8 = [v7 deviceID];
    [v6 addObject:v8];
  }
}

@end