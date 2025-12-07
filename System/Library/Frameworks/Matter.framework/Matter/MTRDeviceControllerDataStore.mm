@interface MTRDeviceControllerDataStore
- (BOOL)_bulkStoreAttributeCacheValues:(id)values;
- (BOOL)_deleteClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (BOOL)_deleteClusterIndexForNodeID:(id)d endpointID:(id)iD;
- (BOOL)_deleteEndpointIndexForNodeID:(id)d;
- (BOOL)_deleteNodeIndex;
- (BOOL)_removeAttributeCacheValueForKey:(id)key;
- (BOOL)_removeEndpointFromEndpointIndex:(id)index forNodeID:(id)d;
- (BOOL)_storeAttributeCacheValue:(id)value forKey:(id)key;
- (BOOL)_storeClusterData:(id)data forNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (BOOL)_storeClusterIndex:(id)index forNodeID:(id)d endpointID:(id)iD;
- (BOOL)_storeEndpointIndex:(id)index forNodeID:(id)d;
- (BOOL)_storeNodeIndex:(id)index;
- (ChipError)storeLastLocallyUsedNOC:(id)c;
- (MTRDeviceControllerDataStore)initWithController:(id)controller storageDelegate:(id)delegate storageDelegateQueue:(id)queue;
- (NSArray)nodesWithStoredData;
- (id)_clusterDataKeyForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (id)_clusterIndexKeyForNodeID:(id)d endpointID:(id)iD;
- (id)_deviceDataKeyForNodeID:(id)d;
- (id)_endpointIndexKeyForNodeID:(id)d;
- (id)_fetchAttributeCacheValueForKey:(id)key expectedClass:(Class)class;
- (id)_fetchClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (id)_fetchClusterIndexForNodeID:(id)d endpointID:(id)iD;
- (id)_fetchEndpointIndexForNodeID:(id)d;
- (id)_fetchNodeIndex;
- (id)_findResumptionInfoWithKey:(id)key;
- (id)_getClusterDataFromSecureLocalValues:(id)values;
- (id)fetchLastLocallyUsedNOC;
- (id)findResumptionInfoByNodeID:(id)d;
- (id)findResumptionInfoByResumptionID:(id)d;
- (id)getStoredClusterDataForNodeID:(id)d;
- (id)getStoredClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (id)getStoredDeviceDataForNodeID:(id)d;
- (void)_clearResumptionInfoForNodeID:(id)d controller:(id)controller;
- (void)_clearStoredClusterDataForNodeID:(id)d;
- (void)_pruneEmptyStoredClusterDataBranches;
- (void)clearAllResumptionInfo;
- (void)clearAllStoredClusterData;
- (void)clearDeviceDataForNodeID:(id)d;
- (void)clearResumptionInfoForNodeID:(id)d;
- (void)clearStoredClusterDataForNodeID:(id)d;
- (void)clearStoredClusterDataForNodeID:(id)d endpointID:(id)iD;
- (void)clearStoredClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID;
- (void)fetchAttributeDataForAllDevices:(id)devices;
- (void)removeAttributes:(id)attributes fromCluster:(id)cluster forNodeID:(id)d;
- (void)storeClusterData:(id)data forNodeID:(id)d;
- (void)storeDeviceData:(id)data forNodeID:(id)d;
- (void)storeResumptionInfo:(id)info;
- (void)synchronouslyPerformBlock:(id)block;
@end

@implementation MTRDeviceControllerDataStore

