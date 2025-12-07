@interface WiFiCloudSyncEngineCore
- (WiFiCloudSyncEngineCore)initWithEncryptedKVS:(BOOL)s;
- (id)readCompleteKVStore;
- (uint64_t)queryKeychainSyncState;
- (void)addToKVStore:(id)store synchronize:(BOOL)synchronize;
- (void)clearKVS;
- (void)dealloc;
- (void)dispatchUbiquitousKeyValueStoreDidChangeOnBackground:(id)background;
- (void)enableIcloudSyncing:(BOOL)syncing ForBundleId:(id)id;
- (void)printCompleteKVStore;
- (void)pruneKVSStoreAndReply:(id)reply;
- (void)queryKeychainSyncState;
- (void)readStoreValueForKey:(id)key;
- (void)registerCallback:(void *)callback context:(void *)context;
- (void)registerCallback:(void *)callback queue:(id)queue context:(void *)context;
- (void)relayCloudCleanUpEvent;
- (void)relayCloudEvent:(id)event;
- (void)relayKeychainSyncState:(id)state;
- (void)relayMergeNetworks:(id)networks;
- (void)relayPruneKVSStore:(id)store;
- (void)relayReadStoreValueAction:(id)action;
- (void)removeFromKVStore:(id)store;
- (void)subscribeKVStoreNotficationsForBundleId:(id)id;
- (void)synchronizeAndCallMergeNetworksAndReply:(id)reply;
- (void)synchronizeKVS;
- (void)ubiquitousKeyValueStoreDidChange:(id)change;
- (void)unSubscribeKVStoreNotfications;
@end

@implementation WiFiCloudSyncEngineCore

- (WiFiCloudSyncEngineCore)initWithEncryptedKVS:(BOOL)s
{
  sCopy = s;
  v7.receiver = self;
  v7.super_class = WiFiCloudSyncEngineCore;
  v4 = [(WiFiCloudSyncEngineCore *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WiFiCloudSyncEngineCore *)v4 setIsKVSEncrypted:sCopy];
  }

  return v5;
}

- (void)registerCallback:(void *)callback context:(void *)context
{
  v13 = *MEMORY[0x277D85DE8];
  [(WiFiCloudSyncEngineCore *)self setContext:context];
  [(WiFiCloudSyncEngineCore *)self setCallback:callback];
  -[WiFiCloudSyncEngineCore setClientThread:](self, "setClientThread:", [MEMORY[0x277CCACC8] currentThread]);
  [(WiFiCloudSyncEngineCore *)self setClientQueue:0];
  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[WiFiCloudSyncEngineCore registerCallback:context:]";
    v9 = 2080;
    v10 = "WiFiCloudSyncEngineCore.m";
    v11 = 1024;
    v12 = 91;
    v6 = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)....", &v7, v6);
  }
}

- (void)registerCallback:(void *)callback queue:(id)queue context:(void *)context
{
  v15 = *MEMORY[0x277D85DE8];
  [(WiFiCloudSyncEngineCore *)self setContext:context];
  [(WiFiCloudSyncEngineCore *)self setCallback:callback];
  [(WiFiCloudSyncEngineCore *)self setClientThread:0];
  [(WiFiCloudSyncEngineCore *)self setClientQueue:queue];
  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[WiFiCloudSyncEngineCore registerCallback:queue:context:]";
    v11 = 2080;
    v12 = "WiFiCloudSyncEngineCore.m";
    v13 = 1024;
    v14 = 106;
    v8 = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)....", &v9, v8);
  }
}

- (void)dealloc
{
  [(WiFiCloudSyncEngineCore *)self unSubscribeKVStoreNotfications];
  v3.receiver = self;
  v3.super_class = WiFiCloudSyncEngineCore;
  [(WiFiCloudSyncEngineCore *)&v3 dealloc];
}

- (void)synchronizeKVS
{
  v5 = *MEMORY[0x277D85DE8];
  synchronize = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] synchronize];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (synchronize)
  {
    if (v3)
    {
      *v4 = 136315650;
      *&v4[4] = "[WiFiCloudSyncEngineCore synchronizeKVS]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS synchronized", v4, 28, *v4);
    }
  }

  else if (v3)
  {
    *v4 = 136315650;
    *&v4[4] = "[WiFiCloudSyncEngineCore synchronizeKVS]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS synchronization failed !!", v4, 28, *v4);
  }
}

