@interface IRCandidateClassificationDetectorSameSpace
+ (BOOL)isSameSpaceForCandidate:(id)candidate basedOnMiLoPrediction:(id)prediction andHistoryEventsAsc:(id)asc andDate:(id)date;
+ (id)sameSpaceMiLoScoresForCandidate:(id)candidate basedOnMiLoPrediction:(id)prediction andHistoryEventsAsc:(id)asc andDate:(id)date;
- (BOOL)_isSameSpaceBasedOnPDRFenceForCandidate:(id)candidate basedOnSystemState:(id)state;
- (BOOL)_isSameSpaceBrokeredDeviceForCandidate:(id)candidate basedOnSystemState:(id)state andHistoryEventsAsc:(id)asc andDate:(id)date;
- (BOOL)_isSameSpaceCandidate:(id)candidate;
- (BOOL)_isSameSpaceForCandidate:(id)candidate basedOnHistoryEventsAsc:(id)asc andDate:(id)date;
- (id)_isSameSpaceForCandidate:(id)candidate basedOnNearbyDevices:(id)devices andExpiryDate:(id)date isUWB:(BOOL)b;
- (void)adjustSameSpaceParametersForCandidates:(id)candidates withSystemState:(id)state andHistoryEventsAsc:(id)asc andMiLoPrediction:(id)prediction andNearbyDevicesContainer:(id)container andDate:(id)date;
@end

@implementation IRCandidateClassificationDetectorSameSpace

+ (id)sameSpaceMiLoScoresForCandidate:(id)candidate basedOnMiLoPrediction:(id)prediction andHistoryEventsAsc:(id)asc andDate:(id)date
{
  candidateCopy = candidate;
  predictionCopy = prediction;
  ascCopy = asc;
  dateCopy = date;
  if ([predictionCopy canUse])
  {
    v13 = +[IRPreferences shared];
    miloSameSpaceEventsTimeIntervalSeconds = [v13 miloSameSpaceEventsTimeIntervalSeconds];
    [miloSameSpaceEventsTimeIntervalSeconds doubleValue];
    v16 = [dateCopy dateByAddingTimeInterval:-v15];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke;
    v43[3] = &unk_2797E1AA0;
    v44 = candidateCopy;
    v17 = v16;
    v45 = v17;
    v18 = [ascCopy allWhere:v43];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v19 = +[IRPreferences shared];
    miloLslIsSameMiloThreshold = [v19 miloLslIsSameMiloThreshold];
    [miloLslIsSameMiloThreshold doubleValue];
    v22 = v21;

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke_2;
    v30 = &unk_2797E1AC8;
    v32 = &v39;
    v34 = v22;
    v31 = predictionCopy;
    v33 = &v35;
    [v18 enumerateObjectsUsingBlock:&v27];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v36[3], v27, v28, v29, v30}];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40[3]];
    v25 = [IRPair pairWithFirst:v23 second:v24];

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v25 = [IRPair pairWithFirst:&unk_286769040 second:&unk_286769040];
  }

  return v25;
}

uint64_t __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5 && ([v3 date], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEarlierThan:", *(a1 + 40)), v6, (v7 & 1) == 0))
  {
    v9 = [v3 event];
    v8 = [v9 isUserIntentionEvent];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __128__IRCandidateClassificationDetectorSameSpace_sameSpaceMiLoScoresForCandidate_basedOnMiLoPrediction_andHistoryEventsAsc_andDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = +[IRPreferences shared];
  v8 = [v7 miloSameSpaceEventsNumberOfEventsToWatch];
  v9 = [v8 unsignedIntValue];

  if (v6 >= v9)
  {
    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v14 miloPredictionEvent];
    v12 = [v10 scoreForPredictionEventEvent:v11];

    if (v12)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
      [v12 doubleValue];
      if (v13 > *(a1 + 56))
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }
    }
  }
}