- (MTRDeviceControllerDataStore)initWithController:(id)controller storageDelegate:(id)delegate storageDelegateQueue:(id)queue
{
  v59 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  delegateCopy = delegate;
  queueCopy = queue;
  v55.receiver = self;
  v55.super_class = MTRDeviceControllerDataStore;
  v11 = [(MTRDeviceControllerDataStore *)&v55 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, controllerCopy);
    objc_storeStrong(&v12->_storageDelegate, delegate);
    objc_storeStrong(&v12->_storageDelegateQueue, queue);
    v12->_nodeArrayLock._os_unfair_lock_opaque = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_23920B1E0;
    v53 = sub_23920B1F0;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_23920B1E0;
    v47 = sub_23920B1F0;
    v48 = 0;
    v13 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = v12->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920B1F8;
    block[3] = &unk_278A73AA0;
    v41 = &v49;
    v15 = v12;
    v39 = v15;
    v40 = controllerCopy;
    v42 = &v43;
    dispatch_sync(storageDelegateQueue, block);
    [v13 timeIntervalSinceNow];
    if (v16 < -2.0)
    {
      v17 = -v16;
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v58 = v17;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore init took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore init took %0.6lf seconds to read from storage", v17);
      }
    }

    if (v50[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = sub_2393D9044(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "List of CASE resumption node IDs is not an array", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "List of CASE resumption node IDs is not an array");
        }

LABEL_31:
        v25 = 0;
        goto LABEL_34;
      }

      v33 = delegateCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v50[5];
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v56 count:16];
      if (v20)
      {
        v21 = *v35;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            if (!sub_23920B288(v23))
            {
              v30 = sub_2393D9044(0);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v58 = *&v23;
                _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Resumption node ID contains invalid value: %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1, "Resumption node ID contains invalid value: %@", v23);
              }

              delegateCopy = v33;
              goto LABEL_31;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v34 objects:v56 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      delegateCopy = v33;
      v24 = [v50[5] mutableCopy];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    nodesWithResumptionInfo = v15->_nodesWithResumptionInfo;
    v15->_nodesWithResumptionInfo = v24;

    v27 = v44[5];
    if (v27)
    {
      v28 = [v27 mutableCopy];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    nodesWithAttributeInfo = v15->_nodesWithAttributeInfo;
    v15->_nodesWithAttributeInfo = v28;

    v25 = v15;
LABEL_34:

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    goto LABEL_35;
  }

  v25 = 0;
LABEL_35:

  return v25;
}

- (void)fetchAttributeDataForAllDevices:(id)devices
{
  v23 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_23920B1E0;
  v19 = sub_23920B1F0;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920B56C;
    block[3] = &unk_278A722F8;
    block[4] = self;
    v14 = &v15;
    v13 = WeakRetained;
    dispatch_sync(storageDelegateQueue, block);
    [v6 timeIntervalSinceNow];
    if (v8 < -2.0)
    {
      v9 = -v8;
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = v9;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore fetchAttributeDataForAllDevices took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore fetchAttributeDataForAllDevices took %0.6lf seconds to read from storage", v9);
      }
    }

    if ([v16[5] count])
    {
      v11 = [(MTRDeviceControllerDataStore *)self _getClusterDataFromSecureLocalValues:v16[5]];
      devicesCopy[2](devicesCopy, v11);
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (id)findResumptionInfoByNodeID:(id)d
{
  v4 = sub_23920B654(d);
  v5 = [(MTRDeviceControllerDataStore *)self _findResumptionInfoWithKey:v4];

  return v5;
}

- (id)findResumptionInfoByResumptionID:(id)d
{
  v4 = sub_23920B73C(d);
  v5 = [(MTRDeviceControllerDataStore *)self _findResumptionInfoWithKey:v4];

  return v5;
}

- (void)storeResumptionInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    nodeID = [infoCopy nodeID];
    v7 = [(MTRDeviceControllerDataStore *)self findResumptionInfoByNodeID:nodeID];

    v8 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920BA04;
    block[3] = &unk_278A73AC8;
    v10 = v7;
    v15 = v10;
    selfCopy = self;
    v17 = WeakRetained;
    v18 = infoCopy;
    dispatch_sync(storageDelegateQueue, block);
    [v8 timeIntervalSinceNow];
    if (v11 < -2.0)
    {
      v12 = -v11;
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v20 = v12;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore storeResumptionInfo took %0.6lf seconds to store to storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore storeResumptionInfo took %0.6lf seconds to store to storage", v12);
      }
    }
  }
}

- (void)clearAllResumptionInfo
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    os_unfair_lock_lock(&self->_nodeArrayLock);
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = self->_nodesWithResumptionInfo;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [(MTRDeviceControllerDataStore *)self _clearResumptionInfoForNodeID:*(*(&v8 + 1) + 8 * v7++) controller:WeakRetained, v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_nodesWithResumptionInfo removeAllObjects];
    os_unfair_lock_unlock(&self->_nodeArrayLock);
  }
}

- (void)clearResumptionInfoForNodeID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    [(MTRDeviceControllerDataStore *)self _clearResumptionInfoForNodeID:dCopy controller:WeakRetained];
    os_unfair_lock_lock(&self->_nodeArrayLock);
    [(NSMutableArray *)self->_nodesWithResumptionInfo removeObject:dCopy];
    os_unfair_lock_unlock(&self->_nodeArrayLock);
  }
}

