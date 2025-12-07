@interface CWFNetworkDenyList
- (BOOL)_evaluateTriggersForDenyListRemove:(id)remove denyListRemoveReason:(unint64_t)reason SSID:(id)d;
- (BOOL)_evaluateTriggersForDenyListing:(id)listing reason:(unint64_t)reason reasonData:(int64_t)data BSSID:(id)d SSID:(id)iD state:(unint64_t)state;
- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile denyListItem:(id)item;
- (BOOL)_meetsThresholds:(unint64_t)thresholds count:(unsigned int)count forSSIDThresholds:(BOOL)dThresholds BSSID:(id)d SSID:(id)iD;
- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)disc RSSI:(int64_t *)i timestamp:(double *)timestamp;
- (BOOL)isNetworkInDenyListedState:(unint64_t)state scanResult:(id)result;
- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)join;
- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)profile;
- (id)_findNetworkDenyListItem:(id)item;
- (id)_findNetworkDenyListItemsForSSID:(id)d;
- (id)denyListedNetworkSSIDs:(unint64_t)ds;
- (id)denyListedReasonHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data;
- (id)networksInDenyListedState:(unint64_t)state;
- (id)networksInDenyListedStateHistory:(unint64_t)history;
- (id)reasonsForNetworkInDenyListedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data;
- (int64_t)RSSIWhenNetworkWasDenyListed:(id)listed;
- (int64_t)denyListThresholdForReason:(unint64_t)reason forSSIDThresholds:(BOOL)thresholds;
- (unint64_t)denyListedNetworkCount;
- (void)_printDenyList;
- (void)processDenyListedBSSForMetrics:(id)metrics;
- (void)removeAllDenyListEntriesWithNetworkName:(id)name;
- (void)removeAllDenyListedItems;
- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)reason;
- (void)removeExpiredDenyListedState:(unint64_t)state;
- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)trigger forNetwork:(id)network;
- (void)removeNetworkDenyListInfoWithReason:(unint64_t)reason forScanResult:(id)result;
- (void)setDefaultDenyListThresholds;
- (void)setDenyListedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state;
- (void)setDenyListingThresholds:(unint64_t)thresholds value:(unsigned int)value forSSIDThresholds:(BOOL)dThresholds;
- (void)setEnabled:(BOOL)enabled;
- (void)setNetworkDenyListInfo:(id)info forScanResult:(id)result;
@end

@implementation CWFNetworkDenyList

- (void)_printDenyList
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableArray *)self->_denyList count];
  v5 = CWFGetOSLog();
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v107 = "[CWFNetworkDenyList _printDenyList]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] %{public}s Current denyList:", buf, 12);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v8 = self->_denyList;
    v81 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v99 objects:v114 count:16];
    if (v81)
    {
      v78 = v3;
      v10 = MEMORY[0x1E69E9C10];
      v79 = *v100;
      v80 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v100 != v79)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v99 + 1) + 8 * v11);
          v13 = objc_alloc(MEMORY[0x1E696AEC0]);
          scanResultForNetworkDenyListItem = [v12 scanResultForNetworkDenyListItem];
          sSID = [scanResultForNetworkDenyListItem SSID];
          v84 = [v13 initWithData:sSID encoding:4];

          scanResultForNetworkDenyListItem2 = [v12 scanResultForNetworkDenyListItem];
          bSSID = [scanResultForNetworkDenyListItem2 BSSID];
          v18 = [bSSID copy];

          statesCurrent = [v12 statesCurrent];
          v20 = [statesCurrent count];

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v21 = "YES";
            if (!v20)
            {
              v21 = "NO";
            }

            v107 = v84;
            v108 = 2112;
            v109 = v18;
            v110 = 2080;
            v111 = v21;
            v112 = 1024;
            v113 = v20;
            _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEFAULT, "Network '%@', BSSID %@, isDenyListed:%s, present in %d denylist states", buf, 0x26u);
          }

          v82 = v18;
          v83 = v11;
          v86 = [MEMORY[0x1E696AD60] stringWithString:@" DenyListHistory: "];
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v22 = v12;
          statesHistory = [v12 statesHistory];
          v24 = [statesHistory countByEnumeratingWithState:&v95 objects:v105 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = *v96;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v96 != v27)
                {
                  objc_enumerationMutation(statesHistory);
                }

                v29 = *(*(&v95 + 1) + 8 * i);
                stateString = [v29 stateString];
                [v29 stateTimestamp];
                v31 = MEMORY[0x1E696AEC0];
                v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v33 = sub_1E0BCC248(v32);
                v34 = [v31 stringWithFormat:@"[%d] %@ @ %@, ", v26, stateString, v33];

                [v86 appendString:v34];
                v26 = (v26 + 1);
              }

              v25 = [statesHistory countByEnumeratingWithState:&v95 objects:v105 count:16];
            }

            while (v25);
            v35 = v26 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v35 = 0;
          }

          v36 = CWFGetOSLog();
          v37 = v22;
          if (v36)
          {
            v38 = CWFGetOSLog();
          }

          else
          {
            v39 = v10;
            v38 = v10;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v40 = @"<empty>";
            if (v35)
            {
              v40 = &stru_1F5B8FC80;
            }

            v107 = v86;
            v108 = 2112;
            v109 = v40;
            LODWORD(v77) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 0, "[corewifi] %{public}@ %@", buf, v77);
          }

          v85 = [MEMORY[0x1E696AD60] stringWithString:@" DenyListStates: "];
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          statesCurrent2 = [v22 statesCurrent];
          v42 = [statesCurrent2 countByEnumeratingWithState:&v91 objects:v104 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = 0;
            v45 = *v92;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v92 != v45)
                {
                  objc_enumerationMutation(statesCurrent2);
                }

                v47 = *(*(&v91 + 1) + 8 * j);
                stateString2 = [v47 stateString];
                [v47 stateTimestamp];
                v49 = MEMORY[0x1E696AEC0];
                v50 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v51 = sub_1E0BCC248(v50);
                v52 = [v49 stringWithFormat:@"[%d] %@ @ %@, ", v44, stateString2, v51];

                [v85 appendString:v52];
                v44 = (v44 + 1);
              }

              v43 = [statesCurrent2 countByEnumeratingWithState:&v91 objects:v104 count:16];
            }

            while (v43);
            v53 = v44 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v53 = 0;
          }

          v54 = CWFGetOSLog();
          if (v54)
          {
            v55 = CWFGetOSLog();
          }

          else
          {
            v56 = v10;
            v55 = v10;
          }

          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v57 = @"<empty>";
            if (v53)
            {
              v57 = &stru_1F5B8FC80;
            }

            v107 = v85;
            v108 = 2112;
            v109 = v57;
            LODWORD(v77) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v55, 0, "[corewifi] %{public}@ %@", buf, v77);
          }

          v58 = [MEMORY[0x1E696AD60] stringWithString:@" Triggers: "];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          denyListTriggers = [v37 denyListTriggers];
          v60 = [denyListTriggers countByEnumeratingWithState:&v87 objects:v103 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = 0;
            v63 = *v88;
            do
            {
              for (k = 0; k != v61; ++k)
              {
                if (*v88 != v63)
                {
                  objc_enumerationMutation(denyListTriggers);
                }

                v65 = *(*(&v87 + 1) + 8 * k);
                reasonString = [v65 reasonString];
                [v65 reasonTimestamp];
                v67 = MEMORY[0x1E696AEC0];
                v68 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
                v69 = sub_1E0BCC248(v68);
                v70 = [v67 stringWithFormat:@"[%d] %@ @ %@, ", v62, reasonString, v69];

                [v58 appendString:v70];
                v62 = (v62 + 1);
              }

              v61 = [denyListTriggers countByEnumeratingWithState:&v87 objects:v103 count:16];
            }

            while (v61);
            v71 = v62 > 0;
            v10 = MEMORY[0x1E69E9C10];
          }

          else
          {
            v71 = 0;
          }

          v72 = CWFGetOSLog();
          if (v72)
          {
            v73 = CWFGetOSLog();
          }

          else
          {
            v74 = v10;
            v73 = v10;
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v75 = @"<empty>";
            if (v71)
            {
              v75 = &stru_1F5B8FC80;
            }

            v107 = v58;
            v108 = 2112;
            v109 = v75;
            LODWORD(v77) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v73, 0, "[corewifi] %{public}@ %@", buf, v77);
          }

          v11 = v83 + 1;
          v8 = v80;
        }

        while (v83 + 1 != v81);
        v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v99 objects:v114 count:16];
      }

      while (v81);
      v3 = v78;
    }
  }

  else
  {
    if (v5)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v107 = "[CWFNetworkDenyList _printDenyList]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] %{public}s Current denyList: <empty>", buf, 12);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (unint64_t)denyListedNetworkCount
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = self->_denyList;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = v5;
        if (*v24 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v23 + 1) + 8 * i);

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        statesCurrent = [v5 statesCurrent];
        v11 = [statesCurrent countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(statesCurrent);
            }

            if ([*(*(&v19 + 1) + 8 * v14) state])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [statesCurrent countByEnumeratingWithState:&v19 objects:v31 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v6 += v4;
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446466;
    v28 = "[CWFNetworkDenyList denyListedNetworkCount]";
    v29 = 2048;
    v30 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s count:%lu", &v27, 22);
  }

  return v6;
}

- (CWFNetworkDenyList)initWithDenyListDeviceProfile:(unint64_t)profile
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CWFNetworkDenyList;
  v4 = [(CWFNetworkDenyList *)&v23 init];
  v5 = v4;
  if (!v4)
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446210;
      v25 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s self alloc failed", &v24, 12);
    }

    goto LABEL_27;
  }

  [(CWFNetworkDenyList *)v4 setEnabled:0];
  [(CWFNetworkDenyList *)v5 setWowDenyListExpiry:600.0];
  [(CWFNetworkDenyList *)v5 setAutoJoinkDenyListExpiry:300.0];
  [(CWFNetworkDenyList *)v5 setBSSDenyListExpiry:300.0];
  v5->_profile = profile;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  denyList = v5->_denyList;
  v5->_denyList = v6;

  if (!v5->_denyList)
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446210;
      v25 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s _denyList alloc failed", &v24, 12);
    }

    goto LABEL_27;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  SSIDThresholds = v5->_SSIDThresholds;
  v5->_SSIDThresholds = v8;

  if (!v5->_SSIDThresholds)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446210;
      v25 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s  SSIDThresholds alloc failed", &v24, 12);
    }

    goto LABEL_27;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  BSSIDThresholds = v5->_BSSIDThresholds;
  v5->_BSSIDThresholds = v10;

  if (!v5->_BSSIDThresholds)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446210;
      v25 = "[CWFNetworkDenyList initWithDenyListDeviceProfile:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s  BSSIDThresholds alloc failed", &v24, 12);
    }

LABEL_27:

    [(NSMutableArray *)v5->_denyList removeAllObjects];
    v12 = 0;
    goto LABEL_6;
  }

  [(CWFNetworkDenyList *)v5 setDefaultDenyListThresholds];
  v12 = v5;
LABEL_6:

  return v12;
}

- (void)setDefaultDenyListThresholds
{
  v3 = [(NSArray *)self->_SSIDThresholds mutableCopy];
  v4 = [(NSArray *)self->_BSSIDThresholds mutableCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v5 atIndexedSubscript:0];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v6 atIndexedSubscript:1];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v7 atIndexedSubscript:2];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v8 atIndexedSubscript:3];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v9 atIndexedSubscript:4];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:10];
  [(NSArray *)v4 setObject:v10 atIndexedSubscript:5];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v4 setObject:v11 atIndexedSubscript:6];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v4 setObject:v12 atIndexedSubscript:7];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v13 atIndexedSubscript:0];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v14 atIndexedSubscript:1];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v15 atIndexedSubscript:2];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:5];
  [(NSArray *)v3 setObject:v16 atIndexedSubscript:3];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:5];
  [(NSArray *)v3 setObject:v17 atIndexedSubscript:4];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:10];
  [(NSArray *)v3 setObject:v18 atIndexedSubscript:5];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(NSArray *)v3 setObject:v19 atIndexedSubscript:6];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [(NSArray *)v3 setObject:v20 atIndexedSubscript:7];

  SSIDThresholds = self->_SSIDThresholds;
  self->_SSIDThresholds = v3;
  v23 = v3;

  BSSIDThresholds = self->_BSSIDThresholds;
  self->_BSSIDThresholds = v4;
}