- (void)addToKVStore:(id)store synchronize:(BOOL)synchronize
{
  v69 = *MEMORY[0x277D85DE8];
  if (!store)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    return;
  }

  synchronizeCopy = synchronize;
  if (![(WiFiCloudSyncEngineCore *)self iCloudSyncingEnabled])
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    return;
  }

  allKeys = [store allKeys];
  if (!allKeys || (v8 = allKeys, ![allKeys count]))
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    return;
  }

  v9 = [v8 objectAtIndex:0];
  v10 = [store objectForKey:v9];
  if (!v9 || (v11 = v10) == 0)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    return;
  }

  v12 = [v9 lengthOfBytesUsingEncoding:4];
  maximumKeyLength = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] maximumKeyLength];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v57 = 136316418;
    v58 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
    v59 = 2080;
    v60 = "WiFiCloudSyncEngineCore.m";
    v61 = 1024;
    v62 = 155;
    v63 = 2112;
    v64 = v9;
    v65 = 2048;
    v66 = v12;
    v67 = 2048;
    v68 = maximumKeyLength;
    v48 = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Add/update <%@> {length: %lu, max %lu} to KVS", &v57, v48);
  }

  if (v12 >= maximumKeyLength + 1)
  {
    [WiFiCloudSyncEngineCore addToKVStore:synchronize:];
    return;
  }

  v14 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] objectForKey:v9];
  if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] setObject:v11 forKey:v9];
    if (!synchronizeCopy)
    {
      return;
    }

    selfCopy = self;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke_62;
    block[3] = &unk_279EBBAB8;
    block[4] = self;
    v44 = block;
    goto LABEL_44;
  }

  v16 = [v15 mutableCopy];
  if ([(WiFiCloudSyncEngineCore *)self isKVSEncrypted])
  {
    v54 = synchronizeCopy;
    v49 = [v15 objectForKeyedSubscript:@"addedAt"];
    v50 = [v15 objectForKeyedSubscript:@"lastJoinedByUserAt"];
    v51 = [v15 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];
    *(&v53 + 1) = [v15 objectForKeyedSubscript:@"removedAt"];
    v52 = [v15 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];
    v17 = [v11 objectForKeyedSubscript:@"addedAt"];
    v18 = [v11 objectForKeyedSubscript:@"lastJoinedByUserAt"];
    v19 = [v11 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];
    *&v53 = [v11 objectForKeyedSubscript:@"removedAt"];
    v20 = [v11 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];
    [v16 addEntriesFromDictionary:v11];
    if (v49 | v17)
    {
      v21 = MEMORY[0x277CBEAA8];
      [v49 timeIntervalSinceReferenceDate];
      v23 = v22;
      [v17 timeIntervalSinceReferenceDate];
      if (v23 >= v24)
      {
        v24 = v23;
      }

      [v16 setObject:objc_msgSend(v21 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v24), @"addedAt"}];
    }

    if (v50 | v18)
    {
      v25 = MEMORY[0x277CBEAA8];
      [v50 timeIntervalSinceReferenceDate];
      v27 = v26;
      [v18 timeIntervalSinceReferenceDate];
      if (v27 >= v28)
      {
        v28 = v27;
      }

      [v16 setObject:objc_msgSend(v25 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v28), @"lastJoinedByUserAt"}];
    }

    if (v51 | v19)
    {
      v29 = MEMORY[0x277CCABB0];
      unsignedIntegerValue = [v51 unsignedIntegerValue];
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];
      if (unsignedIntegerValue <= unsignedIntegerValue2)
      {
        v32 = unsignedIntegerValue2;
      }

      else
      {
        v32 = unsignedIntegerValue;
      }

      [v16 setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithUnsignedInteger:", v32), @"lastJoinedBySystemAtWeek"}];
    }

    if (v52 | v20)
    {
      v33 = MEMORY[0x277CCABB0];
      unsignedIntegerValue3 = [v52 unsignedIntegerValue];
      unsignedIntegerValue4 = [v20 unsignedIntegerValue];
      if (unsignedIntegerValue3 <= unsignedIntegerValue4)
      {
        v36 = unsignedIntegerValue4;
      }

      else
      {
        v36 = unsignedIntegerValue3;
      }

      [v16 setObject:objc_msgSend(v33 forKeyedSubscript:{"numberWithUnsignedInteger:", v36), @"was6GHzOnlyAtWeek"}];
    }

    if (v53 != 0)
    {
      v37 = MEMORY[0x277CBEAA8];
      [*(&v53 + 1) timeIntervalSinceReferenceDate];
      v39 = v38;
      [v53 timeIntervalSinceReferenceDate];
      if (v39 >= v40)
      {
        v40 = v39;
      }

      [v16 setObject:objc_msgSend(v37 forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", v40), @"removedAt"}];
    }

    v41 = [v15 objectForKeyedSubscript:@"addedByVersion"];
    if (v41)
    {
      [v16 setObject:v41 forKeyedSubscript:@"addedByVersion"];
    }

    [v16 setObject:0 forKeyedSubscript:@"BSSID"];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWEP", @"isWEP"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWAPI", @"isWAPI"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA", @"isWPA"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA2", @"isWPA2"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWPA3", @"isWPA3"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isOpen", @"isOpen"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPSK", @"isPSK"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"isEAP", @"isEAP"}];
    if (([v16 isEqualToDictionary:v15] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v57 = 136316418;
        v58 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
        v59 = 2080;
        v60 = "WiFiCloudSyncEngineCore.m";
        v61 = 1024;
        v62 = 236;
        v63 = 2112;
        v64 = v9;
        v65 = 2112;
        v66 = v15;
        v67 = 2112;
        v68 = v16;
        LODWORD(v47) = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@>: %@ --> %@", &v57, v47);
      }

      [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] setObject:v16 forKey:v9];
      if (v54)
      {
        selfCopy2 = self;
        global_queue = dispatch_get_global_queue(0, 0);
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke;
        v56[3] = &unk_279EBBAB8;
        v56[4] = self;
        v44 = v56;
LABEL_44:
        dispatch_async(global_queue, v44);
      }
    }
  }

  else
  {
    [v16 addEntriesFromDictionary:v11];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WEP", @"WEP"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WPA_IE", @"WPA_IE"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"RSN_IE", @"RSN_IE"}];
    [v16 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"WPA3_RSN_IE", @"WPA3_RSN_IE"}];
    v46 = [v15 objectForKeyedSubscript:@"addedByVersion"];
    if (v46)
    {
      [v16 setObject:v46 forKeyedSubscript:@"addedByVersion"];
    }

    [v16 setObject:0 forKeyedSubscript:@"BSSID"];
    if (([v16 isEqualToDictionary:v15] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v57 = 136316418;
      v58 = "[WiFiCloudSyncEngineCore addToKVStore:synchronize:]";
      v59 = 2080;
      v60 = "WiFiCloudSyncEngineCore.m";
      v61 = 1024;
      v62 = 291;
      v63 = 2112;
      v64 = v9;
      v65 = 2112;
      v66 = v15;
      v67 = 2112;
      v68 = v16;
      LODWORD(v47) = 58;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@>: entry already exists, will not update (%@ --> %@)", &v57, v47);
    }
  }
}