- (void)_clearResumptionInfoForNodeID:(id)d controller:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  v8 = [(MTRDeviceControllerDataStore *)self findResumptionInfoByNodeID:dCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C04C;
    block[3] = &unk_278A71650;
    block[4] = self;
    v15 = controllerCopy;
    v16 = v8;
    dispatch_sync(storageDelegateQueue, block);
    [v9 timeIntervalSinceNow];
    if (v11 < -2.0)
    {
      v12 = -v11;
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v18 = v12;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore _clearResumptionInfoForNodeID took %0.6lf seconds to remove from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore _clearResumptionInfoForNodeID took %0.6lf seconds to remove from storage", v12);
      }
    }
  }
}

- (ChipError)storeLastLocallyUsedNOC:(id)c
{
  v27 = *MEMORY[0x277D85DE8];
  cCopy = c;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerDataStore.mm";
  if (WeakRetained)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v7 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C398;
    block[3] = &unk_278A73AF0;
    v20 = &v21;
    block[4] = self;
    v18 = WeakRetained;
    v19 = cCopy;
    dispatch_sync(storageDelegateQueue, block);
    [v7 timeIntervalSinceNow];
    if (v9 < -2.0)
    {
      v10 = -v9;
      v11 = sub_2393D9044(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v26 = v10;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore storeLastLocallyUsedNOC took %0.6lf seconds to store to storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore storeLastLocallyUsedNOC took %0.6lf seconds to store to storage", v10);
      }
    }

    v12 = *(v22 + 24);
    if (*(v22 + 24))
    {
      v6 = 0;
    }

    _Block_object_dispose(&v21, 8);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x14B00000000;
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 159;
    }
  }

  else
  {
    v13 = 0x13C00000000;
    v14 = 159;
  }

  v15 = v14 | v13;
  v16 = v6;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)fetchLastLocallyUsedNOC
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_23920B1E0;
    v18 = sub_23920B1F0;
    v19 = 0;
    v4 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C65C;
    block[3] = &unk_278A73B18;
    v13 = &v14;
    block[4] = self;
    v12 = WeakRetained;
    dispatch_sync(storageDelegateQueue, block);
    [v4 timeIntervalSinceNow];
    if (v6 < -2.0)
    {
      v7 = -v6;
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = v7;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore fetchLastLocallyUsedNOC took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore fetchLastLocallyUsedNOC took %0.6lf seconds to read from storage", v7);
      }
    }

    v9 = v15[5];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v15[5];
      }

      else
      {
        v9 = 0;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_findResumptionInfoWithKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = WeakRetained;
  v7 = 0;
  if (keyCopy && WeakRetained)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_23920B1E0;
    v22 = sub_23920B1F0;
    v23 = 0;
    v8 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920C96C;
    block[3] = &unk_278A73AF0;
    v17 = &v18;
    block[4] = self;
    v15 = v6;
    v16 = keyCopy;
    dispatch_sync(storageDelegateQueue, block);
    [v8 timeIntervalSinceNow];
    if (v10 < -2.0)
    {
      v11 = -v10;
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v11;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore _findResumptionInfoWithKey took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore _findResumptionInfoWithKey took %0.6lf seconds to read from storage", v11);
      }
    }

    v7 = v19[5];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v19[5];
      }

      else
      {
        v7 = 0;
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  return v7;
}