- (void)setDenyListedStateExpiryIntervalInSec:(double)sec state:(unint64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  if (state == 3)
  {
    if (sec == 0.0 || sec > 3600.0)
    {
      v8 = CWFGetOSLog();
      if (v8)
      {
        v6 = CWFGetOSLog();
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v14 = 136446978;
        *&v14[4] = "[CWFNetworkDenyList setDenyListedStateExpiryIntervalInSec:state:]";
        *&v14[12] = 2082;
        *&v14[14] = "CWFNetworkDenyList.m";
        *&v14[22] = 1024;
        LODWORD(v15) = 120;
        WORD2(v15) = 2048;
        *(&v15 + 6) = sec;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Out of range WoWDenyListing timeout value:%f", v14, 38, *v14, *&v14[8], v15);
      }

      goto LABEL_39;
    }

    [(CWFNetworkDenyList *)self setWowDenyListExpiry:sec];
  }

  else
  {
    if (state != 2)
    {
      if (state == 1)
      {
        if (sec != 0.0 && sec <= 86400.0)
        {

          [(CWFNetworkDenyList *)self setAutoJoinkDenyListExpiry:sec];
          return;
        }

        v9 = CWFGetOSLog();
        if (v9)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v14 = 136446978;
          *&v14[4] = "[CWFNetworkDenyList setDenyListedStateExpiryIntervalInSec:state:]";
          *&v14[12] = 2082;
          *&v14[14] = "CWFNetworkDenyList.m";
          *&v14[22] = 1024;
          LODWORD(v15) = 113;
          WORD2(v15) = 2048;
          *(&v15 + 6) = sec;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Out of range NetworkDenyListing timeout value:%f", v14, 38, *v14, *&v14[8], v15);
        }
      }

      else
      {
        v5 = CWFGetOSLog();
        if (v5)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v10 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v14 = 136446722;
          *&v14[4] = "[CWFNetworkDenyList setDenyListedStateExpiryIntervalInSec:state:]";
          *&v14[12] = 2082;
          *&v14[14] = "CWFNetworkDenyList.m";
          *&v14[22] = 1024;
          LODWORD(v15) = 131;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid state", v14, 28, *v14, *&v14[8], v15);
        }
      }

LABEL_39:

      return;
    }

    if (sec == 0.0 || sec > 300.0)
    {
      v7 = CWFGetOSLog();
      if (v7)
      {
        v6 = CWFGetOSLog();
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v14 = 136446978;
        *&v14[4] = "[CWFNetworkDenyList setDenyListedStateExpiryIntervalInSec:state:]";
        *&v14[12] = 2082;
        *&v14[14] = "CWFNetworkDenyList.m";
        *&v14[22] = 1024;
        LODWORD(v15) = 127;
        WORD2(v15) = 2048;
        *(&v15 + 6) = sec;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s (%{public}s:%u) Out of range BSSDenyListing timeout value:%f", v14, 38, *v14, *&v14[8], v15);
      }

      goto LABEL_39;
    }

    [(CWFNetworkDenyList *)self setBSSDenyListExpiry:sec];
  }
}

- (void)setDenyListingThresholds:(unint64_t)thresholds value:(unsigned int)value forSSIDThresholds:(BOOL)dThresholds
{
  dThresholdsCopy = dThresholds;
  v6 = *&value;
  v30 = *MEMORY[0x1E69E9840];
  if (thresholds > 6 || value >= 0xFF)
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = "perBSSID";
      v18 = 136447490;
      v19 = "[CWFNetworkDenyList setDenyListingThresholds:value:forSSIDThresholds:]";
      v21 = "CWFNetworkDenyList.m";
      v23 = 139;
      v20 = 2082;
      v22 = 1024;
      if (dThresholdsCopy)
      {
        v16 = "forSSIDThresholds";
      }

      v24 = 2082;
      v25 = v16;
      v26 = 2048;
      thresholdsCopy = thresholds;
      v28 = 1024;
      v29 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid Config Params. type:%{public}s reason:%lu threshCount:%u", &v18, 54);
    }
  }

  else
  {
    sSIDThresholds = [(CWFNetworkDenyList *)self SSIDThresholds];
    v17 = [sSIDThresholds mutableCopy];

    bSSIDThresholds = [(CWFNetworkDenyList *)self BSSIDThresholds];
    v11 = [bSSIDThresholds mutableCopy];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    if (dThresholdsCopy)
    {
      [v17 setObject:v12 atIndexedSubscript:thresholds];

      [(CWFNetworkDenyList *)self setSSIDThresholds:v17];
    }

    else
    {
      [v11 setObject:v12 atIndexedSubscript:thresholds];

      [(CWFNetworkDenyList *)self setBSSIDThresholds:v11];
    }
  }
}

- (int64_t)denyListThresholdForReason:(unint64_t)reason forSSIDThresholds:(BOOL)thresholds
{
  if (thresholds)
  {
    [(CWFNetworkDenyList *)self SSIDThresholds];
  }

  else
  {
    [(CWFNetworkDenyList *)self BSSIDThresholds];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:reason];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setNetworkDenyListInfo:(id)info forScanResult:(id)result
{
  v54 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  if ([(CWFNetworkDenyList *)self enabled])
  {
    v8 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:resultCopy];
    if (v8)
    {
      p_super = v8;
      v10 = 0;
    }

    else
    {
      v12 = [[CWFNetworkDenyListItem alloc] initWithDenyListNetwork:resultCopy];
      if (!v12)
      {
        v32 = CWFGetOSLog();
        if (v32)
        {
          denyListDidUpdateHandler2 = CWFGetOSLog();
        }

        else
        {
          denyListDidUpdateHandler2 = MEMORY[0x1E69E9C10];
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(denyListDidUpdateHandler2, OS_LOG_TYPE_ERROR))
        {
          v36 = 136446210;
          v37 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, denyListDidUpdateHandler2, 16, "[corewifi] %{public}s DenyListElement alloc failed", &v36, 12);
        }

        v13 = 0;
        v10 = 0;
        p_super = 0;
        goto LABEL_25;
      }

      v10 = v12;
      p_super = &v10->super;
    }

    if (![infoCopy state])
    {
      [infoCopy setState:5];
    }

    if (-[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:](self, "_ignoreTriggersForDeviceProfile:denyListItem:", [infoCopy reason], p_super))
    {
      v13 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    scanResultForNetworkDenyListItem = [p_super scanResultForNetworkDenyListItem];
    sSID = [scanResultForNetworkDenyListItem SSID];
    v13 = [v14 initWithData:sSID encoding:4];

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = CWFStringFromDenyListAddReason([infoCopy reason]);
      bSSID = [infoCopy BSSID];
      v35 = v10;
      redactedForWiFi = [bSSID redactedForWiFi];
      v36 = 136448258;
      v37 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
      v38 = 2082;
      v39 = "CWFNetworkDenyList.m";
      v40 = 1024;
      v41 = 190;
      v42 = 2114;
      v43 = v21;
      v44 = 2114;
      v45 = v13;
      v46 = 2114;
      v47 = redactedForWiFi;
      v48 = 2048;
      reason = [infoCopy reason];
      v50 = 2048;
      reasonData = [infoCopy reasonData];
      v52 = 2048;
      state = [infoCopy state];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] %{public}s (%{public}s:%u) Trigger '%{public}@' for '%{public}@[%{public}@]' (reason=%lu reasonData=%ld state=%lu)", &v36, 88);

      v10 = v35;
    }

    reason2 = [infoCopy reason];
    reasonData2 = [infoCopy reasonData];
    bSSID2 = [infoCopy BSSID];
    [p_super addDenyListTrigger:reason2 reasonData:reasonData2 BSSID:bSSID2];

    reason3 = [infoCopy reason];
    reasonData3 = [infoCopy reasonData];
    bSSID3 = [infoCopy BSSID];
    v29 = -[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:](self, "_evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:", p_super, reason3, reasonData3, bSSID3, v13, [infoCopy state]);

    if (([(NSMutableArray *)self->_denyList containsObject:p_super]& 1) == 0)
    {
      [(NSMutableArray *)self->_denyList addObject:p_super];
    }

    [(CWFNetworkDenyList *)self _printDenyList];
    if (!v29)
    {
      goto LABEL_26;
    }

    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (!denyListDidUpdateHandler)
    {
      goto LABEL_26;
    }

    denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
    (*(denyListDidUpdateHandler2 + 16))(denyListDidUpdateHandler2, &unk_1F5B89C50);
LABEL_25:

    goto LABEL_26;
  }

  v11 = CWFGetOSLog();
  if (v11)
  {
    p_super = CWFGetOSLog();
  }

  else
  {
    p_super = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
  {
    v36 = 136446210;
    v37 = "[CWFNetworkDenyList setNetworkDenyListInfo:forScanResult:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, p_super, 1, "[corewifi] %{public}s No DenyListing", &v36, 12);
  }

LABEL_27:
}

