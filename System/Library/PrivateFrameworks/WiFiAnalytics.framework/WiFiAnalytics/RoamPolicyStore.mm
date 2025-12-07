@interface RoamPolicyStore
+ (BOOL)doWeHaveEnoughSamplesToBuildChanList:(unint64_t)list numRoamSamples:(unint64_t)samples;
+ (BOOL)doWeHaveEnoughSamplesToBuildRoamCache:(unint64_t)cache numRoamSamples:(unint64_t)samples;
+ (BOOL)doWeHaveEnoughSamplesToDeriveRSSITrigger:(unint64_t)trigger numRoamSamples:(unint64_t)samples;
+ (id)extractChannelList:(id)list channelKeyPath:(id)path bandKeyPath:(id)keyPath logFor:(const char *)for;
+ (id)neighborChannelsAsArrayOfChanInfo:(id)info;
+ (id)neighborChannelsOf:(id)of;
+ (id)rangeStringWithRssiLevel:(unint64_t)level;
- (BOOL)buildRoamCacheInfoForBss:(id)bss numRoamSamples:(unint64_t)samples withError:(id *)error;
- (BOOL)buildRoamPoliciesForSourceBSS:(id)s numRoamSamples:(unint64_t)samples withError:(id *)error;
- (BOOL)monitorDeploymentChangesAfterRoam:(id)roam;
- (RoamPolicyStore)initWithAnalyticsStore:(id)store;
- (id)deriveRoamInfo:(id)info numRoamSamplesCollectedSoFar:(unint64_t)far;
- (void)checkForFrequentRoams:(unint64_t)roams date:(id)date motionState:(int64_t)state;
- (void)deriveRoamDeltaFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count;
- (void)listOutBTMRoams:(unint64_t)roams;
- (void)listOutLazyRoamScanInfo:(id)info neighborCount:(unint64_t)count sourceRssi:(int64_t)rssi;
- (void)listOutMostUsedRoamReasons:(unint64_t)reasons roamReason:(unint64_t)reason;
- (void)listOutMostUsedSourceRssi:(id)rssi neighborCount:(unint64_t)count sourceRssi:(int64_t)sourceRssi;
- (void)listOutReassocRoams:(id)roams neighborCount:(unint64_t)count sourceRssi:(int64_t)rssi;
- (void)listOutTimeSpentOnBss:(unint64_t)bss timeSpentOnBss:(unint64_t)onBss motionState:(int64_t)state;
- (void)locateTheNeighbor:(unint64_t)neighbor cacheRssi:(int64_t)rssi;
- (void)resetAdaptiveRoamingStateMachine:(id)machine;
- (void)setDeploymentFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count;
- (void)setDeploymentFromRoamInfo:(id)info neighborCount:(unint64_t)count;
- (void)storeNeighborsInfoLearningsFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count;
- (void)storeNeighborsInfoLearningsFromRoamInfo:(id)info neighborCount:(unint64_t)count;
- (void)updateNeighborChannelsFromRoamTargetsChannels:(id)channels bss:(id)bss;
- (void)updateNeighborChannelsInCoreDataWith:(id)with bss:(id)bss;
@end

@implementation RoamPolicyStore

- (RoamPolicyStore)initWithAnalyticsStore:(id)store
{
  v16 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = RoamPolicyStore;
  v6 = [(RoamPolicyStore *)&v11 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_roamPolicyMOHandler, store);
  if (!v7->_roamPolicyMOHandler)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[RoamPolicyStore initWithAnalyticsStore:]";
      v14 = 1024;
      v15 = 113;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error getting _roamPolicyMOHandler", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v8 = v7;
LABEL_8:

  return v8;
}

+ (BOOL)doWeHaveEnoughSamplesToBuildChanList:(unint64_t)list numRoamSamples:(unint64_t)samples
{
  v4 = samples >> 1;
  if (!samples)
  {
    v4 = 50;
  }

  return v4 <= list;
}

+ (BOOL)doWeHaveEnoughSamplesToBuildRoamCache:(unint64_t)cache numRoamSamples:(unint64_t)samples
{
  samplesCopy = 100;
  if (samples)
  {
    samplesCopy = samples;
  }

  return samplesCopy <= cache;
}

+ (BOOL)doWeHaveEnoughSamplesToDeriveRSSITrigger:(unint64_t)trigger numRoamSamples:(unint64_t)samples
{
  samplesCopy = 100;
  if (samples)
  {
    samplesCopy = samples;
  }

  return samplesCopy <= trigger;
}

- (BOOL)buildRoamPoliciesForSourceBSS:(id)s numRoamSamples:(unint64_t)samples withError:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v9 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v9))
  {
    bssid = [sCopy bssid];
    *buf = 138412290;
    v63 = bssid;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamPoliciesForNetwork:", "%@", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  if (samples)
  {
    samplesCopy = samples;
  }

  else
  {
    samplesCopy = 100;
  }

  network = [sCopy network];
  didDeploymentChange = [network didDeploymentChange];

  if (didDeploymentChange)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v64 = 1024;
      *v65 = 156;
      *&v65[4] = 2048;
      *&v65[6] = 0;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment has changed, Accumulating more roam objects, CurCnt=%lu", buf, 0x1Cu);
    }
  }

  v55 = v11;
  errorCopy = error;
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  persistentContainer = [roamPolicyMOHandler persistentContainer];
  v18 = +[RoamMO entity];
  v57 = sCopy;
  v19 = [RoamMO successfulRoamsOutOf:sCopy];
  v60 = 0;
  v20 = [persistentContainer countObjects:v18 withPredicate:v19 withError:&v60];
  v21 = v60;

  if (v21)
  {
    v34 = 0;
    goto LABEL_37;
  }

  v22 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v64 = 1024;
    *v65 = 168;
    *&v65[4] = 2048;
    *&v65[6] = samplesCopy;
    v66 = 2048;
    v67 = v20;
    _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Building Roam Policies: NumRoamSamples to collect = %lu numRoamSamplesCollectedSoFar = %lu", buf, 0x26u);
  }

  v23 = [objc_opt_class() doWeHaveEnoughSamplesToBuildChanList:v20 numRoamSamples:samples];
  v24 = WALogCategoryDeviceStoreHandle();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v26 = v57;
  if ((v23 & 1) == 0)
  {
    if (v25)
    {
      *buf = 136446722;
      v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v64 = 1024;
      *v65 = 173;
      *&v65[4] = 2048;
      *&v65[6] = v20;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to calculate Adaptive roaming parameters. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

    goto LABEL_42;
  }

  samplesCopy2 = samples;
  if (v25)
  {
    bssid2 = [v57 bssid];
    *buf = 136446722;
    v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v64 = 1024;
    *v65 = 176;
    *&v65[4] = 2112;
    *&v65[6] = bssid2;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Derive Channel Info for %@", buf, 0x1Cu);
  }

  roamPolicyMOHandler2 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  persistentContainer2 = [roamPolicyMOHandler2 persistentContainer];
  v30 = +[RoamMO entity];
  v31 = [RoamMO roamsOutOf:v57];
  v32 = +[WAPersistentContainer sortByNewestDateFirst];
  v61 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v59 = 0;
  v34 = [persistentContainer2 fetchDistinctPropertiesIn:v30 withPredicate:v31 withSorting:v33 withPrefetchedProperties:&unk_1F483E698 withLimit:v20 withError:&v59];
  v21 = v59;

  if (v21)
  {
LABEL_37:
    v54 = 0;
    v38 = 0;
    v44 = 0;
    v45 = errorCopy;
    v26 = v57;
    v46 = v55;
    goto LABEL_29;
  }

  v26 = v57;
  if (!v34)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      bssid3 = [v57 bssid];
      *buf = 136446722;
      v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v64 = 1024;
      *v65 = 184;
      *&v65[4] = 2112;
      *&v65[6] = bssid3;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:found no roams from %@", buf, 0x1Cu);
    }

LABEL_42:
    v34 = 0;
    v54 = 0;
LABEL_43:
    v44 = 0;
LABEL_49:
    v46 = v55;
    v45 = errorCopy;

    v38 = 0;
    v21 = 0;
    goto LABEL_29;
  }

  v35 = [objc_opt_class() extractChannelList:v34 channelKeyPath:@"target.mostRecentChannel" bandKeyPath:@"target.mostRecentBand" logFor:"-[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]"];
  v36 = [v35 count];
  v37 = WALogCategoryDeviceStoreHandle();
  v24 = v37;
  v54 = v35;
  if (!v36)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v64 = 1024;
      *v65 = 190;
      *&v65[4] = 2112;
      *&v65[6] = v34;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultChannelList empty: %@", buf, 0x1Cu);
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v64 = 1024;
    *v65 = 192;
    *&v65[4] = 2112;
    *&v65[6] = v35;
    v66 = 2112;
    v67 = v57;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:calling updateNeighborChannelsFromRoamTargetsChannels:%@ bss:%@", buf, 0x26u);
  }

  [(RoamPolicyStore *)self updateNeighborChannelsFromRoamTargetsChannels:v35 bss:v57];
  if (([objc_opt_class() doWeHaveEnoughSamplesToDeriveRSSITrigger:v20 numRoamSamples:samplesCopy2] & 1) == 0)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v64 = 1024;
      *v65 = 198;
      *&v65[4] = 2048;
      *&v65[6] = v20;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to calculate RSSI Trigger. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

    v44 = 1;
    goto LABEL_49;
  }

  v38 = [(RoamPolicyStore *)self deriveRoamInfo:v57 numRoamSamplesCollectedSoFar:v20];
  if ([v38 count])
  {
    v39 = 0;
    v40 = &qword_1EC2AB278;
    do
    {
      v41 = [v38 objectAtIndex:v39];
      v42 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *v40;
        *buf = 136446978;
        v63 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
        v64 = 1024;
        *v65 = 206;
        *&v65[4] = 2112;
        *&v65[6] = v41;
        v66 = 2048;
        v67 = v43;
        _os_log_impl(&dword_1C8460000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: BSSID: %@ Occurences: %ld", buf, 0x26u);
      }

      ++v39;
      v40 += 44;
    }

    while (v39 < [v38 count]);
    v21 = 0;
    v44 = 1;
    v45 = errorCopy;
    v26 = v57;
    v46 = v55;
  }

  else
  {
    v21 = 0;
    v44 = 1;
    v46 = v55;
    v45 = errorCopy;
  }