- (id)_fetchAttributeCacheValueForKey:(id)key expectedClass:(Class)class
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained valueForKey:keyCopy securityLevel:0 sharingType:0];
    objc_autoreleasePoolPop(v7);
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_storeAttributeCacheValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v9 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained storeValue:valueCopy forKey:keyCopy securityLevel:0 sharingType:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_bulkStoreAttributeCacheValues:(id)values
{
  valuesCopy = values;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained storeValues:valuesCopy securityLevel:0 sharingType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_removeAttributeCacheValueForKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = [(MTRDeviceControllerStorageDelegate *)self->_storageDelegate controller:WeakRetained removeValueForKey:keyCopy securityLevel:0 sharingType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchNodeIndex
{
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  v3 = objc_opt_class();

  return [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:@"attrCacheNodeIndex" expectedClass:v3];
}

- (BOOL)_storeNodeIndex:(id)index
{
  indexCopy = index;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  LOBYTE(self) = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:indexCopy forKey:@"attrCacheNodeIndex"];

  return self;
}

- (BOOL)_deleteNodeIndex
{
  dispatch_assert_queue_V2(self->_storageDelegateQueue);

  return [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:@"attrCacheNodeIndex"];
}

- (id)_endpointIndexKeyForNodeID:(id)d
{
  dCopy = d;
  v4 = [@"attrCacheEndpointIndex" stringByAppendingFormat:@":0x%016llX", objc_msgSend(dCopy, "unsignedLongLongValue")];

  return v4;
}

- (id)_fetchEndpointIndexForNodeID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy)
  {
    v5 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:dCopy];
    v6 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v5 expectedClass:objc_opt_class()];
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[MTRDeviceControllerDataStore _fetchEndpointIndexForNodeID:]";
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _fetchEndpointIndexForNodeID:]");
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_storeEndpointIndex:(id)index forNodeID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  dCopy = d;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:dCopy];
    v9 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:indexCopy forKey:v8];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[MTRDeviceControllerDataStore _storeEndpointIndex:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _storeEndpointIndex:forNodeID:]");
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_removeEndpointFromEndpointIndex:(id)index forNodeID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  dCopy = d;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (indexCopy && dCopy)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:dCopy];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      [v9 removeObject:indexCopy];
      v10 = [(MTRDeviceControllerDataStore *)self _storeEndpointIndex:v9 forNodeID:dCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[MTRDeviceControllerDataStore _removeEndpointFromEndpointIndex:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _removeEndpointFromEndpointIndex:forNodeID:]");
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_deleteEndpointIndexForNodeID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy)
  {
    v5 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:dCopy];
    v6 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v5];
  }

  else
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[MTRDeviceControllerDataStore _deleteEndpointIndexForNodeID:]";
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _deleteEndpointIndexForNodeID:]");
    }

    v6 = 0;
  }

  return v6;
}

- (id)_clusterIndexKeyForNodeID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = [@"attrCacheClusterIndex" stringByAppendingFormat:@":0x%016llX:0x%04X", objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(iDCopy, "unsignedShortValue")];

  return v7;
}

- (id)_fetchClusterIndexForNodeID:(id)d endpointID:(id)iD
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy && iDCopy)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:dCopy endpointID:iDCopy];
    v9 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v8 expectedClass:objc_opt_class()];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[MTRDeviceControllerDataStore _fetchClusterIndexForNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _fetchClusterIndexForNodeID:endpointID:]");
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_storeClusterIndex:(id)index forNodeID:(id)d endpointID:(id)iD
{
  v17 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  dCopy = d;
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy && iDCopy)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:dCopy endpointID:iDCopy];
    v12 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:indexCopy forKey:v11];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[MTRDeviceControllerDataStore _storeClusterIndex:forNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _storeClusterIndex:forNodeID:endpointID:]");
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_deleteClusterIndexForNodeID:(id)d endpointID:(id)iD
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy && iDCopy)
  {
    v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:dCopy endpointID:iDCopy];
    v9 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v8];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[MTRDeviceControllerDataStore _deleteClusterIndexForNodeID:endpointID:]";
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _deleteClusterIndexForNodeID:endpointID:]");
    }

    v9 = 0;
  }

  return v9;
}

- (id)_clusterDataKeyForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  v10 = [@"attrCacheClusterData" stringByAppendingFormat:@":0x%016llX:0x%04X:0x%08lX", objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(iDCopy, "unsignedShortValue"), objc_msgSend(clusterIDCopy, "unsignedLongValue")];

  return v10;
}

- (id)_fetchClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy && iDCopy && clusterIDCopy)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy];
    v12 = [(MTRDeviceControllerDataStore *)self _fetchAttributeCacheValueForKey:v11 expectedClass:objc_opt_class()];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[MTRDeviceControllerDataStore _fetchClusterDataForNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _fetchClusterDataForNodeID:endpointID:clusterID:]");
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_storeClusterData:(id)data forNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dataCopy && dCopy && iDCopy && clusterIDCopy)
  {
    v14 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy];
    v15 = [(MTRDeviceControllerDataStore *)self _storeAttributeCacheValue:dataCopy forKey:v14];
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[MTRDeviceControllerDataStore _storeClusterData:forNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _storeClusterData:forNodeID:endpointID:clusterID:]");
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)_deleteClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  if (dCopy && iDCopy && clusterIDCopy)
  {
    v11 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy];
    v12 = [(MTRDeviceControllerDataStore *)self _removeAttributeCacheValueForKey:v11];
  }

  else
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[MTRDeviceControllerDataStore _deleteClusterDataForNodeID:endpointID:clusterID:]";
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore _deleteClusterDataForNodeID:endpointID:clusterID:]");
    }

    v12 = 0;
  }

  return v12;
}