+ (BOOL)isSameSpaceForCandidate:(id)candidate basedOnMiLoPrediction:(id)prediction andHistoryEventsAsc:(id)asc andDate:(id)date
{
  dateCopy = date;
  ascCopy = asc;
  predictionCopy = prediction;
  candidateCopy = candidate;
  v13 = objc_opt_class();
  candidateIdentifier = [candidateCopy candidateIdentifier];

  v15 = [v13 sameSpaceMiLoScoresForCandidate:candidateIdentifier basedOnMiLoPrediction:predictionCopy andHistoryEventsAsc:ascCopy andDate:dateCopy];

  first = [v15 first];
  [first doubleValue];
  v18 = v17;

  second = [v15 second];
  [second doubleValue];
  v21 = v20;

  if (v21 <= 0.0)
  {
    v25 = 0;
  }

  else
  {
    v22 = +[IRPreferences shared];
    miloSameSpaceRatioThreshold = [v22 miloSameSpaceRatioThreshold];
    [miloSameSpaceRatioThreshold doubleValue];
    v25 = v18 / v21 > v24;
  }

  return v25;
}

- (void)adjustSameSpaceParametersForCandidates:(id)candidates withSystemState:(id)state andHistoryEventsAsc:(id)asc andMiLoPrediction:(id)prediction andNearbyDevicesContainer:(id)container andDate:(id)date
{
  v62 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stateCopy = state;
  ascCopy = asc;
  predictionCopy = prediction;
  containerCopy = container;
  dateCopy = date;
  freezeDateNIHomeDevice = [containerCopy freezeDateNIHomeDevice];
  if (freezeDateNIHomeDevice)
  {
    freezeDateNIHomeDevice2 = [containerCopy freezeDateNIHomeDevice];
  }

  else
  {
    freezeDateNIHomeDevice2 = dateCopy;
  }

  v20 = +[IRPreferences shared];
  nearbyDeviceMeasurmentExpityTimeSeconds = [v20 nearbyDeviceMeasurmentExpityTimeSeconds];
  [nearbyDeviceMeasurmentExpityTimeSeconds doubleValue];
  v23 = [freezeDateNIHomeDevice2 dateByAddingTimeInterval:-v22];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __173__IRCandidateClassificationDetectorSameSpace_adjustSameSpaceParametersForCandidates_withSystemState_andHistoryEventsAsc_andMiLoPrediction_andNearbyDevicesContainer_andDate___block_invoke;
  v41[3] = &unk_2797E1AF0;
  v41[4] = self;
  v25 = predictionCopy;
  v42 = v25;
  v26 = ascCopy;
  v43 = v26;
  v27 = dateCopy;
  v44 = v27;
  v28 = stateCopy;
  v45 = v28;
  v29 = containerCopy;
  v46 = v29;
  v30 = v23;
  v47 = v30;
  v31 = distantPast;
  v48 = v31;
  v49 = &v50;
  [candidatesCopy enumerateObjectsUsingBlock:v41];
  v32 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v33 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v38 = v25;
    v34 = v28;
    v35 = v26;
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51[3]];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(candidatesCopy, "count")}];
    *buf = 136315906;
    v55 = "#detector-same-space, ";
    v56 = 2112;
    v57 = v32;
    v58 = 2112;
    v59 = v36;
    v60 = 2112;
    v61 = v37;
    _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_INFO, "%s[%@], #sameSpaceCandidates=%@, #totalCandidatesTested=%@", buf, 0x2Au);

    v26 = v35;
    v28 = v34;
    v25 = v38;
  }

  _Block_object_dispose(&v50, 8);
}