void __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

void __52__WiFiCloudSyncEngineCore_addToKVStore_synchronize___block_invoke_62(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)removeFromKVStore:(id)store
{
  v18 = *MEMORY[0x277D85DE8];
  if (store)
  {
    iCloudSyncingEnabled = [(WiFiCloudSyncEngineCore *)self iCloudSyncingEnabled];
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (iCloudSyncingEnabled)
    {
      if (v6)
      {
        v10 = 136315906;
        v11 = "[WiFiCloudSyncEngineCore removeFromKVStore:]";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngineCore.m";
        v14 = 1024;
        v15 = 323;
        v16 = 2112;
        storeCopy = store;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Remove <%@> from KVS", &v10, 38);
      }

      [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] removeObjectForKey:store];
      selfCopy = self;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__WiFiCloudSyncEngineCore_removeFromKVStore___block_invoke;
      block[3] = &unk_279EBBAB8;
      block[4] = self;
      dispatch_async(global_queue, block);
    }

    else
    {
      [WiFiCloudSyncEngineCore removeFromKVStore:v6];
    }
  }

  else
  {
    [WiFiCloudSyncEngineCore removeFromKVStore:];
  }
}

void __45__WiFiCloudSyncEngineCore_removeFromKVStore___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)readStoreValueForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!key)
  {
    [WiFiCloudSyncEngineCore readStoreValueForKey:v5];
    return;
  }

  if (v5)
  {
    v12 = 136315906;
    v13 = "[WiFiCloudSyncEngineCore readStoreValueForKey:]";
    v14 = 2080;
    v15 = "WiFiCloudSyncEngineCore.m";
    v16 = 1024;
    v17 = 345;
    v18 = 2112;
    keyCopy = key;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)key: <%@>", &v12, 38);
  }

  v6 = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] objectForKey:key];
  if ([(WiFiCloudSyncEngineCore *)self clientThread]|| [(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayReadStoreValueAction_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v6 waitUntilDone:1];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        clientQueue = [(WiFiCloudSyncEngineCore *)self clientQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __48__WiFiCloudSyncEngineCore_readStoreValueForKey___block_invoke;
        v11[3] = &unk_279EBBAE0;
        v11[4] = self;
        v11[5] = v6;
        v8 = v11;
LABEL_16:
        dispatch_sync(clientQueue, v8);
      }
    }

    else
    {
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayReadStoreValueAction_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:key waitUntilDone:1];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        clientQueue = [(WiFiCloudSyncEngineCore *)self clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__WiFiCloudSyncEngineCore_readStoreValueForKey___block_invoke_2;
        block[3] = &unk_279EBBAE0;
        block[4] = self;
        block[5] = key;
        v8 = block;
        goto LABEL_16;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WiFiCloudSyncEngineCore readStoreValueForKey:]";
    v14 = 2080;
    v15 = "WiFiCloudSyncEngineCore.m";
    v16 = 1024;
    v17 = 351;
    LODWORD(v9) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)null client thread or queue", &v12, v9, LODWORD(block[0]));
  }
}