- (BOOL)_evaluateTriggersForDenyListing:(id)listing reason:(unint64_t)reason reasonData:(int64_t)data BSSID:(id)d SSID:(id)iD state:(unint64_t)state
{
  v108 = *MEMORY[0x1E69E9840];
  listingCopy = listing;
  dCopy = d;
  iDCopy = iD;
  if (!listingCopy)
  {
    v75 = CWFGetOSLog();
    if (v75)
    {
      denyListTriggers = CWFGetOSLog();
    }

    else
    {
      denyListTriggers = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
    {
      v99 = 136446210;
      v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, denyListTriggers, 16, "[corewifi] %{public}s denyListItem is null", &v99, 12);
    }

    goto LABEL_126;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  denyListTriggers = [listingCopy denyListTriggers];
  v94 = [denyListTriggers countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (!v94)
  {
LABEL_126:

    v74 = 0;
    goto LABEL_127;
  }

  v80 = 0;
  v81 = 0;
  v89 = 0;
  v91 = 0;
  v87 = 0;
  v85 = 0;
  v83 = 0;
  v93 = *v96;
  v79 = state & 0xFFFFFFFFFFFFFFFELL;
  v86 = dCopy;
  stateCopy = state;
  obj = denyListTriggers;
  do
  {
    v15 = 0;
    do
    {
      if (*v96 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v95 + 1) + 8 * v15);
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v19 = v18;

      reason = [v16 reason];
      reasonData = [v16 reasonData];
      [v16 reasonTimestamp];
      v23 = v22;
      if (![listingCopy enterprisePolicy] || reason > 7 || (v24 = v19 - v23, v19 - v23 > 300.0))
      {
        if (![listingCopy enterprisePolicy])
        {
          goto LABEL_29;
        }

        v31 = CWFGetOSLog();
        if (v31)
        {
          v32 = CWFGetOSLog();
        }

        else
        {
          v32 = MEMORY[0x1E69E9C10];
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = CWFStringFromDenyListAddReason(reason);
          bSSID = [v16 BSSID];
          redactedForWiFi = [bSSID redactedForWiFi];
          v99 = 136446978;
          v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v101 = 2114;
          v102 = v34;
          v103 = 2114;
          v104 = redactedForWiFi;
          v105 = 2048;
          v106 = v19 - v23;
          LODWORD(v78) = 42;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 1, "[corewifi] %{public}s Trigger %{public}@ for [%{public}@] was %f seconds ago and outside window. Will not consider for WoW denyList", &v99, v78);

          state = stateCopy;
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      bSSID2 = [v16 BSSID];
      v26 = [bSSID2 compare:dCopy options:1];

      v27 = v26 == 0;
      v28 = v87;
      if (!v26)
      {
        v28 = v87 + 1;
      }

      if (reason != reason)
      {
        v27 = 0;
      }

      v91 += v27;
      if (reason == reason)
      {
        v29 = v89 + 1;
      }

      else
      {
        v29 = v89;
      }

      v89 = __PAIR64__(HIDWORD(v89), v29) + 0x100000000;
      v87 = v28;
      if (v28 > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:reason count:v91 forSSIDThresholds:0 BSSID:dCopy SSID:iDCopy]|| HIDWORD(v89) > 0x12 || [(CWFNetworkDenyList *)self _meetsThresholds:reason count:v89 forSSIDThresholds:1 BSSID:dCopy SSID:iDCopy])
      {
        if (state == 5 || state == 3)
        {
          [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:3 reason:reason reasonData:data];
          v83 = 1;
          goto LABEL_29;
        }

        v47 = CWFGetOSLog();
        if (v47)
        {
          v32 = CWFGetOSLog();
        }

        else
        {
          v32 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = CWFStringFromDenyListAddReason(reason);
          bSSID = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v99 = 136446722;
          v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v101 = 2114;
          v102 = v34;
          v103 = 2114;
          v104 = bSSID;
          LODWORD(v78) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 1, "[corewifi] %{public}s CWFDenyListStateNoWoW ignored for %{public}@ @ %{public}@", &v99, v78);
LABEL_27:

          dCopy = v86;
        }

        goto LABEL_28;
      }

LABEL_29:
      if (reason != reason)
      {
        v39 = CWFGetOSLog();
        if (v39)
        {
          v40 = CWFGetOSLog();
        }

        else
        {
          v40 = MEMORY[0x1E69E9C10];
          v44 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v45 = CWFStringFromDenyListAddReason(reason);
          v46 = CWFStringFromDenyListAddReason(reason);
          v99 = 136446722;
          v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v101 = 2114;
          v102 = v45;
          v103 = 2114;
          v104 = v46;
          LODWORD(v78) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 2, "[corewifi] %{public}s Reasons differ. TriggerNodeReason: %{public}@ CurrentReason: %{public}@", &v99, v78);
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (reason <= 3)
      {
        if (state != 1 && state != 5)
        {
          if (state == 3)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:3 reason:reason reasonData:data];
            v37 = CWFGetOSLog();
            if (v37)
            {
              v38 = CWFGetOSLog();
            }

            else
            {
              v38 = MEMORY[0x1E69E9C10];
              v53 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v54 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
              v99 = 136446466;
              v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
              v101 = 2114;
              v102 = v54;
              LODWORD(v78) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 1, "[corewifi] %{public}s Power Alert Event Generated, DenyList for WoW, TimeStamp: %{public}@", &v99, v78);

              state = stateCopy;
            }

            v83 = 1;
          }

          v55 = CWFGetOSLog();
          if (v55)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v56 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v45 = CWFStringFromDenyListAddReason(reason);
            v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
            v99 = 136446722;
            v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
            v101 = 2114;
            v102 = v45;
            v103 = 2114;
            v104 = v46;
            LODWORD(v78) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 1, "[corewifi] %{public}s CWFDenyListStateNoAutoJoin ignored for %{public}@ @ %{public}@", &v99, v78);
            goto LABEL_48;
          }

LABEL_49:

          goto LABEL_50;
        }

        v85 = 1;
        [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:1 reason:reason reasonData:reasonData];
        goto LABEL_50;
      }

      switch(reason)
      {
        case 7uLL:
          if (++HIDWORD(v81) <= 2u)
          {
            goto LABEL_50;
          }

          goto LABEL_62;
        case 5uLL:
          LODWORD(v81) = v81 + 1;
          if (v81 < 5)
          {
            goto LABEL_50;
          }

LABEL_62:
          if ((state | 4) == 5)
          {
            [(CWFNetworkDenyList *)self _setDenyListState:listingCopy state:1 reason:reason reasonData:reasonData];
            v85 = 1;
          }

          else
          {
            v57 = CWFGetOSLog();
            if (v57)
            {
              v58 = CWFGetOSLog();
            }

            else
            {
              v58 = MEMORY[0x1E69E9C10];
              v60 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v61 = CWFStringFromDenyListAddReason(reason);
              v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
              v99 = 136446722;
              v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
              v101 = 2114;
              v102 = v61;
              v103 = 2114;
              v104 = v62;
              LODWORD(v78) = 32;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v58, 1, "[corewifi] %{public}s CWFDenyListStateNoAutoJoin ignored for %{public}@ @ %{public}@", &v99, v78);
            }
          }

          goto LABEL_87;
        case 4uLL:
          v30 = v19 - v23;
          if (v19 - v23 <= 300.0)
          {
            LODWORD(v80) = v80 + 1;
            if (v80 >= 3)
            {
              if ((state | 4) != 5)
              {
                v69 = CWFGetOSLog();
                if (v69)
                {
                  v40 = CWFGetOSLog();
                }

                else
                {
                  v40 = MEMORY[0x1E69E9C10];
                  v72 = MEMORY[0x1E69E9C10];
                }

                if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_49;
                }

                v45 = CWFStringFromDenyListAddReason(4uLL);
                v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
                v99 = 136446722;
                v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
                v101 = 2114;
                v102 = v45;
                v103 = 2114;
                v104 = v46;
                LODWORD(v78) = 32;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 1, "[corewifi] %{public}s CWFDenyListStateNoAutoJoin ignored for %{public}@ @ %{public}@", &v99, v78);
                goto LABEL_48;
              }

              selfCopy4 = self;
              v42 = listingCopy;
              v43 = 4;
LABEL_91:
              [(CWFNetworkDenyList *)selfCopy4 _setDenyListState:v42 state:1 reason:v43 reasonData:reasonData, v30];
              v85 = 1;
              goto LABEL_50;
            }
          }

          goto LABEL_50;
      }

      if (reason - 11 <= 1)
      {
        if (v79 != 4)
        {
          v59 = CWFGetOSLog();
          if (v59)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v68 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          v45 = CWFStringFromDenyListAddReason(reason);
          v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v99 = 136446722;
          v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v101 = 2114;
          v102 = v45;
          v103 = 2114;
          v104 = v46;
          LODWORD(v78) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 1, "[corewifi] %{public}s CWFDenyListStateTemporarilyUnavailable ignored for %{public}@ @ %{public}@", &v99, v78);
          goto LABEL_48;
        }

        selfCopy3 = self;
        v49 = listingCopy;
        v50 = 4;
        reasonCopy = reason;
LABEL_98:
        [(CWFNetworkDenyList *)selfCopy3 _setDenyListState:v49 state:v50 reason:reasonCopy reasonData:reasonData];
        v85 = 1;
        goto LABEL_50;
      }

LABEL_87:
      if (reason == 8)
      {
        bSSID3 = [v16 BSSID];
        v64 = [bSSID3 compare:dCopy options:1];

        if (v64)
        {
          v65 = HIDWORD(v80);
        }

        else
        {
          v65 = HIDWORD(v80) + 1;
        }

        HIDWORD(v80) = v65;
        if (v65 >= 3)
        {
          state = stateCopy;
          if (stateCopy != 2)
          {
            v67 = CWFGetOSLog();
            if (v67)
            {
              v40 = CWFGetOSLog();
            }

            else
            {
              v40 = MEMORY[0x1E69E9C10];
              v71 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              goto LABEL_49;
            }

            v45 = CWFStringFromDenyListAddReason(8uLL);
            v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
            v99 = 136446722;
            v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
            v101 = 2114;
            v102 = v45;
            v103 = 2114;
            v104 = v46;
            LODWORD(v78) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 1, "[corewifi] %{public}s CWFDenyListAddReasonBSSDenyList ignored for %{public}@ @ %{public}@", &v99, v78);
LABEL_48:

            state = stateCopy;
            goto LABEL_49;
          }

          selfCopy3 = self;
          v49 = listingCopy;
          v50 = 2;
          reasonCopy = 8;
          goto LABEL_98;
        }
      }

      else if (reason == 6)
      {
        state = stateCopy;
        if ((stateCopy | 4) != 5)
        {
          v66 = CWFGetOSLog();
          if (v66)
          {
            v40 = CWFGetOSLog();
          }

          else
          {
            v40 = MEMORY[0x1E69E9C10];
            v70 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          v45 = CWFStringFromDenyListAddReason(6uLL);
          v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
          v99 = 136446722;
          v100 = "[CWFNetworkDenyList _evaluateTriggersForDenyListing:reason:reasonData:BSSID:SSID:state:]";
          v101 = 2114;
          v102 = v45;
          v103 = 2114;
          v104 = v46;
          LODWORD(v78) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 1, "[corewifi] %{public}s CWFDenyListStateNoAutoJoin ignored for %{public}@ @ %{public}@", &v99, v78);
          goto LABEL_48;
        }

        selfCopy4 = self;
        v42 = listingCopy;
        v43 = 6;
        goto LABEL_91;
      }

      state = stateCopy;
LABEL_50:
      ++v15;
    }

    while (v94 != v15);
    v73 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16, v30];
    v94 = v73;
  }

  while (v73);

  v74 = v85;
  if (v83)
  {
    [listingCopy addDenyListStateHistory:0 state:state reason:reason reasonData:data];
    v74 = 1;
  }

LABEL_127:

  return v74 & 1;
}