void __173__IRCandidateClassificationDetectorSameSpace_adjustSameSpaceParametersForCandidates_withSystemState_andHistoryEventsAsc_andMiLoPrediction_andNearbyDevicesContainer_andDate___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 candidate];
  v6 = [v4 isSameSpaceForCandidate:v5 basedOnMiLoPrediction:*(a1 + 40) andHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];

  v7 = *(a1 + 32);
  v8 = [v3 candidate];
  v9 = [v7 _isSameSpaceBrokeredDeviceForCandidate:v8 basedOnSystemState:*(a1 + 64) andHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];

  v10 = *(a1 + 32);
  v11 = [v3 candidate];
  v12 = [v10 _isSameSpaceBasedOnPDRFenceForCandidate:v11 basedOnSystemState:*(a1 + 64)];

  v13 = *(a1 + 32);
  v14 = [v3 candidate];
  v15 = [*(a1 + 72) nearbyDevices];
  v16 = [v13 _isSameSpaceForCandidate:v14 basedOnNearbyDevices:v15 andExpiryDate:*(a1 + 80) isUWB:1];

  v17 = *(a1 + 32);
  v18 = [v3 candidate];
  v19 = [*(a1 + 72) nearbyDevices];
  v20 = [v17 _isSameSpaceForCandidate:v18 basedOnNearbyDevices:v19 andExpiryDate:*(a1 + 88) isUWB:0];

  v21 = 0;
  if (+[IRPlatformInfo isTVOS])
  {
    v22 = *(a1 + 32);
    v23 = [v3 candidate];
    v21 = [v22 _isSameSpaceForCandidate:v23 basedOnHistoryEventsAsc:*(a1 + 48) andDate:*(a1 + 56)];
  }

  v24 = +[IRPreferences shared];
  v25 = [v24 miloRoomDetectionInCustomLOIEnabled];
  if ([v25 BOOLValue] & 1) != 0 || ((v6 ^ 1))
  {
  }

  else
  {
    v46 = v20;
    v26 = v16;
    v27 = v21;
    v28 = v6;
    v29 = v12;
    v30 = v9;
    v31 = [*(a1 + 64) locationSemanticUserSpecificPlaceType];

    v32 = v31 == 5;
    v9 = v30;
    v12 = v29;
    v6 = v28;
    v21 = v27;
    v16 = v26;
    v20 = v46;
    if (v32)
    {
      v33 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v34 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v49 = "#detector-same-space, ";
        v50 = 2112;
        v51 = v33;
        _os_log_impl(&dword_25543D000, v34, OS_LOG_TYPE_INFO, "%s[%@], MiLo room detection in custom LOI is disabled and LOI is custom, disabling sameSpaceBasedOnMiLo", buf, 0x16u);
      }

      v6 = 0;
    }
  }

  [v3 setSameSpaceBasedOnMiLo:v6];
  [v3 setSameSpaceBasedOnBrokeredLOI:v9];
  [v3 setSameSpaceBasedOnUWB:v16 != 0];
  [v3 setSameSpaceBasedOnBLE:v20 != 0];
  [v3 setSameSpaceBasedOnPDRFence:v12];
  [v3 setUwbRange:v16];
  [v3 setBleRange:v20];
  [v3 setSameSpaceBasedOnHistory:v21];
  [v3 setIsSameSpace:{objc_msgSend(*(a1 + 32), "_isSameSpaceCandidate:", v3)}];
  if ([v3 isSameSpace])
  {
    ++*(*(*(a1 + 96) + 8) + 24);
    v35 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v36 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      log = v36;
      v45 = [v3 candidate];
      v37 = [v45 name];
      v44 = [v3 candidate];
      [v44 candidateIdentifier];
      v38 = v47 = v35;
      v39 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v41 = [MEMORY[0x277CCABB0] numberWithBool:v12];
      v42 = [MEMORY[0x277CCABB0] numberWithBool:v21];
      *buf = 136317442;
      v49 = "#detector-same-space, ";
      v50 = 2112;
      v51 = v47;
      v52 = 2112;
      v53 = v37;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v39;
      v58 = 2112;
      v59 = v40;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v16;
      v64 = 2112;
      v65 = v20;
      v66 = 2112;
      v67 = v42;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_INFO, "%s[%@], SameSpaceCandidate: name: %@, identifier: %@, MiLo: %@, BrokeredDeviceInLOI: %@, PDRFence: %@, uwbRange: %@, bleRange: %@, history: %@", buf, 0x66u);

      v35 = v47;
    }
  }
}

