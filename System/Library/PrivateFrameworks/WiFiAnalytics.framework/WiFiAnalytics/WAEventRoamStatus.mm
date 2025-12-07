@interface WAEventRoamStatus
+ (id)akmsAsDictionary:(unsigned int)dictionary withPrefix:(id)prefix;
+ (id)roamFlagAsDictionary:(int)dictionary;
+ (id)stringRepresentationWithReason:(int)reason;
+ (id)stringRepresentationWithStatus:(int)status;
- (BOOL)processEventAt:(id)at withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing withError:(id *)error;
- (BOOL)verifyDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error;
- (WAEventRoamStatus)initWithDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error;
- (void)submitEventToCA;
- (void)updateRecord:(id)record;
@end

@implementation WAEventRoamStatus

- (void)updateRecord:(id)record
{
  recordCopy = record;
  [recordCopy setFwReason:{-[WAEventRoamStatus reason](self, "reason")}];
  [recordCopy setHostReason:{-[WAEventRoamStatus hostReason](self, "hostReason")}];
  [recordCopy setStatus:{-[WAEventRoamStatus status](self, "status")}];
  [recordCopy setRoamLatencyMs:{-[WAEventRoamStatus roamScanDuration](self, "roamScanDuration")}];
  [recordCopy setMotionState:{-[WAEventRoamStatus motionState](self, "motionState")}];
  [recordCopy setVoipActive:{-[WAEventRoamStatus voipActive](self, "voipActive")}];
  [recordCopy setSourceRssi:{-[WAEventRoamStatus sourceRssi](self, "sourceRssi")}];
  [recordCopy setTargetRssi:{-[WAEventRoamStatus targetRssi](self, "targetRssi")}];
  [recordCopy setIsLateRoam:{-[WAEventRoamStatus lateRoam](self, "lateRoam")}];
  [recordCopy setSourceTimeSpentSecs:{-[WAEventRoamStatus associatedDur](self, "associatedDur")}];
  [recordCopy setRoamProfileType:{-[WAEventRoamStatus driverRoamProfile](self, "driverRoamProfile")}];
  [recordCopy setSourceChannel:{-[WAEventRoamStatus sourceChannel](self, "sourceChannel")}];
  [recordCopy setSourceChannelWidth:{-[WAEventRoamStatus sourceBW](self, "sourceBW")}];
  [recordCopy setSourceBand:{-[WAEventRoamStatus sourceBand](self, "sourceBand")}];
  [recordCopy setSourcePhyMode:{-[WAEventRoamStatus sourcePhyMode](self, "sourcePhyMode")}];
  [recordCopy setTargetChannel:{-[WAEventRoamStatus targetChannel](self, "targetChannel")}];
  [recordCopy setTargetChannelWidth:{-[WAEventRoamStatus targetBW](self, "targetBW")}];
  [recordCopy setTargetBand:{-[WAEventRoamStatus targetBand](self, "targetBand")}];
  [recordCopy setTargetPhyMode:{-[WAEventRoamStatus targetPhyMode](self, "targetPhyMode")}];
  ccaHistory = [(WAEventRoamStatus *)self ccaHistory];
  [recordCopy setHistoryCca:ccaHistory];

  rssiHistory = [(WAEventRoamStatus *)self rssiHistory];
  [recordCopy setHistoryRssi:rssiHistory];

  snrHistory = [(WAEventRoamStatus *)self snrHistory];
  [recordCopy setHistorySnr:snrHistory];

  txPerHistory = [(WAEventRoamStatus *)self txPerHistory];
  [recordCopy setHistoryTxPer:txPerHistory];

  txFrameHistory = [(WAEventRoamStatus *)self txFrameHistory];
  [recordCopy setHistoryTxFrames:txFrameHistory];

  fwTxPerHistory = [(WAEventRoamStatus *)self fwTxPerHistory];
  [recordCopy setHistoryFwTxPer:fwTxPerHistory];

  fwTxFramesHistory = [(WAEventRoamStatus *)self fwTxFramesHistory];
  [recordCopy setHistoryFwTxFrames:fwTxFramesHistory];

  beaconSchedHistory = [(WAEventRoamStatus *)self beaconSchedHistory];
  [recordCopy setHistoryBcnSched:beaconSchedHistory];

  beaconPerHistory = [(WAEventRoamStatus *)self beaconPerHistory];
  [recordCopy setHistoryBcnPer:beaconPerHistory];
}