- (void)_pruneEmptyStoredClusterDataBranches
{
  v62 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  os_unfair_lock_lock(&self->_nodeArrayLock);
  v3 = [(NSMutableArray *)self->_nodesWithAttributeInfo copy];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v30 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v30)
  {
    v35 = 0;
    v31 = *v50;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v49 + 1) + 8 * i);
        v29 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:v4];
        v34 = [v29 mutableCopy];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v36 = v29;
        v39 = [v36 countByEnumeratingWithState:&v45 objects:v60 count:16];
        if (v39)
        {
          v38 = *v46;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v46 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v5 = *(*(&v45 + 1) + 8 * j);
              v37 = [(MTRDeviceControllerDataStore *)self _fetchClusterIndexForNodeID:v4 endpointID:v5];
              v6 = [v37 mutableCopy];
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v7 = v37;
              v8 = [v7 countByEnumeratingWithState:&v41 objects:v59 count:16];
              if (v8)
              {
                v9 = *v42;
                do
                {
                  for (k = 0; k != v8; ++k)
                  {
                    if (*v42 != v9)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v11 = *(*(&v41 + 1) + 8 * k);
                    v12 = [(MTRDeviceControllerDataStore *)self _fetchClusterDataForNodeID:v4 endpointID:v5 clusterID:v11];
                    if (!v12)
                    {
                      [v6 removeObject:v11];
                    }
                  }

                  v8 = [v7 countByEnumeratingWithState:&v41 objects:v59 count:16];
                }

                while (v8);
              }

              v13 = [v7 count];
              if (v13 != [v6 count])
              {
                if ([v6 count])
                {
                  v14 = [(MTRDeviceControllerDataStore *)self _storeClusterIndex:v6 forNodeID:v4 endpointID:v5];
                }

                else
                {
                  [v34 removeObject:v5];
                  v14 = [(MTRDeviceControllerDataStore *)self _deleteClusterIndexForNodeID:v4 endpointID:v5];
                }

                if (!v14)
                {
                  v15 = sub_2393D9044(0);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    v16 = [v6 count];
                    unsignedLongLongValue = [v4 unsignedLongLongValue];
                    unsignedShortValue = [v5 unsignedShortValue];
                    *buf = 134218496;
                    v54 = v16;
                    v55 = 2048;
                    v56 = unsignedLongLongValue;
                    v57 = 1024;
                    v58 = unsignedShortValue;
                    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for clusterIndex (%lu) @ node 0x%016llX endpoint %u", buf, 0x1Cu);
                  }

                  ++v35;
                  if (sub_2393D5398(1u))
                  {
                    sub_2393D5320(0, 1, "Store failed in _pruneEmptyStoredClusterDataBranches for clusterIndex (%lu) @ node 0x%016llX endpoint %u", [v6 count], objc_msgSend(v4, "unsignedLongLongValue"), objc_msgSend(v5, "unsignedShortValue"));
                  }
                }
              }
            }

            v39 = [v36 countByEnumeratingWithState:&v45 objects:v60 count:16];
          }

          while (v39);
        }

        v19 = [v36 count];
        if (v19 != [v34 count])
        {
          if ([v34 count])
          {
            v20 = [(MTRDeviceControllerDataStore *)self _storeEndpointIndex:v34 forNodeID:v4];
          }

          else
          {
            [(NSMutableArray *)self->_nodesWithAttributeInfo removeObject:v4];
            v20 = [(MTRDeviceControllerDataStore *)self _deleteEndpointIndexForNodeID:v4];
          }

          if (!v20)
          {
            v21 = sub_2393D9044(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [v34 count];
              unsignedLongLongValue2 = [v4 unsignedLongLongValue];
              *buf = 134218240;
              v54 = v22;
              v55 = 2048;
              v56 = unsignedLongLongValue2;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for endpointIndex (%lu) @ node 0x%016llX", buf, 0x16u);
            }

            ++v35;
            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "Store failed in _pruneEmptyStoredClusterDataBranches for endpointIndex (%lu) @ node 0x%016llX", [v34 count], objc_msgSend(v4, "unsignedLongLongValue"));
            }
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v30);
  }

  else
  {
    v35 = 0;
  }

  v24 = [obj count];
  if (v24 != [(NSMutableArray *)self->_nodesWithAttributeInfo count]&& !([(NSMutableArray *)self->_nodesWithAttributeInfo count]? [(MTRDeviceControllerDataStore *)self _storeNodeIndex:self->_nodesWithAttributeInfo]: [(MTRDeviceControllerDataStore *)self _deleteNodeIndex]))
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [(NSMutableArray *)self->_nodesWithAttributeInfo count];
      *buf = 134217984;
      v54 = v27;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches for nodeIndex (%lu)", buf, 0xCu);
    }

    ++v35;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Store failed in _pruneEmptyStoredClusterDataBranches for nodeIndex (%lu)", [(NSMutableArray *)self->_nodesWithAttributeInfo count]);
    }
  }

  if (v35)
  {
    v28 = sub_2393D9044(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v54 = v35;
      _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Store failed in _pruneEmptyStoredClusterDataBranches: failure count %lu", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Store failed in _pruneEmptyStoredClusterDataBranches: failure count %lu", v35);
    }
  }

  os_unfair_lock_unlock(&self->_nodeArrayLock);
}