- (BOOL)_isSameSpaceCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([candidateCopy sameSpaceBasedOnMiLo] & 1) != 0 || (objc_msgSend(candidateCopy, "sameSpaceBasedOnUWB") & 1) != 0 || (objc_msgSend(candidateCopy, "sameSpaceBasedOnBLE") & 1) != 0 || (objc_msgSend(candidateCopy, "sameSpaceBasedOnBrokeredLOI") & 1) != 0 || (objc_msgSend(candidateCopy, "sameSpaceBasedOnPDRFence"))
  {
    sameSpaceBasedOnHistory = 1;
  }

  else
  {
    sameSpaceBasedOnHistory = [candidateCopy sameSpaceBasedOnHistory];
  }

  return sameSpaceBasedOnHistory;
}

- (id)_isSameSpaceForCandidate:(id)candidate basedOnNearbyDevices:(id)devices andExpiryDate:(id)date isUWB:(BOOL)b
{
  candidateCopy = candidate;
  devicesCopy = devices;
  dateCopy = date;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x408F400000000000;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__8;
  v27[4] = __Block_byref_object_dispose__8;
  v28 = 0;
  nodes = [candidateCopy nodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke;
  v21[3] = &unk_2797E1B40;
  v13 = devicesCopy;
  v22 = v13;
  v14 = dateCopy;
  bCopy = b;
  v23 = v14;
  v24 = v27;
  v25 = &v29;
  [nodes enumerateObjectsUsingBlock:v21];

  v15 = +[IRPreferences shared];
  deviceRangeProximityThreshold = [v15 deviceRangeProximityThreshold];
  [deviceRangeProximityThreshold doubleValue];
  v18 = v17;

  if (v30[3] <= v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_2;
  v21 = &unk_2797E1B18;
  v4 = *(a1 + 32);
  v22 = *(a1 + 40);
  v5 = v3;
  v23 = v5;
  v6 = [v4 allWhere:&v18];
  v7 = v6;
  if (*(a1 + 64) != 1)
  {
    v11 = &__block_literal_global_30;
    goto LABEL_5;
  }

  v8 = [v6 firstWhere:{&__block_literal_global_11, v18, v19, v20, v21, v22}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = &__block_literal_global_27;
LABEL_5:
    v12 = [v7 firstWhere:{v11, v18, v19, v20, v21}];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (v15)
  {
    [v15 range];
    if (v16 <= *(*(*(a1 + 56) + 8) + 24))
    {
      [*(*(*(a1 + 48) + 8) + 40) range];
      *(*(*(a1 + 56) + 8) + 24) = v17;
    }
  }
}

uint64_t __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 measurementDate];
  v5 = [v4 isEarlierThan:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) computedIdsIdentifier];
    v8 = [v3 idsIdentifier];
    if ([v7 isEqual:v8])
    {
      v6 = 1;
    }

    else
    {
      v9 = [*(a1 + 40) computedMediaRemoteIdenfifier];
      v10 = [v3 mediaRemoteIdentifier];
      if ([v9 isEqual:v10])
      {
        v6 = 1;
      }

      else
      {
        v11 = [*(a1 + 40) computedMediaRouteIdentifier];
        v12 = [v3 mediaRemoteIdentifier];
        v6 = [v11 isEqual:v12];
      }
    }
  }

  return v6;
}

uint64_t __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [v2 isEqual:@"NIHomeDevice"];

  return v3;
}

BOOL __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isUWBProximityType:v2];

  return v3;
}