- (void)relayReadStoreValueAction:(id)action
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
    v16 = 2080;
    v17 = "WiFiCloudSyncEngineCore.m";
    v18 = 1024;
    v19 = 382;
    LODWORD(v11) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", &v14, v11, v12);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([(WiFiCloudSyncEngineCore *)self isKVSEncrypted])
    {
      return;
    }

    v12 = @"SSID_STR";
    actionCopy = action;
    action = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&actionCopy forKeys:&v12 count:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
      v16 = 2080;
      v17 = "WiFiCloudSyncEngineCore.m";
      v18 = 1024;
      v19 = 408;
      LODWORD(v11) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)remove network from the known networks list", &v14, v11);
    }

    goto LABEL_11;
  }

  v5 = [action objectForKeyedSubscript:@"removedAt"];
  v6 = [action objectForKeyedSubscript:@"addedAt"];
  if (v5)
  {
    v7 = v6;
    [v5 timeIntervalSinceReferenceDate];
    v9 = v8;
    [v7 timeIntervalSinceReferenceDate];
    if (v9 > v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
        v16 = 2080;
        v17 = "WiFiCloudSyncEngineCore.m";
        v18 = 1024;
        v19 = 392;
        LODWORD(v11) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)remove network from the known networks list", &v14, v11);
      }

LABEL_11:
      WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList([(WiFiCloudSyncEngineCore *)self context], self, action);
      return;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[WiFiCloudSyncEngineCore relayReadStoreValueAction:]";
    v16 = 2080;
    v17 = "WiFiCloudSyncEngineCore.m";
    v18 = 1024;
    v19 = 398;
    LODWORD(v11) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)add network to the known networks list ", &v14, v11, v12);
  }

  WiFiCloudSyncEngineAddNetworkToKnownNetworksList([(WiFiCloudSyncEngineCore *)self context], self, action);
}

- (id)readCompleteKVStore
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[WiFiCloudSyncEngineCore readCompleteKVStore]";
    v7 = 2080;
    v8 = "WiFiCloudSyncEngineCore.m";
    v9 = 1024;
    v10 = 417;
    v4 = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)...", &v5, v4);
  }

  return [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] dictionaryRepresentation];
}

- (void)printCompleteKVStore
{
  v14 = *MEMORY[0x277D85DE8];
  synchronize = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] synchronize];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (synchronize)
  {
    if (v4)
    {
      *v7 = 136315650;
      *&v7[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS synchronized", v7, 28, *v7);
    }
  }

  else if (v4)
  {
    *v7 = 136315650;
    *&v7[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS synchronization failed !!", v7, 28, *v7);
  }

  dictionaryRepresentation = [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] dictionaryRepresentation];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136315906;
    *&v7[4] = "[WiFiCloudSyncEngineCore printCompleteKVStore]";
    v8 = 2080;
    v9 = "WiFiCloudSyncEngineCore.m";
    v10 = 1024;
    v11 = 435;
    v12 = 2112;
    v13 = dictionaryRepresentation;
    LODWORD(v6) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)complete store: %@", v7, v6);
  }
}

