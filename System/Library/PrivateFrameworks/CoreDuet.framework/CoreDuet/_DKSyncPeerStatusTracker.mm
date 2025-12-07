@interface _DKSyncPeerStatusTracker
+ (_DKSyncPeerStatusTracker)peerStatusTrackerWithContext:(id)context;
+ (_DKSyncPeerStatusTracker)sharedInstance;
+ (id)stringForTransports:(int64_t)transports;
+ (id)syncPeerTransportsStrings;
- (BOOL)isSingleDevice;
- (_DKKnowledgeStorage)storage;
- (_DKSyncPeerStatusTracker)initWithContext:(id)context;
- (id)_observerBlocks;
- (id)addStatusChangeObserverWithBlock:(id)block;
- (id)allPeers;
- (id)description;
- (id)existingPeerWithIDSDeviceIdentifier:(id)identifier;
- (id)existingPeerWithSourceDeviceID:(id)d;
- (id)lastSuccessfulActivityDateOnTransport:(int64_t)transport forPeer:(id)peer;
- (id)peerWithCompanionLinkDevice:(id)device;
- (id)peerWithIDSDeviceIdentifier:(id)identifier;
- (id)peerWithZoneName:(id)name sourceDeviceID:(id)d;
- (id)peersWithActiveTransports:(int64_t)transports;
- (id)peersWithAnyActiveTransports;
- (id)pseudoPeerForSyncTransportCloudUp;
- (int64_t)activeTransportsForPeer:(id)peer;
- (unint64_t)foreignPeersCount;
- (void)_loadPeers;
- (void)_modifyActiveTransportInPeer:(void *)peer withNewTransportsBlock:;
- (void)_peerInfoForPeer:(void *)peer;
- (void)addActiveTransports:(int64_t)transports toPeer:(id)peer;
- (void)debugLogPeers;
- (void)postCloudDeviceCountChangedNotification;
- (void)registerNewPeer:(id *)peer;
- (void)removeActiveTransports:(int64_t)transports fromPeer:(id)peer;
- (void)removePeer:(id)peer;
- (void)removeStatusChangeObserver:(id)observer;
- (void)setLastSeenDate:(id)date onPeer:(id)peer;
- (void)setLastSuccessfulActivityDate:(id)date onTransport:(int64_t)transport forPeer:(id)peer;
- (void)setSourceDeviceID:(id)d version:(id)version peer:(id)peer;
@end

@implementation _DKSyncPeerStatusTracker

+ (_DKSyncPeerStatusTracker)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___DKSyncPeerStatusTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_initialized_7 != -1)
  {
    dispatch_once(&sharedInstance_initialized_7, block);
  }

  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