- (BOOL)processEventAt:(id)at withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing withError:(id *)error
{
  v137[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  containerCopy = container;
  postprocessingCopy = postprocessing;
  context = objc_autoreleasePoolPush();
  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus processEventAt:", "", buf, 2u);
  }

  if (![(WAEventRoamStatus *)self status])
  {
    targetBssid = [(WAEventRoamStatus *)self targetBssid];
    v14 = [WAUtil isWildcardMacAddress:targetBssid];

    if (v14)
    {
      v15 = MEMORY[0x1E696ABC0];
      v136 = *MEMORY[0x1E696A588];
      v16 = MEMORY[0x1E696AEC0];
      targetBssid2 = [(WAEventRoamStatus *)self targetBssid];
      v18 = [v16 stringWithFormat:@"targetAddr(%@) is the wildcard address", targetBssid2];
      v137[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:&v136 count:1];
      v20 = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];

      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        targetBssid3 = [(WAEventRoamStatus *)self targetBssid];
        *buf = 136446722;
        v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
        v116 = 1024;
        v117 = 148;
        v118 = 2112;
        v119 = targetBssid3;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:targetAddr(%@) is the wildcard address", buf, 0x1Cu);
      }

LABEL_7:

      v23 = 0;
LABEL_8:
      v24 = 0;
      v25 = 0;
      goto LABEL_45;
    }
  }

  sourceBssid = [(WAEventRoamStatus *)self sourceBssid];
  targetBssid4 = [(WAEventRoamStatus *)self targetBssid];
  v28 = [sourceBssid isEqualToString:targetBssid4];

  if (v28)
  {
    v88 = MEMORY[0x1E696ABC0];
    v134 = *MEMORY[0x1E696A588];
    v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ignoring roam status with identical origin and targetAddr"];
    v135 = v89;
    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v20 = [v88 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v90];

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v116 = 1024;
      v117 = 151;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:ignoring roam status with identical origin and targetAddr", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v29 = +[RoamMO entity];
  v112 = 0;
  v23 = [containerCopy newDatedEventObjectFor:v29 withDate:atCopy withError:&v112];
  v20 = v112;

  if (!v23)
  {
    goto LABEL_8;
  }

  [(WAEventRoamStatus *)self updateRecord:v23];
  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
    v116 = 1024;
    v117 = 156;
    v118 = 2112;
    v119 = v23;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:new Roam Event: %@", buf, 0x1Cu);
  }

  sourceBssid2 = [(WAEventRoamStatus *)self sourceBssid];
  v111 = v20;
  v32 = [containerCopy bssForBssid:sourceBssid2 prefetchProperties:0 withError:&v111];
  v98 = v111;

  if (v32)
  {
    v94 = atCopy;
    [v32 setMostRecentChannel:{objc_msgSend(v23, "sourceChannel")}];
    [v32 setMostRecentBand:{objc_msgSend(v23, "sourceBand")}];
    [v32 setPhyMode:{objc_msgSend(v23, "sourcePhyMode")}];
    date = [v23 date];
    [v32 setLastSeen:date];

    [v23 setSource:v32];
    v34 = WALogCategoryDeviceStoreHandle();
    v102 = v32;
    v103 = v23;
    v96 = postprocessingCopy;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      bssid = [v32 bssid];
      lastSeen = [v32 lastSeen];
      mostRecentChannel = [v32 mostRecentChannel];
      v37 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v32 mostRecentBand]);
      errorCopy = error;
      selfCopy = self;
      v40 = +[WAEventRoamStatus stringRepresentationWithReason:](WAEventRoamStatus, "stringRepresentationWithReason:", [v103 fwReason]);
      fwReason = [v103 fwReason];
      v42 = +[WAEventRoamStatus stringRepresentationWithStatus:](WAEventRoamStatus, "stringRepresentationWithStatus:", [v103 status]);
      status = [v103 status];
      *buf = 136448514;
      v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v116 = 1024;
      v117 = 172;
      v118 = 2112;
      v119 = bssid;
      v120 = 2112;
      v121 = lastSeen;
      v122 = 1024;
      v123 = mostRecentChannel;
      v124 = 2112;
      v125 = v37;
      v126 = 2112;
      v127 = v40;
      v128 = 1024;
      v129 = fwReason;
      v130 = 2112;
      v131 = v42;
      v132 = 1024;
      v133 = status;
      _os_log_impl(&dword_1C8460000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Set Roam Source BSS[%@ (%@)] (chan: %d %@) reason %@ (%d) status %@ (%d)", buf, 0x56u);

      v23 = v103;
      self = selfCopy;
      error = errorCopy;

      v32 = v102;
    }

    if ([v23 status])
    {
      goto LABEL_31;
    }

    targetBssid5 = [(WAEventRoamStatus *)self targetBssid];
    v110 = v98;
    v45 = [containerCopy bssForBSSID:targetBssid5 allowCreate:1 prefetchProperties:&unk_1F483E890 withError:&v110];
    v46 = v110;

    if (v45)
    {
      [v45 setMostRecentChannel:{objc_msgSend(v23, "targetChannel")}];
      [v45 setMostRecentBand:{objc_msgSend(v23, "targetBand")}];
      [v45 setPhyMode:{objc_msgSend(v23, "targetPhyMode")}];
      date2 = [v23 date];
      [v45 setLastSeen:date2];

      targetApProfile = [(WAEventRoamStatus *)self targetApProfile];
      [v45 setApProfileID:targetApProfile];

      [v23 setTarget:v45];
      v49 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        bssid2 = [v45 bssid];
        lastSeen2 = [v45 lastSeen];
        mostRecentChannel2 = [v45 mostRecentChannel];
        *buf = 136447234;
        v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
        v116 = 1024;
        v117 = 184;
        v118 = 2112;
        v119 = bssid2;
        v120 = 2112;
        v121 = lastSeen2;
        v122 = 1024;
        v123 = mostRecentChannel2;
        _os_log_impl(&dword_1C8460000, v49, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Set Roam Target BSS[%@ (%@)] (chan: %d)", buf, 0x2Cu);

        v32 = v102;
      }

      network = [v45 network];
      if (!network || (v54 = network, [v45 network], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "network"), v56 = objc_claimAutoreleasedReturnValue(), v56, v55, v54, v57 = v55 == v56, v32 = v102, !v57))
      {
        network2 = [v32 network];
        [v45 setNetwork:network2];

        v59 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          bssid3 = [v45 bssid];
          network3 = [v45 network];
          *buf = 136446978;
          v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
          v116 = 1024;
          v117 = 188;
          v118 = 2112;
          v119 = bssid3;
          v120 = 2112;
          v121 = network3;
          _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to Network[%@]", buf, 0x26u);

          v32 = v102;
        }

        network4 = [v45 network];
        [containerCopy setHasBandsForMO:network4 forBand:{objc_msgSend(v45, "mostRecentBand")}];
      }

      v63 = [v45 lan];
      v64 = [v32 lan];

      if (v63 == v64)
      {
        goto LABEL_30;
      }

      v65 = [v32 lan];
      [v45 setLan:v65];

      v66 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

LABEL_30:
        v98 = v46;