LABEL_29:
  v47 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v47))
  {
    bssid4 = [v26 bssid];
    v49 = bssid4;
    v50 = @"NO";
    if (v44)
    {
      v50 = @"YES";
    }

    *buf = 138412546;
    v63 = bssid4;
    v64 = 2112;
    *v65 = v50;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamPoliciesForNetwork:", "%@ hasUpdated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v46);
  if (v45)
  {
    v51 = v21;
    *v45 = v21;
  }

  return v44;
}

- (void)updateNeighborChannelsFromRoamTargetsChannels:(id)channels bss:(id)bss
{
  v24 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  bssCopy = bss;
  v7 = objc_autoreleasePoolPush();
  if (!channelsCopy)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v14 = 136446466;
    v15 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v16 = 1024;
    v17 = 219;
    v13 = "%{public}s::%d:targetChannels nil";
LABEL_10:
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, v13, &v14, 0x12u);
    goto LABEL_5;
  }

  if (![channelsCopy count])
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v14 = 136446466;
    v15 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v16 = 1024;
    v17 = 220;
    v13 = "%{public}s::%d:targetChannels is empty";
    goto LABEL_10;
  }

  [bssCopy setNeighborChannels:channelsCopy];
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bssid = [bssCopy bssid];
    network = [bssCopy network];
    ssid = [network ssid];
    neighborChannels = [bssCopy neighborChannels];
    v14 = 136447234;
    v15 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v16 = 1024;
    v17 = 224;
    v18 = 2112;
    v19 = bssid;
    v20 = 2112;
    v21 = ssid;
    v22 = 2112;
    v23 = neighborChannels;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[BSS:%@ SSID:%@] Updated neighborChannels: %@", &v14, 0x30u);
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
}

- (id)deriveRoamInfo:(id)info numRoamSamplesCollectedSoFar:(unint64_t)far
{
  v95[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  bzero(&roamInfo, 0xDC0uLL);
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  persistentContainer = [roamPolicyMOHandler persistentContainer];
  v9 = +[RoamMO entity];
  v73 = infoCopy;
  v10 = [RoamMO successfulRoamsOutOf:infoCopy];
  v11 = +[WAPersistentContainer sortByNewestDateFirst];
  v95[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
  v94[0] = @"target.bssid";
  v94[1] = @"fwReason";
  v94[2] = @"sourceRssi";
  v94[3] = @"sourceTimeSpentSecs";
  v94[4] = @"motionState";
  v94[5] = @"date";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:6];
  v83 = 0;
  v14 = [persistentContainer fetchDistinctPropertiesIn:v9 withPredicate:v10 withSorting:v12 withPrefetchedProperties:v13 withLimit:far withError:&v83];
  v15 = v83;

  v71 = v15;
  if (v15)
  {
    goto LABEL_72;
  }

  if (!v14)
  {
    v43 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    bssid = [v73 bssid];
    *buf = 136446722;
    v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v86 = 1024;
    v87 = 262;
    v88 = 2112;
    v89 = bssid;
    v67 = "%{public}s::%d:found no successful roams from %@";
    v68 = v43;
    goto LABEL_69;
  }

  v17 = array;
  v74 = v14;
  if ([v14 count])
  {
    v18 = 0;
    v19 = 0;
    *&v16 = 136446722;
    v70 = v16;
    v20 = 0x1E696A000uLL;
    do
    {
      v21 = [v14 objectAtIndex:{v18, v70, v71}];
      v22 = [v21 valueForKey:@"target.bssid"];
      if (!v22)
      {
        goto LABEL_33;
      }

      if (v19 > 9)
      {
        goto LABEL_14;
      }

      if ([v17 containsObject:v22])
      {
        if (v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        [v17 addObject:v22];
        uTF8String = [v22 UTF8String];
        v24 = strlen(uTF8String);
        if (v24 < 0x14)
        {
          memcpy(&roamInfo + 352 * v19++, uTF8String, v24);
LABEL_14:
          v75 = v18;
          v25 = 0;
          v26 = &roamInfo;
          v80 = v22;
          v81 = v19;
          while (2)
          {
            v27 = [*(v20 + 3776) stringWithUTF8String:v26];
            if (![v22 isEqual:v27])
            {
              goto LABEL_27;
            }

            v28 = [v21 valueForKey:@"fwReason"];
            unsignedIntegerValue = [v28 unsignedIntegerValue];

            v30 = [v21 valueForKey:@"sourceRssi"];
            integerValue = [v30 integerValue];

            v32 = [v21 valueForKey:@"sourceTimeSpentSecs"];
            unsignedIntegerValue2 = [v32 unsignedIntegerValue];

            v34 = [v21 valueForKey:@"motionState"];
            integerValue2 = [v34 integerValue];

            v36 = [v21 valueForKey:@"date"];
            ++v26[39];
            [(RoamPolicyStore *)self listOutMostUsedRoamReasons:v25 roamReason:unsignedIntegerValue];
            [(RoamPolicyStore *)self listOutTimeSpentOnBss:v25 timeSpentOnBss:unsignedIntegerValue2 motionState:integerValue2];
            [(RoamPolicyStore *)self checkForFrequentRoams:v25 date:v36 motionState:integerValue2];
            if (unsignedIntegerValue <= -528348153)
            {
              if (unsignedIntegerValue == -528348159)
              {
                [(RoamPolicyStore *)self listOutMostUsedSourceRssi:array2 neighborCount:v25 sourceRssi:integerValue];
                goto LABEL_26;
              }

              if (unsignedIntegerValue != -528348154)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (unsignedIntegerValue == -528348152)
              {
                [(RoamPolicyStore *)self listOutLazyRoamScanInfo:array3 neighborCount:v25 sourceRssi:integerValue];
                goto LABEL_26;
              }

              if (unsignedIntegerValue != -528348149)
              {
                if (unsignedIntegerValue == -528348141)
                {
                  [(RoamPolicyStore *)self listOutReassocRoams:array4 neighborCount:v25 sourceRssi:integerValue];
                }

LABEL_26:

                v22 = v80;
                v19 = v81;
                v20 = 0x1E696A000;
LABEL_27:

                ++v25;
                v26 += 44;
                if (v19 == v25)
                {
                  v17 = array;
                  v14 = v74;
                  v18 = v75;
                  goto LABEL_33;
                }

                continue;
              }
            }

            break;
          }

          [(RoamPolicyStore *)self listOutBTMRoams:v25];
          goto LABEL_26;
        }

        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = v70;
          v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
          v86 = 1024;
          v87 = 279;
          v88 = 2048;
          v89 = v24;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Length exceeded limit:%lu", buf, 0x1Cu);
        }
      }

      v17 = array;
LABEL_33:

      ++v18;
    }

    while (v18 < [v14 count]);
  }

  v38 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    bssid2 = [v73 bssid];
    *buf = 136446722;
    v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v86 = 1024;
    v87 = 338;
    v88 = 2112;
    v89 = bssid2;
    _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Neighbors of BSS %@:", buf, 0x1Cu);
  }

  v40 = array;
  if ([array count])
  {
    v41 = 0;
    v42 = &qword_1EC2AB278;
    while (1)
    {
      v43 = [v40 objectAtIndex:v41];
      v44 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *v42;
        *buf = 136446978;
        v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
        v86 = 1024;
        v87 = 341;
        v88 = 2112;
        v89 = v43;
        v90 = 2048;
        v91 = v45;
        _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: BSSID: %@ Occurences: %ld", buf, 0x26u);
      }

      if (*v42 <= 19 && !self->_roamPolicyMOHandler)
      {
        break;
      }

      ++v41;
      v40 = array;
      v42 += 44;
      if (v41 >= [array count])
      {
        goto LABEL_43;
      }
    }

    bssid = WALogCategoryDeviceStoreHandle();
    v14 = v74;
    if (!os_log_type_enabled(bssid, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 136446722;
    v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v86 = 1024;
    v87 = 343;
    v88 = 2112;
    v89 = v43;
    v67 = "%{public}s::%d:Not enough roam samples with %@";
    v68 = bssid;
LABEL_69:
    _os_log_impl(&dword_1C8460000, v68, OS_LOG_TYPE_ERROR, v67, buf, 0x1Cu);
LABEL_70:

LABEL_71:
LABEL_72:
    v69 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v69))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v69, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "failed", buf, 2u);
    }

    v64 = 0;
    v58 = v73;
    v63 = array;
    v46 = array2;
    goto LABEL_64;
  }

LABEL_43:
  v46 = array2;
  v47 = [array2 count];
  if (v47)
  {
    v48 = v47;
    while (1)
    {
      v49 = [v46 valueForKeyPath:@"@max.self"];
      intValue = [v49 intValue];

      v51 = [MEMORY[0x1E696AD98] numberWithInteger:intValue];
      v52 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v46];
      v53 = [v52 countForObject:v51];
      if (intValue <= -77)
      {
        v54 = -77;
      }

      else
      {
        v54 = intValue;
      }

      v55 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
        v86 = 1024;
        v87 = 361;
        v88 = 2048;
        v89 = v48;
        v90 = 2048;
        v91 = v54;
        v92 = 2048;
        v93 = v53;
        _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RssiObjects =%ld RSSI value =%ld numOccurances =%lu", buf, 0x30u);
      }

      if (v53 > (((((5 * v48) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2)
      {
        break;
      }

      v46 = array2;
      [array2 removeObject:v51];
      v48 = [array2 count];

      if (!v48)
      {
        goto LABEL_59;
      }
    }

    v56 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
      v86 = 1024;
      v87 = 364;
      v88 = 2048;
      v89 = v48;
      v90 = 2048;
      v91 = v54;
      v92 = 2048;
      v93 = v53;
      _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RssiObjects =%ld Best RSSI value =%ld numOccurances =%lu", buf, 0x30u);
    }

    if (v48 == 1)
    {
      v54 = -70;
    }

    v46 = array2;
  }

  else
  {
    v54 = -128;
  }

LABEL_59:
  v57 = WALogCategoryDeviceStoreHandle();
  v58 = v73;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    bssid3 = [v73 bssid];
    *buf = 136446978;
    v85 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v86 = 1024;
    v87 = 377;
    v88 = 2112;
    v89 = bssid3;
    v90 = 2048;
    v91 = v54;
    _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSSID %@ Derived RSSI =%ld", buf, 0x26u);
  }

  [v73 setRoamTriggerRssi:v54];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  [v73 setNeighborBSSIDs:v60];

  roamPolicyMOHandler2 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [roamPolicyMOHandler2 updateManagedObjectContextWithoutSave];

  -[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:](self, "storeNeighborsInfoLearningsFromRoamInfo:neighborCount:", v73, [array count]);
  v62 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v62))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v62, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "", buf, 2u);
  }

  v63 = array;
  v64 = array;
  v14 = v74;