- (void)debugLogPeers
{
  v132 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v67 = [objc_opt_class() description];
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](selfCopy->_peerInfos, "count")}];
    *buf = 138543618;
    v121 = v67;
    v122 = 2112;
    v123 = v68;
    _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: Tracking %@ peers", buf, 0x16u);
  }

  pseudoPeerForSyncTransportCloudUp = [(_DKSyncPeerStatusTracker *)selfCopy pseudoPeerForSyncTransportCloudUp];
  v78 = pseudoPeerForSyncTransportCloudUp;
  if (pseudoPeerForSyncTransportCloudUp)
  {
    uuid = [pseudoPeerForSyncTransportCloudUp uuid];
    v77 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:uuid];
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v69 = [objc_opt_class() description];
      v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      if ([v78 me])
      {
        v71 = @"pseudo ";
      }

      else
      {
        v71 = &stru_1F05B9908;
      }

      identifier = [v78 identifier];
      model = [v78 model];
      if (model)
      {
        v75 = MEMORY[0x1E696AEC0];
        obj = [v78 model];
        v74 = [v75 stringWithFormat:@" (%@)", obj];
      }

      else
      {
        v74 = &stru_1F05B9908;
      }

      v76 = [v77 debugDescription];
      *buf = 138544642;
      v121 = v69;
      v122 = 2112;
      v123 = v70;
      v124 = 2114;
      v125 = v71;
      v126 = 2114;
      v127 = identifier;
      v128 = 2114;
      v129 = v74;
      v130 = 2112;
      v131 = v76;
      _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: %@: %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
      if (model)
      {
      }

      v99 = 1;
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    v77 = 0;
    v99 = 0;
  }

  v6 = objc_opt_new();
  v97 = objc_opt_new();
  [(NSMutableDictionary *)selfCopy->_peerInfos keysSortedByValueUsingComparator:&__block_literal_global_142];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  obja = v114 = 0u;
  v7 = [obja countByEnumeratingWithState:&v113 objects:v119 count:16];
  if (v7)
  {
    v8 = *v114;
    do
    {
      v9 = 0;
      do
      {
        if (*v114 != v8)
        {
          objc_enumerationMutation(obja);
        }

        v10 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v113 + 1) + 8 * v9)];
        v11 = v10;
        if (v10)
        {
          v12 = *(v10 + 16);
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        if (([v13 me] & 1) == 0)
        {
          sourceDeviceID = [v13 sourceDeviceID];

          if (sourceDeviceID)
          {
            lastSeenDate = [v13 lastSeenDate];
            v16 = lastSeenDate;
            if (lastSeenDate && ([lastSeenDate timeIntervalSinceNow], v17 >= -2678400.0))
            {
              v18 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                v94 = [objc_opt_class() description];
                ++v99;
                v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                if (v11)
                {
                  v19 = v11[2];
                }

                else
                {
                  v19 = 0;
                }

                model5 = v19;
                v20 = [(__CFString *)model5 me];
                v21 = &stru_1F05B9908;
                if (v20)
                {
                  v21 = @"pseudo ";
                }

                v85 = v21;
                if (v11)
                {
                  v22 = v11[2];
                }

                else
                {
                  v22 = 0;
                }

                v83 = v22;
                identifier2 = [v83 identifier];
                if (v11)
                {
                  v23 = v11[2];
                }

                else
                {
                  v23 = 0;
                }

                v82 = v23;
                model2 = [v82 model];
                model7 = &stru_1F05B9908;
                if (model2)
                {
                  if (v11)
                  {
                    v24 = v11[2];
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = MEMORY[0x1E696AEC0];
                  v79 = v24;
                  model3 = [v79 model];
                  v80 = [v25 stringWithFormat:@" (%@)", model3];
                  model7 = v80;
                }

                v26 = [v11 debugDescription];
                *buf = 138544642;
                v121 = v94;
                v122 = 2112;
                v123 = v91;
                v124 = 2114;
                v125 = v85;
                v126 = 2114;
                v127 = identifier2;
                v128 = 2114;
                v129 = model7;
                v130 = 2112;
                v131 = v26;
                _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %@: %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
                if (model2)
                {
                }
              }
            }

            else
            {
              [v6 addObject:v11];
            }
          }

          else
          {
            [v97 addObject:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v27 = [obja countByEnumeratingWithState:&v113 objects:v119 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v101 = v6;
  v28 = [v101 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v28)
  {
    v29 = *v110;
    do
    {
      v30 = 0;
      do
      {
        if (*v110 != v29)
        {
          objc_enumerationMutation(v101);
        }

        v31 = *(*(&v109 + 1) + 8 * v30);
        v32 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v95 = [objc_opt_class() description];
          ++v99;
          v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          if (v31)
          {
            v33 = v31[2];
          }

          else
          {
            v33 = 0;
          }

          v89 = v33;
          v34 = [v89 me];
          v35 = &stru_1F05B9908;
          if (v34)
          {
            v35 = @"pseudo ";
          }

          model7 = v35;
          if (v31)
          {
            v36 = v31[2];
          }

          else
          {
            v36 = 0;
          }

          v37 = v36;
          identifier3 = [v37 identifier];
          if (v31)
          {
            v39 = v31[2];
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;
          model4 = [v40 model];
          v42 = &stru_1F05B9908;
          if (model4)
          {
            if (v31)
            {
              v43 = v31[2];
            }

            else
            {
              v43 = 0;
            }

            v44 = MEMORY[0x1E696AEC0];
            v83 = v43;
            model5 = [v83 model];
            v85 = [v44 stringWithFormat:@" (%@)", model5];
            v42 = v85;
          }

          v45 = [v31 debugDescription];
          *buf = 138544642;
          v121 = v95;
          v122 = 2112;
          v123 = v92;
          v124 = 2114;
          v125 = model7;
          v126 = 2114;
          v127 = identifier3;
          v128 = 2114;
          v129 = v42;
          v130 = 2112;
          v131 = v45;
          _os_log_debug_impl(&dword_191750000, v32, OS_LOG_TYPE_DEBUG, "%{public}@: %@: obsolete %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
          if (model4)
          {
          }
        }

        ++v30;
      }

      while (v28 != v30);
      v46 = [v101 countByEnumeratingWithState:&v109 objects:v118 count:16];
      v28 = v46;
    }

    while (v46);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v47 = v97;
  v48 = [v47 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v48)
  {
    v49 = *v106;
    v84 = v47;
    do
    {
      v50 = 0;
      do
      {
        if (*v106 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v105 + 1) + 8 * v50);
        v52 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v98 = [objc_opt_class() description];
          ++v99;
          v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          if (v51)
          {
            v53 = v51[2];
          }

          else
          {
            v53 = 0;
          }

          v93 = v53;
          v54 = [v93 me];
          v55 = &stru_1F05B9908;
          if (v54)
          {
            v55 = @"pseudo ";
          }

          v90 = v55;
          if (v51)
          {
            v56 = v51[2];
          }

          else
          {
            v56 = 0;
          }

          v57 = v56;
          identifier4 = [v57 identifier];
          if (v51)
          {
            v59 = v51[2];
          }

          else
          {
            v59 = 0;
          }

          v60 = v59;
          model6 = [v60 model];
          v62 = &stru_1F05B9908;
          if (model6)
          {
            if (v51)
            {
              v63 = v51[2];
            }

            else
            {
              v63 = 0;
            }

            v64 = MEMORY[0x1E696AEC0];
            v85 = v63;
            model7 = [(__CFString *)v85 model];
            model5 = [v64 stringWithFormat:@" (%@)", model7];
            v62 = model5;
          }

          v65 = [v51 debugDescription];
          *buf = 138544642;
          v121 = v98;
          v122 = 2112;
          v123 = v96;
          v124 = 2114;
          v125 = v90;
          v126 = 2114;
          v127 = identifier4;
          v128 = 2114;
          v129 = v62;
          v130 = 2112;
          v131 = v65;
          _os_log_debug_impl(&dword_191750000, v52, OS_LOG_TYPE_DEBUG, "%{public}@: %@: incomplete %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
          v47 = v84;
          if (model6)
          {
          }
        }

        ++v50;
      }

      while (v48 != v50);
      v66 = [v47 countByEnumeratingWithState:&v105 objects:v117 count:16];
      v48 = v66;
    }

    while (v66);
  }

  objc_sync_exit(selfCopy);
}

- (id)pseudoPeerForSyncTransportCloudUp
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = self->_pseudoPeer;
  if (!v3)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = selfCopy->_peerInfos;
    v3 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v6 = *v17;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v7)];
          v9 = v8;
          if (v8)
          {
            v10 = *(v8 + 16);
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;
          v12 = [v11 me];

          if (v12)
          {
            if (v9)
            {
              v14 = v9[2];
            }

            else
            {
              v14 = 0;
            }

            v3 = v14;

            goto LABEL_18;
          }

          v7 = (v7 + 1);
        }

        while (v3 != v7);
        v13 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v3 = v13;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    objc_storeStrong(&self->_pseudoPeer, v3);
    objc_sync_exit(selfCopy);
  }

  return v3;
}

+ (_DKSyncPeerStatusTracker)peerStatusTrackerWithContext:(id)context
{
  v3 = [_DKSyncContextObjectFactory objectFactoryForClass:self context:context];
  instance = [v3 instance];

  return instance;
}

+ (id)syncPeerTransportsStrings
{
  objc_opt_self();
  if (syncPeerTransportsStrings_initialized != -1)
  {
    +[_DKSyncPeerStatusTracker syncPeerTransportsStrings];
  }

  v1 = syncPeerTransportsStrings_strings;

  return v1;
}

- (_DKSyncPeerStatusTracker)initWithContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = _DKSyncPeerStatusTracker;
  v5 = [(_DKSyncContextObject *)&v14 initWithContext:contextCopy];
  if (v5)
  {
    storage = [contextCopy storage];
    objc_storeWeak(&v5->_storage, storage);

    v7 = objc_opt_new();
    peerInfos = v5->_peerInfos;
    v5->_peerInfos = v7;

    v9 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v9;

    v11 = objc_opt_new();
    lastSuccessfulActivityDates = v5->_lastSuccessfulActivityDates;
    v5->_lastSuccessfulActivityDates = v11;

    [(_DKSyncPeerStatusTracker *)v5 _loadPeers];
  }

  return v5;
}