- (void)_clearStoredClusterDataForNodeID:(id)d
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_storageDelegateQueue);
  v28 = [(MTRDeviceControllerDataStore *)self _fetchEndpointIndexForNodeID:dCopy];
  v29 = [v28 count];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v28;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v6)
  {
    v7 = 0;
    v32 = *v45;
    v33 = 0;
    do
    {
      v8 = 0;
      v34 = v6;
      do
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v44 + 1) + 8 * v8);
        v31 = [(MTRDeviceControllerDataStore *)self _fetchClusterIndexForNodeID:dCopy endpointID:?];
        v35 = [v31 count];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = v31;
        v9 = [v38 countByEnumeratingWithState:&v40 objects:v54 count:16];
        v36 = v8;
        v37 = v7;
        selfCopy = self;
        if (v9)
        {
          v11 = *v41;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v41 != v11)
              {
                objc_enumerationMutation(v38);
              }

              v13 = *(*(&v40 + 1) + 8 * i);
              if ([(MTRDeviceControllerDataStore *)selfCopy _deleteClusterDataForNodeID:dCopy endpointID:v39 clusterID:v13])
              {
                ++v5;
              }

              else
              {
                v14 = sub_2393D9044(0);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = dCopy;
                  v16 = v5;
                  v17 = v15;
                  unsignedLongLongValue = [v15 unsignedLongLongValue];
                  unsignedShortValue = [v39 unsignedShortValue];
                  unsignedLongValue = [v13 unsignedLongValue];
                  *buf = 134218496;
                  v49 = unsignedLongLongValue;
                  v50 = 1024;
                  *v51 = unsignedShortValue;
                  *&v51[4] = 2048;
                  *&v51[6] = unsignedLongValue;
                  _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Delete failed for clusterData @ node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
                  v5 = v16;
                  dCopy = v17;
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "Delete failed for clusterData @ node 0x%016llX endpoint %u cluster 0x%08lX", [dCopy unsignedLongLongValue], objc_msgSend(v39, "unsignedShortValue"), objc_msgSend(v13, "unsignedLongValue"));
                }
              }
            }

            v9 = [v38 countByEnumeratingWithState:&v40 objects:v54 count:16];
          }

          while (v9);
        }

        self = selfCopy;
        if ([(MTRDeviceControllerDataStore *)selfCopy _deleteClusterIndexForNodeID:dCopy endpointID:v39])
        {
          ++v33;
        }

        else
        {
          v21 = sub_2393D9044(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
            unsignedShortValue2 = [v39 unsignedShortValue];
            *buf = 134218240;
            v49 = unsignedLongLongValue2;
            v50 = 1024;
            *v51 = unsignedShortValue2;
            _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Delete failed for clusterIndex @ node 0x%016llX endpoint %u", buf, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "Delete failed for clusterIndex @ node 0x%016llX endpoint %u", [dCopy unsignedLongLongValue], objc_msgSend(v39, "unsignedShortValue"));
          }
        }

        v7 = v35 + v37;
        v8 = v36 + 1;
      }

      while (v36 + 1 != v34);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v6);
  }

  else
  {
    v33 = 0;
    v7 = 0;
  }

  v24 = [(MTRDeviceControllerDataStore *)self _deleteEndpointIndexForNodeID:dCopy];
  v25 = sub_2393D9044(0);
  v26 = v25;
  if (!v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
      *buf = 134217984;
      v49 = unsignedLongLongValue3;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Delete failed for endpointIndex @ node 0x%016llX", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Delete failed for endpointIndex @ node 0x%016llX", [dCopy unsignedLongLongValue]);
    }
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v49 = v33;
    v50 = 2048;
    *v51 = v29;
    *&v51[8] = 2048;
    *&v51[10] = v5;
    v52 = 2048;
    v53 = v7;
    _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "clearStoredClusterDataForNodeID: deleted endpoints %lu/%lu clusters %lu/%lu", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "clearStoredClusterDataForNodeID: deleted endpoints %lu/%lu clusters %lu/%lu", v33, v29, v5, v7);
  }
}