- (BOOL)_ignoreTriggersForDeviceProfile:(unint64_t)profile denyListItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = itemCopy;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (self->_profile == 2)
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      profile = self->_profile;
      v26 = 136446722;
      v27 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]";
      v28 = 2048;
      profileCopy = profile;
      v30 = 2048;
      profileCopy2 = profile;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 1, "[corewifi] %{public}s DenyListTrigger %lu ignored for %lu", &v26, 32);
    }

    v17 = 1;
  }

  else
  {
    if (([itemCopy enterprisePolicy] & 1) != 0 || (objc_msgSend(v7, "scanResultForNetworkDenyListItem"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "matchingKnownNetworkProfile"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isProfileBased"), v11, v10, v12))
    {
      batteryInfoHandler = [(CWFNetworkDenyList *)self batteryInfoHandler];

      if (batteryInfoHandler)
      {
        batteryInfoHandler2 = [(CWFNetworkDenyList *)self batteryInfoHandler];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1E0CE06AC;
        v21[3] = &unk_1E86E8CF8;
        v21[4] = &v22;
        v21[5] = profile;
        (*(batteryInfoHandler2 + 16))(batteryInfoHandler2, v21);
      }

      else
      {
        v18 = CWFGetOSLog();
        if (v18)
        {
          batteryInfoHandler2 = CWFGetOSLog();
        }

        else
        {
          batteryInfoHandler2 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(batteryInfoHandler2, OS_LOG_TYPE_ERROR))
        {
          v26 = 136446210;
          v27 = "[CWFNetworkDenyList _ignoreTriggersForDeviceProfile:denyListItem:]";
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, batteryInfoHandler2, 16, "[corewifi] %{public}s Delegate does not respond to denyListProfileBatteryInfo", &v26, 12);
        }
      }
    }

    v17 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);

  return v17 & 1;
}

- (void)removeDenyListStateWithDenyListRemoveReason:(unint64_t)reason
{
  v124 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (!v5)
  {
    v83 = CWFGetOSLog();
    if (v83)
    {
      v84 = CWFGetOSLog();
    }

    else
    {
      v84 = MEMORY[0x1E69E9C10];
      v86 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v115 = 136446210;
      v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v84, 16, "[corewifi] %{public}s discardedNodes is null", &v115, 12);
    }

    goto LABEL_109;
  }

  if (!v6)
  {
    v85 = CWFGetOSLog();
    if (v85)
    {
      v84 = CWFGetOSLog();
    }

    else
    {
      v84 = MEMORY[0x1E69E9C10];
      v87 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v115 = 136446210;
      v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v84, 16, "[corewifi] %{public}s discardedNetworkDenyListItems is null", &v115, 12);
    }

LABEL_109:

    goto LABEL_98;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = self->_denyList;
  v94 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v123 count:16];
  v8 = 0;
  if (!v94)
  {
    goto LABEL_87;
  }

  v9 = 0;
  v93 = *v112;
  v89 = v7;
  selfCopy = self;
  do
  {
    v10 = 0;
    v11 = v9;
    do
    {
      if (*v112 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v95 = v10;
      v9 = *(*(&v111 + 1) + 8 * v10);

      if (reason == 7)
      {
        denyListTriggers = [v9 denyListTriggers];
        [denyListTriggers removeAllObjects];

        statesCurrent = [v9 statesCurrent];
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = sub_1E0CE1564;
        v109[3] = &unk_1E86E8D20;
        v14 = v9;
        v110 = v14;
        [statesCurrent enumerateObjectsUsingBlock:v109];

        statesCurrent2 = [v14 statesCurrent];
        [statesCurrent2 removeAllObjects];

        [v7 addObject:v14];
        v8 = 1;
        v16 = v110;
        goto LABEL_84;
      }

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      scanResultForNetworkDenyListItem = [v9 scanResultForNetworkDenyListItem];
      sSID = [scanResultForNetworkDenyListItem SSID];
      v16 = [v17 initWithData:sSID encoding:4];

      scanResultForNetworkDenyListItem2 = [v9 scanResultForNetworkDenyListItem];
      bSSID = [scanResultForNetworkDenyListItem2 BSSID];

      scanResultForNetworkDenyListItem3 = [v9 scanResultForNetworkDenyListItem];
      LODWORD(scanResultForNetworkDenyListItem) = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:1 scanResult:scanResultForNetworkDenyListItem3];

      v22 = 0.0;
      v92 = v8;
      v91 = v9;
      if (scanResultForNetworkDenyListItem)
      {
        denyListTriggers2 = [v9 denyListTriggers];
        [denyListTriggers2 removeAllObjects];

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        statesCurrent3 = [v9 statesCurrent];
        v25 = [statesCurrent3 countByEnumeratingWithState:&v105 objects:v122 count:16];
        if (!v25)
        {
          goto LABEL_50;
        }

        v26 = v25;
        v27 = *v106;
        while (1)
        {
          v28 = 0;
          do
          {
            if (*v106 != v27)
            {
              objc_enumerationMutation(statesCurrent3);
            }

            v29 = *(*(&v105 + 1) + 8 * v28);
            if ([v29 state] != 1)
            {
              goto LABEL_36;
            }

            if ([v29 reason] == 6)
            {
              goto LABEL_43;
            }

            if (reason != 5)
            {
              goto LABEL_30;
            }

            [v29 stateTimestamp];
            if (v30 > v22)
            {
              [v29 stateTimestamp];
              v22 = v31;
            }

            date = [MEMORY[0x1E695DF00] date];
            [date timeIntervalSince1970];
            v34 = v33;

            v35 = v34 - v22;
            [(CWFNetworkDenyList *)selfCopy autoJoinkDenyListExpiry];
            v37 = v36;
            v38 = CWFGetOSLog();
            v39 = v38;
            if (v35 > v37)
            {
              if (v38)
              {
                v40 = CWFGetOSLog();
              }

              else
              {
                v40 = MEMORY[0x1E69E9C10];
                v42 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v115 = 138543362;
                v116 = v16;
                LODWORD(v88) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 16, "[corewifi] Network '%{public}@' is due for denyListRemove", &v115, v88);
              }

LABEL_30:
              v43 = CWFGetOSLog();
              if (v43)
              {
                v44 = CWFGetOSLog();
              }

              else
              {
                v44 = MEMORY[0x1E69E9C10];
                v45 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v115 = 136446466;
                v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                v117 = 2114;
                v118 = v16;
                LODWORD(v88) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v44, 16, "[corewifi] %{public}s DenyListRemove network '%{public}@' for autojoin ", &v115, v88);
              }

              [v5 addObject:v29];
LABEL_36:
              if ([v29 state] == 3)
              {
                v46 = CWFGetOSLog();
                if (v46)
                {
                  v47 = CWFGetOSLog();
                }

                else
                {
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  v115 = 136446466;
                  v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                  v117 = 2114;
                  v118 = v16;
                  LODWORD(v88) = 22;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v47, 16, "[corewifi] %{public}s DenyListRemove network '%{public}@' for WoW ", &v115, v88);
                }

                [v5 addObject:v29];
              }

              goto LABEL_43;
            }

            if (v38)
            {
              v41 = CWFGetOSLog();
            }

            else
            {
              v41 = MEMORY[0x1E69E9C10];
              v49 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v115 = 138543362;
              v116 = v16;
              LODWORD(v88) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v41, 16, "[corewifi] Skip denyListRemove network '%{public}@' - not due.", &v115, v88);
            }

LABEL_43:
            ++v28;
          }

          while (v26 != v28);
          v50 = [statesCurrent3 countByEnumeratingWithState:&v105 objects:v122 count:16];
          v26 = v50;
          if (!v50)
          {
LABEL_50:

            v7 = v89;
            self = selfCopy;
            v8 = v92;
            v9 = v91;
            break;
          }
        }
      }

      scanResultForNetworkDenyListItem4 = [v9 scanResultForNetworkDenyListItem];
      v52 = [(CWFNetworkDenyList *)self isNetworkInDenyListedState:2 scanResult:scanResultForNetworkDenyListItem4];

      if (!v52)
      {
        goto LABEL_83;
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      statesCurrent4 = [v9 statesCurrent];
      v54 = [statesCurrent4 countByEnumeratingWithState:&v101 objects:v121 count:16];
      if (!v54)
      {
        goto LABEL_82;
      }

      v55 = v54;
      v56 = *v102;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v102 != v56)
          {
            objc_enumerationMutation(statesCurrent4);
          }

          v58 = *(*(&v101 + 1) + 8 * i);
          if ([v58 state] == 2)
          {
            if (reason != 5)
            {
              goto LABEL_70;
            }

            [v58 stateTimestamp];
            if (v59 > v22)
            {
              [v58 stateTimestamp];
              v22 = v60;
            }

            date2 = [MEMORY[0x1E695DF00] date];
            [date2 timeIntervalSince1970];
            v63 = v62;

            v64 = v63 - v22;
            [(CWFNetworkDenyList *)selfCopy BSSDenyListExpiry];
            v66 = v65;
            v67 = CWFGetOSLog();
            v68 = v67;
            if (v64 > v66)
            {
              if (v67)
              {
                v69 = CWFGetOSLog();
              }

              else
              {
                v69 = MEMORY[0x1E69E9C10];
                v71 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                v115 = 138543618;
                v116 = v16;
                v117 = 2114;
                v118 = bSSID;
                LODWORD(v88) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v69, 16, "[corewifi] BSS '%{public}@[%{public}@]' is due for denyListRemove", &v115, v88);
              }

LABEL_70:
              v72 = CWFGetOSLog();
              if (v72)
              {
                v73 = CWFGetOSLog();
              }

              else
              {
                v73 = MEMORY[0x1E69E9C10];
                v74 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v115 = 136446722;
                v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
                v117 = 2114;
                v118 = v16;
                v119 = 2114;
                v120 = bSSID;
                LODWORD(v88) = 32;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v73, 16, "[corewifi] %{public}s DenyListRemove BSS '%{public}@[%{public}@]' for autojoin ", &v115, v88);
              }

              [v5 addObject:v58];
              continue;
            }

            if (v67)
            {
              v70 = CWFGetOSLog();
            }

            else
            {
              v70 = MEMORY[0x1E69E9C10];
              v75 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v115 = 138543618;
              v116 = v16;
              v117 = 2114;
              v118 = bSSID;
              LODWORD(v88) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 16, "[corewifi] Skip denyListRemove BSS '%{public}@[%{public}@]' - not due.", &v115, v88);
            }
          }
        }

        v55 = [statesCurrent4 countByEnumeratingWithState:&v101 objects:v121 count:16];
      }

      while (v55);
LABEL_82:

      v7 = v89;
      self = selfCopy;
      v8 = v92;
      v9 = v91;
LABEL_83:
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = sub_1E0CE1578;
      v98[3] = &unk_1E86E8D48;
      v76 = v9;
      v99 = v76;
      reasonCopy = reason;
      [v5 enumerateObjectsUsingBlock:v98];
      statesCurrent5 = [v76 statesCurrent];
      [statesCurrent5 removeObjectsInArray:v5];

      v8 |= [v5 count] != 0;
      [v5 removeAllObjects];

LABEL_84:
      v10 = v95 + 1;
      v11 = v9;
    }

    while (v95 + 1 != v94);
    v94 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v123 count:16];
  }

  while (v94);

LABEL_87:
  if ([v7 count])
  {
    v78 = CWFGetOSLog();
    if (v78)
    {
      v79 = CWFGetOSLog();
    }

    else
    {
      v79 = MEMORY[0x1E69E9C10];
      v80 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v115 = 136446210;
      v116 = "[CWFNetworkDenyList removeDenyListStateWithDenyListRemoveReason:]";
      LODWORD(v88) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v79, 16, "[corewifi] %{public}s DenyListRemove all networks", &v115, v88);
    }

    [(NSMutableArray *)self->_denyList removeObjectsInArray:v7];
  }

  if (v8)
  {
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF00);
    }
  }

  [(CWFNetworkDenyList *)self _printDenyList];
LABEL_98:
}

- (void)removeExpiredDenyListedState:(unint64_t)state
{
  v154 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    CWFStringFromDenyListState(state);
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v141 = 136446466;
    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
    v143 = 2112;
    v144 = v8;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s: Looking to remove expired denyListed entries in state %@", &v141, 22);
  }

  [(CWFNetworkDenyList *)self _printDenyList];
  if (v4)
  {
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v9 = self->_denyList;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v137 objects:v153 count:16];
    if (!v10)
    {

      [(NSMutableArray *)self->_denyList removeObjectsInArray:v119];
      [(CWFNetworkDenyList *)self _printDenyList];
      goto LABEL_127;
    }

    v11 = 0;
    v121 = 0;
    v122 = *v138;
    v125 = v4;
    v117 = v9;
    v12 = v10;
    while (1)
    {
      v13 = 0;
      v14 = v11;
      v118 = v12;
      do
      {
        if (*v138 != v122)
        {
          objc_enumerationMutation(v9);
        }

        v123 = v13;
        v11 = *(*(&v137 + 1) + 8 * v13);

        statesCurrent = [v11 statesCurrent];
        if (statesCurrent)
        {
          v16 = statesCurrent;
          statesCurrent2 = [v11 statesCurrent];
          v18 = [statesCurrent2 count];

          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x1E696AEC0]);
            scanResultForNetworkDenyListItem = [v11 scanResultForNetworkDenyListItem];
            sSID = [scanResultForNetworkDenyListItem SSID];
            *&v22 = COERCE_DOUBLE([v19 initWithData:sSID encoding:4]);

            v124 = v22;
            if (*&v22 == 0.0)
            {
              v111 = CWFGetOSLog();
              if (v111)
              {
                v112 = CWFGetOSLog();
              }

              else
              {
                v112 = MEMORY[0x1E69E9C10];
                v113 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                v141 = 136446210;
                v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                LODWORD(v116) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v112, 16, "[corewifi] %{public}s SSID is null", &v141, v116);
              }

              goto LABEL_127;
            }

            statesHistory = [v11 statesHistory];
            v24 = [statesHistory count];

            if (v24)
            {
              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              statesHistory2 = [v11 statesHistory];
              reverseObjectEnumerator = [statesHistory2 reverseObjectEnumerator];

              v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v133 objects:v152 count:16];
              v28 = 0.0;
              if (!v27)
              {
                goto LABEL_36;
              }

              v29 = v27;
              v30 = *v134;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v134 != v30)
                  {
                    objc_enumerationMutation(reverseObjectEnumerator);
                  }

                  v32 = *(*(&v133 + 1) + 8 * i);
                  if (v32 && ([*(*(&v133 + 1) + 8 * i) state] == state || objc_msgSend(v32, "state") == 5))
                  {
                    [v32 stateTimestamp];
                    v28 = v41;
                    goto LABEL_36;
                  }
                }

                v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v133 objects:v152 count:16];
              }

              while (v29);