- (void)clearKVS
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isKVSEncrypted = [(WiFiCloudSyncEngineCore *)self isKVSEncrypted];
    v4 = "";
    v21 = "[WiFiCloudSyncEngineCore clearKVS]";
    v23 = "WiFiCloudSyncEngineCore.m";
    v24 = 1024;
    v20 = 136315906;
    v25 = 443;
    v22 = 2080;
    if (isKVSEncrypted)
    {
      v4 = "Encrypted ";
    }

    v26 = 2080;
    v27 = v4;
    LODWORD(v12) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Will clear %sKVS", &v20, v12, v13, block[0]);
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [-[WiFiCloudSyncEngineCore readCompleteKVStore](self "readCompleteKVStore")];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSUbiquitousKeyValueStore *)[(WiFiCloudSyncEngineCore *)self keyValueStore] removeObjectForKey:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WiFiCloudSyncEngineCore_clearKVS__block_invoke;
  block[3] = &unk_279EBBAB8;
  block[4] = self;
  dispatch_async(global_queue, block);
}

void __35__WiFiCloudSyncEngineCore_clearKVS__block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)dispatchUbiquitousKeyValueStoreDidChangeOnBackground:(id)background
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WiFiCloudSyncEngineCore *)self clientThread]|| [(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if (-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") && (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
        v14 = 2080;
        v15 = "WiFiCloudSyncEngineCore.m";
        v16 = 1024;
        v17 = 473;
        LODWORD(v9) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Got the callback on the client thread, dispatch it on background", &v12, v9, LODWORD(block[0]));
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __80__WiFiCloudSyncEngineCore_dispatchUbiquitousKeyValueStoreDidChangeOnBackground___block_invoke;
      v11[3] = &unk_279EBBAE0;
      v11[4] = self;
      v11[5] = background;
      v8 = v11;
    }

    else
    {
      if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue != [(WiFiCloudSyncEngineCore *)self clientQueue]))
      {

        [(WiFiCloudSyncEngineCore *)self ubiquitousKeyValueStoreDidChange:background];
        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
        v14 = 2080;
        v15 = "WiFiCloudSyncEngineCore.m";
        v16 = 1024;
        v17 = 481;
        LODWORD(v9) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Got the callback on the client queue, dispatch it on background", &v12, v9, LODWORD(block[0]));
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__WiFiCloudSyncEngineCore_dispatchUbiquitousKeyValueStoreDidChangeOnBackground___block_invoke_70;
      block[3] = &unk_279EBBAE0;
      block[4] = self;
      block[5] = background;
      v8 = block;
    }

    dispatch_async(global_queue, v8);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WiFiCloudSyncEngineCore dispatchUbiquitousKeyValueStoreDidChangeOnBackground:]";
    v14 = 2080;
    v15 = "WiFiCloudSyncEngineCore.m";
    v16 = 1024;
    v17 = 467;
    LODWORD(v9) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)null client thread or queue", &v12, v9, LODWORD(block[0]));
  }
}

- (void)ubiquitousKeyValueStoreDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [objc_msgSend(userInfo objectForKey:{*MEMORY[0x277CCA7B0]), "intValue"}];
  v6 = [userInfo objectForKey:*MEMORY[0x277CCA7B8]];
  if ([(WiFiCloudSyncEngineCore *)self clientThread]|| [(WiFiCloudSyncEngineCore *)self clientQueue])
  {
    if ([v6 indexOfObject:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"] == 0x7FFFFFFFFFFFFFFFLL || !-[NSUbiquitousKeyValueStore objectForKey:](-[WiFiCloudSyncEngineCore keyValueStore](self, "keyValueStore"), "objectForKey:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"))
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = "[WiFiCloudSyncEngineCore ubiquitousKeyValueStoreDidChange:]";
      v18 = 2080;
      v19 = "WiFiCloudSyncEngineCore.m";
      v20 = 1024;
      v21 = 509;
      v22 = 1024;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v12 = 44;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)cloud clean up event -- reason %d changed keys : %@", &v16, v12);
    }

    if ([(WiFiCloudSyncEngineCore *)self clientThread])
    {
      [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayCloudCleanUpEvent onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:0 waitUntilDone:0];
    }

    if ([(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      clientQueue = [(WiFiCloudSyncEngineCore *)self clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__WiFiCloudSyncEngineCore_ubiquitousKeyValueStoreDidChange___block_invoke;
      block[3] = &unk_279EBBAB8;
      block[4] = self;
      dispatch_async(clientQueue, block);
    }

    if (v5 >= 2)
    {
LABEL_12:
      v8 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5), @"reason", v6, @"changedKeys", 0}];
      if ([(WiFiCloudSyncEngineCore *)self clientThread])
      {
        [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayCloudEvent_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v9 waitUntilDone:0];
      }

      if ([(WiFiCloudSyncEngineCore *)self clientQueue])
      {
        clientQueue2 = [(WiFiCloudSyncEngineCore *)self clientQueue];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __60__WiFiCloudSyncEngineCore_ubiquitousKeyValueStoreDidChange___block_invoke_2;
        v14[3] = &unk_279EBBAE0;
        v14[4] = self;
        v14[5] = v9;
        dispatch_async(clientQueue2, v14);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[WiFiCloudSyncEngineCore ubiquitousKeyValueStoreDidChange:]";
    v18 = 2080;
    v19 = "WiFiCloudSyncEngineCore.m";
    v20 = 1024;
    v21 = 501;
    LODWORD(v11) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)null client thread or queue", &v16, v11, v13);
  }
}