- (void)_loadPeers
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() description];
  domain = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = domain;
  v11 = 2048;
  code = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load peers: %{public}@:%lld (%@)", &v7, 0x2Au);
}

- (void)setSourceDeviceID:(id)d version:(id)version peer:(id)peer
{
  v84 = *MEMORY[0x1E69E9840];
  dCopy = d;
  versionCopy = version;
  peerCopy = peer;
  v11 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v11);

  if (!dCopy)
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_DKSyncPeerStatusTracker setSourceDeviceID:v18 version:? peer:?];
    }

    goto LABEL_8;
  }

  sourceDeviceID = [peerCopy sourceDeviceID];
  v13 = [dCopy isEqualToString:sourceDeviceID];

  version = [peerCopy version];
  v15 = version;
  if (versionCopy)
  {
    v16 = [versionCopy isEqualToString:version];

    if ((v13 & v16 & 1) == 0)
    {
      v17 = peerCopy;
      if ((v16 & 1) == 0)
      {
        [v17 setVersion:versionCopy];
      }

LABEL_15:
      v18 = peerCopy;
      if (v13)
      {
        goto LABEL_49;
      }

      v21 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [objc_opt_class() description];
        v23 = &stru_1F05B9908;
        if ([peerCopy me])
        {
          v24 = @"pseudo ";
        }

        else
        {
          v24 = &stru_1F05B9908;
        }

        identifier = [peerCopy identifier];
        model = [peerCopy model];
        if (model)
        {
          v27 = MEMORY[0x1E696AEC0];
          model2 = [peerCopy model];
          v23 = [v27 stringWithFormat:@" (%@)", model2];
        }

        *buf = 138544642;
        v71 = v22;
        v72 = 2114;
        v73 = v24;
        v74 = 2114;
        v75 = identifier;
        v76 = 2114;
        v77 = v23;
        v78 = 2114;
        v79 = dCopy;
        v80 = 2114;
        v81 = versionCopy;
        _os_log_debug_impl(&dword_191750000, v21, OS_LOG_TYPE_DEBUG, "%{public}@: Setting %{public}@peer %{public}@%{public}@ source device id to %{public}@ version %{public}@", buf, 0x3Eu);
        if (model)
        {
        }
      }

      v28 = [(_DKSyncPeerStatusTracker *)self existingPeerWithSourceDeviceID:dCopy];
      [peerCopy setSourceDeviceID:dCopy];
      storage = [(_DKSyncPeerStatusTracker *)self storage];
      deviceUUID = [storage deviceUUID];
      uUIDString = [deviceUUID UUIDString];

      if ([uUIDString isEqualToString:dCopy])
      {
        [peerCopy setMe:1];
        v32 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [_DKSyncPeerStatusTracker setSourceDeviceID:peerCopy version:? peer:?];
        }
      }

      v18 = peerCopy;
      if (!v28 || (v18 = peerCopy, v28 == peerCopy))
      {
LABEL_48:

LABEL_49:
        storage2 = [(_DKSyncPeerStatusTracker *)self storage];
        v69 = 0;
        [storage2 saveSyncPeer:v18 error:&v69];
        v48 = v69;

        if (v18 == peerCopy)
        {
          if (!v48)
          {
LABEL_72:
            [(_DKSyncPeerStatusTracker *)self postCloudDeviceCountChangedNotification];

LABEL_8:
            goto LABEL_13;
          }

          v49 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v68 = [objc_opt_class() description];
            v50 = [v18 me];
            v51 = &stru_1F05B9908;
            v52 = @"pseudo ";
            if (!v50)
            {
              v52 = &stru_1F05B9908;
            }

            v64 = v52;
            identifier2 = [v18 identifier];
            model3 = [v18 model];
            if (model3)
            {
              v57 = MEMORY[0x1E696AEC0];
              model4 = [v18 model];
              v51 = [v57 stringWithFormat:@" (%@)", model4];
            }

            domain = [v48 domain];
            code = [v48 code];
            *buf = 138544898;
            v71 = v68;
            v72 = 2114;
            v73 = v64;
            v74 = 2114;
            v75 = identifier2;
            v76 = 2114;
            v77 = v51;
            v78 = 2114;
            v79 = domain;
            v80 = 2048;
            v81 = code;
            v82 = 2112;
            v83 = v48;
            v60 = "%{public}@: Failed to save %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)";
LABEL_68:
            _os_log_error_impl(&dword_191750000, v49, OS_LOG_TYPE_ERROR, v60, buf, 0x48u);

            if (model3)
            {
            }
          }
        }

        else
        {
          v54 = +[_CDLogging syncChannel];
          v49 = v54;
          if (!v48)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              [_DKSyncPeerStatusTracker setSourceDeviceID:v18 version:? peer:?];
            }

            goto LABEL_71;
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v68 = [objc_opt_class() description];
            v55 = [v18 me];
            v51 = &stru_1F05B9908;
            v56 = @"pseudo ";
            if (!v55)
            {
              v56 = &stru_1F05B9908;
            }

            v65 = v56;
            identifier2 = [v18 identifier];
            model3 = [v18 model];
            if (model3)
            {
              v61 = MEMORY[0x1E696AEC0];
              model4 = [v18 model];
              v51 = [v61 stringWithFormat:@" (%@)", model4];
            }

            domain = [v48 domain];
            code2 = [v48 code];
            *buf = 138544898;
            v71 = v68;
            v72 = 2114;
            v73 = v65;
            v74 = 2114;
            v75 = identifier2;
            v76 = 2114;
            v77 = v51;
            v78 = 2114;
            v79 = domain;
            v80 = 2048;
            v81 = code2;
            v82 = 2112;
            v83 = v48;
            v60 = "%{public}@: Failed to save de-duplicated %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)";
            goto LABEL_68;
          }
        }