LABEL_36:
            }

            else
            {
              v28 = 0.0;
            }

            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v120 = v11;
            statesCurrent3 = [v11 statesCurrent];
            v43 = [statesCurrent3 countByEnumeratingWithState:&v129 objects:v151 count:16];
            if (!v43)
            {
              goto LABEL_111;
            }

            v44 = v43;
            v45 = *v130;
            while (2)
            {
              v46 = 0;
LABEL_41:
              if (*v130 != v45)
              {
                objc_enumerationMutation(statesCurrent3);
              }

              v47 = *(*(&v129 + 1) + 8 * v46);
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSince1970];
              v50 = v49;

              if ([v47 state] == state && objc_msgSend(v47, "state") == 1)
              {
                [(CWFNetworkDenyList *)self autoJoinkDenyListExpiry];
                v52 = v51;
                [v47 stateTimestamp];
                v54 = v53;
                v55 = CWFGetOSLog();
                if (v55)
                {
                  v56 = CWFGetOSLog();
                }

                else
                {
                  v56 = MEMORY[0x1E69E9C10];
                  v57 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v141 = 136446722;
                  v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v143 = 2048;
                  v144 = v50 - v54;
                  v145 = 2048;
                  v146 = v52;
                  LODWORD(v116) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v56, 16, "[corewifi] %{public}s timeDiff:%f expiry:%f ", &v141, v116);
                }

                if (v50 - v54 > v52)
                {
                  stateString = [v47 stateString];
                  v59 = CWFGetOSLog();
                  if (v59)
                  {
                    v60 = CWFGetOSLog();
                  }

                  else
                  {
                    v60 = MEMORY[0x1E69E9C10];
                    v61 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v54];
                    v141 = 136447234;
                    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v143 = 2114;
                    v144 = *&v124;
                    v145 = 2114;
                    v146 = *&stateString;
                    v147 = 2114;
                    v148 = v62;
                    v149 = 2114;
                    v150 = v124;
                    LODWORD(v116) = 52;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v60, 16, "[corewifi] %{public}s DenyListRemove '%{public}@' expired denyListed state %{public}@ (%{public}@) for:%{public}@", &v141, v116);
                  }

                  [v125 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 3)
              {
                [(CWFNetworkDenyList *)self wowDenyListExpiry];
                v64 = v63;
                [v47 stateTimestamp];
                v66 = v65;
                v67 = v28;
                if (v28 == 0.0)
                {
                  v68 = CWFGetOSLog();
                  if (v68)
                  {
                    v69 = CWFGetOSLog();
                  }

                  else
                  {
                    v69 = MEMORY[0x1E69E9C10];
                    v70 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    v141 = 136446210;
                    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    LODWORD(v116) = 12;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v69, 16, "[corewifi] %{public}s No history for most recent denyListing time!!", &v141, v116);
                  }

                  v67 = v66;
                }

                reason = [v47 reason];
                v72 = CWFGetOSLog();
                v73 = v72;
                if (reason == 2 && v50 - v66 <= 3600.0)
                {
                  if (v72)
                  {
                    stateString4 = CWFGetOSLog();
                  }

                  else
                  {
                    stateString4 = MEMORY[0x1E69E9C10];
                    v81 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(stateString4, OS_LOG_TYPE_ERROR))
                  {
                    v141 = 136446210;
                    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    LODWORD(v116) = 12;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, stateString4, 16, "[corewifi] %{public}s Skipping denyList expiration: recent power alert", &v141, v116);
                  }

                  goto LABEL_108;
                }

                if (v72)
                {
                  v75 = CWFGetOSLog();
                }

                else
                {
                  v75 = MEMORY[0x1E69E9C10];
                  v76 = MEMORY[0x1E69E9C10];
                }

                v77 = v50 - v67;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v141 = 136446722;
                  v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v143 = 2048;
                  v144 = v77;
                  v145 = 2048;
                  v146 = v64;
                  LODWORD(v116) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v75, 16, "[corewifi] %{public}s timeDiff:%f expiry:%f ", &v141, v116);
                }

                if (v77 > v64)
                {
                  stateString2 = [v47 stateString];
                  v79 = CWFGetOSLog();
                  if (v79)
                  {
                    v80 = CWFGetOSLog();
                  }

                  else
                  {
                    v80 = MEMORY[0x1E69E9C10];
                    v82 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    v83 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v66];
                    v141 = 136447234;
                    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v143 = 2114;
                    v144 = *&v124;
                    v145 = 2114;
                    v146 = *&stateString2;
                    v147 = 2114;
                    v148 = v83;
                    v149 = 2114;
                    v150 = v124;
                    LODWORD(v116) = 52;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v80, 16, "[corewifi] %{public}s DenyListRemove '%{public}@' expired denyListed state %{public}@ (%{public}@) for:%{public}@", &v141, v116);
                  }

                  [v125 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 2 && objc_msgSend(v47, "reason") == 8)
              {
                [(CWFNetworkDenyList *)self BSSDenyListExpiry];
                v85 = v84;
                [v47 stateTimestamp];
                v87 = v86;
                v88 = CWFGetOSLog();
                if (v88)
                {
                  v89 = CWFGetOSLog();
                }

                else
                {
                  v89 = MEMORY[0x1E69E9C10];
                  v90 = MEMORY[0x1E69E9C10];
                }

                v91 = v50 - v87;
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v141 = 136446722;
                  v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v143 = 2048;
                  v144 = v91;
                  v145 = 2048;
                  v146 = v85;
                  LODWORD(v116) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v89, 16, "[corewifi] %{public}s timeDiff:%f expiry:%f ", &v141, v116);
                }

                if (v91 > v85)
                {
                  stateString3 = [v47 stateString];
                  v93 = CWFGetOSLog();
                  if (v93)
                  {
                    v94 = CWFGetOSLog();
                  }

                  else
                  {
                    v94 = MEMORY[0x1E69E9C10];
                    v95 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    v96 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v87];
                    v141 = 136447234;
                    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                    v143 = 2114;
                    v144 = *&v124;
                    v145 = 2114;
                    v146 = *&stateString3;
                    v147 = 2114;
                    v148 = v96;
                    v149 = 2114;
                    v150 = v124;
                    LODWORD(v116) = 52;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v94, 16, "[corewifi] %{public}s DenyListRemove '%{public}@' expired denyListed state %{public}@ (%{public}@) for:%{public}@", &v141, v116);
                  }

                  [v125 addObject:v47];
                }
              }

              if ([v47 state] == state && objc_msgSend(v47, "state") == 4)
              {
                stateString4 = [v47 stateString];
                [v47 stateTimestamp];
                v98 = v97;
                v99 = CWFGetOSLog();
                if (v99)
                {
                  v100 = CWFGetOSLog();
                }

                else
                {
                  v100 = MEMORY[0x1E69E9C10];
                  v101 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  v102 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v98];
                  v141 = 136447234;
                  v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
                  v143 = 2114;
                  v144 = *&v124;
                  v145 = 2114;
                  v146 = *&stateString4;
                  v147 = 2114;
                  v148 = v102;
                  v149 = 2114;
                  v150 = v124;
                  LODWORD(v116) = 52;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v100, 16, "[corewifi] %{public}s DenyListRemove '%{public}@' expired denyListed state %{public}@ (%{public}@) for:%{public}@", &v141, v116);
                }

                [v125 addObject:v47];
LABEL_108:
              }

              if (v44 == ++v46)
              {
                v44 = [statesCurrent3 countByEnumeratingWithState:&v129 objects:v151 count:16];
                if (!v44)
                {
LABEL_111:

                  v127[0] = MEMORY[0x1E69E9820];
                  v127[1] = 3221225472;
                  v127[2] = sub_1E0CE2744;
                  v127[3] = &unk_1E86E8D20;
                  v11 = v120;
                  v103 = v120;
                  v128 = v103;
                  v4 = v125;
                  [v125 enumerateObjectsUsingBlock:v127];
                  statesCurrent4 = [v103 statesCurrent];
                  [statesCurrent4 removeObjectsInArray:v125];

                  statesCurrent5 = [v103 statesCurrent];
                  v106 = [statesCurrent5 count];

                  if (!v106)
                  {
                    denyListTriggers = [v103 denyListTriggers];
                    [denyListTriggers removeAllObjects];

                    statesHistory3 = [v103 statesHistory];
                    [statesHistory3 removeAllObjects];

                    [v119 addObject:v103];
                  }

                  v121 |= [v125 count] != 0;
                  [v125 removeAllObjects];

                  v9 = v117;
                  v12 = v118;
                  v36 = v123;
                  goto LABEL_114;
                }

                continue;
              }

              goto LABEL_41;
            }
          }
        }

        v33 = CWFGetOSLog();
        if (v33)
        {
          v34 = CWFGetOSLog();
        }

        else
        {
          v34 = MEMORY[0x1E69E9C10];
          v35 = MEMORY[0x1E69E9C10];
        }

        v36 = v123;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          statesCurrent6 = [v11 statesCurrent];
          v141 = 136446466;
          *&v38 = COERCE_DOUBLE(@"empty");
          if (!statesCurrent6)
          {
            *&v38 = COERCE_DOUBLE(@"nil");
          }

          v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
          v143 = 2112;
          v144 = *&v38;
          LODWORD(v116) = 22;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[corewifi] %{public}s: statesCurrent is %@", &v141, v116);
        }

        denyListTriggers2 = [v11 denyListTriggers];
        [denyListTriggers2 removeAllObjects];

        statesHistory4 = [v11 statesHistory];
        [statesHistory4 removeAllObjects];

        [v119 addObject:v11];
LABEL_114:
        v13 = v36 + 1;
        v14 = v11;
      }

      while (v13 != v12);
      v12 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v137 objects:v153 count:16];
      if (!v12)
      {

        [(NSMutableArray *)self->_denyList removeObjectsInArray:v119];
        [(CWFNetworkDenyList *)self _printDenyList];
        if (v121)
        {
          denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

          if (denyListDidUpdateHandler)
          {
            denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
            (*(denyListDidUpdateHandler2 + 16))(denyListDidUpdateHandler2, &unk_1F5B8AF20);
            goto LABEL_119;
          }
        }

        goto LABEL_127;
      }
    }
  }

  v114 = CWFGetOSLog();
  if (v114)
  {
    denyListDidUpdateHandler2 = CWFGetOSLog();
  }

  else
  {
    denyListDidUpdateHandler2 = MEMORY[0x1E69E9C10];
    v115 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(denyListDidUpdateHandler2, OS_LOG_TYPE_ERROR))
  {
    v141 = 136446210;
    v142 = "[CWFNetworkDenyList removeExpiredDenyListedState:]";
    LODWORD(v116) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, denyListDidUpdateHandler2, 16, "[corewifi] %{public}s discardedNodes is null", &v141, v116);
  }

LABEL_119:

LABEL_127:
}

- (void)removeAllDenyListedItems
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v24 = 136446210;
    v25 = "[CWFNetworkDenyList removeAllDenyListedItems]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 16, "[corewifi] %{public}s Clearing all denyListed networks: ", &v24, 12);
  }

  if ([(NSMutableArray *)self->_denyList count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = self->_denyList;
    v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);

          [v6 addObject:v12];
          statesCurrent = [v12 statesCurrent];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = sub_1E0CE2B00;
          v17[3] = &unk_1E86E8D20;
          v9 = v12;
          v18 = v9;
          [statesCurrent enumerateObjectsUsingBlock:v17];
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_denyList removeObjectsInArray:v6];
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF40);
    }
  }

  else
  {
    v6 = 0;
  }

  [(CWFNetworkDenyList *)self _printDenyList];
}

- (void)removeNetworkDenyListInfoWithReason:(unint64_t)reason forScanResult:(id)result
{
  v145 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (!resultCopy)
  {
    [(CWFNetworkDenyList *)self _printDenyList];
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v130 = 136446210;
      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 1, "[corewifi] %{public}s DenyListRemove all networks", &v130, 12);
    }

    [(CWFNetworkDenyList *)self removeAllDenyListedItems];
  }

  if (reason == 1)
  {
    sSID = [resultCopy SSID];
    v10 = [(CWFNetworkDenyList *)self _findNetworkDenyListItemsForSSID:sSID];

    if ([v10 count])
    {
      v112 = 0;
      goto LABEL_25;
    }

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    sSID2 = [resultCopy SSID];
    v112 = [v13 initWithData:sSID2 encoding:4];

    v15 = CWFGetOSLog();
    if (v15)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      bSSID = [resultCopy BSSID];
      v130 = 136446722;
      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
      v132 = 2114;
      v133 = v112;
      v134 = 2114;
      v135 = bSSID;
      LODWORD(v101) = 32;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %{public}s No denyListItem found for SSID:%{public}@. The BSSID:%{public}@ was not considered", &v130, v101);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:resultCopy];
    if (v11)
    {
      v12 = v11;
      [v10 addObject:v11];
      v112 = 0;
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      sSID3 = [resultCopy SSID];
      v112 = [v16 initWithData:sSID3 encoding:4];

      v18 = CWFGetOSLog();
      if (v18)
      {
        v19 = CWFGetOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        bSSID2 = [resultCopy BSSID];
        v130 = 136446722;
        v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
        v132 = 2114;
        v133 = v112;
        v134 = 2114;
        v135 = bSSID2;
        LODWORD(v101) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s denyListItem not found with SSID:%{public}@ BSSID:%{public}@", &v130, v101);
      }

      v12 = 0;
    }
  }