- (void)enableIcloudSyncing:(BOOL)syncing ForBundleId:(id)id
{
  syncingCopy = syncing;
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = " DISABLING...";
    v9 = "[WiFiCloudSyncEngineCore enableIcloudSyncing:ForBundleId:]";
    v8 = 136315906;
    v11 = "WiFiCloudSyncEngineCore.m";
    v12 = 1024;
    v13 = 541;
    v10 = 2080;
    if (syncingCopy)
    {
      v7 = " ENABLING...";
    }

    v14 = 2080;
    v15 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)%s", &v8, 38);
  }

  if (syncingCopy)
  {
    [(WiFiCloudSyncEngineCore *)self subscribeKVStoreNotficationsForBundleId:id];
    [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:1];
  }

  else
  {
    [(WiFiCloudSyncEngineCore *)self unSubscribeKVStoreNotfications];
  }
}

- (void)subscribeKVStoreNotficationsForBundleId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  isKVSEncrypted = [(WiFiCloudSyncEngineCore *)self isKVSEncrypted];
  v6 = objc_alloc(MEMORY[0x277CCAD80]);
  if (isKVSEncrypted)
  {
    self->keyValueStore = [v6 _initWithStoreIdentifier:@"com.apple.wifi.syncable-networks" usingEndToEndEncryption:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = "[WiFiCloudSyncEngineCore subscribeKVStoreNotficationsForBundleId:]";
      v13 = 2080;
      v14 = "WiFiCloudSyncEngineCore.m";
      v15 = 1024;
      v16 = 559;
      v17 = 2112;
      idCopy2 = id;
      v19 = 2112;
      v20 = @"com.apple.wifi.syncable-networks";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Encrypted KVS created for bundle id [%@] and store id [%@]", &v11, 48);
    }
  }

  else
  {
    self->keyValueStore = [v6 initWithBundleIdentifier:id];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = "[WiFiCloudSyncEngineCore subscribeKVStoreNotficationsForBundleId:]";
      v13 = 2080;
      v14 = "WiFiCloudSyncEngineCore.m";
      v15 = 1024;
      v16 = 569;
      v17 = 2112;
      idCopy2 = id;
      v19 = 2112;
      v20 = @"com.apple.wifid.known-networks";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS created for bundle id [%@] and store id [%@]", &v11, 48);
    }
  }

  selfCopy = self;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WiFiCloudSyncEngineCore_subscribeKVStoreNotficationsForBundleId___block_invoke;
  block[3] = &unk_279EBBAB8;
  block[4] = self;
  dispatch_async(global_queue, block);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dispatchUbiquitousKeyValueStoreDidChangeOnBackground_ name:*MEMORY[0x277CCA7C0] object:{-[WiFiCloudSyncEngineCore keyValueStore](self, "keyValueStore")}];
}

void __67__WiFiCloudSyncEngineCore_subscribeKVStoreNotficationsForBundleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronizeKVS];
  v2 = *(a1 + 32);
}

- (void)unSubscribeKVStoreNotfications
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[WiFiCloudSyncEngineCore unSubscribeKVStoreNotfications]";
    v6 = 2080;
    v7 = "WiFiCloudSyncEngineCore.m";
    v8 = 1024;
    v9 = 589;
    v3 = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", &v4, v3);
  }

  [(WiFiCloudSyncEngineCore *)self setICloudSyncingEnabled:0];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->keyValueStore = 0;
}