LABEL_64:

  objc_autoreleasePoolPop(context);

  return v64;
}

- (void)listOutMostUsedRoamReasons:(unint64_t)reasons roamReason:(unint64_t)reason
{
  reasonCopy = reason;
  v30 = *MEMORY[0x1E69E9840];
  switch(reason)
  {
    case 0xE0820C00:
      break;
    case 0xE0820C01:
      ++*(&roamInfo + 44 * reasons + 3);
      break;
    case 0xE0820C02:
    case 0xE0820C03:
    case 0xE0820C13:
      ++*(&roamInfo + 44 * reasons + 7);
      break;
    case 0xE0820C04:
    case 0xE0820C05:
      ++*(&roamInfo + 44 * reasons + 6);
      break;
    case 0xE0820C06:
    case 0xE0820C0B:
      ++*(&roamInfo + 44 * reasons + 4);
      break;
    case 0xE0820C07:
      ++*(&roamInfo + 44 * reasons + 9);
      break;
    case 0xE0820C08:
      ++*(&roamInfo + 44 * reasons + 5);
      break;
    case 0xE0820C09:
      ++*(&roamInfo + 44 * reasons + 10);
      break;
    case 0xE0820C0A:
      ++*(&roamInfo + 44 * reasons + 11);
      break;
    case 0xE0820C0C:
      ++*(&roamInfo + 44 * reasons + 12);
      break;
    case 0xE0820C0D:
      ++*(&roamInfo + 44 * reasons + 13);
      break;
    case 0xE0820C0E:
      ++*(&roamInfo + 44 * reasons + 14);
      break;
    case 0xE0820C0F:
      ++*(&roamInfo + 44 * reasons + 15);
      break;
    case 0xE0820C10:
      ++*(&roamInfo + 44 * reasons + 16);
      break;
    case 0xE0820C11:
      ++*(&roamInfo + 44 * reasons + 17);
      break;
    case 0xE0820C12:
      ++*(&roamInfo + 44 * reasons + 18);
      break;
    default:
      v6 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = 136446722;
        v15 = "[RoamPolicyStore listOutMostUsedRoamReasons:roamReason:]";
        v16 = 1024;
        v17 = 466;
        v18 = 1024;
        v19 = reasonCopy;
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:This Roam reason %u is not categorized", &v14, 0x18u);
      }

      break;
  }

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = (&roamInfo + 352 * reasons);
    v10 = v8[6];
    v9 = v8[7];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    v14 = 136448002;
    v15 = "[RoamPolicyStore listOutMostUsedRoamReasons:roamReason:]";
    v16 = 1024;
    v17 = 470;
    v18 = 1024;
    v19 = reasonCopy;
    v20 = 2048;
    v21 = v11;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v12;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_INFO, "%{public}s::%d:Roam Reason = %u, LowRSSI = %ld LinkLossSuppression = %ld BeaconsLost = %ld roamDueToBTM = %ld LazyRoamScan = %ld", &v14, 0x4Au);
  }
}

- (void)listOutMostUsedSourceRssi:(id)rssi neighborCount:(unint64_t)count sourceRssi:(int64_t)sourceRssi
{
  v55 = *MEMORY[0x1E69E9840];
  rssiCopy = rssi;
  v9 = rssiCopy;
  if (sourceRssi <= -70)
  {
    v10 = 0;
    v11 = &roamInfo + 352 * count;
    v32 = rssiCopy;
    v33 = v11 + 200;
    v34 = v11 + 152;
    v12 = v11 + 192;
    v13 = v11 + 184;
    v14 = v11 + 176;
    v15 = v11 + 168;
    v16 = v11 + 160;
    v17 = -70;
    do
    {
      v18 = v17;
      v17 = roamOriginRssiLevels[v10 + 1];
      if ([(RoamPolicyStore *)self inRange:v18 high:v17 value:sourceRssi])
      {
        if (v10 == 4)
        {
          v19 = v13;
        }

        else
        {
          v19 = v12;
        }

        v20 = v33;
        v21 = v34;
        if ((v10 - 6) >= 2)
        {
          v20 = v19;
        }

        if (v10 == 2)
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        if (v10)
        {
          v21 = v16;
        }

        if (v10 <= 1)
        {
          v22 = v21;
        }

        if (v10 <= 3)
        {
          v20 = v22;
        }

        ++*v20;
      }

      ++v10;
    }

    while (v10 != 8);
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *v34;
      v25 = *(v34 + 1);
      v26 = *(v34 + 2);
      v27 = *(v34 + 3);
      v28 = *(v34 + 4);
      v29 = *(v34 + 5);
      v30 = *(v34 + 6);
      *buf = 136448514;
      v36 = "[RoamPolicyStore listOutMostUsedSourceRssi:neighborCount:sourceRssi:]";
      v37 = 1024;
      v38 = 513;
      v39 = 2048;
      sourceRssiCopy = sourceRssi;
      v41 = 2048;
      v42 = v24;
      v43 = 2048;
      v44 = v25;
      v45 = 2048;
      v46 = v26;
      v47 = 2048;
      v48 = v27;
      v49 = 2048;
      v50 = v28;
      v51 = 2048;
      v52 = v29;
      v53 = 2048;
      v54 = v30;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_INFO, "%{public}s::%d:Source RSSI %ld HighRSSI %ld UpperHigh %ld Optimum %ld UpperOptimim %ld Mid %ld UpperMid %ld Low %ld", buf, 0x62u);
    }

    v31 = [MEMORY[0x1E696AD98] numberWithInt:sourceRssi];
    v9 = v32;
    [v32 addObject:v31];
  }
}

- (void)listOutTimeSpentOnBss:(unint64_t)bss timeSpentOnBss:(unint64_t)onBss motionState:(int64_t)state
{
  v31 = *MEMORY[0x1E69E9840];
  if (onBss > 0x14)
  {
    if (onBss > 0x3C)
    {
      if (onBss > 0x78)
      {
        if (onBss > 0x1F4)
        {
          if (onBss > 0x258)
          {
            goto LABEL_13;
          }

          v7 = &roamInfo + 352 * bss + 288;
        }

        else
        {
          v7 = &roamInfo + 352 * bss + 280;
        }
      }

      else
      {
        v7 = &roamInfo + 352 * bss + 272;
      }
    }

    else
    {
      v7 = &roamInfo + 352 * bss + 264;
    }
  }

  else
  {
    if (state)
    {
      goto LABEL_13;
    }

    v7 = &roamInfo + 352 * bss + 256;
  }

  ++*v7;
LABEL_13:
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = (&roamInfo + 352 * bss);
    v10 = v9[32];
    v11 = v9[33];
    v12 = v9[34];
    v13 = v9[35];
    v14 = v9[36];
    v15 = 136448002;
    v16 = "[RoamPolicyStore listOutTimeSpentOnBss:timeSpentOnBss:motionState:]";
    v17 = 1024;
    v18 = 538;
    v19 = 2048;
    onBssCopy = onBss;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2048;
    v30 = v14;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:TimeSpent in Seconds %ld numRoamDurLow %ld  numRoamDurUpperLow %ld numRoamDurMid %ld numRoamDurUpperMid %ld numRoamDurHigh %ld", &v15, 0x4Eu);
  }
}

- (void)checkForFrequentRoams:(unint64_t)roams date:(id)date motionState:(int64_t)state
{
  v29 = *MEMORY[0x1E69E9840];
  [date timeIntervalSinceReferenceDate];
  v8 = &roamInfo + 352 * roams;
  *(v8 + 38) = v7;
  if (state <= 1 && *(v8 + 37) != 0.0)
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v8 + 37)];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v8 + 38)];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 136447490;
      v18 = "[RoamPolicyStore checkForFrequentRoams:date:motionState:]";
      v19 = 1024;
      v20 = 555;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_INFO, "%{public}s::%d:BSS %@ PrevDate %@ newDate %@ Difference %f", &v17, 0x3Au);
    }

    v15 = checkForFrequentRoams_date_motionState__frequentRoamCount;
    if (v12 < 15.0)
    {
      v15 = ++checkForFrequentRoams_date_motionState__frequentRoamCount;
    }

    if (v15 >= 11)
    {
      v16 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 136446722;
        v18 = "[RoamPolicyStore checkForFrequentRoams:date:motionState:]";
        v19 = 1024;
        v20 = 561;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:Frequent RoamCandidate %@", &v17, 0x1Cu);
      }

      checkForFrequentRoams_date_motionState__frequentRoamCount = 0;
    }

    v7 = *(v8 + 38);
  }

  *(v8 + 37) = v7;
}