- (void)clearStoredClusterDataForNodeID:(id)d
{
  dCopy = d;
  storageDelegateQueue = self->_storageDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23920EC4C;
  v7[3] = &unk_278A72298;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(storageDelegateQueue, v7);
}

- (void)clearStoredClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  storageDelegateQueue = self->_storageDelegateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23920EEAC;
  v15[3] = &unk_278A73AC8;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = clusterIDCopy;
  v12 = clusterIDCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(storageDelegateQueue, v15);
}

- (void)clearStoredClusterDataForNodeID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23920F2AC;
  block[3] = &unk_278A71650;
  block[4] = self;
  v12 = iDCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = iDCopy;
  dispatch_async(storageDelegateQueue, block);
}

- (void)removeAttributes:(id)attributes fromCluster:(id)cluster forNodeID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  clusterCopy = cluster;
  dCopy = d;
  endpoint = [clusterCopy endpoint];
  cluster = [clusterCopy cluster];
  v13 = [(MTRDeviceControllerDataStore *)self getStoredClusterDataForNodeID:dCopy endpointID:endpoint clusterID:cluster];

  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = attributesCopy;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [v13 removeValueForAttribute:*(*(&v24 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23920F948;
    block[3] = &unk_278A723D0;
    block[4] = self;
    v20 = v13;
    v21 = dCopy;
    v22 = clusterCopy;
    v23 = v14;
    dispatch_async(storageDelegateQueue, block);
  }
}

- (void)clearAllStoredClusterData
{
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23920FCBC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(storageDelegateQueue, block);
}

- (id)getStoredClusterDataForNodeID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    *&v18 = 0;
    *(&v18 + 1) = &v18;
    v19 = 0x3032000000;
    v20 = sub_23920B1E0;
    v21 = sub_23920B1F0;
    v22 = 0;
    v5 = [MEMORY[0x277CBEAA8] now];
    storageDelegateQueue = self->_storageDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239210140;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v14 = dCopy;
    v15 = &v18;
    dispatch_sync(storageDelegateQueue, block);
    [v5 timeIntervalSinceNow];
    if (v7 < -2.0)
    {
      v8 = -v7;
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = v8;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", v8);
      }
    }

    v10 = *(*(&v18 + 1) + 40);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18) = 136315138;
      *(&v18 + 4) = "[MTRDeviceControllerDataStore getStoredClusterDataForNodeID:]";
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", &v18, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input", "[MTRDeviceControllerDataStore getStoredClusterDataForNodeID:]");
    }

    v10 = 0;
  }

  return v10;
}

- (id)getStoredClusterDataForNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_23920B1E0;
  v30 = sub_23920B1F0;
  v31 = 0;
  v11 = [MEMORY[0x277CBEAA8] now];
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239210928;
  block[3] = &unk_278A73B68;
  v25 = &v26;
  block[4] = self;
  v13 = dCopy;
  v22 = v13;
  v14 = iDCopy;
  v23 = v14;
  v15 = clusterIDCopy;
  v24 = v15;
  dispatch_sync(storageDelegateQueue, block);
  [v11 timeIntervalSinceNow];
  if (v16 < -2.0)
  {
    v17 = -v16;
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v33 = v17;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRDeviceControllerDataStore getStoredClusterDataForNodeID took %0.6lf seconds to read from storage", v17);
    }
  }

  v19 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v19;
}