- (void)relayPruneKVSStore:(id)store
{
  v12 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 136315650;
        *&v7[4] = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
        v8 = 2080;
        v9 = "WiFiCloudSyncEngineCore.m";
        v10 = 1024;
        v11 = 615;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", v7, 28);
      }

      WiFiCloudSyncEnginePruneNetworksInCloud([(WiFiCloudSyncEngineCore *)self context], self, store);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 136315650;
      *&v7[4] = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client queue", v7, 28, *v7);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136315650;
    *&v7[4] = "[WiFiCloudSyncEngineCore relayPruneKVSStore:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client thread", v7, 28, *v7);
  }
}

- (void)pruneKVSStoreAndReply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WiFiCloudSyncEngineCore pruneKVSStoreAndReply:]";
    v14 = 2080;
    v15 = "WiFiCloudSyncEngineCore.m";
    v16 = 1024;
    v17 = 622;
    LODWORD(v9) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", &v12, v9, v10);
  }

  readCompleteKVStore = [(WiFiCloudSyncEngineCore *)self readCompleteKVStore];
  if (!readCompleteKVStore || (v6 = readCompleteKVStore, -[WiFiCloudSyncEngineCore removeFromKVStore:](self, "removeFromKVStore:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"), (v7 = [objc_msgSend(v6 objectForKey:{@"WiFiCloudSyncEngineNonSSIDKeyPrefix_NonNetworkContainer", "objectForKey:", @"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"}]) != 0) && objc_msgSend(v7, "intValue") > 1)
  {
    if (reply)
    {
      (*(reply + 2))(reply);
    }
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke;
    block[3] = &unk_279EBBB08;
    block[4] = self;
    block[5] = v6;
    block[6] = reply;
    dispatch_async(global_queue, block);
  }
}

uint64_t __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) clientThread])
  {
    [*(a1 + 32) performSelector:sel_relayPruneKVSStore_ onThread:objc_msgSend(*(a1 + 32) withObject:"clientThread") waitUntilDone:{*(a1 + 40), 1}];
  }

  if ([*(a1 + 32) clientQueue])
  {
    v2 = [*(a1 + 32) clientQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__WiFiCloudSyncEngineCore_pruneKVSStoreAndReply___block_invoke_2;
    v4[3] = &unk_279EBBAE0;
    v5 = *(a1 + 32);
    dispatch_sync(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)relayCloudEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if ([(WiFiCloudSyncEngineCore *)self callback])
      {
        callback = [(WiFiCloudSyncEngineCore *)self callback];
        context = [(WiFiCloudSyncEngineCore *)self context];

        callback(self, event, context);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[WiFiCloudSyncEngineCore relayCloudEvent:]";
      v11 = 2080;
      v12 = "WiFiCloudSyncEngineCore.m";
      v13 = 1024;
      v14 = 678;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client queue", &v9, 28);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[WiFiCloudSyncEngineCore relayCloudEvent:]";
    v11 = 2080;
    v12 = "WiFiCloudSyncEngineCore.m";
    v13 = 1024;
    v14 = 673;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client thread", &v9, 28);
  }
}

- (void)relayCloudCleanUpEvent
{
  v6 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v3 = [MEMORY[0x277CCACC8] currentThread], v3 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {

      [(WiFiCloudSyncEngineCore *)self removeFromKVStore:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 136315650;
      *&v5[4] = "[WiFiCloudSyncEngineCore relayCloudCleanUpEvent]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client queue", v5, 28, *v5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315650;
    *&v5[4] = "[WiFiCloudSyncEngineCore relayCloudCleanUpEvent]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client thread", v5, 28, *v5);
  }
}

- (void)relayMergeNetworks:(id)networks
{
  v12 = *MEMORY[0x277D85DE8];
  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v5 = [MEMORY[0x277CCACC8] currentThread], v5 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 136315650;
        *&v7[4] = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
        v8 = 2080;
        v9 = "WiFiCloudSyncEngineCore.m";
        v10 = 1024;
        v11 = 714;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", v7, 28);
      }

      WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS([(WiFiCloudSyncEngineCore *)self context], self, networks);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 136315650;
      *&v7[4] = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client queue", v7, 28, *v7);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136315650;
    *&v7[4] = "[WiFiCloudSyncEngineCore relayMergeNetworks:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client thread", v7, 28, *v7);
  }
}