LABEL_31:
        errorCopy2 = error;
        roamCache = [(WAEventRoamStatus *)self roamCache];
        [v23 setNeighborCache:roamCache];

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        selfCopy2 = self;
        obj = [(WAEventRoamStatus *)self roamCache];
        v70 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
        if (v70)
        {
          v71 = v70;
          v101 = *v107;
          v20 = v98;
          do
          {
            v72 = 0;
            v73 = v20;
            do
            {
              if (*v107 != v101)
              {
                objc_enumerationMutation(obj);
              }

              v74 = *(*(&v106 + 1) + 8 * v72);
              v75 = [v74 objectForKeyedSubscript:@"bssid"];
              v105 = v73;
              v76 = [containerCopy bssForBSSID:v75 allowCreate:1 prefetchProperties:0 withError:&v105];
              v77 = v105;

              v78 = [v74 objectForKeyedSubscript:@"band"];
              [v76 setMostRecentBand:{objc_msgSend(v78, "shortValue")}];

              date3 = [v103 date];
              [v76 setLastSeen:date3];

              network5 = [v102 network];
              [containerCopy setHasBandsForMO:network5 forBand:{objc_msgSend(v76, "mostRecentBand")}];

              v20 = v77;
              ++v72;
              v73 = v77;
            }

            while (v71 != v72);
            v71 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
          }

          while (v71);
        }

        else
        {
          v20 = v98;
        }

        v81 = [WADeviceAnalytics_BandsInNetwork alloc];
        v24 = v102;
        network6 = [v102 network];
        v83 = [(WADeviceAnalytics_BandsInNetwork *)v81 initWithNetwork:network6];
        [(WAEventRoamStatus *)selfCopy2 setBandsInNetwork:v83];

        postprocessingCopy = v96;
        if (v96)
        {
          v23 = v103;
          error = errorCopy2;
          atCopy = v94;
          if (![v103 status])
          {
            [v96 updateRoamPoliciesForSourceBss:v102 andRoam:v103 withReason:@"immediate processing of Roam Record"];
          }

          v25 = 1;
        }

        else
        {
          v25 = 1;
          error = errorCopy2;
          atCopy = v94;
          v23 = v103;
        }

        goto LABEL_45;
      }

      bssid4 = [v45 bssid];
      v68 = [v45 lan];
      *buf = 136446978;
      v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v116 = 1024;
      v117 = 198;
      v118 = 2112;
      v119 = bssid4;
      v120 = 2112;
      v121 = v68;
      _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to LAN[%@]", buf, 0x26u);
    }

    else
    {
      v66 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      bssid4 = [(WAEventRoamStatus *)self targetBssid];
      *buf = 136446722;
      v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
      v116 = 1024;
      v117 = 176;
      v118 = 2112;
      v119 = bssid4;
      _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_ERROR, "%{public}s::%d:targetBssMO nil for %@", buf, 0x1Cu);
    }

    goto LABEL_29;
  }

  v91 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    sourceBssid3 = [(WAEventRoamStatus *)self sourceBssid];
    *buf = 136446722;
    v115 = "[WAEventRoamStatus processEventAt:withPersistentContainer:andRunPostprocessing:withError:]";
    v116 = 1024;
    v117 = 161;
    v118 = 2112;
    v119 = sourceBssid3;
    _os_log_impl(&dword_1C8460000, v91, OS_LOG_TYPE_ERROR, "%{public}s::%d:originBssMO nil for %@", buf, 0x1Cu);
  }

  v24 = 0;
  v25 = 0;
  v20 = v98;
LABEL_45:
  v84 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v84))
  {
    v85 = @"FAILED";
    if (v25)
    {
      v85 = @"SUCCESSFUL";
    }

    *buf = 138412290;
    v115 = v85;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v84, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus processEventAt:", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v86 = v20;
    *error = v20;
  }

  return v25;
}