LABEL_25:
  v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v111)
  {
    v97 = CWFGetOSLog();
    if (v97)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v99 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

LABEL_150:
    v130 = 136446210;
    v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
    LODWORD(v101) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s discardedNodes is null", &v130, v101);
LABEL_151:
    v96 = 0;
    v109 = 0;
    goto LABEL_140;
  }

  v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v109)
  {
    v98 = CWFGetOSLog();
    if (v98)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v100 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v24 = v10;
  v106 = [v24 countByEnumeratingWithState:&v125 objects:v144 count:16];
  if (v106)
  {
    v102 = v10;
    v103 = resultCopy;
    v110 = 0;
    v25 = 0x1E696A000uLL;
    v105 = *v126;
    v104 = v24;
    do
    {
      for (i = 0; i != v106; i = v93 + 1)
      {
        if (*v126 != v105)
        {
          objc_enumerationMutation(v24);
        }

        v107 = i;
        v27 = *(*(&v125 + 1) + 8 * i);
        v28 = objc_alloc(*(v25 + 3776));
        scanResultForNetworkDenyListItem = [v27 scanResultForNetworkDenyListItem];
        sSID4 = [scanResultForNetworkDenyListItem SSID];
        v31 = [v28 initWithData:sSID4 encoding:4];

        v112 = v31;
        if (v31)
        {
          scanResultForNetworkDenyListItem2 = [v27 scanResultForNetworkDenyListItem];
          bSSID3 = [scanResultForNetworkDenyListItem2 BSSID];

          if (bSSID3)
          {
            v110 = bSSID3;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            statesCurrent = [v27 statesCurrent];
            v35 = [statesCurrent countByEnumeratingWithState:&v121 objects:v143 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v122;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v122 != v37)
                  {
                    objc_enumerationMutation(statesCurrent);
                  }

                  v39 = *(*(&v121 + 1) + 8 * j);
                  if ([v39 state] == 1)
                  {
                    v40 = CWFGetOSLog();
                    if (v40)
                    {
                      v41 = CWFGetOSLog();
                    }

                    else
                    {
                      v41 = MEMORY[0x1E69E9C10];
                      v42 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      v130 = 136446722;
                      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v132 = 2114;
                      v133 = v112;
                      v134 = 2114;
                      v135 = v110;
                      LODWORD(v101) = 32;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v41, 16, "[corewifi] %{public}s DenyListRemove and removing '%{public}@[%{public}@]' from Autojoin denyList", &v130, v101);
                    }

                    [v111 addObject:v39];
                  }

                  if ([v39 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](self, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v27, reason, v112))
                  {
                    v43 = CWFGetOSLog();
                    if (v43)
                    {
                      v44 = CWFGetOSLog();
                    }

                    else
                    {
                      v44 = MEMORY[0x1E69E9C10];
                      v45 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      v130 = 136446722;
                      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v132 = 2114;
                      v133 = v112;
                      v134 = 2114;
                      v135 = v110;
                      LODWORD(v101) = 32;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v44, 16, "[corewifi] %{public}s DenyListRemove and removing '%{public}@[%{public}@]' from WoW denyList", &v130, v101);
                    }

                    [v111 addObject:v39];
                  }

                  if ([v39 state] == 2)
                  {
                    v46 = CWFGetOSLog();
                    if (v46)
                    {
                      v47 = CWFGetOSLog();
                    }

                    else
                    {
                      v47 = MEMORY[0x1E69E9C10];
                      v48 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                    {
                      v130 = 136446722;
                      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v132 = 2114;
                      v133 = v112;
                      v134 = 2114;
                      v135 = v110;
                      LODWORD(v101) = 32;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v47, 16, "[corewifi] %{public}s DenyListRemove and removing '%{public}@[%{public}@]' from BSS denyList", &v130, v101);
                    }

                    [v111 addObject:v39];
                  }
                }

                v36 = [statesCurrent countByEnumeratingWithState:&v121 objects:v143 count:16];
              }

              while (v36);
            }

            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            denyListTriggers = [v27 denyListTriggers];
            v50 = [denyListTriggers countByEnumeratingWithState:&v117 objects:v142 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v118;
              do
              {
                v53 = 0;
                do
                {
                  if (*v118 != v52)
                  {
                    objc_enumerationMutation(denyListTriggers);
                  }

                  v54 = *(*(&v117 + 1) + 8 * v53);
                  reasonString = [v54 reasonString];
                  [v54 reasonTimestamp];
                  v57 = v56;
                  date = [MEMORY[0x1E695DF00] date];
                  [date timeIntervalSince1970];
                  v60 = v59;

                  if (![v54 reason] || objc_msgSend(v54, "reason") == 1 || objc_msgSend(v54, "reason") == 5 || objc_msgSend(v54, "reason") == 7 || objc_msgSend(v54, "reason") == 2 || objc_msgSend(v54, "reason") == 3 || objc_msgSend(v54, "reason") == 11 || objc_msgSend(v54, "reason") == 12)
                  {
                    v61 = CWFGetOSLog();
                    if (v61)
                    {
                      v62 = CWFGetOSLog();
                    }

                    else
                    {
                      v62 = MEMORY[0x1E69E9C10];
                      v63 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v57];
                      v130 = 136447234;
                      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v132 = 2114;
                      v133 = reasonString;
                      v134 = 2114;
                      v135 = v64;
                      v136 = 2114;
                      v137 = v112;
                      v138 = 2114;
                      v139 = v110;
                      LODWORD(v101) = 52;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v62, 16, "[corewifi] %{public}s Clearing trigger %{public}@ (%{public}@) for '%{public}@[%{public}@]'", &v130, v101);
                      goto LABEL_81;
                    }

                    goto LABEL_82;
                  }

                  if (reason == 1)
                  {
                    v65 = v60 - v57;
                    if ([v54 reason] == 4 && v57 != 0.0 && v65 > 300.0)
                    {
                      v66 = CWFGetOSLog();
                      if (v66)
                      {
                        v62 = CWFGetOSLog();
                      }

                      else
                      {
                        v62 = MEMORY[0x1E69E9C10];
                        v73 = MEMORY[0x1E69E9C10];
                      }

                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v57];
                        v130 = 136447234;
                        v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                        v132 = 2114;
                        v133 = reasonString;
                        v134 = 2114;
                        v135 = v64;
                        v136 = 2114;
                        v137 = v112;
                        v138 = 2114;
                        v139 = v110;
                        LODWORD(v101) = 52;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v62, 16, "[corewifi] %{public}s Clearing(for interval exceeded) trigger %{public}@ (%{public}@) for '%{public}@[%{public}@]'", &v130, v101);
                        goto LABEL_81;
                      }

                      goto LABEL_82;
                    }

                    if ([v54 reason] == 8 && v57 != 0.0)
                    {
                      [(CWFNetworkDenyList *)self BSSDenyListExpiry];
                      if (v65 > v67)
                      {
                        v68 = CWFGetOSLog();
                        if (v68)
                        {
                          v62 = CWFGetOSLog();
                        }

                        else
                        {
                          v62 = MEMORY[0x1E69E9C10];
                          v74 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                        {
                          v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v57];
                          [v54 reasonTimestamp];
                          v130 = 136447490;
                          v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                          v132 = 2114;
                          v133 = reasonString;
                          v134 = 2114;
                          v135 = v64;
                          v136 = 2114;
                          v137 = v112;
                          v138 = 2114;
                          v139 = v110;
                          v140 = 2048;
                          v141 = (v60 - v75);
                          LODWORD(v101) = 62;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v62, 16, "[corewifi] %{public}s Clearing(for interval exceeded) trigger %{public}@ (%{public}@) for '%{public}@[%{public}@] (diff:%lu)'", &v130, v101);
LABEL_81:
                        }

LABEL_82:

                        [v109 addObject:v54];
                        goto LABEL_83;
                      }
                    }
                  }

                  v69 = dbl_1E0D81C10[[v54 reason] == 2];
                  [v54 reasonTimestamp];
                  if (v60 - v70 > v69)
                  {
                    v71 = CWFGetOSLog();
                    if (v71)
                    {
                      v62 = CWFGetOSLog();
                    }

                    else
                    {
                      v62 = MEMORY[0x1E69E9C10];
                      v72 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v60];
                      v130 = 136446978;
                      v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
                      v132 = 2114;
                      v133 = reasonString;
                      v134 = 2114;
                      v135 = v64;
                      v136 = 2114;
                      v137 = v112;
                      LODWORD(v101) = 42;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v62, 16, "[corewifi] %{public}s Clearing(expired) trigger %{public}@ (%{public}@) for '%{public}@'", &v130, v101);
                      goto LABEL_81;
                    }

                    goto LABEL_82;
                  }

LABEL_83:

                  ++v53;
                }

                while (v51 != v53);
                v76 = [denyListTriggers countByEnumeratingWithState:&v117 objects:v142 count:16];
                v51 = v76;
              }

              while (v76);
            }

            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v77 = v111;
            v78 = [v77 countByEnumeratingWithState:&v113 objects:v129 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v114;
              do
              {
                for (k = 0; k != v79; ++k)
                {
                  if (*v114 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  [v27 processDenyListStateMetric:*(*(&v113 + 1) + 8 * k) denyListRemove:1 denyListRemoveReason:1];
                }

                v79 = [v77 countByEnumeratingWithState:&v113 objects:v129 count:16];
              }

              while (v79);
            }

            statesCurrent2 = [v27 statesCurrent];
            [statesCurrent2 removeObjectsInArray:v77];

            denyListTriggers2 = [v27 denyListTriggers];
            [denyListTriggers2 removeObjectsInArray:v109];

            v24 = v104;
            if ([v77 count])
            {
              denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

              if (denyListDidUpdateHandler)
              {
                denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
                (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B8AF60);
              }
            }

            statesCurrent3 = [v27 statesCurrent];
            v25 = 0x1E696A000;
            if ([statesCurrent3 count])
            {
            }

            else
            {
              denyListTriggers3 = [v27 denyListTriggers];
              v92 = [denyListTriggers3 count];

              if (!v92)
              {
                [(NSMutableArray *)self->_denyList removeObject:v27];
              }
            }

            [v77 removeAllObjects];
            [v109 removeAllObjects];
            v93 = v107;
          }

          else
          {
            v89 = CWFGetOSLog();
            if (v89)
            {
              v90 = CWFGetOSLog();
            }

            else
            {
              v90 = MEMORY[0x1E69E9C10];
              v95 = MEMORY[0x1E69E9C10];
            }

            v93 = v107;

            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v130 = 136446210;
              v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
              LODWORD(v101) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v90, 16, "[corewifi] %{public}s BSSID is null", &v130, v101);
            }

            v110 = 0;
          }
        }

        else
        {
          v87 = CWFGetOSLog();
          if (v87)
          {
            v88 = CWFGetOSLog();
          }

          else
          {
            v88 = MEMORY[0x1E69E9C10];
            v94 = MEMORY[0x1E69E9C10];
          }

          v93 = v107;

          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v130 = 136446210;
            v131 = "[CWFNetworkDenyList removeNetworkDenyListInfoWithReason:forScanResult:]";
            LODWORD(v101) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v88, 16, "[corewifi] %{public}s SSID is null", &v130, v101);
          }
        }
      }

      v106 = [v24 countByEnumeratingWithState:&v125 objects:v144 count:16];
    }

    while (v106);
    v10 = v102;
    resultCopy = v103;
    v96 = v110;
  }

  else
  {
    v96 = 0;
  }

LABEL_140:

  [v10 removeAllObjects];
}

- (BOOL)_evaluateTriggersForDenyListRemove:(id)remove denyListRemoveReason:(unint64_t)reason SSID:(id)d
{
  v51 = *MEMORY[0x1E69E9840];
  removeCopy = remove;
  dCopy = d;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = removeCopy;
  statesHistory = [removeCopy statesHistory];
  v9 = [statesHistory count];

  isUserModeInteractiveHandler = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];

  if (isUserModeInteractiveHandler)
  {
    isUserModeInteractiveHandler2 = [(CWFNetworkDenyList *)self isUserModeInteractiveHandler];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E0CE4340;
    v41[3] = &unk_1E86E8D70;
    v41[4] = &v42;
    (isUserModeInteractiveHandler2)[2](isUserModeInteractiveHandler2, v41);

    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (*(v43 + 24))
      {
        v17 = "interactive";
      }

      else
      {
        v17 = "non-interactive";
      }

      v47 = 136446466;
      v48 = "[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:]";
      v49 = 2082;
      v50 = v17;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] %{public}s User mode %{public}s ", &v47, 22);
    }

    if (v43[3])
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      statesHistory2 = [removeCopy statesHistory];
      v20 = [statesHistory2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = *v38;
        v24 = v9 - 1;
        reason = 13;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(statesHistory2);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            if ([v27 state] != 1)
            {
              if ([v27 reason] == 2)
              {
                date = [MEMORY[0x1E695DF00] date];
                [date timeIntervalSince1970];
                v30 = v29;

                [v27 stateTimestamp];
                v22 |= v30 - v31 < 21600.0;
              }

              if (v21 == v24)
              {
                reason = [v27 reason];
              }

              ++v21;
            }
          }

          v20 = [statesHistory2 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v20);
      }

      else
      {
        v22 = 0;
        reason = 13;
      }

      LOBYTE(v18) = 0;
      if (!((reason != 1) | v22 & 1) && reason <= 7)
      {
        v18 = 0xB0u >> reason;
      }
    }
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v47 = 136446210;
      v48 = "[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s Delegate does not respond to isUserModeInteractive", &v47, 12);
    }

    LOBYTE(v18) = 1;
    *(v43 + 24) = 1;
  }

  _Block_object_dispose(&v42, 8);

  return v18 & 1;
}