- (void)synchronizeAndCallMergeNetworksAndReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[WiFiCloudSyncEngineCore synchronizeAndCallMergeNetworksAndReply:]";
    v12 = 2080;
    v13 = "WiFiCloudSyncEngineCore.m";
    v14 = 1024;
    v15 = 721;
    LODWORD(v7) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)", &v10, v7, v8);
  }

  [(WiFiCloudSyncEngineCore *)self synchronizeKVS];
  readCompleteKVStore = [(WiFiCloudSyncEngineCore *)self readCompleteKVStore];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke;
  block[3] = &unk_279EBBB08;
  block[4] = readCompleteKVStore;
  block[5] = self;
  block[6] = reply;
  dispatch_async(global_queue, block);
}

uint64_t __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([*(a1 + 40) clientThread])
    {
      [*(a1 + 40) performSelector:sel_relayMergeNetworks_ onThread:objc_msgSend(*(a1 + 40) withObject:"clientThread") waitUntilDone:{*(a1 + 32), 1}];
    }

    if ([*(a1 + 40) clientQueue])
    {
      v2 = [*(a1 + 40) clientQueue];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __67__WiFiCloudSyncEngineCore_synchronizeAndCallMergeNetworksAndReply___block_invoke_2;
      v4[3] = &unk_279EBBAE0;
      v5 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      dispatch_sync(v2, v4);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)queryKeychainSyncState
{
  if ([(WiFiCloudSyncEngineCore *)self context])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:WiFiCloudSyncEngineIsRunning() != 0];
    if ([(WiFiCloudSyncEngineCore *)self clientThread])
    {
      [(WiFiCloudSyncEngineCore *)self performSelector:sel_relayKeychainSyncState_ onThread:[(WiFiCloudSyncEngineCore *)self clientThread] withObject:v3 waitUntilDone:1];
    }

    if ([(WiFiCloudSyncEngineCore *)self clientQueue])
    {
      clientQueue = [(WiFiCloudSyncEngineCore *)self clientQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __49__WiFiCloudSyncEngineCore_queryKeychainSyncState__block_invoke;
      v5[3] = &unk_279EBBAE0;
      v5[4] = self;
      v5[5] = v3;
      dispatch_sync(clientQueue, v5);
    }
  }

  else
  {
    [WiFiCloudSyncEngineCore queryKeychainSyncState];
  }
}

- (void)relayKeychainSyncState:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  context = [(WiFiCloudSyncEngineCore *)self context];
  if (state)
  {
    LODWORD(state) = [state BOOLValue];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315906;
    *&v9[4] = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
    v10 = 2080;
    v11 = "WiFiCloudSyncEngineCore.m";
    v12 = 1024;
    v13 = 785;
    v14 = 1024;
    stateCopy = state;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)isKeychainSyncEnabled %d", v9, 34);
  }

  if (!-[WiFiCloudSyncEngineCore clientThread](self, "clientThread") || (v6 = [MEMORY[0x277CCACC8] currentThread], v6 == -[WiFiCloudSyncEngineCore clientThread](self, "clientThread")))
  {
    if (![(WiFiCloudSyncEngineCore *)self clientQueue]|| (current_queue = dispatch_get_current_queue(), current_queue == [(WiFiCloudSyncEngineCore *)self clientQueue]))
    {
      if (state)
      {
        WiFiCloudSyncEngineStartEngine(context);
      }

      else
      {
        WiFiCloudSyncEngineStopEngine(context);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136315650;
      *&v9[4] = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
      LODWORD(v8) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client queue", v9, v8, *v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315650;
    *&v9[4] = "[WiFiCloudSyncEngineCore relayKeychainSyncState:]";
    LODWORD(v8) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Error !!  not running on client thread", v9, v8, *v9);
  }
}

- (uint64_t)addToKVStore:synchronize:.cold.1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)syncing disabled, abort... ");
  }

  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)key length exceeded maximum allowed length");
  }

  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)null key or value");
  }

  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)null key");
  }

  return result;
}

- (uint64_t)addToKVStore:synchronize:.cold.5()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)Error: null keyValueDict ");
  }

  return result;
}

- (uint64_t)removeFromKVStore:(uint64_t)result .cold.1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)syncing disabled, abort... ");
  }

  return result;
}

- (uint64_t)removeFromKVStore:.cold.2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)Error: null key");
  }

  return result;
}

- (uint64_t)readStoreValueForKey:(uint64_t)result .cold.1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)Error: null key");
  }

  return result;
}

- (uint64_t)queryKeychainSyncState
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_2(v1, v2, v3, v4, &dword_273EB5000, MEMORY[0x277D86220], v5, "[WIFICLOUDSYNC] %s (%s:%u)null sync engine");
  }

  return result;
}

@end