- (void)listOutLazyRoamScanInfo:(id)info neighborCount:(unint64_t)count sourceRssi:(int64_t)rssi
{
  v61 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = infoCopy;
  if (rssi && rssi >= -70)
  {
    v10 = 0;
    v11 = &roamInfo + 352 * count;
    v12 = v11 + 248;
    v41 = infoCopy;
    v42 = v11 + 208;
    v13 = v11 + 240;
    v14 = v11 + 232;
    v15 = v11 + 224;
    v16 = v11 + 216;
    v17 = -10;
    do
    {
      v18 = v17;
      v17 = lazyRoamOriginRssiLevels[v10 + 1];
      if ([(RoamPolicyStore *)self inRange:v18 high:v17 value:rssi, v41])
      {
        if (v10 == 4)
        {
          v19 = v13;
        }

        else
        {
          v19 = v12;
        }

        if (v10 == 3)
        {
          v19 = v14;
        }

        if (v10 == 1)
        {
          v20 = v16;
        }

        else
        {
          v20 = v15;
        }

        if (!v10)
        {
          v20 = v42;
        }

        if (v10 <= 2)
        {
          v19 = v20;
        }

        ++*v19;
      }

      ++v10;
    }

    while (v10 != 6);
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *v42;
      v23 = *(v42 + 1);
      v24 = *(v42 + 2);
      v25 = *(v42 + 3);
      v26 = *(v42 + 4);
      v27 = *(v42 + 5);
      *buf = 136448258;
      v44 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v45 = 1024;
      v46 = 601;
      v47 = 2048;
      rssiCopy = rssi;
      v49 = 2048;
      v50 = v22;
      v51 = 2048;
      v52 = v23;
      v53 = 2048;
      v54 = v24;
      v55 = 2048;
      v56 = v25;
      v57 = 2048;
      v58 = v26;
      v59 = 2048;
      v60 = v27;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_INFO, "%{public}s::%d:Lazy Roam: Source RSSI %ld HighRSSI %ld UpperHigh %ld Optimum %ld UpperOptimim %ld Mid %ld UpperMid %ld", buf, 0x58u);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithInt:rssi];
    v9 = v41;
    [v41 addObject:v28];

    v29 = *v42;
    v30 = *(v42 + 1);
    v32 = *(v42 + 2);
    v31 = *(v42 + 3);
    v34 = *(v42 + 4);
    v33 = *(v42 + 5);
    v35 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      if (v29 <= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v29;
      }

      if (v36 <= v32)
      {
        v36 = v32;
      }

      if (v36 <= v31)
      {
        v36 = v31;
      }

      if (v36 <= v34)
      {
        v36 = v34;
      }

      if (v36 <= v33)
      {
        v36 = v33;
      }

      *buf = 136446722;
      v44 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v45 = 1024;
      v46 = 633;
      v47 = 2048;
      rssiCopy = v36 & ~(v36 >> 63);
      v37 = "%{public}s::%d:Largest LazyRoam Bin is %ld\n";
      v38 = v35;
      v39 = OS_LOG_TYPE_INFO;
      v40 = 28;
      goto LABEL_36;
    }
  }

  else
  {
    v35 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v44 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v45 = 1024;
      v46 = 572;
      v37 = "%{public}s::%d:Continue";
      v38 = v35;
      v39 = OS_LOG_TYPE_DEBUG;
      v40 = 18;
LABEL_36:
      _os_log_impl(&dword_1C8460000, v38, v39, v37, buf, v40);
    }
  }
}

- (void)listOutReassocRoams:(id)roams neighborCount:(unint64_t)count sourceRssi:(int64_t)rssi
{
  v6 = MEMORY[0x1E696AD98];
  roamsCopy = roams;
  v8 = [v6 numberWithInt:rssi];
  [roamsCopy addObject:v8];
}

- (void)listOutBTMRoams:(unint64_t)roams
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = &roamInfo + 352 * roams;
  if (*(v3 + 4) > 50 * roams / 0x64)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
      v6 = 136446722;
      v7 = "[RoamPolicyStore listOutBTMRoams:]";
      v8 = 1024;
      v9 = 646;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:This BSS %@ Object experieces too many BTM's", &v6, 0x1Cu);
    }
  }
}

- (BOOL)monitorDeploymentChangesAfterRoam:(id)roam
{
  v143[1] = *MEMORY[0x1E69E9840];
  roamCopy = roam;
  v84 = objc_autoreleasePoolPush();
  neighborCache = [roamCopy neighborCache];
  selfCopy = self;
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  persistentContainer = [roamPolicyMOHandler persistentContainer];
  v7 = +[RoamMO entity];
  v86 = roamCopy;
  source = [roamCopy source];
  v9 = [RoamMO roamsOutOf:source];
  v10 = +[WAPersistentContainer sortByNewestDateFirst];
  v143[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:1];
  v142[0] = @"neighborCache";
  v142[1] = @"cacheChannel";
  v142[2] = @"cacheChannelFlags";
  v142[3] = @"cacheRssiBin";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:4];
  v126 = 0;
  v13 = [persistentContainer fetchDistinctPropertiesIn:v7 withPredicate:v9 withSorting:v11 withPrefetchedProperties:v12 withLimit:100 withError:&v126];
  v14 = v126;

  if (v14)
  {
    v90 = 0;
    v78 = 0;
    v77 = v84;
    goto LABEL_91;
  }

  if (!v13)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      source2 = [v86 source];
      bssid = [source2 bssid];
      *buf = 136446722;
      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v131 = 1024;
      v132 = 670;
      v133 = 2112;
      v134 = bssid;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:found no roams from originBSS:%@ (should have found at least the current one)", buf, 0x1Cu);
    }

    v90 = 0;
    v78 = 0;
    v77 = v84;
    goto LABEL_90;
  }

  v88 = v13;
  roamPolicyMOHandler2 = [(RoamPolicyStore *)selfCopy roamPolicyMOHandler];
  persistentContainer2 = [roamPolicyMOHandler2 persistentContainer];
  v17 = +[RoamMO entity];
  target = [v86 target];
  v19 = [RoamMO successfulRoamsInOrOutOf:target];
  v125 = 0;
  v20 = [persistentContainer2 countObjects:v17 withPredicate:v19 withError:&v125];
  v14 = v125;

  if (v14)
  {
    v90 = 0;
    v78 = 0;
    v77 = v84;
    goto LABEL_91;
  }

  if (!v20)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      target2 = [v86 target];
      bssid2 = [target2 bssid];
      *buf = 136446722;
      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v131 = 1024;
      v132 = 680;
      v133 = 2112;
      v134 = bssid2;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New BSS %@ Added to the deployment", buf, 0x1Cu);
    }

    v90 = 0;
    v78 = 1;
    goto LABEL_89;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v21 = neighborCache;
  v95 = [v21 countByEnumeratingWithState:&v121 objects:v141 count:16];
  if (!v95)
  {
    v90 = 0;
    v78 = 0;
LABEL_89:
    v77 = v84;
    goto LABEL_90;
  }

  obj = v21;
  v107 = 0;
  v22 = 0;
  v87 = 0;
  v94 = *v122;
  v23 = 0x1E830D000uLL;