- (BOOL)verifyDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error
{
  v164[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  capabilitiesCopy = capabilities;
  if (!eventCopy)
  {
    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v163 = *MEMORY[0x1E696A588];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil driver event - bailing"];
      v164[0] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:&v163 count:1];
      *error = [v33 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v35];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 294;
    v37 = "%{public}s::%d:nil driver event - bailing";
    goto LABEL_44;
  }

  v9 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_ADDR"];
  if (!v9)
  {
    if (error)
    {
      v38 = MEMORY[0x1E696ABC0];
      v161 = *MEMORY[0x1E696A588];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin address"];
      v162 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      *error = [v38 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v40];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 297;
    v37 = "%{public}s::%d:nil origin address";
    goto LABEL_44;
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v41 = MEMORY[0x1E696ABC0];
      v159 = *MEMORY[0x1E696A588];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"origin address expected as NSData, found %@", objc_opt_class()];
      v160 = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      *error = [v41 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v43];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v155 = 1024;
      v156 = 298;
      v157 = 2112;
      v158 = objc_opt_class();
      v44 = v158;
      _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_FAULT, "%{public}s::%d:origin address expected as NSData, found %@", buf, 0x1Cu);
    }

    goto LABEL_128;
  }

  v11 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_ADDR"];

  if (!v11)
  {
    if (error)
    {
      v45 = MEMORY[0x1E696ABC0];
      v151 = *MEMORY[0x1E696A588];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target address"];
      v152 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      *error = [v45 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v47];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 300;
    v37 = "%{public}s::%d:nil target address";
LABEL_44:
    _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_FAULT, v37, buf, 0x12u);
LABEL_45:
    v10 = 0;
LABEL_128:

    v31 = 0;
    v11 = v10;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v48 = MEMORY[0x1E696ABC0];
      v149 = *MEMORY[0x1E696A588];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target address expected as NSData, found %@", objc_opt_class()];
      v150 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      *error = [v48 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v50];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      v51 = objc_opt_class();
      *buf = 136446722;
      v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v155 = 1024;
      v156 = 301;
      v157 = 2112;
      v158 = v51;
      v52 = v51;
      _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_FAULT, "%{public}s::%d:target address expected as NSData, found %@", buf, 0x1Cu);
    }

    goto LABEL_127;
  }

  v12 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_STATUS"];

  if (!v12)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v147 = *MEMORY[0x1E696A588];
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil status"];
      v148 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      *error = [v53 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v55];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 303;
    v56 = "%{public}s::%d:nil status";
    goto LABEL_126;
  }

  v13 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_REASON"];

  if (!v13)
  {
    if (error)
    {
      v57 = MEMORY[0x1E696ABC0];
      v145 = *MEMORY[0x1E696A588];
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil reason"];
      v146 = v58;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      *error = [v57 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v59];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 304;
    v56 = "%{public}s::%d:nil reason";
    goto LABEL_126;
  }

  v14 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_FLAGS"];

  if (!v14)
  {
    if (error)
    {
      v60 = MEMORY[0x1E696ABC0];
      v143 = *MEMORY[0x1E696A588];
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil flags"];
      v144 = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      *error = [v60 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v62];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 305;
    v56 = "%{public}s::%d:nil flags";
    goto LABEL_126;
  }

  v15 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_PROFILE_TYPE"];

  if (!v15)
  {
    if (error)
    {
      v63 = MEMORY[0x1E696ABC0];
      v141 = *MEMORY[0x1E696A588];
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil profile"];
      v142 = v64;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      *error = [v63 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v65];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 306;
    v56 = "%{public}s::%d:nil profile";
    goto LABEL_126;
  }

  v16 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_RSSI"];

  if (!v16)
  {
    if (error)
    {
      v66 = MEMORY[0x1E696ABC0];
      v139 = *MEMORY[0x1E696A588];
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin rssi"];
      v140 = v67;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      *error = [v66 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v68];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 307;
    v56 = "%{public}s::%d:nil origin rssi";
    goto LABEL_126;
  }

  v17 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_RSSI"];

  if (!v17)
  {
    if (error)
    {
      v69 = MEMORY[0x1E696ABC0];
      v137 = *MEMORY[0x1E696A588];
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target rssi"];
      v138 = v70;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      *error = [v69 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v71];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 308;
    v56 = "%{public}s::%d:nil target rssi";
    goto LABEL_126;
  }

  v18 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL"];

  if (!v18)
  {
    if (error)
    {
      v72 = MEMORY[0x1E696ABC0];
      v135 = *MEMORY[0x1E696A588];
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin channel"];
      v136 = v73;
      v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      *error = [v72 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v74];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 309;
    v56 = "%{public}s::%d:nil origin channel";
    goto LABEL_126;
  }

  v19 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL"];

  if (!v19)
  {
    if (error)
    {
      v75 = MEMORY[0x1E696ABC0];
      v133 = *MEMORY[0x1E696A588];
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target channel"];
      v134 = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      *error = [v75 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v77];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 310;
    v56 = "%{public}s::%d:nil target channel";
    goto LABEL_126;
  }

  v20 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];

  if (!v20)
  {
    if (error)
    {
      v78 = MEMORY[0x1E696ABC0];
      v131 = *MEMORY[0x1E696A588];
      v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin channel flags"];
      v132 = v79;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      *error = [v78 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v80];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 311;
    v56 = "%{public}s::%d:nil origin channel flags";
    goto LABEL_126;
  }

  v21 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];

  if (!v21)
  {
    if (error)
    {
      v81 = MEMORY[0x1E696ABC0];
      v129 = *MEMORY[0x1E696A588];
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target channel flags"];
      v130 = v82;
      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      *error = [v81 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v83];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 312;
    v56 = "%{public}s::%d:nil target channel flags";
    goto LABEL_126;
  }

  v22 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AUTHTYPE"];

  if (!v22)
  {
    if (error)
    {
      v84 = MEMORY[0x1E696ABC0];
      v127 = *MEMORY[0x1E696A588];
      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin auth type"];
      v128 = v85;
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      *error = [v84 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v86];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 313;
    v56 = "%{public}s::%d:nil origin auth type";
    goto LABEL_126;
  }

  v23 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AUTHTYPE"];

  if (!v23)
  {
    if (error)
    {
      v87 = MEMORY[0x1E696ABC0];
      v125 = *MEMORY[0x1E696A588];
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target auth type"];
      v126 = v88;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      *error = [v87 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v89];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 314;
    v56 = "%{public}s::%d:nil target auth type";
    goto LABEL_126;
  }

  v24 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AKMS"];

  if (!v24)
  {
    if (error)
    {
      v90 = MEMORY[0x1E696ABC0];
      v123 = *MEMORY[0x1E696A588];
      v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin AKMs"];
      v124 = v91;
      v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      *error = [v90 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v92];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 315;
    v56 = "%{public}s::%d:nil origin AKMs";
    goto LABEL_126;
  }

  v25 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AKMS"];

  if (!v25)
  {
    if (error)
    {
      v93 = MEMORY[0x1E696ABC0];
      v121 = *MEMORY[0x1E696A588];
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target AKMs"];
      v122 = v94;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      *error = [v93 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v95];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 316;
    v56 = "%{public}s::%d:nil target AKMs";
    goto LABEL_126;
  }

  v26 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_PHYMODE"];

  if (!v26)
  {
    if (error)
    {
      v96 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A588];
      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil origin phymode"];
      v120 = v97;
      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      *error = [v96 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v98];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 317;
    v56 = "%{public}s::%d:nil origin phymode";
    goto LABEL_126;
  }

  v27 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_PHYMODE"];

  if (!v27)
  {
    if (error)
    {
      v99 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A588];
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil target phymode"];
      v118 = v100;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      *error = [v99 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v101];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 318;
    v56 = "%{public}s::%d:nil target phymode";
    goto LABEL_126;
  }

  v28 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];

  if (!v28)
  {
    if (error)
    {
      v102 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A588];
      v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil scanned channel"];
      v116 = v103;
      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      *error = [v102 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v104];
    }

    v36 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_127;
    }

    *buf = 136446466;
    v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
    v155 = 1024;
    v156 = 319;
    v56 = "%{public}s::%d:nil scanned channel";
    goto LABEL_126;
  }

  if ([capabilitiesCopy containsObject:&unk_1F483E368])
  {
    v29 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];

    if (v29)
    {
      v30 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];

      if (v30)
      {
        goto LABEL_26;
      }

      if (error)
      {
        v108 = MEMORY[0x1E696ABC0];
        v111 = *MEMORY[0x1E696A588];
        v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enhanced Roam Event capabilities and nil timeEnded"];
        v112 = v109;
        v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        *error = [v108 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v110];
      }

      v36 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v155 = 1024;
      v156 = 323;
      v56 = "%{public}s::%d:Enhanced Roam Event capabilities and nil timeEnded";
    }

    else
    {
      if (error)
      {
        v105 = MEMORY[0x1E696ABC0];
        v113 = *MEMORY[0x1E696A588];
        v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enhanced Roam Event capabilities and nil timeStarted"];
        v114 = v106;
        v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        *error = [v105 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v107];
      }

      v36 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v154 = "[WAEventRoamStatus verifyDriverEvent:andDeviceCapabilities:withError:]";
      v155 = 1024;
      v156 = 322;
      v56 = "%{public}s::%d:Enhanced Roam Event capabilities and nil timeStarted";
    }

LABEL_126:
    _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_FAULT, v56, buf, 0x12u);
LABEL_127:
    v10 = v11;
    goto LABEL_128;
  }

LABEL_26:
  v31 = 1;
LABEL_27:

  return v31;
}

- (WAEventRoamStatus)initWithDriverEvent:(id)event andDeviceCapabilities:(id)capabilities withError:(id *)error
{
  v117[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  capabilitiesCopy = capabilities;
  if (![(WAEventRoamStatus *)self verifyDriverEvent:eventCopy andDeviceCapabilities:capabilitiesCopy withError:error])
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v111 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
      v112 = 1024;
      v113 = 339;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "%{public}s::%d:parsing driver event FAILED - bailing", buf, 0x12u);
    }

    goto LABEL_59;
  }

  v106.receiver = self;
  v106.super_class = WAEventRoamStatus;
  v10 = [(WAEventRoamStatus *)&v106 init];
  if (v10)
  {
    -[WAEventRoamStatus setDeviceIs6eCapable:](v10, "setDeviceIs6eCapable:", [capabilitiesCopy containsObject:&unk_1F483E380]);
    v11 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_ADDR"];
    v12 = v11;
    if (v11 && [v11 length]== 6)
    {
      [v12 getBytes:buf length:6];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v111, BYTE1(v111)];
      [(WAEventRoamStatus *)v10 setSourceBssid:v13];
    }

    sourceBssid = [(WAEventRoamStatus *)v10 sourceBssid];
    v15 = [WAUtil isWildcardMacAddress:sourceBssid];

    if (v15)
    {
      if (error)
      {
        v78 = MEMORY[0x1E696ABC0];
        v116 = *MEMORY[0x1E696A588];
        v79 = MEMORY[0x1E696AEC0];
        sourceBssid2 = [(WAEventRoamStatus *)v10 sourceBssid];
        v81 = [v79 stringWithFormat:@"originAddr(%@) is the wildcard address", sourceBssid2];
        v117[0] = v81;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:&v116 count:1];
        *error = [v78 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v82];
      }

      v83 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        sourceBssid3 = [(WAEventRoamStatus *)v10 sourceBssid];
        *buf = 136446722;
        v111 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
        v112 = 1024;
        v113 = 356;
        v114 = 2112;
        v115 = sourceBssid3;
        _os_log_impl(&dword_1C8460000, v83, OS_LOG_TYPE_FAULT, "%{public}s::%d:originAddr(%@) is the wildcard address", buf, 0x1Cu);
      }
    }

    else
    {
      v16 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_ADDR"];
      v17 = v16;
      v105 = 0;
      v104 = 0;
      if (v16)
      {
        if ([v16 length] == 6)
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v104 length:6];
          v19 = [v17 isEqualToData:v18];

          if ((v19 & 1) == 0)
          {
            [v17 getBytes:buf length:6];
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v111, BYTE1(v111)];
            [(WAEventRoamStatus *)v10 setTargetBssid:v20];
          }
        }
      }

      v93 = v17;
      v21 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_STATUS"];
      -[WAEventRoamStatus setStatus:](v10, "setStatus:", [v21 intValue]);

      v22 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_REASON"];
      -[WAEventRoamStatus setReason:](v10, "setReason:", [v22 intValue]);

      v23 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_FLAGS"];
      -[WAEventRoamStatus setFlags:](v10, "setFlags:", [v23 integerValue]);

      v24 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_PROFILE_TYPE"];
      -[WAEventRoamStatus setDriverRoamProfile:](v10, "setDriverRoamProfile:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v24 intValue]));

      v25 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
      -[WAEventRoamStatus setScannedChannelCount:](v10, "setScannedChannelCount:", [v25 unsignedShortValue]);

      v26 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_RSSI"];
      -[WAEventRoamStatus setSourceRssi:](v10, "setSourceRssi:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v26 intValue]));

      v27 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL"];
      -[WAEventRoamStatus setSourceChannel:](v10, "setSourceChannel:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v27 intValue]));

      v28 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setSourceBand:](v10, "setSourceBand:", +[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", [v28 unsignedIntValue]));

      v29 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setSourceBW:](v10, "setSourceBW:", +[WADeviceAnalyticsClient channelWidthFromChannelFlags:](WADeviceAnalyticsClient, "channelWidthFromChannelFlags:", [v29 unsignedIntValue]));

      v30 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AUTHTYPE"];
      -[WAEventRoamStatus setSourceAuth:](v10, "setSourceAuth:", [v30 unsignedIntValue]);

      v31 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_AKMS"];
      -[WAEventRoamStatus setSourceAKMs:](v10, "setSourceAKMs:", [v31 unsignedIntValue]);

      v32 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_ORIGIN_PHYMODE"];
      -[WAEventRoamStatus setSourcePhyMode:](v10, "setSourcePhyMode:", [v32 unsignedIntValue]);

      v33 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_RSSI"];
      -[WAEventRoamStatus setTargetRssi:](v10, "setTargetRssi:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v33 intValue]));

      v34 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL"];
      -[WAEventRoamStatus setTargetChannel:](v10, "setTargetChannel:", +[WADeviceAnalyticsClient convert32to16:](WADeviceAnalyticsClient, "convert32to16:", [v34 intValue]));

      v35 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setTargetBand:](v10, "setTargetBand:", +[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", [v35 unsignedIntValue]));

      v36 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
      -[WAEventRoamStatus setTargetBW:](v10, "setTargetBW:", +[WADeviceAnalyticsClient channelWidthFromChannelFlags:](WADeviceAnalyticsClient, "channelWidthFromChannelFlags:", [v36 unsignedIntValue]));

      v37 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AUTHTYPE"];
      -[WAEventRoamStatus setTargetAuth:](v10, "setTargetAuth:", [v37 unsignedIntValue]);

      v38 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_AKMS"];
      -[WAEventRoamStatus setTargetAKMs:](v10, "setTargetAKMs:", [v38 unsignedIntValue]);

      v39 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TARGET_PHYMODE"];
      -[WAEventRoamStatus setTargetPhyMode:](v10, "setTargetPhyMode:", [v39 unsignedIntValue]);

      v40 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];

      if (!v40)
      {
        goto LABEL_14;
      }

      v41 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_STARTED"];
      longLongValue = [v41 longLongValue];

      v43 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];

      if (v43)
      {
        v44 = [eventCopy objectForKeyedSubscript:@"ROAMEDEVENT_TIME_ENDED"];
        longLongValue2 = [v44 longLongValue];

        [(WAEventRoamStatus *)v10 setHasRoamScanDuration:1];
        [(WAEventRoamStatus *)v10 setRoamScanDuration:longLongValue2 - longLongValue];
LABEL_14:
        v46 = [eventCopy objectForKey:@"ROAM_CACHE"];
        self = v46;
        v47 = v93;
        if (v46 && [(WAEventRoamStatus *)v46 count])
        {
          v90 = v12;
          v91 = capabilitiesCopy;
          v92 = eventCopy;
          v48 = WALogCategoryDeviceStoreHandle();
          if (os_signpost_enabled(v48))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus init roamCacheloop", "", buf, 2u);
          }

          array = [MEMORY[0x1E695DF70] array];
          v94 = v10;
          [(WAEventRoamStatus *)v10 setRoamCache:array];

          string = [MEMORY[0x1E696AD60] string];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          selfCopy = self;
          obj = self;
          v50 = [(WAEventRoamStatus *)obj countByEnumeratingWithState:&v100 objects:v107 count:16];
          if (v50)
          {
            v51 = v50;
            v99 = *v101;
            do
            {
              v52 = 0;
              v96 = v51;
              do
              {
                if (*v101 != v99)
                {
                  objc_enumerationMutation(obj);
                }

                v53 = *(*(&v100 + 1) + 8 * v52);
                v54 = [v53 objectForKey:@"CHANNEL"];
                v55 = [v53 objectForKey:@"CHANNEL_FLAGS"];
                v56 = [v53 objectForKey:@"RSSI"];
                v57 = [v53 objectForKey:@"BSSID"];
                v58 = v57;
                if (v54)
                {
                  v59 = v56 == 0;
                }

                else
                {
                  v59 = 1;
                }

                if (!v59 && v57 != 0 && v55 != 0)
                {
                  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  shortValue = [v54 shortValue];
                  sourceRssi = [(WAEventRoamStatus *)v94 sourceRssi];
                  sourceRssi2 = [(WAEventRoamStatus *)v94 sourceRssi];
                  v66 = shortValue - sourceRssi2;
                  if (shortValue >= sourceRssi)
                  {
                    v66 = sourceRssi2 - shortValue;
                  }

                  v98 = v66;
                  [v62 setObject:v54 forKeyedSubscript:@"channel"];
                  v67 = [MEMORY[0x1E696AD98] numberWithShort:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", objc_msgSend(v55, "unsignedIntValue"))}];
                  [v62 setObject:v67 forKeyedSubscript:@"band"];

                  v68 = [MEMORY[0x1E696AD98] numberWithShort:shortValue];
                  [v62 setObject:v68 forKeyedSubscript:@"rssi"];

                  [v62 setObject:v58 forKeyedSubscript:@"bssid"];
                  v69 = [MEMORY[0x1E696AD98] numberWithInteger:v98];
                  [v62 setObject:v69 forKeyedSubscript:@"roamDelta"];

                  roamCache = [(WAEventRoamStatus *)v94 roamCache];
                  [roamCache addObject:v62];

                  v71 = [v62 objectForKeyedSubscript:@"bssid"];
                  v72 = [v62 objectForKeyedSubscript:@"rssi"];
                  v73 = [v62 objectForKeyedSubscript:@"channel"];
                  v74 = [v62 objectForKeyedSubscript:@"roamDelta"];
                  [string appendFormat:@" {%@, %@, %@, %@} ", v71, v72, v73, v74];

                  v51 = v96;
                }

                ++v52;
              }

              while (v51 != v52);
              v51 = [(WAEventRoamStatus *)obj countByEnumeratingWithState:&v100 objects:v107 count:16];
            }

            while (v51);
          }

          v75 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v111 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
            v112 = 1024;
            v113 = 438;
            v114 = 2112;
            v115 = string;
            _os_log_impl(&dword_1C8460000, v75, OS_LOG_TYPE_DEBUG, "%{public}s::%d:roamCacheStr:%@", buf, 0x1Cu);
          }

          v76 = WALogCategoryDeviceStoreHandle();
          capabilitiesCopy = v91;
          eventCopy = v92;
          self = selfCopy;
          v12 = v90;
          v47 = v93;
          if (os_signpost_enabled(v76))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEventRoamStatus init roamCacheloop", "", buf, 2u);
          }

          v10 = v94;
        }

        goto LABEL_44;
      }

      if (error)
      {
        v85 = MEMORY[0x1E696ABC0];
        v108 = *MEMORY[0x1E696A588];
        v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"non-nil time started with nil time ended"];
        v109 = v86;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        *error = [v85 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v87];
      }

      v88 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v111 = "[WAEventRoamStatus initWithDriverEvent:andDeviceCapabilities:withError:]";
        v112 = 1024;
        v113 = 396;
        _os_log_impl(&dword_1C8460000, v88, OS_LOG_TYPE_FAULT, "%{public}s::%d:non-nil time started with nil time ended", buf, 0x12u);
      }
    }

    self = v10;