LABEL_71:

        goto LABEL_72;
      }

      idsDeviceIdentifier = [v28 idsDeviceIdentifier];
      if (!idsDeviceIdentifier)
      {
        idsDeviceIdentifier2 = [peerCopy idsDeviceIdentifier];

        if (!idsDeviceIdentifier2)
        {
          goto LABEL_35;
        }

        idsDeviceIdentifier = [peerCopy idsDeviceIdentifier];
        [v28 setIdsDeviceIdentifier:idsDeviceIdentifier];
      }

LABEL_35:
      sourceDeviceID2 = [v28 sourceDeviceID];
      if (!sourceDeviceID2)
      {
        sourceDeviceID3 = [peerCopy sourceDeviceID];

        if (!sourceDeviceID3)
        {
          goto LABEL_39;
        }

        sourceDeviceID2 = [peerCopy sourceDeviceID];
        [v28 setSourceDeviceID:sourceDeviceID2];
      }

LABEL_39:
      version2 = [v28 version];
      if (!version2)
      {
        version3 = [peerCopy version];

        if (!version3)
        {
          goto LABEL_43;
        }

        version2 = [peerCopy version];
        [v28 setVersion:version2];
      }

LABEL_43:
      zoneName = [v28 zoneName];
      if (!zoneName)
      {
        zoneName2 = [peerCopy zoneName];

        if (!zoneName2)
        {
LABEL_47:
          [(_DKSyncPeerStatusTracker *)self addActiveTransports:[(_DKSyncPeerStatusTracker *)self activeTransportsForPeer:peerCopy] toPeer:v28];
          idsDeviceIdentifier3 = [v28 idsDeviceIdentifier];
          [peerCopy setIdsDeviceIdentifier:idsDeviceIdentifier3];

          sourceDeviceID4 = [v28 sourceDeviceID];
          [peerCopy setSourceDeviceID:sourceDeviceID4];

          version4 = [v28 version];
          [peerCopy setVersion:version4];

          zoneName3 = [v28 zoneName];
          [peerCopy setZoneName:zoneName3];

          [(_DKSyncPeerStatusTracker *)self addActiveTransports:[(_DKSyncPeerStatusTracker *)self activeTransportsForPeer:v28] toPeer:peerCopy];
          peerInfos = self->_peerInfos;
          uuid = [peerCopy uuid];
          [(NSMutableDictionary *)peerInfos setObject:0 forKeyedSubscript:uuid];

          v18 = v28;
          goto LABEL_48;
        }

        zoneName = [peerCopy zoneName];
        [v28 setZoneName:zoneName];
      }

      goto LABEL_47;
    }
  }

  else
  {

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    if ((v19 & 1) == 0)
    {
      v20 = peerCopy;
      goto LABEL_15;
    }
  }