LABEL_7:
  v24 = 0;
  while (1)
  {
    if (*v122 != v94)
    {
      objc_enumerationMutation(obj);
    }

    v25 = *(*(&v121 + 1) + 8 * v24);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_81:
    if (++v24 == v95)
    {
      v95 = [obj countByEnumeratingWithState:&v121 objects:v141 count:16];
      if (!v95)
      {
        v90 = v107;
        v77 = v84;
        v13 = v88;
        v21 = obj;
        v78 = v87;
        goto LABEL_90;
      }

      goto LABEL_7;
    }
  }

  v93 = v24;
  v26 = v25;
  v104 = [v26 objectForKey:@"bssid"];
  v27 = [v26 objectForKey:@"rssi"];
  v28 = [v26 objectForKey:@"roamDelta"];
  v97 = v27;
  integerValue = [v27 integerValue];
  integerValue2 = [v28 integerValue];
  v29 = [v26 objectForKey:@"channel"];
  shortValue = [v29 shortValue];
  v31 = [v26 objectForKey:@"band"];
  v32 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", shortValue, [v31 shortValue]);

  chanInfoDictionary = [v32 chanInfoDictionary];
  if ([*(v23 + 664) isWildcardMacAddress:v104])
  {

    v24 = v93;
    goto LABEL_81;
  }

  v102 = v32;
  v106 = v28;
  v92 = v26;
  v34 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
    v131 = 1024;
    v132 = 703;
    v133 = 2112;
    v134 = v104;
    v135 = 2048;
    v136 = integerValue;
    v137 = 2112;
    v138 = chanInfoDictionary;
    v139 = 2048;
    v140 = integerValue2;
    _os_log_impl(&dword_1C8460000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:currentCacheBssid  %@ currentRssi %ld currentChannel: %@ currentRoamDelta %ld", buf, 0x3Au);
  }

  v103 = chanInfoDictionary;

  persistentContainer3 = [(AnalyticsStoreMOHandler *)selfCopy->_roamPolicyMOHandler persistentContainer];
  v36 = [persistentContainer3 bssForBssid:v104 prefetchProperties:&unk_1F483E6B0 withError:0];

  v37 = v97;
  v38 = v106;
  v90 = v36;
  if (v36)
  {
    v39 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", [v36 mostRecentChannel], objc_msgSend(v36, "mostRecentBand"));
    chanInfoDictionary2 = [v39 chanInfoDictionary];
    v41 = WALogCategoryDeviceStoreHandle();
    v101 = chanInfoDictionary2;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      source3 = [v86 source];
      network = [source3 network];
      ssid = [network ssid];
      *buf = 136447234;
      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v131 = 1024;
      v132 = 712;
      v133 = 2112;
      v134 = v104;
      v135 = 2112;
      v136 = ssid;
      v137 = 2112;
      v138 = v101;
      _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MyChannel for bssid[%@] ssid[%@] : %@", buf, 0x30u);

      chanInfoDictionary2 = v101;
      v38 = v106;
    }

    v45 = [chanInfoDictionary2 isEqualToDictionary:v103];
    v46 = v92;
    if ((v45 & 1) == 0)
    {
      v47 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
        v131 = 1024;
        v132 = 715;
        v133 = 2112;
        v134 = v104;
        v135 = 2112;
        v136 = v103;
        v137 = 2112;
        v138 = v101;
        _os_log_impl(&dword_1C8460000, v47, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Change in Channel for BSSID =%@, currentChannel = %@, bssChannel = %@", buf, 0x30u);
      }

      [(RoamPolicyStore *)selfCopy updateNeighborChannelsInCoreDataWith:v39 bss:v90];
    }
  }

  else
  {
    v101 = 0;
    v46 = v92;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v96 = v88;
  v98 = [v96 countByEnumeratingWithState:&v117 objects:v128 count:16];
  if (!v98)
  {
    v75 = 1;
    goto LABEL_79;
  }

  v99 = *v118;
  do
  {
    v48 = 0;
    do
    {
      if (*v118 != v99)
      {
        v49 = v48;
        objc_enumerationMutation(v96);
        v48 = v49;
      }

      v100 = v48;
      v50 = *(*(&v117 + 1) + 8 * v48);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_72;
      }

      v51 = [v50 valueForKey:@"neighborCache"];
      if (!v51)
      {
        goto LABEL_71;
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v91 = v51;
      v110 = v51;
      v52 = [v110 countByEnumeratingWithState:&v113 objects:v127 count:16];
      if (!v52)
      {
        goto LABEL_70;
      }

      v53 = v52;
      v54 = *v114;
      v105 = *v114;
      while (2)
      {
        v55 = 0;
        v108 = v53;
        do
        {
          if (*v114 != v54)
          {
            objc_enumerationMutation(v110);
          }

          v56 = [*(*(&v113 + 1) + 8 * v55) objectForKey:@"bssid"];
          if (([*(v23 + 664) isWildcardMacAddress:v56] & 1) == 0)
          {
            roamPolicyMOHandler3 = [(RoamPolicyStore *)selfCopy roamPolicyMOHandler];
            persistentContainer4 = [roamPolicyMOHandler3 persistentContainer];
            v59 = [persistentContainer4 mostRecentRoamsFromBssid:v56 withPrefetchedProperties:&unk_1F483E6C8 limit:1];

            firstObject = [v59 firstObject];
            v61 = firstObject;
            if (firstObject)
            {
              if ([firstObject cacheChannel])
              {
                v62 = [WAChanInfo chanInfoWithObjectHavingChInfo:v61 withPrefix:@"cacheC"];
                chanInfoDictionary3 = [v62 chanInfoDictionary];

                cacheRssiBin = [v61 cacheRssiBin];
                roamDelta = [v61 roamDelta];
                v66 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447490;
                  v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                  v131 = 1024;
                  v132 = 750;
                  v133 = 2112;
                  v134 = v56;
                  v135 = 2048;
                  v136 = cacheRssiBin;
                  v137 = 2112;
                  v138 = chanInfoDictionary3;
                  v139 = 2048;
                  v140 = roamDelta;
                  _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CacheBssid  %@ CacheRssiBin %ld CacheChannel %@ CacheRoamDelta %ld", buf, 0x3Au);
                }

                if ([v104 isEqualToString:v56])
                {
                  if (![chanInfoDictionary3 isEqualToDictionary:v103])
                  {
                    v67 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v131 = 1024;
                      v132 = 756;
                      v133 = 2112;
                      v134 = v56;
                      v135 = 2112;
                      v136 = chanInfoDictionary3;
                      v137 = 2112;
                      v138 = v101;
                      _os_log_impl(&dword_1C8460000, v67, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Change in Channel for BSSID %@: CurrentCacheChannel = %@ cacheChannel = %@", buf, 0x30u);
                    }

                    persistentContainer5 = [(AnalyticsStoreMOHandler *)selfCopy->_roamPolicyMOHandler persistentContainer];
                    v69 = [persistentContainer5 bssForBssid:v56 prefetchProperties:0 withError:0];

                    [(RoamPolicyStore *)selfCopy updateNeighborChannelsInCoreDataWith:v102 bss:v69];
                  }

                  v70 = 0;
                  v71 = -10;
                  while (1)
                  {
                    v72 = v71;
                    v71 = roamCacheRssiLevels[v70 + 1];
                    if ([(RoamPolicyStore *)selfCopy inRange:v72 high:v71 value:integerValue])
                    {
                      v22 = v70;
                      if (v70 > 3)
                      {
                        break;
                      }
                    }

                    if (++v70 == 5)
                    {
                      goto LABEL_54;
                    }
                  }

                  v22 = v70;
LABEL_54:
                  if (v22 == cacheRssiBin)
                  {
                    v73 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v131 = 1024;
                      v132 = 784;
                      v133 = 2112;
                      v134 = v56;
                      v135 = 2048;
                      v136 = cacheRssiBin;
                      v137 = 2048;
                      v138 = cacheRssiBin;
                      _os_log_impl(&dword_1C8460000, v73, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No Change in location of the BSS = %@ CurrentRssiLevel = %lu cacheRssiBin = %ld", buf, 0x30u);
                    }

                    goto LABEL_64;
                  }

                  v74 = cacheRssiBin - v22;
                  if (v22 > cacheRssiBin)
                  {
                    v74 = v22 - cacheRssiBin;
                  }

                  if (v74 >= 2)
                  {
                    v76 = WALogCategoryDeviceStoreHandle();
                    v23 = 0x1E830D000;
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v131 = 1024;
                      v132 = 788;
                      v133 = 2112;
                      v134 = v56;
                      v135 = 2048;
                      v136 = v22;
                      v137 = 2112;
                      v138 = chanInfoDictionary3;
                      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment Changed: Network %@ is signicantly moved in or an obstacle is taken out.CurrentRssiLevel = %lu cacheChannel = %@", buf, 0x30u);
                    }

                    v75 = 0;
                    v87 = 1;
                    v46 = v92;
                    v37 = v97;
                    v38 = v106;
                    goto LABEL_79;
                  }

                  if (v74 == 1)
                  {
                    v73 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446978;
                      v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v131 = 1024;
                      v132 = 792;
                      v133 = 2048;
                      v134 = v22;
                      v135 = 2112;
                      v136 = chanInfoDictionary3;
                      _os_log_impl(&dword_1C8460000, v73, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment did Change but the change is not significant, CurrentRssiLevel = %lu cacheChannel = %@", buf, 0x26u);
                    }

                    cacheRssiBin = v22;
LABEL_64:

                    v22 = cacheRssiBin;
                  }
                }

                v23 = 0x1E830D000;
LABEL_66:
              }

              v54 = v105;
              v38 = v106;
              v53 = v108;
              goto LABEL_68;
            }

            chanInfoDictionary3 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(chanInfoDictionary3, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v130 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
              v131 = 1024;
              v132 = 739;
              v133 = 2112;
              v134 = v56;
              _os_log_impl(&dword_1C8460000, chanInfoDictionary3, OS_LOG_TYPE_ERROR, "%{public}s::%d:no roams from %@", buf, 0x1Cu);
            }

            goto LABEL_66;
          }

LABEL_68:

          ++v55;
        }

        while (v55 != v53);
        v53 = [v110 countByEnumeratingWithState:&v113 objects:v127 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }

LABEL_70:

      v51 = v91;
      v46 = v92;
      v37 = v97;
LABEL_71:

LABEL_72:
      v48 = v100 + 1;
    }

    while (v100 + 1 != v98);
    v75 = 1;
    v98 = [v96 countByEnumeratingWithState:&v117 objects:v128 count:16];
  }

  while (v98);
LABEL_79:

  v24 = v93;
  if (v75)
  {
    v107 = v90;
    goto LABEL_81;
  }

  v78 = 1;
  v77 = v84;
  v13 = v88;
  v21 = obj;
LABEL_90:

  v14 = 0;
LABEL_91:

  objc_autoreleasePoolPop(v77);
  return v78 & 1;
}

- (BOOL)buildRoamCacheInfoForBss:(id)bss numRoamSamples:(unint64_t)samples withError:(id *)error
{
  v135[1] = *MEMORY[0x1E69E9840];
  bssCopy = bss;
  context = objc_autoreleasePoolPush();
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamCacheInfoForNetwork", "", buf, 2u);
  }

  bzero(&roamCacheInfo, 0x410uLL);
  selfCopy = self;
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  persistentContainer = [roamPolicyMOHandler persistentContainer];
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOf:bssCopy];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v135[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:1];
  v134 = @"neighborCache";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
  v126 = 0;
  v15 = [persistentContainer fetchDistinctPropertiesIn:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:v14 withLimit:100 withError:&v126];
  v16 = v126;

  v99 = v16;
  if (v16)
  {
    goto LABEL_108;
  }

  if (!v15)
  {
    v95 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      bssid = [bssCopy bssid];
      *buf = 136446722;
      v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v130 = 1024;
      v131 = 830;
      v132 = 2112;
      v133 = bssid;
      _os_log_impl(&dword_1C8460000, v95, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchDistinctProperties for roamsOutOf:%@ returned nil", buf, 0x1Cu);
    }

    goto LABEL_107;
  }

  v17 = [v15 count];
  v18 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
    v130 = 1024;
    v131 = 834;
    v132 = 2048;
    v133 = v17;
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Roam Cache Policy: numRoamSamplesCollectedSoFar =%lu", buf, 0x1Cu);
  }

  if (![objc_opt_class() doWeHaveEnoughSamplesToBuildRoamCache:v17 numRoamSamples:samples])
  {
    v95 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v130 = 1024;
      v131 = 838;
      v132 = 2048;
      v133 = v17;
      _os_log_impl(&dword_1C8460000, v95, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to derive policies on RoamCache, Bail out. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

LABEL_107:

LABEL_108:
    v89 = 0;
    goto LABEL_96;
  }

  if (![v15 count])
  {
    goto LABEL_92;
  }

  v105 = 0;
  v121 = 0;
  v19 = 0;
  v106 = bssCopy;
  v100 = v15;
  do
  {
    v102 = v19;
    v101 = [v15 objectAtIndex:?];
    v20 = [v101 valueForKey:@"neighborCache"];
    if (v20)
    {
      string = [MEMORY[0x1E696AD60] string];
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v20;
      v21 = [obj countByEnumeratingWithState:&v122 objects:v127 count:16];
      if (!v21)
      {
        goto LABEL_47;
      }

      v22 = v21;
      v23 = *v123;
      v107 = *v123;
      v108 = v20;
      while (1)
      {
        v24 = 0;
        v109 = v22;
        do
        {
          if (*v123 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v122 + 1) + 8 * v24);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
            v27 = [v26 objectForKey:@"channel"];
            v28 = [v26 objectForKey:@"rssi"];
            v29 = [v26 objectForKey:@"bssid"];
            v118 = [v26 objectForKey:@"roamDelta"];
            v30 = [v26 objectForKey:@"channel"];
            shortValue = [v30 shortValue];
            v32 = [v26 objectForKey:@"band"];
            shortValue2 = [v32 shortValue];
            v34 = shortValue;
            v35 = v28;
            v36 = [WAChanInfo chanInfoWithChannel:v34 band:shortValue2];

            integerValue = [v27 integerValue];
            v114 = v36;
            simplifiedChannelFlags = [v36 simplifiedChannelFlags];
            integerValue2 = [v35 integerValue];
            v116 = v35;
            if (v27)
            {
              if (v35)
              {
                v40 = integerValue2;
                bssid2 = [bssCopy bssid];
                if (bssid2)
                {
                  v42 = bssid2;
                  v43 = [WAUtil isWildcardMacAddress:v29];

                  if (!v43)
                  {
                    [string appendFormat:@" {%@, %@, %@, %@} ", v29, v35, v27, v118];
                    v44 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446722;
                      v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
                      v130 = 1024;
                      v131 = 870;
                      v132 = 2112;
                      v133 = string;
                      _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_DEBUG, "%{public}s::%d:roamCacheStr:%@", buf, 0x1Cu);
                    }

                    v45 = v121;
                    if (v121)
                    {
                      v104 = simplifiedChannelFlags;
                      v46 = &roamCacheInfo;
                      while (1)
                      {
                        v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v46];
                        v48 = [v47 isEqualToString:v29];

                        if (v48)
                        {
                          break;
                        }

                        v46 += 104;
                        if (!--v45)
                        {
                          v105 = 0;
                          v45 = v121;
                          simplifiedChannelFlags = v104;
                          goto LABEL_28;
                        }
                      }

                      v105 = 1;
                      v45 = v121;
                      simplifiedChannelFlags = v104;
LABEL_33:
                      if (v45)
                      {
LABEL_34:
                        v121 = v45;
                        v51 = 0;
                        v52 = simplifiedChannelFlags;
                        v53 = &roamCacheInfo;
                        do
                        {
                          v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v53];
                          if ([v29 isEqual:v54])
                          {
                            [(RoamPolicyStore *)selfCopy locateTheNeighbor:v51 cacheRssi:v40];
                            v53[8] = integerValue;
                            v53[9] = v52;
                          }

                          ++v51;
                          v53 += 13;
                        }

                        while (v121 != v51);
                      }

                      else
                      {
                        v121 = 0;
                      }
                    }

                    else
                    {
LABEL_28:
                      if (v105 || v45 > 9)
                      {
                        goto LABEL_33;
                      }

                      uTF8String = [v29 UTF8String];
                      v50 = strlen(uTF8String);
                      if (v50 < 0x14)
                      {
                        memcpy(&roamCacheInfo + 104 * v121, uTF8String, v50);
                        v105 = 0;
                        v45 = v121 + 1;
                        goto LABEL_34;
                      }

                      v55 = WALogCategoryDeviceStoreHandle();
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446722;
                        v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
                        v130 = 1024;
                        v131 = 890;
                        v132 = 2048;
                        v133 = v50;
                        _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_ERROR, "%{public}s::%d:Length exceeded limit:%lu", buf, 0x1Cu);
                      }

                      v105 = 0;
                    }
                  }

                  bssCopy = v106;
                }
              }
            }

            v23 = v107;
            v20 = v108;
            v22 = v109;
          }

          ++v24;
        }

        while (v24 != v22);
        v22 = [obj countByEnumeratingWithState:&v122 objects:v127 count:16];
        if (!v22)
        {
LABEL_47:

          v15 = v100;
          goto LABEL_50;
        }
      }
    }

    v56 = WALogCategoryDeviceStoreHandle();
    string = v56;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v130 = 1024;
      v131 = 847;
      _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_INFO, "%{public}s::%d:RoamCache is nil", buf, 0x12u);
    }