- (id)_getClusterDataFromSecureLocalValues:(id)values
{
  v49 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [valuesCopy objectForKeyedSubscript:@"attrCacheNodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v22;
      v24 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v24)
      {
        v20 = 0;
        v23 = *v43;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v3 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = [(MTRDeviceControllerDataStore *)self _endpointIndexKeyForNodeID:v3];
              v25 = [valuesCopy objectForKeyedSubscript:v4];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v27 = v25;
                v5 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
                if (v5)
                {
                  dictionary = 0;
                  v28 = *v39;
                  v29 = v5;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v39 != v28)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v7 = *(*(&v38 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v8 = [(MTRDeviceControllerDataStore *)self _clusterIndexKeyForNodeID:v3 endpointID:v7];
                        v30 = [valuesCopy objectForKeyedSubscript:v8];

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v36 = 0u;
                          v37 = 0u;
                          v34 = 0u;
                          v35 = 0u;
                          v9 = v30;
                          v10 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
                          if (v10)
                          {
                            v11 = *v35;
                            do
                            {
                              for (k = 0; k != v10; ++k)
                              {
                                if (*v35 != v11)
                                {
                                  objc_enumerationMutation(v9);
                                }

                                v13 = *(*(&v34 + 1) + 8 * k);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v14 = [(MTRDeviceControllerDataStore *)self _clusterDataKeyForNodeID:v3 endpointID:v7 clusterID:v13];
                                  v15 = [valuesCopy objectForKeyedSubscript:v14];

                                  if (v15)
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v16 = [MTRClusterPath clusterPathWithEndpointID:v7 clusterID:v13];
                                      if (!dictionary)
                                      {
                                        dictionary = [MEMORY[0x277CBEB38] dictionary];
                                      }

                                      [dictionary setObject:v15 forKeyedSubscript:{v16, v20}];
                                    }
                                  }
                                }
                              }

                              v10 = [v9 countByEnumeratingWithState:&v34 objects:v46 count:16];
                            }

                            while (v10);
                          }
                        }
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
                  }

                  while (v29);
                }

                else
                {
                  dictionary = 0;
                }

                if ([dictionary count])
                {
                  dictionary2 = v20;
                  if (!v20)
                  {
                    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  }

                  [dictionary2 setObject:dictionary forKeyedSubscript:{v3, dictionary2}];
                }
              }

              else
              {
                dictionary = 0;
              }
            }
          }

          v24 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v24);
      }

      else
      {
        v20 = 0;
      }

      v18 = v20;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)storeClusterData:(id)data forNodeID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  if (dCopy)
  {
    if ([dataCopy count])
    {
      storageDelegateQueue = self->_storageDelegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239211164;
      block[3] = &unk_278A71650;
      block[4] = self;
      v12 = dataCopy;
      v13 = dCopy;
      dispatch_async(storageDelegateQueue, block);
    }

    else
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[MTRDeviceControllerDataStore storeClusterData:forNodeID:]";
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: nothing to store", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%s: nothing to store");
      }
    }
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[MTRDeviceControllerDataStore storeClusterData:forNodeID:]";
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%s: unexpected nil input", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%s: unexpected nil input");
    }
  }
}

- (id)_deviceDataKeyForNodeID:(id)d
{
  dCopy = d;
  v4 = [@"deviceData" stringByAppendingFormat:@":0x%016llX", objc_msgSend(dCopy, "unsignedLongLongValue")];

  return v4;
}

- (id)getStoredDeviceDataForNodeID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_23920B1E0;
  v20 = sub_23920B1F0;
  v21 = 0;
  v5 = [MEMORY[0x277CBEAA8] now];
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392121CC;
  block[3] = &unk_278A73B40;
  block[4] = self;
  v7 = dCopy;
  v14 = v7;
  v15 = &v16;
  dispatch_sync(storageDelegateQueue, block);
  [v5 timeIntervalSinceNow];
  if (v8 < -2.0)
  {
    v9 = -v8;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDeviceControllerDataStore getStoredDeviceDataForNodeID took %0.6lf seconds to read from storage", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRDeviceControllerDataStore getStoredDeviceDataForNodeID took %0.6lf seconds to read from storage", v9);
    }
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)storeDeviceData:(id)data forNodeID:(id)d
{
  dataCopy = data;
  dCopy = d;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239212494;
  block[3] = &unk_278A71650;
  block[4] = self;
  v12 = dataCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = dataCopy;
  dispatch_async(storageDelegateQueue, block);
}

- (void)clearDeviceDataForNodeID:(id)d
{
  dCopy = d;
  storageDelegateQueue = self->_storageDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2392125DC;
  v7[3] = &unk_278A72298;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(storageDelegateQueue, v7);
}

- (void)synchronouslyPerformBlock:(id)block
{
  blockCopy = block;
  storageDelegateQueue = self->_storageDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239212714;
  block[3] = &unk_278A72B88;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(storageDelegateQueue, block);
}

- (NSArray)nodesWithStoredData
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_nodeArrayLock);
  [v3 addObjectsFromArray:self->_nodesWithResumptionInfo];
  [v3 addObjectsFromArray:self->_nodesWithAttributeInfo];
  allObjects = [v3 allObjects];
  os_unfair_lock_unlock(&self->_nodeArrayLock);

  return allObjects;
}

@end