LABEL_13:
}

- (id)peerWithCompanionLinkDevice:(id)device
{
  idsDeviceIdentifier = [device idsDeviceIdentifier];
  v5 = [(_DKSyncPeerStatusTracker *)self peerWithIDSDeviceIdentifier:idsDeviceIdentifier];

  return v5;
}

- (id)peerWithIDSDeviceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = selfCopy->_peerInfos;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v8)];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        idsDeviceIdentifier = [(_DKSyncPeer *)v12 idsDeviceIdentifier];
        v14 = [identifierCopy isEqualToString:idsDeviceIdentifier];

        if (v14)
        {

          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  v12 = [[_DKSyncPeer alloc] initWithIDSDeviceIdentifier:identifierCopy];
  [(_DKSyncPeerStatusTracker *)&selfCopy->super.super.isa registerNewPeer:v12];
LABEL_16:
  objc_sync_exit(selfCopy);

  return v12;
}

- (id)peerWithZoneName:(id)name sourceDeviceID:(id)d
{
  nameCopy = name;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(_DKSyncPeerStatusTracker *)selfCopy existingPeerWithSourceDeviceID:dCopy];
  v10 = v9;
  if (v9)
  {
    if (nameCopy)
    {
      zoneName = [v9 zoneName];

      if (!zoneName)
      {
        [v10 setZoneName:nameCopy];
        if (dCopy)
        {
          storage = [(_DKSyncPeerStatusTracker *)selfCopy storage];
          v14 = 0;
          [storage saveSyncPeer:v10 error:&v14];
        }
      }
    }
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setZoneName:nameCopy];
    [v10 setSourceDeviceID:dCopy];
    [(_DKSyncPeerStatusTracker *)&selfCopy->super.super.isa registerNewPeer:v10];
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)existingPeerWithSourceDeviceID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = selfCopy->_peerInfos;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = *v22;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7)];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        sourceDeviceID = [v11 sourceDeviceID];
        if (sourceDeviceID)
        {
          sourceDeviceID2 = [v11 sourceDeviceID];
          v14 = [dCopy isEqualToString:sourceDeviceID2];

          if (v14)
          {

            if (v11)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      v5 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v16 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [objc_opt_class() description];
    [(_DKSyncPeerStatusTracker *)v17 existingPeerWithSourceDeviceID:dCopy, v25];
  }

  v11 = 0;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v11;
}

- (id)existingPeerWithIDSDeviceIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = selfCopy->_peerInfos;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = *v22;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7)];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        idsDeviceIdentifier = [v11 idsDeviceIdentifier];
        if (idsDeviceIdentifier)
        {
          idsDeviceIdentifier2 = [v11 idsDeviceIdentifier];
          v14 = [identifierCopy isEqualToString:idsDeviceIdentifier2];

          if (v14)
          {

            if (v11)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      v5 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v16 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [objc_opt_class() description];
    [(_DKSyncPeerStatusTracker *)v17 existingPeerWithIDSDeviceIdentifier:identifierCopy, v25];
  }

  v11 = 0;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v11;
}

- (id)allPeers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = selfCopy->_peerInfos;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8), v16];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        [v3 addObject:v12];

        ++v8;
      }

      while (v6 != v8);
      v13 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v13;
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);
  v14 = [v3 copy];

  return v14;
}

- (id)peersWithAnyActiveTransports
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = selfCopy->_peerInfos;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        v10 = v9;
        if (v9 && *(v9 + 24))
        {
          v11 = *(v9 + 16);
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v12 = [v3 copy];

  return v12;
}

- (id)peersWithActiveTransports:(int64_t)transports
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy->_peerInfos;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        v12 = v11;
        if (v11 && (*(v11 + 24) & transports) != 0)
        {
          v13 = *(v11 + 16);
          [v5 addObject:v13];
        }
      }

      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v14 = [v5 copy];

  return v14;
}