LABEL_50:

    v57 = [v15 count];
    v19 = v102 + 1;
  }

  while (v102 + 1 < v57);
  if (!v121)
  {
LABEL_92:
    v121 = 0;
    goto LABEL_93;
  }

  v58 = &roamCacheInfo;
  v59 = v121;
  v60 = selfCopy;
  do
  {
    v119 = v59;
    v61 = v58[3];
    v62 = v58[4];
    v63 = v62 > v61;
    if (v62 <= v61)
    {
      v64 = v58[3];
    }

    else
    {
      v64 = v58[4];
    }

    v66 = v58[5];
    v65 = v58[6];
    v115 = v64;
    if (v66 <= v64)
    {
      v67 = v64;
    }

    else
    {
      v67 = v58[5];
    }

    if (v66 > v64)
    {
      v63 = 2;
    }

    if (v65 <= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v58[6];
    }

    if (v65 > v67)
    {
      v63 = 3;
    }

    v69 = v58[7];
    obja = v68;
    if (v69 > v68)
    {
      v63 = 4;
    }

    v110 = v63;
    v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
    roamPolicyMOHandler2 = [(RoamPolicyStore *)v60 roamPolicyMOHandler];
    persistentContainer2 = [roamPolicyMOHandler2 persistentContainer];
    v117 = v70;
    v73 = [persistentContainer2 mostRecentRoamsFromBssid:v70 withPrefetchedProperties:&unk_1F483E6E0 limit:1];

    firstObject = [v73 firstObject];
    v75 = firstObject;
    if (firstObject)
    {
      if (v62 <= v61)
      {
        v76 = 0;
      }

      else
      {
        v76 = v62;
      }

      v77 = v76 + v61;
      if (v66 <= v115)
      {
        v78 = 0;
      }

      else
      {
        v78 = v66;
      }

      v79 = v77 + v78;
      if (v65 <= v67)
      {
        v80 = 0;
      }

      else
      {
        v80 = v65;
      }

      v81 = v79 + v80;
      if (v69 <= obja)
      {
        v82 = 0;
      }

      else
      {
        v82 = v69;
      }

      v83 = v81 + v82;
      if (v69 <= obja)
      {
        v84 = obja;
      }

      else
      {
        v84 = v69;
      }

      if (v84 >= 50 * v83 / 0x64)
      {
        [firstObject setCacheRssiBin:v110];
      }

      [v75 setCacheChannel:*(v58 + 32)];
      [v75 setCacheChannelFlags:*(v58 + 36)];
      bssCopy = v106;
      v15 = v100;
      v86 = v117;
      v85 = v119;
    }

    else
    {
      v88 = WALogCategoryDeviceStoreHandle();
      v86 = v117;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v129 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
        v130 = 1024;
        v131 = 948;
        v132 = 2112;
        v133 = v117;
        _os_log_impl(&dword_1C8460000, v88, OS_LOG_TYPE_ERROR, "%{public}s::%d:no recent roams from %@", buf, 0x1Cu);
      }

      bssCopy = v106;
      v15 = v100;
      v85 = v119;
    }

    v58 += 13;
    v60 = selfCopy;
    roamPolicyMOHandler3 = [(RoamPolicyStore *)selfCopy roamPolicyMOHandler];
    [roamPolicyMOHandler3 updateManagedObjectContextWithoutSave];

    v59 = v85 - 1;
  }

  while (v59);
LABEL_93:
  if (bssCopy)
  {
    [(RoamPolicyStore *)selfCopy storeNeighborsInfoLearningsFromRoamCacheInfo:bssCopy neighborCount:v121];
  }

  v89 = 1;
LABEL_96:
  v90 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v90))
  {
    v91 = @"NO";
    if (v89)
    {
      v91 = @"YES";
    }

    *buf = 138412290;
    v129 = v91;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v90, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamCacheInfoForNetwork", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v92 = v99;
  if (error)
  {
    v93 = v99;
    v92 = v99;
    *error = v99;
  }

  return v89;
}

- (void)locateTheNeighbor:(unint64_t)neighbor cacheRssi:(int64_t)rssi
{
  v6 = 0;
  v43 = *MEMORY[0x1E69E9840];
  v7 = &roamCacheInfo + 104 * neighbor;
  v8 = v7 + 56;
  v9 = v7 + 24;
  v10 = v7 + 48;
  v11 = v7 + 40;
  v12 = v7 + 32;
  v13 = -10;
  do
  {
    v14 = v13;
    v13 = roamCacheRssiLevels[v6 + 1];
    if (![(RoamPolicyStore *)self inRange:v14 high:v13 value:rssi])
    {
      goto LABEL_11;
    }

    if (v6 > 1)
    {
      v15 = v11;
      if (v6 != 2)
      {
        v15 = v10;
        if (v6 != 3)
        {
          if (v6 != 4)
          {
            goto LABEL_11;
          }

          v15 = v8;
        }
      }

LABEL_10:
      ++*v15;
      goto LABEL_11;
    }

    v15 = v9;
    if (!v6)
    {
      goto LABEL_10;
    }

    v15 = v12;
    if (v6 == 1)
    {
      goto LABEL_10;
    }

LABEL_11:
    ++v6;
  }

  while (v6 != 8);
  v16 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = (&roamCacheInfo + 104 * neighbor);
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v19 = v17[3];
    v20 = v17[4];
    v21 = v17[5];
    v22 = v17[6];
    v23 = v17[7];
    *buf = 136448258;
    v26 = "[RoamPolicyStore locateTheNeighbor:cacheRssi:]";
    v27 = 1024;
    v28 = 1001;
    v29 = 2112;
    v30 = v18;
    v31 = 2048;
    rssiCopy = rssi;
    v33 = 2048;
    v34 = v19;
    v35 = 2048;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    v39 = 2048;
    v40 = v22;
    v41 = 2048;
    v42 = v23;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:BSS =%@ BSSCacheRSSI =%ld HighRSSI =%ld MidRssi =%ld UpperMid =%ld LowRssi =%ld ReallyLow =%ld", buf, 0x58u);
  }
}

- (void)resetAdaptiveRoamingStateMachine:(id)machine
{
  machineCopy = machine;
  [machineCopy setRoamTriggerRssi:4294967168];
  [machineCopy setNeighborChannels:0];

  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [roamPolicyMOHandler updateManagedObjectContextWithoutSave];
}

- (void)updateNeighborChannelsInCoreDataWith:(id)with bss:(id)bss
{
  v30 = *MEMORY[0x1E69E9840];
  withCopy = with;
  bssCopy = bss;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695DFA8];
  v10 = [RoamPolicyStore neighborChannelsOf:bssCopy];
  v11 = [v9 setWithSet:v10];

  chanInfoDictionary = [withCopy chanInfoDictionary];
  [v11 addObject:chanInfoDictionary];

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bssid = [bssCopy bssid];
    network = [bssCopy network];
    ssid = [network ssid];
    v18 = 136447490;
    v19 = "[RoamPolicyStore updateNeighborChannelsInCoreDataWith:bss:]";
    v20 = 1024;
    v21 = 1028;
    v22 = 2112;
    v23 = bssid;
    v24 = 2112;
    v25 = ssid;
    v26 = 1024;
    channel = [withCopy channel];
    v28 = 1024;
    band = [withCopy band];
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[BSS:%@ SSID:%@] Added Channel %hd Band %hd", &v18, 0x32u);
  }

  [bssCopy setNeighborChannels:v11];
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [roamPolicyMOHandler updateManagedObjectContextWithoutSave];

  objc_autoreleasePoolPop(v8);
}

- (void)storeNeighborsInfoLearningsFromRoamInfo:(id)info neighborCount:(unint64_t)count
{
  v101 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v60 = objc_autoreleasePoolPush();
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v83 = 1024;
    v84 = 1044;
    v85 = 2048;
    countCopy3 = count;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_INFO, "%{public}s::%d:neighborCount: %lu", buf, 0x1Cu);
  }

  countCopy2 = count;

  if (!infoCopy)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v83 = 1024;
    v84 = 1046;
    v57 = "%{public}s::%d:bssMO nil";
    goto LABEL_34;
  }

  if (!count)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v83 = 1024;
    v84 = 1047;
    v57 = "%{public}s::%d:neighborCount is 0";