LABEL_59:
    v10 = 0;
LABEL_44:
  }

  return v10;
}

- (void)submitEventToCA
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E695DF90];
  v5 = [WAEventRoamStatus roamFlagAsDictionary:self->_flags];
  v6 = [v4 dictionaryWithDictionary:v5];
  [v3 addEntriesFromDictionary:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [v3 setObject:v7 forKeyedSubscript:@"status"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_reason];
  [v3 setObject:v8 forKeyedSubscript:@"reason"];

  v9 = [WAEventRoamStatus stringRepresentationWithStatus:self->_status];
  [v3 setObject:v9 forKeyedSubscript:@"statusString"];

  v10 = [WAEventRoamStatus stringRepresentationWithReason:self->_reason];
  [v3 setObject:v10 forKeyedSubscript:@"reasonString"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_driverRoamProfile];
  [v3 setObject:v11 forKeyedSubscript:@"profileType"];

  v12 = [MEMORY[0x1E696AEC0] stringWithCString:apple80211_roam_profile_typetoStr() encoding:4];
  [v3 setObject:v12 forKeyedSubscript:@"roamProfile"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_roamScanDuration];
  [v3 setObject:v13 forKeyedSubscript:@"roamScanDuration"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scannedChannelCount];
  [v3 setObject:v14 forKeyedSubscript:@"scannedChannelCount"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_sourceRssi];
  [v3 setObject:v15 forKeyedSubscript:@"originRssi"];

  if (self->_targetRssi)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v3 setObject:v16 forKeyedSubscript:@"targetRssi"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetRssi"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_sourceChannel];
  [v3 setObject:v17 forKeyedSubscript:@"originChannel"];

  if (self->_targetChannel)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v3 setObject:v18 forKeyedSubscript:@"targetChannel"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetChannel"];
  }

  v19 = [WADeviceAnalyticsClient bandAsString:self->_sourceBand];
  [v3 setObject:v19 forKeyedSubscript:@"originChannelBand"];

  v20 = [WADeviceAnalyticsClient bandAsString:self->_targetBand];
  [v3 setObject:v20 forKeyedSubscript:@"targetChannelBand"];

  v21 = [WADeviceAnalyticsClient channelWidthAsString:self->_sourceBW];
  [v3 setObject:v21 forKeyedSubscript:@"originChannelBW"];

  v22 = [WADeviceAnalyticsClient channelWidthAsString:self->_targetBW];
  [v3 setObject:v22 forKeyedSubscript:@"targetChannelBW"];

  v23 = [WADeviceAnalyticsClient ouiFromBssid:self->_sourceBssid];
  [v3 setObject:v23 forKeyedSubscript:@"originOui"];

  if (self->_targetBssid)
  {
    v24 = [WADeviceAnalyticsClient ouiFromBssid:?];
    [v3 setObject:v24 forKeyedSubscript:@"targetOui"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"targetOui"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourceAuth];
  [v3 setObject:v25 forKeyedSubscript:@"origin_auth"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetAuth];
  [v3 setObject:v26 forKeyedSubscript:@"target_auth"];

  v27 = [WAEventRoamStatus akmsAsDictionary:self->_sourceAKMs withPrefix:@"origin"];
  if (v27)
  {
    [v3 addEntriesFromDictionary:v27];
  }

  else
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sourceAKMs = self->_sourceAKMs;
      v61 = 136446722;
      v62 = "[WAEventRoamStatus submitEventToCA]";
      v63 = 1024;
      v64 = 486;
      v65 = 1024;
      v66 = sourceAKMs;
      _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_FAULT, "%{public}s::%d:originAKMs:%u could not be translated", &v61, 0x18u);
    }
  }

  v30 = [WAEventRoamStatus akmsAsDictionary:self->_targetAKMs withPrefix:@"target"];

  if (v30)
  {
    [v3 addEntriesFromDictionary:v30];
  }

  else
  {
    v31 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      targetAKMs = self->_targetAKMs;
      v61 = 136446722;
      v62 = "[WAEventRoamStatus submitEventToCA]";
      v63 = 1024;
      v64 = 492;
      v65 = 1024;
      v66 = targetAKMs;
      _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_FAULT, "%{public}s::%d:targetAKMs:%u could not be translated", &v61, 0x18u);
    }
  }

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourcePhyMode];
  [v3 setObject:v33 forKeyedSubscript:@"originPhyMode"];

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sourcePhyMode];
  [v3 setObject:v34 forKeyedSubscript:@"origin_PhyMode"];

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetPhyMode];
  [v3 setObject:v35 forKeyedSubscript:@"targetPhyMode"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetPhyMode];
  [v3 setObject:v36 forKeyedSubscript:@"target_PhyMode"];

  if (self->_hasOriginChannelScore)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithShort:self->_originChannelScore];
    [v3 setObject:v37 forKeyedSubscript:@"originChannelScore"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originChannelScore"];
  }

  if (self->_hasCcaTotal)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaTotal];
    [v3 setObject:v38 forKeyedSubscript:@"ccaTotal"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaTotal"];
  }

  if (self->_hasCcaOthers)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaOthers];
    [v3 setObject:v39 forKeyedSubscript:@"ccaOthers"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaOthers"];
  }

  if (self->_hasCcaInt)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaInt];
    [v3 setObject:v40 forKeyedSubscript:@"ccaInt"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ccaInt"];
  }

  if (self->_hasOriginTxPer)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originTxPer];
    [v3 setObject:v41 forKeyedSubscript:@"originTxPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originTxPer"];
  }

  if (self->_hasOriginBcnPer)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originBcnPer];
    [v3 setObject:v42 forKeyedSubscript:@"originBcnPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originBcnPer"];
  }

  if (self->_hasOriginFwTxPer)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_originFwTxPer];
    [v3 setObject:v43 forKeyedSubscript:@"originFwTxPer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"originFwTxPer"];
  }

  if (self->_hasAssociatedDur)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_associatedDur];
    [v3 setObject:v44 forKeyedSubscript:@"associationDuration"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"associationDuration"];
  }

  if (self->_hasHostReason)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:self->_hostReason];
    [v3 setObject:v45 forKeyedSubscript:@"hostReason"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"hostReason"];
  }

  if (self->_hasMotionState)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInt:self->_motionState];
    [v3 setObject:v46 forKeyedSubscript:@"motionStateEnum"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"motionStateEnum"];
  }

  if (self->_hasVoipActive)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_voipActive];
    [v3 setObject:v47 forKeyedSubscript:@"voipActive"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"voipActive"];
  }

  if (self->_hasLateRoam)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_lateRoam];
    [v3 setObject:v48 forKeyedSubscript:@"lateRoam"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"lateRoam"];
  }

  bandsInNetwork = [(WAEventRoamStatus *)self bandsInNetwork];

  if (bandsInNetwork)
  {
    v50 = MEMORY[0x1E696AD98];
    bandsInNetwork2 = [(WAEventRoamStatus *)self bandsInNetwork];
    v52 = [v50 numberWithBool:{objc_msgSend(bandsInNetwork2, "has2GHz")}];
    [v3 setObject:v52 forKeyedSubscript:@"networkHas2GHz"];

    v53 = MEMORY[0x1E696AD98];
    bandsInNetwork3 = [(WAEventRoamStatus *)self bandsInNetwork];
    v55 = [v53 numberWithBool:{objc_msgSend(bandsInNetwork3, "has5GHz")}];
    [v3 setObject:v55 forKeyedSubscript:@"networkHas5GHz"];

    if (self->_deviceIs6eCapable)
    {
      v56 = MEMORY[0x1E696AD98];
      bandsInNetwork4 = [(WAEventRoamStatus *)self bandsInNetwork];
      v58 = [v56 numberWithBool:{objc_msgSend(bandsInNetwork4, "has6GHz")}];
      [v3 setObject:v58 forKeyedSubscript:@"networkHas6GHz"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"networkHas6GHz"];
    }
  }

  v59 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceIs6eCapable];
  [v3 setObject:v59 forKeyedSubscript:@"deviceIs6ECapable"];

  v60 = +[WAClient sharedClient];
  [v60 submitWiFiAnalytics:@"com.apple.wifi.RoamStatus" data:v3];
}