- (unint64_t)foreignPeersCount
{
  v39 = *MEMORY[0x1E69E9840];
  pseudoPeerForSyncTransportCloudUp = [(_DKSyncPeerStatusTracker *)self pseudoPeerForSyncTransportCloudUp];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = selfCopy->_peerInfos;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v31 = 0;
    v32 = *v35;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(NSMutableDictionary *)selfCopy->_peerInfos objectForKeyedSubscript:*(*(&v34 + 1) + 8 * v5)];
        v7 = v6;
        if (v6)
        {
          v8 = *(v6 + 16);
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = v9;
        if (v9 != pseudoPeerForSyncTransportCloudUp)
        {
          sourceDeviceID = [v9 sourceDeviceID];
          v12 = sourceDeviceID == 0;

          if (!v12)
          {
            lastSeenDate = [v10 lastSeenDate];
            v14 = lastSeenDate;
            if (lastSeenDate)
            {
              [lastSeenDate timeIntervalSinceNow];
              v16 = v15 < -2678400.0;
            }

            else
            {
              firstForeignPeersCountDate = selfCopy->_firstForeignPeersCountDate;
              if (!firstForeignPeersCountDate)
              {
                storage = [(_DKSyncPeerStatusTracker *)selfCopy storage];
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                v21 = [storage keyValueStoreForDomain:v20];

                v22 = [v21 dateForKey:@"FirstForeignPeersCountDate"];
                v23 = selfCopy->_firstForeignPeersCountDate;
                selfCopy->_firstForeignPeersCountDate = v22;

                if (!selfCopy->_firstForeignPeersCountDate)
                {
                  date = [MEMORY[0x1E695DF00] date];
                  v25 = selfCopy->_firstForeignPeersCountDate;
                  selfCopy->_firstForeignPeersCountDate = date;

                  [v21 setDate:selfCopy->_firstForeignPeersCountDate forKey:@"FirstForeignPeersCountDate"];
                }

                firstForeignPeersCountDate = selfCopy->_firstForeignPeersCountDate;
              }

              [(NSDate *)firstForeignPeersCountDate timeIntervalSinceNow];
              v16 = v26 < -43200.0;
            }

            v27 = !v16;

            v31 += v27;
          }
        }

        ++v5;
      }

      while (v4 != v5);
      v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v4 = v28;
    }

    while (v28);
  }

  else
  {
    v31 = 0;
  }

  objc_sync_exit(selfCopy);
  return v31;
}

- (BOOL)isSingleDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_peerInfos count])
  {
    if ([(NSMutableDictionary *)selfCopy->_peerInfos count]== 1)
    {
      allValues = [(NSMutableDictionary *)selfCopy->_peerInfos allValues];
      firstObject = [allValues firstObject];

      if (firstObject)
      {
        v5 = firstObject[2];
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      v7 = [v6 me];
    }

    else
    {
      v7 = [(_DKSyncPeerStatusTracker *)selfCopy foreignPeersCount]== 0;
    }
  }

  else
  {
    v7 = 1;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_peerInfoForPeer:(void *)peer
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (peer)
  {
    peerCopy = peer;
    objc_sync_enter(peerCopy);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = peerCopy;
    obj = peerCopy[2];
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = *v23;
      do
      {
        v7 = 0;
        do
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [v21[2] objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v7)];
          v9 = v8;
          if (v8)
          {
            v10 = *(v8 + 16);
            v11 = v10;
            if (v10 == v3)
            {
              v17 = v10;
LABEL_19:

              goto LABEL_20;
            }

            v12 = v9[2];
          }

          else
          {
            v11 = 0;
            v12 = 0;
            v17 = 0;
            if (!v3)
            {
              goto LABEL_19;
            }
          }

          v13 = v12;
          identifier = [v13 identifier];
          identifier2 = [v3 identifier];
          v16 = [identifier isEqualToString:identifier2];

          if (v16)
          {
            goto LABEL_20;
          }

          ++v7;
        }

        while (v5 != v7);
        v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v5 = v18;
        v9 = 0;
      }

      while (v18);
    }

    else
    {
      v9 = 0;
    }

LABEL_20:

    objc_sync_exit(v21);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)activeTransportsForPeer:(id)peer
{
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(_DKSyncPeerStatusTracker *)selfCopy _peerInfoForPeer:peerCopy];
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)_modifyActiveTransportInPeer:(void *)peer withNewTransportsBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  peerCopy = peer;
  if (self)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(_DKSyncPeerStatusTracker *)selfCopy _peerInfoForPeer:v5];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 24);
      v12 = peerCopy[2](peerCopy, v11);
      if (v11 == v12)
      {
        _observerBlocks = 0;
      }

      else
      {
        v14 = [_DKSyncPeerStatusTracker stringForTransports:v10[3]];
        v10[3] = v12;
        v15 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v21 = [objc_opt_class() description];
          transportsString = [(_DKSyncPeerInfo *)v10 transportsString];
          *buf = 138544130;
          v29 = v21;
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = transportsString;
          v34 = 2112;
          v35 = v5;
          _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Changing transports from %@ to %@ for peer: %@", buf, 0x2Au);
        }

        _observerBlocks = [(_DKSyncPeerStatusTracker *)selfCopy _observerBlocks];
      }
    }

    else
    {
      _observerBlocks = 0;
    }

    objc_sync_exit(selfCopy);
    if ([_observerBlocks count])
    {
      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(_DKSyncPeerStatusTracker *)selfCopy _modifyActiveTransportInPeer:_observerBlocks withNewTransportsBlock:v16];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = _observerBlocks;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = *v24;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v23 + 1) + 8 * i) + 16))(*(*(&v23 + 1) + 8 * i));
          }

          v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }
    }
  }
}