LABEL_34:
    v58 = v56;
    v59 = 18;
    goto LABEL_37;
  }

  if (count >= 0xA)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v83 = 1024;
    v84 = 1048;
    v85 = 2048;
    countCopy3 = count;
    v57 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v58 = v56;
    v59 = 28;
LABEL_37:
    _os_log_impl(&dword_1C8460000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
    goto LABEL_29;
  }

  array = [MEMORY[0x1E695DF70] array];
  v62 = [BSSMO bssManagedObjectPropertyValue:infoCopy forKey:@"NeighborInfo"];
  if (v62)
  {
    array2 = [MEMORY[0x1E695DF70] arrayWithArray:?];
    if (!array2)
    {
      array2 = 0;
      goto LABEL_14;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [array2 count];
      bssid = [infoCopy bssid];
      *buf = 136446978;
      v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v83 = 1024;
      v84 = 1056;
      v85 = 2048;
      countCopy3 = v7;
      v87 = 2112;
      v88 = bssid;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Prev Neighbor count:%lu for BSSID:%@", buf, 0x26u);
    }
  }

  else
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      bssid2 = [infoCopy bssid];
      *buf = 136446722;
      v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v83 = 1024;
      v84 = 1060;
      v85 = 2112;
      countCopy3 = bssid2;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No Neighbor Info for BSSID:%@", buf, 0x1Cu);
    }
  }

LABEL_14:
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    bssid3 = [infoCopy bssid];
    *buf = 136446978;
    v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v83 = 1024;
    v84 = 1063;
    v85 = 2048;
    countCopy3 = countCopy2;
    v87 = 2112;
    v88 = bssid3;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:new Neighbor count:%lu  Info for BSSID:%@", buf, 0x26u);
  }

  v12 = &roamInfo;
  v13 = countCopy2;
  do
  {
    context = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [dictionary setValue:v15 forKey:@"NeighborBssid"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[3]];
    [dictionary setValue:v16 forKey:@"NeighborBssNumRoamDueToLowRssi"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[4]];
    [dictionary setValue:v17 forKey:@"NeighborBssNumRoamDueToBTM"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[5]];
    [dictionary setValue:v18 forKey:@"NeighborBssNumRoamDueToLazyScan"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[6]];
    [dictionary setValue:v19 forKey:@"NeighborBssNumRoamDueToBeaconLoss"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[7]];
    [dictionary setValue:v20 forKey:@"NeighborBssNumRoamDueToLinkLossSuppression"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[8]];
    [dictionary setValue:v21 forKey:@"NeighborBssNumRoamDueToFastRoamFailure"];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[9]];
    [dictionary setValue:v22 forKey:@"NeighborBssNumRoamDueToTSpecRejection"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[10]];
    [dictionary setValue:v23 forKey:@"NeighborBssNumRoamDueToMinTxRate"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[11]];
    [dictionary setValue:v24 forKey:@"NeighborBssNumRoamDueToAsymmetricChannel"];

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[12]];
    [dictionary setValue:v25 forKey:@"NeighborBssNumRoamDueToLowRssiAndChannelUsage"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[13]];
    [dictionary setValue:v26 forKey:@"NeighborBssNumRoamDueToRadar"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[14]];
    [dictionary setValue:v27 forKey:@"NeighborBssNumRoamDueToCSA"];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[15]];
    [dictionary setValue:v28 forKey:@"NeighborBssNumRoamDueToEstimatedTPutLow"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[16]];
    [dictionary setValue:v29 forKey:@"NeighborBssNumRoamDueToSilentRoam"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[17]];
    [dictionary setValue:v30 forKey:@"NeighborBssNumRoamDueToInactivity"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[18]];
    [dictionary setValue:v31 forKey:@"NeighborBssNumRoamDueToRoamScanTimeout"];

    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v12[19]];
    [dictionary setValue:v32 forKey:@"NeighborBssNumRoamOriginRssiHigh"];

    v33 = [MEMORY[0x1E696AD98] numberWithInteger:v12[20]];
    [dictionary setValue:v33 forKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];

    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v12[21]];
    [dictionary setValue:v34 forKey:@"NeighborBssNumRoamOriginRssiOptimum"];

    v35 = [MEMORY[0x1E696AD98] numberWithInteger:v12[22]];
    [dictionary setValue:v35 forKey:@"NeighborBssNumRoamOriginRssiUpperOptimum"];

    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v12[23]];
    [dictionary setValue:v36 forKey:@"NeighborBssNumRoamOriginRssiMid"];

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:v12[24]];
    [dictionary setValue:v37 forKey:@"NeighborBssNumRoamOriginRssiUpperMid"];

    v38 = [MEMORY[0x1E696AD98] numberWithInteger:v12[25]];
    [dictionary setValue:v38 forKey:@"NeighborBssNumRoamOriginRssiLow"];

    v39 = [MEMORY[0x1E696AD98] numberWithInteger:v12[26]];
    [dictionary setValue:v39 forKey:@"NeighborBssNumLazyRoamOriginRssiHigh"];

    v40 = [MEMORY[0x1E696AD98] numberWithInteger:v12[27]];
    [dictionary setValue:v40 forKey:@"NeighborBssNumLazyRoamOriginRssiUpperHigh"];

    v41 = [MEMORY[0x1E696AD98] numberWithInteger:v12[28]];
    [dictionary setValue:v41 forKey:@"NeighborBssNumLazyRoamOriginRssiOptimum"];

    v42 = [MEMORY[0x1E696AD98] numberWithInteger:v12[29]];
    [dictionary setValue:v42 forKey:@"NeighborBssNumLazyRoamOriginRssiUpperOptimum"];

    v43 = [MEMORY[0x1E696AD98] numberWithInteger:v12[30]];
    [dictionary setValue:v43 forKey:@"NeighborBssNumLazyRoamOriginRssiMid"];

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v71 = v13;
    if (array2 && [array2 count])
    {
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v80 = -1;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __73__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamInfo_neighborCount___block_invoke;
      v74[3] = &unk_1E830F4A8;
      v45 = v44;
      v75 = v45;
      v76 = &v77;
      [array2 enumerateObjectsUsingBlock:v74];
      if (v78[3] != -1)
      {
        v68 = [array2 objectAtIndex:?];
        v46 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
        [v46 addEntriesFromDictionary:dictionary];
        [array2 replaceObjectAtIndex:v78[3] withObject:v46];
        v47 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v65 = v78[3];
          log = v47;
          v48 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiHigh"];
          v64 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];
          v67 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiOptimum"];
          v49 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiMid"];
          v50 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiUpperMid"];
          v51 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiLow"];
          *buf = 136448514;
          v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
          v83 = 1024;
          v84 = 1132;
          v85 = 2048;
          countCopy3 = v65;
          v87 = 2112;
          v88 = v45;
          v89 = 2112;
          v90 = v48;
          v91 = 2112;
          v92 = v64;
          v93 = 2112;
          v94 = v67;
          v95 = 2112;
          v96 = v49;
          v97 = 2112;
          v98 = v50;
          v99 = 2112;
          v100 = v51;
          _os_log_impl(&dword_1C8460000, log, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Replaced index %lu with Neighbor:%@ LowRssiRoam (High:%@ UpperHigh:%@ Opt:%@ Mid:%@ UpperMid:%@ Low:%@)", buf, 0x62u);

          v47 = log;
        }

        _Block_object_dispose(&v77, 8);
        goto LABEL_27;
      }

      _Block_object_dispose(&v77, 8);
    }

    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      bssid4 = [infoCopy bssid];
      *buf = 136446978;
      v82 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v83 = 1024;
      v84 = 1137;
      v85 = 2112;
      countCopy3 = bssid4;
      v87 = 2112;
      v88 = v44;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_DEBUG, "%{public}s::%d:New Neighbor for BSSID:%@ --- %@", buf, 0x26u);
    }

    [array addObject:dictionary];
LABEL_27:

    objc_autoreleasePoolPop(context);
    v12 += 44;
    v13 = v71 - 1;
  }

  while (v71 != 1);
  [array2 addObjectsFromArray:array];
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [roamPolicyMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:infoCopy forKey:@"NeighborInfo" withValue:array2];

  bssid5 = [infoCopy bssid];
  [(RoamPolicyStore *)self setDeploymentFromRoamInfo:bssid5 neighborCount:countCopy2];

  v56 = array;
LABEL_29:

  objc_autoreleasePoolPop(v60);
}

void __73__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamInfo_neighborCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v7 = [a2 valueForKey:@"NeighborBssid"];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (void)storeNeighborsInfoLearningsFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count
{
  v60 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  context = objc_autoreleasePoolPush();
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v52 = 1024;
    v53 = 1158;
    v54 = 2048;
    countCopy3 = count;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_INFO, "%{public}s::%d:neighborCount: %lu", buf, 0x1Cu);
  }

  countCopy2 = count;

  if (!infoCopy)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v52 = 1024;
    v53 = 1160;
    v33 = "%{public}s::%d:bssMO nil";
    goto LABEL_34;
  }

  if (!count)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v52 = 1024;
    v53 = 1161;
    v33 = "%{public}s::%d:neighborCount is 0";
LABEL_34:
    v34 = v32;
    v35 = 18;
    goto LABEL_37;
  }

  if (count >= 0xA)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v52 = 1024;
    v53 = 1162;
    v54 = 2048;
    countCopy3 = count;
    v33 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v34 = v32;
    v35 = 28;
LABEL_37:
    _os_log_impl(&dword_1C8460000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
    goto LABEL_29;
  }

  array = [MEMORY[0x1E695DF70] array];
  v37 = [BSSMO bssManagedObjectPropertyValue:infoCopy forKey:@"NeighborInfo"];
  if (v37)
  {
    array2 = [MEMORY[0x1E695DF70] arrayWithArray:?];
    if (!array2)
    {
      array2 = 0;
      goto LABEL_14;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [array2 count];
      bssid = [infoCopy bssid];
      *buf = 136447234;
      v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v52 = 1024;
      v53 = 1170;
      v54 = 2048;
      countCopy3 = v7;
      v56 = 2112;
      v57 = bssid;
      v58 = 2112;
      v59 = array2;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Prev Neighbor count:%lu  Info for BSSID:%@ --- %@", buf, 0x30u);
    }
  }

  else
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      bssid2 = [infoCopy bssid];
      *buf = 136446722;
      v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v52 = 1024;
      v53 = 1174;
      v54 = 2112;
      countCopy3 = bssid2;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No Neighbor Info for BSSID:%@", buf, 0x1Cu);
    }
  }