- (void)processDenyListedBSSForMetrics:(id)metrics
{
  v43 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_denyList;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v30 = metricsCopy;
      v7 = 0;
      v8 = *v33;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * v9);

          v11 = CWFGetOSLog();
          if (v11)
          {
            v12 = CWFGetOSLog();
          }

          else
          {
            v12 = MEMORY[0x1E69E9C10];
            v13 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];
            sSID = [scanResultForNetworkDenyListItem SSID];
            scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
            bSSID = [scanResultForNetworkDenyListItem2 BSSID];
            v36 = 136446722;
            v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
            v38 = 2114;
            v39 = sSID;
            v40 = 2114;
            v41 = bSSID;
            LODWORD(v29) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %{public}s denyListed %{public}@[%{public}@]", &v36, v29);
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v6);

      metricsCopy = v30;
    }

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sSID2 = [metricsCopy SSID];
      bSSID2 = [metricsCopy BSSID];
      v36 = 136446722;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
      v38 = 2114;
      v39 = sSID2;
      v40 = 2114;
      v41 = bSSID2;
      LODWORD(v29) = 32;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s network %{public}@[%{public}@]", &v36, v29);
    }

    v23 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:metricsCopy];
    if (v23)
    {
      v24 = v23;
      [v23 processDenyListedBSSForMetrics];
    }

    else
    {
      v26 = CWFGetOSLog();
      if (v26)
      {
        v24 = CWFGetOSLog();
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v36 = 136446210;
        v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
        LODWORD(v29) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s Node not found for network", &v36, v29);
      }
    }
  }

  else
  {
    v25 = CWFGetOSLog();
    if (v25)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446210;
      v37 = "[CWFNetworkDenyList processDenyListedBSSForMetrics:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s network nil", &v36, 12);
    }
  }
}

- (void)removeAllDenyListEntriesWithNetworkName:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_denyList;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v34 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v39;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v11);

        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        scanResultForNetworkDenyListItem = [v9 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        v16 = [v13 initWithData:sSID encoding:4];
        v17 = [nameCopy isEqualToString:v16];

        if (v17)
        {
          v18 = CWFGetOSLog();
          if (v18)
          {
            v19 = CWFGetOSLog();
          }

          else
          {
            v19 = MEMORY[0x1E69E9C10];
            v20 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            scanResultForNetworkDenyListItem2 = [v9 scanResultForNetworkDenyListItem];
            sSID2 = [scanResultForNetworkDenyListItem2 SSID];
            scanResultForNetworkDenyListItem3 = [v9 scanResultForNetworkDenyListItem];
            sSID3 = [scanResultForNetworkDenyListItem3 SSID];
            v42 = 136446722;
            v43 = "[CWFNetworkDenyList removeAllDenyListEntriesWithNetworkName:]";
            v44 = 2114;
            v45 = sSID2;
            v46 = 2114;
            v47 = sSID3;
            LODWORD(v32) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s Removing denyList denyListItem for network %{public}@[%{public}@]", &v42, v32);
          }

          denyListTriggers = [v9 denyListTriggers];
          [denyListTriggers removeAllObjects];

          statesCurrent = [v9 statesCurrent];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_1E0CE4B88;
          v36[3] = &unk_1E86E8D20;
          v27 = v9;
          v37 = v27;
          [statesCurrent enumerateObjectsUsingBlock:v36];

          statesCurrent2 = [v27 statesCurrent];
          [statesCurrent2 removeAllObjects];

          statesHistory = [v27 statesHistory];
          [statesHistory removeAllObjects];

          [v34 addObject:v27];
          v8 = 1;
        }

        ++v11;
        v12 = v9;
      }

      while (v7 != v11);
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v7);

    v5 = v34;
    self = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_denyList removeObjectsInArray:v5];
  }

  if (v8)
  {
    denyListDidUpdateHandler = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];

    if (denyListDidUpdateHandler)
    {
      denyListDidUpdateHandler2 = [(CWFNetworkDenyList *)self denyListDidUpdateHandler];
      (denyListDidUpdateHandler2)[2](denyListDidUpdateHandler2, &unk_1F5B89710);
    }
  }
}

- (void)removeNetworkDenyListInfoForTrigger:(unint64_t)trigger forNetwork:(id)network
{
  v77 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  sSID = [networkCopy SSID];
  v10 = [v8 initWithData:sSID encoding:4];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  obj = self->_denyList;
  v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v49)
  {
    v11 = *v66;
    v46 = *v66;
    v47 = networkCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v12;
        v13 = *(*(&v65 + 1) + 8 * v12);
        scanResultForNetworkDenyListItem = [v13 scanResultForNetworkDenyListItem];
        sSID2 = [scanResultForNetworkDenyListItem SSID];
        sSID3 = [networkCopy SSID];
        v17 = [sSID2 isEqual:sSID3];

        if (v17)
        {
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          denyListTriggers = [v13 denyListTriggers];
          v19 = [denyListTriggers countByEnumeratingWithState:&v61 objects:v75 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v62;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v62 != v21)
                {
                  objc_enumerationMutation(denyListTriggers);
                }

                v23 = *(*(&v61 + 1) + 8 * i);
                if ([v23 reason] == trigger)
                {
                  [v7 addObject:v23];
                }
              }

              v20 = [denyListTriggers countByEnumeratingWithState:&v61 objects:v75 count:16];
            }

            while (v20);
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          statesCurrent = [v13 statesCurrent];
          v25 = [statesCurrent countByEnumeratingWithState:&v57 objects:v74 count:16];
          v26 = v51;
          if (v25)
          {
            v27 = v25;
            v28 = *v58;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v58 != v28)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                v30 = *(*(&v57 + 1) + 8 * j);
                if ([v30 reason] == trigger)
                {
                  if ([v30 state] == 3 && -[CWFNetworkDenyList _evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:](selfCopy, "_evaluateTriggersForDenyListRemove:denyListRemoveReason:SSID:", v13, 1, v10))
                  {
                    [v26 addObject:v30];
                    v31 = CWFGetOSLog();
                    if (v31)
                    {
                      v32 = CWFGetOSLog();
                    }

                    else
                    {
                      v32 = MEMORY[0x1E69E9C10];
                      v33 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      v70 = 136446466;
                      v71 = "[CWFNetworkDenyList removeNetworkDenyListInfoForTrigger:forNetwork:]";
                      v72 = 2114;
                      v73 = v10;
                      LODWORD(v44) = 22;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] %{public}s DenyListRemove and removing '%{public}@' from WoW denyList", &v70, v44);
                    }

                    v26 = v51;
                  }

                  else if ([v30 state] != 3)
                  {
                    [v26 addObject:v30];
                  }
                }
              }

              v27 = [statesCurrent countByEnumeratingWithState:&v57 objects:v74 count:16];
            }

            while (v27);
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v34 = v26;
          v35 = [v34 countByEnumeratingWithState:&v53 objects:v69 count:16];
          v11 = v46;
          if (v35)
          {
            v36 = v35;
            v37 = *v54;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v54 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [v13 processDenyListStateMetric:*(*(&v53 + 1) + 8 * k) denyListRemove:1 denyListRemoveReason:1];
              }

              v36 = [v34 countByEnumeratingWithState:&v53 objects:v69 count:16];
            }

            while (v36);
          }

          statesCurrent2 = [v13 statesCurrent];
          [statesCurrent2 removeObjectsInArray:v34];

          denyListTriggers2 = [v13 denyListTriggers];
          [denyListTriggers2 removeObjectsInArray:v7];

          denyListTriggers3 = [v13 denyListTriggers];
          if ([denyListTriggers3 count])
          {

            networkCopy = v47;
          }

          else
          {
            statesCurrent3 = [v13 statesCurrent];
            v43 = [statesCurrent3 count];

            networkCopy = v47;
            if (!v43)
            {
              [v45 addObject:v13];
            }
          }
        }

        v12 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v49);
  }

  [(NSMutableArray *)selfCopy->_denyList removeObjectsInArray:v45];
  [v45 removeAllObjects];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_enabled = 1;
  }

  else
  {
    self->_enabled = 0;
    [(CWFNetworkDenyList *)self removeAllDenyListedItems];
  }
}

- (BOOL)_meetsThresholds:(unint64_t)thresholds count:(unsigned int)count forSSIDThresholds:(BOOL)dThresholds BSSID:(id)d SSID:(id)iD
{
  dThresholdsCopy = dThresholds;
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (dThresholdsCopy)
  {
    sSIDThresholds = [(CWFNetworkDenyList *)self SSIDThresholds];
    v15 = [sSIDThresholds objectAtIndexedSubscript:thresholds];
    unsignedIntValue = [v15 unsignedIntValue];
    LOBYTE(v17) = unsignedIntValue <= count;

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      if (unsignedIntValue > count)
      {
        v25 = "not met";
      }

      else
      {
        v25 = "met";
      }

      sSIDThresholds2 = [(CWFNetworkDenyList *)self SSIDThresholds];
      v27 = [sSIDThresholds2 objectAtIndexedSubscript:thresholds];
      *v31 = 136447234;
      *&v31[4] = "[CWFNetworkDenyList _meetsThresholds:count:forSSIDThresholds:BSSID:SSID:]";
      *&v31[12] = 2114;
      *&v31[14] = iDCopy;
      *&v31[22] = 2082;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = count;
      HIWORD(v32) = 1024;
      LODWORD(v33) = [v27 unsignedIntValue];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 1, "[corewifi] %{public}s SSID '%{public}@' %{public}s thresholds. CurrentCount:%d ThresholdCount:%d", v31, 44, *v31, *&v31[8], v25, v32, v33);
LABEL_18:
    }
  }

  else
  {
    bSSIDThresholds = [(CWFNetworkDenyList *)self BSSIDThresholds];
    v21 = [bSSIDThresholds objectAtIndexedSubscript:thresholds];
    unsignedIntValue2 = [v21 unsignedIntValue];
    v17 = unsignedIntValue2 <= count;

    v23 = CWFGetOSLog();
    if (v23)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      if (unsignedIntValue2 > count)
      {
        v29 = "not met";
      }

      else
      {
        v29 = "met";
      }

      sSIDThresholds2 = [(CWFNetworkDenyList *)self BSSIDThresholds];
      v27 = [sSIDThresholds2 objectAtIndexedSubscript:thresholds];
      *v31 = 136447234;
      *&v31[4] = "[CWFNetworkDenyList _meetsThresholds:count:forSSIDThresholds:BSSID:SSID:]";
      *&v31[12] = 2114;
      *&v31[14] = dCopy;
      *&v31[22] = 2082;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = count;
      HIWORD(v32) = 1024;
      LODWORD(v33) = [v27 unsignedIntValue];
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 1, "[corewifi] %{public}s BSSID '%{public}@' %{public}s thresholds. CurrentCount:%d ThresholdCount:%d", v31, 44, *v31, *&v31[8], v29, v32, v33);
      goto LABEL_18;
    }
  }

  return v17;
}

- (id)_findNetworkDenyListItemsForSSID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_denyList;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);

        scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        v13 = sSID;
        if (dCopy && sSID)
        {
          scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
          sSID2 = [scanResultForNetworkDenyListItem2 SSID];
          v16 = [sSID2 isEqual:dCopy];

          if (v16)
          {
            [v18 addObject:v7];
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v18;
}

- (id)_findNetworkDenyListItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_denyList;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v13 + 1) + 8 * v10);

      if ([v8 containsNetwork:{itemCopy, v13}])
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (id)networksInDenyListedState:(unint64_t)state
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = self->_denyList;
    v23 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v7 = 0;
      obj = v6;
      v22 = *v29;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * v8);

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          statesCurrent = [v7 statesCurrent];
          v11 = [statesCurrent countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                if ([*(*(&v24 + 1) + 8 * i) state] == state)
                {
                  scanResultForNetworkDenyListItem = [v7 scanResultForNetworkDenyListItem];

                  if (scanResultForNetworkDenyListItem)
                  {
                    scanResultForNetworkDenyListItem2 = [v7 scanResultForNetworkDenyListItem];
                    v17 = [scanResultForNetworkDenyListItem2 copyWithZone:0];

                    if (v17)
                    {
                      [v5 addObject:v17];
                    }
                  }
                }
              }

              v12 = [statesCurrent countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          ++v8;
          v9 = v7;
        }

        while (v8 != v23);
        v6 = obj;
        v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446210;
      v35 = "[CWFNetworkDenyList networksInDenyListedState:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 16, "[corewifi] %{public}s  results alloc failed", &v34, 12);
    }
  }

  return v5;
}