- (id)_observerBlocks
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = selfCopy[4];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (v8)
          {
            v8 = v8[1];
          }

          v9 = v8;
          v10 = MEMORY[0x193B00C50](v9);
          [v2 addObject:{v10, v12}];
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)addActiveTransports:(int64_t)transports toPeer:(id)peer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___DKSyncPeerStatusTracker_addActiveTransports_toPeer___block_invoke;
  v4[3] = &__block_descriptor_40_e8_q16__0q8l;
  v4[4] = transports;
  [(_DKSyncPeerStatusTracker *)self _modifyActiveTransportInPeer:peer withNewTransportsBlock:v4];
}

- (void)removeActiveTransports:(int64_t)transports fromPeer:(id)peer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60___DKSyncPeerStatusTracker_removeActiveTransports_fromPeer___block_invoke;
  v4[3] = &__block_descriptor_40_e8_q16__0q8l;
  v4[4] = transports;
  [(_DKSyncPeerStatusTracker *)self _modifyActiveTransportInPeer:peer withNewTransportsBlock:v4];
}

- (void)setLastSeenDate:(id)date onPeer:(id)peer
{
  v40 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  peerCopy = peer;
  if (([peerCopy me] & 1) == 0)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26 = [objc_opt_class() description];
      dk_localtimeString = [(NSDate *)dateCopy dk_localtimeString];
      lastSeenDate = [peerCopy lastSeenDate];
      if (lastSeenDate)
      {
        v13 = MEMORY[0x1E696AD98];
        [dateCopy timeIntervalSinceReferenceDate];
        v15 = v14;
        lastSeenDate2 = [peerCopy lastSeenDate];
        [lastSeenDate2 timeIntervalSinceReferenceDate];
        v24 = [v13 numberWithInt:(v15 - v16)];
      }

      else
      {
        v24 = @"N/A";
      }

      v17 = &stru_1F05B9908;
      if ([peerCopy me])
      {
        v18 = @"pseudo ";
      }

      else
      {
        v18 = &stru_1F05B9908;
      }

      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v21 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v17 = [v21 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544642;
      v29 = v26;
      v30 = 2114;
      v31 = dk_localtimeString;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v18;
      v36 = 2114;
      v37 = identifier;
      v38 = 2114;
      v39 = v17;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Updating last seen date to %{public}@ (delta %{public}@) on %{public}@peer %{public}@%{public}@", buf, 0x3Eu);
      if (model)
      {
      }

      if (lastSeenDate)
      {
      }
    }

    [peerCopy setLastSeenDate:dateCopy];
    storage = [(_DKSyncPeerStatusTracker *)self storage];
    v27 = 0;
    [storage saveSyncPeer:peerCopy error:&v27];
    v10 = v27;

    if (v10)
    {
      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPeerStatusTracker *)self setLastSeenDate:peerCopy onPeer:v11];
      }
    }
  }
}

- (id)lastSuccessfulActivityDateOnTransport:(int64_t)transport forPeer:(id)peer
{
  v6 = MEMORY[0x1E696AEC0];
  uuid = [peer uuid];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:transport];
  v9 = [v6 stringWithFormat:@"%@ %@", uuid, v8];

  v10 = [(NSMutableDictionary *)self->_lastSuccessfulActivityDates objectForKeyedSubscript:v9];

  return v10;
}

- (void)setLastSuccessfulActivityDate:(id)date onTransport:(int64_t)transport forPeer:(id)peer
{
  v8 = MEMORY[0x1E696AEC0];
  dateCopy = date;
  uuid = [peer uuid];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:transport];
  v12 = [v8 stringWithFormat:@"%@ %@", uuid, v11];

  [(NSMutableDictionary *)self->_lastSuccessfulActivityDates setObject:dateCopy forKeyedSubscript:v12];
}

- (id)addStatusChangeObserverWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_new();
  v8 = v6;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, blockCopy, 8);
  }

  [(NSMutableArray *)selfCopy->_observers addObject:v8];
  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [objc_opt_class() description];
    [(_DKSyncPeerStatusTracker *)v10 addStatusChangeObserverWithBlock:blockCopy];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)removeStatusChangeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (_DKKnowledgeStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  if (!WeakRetained)
  {
    v4 = +[_DKSync2Coordinator storage];
    objc_storeWeak(&self->_storage, v4);
  }

  v5 = objc_loadWeakRetained(&self->_storage);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: peerInfos=%@>", v5, self, self->_peerInfos];

  return v6;
}

+ (id)stringForTransports:(int64_t)transports
{
  v4 = +[_DKSyncPeerStatusTracker syncPeerTransportsStrings];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:transports];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)postCloudDeviceCountChangedNotification
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [*(self + 16) count];
    v3 = +[_CDObservationCenter sharedInstance];
    v6 = @"count";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v3 postNotificationName:@"_DKCloudDeviceCountChangedNotification" userInfo:v5 sender:self];
  }
}