LABEL_14:
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bssid3 = [infoCopy bssid];
    *buf = 136446978;
    v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v52 = 1024;
    v53 = 1177;
    v54 = 2048;
    countCopy3 = countCopy2;
    v56 = 2112;
    v57 = bssid3;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:new Neighbor count:%lu  Info for BSSID:%@", buf, 0x26u);
  }

  v12 = &roamCacheInfo;
  v13 = countCopy2;
  do
  {
    v14 = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [dictionary setValue:v16 forKey:@"NeighborBssid"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[3]];
    [dictionary setValue:v17 forKey:@"NeighborBssNumRoamCacheRssiHigh"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[4]];
    [dictionary setValue:v18 forKey:@"NeighborBssNumRoamCacheRssiMid"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[5]];
    [dictionary setValue:v19 forKey:@"NeighborBssNumRoamCacheRssiUpperMid"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[6]];
    [dictionary setValue:v20 forKey:@"NeighborBssNumRoamCacheRssiLow"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[7]];
    [dictionary setValue:v21 forKey:@"NeighborBssNumRoamCacheRssiReallyLow"];

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    if (array2 && [array2 count])
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = -1;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __78__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamCacheInfo_neighborCount___block_invoke;
      v43[3] = &unk_1E830F4A8;
      v23 = v22;
      v44 = v23;
      v45 = &v46;
      [array2 enumerateObjectsUsingBlock:v43];
      if (v47[3] != -1)
      {
        v24 = [array2 objectAtIndex:?];
        v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
        [v25 addEntriesFromDictionary:dictionary];
        [array2 replaceObjectAtIndex:v47[3] withObject:v25];
        v26 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = v47[3];
          *buf = 136446978;
          v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
          v52 = 1024;
          v53 = 1214;
          v54 = 2112;
          countCopy3 = v23;
          v56 = 2048;
          v57 = v27;
          _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Replaced neighbor %@ dict at existing array index %lu", buf, 0x26u);
        }

        _Block_object_dispose(&v46, 8);
        goto LABEL_27;
      }

      _Block_object_dispose(&v46, 8);
    }

    v28 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      bssid4 = [infoCopy bssid];
      *buf = 136446978;
      v51 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v52 = 1024;
      v53 = 1219;
      v54 = 2112;
      countCopy3 = bssid4;
      v56 = 2112;
      v57 = v22;
      _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Neighbor for BSSID:%@ --- %@", buf, 0x26u);
    }

    [array addObject:dictionary];
LABEL_27:

    objc_autoreleasePoolPop(v14);
    v12 += 13;
    --v13;
  }

  while (v13);
  [array2 addObjectsFromArray:array];
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [roamPolicyMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:infoCopy forKey:@"NeighborInfo" withValue:array2];

  bssid5 = [infoCopy bssid];
  [(RoamPolicyStore *)self setDeploymentFromRoamCacheInfo:bssid5 neighborCount:countCopy2];

  v32 = array;
LABEL_29:

  objc_autoreleasePoolPop(context);
}

void __78__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamCacheInfo_neighborCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v7 = [a2 valueForKey:@"NeighborBssid"];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (void)setDeploymentFromRoamInfo:(id)info neighborCount:(unint64_t)count
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = objc_autoreleasePoolPush();
  if (!infoCopy)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136446466;
    v20 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1238;
    v16 = "%{public}s::%d:bssid nil";
    v17 = v8;
    v18 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, v16, &v19, v18);
    goto LABEL_11;
  }

  if (count >= 0xA)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136446722;
    v20 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1239;
    v23 = 2048;
    countCopy = count;
    v16 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v17 = v8;
    v18 = 28;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  [v8 addObject:infoCopy];
  if (count)
  {
    v9 = &roamInfo;
    countCopy2 = count;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 += 352;
      --countCopy2;
    }

    while (countCopy2);
  }

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136447234;
    v20 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1251;
    v23 = 2112;
    countCopy = infoCopy;
    v25 = 2048;
    countCopy3 = count;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bssid:%@ neighborCount: %lu neigbors: %@", &v19, 0x30u);
  }

  allObjects = [v8 allObjects];
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  managedObjectContext = [roamPolicyMOHandler managedObjectContext];
  [BSSMO coalesceBssidsIntoDeployment:allObjects moc:managedObjectContext];

LABEL_11:
  objc_autoreleasePoolPop(v7);
}

- (void)setDeploymentFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count
{
  v27 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = objc_autoreleasePoolPush();
  if (!infoCopy)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136446466;
    v20 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1263;
    v16 = "%{public}s::%d:bssid nil";
    v17 = v8;
    v18 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, v16, &v19, v18);
    goto LABEL_11;
  }

  if (count >= 0xA)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136446722;
    v20 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1264;
    v23 = 2048;
    countCopy3 = count;
    v16 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v17 = v8;
    v18 = 28;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  [v8 addObject:infoCopy];
  if (count)
  {
    v9 = &roamCacheInfo;
    countCopy2 = count;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 += 104;
      --countCopy2;
    }

    while (countCopy2);
  }

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136446978;
    v20 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v21 = 1024;
    v22 = 1276;
    v23 = 2048;
    countCopy3 = count;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborCount: %lu neigbors: %@", &v19, 0x26u);
  }

  allObjects = [v8 allObjects];
  roamPolicyMOHandler = [(RoamPolicyStore *)self roamPolicyMOHandler];
  managedObjectContext = [roamPolicyMOHandler managedObjectContext];
  [BSSMO coalesceBssidsIntoDeployment:allObjects moc:managedObjectContext];

LABEL_11:
  objc_autoreleasePoolPop(v7);
}

+ (id)rangeStringWithRssiLevel:(unint64_t)level
{
  v17 = *MEMORY[0x1E69E9840];
  if (level >= 8)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "+[RoamPolicyStore rangeStringWithRssiLevel:]";
      v15 = 1024;
      v16 = 1289;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid level nil", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v3 = &roamOriginRssiLevels[level];
    v4 = *v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3[1]];
    stringValue = [v6 stringValue];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    stringValue2 = [v8 stringValue];
    v10 = [v5 stringWithFormat:@"[%@, %@]", stringValue, stringValue2];
  }

  return v10;
}

- (void)deriveRoamDeltaFromRoamCacheInfo:(id)info neighborCount:(unint64_t)count
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = objc_autoreleasePoolPush();
  if (!infoCopy)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v15 = 136446466;
    v16 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v17 = 1024;
    v18 = 1305;
    v12 = "%{public}s::%d:bssid nil";
    v13 = v7;
    v14 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, v12, &v15, v14);
    goto LABEL_11;
  }

  if (count >= 0xA)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v15 = 136446722;
    v16 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v17 = 1024;
    v18 = 1306;
    v19 = 2048;
    countCopy3 = count;
    v12 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v13 = v7;
    v14 = 28;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  [v7 addObject:infoCopy];
  if (count)
  {
    v8 = &roamCacheInfo;
    countCopy2 = count;
    do
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      if (v10)
      {
        [v7 addObject:v10];
      }

      v8 += 104;
      --countCopy2;
    }

    while (countCopy2);
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136446978;
    v16 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v17 = 1024;
    v18 = 1318;
    v19 = 2048;
    countCopy3 = count;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborCount: %lu neigbors: %@", &v15, 0x26u);
  }

LABEL_11:
  objc_autoreleasePoolPop(v6);
}

+ (id)extractChannelList:(id)list channelKeyPath:(id)path bandKeyPath:(id)keyPath logFor:(const char *)for
{
  v46 = *MEMORY[0x1E69E9840];
  listCopy = list;
  pathCopy = path;
  keyPathCopy = keyPath;
  v31 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = listCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v34;
    *&v12 = 136446978;
    v29 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [v16 valueForKey:{pathCopy, v29}];
        if (v17)
        {
          v18 = v17;
          v19 = [v16 valueForKey:pathCopy];
          integerValue = [v19 integerValue];

          if (integerValue)
          {
            v21 = [v16 valueForKey:pathCopy];
            shortValue = [v21 shortValue];
            v23 = [v16 valueForKey:keyPathCopy];
            v24 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", shortValue, [v23 shortValue]);

            if (v24)
            {
              chanInfoDictionary = [v24 chanInfoDictionary];
              [v31 addObject:chanInfoDictionary];

              v26 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                chanInfoDictionary2 = [v24 chanInfoDictionary];
                *buf = v29;
                v38 = "+[RoamPolicyStore extractChannelList:channelKeyPath:bandKeyPath:logFor:]";
                v39 = 1024;
                v40 = 1342;
                v41 = 2080;
                forCopy = for;
                v43 = 2112;
                v44 = chanInfoDictionary2;
                _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s - %@", buf, 0x26u);
              }
            }
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v13);
  }

  return v31;
}

+ (id)neighborChannelsAsArrayOfChanInfo:(id)info
{
  v20 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = objc_opt_new();
  neighborChannels = [infoCopy neighborChannels];

  if (neighborChannels)
  {
    neighborChannels2 = [infoCopy neighborChannels];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      neighborChannels3 = [infoCopy neighborChannels];
      v9 = [neighborChannels3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(neighborChannels3);
            }

            v13 = [WAChanInfo chanInfoWithObjectHavingChInfo:*(*(&v15 + 1) + 8 * i) withPrefix:@"c"];
            if (v13)
            {
              [v4 addObject:v13];
            }
          }

          v10 = [neighborChannels3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  return v4;
}

+ (id)neighborChannelsOf:(id)of
{
  ofCopy = of;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = ofCopy;
    neighborChannels = [v4 neighborChannels];

    if (neighborChannels)
    {
      neighborChannels2 = [v4 neighborChannels];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass & 1) != 0 && ([v4 neighborChannels], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "anyObject"), v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, v8, (v10))
      {
        neighborChannels = [v4 neighborChannels];
      }

      else
      {
        neighborChannels = 0;
      }
    }
  }

  else
  {
    neighborChannels = 0;
  }

  return neighborChannels;
}

@end