BOOL __112__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnNearbyDevices_andExpiryDate_isUWB___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 proximityType];
  v3 = [IRProximityProvider isBLEProximityType:v2];

  return v3;
}

- (BOOL)_isSameSpaceBrokeredDeviceForCandidate:(id)candidate basedOnSystemState:(id)state andHistoryEventsAsc:(id)asc andDate:(id)date
{
  candidateCopy = candidate;
  stateCopy = state;
  ascCopy = asc;
  dateCopy = date;
  if ([candidateCopy isBrokeredDevice])
  {
    v13 = +[IRPreferences shared];
    loiSameSpaceEventsTimeIntervalSeconds = [v13 loiSameSpaceEventsTimeIntervalSeconds];
    [loiSameSpaceEventsTimeIntervalSeconds doubleValue];
    v16 = [dateCopy dateByAddingTimeInterval:-v15];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __132__IRCandidateClassificationDetectorSameSpace__isSameSpaceBrokeredDeviceForCandidate_basedOnSystemState_andHistoryEventsAsc_andDate___block_invoke;
    v21[3] = &unk_2797E1B68;
    v22 = candidateCopy;
    v23 = v16;
    v24 = stateCopy;
    v17 = v16;
    v18 = [ascCopy firstWhere:v21];
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __132__IRCandidateClassificationDetectorSameSpace__isSameSpaceBrokeredDeviceForCandidate_basedOnSystemState_andHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [v3 date];
  v8 = [v7 isEarlierThan:*(a1 + 40)];

  if (v8)
  {
    goto LABEL_3;
  }

  v11 = [v3 systemState];
  if ([v11 locationSemanticUserSpecificPlaceType] != 5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v12 = [*(a1 + 48) locationSemanticUserSpecificPlaceType];

  if (v12 == 5)
  {
    v13 = [v3 systemState];
    v14 = [v13 locationSemanticLoiIdentifier];
    v15 = [*(a1 + 48) locationSemanticLoiIdentifier];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v11 = [v3 event];
      v9 = [v11 isUserIntentionEvent];
LABEL_10:

      goto LABEL_4;
    }
  }

LABEL_3:
  v9 = 0;
LABEL_4:

  return v9;
}

- (BOOL)_isSameSpaceBasedOnPDRFenceForCandidate:(id)candidate basedOnSystemState:(id)state
{
  stateCopy = state;
  if ([candidate isBrokeredDevice])
  {
    pdrFenceActive = [stateCopy pdrFenceActive];
  }

  else
  {
    pdrFenceActive = 0;
  }

  return pdrFenceActive;
}

- (BOOL)_isSameSpaceForCandidate:(id)candidate basedOnHistoryEventsAsc:(id)asc andDate:(id)date
{
  candidateCopy = candidate;
  dateCopy = date;
  ascCopy = asc;
  v10 = +[IRPreferences shared];
  historySameSpaceEventsTimeIntervalSeconds = [v10 historySameSpaceEventsTimeIntervalSeconds];
  [historySameSpaceEventsTimeIntervalSeconds doubleValue];
  v13 = [dateCopy dateByAddingTimeInterval:-v12];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnHistoryEventsAsc_andDate___block_invoke;
  v17[3] = &unk_2797E1AA0;
  v18 = candidateCopy;
  v19 = v13;
  v14 = v13;
  v15 = candidateCopy;
  LOBYTE(historySameSpaceEventsTimeIntervalSeconds) = [ascCopy containsObjectPassingTest:v17];

  return historySameSpaceEventsTimeIntervalSeconds;
}

uint64_t __103__IRCandidateClassificationDetectorSameSpace__isSameSpaceForCandidate_basedOnHistoryEventsAsc_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v3 date];
    v8 = [v7 isLaterThanOrEqualTo:*(a1 + 40)];

    if (v8)
    {
      v9 = [v3 event];
      v8 = [v9 isUserIntentionEvent];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end