- (void)registerNewPeer:(id *)peer
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (peer)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [v3 setUuid:uUID];
    v5 = objc_opt_new();
    [(_DKPredictionTimeline *)v5 setStartDate:uUID];
    [(_DKSyncWindow *)v5 setStartDate:v3];
    [peer[2] setObject:v5 forKeyedSubscript:uUID];
    sourceDeviceID = [v3 sourceDeviceID];

    if (sourceDeviceID)
    {
      storage = [peer storage];
      deviceUUID = [storage deviceUUID];
      uUIDString = [deviceUUID UUIDString];

      sourceDeviceID2 = [v3 sourceDeviceID];
      LODWORD(deviceUUID) = [uUIDString isEqualToString:sourceDeviceID2];

      if (deviceUUID)
      {
        v11 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v19 = [objc_opt_class() description];
          v12 = &stru_1F05B9908;
          if ([v3 me])
          {
            v13 = @"pseudo ";
          }

          else
          {
            v13 = &stru_1F05B9908;
          }

          identifier = [v3 identifier];
          model = [v3 model];
          if (model)
          {
            v16 = MEMORY[0x1E696AEC0];
            model2 = [v3 model];
            v12 = [v16 stringWithFormat:@" (%@)", model2];
          }

          *buf = 138544130;
          v22 = v19;
          v23 = 2114;
          v24 = v13;
          v25 = 2114;
          v26 = identifier;
          v27 = 2114;
          v28 = v12;
          _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Upgrading peer to %{public}@peer %{public}@%{public}@ while creating new one", buf, 0x2Au);
          if (model)
          {
          }
        }

        [v3 setMe:1];
      }

      storage2 = [peer storage];
      v20 = 0;
      [storage2 saveSyncPeer:v3 error:&v20];
    }

    [(_DKSyncPeerStatusTracker *)peer postCloudDeviceCountChangedNotification];
  }
}

- (void)removePeer:(id)peer
{
  peerCopy = peer;
  pseudoPeer = self->_pseudoPeer;
  v9 = peerCopy;
  if (pseudoPeer == peerCopy)
  {
    self->_pseudoPeer = 0;
  }

  storage = [(_DKSyncPeerStatusTracker *)self storage];
  [storage removeSyncPeer:v9];

  peerInfos = self->_peerInfos;
  uuid = [(_DKSyncPeer *)v9 uuid];
  [(NSMutableDictionary *)peerInfos setObject:0 forKeyedSubscript:uuid];

  [(_DKSyncPeerStatusTracker *)self postCloudDeviceCountChangedNotification];
}

- (void)setSourceDeviceID:(uint64_t)a1 version:(void *)a2 peer:.cold.1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  [a2 me];
  v4 = &stru_1F05B9908;
  v5 = [OUTLINED_FUNCTION_1_31() identifier];
  v6 = [a2 model];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    a2 = [a2 model];
    v4 = [v7 stringWithFormat:@" (%@)", a2];
  }

  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_4_22(&dword_191750000, v8, v9, "%{public}@: Upgrading peer to %{public}@peer %{public}@%{public}@ while setting source device", v10, v11, v12, v13, v14, v15);
  if (v6)
  {
  }
}

- (void)setSourceDeviceID:(uint64_t)a1 version:(void *)a2 peer:.cold.2(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  [a2 me];
  v4 = &stru_1F05B9908;
  v5 = [OUTLINED_FUNCTION_1_31() identifier];
  v6 = [a2 model];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    a2 = [a2 model];
    v4 = [v7 stringWithFormat:@" (%@)", a2];
  }

  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_4_22(&dword_191750000, v8, v9, "%{public}@: De-duplicated %{public}@peer %{public}@%{public}@", v10, v11, v12, v13, v14, v15);
  if (v6)
  {
  }
}

- (void)setSourceDeviceID:(uint64_t)a1 version:(NSObject *)a2 peer:.cold.3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() description];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Invalid nil source device id", &v4, 0xCu);
}

- (void)existingPeerWithSourceDeviceID:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_36(a1, a2, a3, 5.8382e-34);
  _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: No existing peer for source device id %@", v4, 0x16u);
}

- (void)existingPeerWithIDSDeviceIdentifier:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_36(a1, a2, a3, 5.8382e-34);
  _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: No existing peer for device %@", v4, 0x16u);
}

- (void)_modifyActiveTransportInPeer:(NSObject *)a3 withNewTransportsBlock:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() description];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_191750000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: Calling %@ status change observers", &v7, 0x16u);
}

- (void)setLastSeenDate:(NSObject *)a3 onPeer:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() description];
  [a2 me];
  v6 = &stru_1F05B9908;
  v7 = [OUTLINED_FUNCTION_1_31() identifier];
  v8 = [a2 model];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    a2 = [a2 model];
    v6 = [v9 stringWithFormat:@" (%@)", a2];
  }

  OUTLINED_FUNCTION_0_38();
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update last seen date on %{public}@peer %{public}@%{public}@", buf, 0x2Au);
  if (v8)
  {
  }
}

- (void)addStatusChangeObserverWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_24(a1, a2);
  v6 = MEMORY[0x193B00C50](v5);
  *v3 = 138543618;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v6;
  _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: Added status change observer: %@", v3, 0x16u);
}

@end