- (id)networksInDenyListedStateHistory:(unint64_t)history
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v24)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_denyList;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v31;
      obj = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v11 = v8;
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * i);

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          statesHistory = [v8 statesHistory];
          v13 = [statesHistory countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v27;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v27 != v15)
                {
                  objc_enumerationMutation(statesHistory);
                }

                v17 = *(*(&v26 + 1) + 8 * j);
                if ([v17 state] == history || objc_msgSend(v17, "state") == 5)
                {
                  scanResultForNetworkDenyListItem = [v8 scanResultForNetworkDenyListItem];

                  if (scanResultForNetworkDenyListItem)
                  {
                    scanResultForNetworkDenyListItem2 = [v8 scanResultForNetworkDenyListItem];
                    v20 = [scanResultForNetworkDenyListItem2 copyWithZone:0];

                    if (v20)
                    {
                      [v24 addObject:v20];
                    }

                    goto LABEL_21;
                  }
                }
              }

              v14 = [statesHistory countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }

        v5 = obj;
        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446210;
      v37 = "[CWFNetworkDenyList networksInDenyListedStateHistory:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 16, "[corewifi] %{public}s  results alloc failed", &v36, 12);
    }
  }

  return v24;
}

- (id)denyListedReasonHistoryForNetwork:(id)network state:(unint64_t)state timestamps:(id)timestamps reasonData:(id)data
{
  v57 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  timestampsCopy = timestamps;
  dataCopy = data;
  if ([(CWFNetworkDenyList *)self isNetworkInDenyListedState:state scanResult:networkCopy])
  {
    v13 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:networkCopy];
    if (v13)
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v49)
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        statesHistory = [v13 statesHistory];
        v15 = [statesHistory countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (!v15)
        {
          goto LABEL_37;
        }

        v16 = v15;
        v46 = v13;
        v47 = networkCopy;
        v17 = *v51;
        obj = statesHistory;
        while (1)
        {
          v18 = 0;
          do
          {
            if (*v51 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v50 + 1) + 8 * v18);
            reason = [v19 reason];
            [v19 stateTimestamp];
            v22 = v21;
            reasonData = [v19 reasonData];
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
            if (!v24)
            {
              v29 = CWFGetOSLog();
              if (v29)
              {
                v30 = CWFGetOSLog();
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
                v34 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v55 = 136446210;
                v56 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
                LODWORD(v45) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 16, "[corewifi] %{public}s reasonNum failed", &v55, v45);
              }

              goto LABEL_30;
            }

            v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
            if (!v25)
            {
              v31 = CWFGetOSLog();
              if (v31)
              {
                v30 = CWFGetOSLog();
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
                v35 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v55 = 136446210;
                v56 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
                LODWORD(v45) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 16, "[corewifi] %{public}s timeNum failed", &v55, v45);
              }

LABEL_30:

              v28 = 0;
              v26 = 0;
              goto LABEL_16;
            }

            v26 = v25;
            v27 = [MEMORY[0x1E696AD98] numberWithInteger:reasonData];
            if (v27)
            {
              v28 = v27;
              [v49 addObject:v24];
              if (timestampsCopy)
              {
                [timestampsCopy addObject:v26];
              }

              if (dataCopy)
              {
                [dataCopy addObject:v28];
              }
            }

            else
            {
              v32 = CWFGetOSLog();
              if (v32)
              {
                v33 = CWFGetOSLog();
              }

              else
              {
                v33 = MEMORY[0x1E69E9C10];
                v36 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v55 = 136446210;
                v56 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
                LODWORD(v45) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v33, 16, "[corewifi] %{public}s reasonDataNum failed", &v55, v45);
              }

              v28 = 0;
            }

LABEL_16:

            ++v18;
          }

          while (v16 != v18);
          statesHistory = obj;
          v37 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
          v16 = v37;
          if (!v37)
          {
            v13 = v46;
            networkCopy = v47;
            goto LABEL_37;
          }
        }
      }

      v41 = CWFGetOSLog();
      if (v41)
      {
        v42 = CWFGetOSLog();
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      statesHistory = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v55 = 136446210;
        v56 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 16, "[corewifi] %{public}s  results alloc failed", &v55, 12);
      }
    }

    else
    {
      v39 = CWFGetOSLog();
      if (v39)
      {
        v40 = CWFGetOSLog();
      }

      else
      {
        v40 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      statesHistory = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v55 = 136446210;
        v56 = "[CWFNetworkDenyList denyListedReasonHistoryForNetwork:state:timestamps:reasonData:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 16, "[corewifi] %{public}s  Not in denyListed state", &v55, 12);
      }
    }

    v49 = 0;
LABEL_37:
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (id)reasonsForNetworkInDenyListedState:(id)state state:(unint64_t)a4 timestamps:(id)timestamps reasonData:(id)data
{
  v55 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  timestampsCopy = timestamps;
  dataCopy = data;
  if ([(CWFNetworkDenyList *)self isNetworkInDenyListedState:a4 scanResult:stateCopy])
  {
    v12 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:stateCopy];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v13)
      {
        v14 = v13;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        denyListTriggers = [v12 denyListTriggers];
        v16 = [denyListTriggers countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v16)
        {
          v17 = v16;
          v45 = stateCopy;
          obj = denyListTriggers;
          v44 = v12;
          v18 = *v49;
          do
          {
            v19 = 0;
            do
            {
              if (*v49 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v48 + 1) + 8 * v19);
              reason = [v20 reason];
              [v20 reasonTimestamp];
              v23 = v22;
              reasonData = [v20 reasonData];
              v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
              if (v25)
              {
                v26 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
                if (v26)
                {
                  v27 = v26;
                  v28 = [MEMORY[0x1E696AD98] numberWithInteger:reasonData];
                  if (v28)
                  {
                    v29 = v28;
                    [v14 addObject:v25];
                    [timestampsCopy addObject:v27];
                    [dataCopy addObject:v29];
                  }

                  else
                  {
                    v32 = CWFGetOSLog();
                    if (v32)
                    {
                      v33 = CWFGetOSLog();
                    }

                    else
                    {
                      v33 = MEMORY[0x1E69E9C10];
                      v36 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      v53 = 136446210;
                      v54 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
                      LODWORD(v43) = 12;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v33, 16, "[corewifi] %{public}s reasonDataNum failed", &v53, v43);
                    }
                  }
                }

                else
                {
                  v31 = CWFGetOSLog();
                  if (v31)
                  {
                    v27 = CWFGetOSLog();
                  }

                  else
                  {
                    v27 = MEMORY[0x1E69E9C10];
                    v35 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v53 = 136446210;
                    v54 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
                    LODWORD(v43) = 12;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 16, "[corewifi] %{public}s timeNum failed", &v53, v43);
                  }
                }
              }

              else
              {
                v30 = CWFGetOSLog();
                if (v30)
                {
                  v27 = CWFGetOSLog();
                }

                else
                {
                  v27 = MEMORY[0x1E69E9C10];
                  v34 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v53 = 136446210;
                  v54 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
                  LODWORD(v43) = 12;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 16, "[corewifi] %{public}s reasonNum failed", &v53, v43);
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v37 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
            v17 = v37;
          }

          while (v37);
          v12 = v44;
          stateCopy = v45;
          denyListTriggers = obj;
        }

        goto LABEL_34;
      }

      v40 = CWFGetOSLog();
      if (v40)
      {
        denyListTriggers = CWFGetOSLog();
      }

      else
      {
        denyListTriggers = MEMORY[0x1E69E9C10];
        v42 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
      {
        v53 = 136446210;
        v54 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, denyListTriggers, 16, "[corewifi] %{public}s  results alloc failed", &v53, 12);
      }
    }

    else
    {
      v39 = CWFGetOSLog();
      if (v39)
      {
        denyListTriggers = CWFGetOSLog();
      }

      else
      {
        denyListTriggers = MEMORY[0x1E69E9C10];
        v41 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(denyListTriggers, OS_LOG_TYPE_ERROR))
      {
        v53 = 136446210;
        v54 = "[CWFNetworkDenyList reasonsForNetworkInDenyListedState:state:timestamps:reasonData:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, denyListTriggers, 16, "[corewifi] %{public}s  Not in denyListed state", &v53, 12);
      }
    }

    v14 = 0;
LABEL_34:

    goto LABEL_36;
  }

  v14 = 0;
LABEL_36:

  return v14;
}

- (BOOL)isNetworkInDenyListedState:(unint64_t)state scanResult:(id)result
{
  v5 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:result];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasDenyListState:state];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isNetworkTemporarilyDenyListedForAutoJoin:(id)join
{
  v32 = *MEMORY[0x1E69E9840];
  joinCopy = join;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_denyList;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        scanResultForNetworkDenyListItem = [v10 scanResultForNetworkDenyListItem];
        sSID = [scanResultForNetworkDenyListItem SSID];
        sSID2 = [joinCopy SSID];
        v14 = [sSID isEqual:sSID2];

        if (v14 && [v10 hasDenyListState:1])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          statesCurrent = [v10 statesCurrent];
          v16 = [statesCurrent countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v23;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v23 != v18)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                if (![*(*(&v22 + 1) + 8 * j) reason])
                {

                  v20 = 1;
                  goto LABEL_22;
                }
              }

              v17 = [statesCurrent countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v20 = 0;
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  return v20;
}

- (int64_t)RSSIWhenNetworkWasDenyListed:(id)listed
{
  v3 = [(CWFNetworkDenyList *)self _findNetworkDenyListItem:listed];
  v4 = v3;
  if (v3)
  {
    scanResultForNetworkDenyListItem = [v3 scanResultForNetworkDenyListItem];
    rSSI = [scanResultForNetworkDenyListItem RSSI];
  }

  else
  {
    rSSI = 0;
  }

  return rSSI;
}

- (BOOL)isNetworkDenyListedForAutoJoinDueToTrigDisc:(id)disc RSSI:(int64_t *)i timestamp:(double *)timestamp
{
  v41 = *MEMORY[0x1E69E9840];
  discCopy = disc;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = self->_denyList;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    iCopy = i;
    timestampCopy = timestamp;
    v11 = 0;
    v12 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v11;
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v35 + 1) + 8 * i);

        if ([v11 hasDenyListState:1])
        {
          scanResultForNetworkDenyListItem = [v11 scanResultForNetworkDenyListItem];
          sSID = [scanResultForNetworkDenyListItem SSID];
          sSID2 = [discCopy SSID];
          v18 = [sSID isEqual:sSID2];

          if (v18)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            statesCurrent = [v11 statesCurrent];
            v20 = [statesCurrent countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v32;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v32 != v22)
                  {
                    objc_enumerationMutation(statesCurrent);
                  }

                  v24 = *(*(&v31 + 1) + 8 * j);
                  if ([v24 reason] == 6)
                  {
                    if (iCopy)
                    {
                      *iCopy = [v24 reasonData];
                    }

                    if (timestampCopy)
                    {
                      [v24 stateTimestamp];
                      *timestampCopy = v26;
                    }

                    v25 = 1;
                    goto LABEL_25;
                  }
                }

                v21 = [statesCurrent countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
    v25 = 0;
    statesCurrent = v11;
    v11 = 0;
LABEL_25:
  }

  else
  {
    v11 = 0;
    v25 = 0;
  }

  return v25;
}

- (id)denyListedNetworkSSIDs:(unint64_t)ds
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_denyList;
    v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v25)
    {
      v6 = 0;
      v24 = *v32;
      do
      {
        v7 = 0;
        v8 = v6;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v7;
          v6 = *(*(&v31 + 1) + 8 * v7);

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          statesCurrent = [v6 statesCurrent];
          v10 = [statesCurrent countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v28;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(statesCurrent);
                }

                if ([*(*(&v27 + 1) + 8 * i) state] == ds)
                {
                  scanResultForNetworkDenyListItem = [v6 scanResultForNetworkDenyListItem];
                  sSID = [scanResultForNetworkDenyListItem SSID];

                  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:sSID encoding:4];
                  [v5 appendFormat:@"%@ ", v16];
                }
              }

              v11 = [statesCurrent countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v11);
          }

          v7 = v26 + 1;
          v8 = v6;
        }

        while (v26 + 1 != v25);
        v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v25);
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446466;
      v36 = "[CWFNetworkDenyList denyListedNetworkSSIDs:]";
      v37 = 2114;
      v38 = v5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] %{public}s : %{public}@", &v35, 22);
    }
  }

  else
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446210;
      v36 = "[CWFNetworkDenyList denyListedNetworkSSIDs:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] %{public}s list not created", &v35, 12);
    }
  }

  return v5;
}

@end