+ (id)stringRepresentationWithReason:(int)reason
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithCString:convertApple80211ReturnToString() encoding:4];
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136447234;
    v8 = "+[WAEventRoamStatus stringRepresentationWithReason:]";
    v9 = 1024;
    v10 = 530;
    v11 = 1024;
    reasonCopy = reason;
    v13 = 1024;
    reasonCopy2 = reason;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:reason:%d(%X) --> %@", &v7, 0x28u);
  }

  return v4;
}

+ (id)stringRepresentationWithStatus:(int)status
{
  v17 = *MEMORY[0x1E69E9840];
  if (status)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithCString:convertApple80211ReturnToString() encoding:4];
  }

  else
  {
    v4 = @"Success";
  }

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136447234;
    v8 = "+[WAEventRoamStatus stringRepresentationWithStatus:]";
    v9 = 1024;
    v10 = 537;
    v11 = 1024;
    statusCopy = status;
    v13 = 1024;
    statusCopy2 = status;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:status:%d(%X) --> %@", &v7, 0x28u);
  }

  return v4;
}

+ (id)roamFlagAsDictionary:(int)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = 1;
  context = objc_autoreleasePoolPush();
  while (1)
  {
    v6 = apple80211_roam_status_bss_flagstoStr();
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v18 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
      v19 = 1024;
      v20 = 551;
      v21 = 1024;
      *v22 = v5;
      *&v22[4] = 2080;
      *&v22[6] = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bit:%X --> %s", buf, 0x22u);
    }

    if (!strcmp("unknown", v6))
    {
      break;
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
    context = [v8 stringWithFormat:@"roamFlags_%@", v9, context];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:(v5 & dictionary) != 0];
    [v4 setObject:v11 forKeyedSubscript:context];

    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v4 objectForKeyedSubscript:context];
      *buf = 136446978;
      v18 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
      v19 = 1024;
      v20 = 557;
      v21 = 2112;
      *v22 = context;
      *&v22[8] = 2112;
      *&v22[10] = v13;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:added %@:%@ to dictionary", buf, 0x26u);
    }

    v5 *= 2;
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v18 = "+[WAEventRoamStatus roamFlagAsDictionary:]";
    v19 = 1024;
    v20 = 552;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bailing", buf, 0x12u);
  }

  objc_autoreleasePoolPop(context);

  return v4;
}

+ (id)akmsAsDictionary:(unsigned int)dictionary withPrefix:(id)prefix
{
  v20 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v6 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v7 = apple80211_authtype_uppertoStr();
  if (strcmp("unknown", v7))
  {
    v8 = 1;
    do
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
      v11 = [v9 stringWithFormat:@"%@_akms_%@", prefixCopy, v10];

      v12 = [MEMORY[0x1E696AD98] numberWithBool:(v8 & dictionary) != 0];
      [v6 setObject:v12 forKeyedSubscript:v11];

      v8 *= 2;
      v7 = apple80211_authtype_uppertoStr();
    }

    while (strcmp("unknown", v7));
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v17 = "+[WAEventRoamStatus akmsAsDictionary:withPrefix:]";
    v18 = 1024;
    v19 = 574;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bailing", buf, 0x12u);
  }

  objc_autoreleasePoolPop(context);

  return v6;
}

@end