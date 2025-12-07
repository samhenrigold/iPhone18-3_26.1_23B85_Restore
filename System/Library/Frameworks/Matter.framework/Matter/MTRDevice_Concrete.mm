@interface MTRDevice_Concrete
+ (id)deviceWithNodeID:(unint64_t)d deviceController:(id)controller;
- (BOOL)_attributeAffectsDeviceConfiguration:(id)configuration;
- (BOOL)_attributePathAffectsDescriptionData:(id)data;
- (BOOL)_deviceHasActiveSubscription;
- (BOOL)_deviceIsReportingExcessively;
- (BOOL)_deviceUsesThread;
- (BOOL)_doPersistClusterData;
- (BOOL)_haveClusterDataToPersist;
- (BOOL)_interestedPaths:(id)paths includesAttributePath:(id)path;
- (BOOL)_interestedPaths:(id)paths includesEventPath:(id)path;
- (BOOL)_invokeResponse:(id)response matchesRequiredResponse:(id)requiredResponse;
- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)reason;
- (BOOL)_subscriptionAbleToReport;
- (BOOL)_subscriptionsAllowed;
- (BOOL)deviceCachePrimed;
- (BOOL)deviceUsesThread;
- (BOOL)shouldDetectTimeSynchronizationLoss;
- (MTRDevice_Concrete)initWithNodeID:(id)d controller:(id)controller;
- (id).cxx_construct;
- (id)_attributeListForEndpointID:(id)d clusterID:(id)iD;
- (id)_attributeValueDictionaryForAttributePath:(id)path;
- (id)_cachedAttributeValueForPath:(id)path;
- (id)_cachedListOfNumbersValueForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID;
- (id)_clusterDataForPath:(id)path;
- (id)_clusterDataToPersistSnapshot;
- (id)_dataValueWithoutDataVersion:(id)version;
- (id)_endpointList;
- (id)_endpointsWithTimeSyncClusterServer;
- (id)_filteredAttributes:(id)attributes forInterestedPaths:(id)paths;
- (id)_filteredEvents:(id)events forInterestedPaths:(id)paths;
- (id)_getAttributesToReportWithNewExpectedValues:(id)values expirationTime:(id)time expectedValueID:(unint64_t *)d;
- (id)_getAttributesToReportWithReportedValues:(id)values fromSubscription:(BOOL)subscription;
- (id)_getCachedDataVersions;
- (id)_informationalNumberAtAttributePath:(id)path;
- (id)_informationalProductID;
- (id)_informationalVendorID;
- (id)_internalProperties;
- (id)_knownClusters;
- (id)_lockedAttributeValueDictionaryForAttributePath:(id)path;
- (id)_networkFeatures;
- (id)_serverListForEndpointID:(id)d;
- (id)arrayOfNumbersFromAttributeValue:(id)value;
- (id)description;
- (id)getAllAttributesReport;
- (id)newBaseDevice;
- (id)productID;
- (id)readAttributePaths:(id)paths;
- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params;
- (id)vendorID;
- (optional<chip::Inet::IPAddress>)lastSubscriptionIPAddress;
- (unsigned)networkCommissioningFeatures;
- (void)_addInformationalAttributesToCurrentMetricScope;
- (void)_callDelegateDeviceCachePrimed;
- (void)_cancelTimeUpdateTimer;
- (void)_changeInternalState:(unint64_t)state;
- (void)_changeState:(unint64_t)state;
- (void)_checkExpiredExpectedValues;
- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)delegate;
- (void)_commitPendingDataVersions;
- (void)_commitPendingDataVersionsForClusterPath:(id)path;
- (void)_createDataVersionFilterListFromDictionary:(id)dictionary dataVersionFilterList:(DataVersionFilter *)list count:(unint64_t *)count;
- (void)_delegateAdded:(id)added;
- (void)_deviceMayBeReachable;
- (void)_doHandleSubscriptionError:(id)error;
- (void)_doHandleSubscriptionReset:(id)reset;
- (void)_doSetPersistedClusterData:(id)data;
- (void)_ensureSubscriptionForExistingDelegates:(id)delegates;
- (void)_handleAttributeReport:(id)report fromSubscription:(BOOL)subscription;
- (void)_handleCASESessionEstablished:(const void *)established;
- (void)_handleEventReport:(id)report;
- (void)_handleReportBegin;
- (void)_handleReportEnd;
- (void)_handleResubscriptionNeededWithDelay:(id)delay;
- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)queue;
- (void)_handleSubscriptionError:(id)error;
- (void)_handleSubscriptionEstablished;
- (void)_handleSubscriptionReset:(id)reset;
- (void)_handleUnsolicitedMessageFromPublisher;
- (void)_injectAttributeReport:(id)report fromSubscription:(BOOL)subscription;
- (void)_injectEventReport:(id)report;
- (void)_injectPossiblyInvalidEventReport:(id)report;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2;
- (void)_markDeviceAsUnreachableIfNeverSubscribed;
- (void)_noteDataVersion:(id)version forClusterPath:(id)path;
- (void)_notifyDelegateOfPrivateInternalPropertiesChanges;
- (void)_performScheduledExpirationCheck;
- (void)_performScheduledTimeUpdate;
- (void)_persistClusterDataAsNeeded;
- (void)_pruneAttributesIn:(id)in missingFrom:(id)from forCluster:(id)cluster;
- (void)_pruneClustersIn:(id)in missingFrom:(id)from forEndpoint:(id)endpoint;
- (void)_pruneEndpointsIn:(id)in missingFrom:(id)from;
- (void)_pruneStoredDataForPath:(id)path missingFrom:(id)from;
- (void)_readThroughSkipped;
- (void)_reconcilePersistedClustersWithStorage;
- (void)_removeAttributes:(id)attributes fromCluster:(id)cluster;
- (void)_removeCachedAttribute:(id)attribute fromCluster:(id)cluster;
- (void)_removeClusters:(id)clusters doRemoveFromDataStore:(BOOL)store;
- (void)_removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d;
- (void)_reportAttributes:(id)attributes;
- (void)_resetStorageBehaviorState;
- (void)_resetSubscription;
- (void)_resetSubscriptionWithReasonString:(id)string;
- (void)_scheduleClusterDataPersistence;
- (void)_scheduleNextUpdate:(unint64_t)update;
- (void)_scheduleSubscriptionPoolWork:(id)work inNanoseconds:(int64_t)nanoseconds description:(id)description;
- (void)_setCachedAttributeValue:(id)value forPath:(id)path fromSubscription:(BOOL)subscription;
- (void)_setDSTOffsets:(id)offsets forEndpoint:(id)endpoint;
- (void)_setExpectedValue:(id)value attributePath:(id)path expirationTime:(id)time shouldReportValue:(BOOL *)reportValue attributeValueToReport:(id *)report expectedValueID:(unint64_t)d previousValue:(id *)previousValue;
- (void)_setLastInitialSubscribeLatency:(id)latency;
- (void)_setLastSubscriptionAttemptWait:(unsigned int)wait;
- (void)_setTimeOnDevice;
- (void)_setUTCTime:(unint64_t)time withGranularity:(unsigned __int8)granularity forEndpoint:(id)endpoint;
- (void)_setupSubscriptionWithReason:(id)reason;
- (void)_stopConnectivityMonitoring;
- (void)_storePersistedDeviceData;
- (void)_triggerResubscribeWithReason:(id)reason nodeLikelyReachable:(BOOL)reachable;
- (void)_updateAttributeDependentDescriptionData;
- (void)_updateDeviceTimeAndScheduleNextUpdate;
- (void)controllerResumed;
- (void)controllerSuspended;
- (void)dealloc;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invalidate;
- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)nodeMayBeAdvertisingOperational;
- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d;
- (void)removeExpectedValuesForAttributePaths:(id)paths expectedValueID:(unint64_t)d;
- (void)setExpectedValues:(id)values expectedValueInterval:(id)interval expectedValueID:(unint64_t *)d;
- (void)setPersistedClusterData:(id)data;
- (void)setPersistedDeviceData:(id)data;
- (void)setStorageBehaviorConfiguration:(id)configuration;
- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout;
@end

@implementation MTRDevice_Concrete

- (MTRDevice_Concrete)initWithNodeID:(id)d controller:(id)controller
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = MTRDevice_Concrete;
  v8 = [(MTRDevice *)&v34 initForSubclassesWithNodeID:dCopy controller:controllerCopy];
  v9 = v8;
  if (v8)
  {
    v8->_timeSyncLock._os_unfair_lock_opaque = 0;
    v8->_descriptionLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("org.csa-iot.matter.framework.device.workqueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    expectedValueCache = v9->_expectedValueCache;
    v9->_expectedValueCache = dictionary;

    v15 = [[MTRAsyncWorkQueue alloc] initWithContext:v9];
    asyncWorkQueue = v9->_asyncWorkQueue;
    v9->_asyncWorkQueue = v15;

    v9->_state = 0;
    v9->_internalDeviceState = 0;
    v9->_internalDeviceStateForDescription = 0;
    v9->_doingCASEAttemptForDeviceMayBeReachable = 0;
    controllerDataStore = [controllerCopy controllerDataStore];
    LOBYTE(v10) = controllerDataStore == 0;

    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    }

    persistedClusterData = v9->_persistedClusterData;
    v9->_persistedClusterData = v18;

    clusterDataToPersist = v9->_clusterDataToPersist;
    v9->_clusterDataToPersist = 0;

    v21 = [MEMORY[0x277CBEB58] set];
    persistedClusters = v9->_persistedClusters;
    v9->_persistedClusters = v21;

    highestObservedEventNumber = v9->_highestObservedEventNumber;
    v9->_highestObservedEventNumber = 0;

    v9->_highestObservedEventNumberNeedsPersisting = 0;
    v24 = objc_alloc_init(MTRDeviceMatterCPPObjectsHolder);
    matterCPPObjectsHolder = v9->_matterCPPObjectsHolder;
    v9->_matterCPPObjectsHolder = v24;

    v9->_throttlingDeviceBecameActiveCallbacks = 0;
    if (v9->_persistedClusterData)
    {
      objc_initWeak(location, v9);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = sub_23938CAF8;
      v32[3] = &unk_278A75648;
      objc_copyWeak(&v33, location);
      v27 = [defaultCenter addObserverForName:*MEMORY[0x277CBE778] object:0 queue:0 usingBlock:v32];
      systemTimeChangeObserverToken = v9->_systemTimeChangeObserverToken;
      v9->_systemTimeChangeObserverToken = v27;

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    -[MTRDevice_Concrete setSuspended:](v9, "setSuspended:", [controllerCopy isSuspended]);
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      unsignedLongLongValue = [(NSNumber *)v9->super._nodeID unsignedLongLongValue];
      *location = 138412546;
      *&location[4] = v9;
      v36 = 2048;
      v37 = unsignedLongLongValue;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_INFO, "%@ init with hex nodeID 0x%016llX", location, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ init with hex nodeID 0x%016llX", v9, [(NSNumber *)v9->super._nodeID unsignedLongLongValue]);
    }
  }

  return v9;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDevice dealloc: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "MTRDevice dealloc: %p", self);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_systemTimeChangeObserverToken];

  [(MTRDelegateManager *)self->super._delegateManager removeAllDelegates];
  matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23938CE48;
  v9[3] = &unk_278A72320;
  v7 = matterCPPObjectsHolder;
  v10 = v7;
  [_concreteController asyncDispatchToMatterQueue:v9 errorHandler:0];

  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWorkWithProvidedDelegate:0];
  [(MTRDevice_Concrete *)self _doPersistClusterData];
  os_unfair_lock_unlock(&self->super._lock);

  v8.receiver = self;
  v8.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v8 dealloc];
}

- (id)description
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = self->_vid;
  v4 = self->_pid;
  v5 = self->_allNetworkFeatures;
  internalDeviceStateForDescription = self->_internalDeviceStateForDescription;
  lastSubscriptionAttemptWaitForDescription = self->_lastSubscriptionAttemptWaitForDescription;
  v8 = self->_mostRecentReportTimeForDescription;
  v9 = self->_lastSubscriptionFailureTimeForDescription;
  os_unfair_lock_unlock(&self->_descriptionLock);
  v10 = @"Unknown";
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = @"Unknown";
  }

  v37 = v11;
  if (v4)
  {
    v10 = v4;
  }

  v36 = v10;
  v12 = @"NO";
  v35 = v5;
  if (v5)
  {
    if (([(NSNumber *)v5 unsignedLongLongValue]& 1) != 0)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if (([(NSNumber *)v5 unsignedLongLongValue]& 2) != 0)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v12 = v15;
  }

  else
  {
    v14 = @"NO";
  }

  if (v8)
  {
    v16 = MEMORY[0x277CCACA8];
    [(NSDate *)v8 timeIntervalSinceNow];
    v18 = [v16 stringWithFormat:@" (%.0lfs ago)", -v17];
  }

  else
  {
    v18 = &stru_284BD0DD8;
  }

  v34 = v18;
  if (v9)
  {
    v19 = MEMORY[0x277CCACA8];
    [(NSDate *)v9 timeIntervalSinceNow];
    v38 = [v19 stringWithFormat:@" (%.0lfs ago)", -v20];
  }

  else
  {
    v38 = &stru_284BD0DD8;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  NSStringFromClass(v22);
  v33 = v31 = v21;
  compressedFabricID = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  unsignedLongLongValue3 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  if (internalDeviceStateForDescription > 4)
  {
    v24 = @"Unknown";
  }

  else
  {
    v24 = off_278A75B58[internalDeviceStateForDescription];
  }

  itemCount = [(MTRAsyncWorkQueue *)self->_asyncWorkQueue itemCount];
  uniqueIdentifier = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  v27 = [v31 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, state: %@, last subscription attempt wait: %lus, queued work: %lu, last report: %@%@, last subscription failure: %@%@, controller: %@>", v33, self, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue3, v37, v36, v14, v12, v24, lastSubscriptionAttemptWaitForDescription, itemCount, v8, v34, v9, v38, uniqueIdentifier];

  return v27;
}

- (id)_internalProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_descriptionLock);
  v4 = self->_vid;
  if (v4)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalStateKeyVendorID", v4);
  }

  v5 = self->_pid;
  if (v5)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalStateKeyProductID", v5);
  }

  v6 = self->_allNetworkFeatures;
  if (v6)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyNetworkFeatures", v6);
  }

  v7 = self->_mostRecentReportTimeForDescription;
  if (v7)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyMostRecentReportTime", v7);
  }

  os_unfair_lock_unlock(&self->_descriptionLock);
  os_unfair_lock_lock(&self->super._lock);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_internalDeviceState];
  if (v8)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceInternalState", v8);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastSubscriptionAttemptWait];
  if (v9)
  {
    CFDictionarySetValue(dictionary, @"kMTRDeviceInternalPropertyLastSubscriptionAttemptWait", v9);
  }

  v10 = self->_lastSubscriptionFailureTime;
  if (v10)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyLastSubscriptionFailureTime", v10);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  if (v11)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceState", v11);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceCachePrimed];
  if (v12)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDeviceCachePrimed", v12);
  }

  v13 = self->_estimatedStartTime;
  if (v13)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyEstimatedStartTime", v13);
  }

  v14 = self->_estimatedSubscriptionLatency;
  if (v14)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyEstimatedSubscriptionLatency", v14);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_diagnosticLogTransferInProgress];
  if (v15)
  {
    CFDictionarySetValue(dictionary, @"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress", v15);
  }

  os_unfair_lock_unlock(&self->super._lock);

  return dictionary;
}

- (id)vendorID
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = [(NSNumber *)self->_vid copy];
  os_unfair_lock_unlock(&self->_descriptionLock);

  return v3;
}

- (id)productID
{
  os_unfair_lock_lock(&self->_descriptionLock);
  v3 = [(NSNumber *)self->_pid copy];
  os_unfair_lock_unlock(&self->_descriptionLock);

  return v3;
}

- (unsigned)networkCommissioningFeatures
{
  os_unfair_lock_lock(&self->_descriptionLock);
  unsignedIntValue = [(NSNumber *)self->_allNetworkFeatures unsignedIntValue];
  os_unfair_lock_unlock(&self->_descriptionLock);
  return unsignedIntValue;
}

- (void)_notifyDelegateOfPrivateInternalPropertiesChanges
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23938D790;
  v3[3] = &unk_278A744C8;
  v3[4] = self;
  [(MTRDevice *)self _callDelegatesWithBlock:v3];
}

- (BOOL)shouldDetectTimeSynchronizationLoss
{
  os_unfair_lock_assert_owner(&self->super._lock);
  timeSynchronizationLossDetectedTime = self->_timeSynchronizationLossDetectedTime;
  if (!timeSynchronizationLossDetectedTime)
  {
    return 1;
  }

  [(NSDate *)timeSynchronizationLossDetectedTime timeIntervalSinceNow];
  return v4 <= -3600.0;
}

- (void)_setTimeOnDevice
{
  v37 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  date = [MEMORY[0x277CBEAA8] date];
  v22 = date;
  if (date)
  {
    v29 = 0;
    if (sub_239221564(date, &v29))
    {
      [(MTRDevice_Concrete *)self _endpointsWithTimeSyncClusterServer];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      obj = v26 = 0u;
      v4 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v4)
      {
        v24 = *v26;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v26 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v25 + 1) + 8 * i);
            v7 = sub_2393D9044(0);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              selfCopy7 = self;
              v35 = 2112;
              v36 = v6;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "%@ Setting Time on Endpoint %@", buf, 0x16u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(0, 3, "%@ Setting Time on Endpoint %@", self, v6);
            }

            [(MTRDevice_Concrete *)self _setUTCTime:v29 withGranularity:4 forEndpoint:v6];
            v8 = [MTRAttributePath attributePathWithEndpointID:v6 clusterID:&unk_284C43A18 attributeID:&unk_284C43A30];
            endpoint = [v8 endpoint];
            cluster = [v8 cluster];
            attribute = [v8 attribute];
            v12 = [(MTRDevice_Concrete *)self readAttributeWithEndpointID:endpoint clusterID:cluster attributeID:attribute params:0];

            if (v12)
            {
              v13 = [MTRAttributeReport alloc];
              v30[0] = @"attributePath";
              v30[1] = @"data";
              v31[0] = v8;
              v31[1] = v12;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
              v15 = [(MTRAttributeReport *)v13 initWithResponseValue:v14 error:0];

              if (v15)
              {
                value = [(MTRAttributeReport *)v15 value];
                unsignedCharValue = [value unsignedCharValue];
                if (!unsignedCharValue)
                {
                  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy7 = self;
                    v35 = 2112;
                    v36 = v6;
                    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is 0, which is not allowed. Defaulting to 1.", buf, 0x16u);
                  }

                  unsignedCharValue = 1;
                  if (sub_2393D5398(1u))
                  {
                    sub_2393D5320(0, 1, "%@ DSTOffsetListMaxSize value on endpoint %@ is 0, which is not allowed. Defaulting to 1.", self, v6);
                  }
                }

                v18 = unsignedCharValue;
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy7 = self;
                  v35 = 2112;
                  v36 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ DSTOffsetListMaxSize value on endpoint %@ is invalid. Defaulting to 1.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "%@ DSTOffsetListMaxSize value on endpoint %@ is invalid. Defaulting to 1.", self, v6);
                }

                v18 = 1;
              }

              v19 = sub_2393AFFBC(v18);
              if (v19)
              {
                [(MTRDevice_Concrete *)self _setDSTOffsets:v19 forEndpoint:v6];
              }

              else
              {
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy7 = self;
                  v35 = 2112;
                  v36 = v6;
                  _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ Could not retrieve DST offset information. Unable to setDSTOffset on endpoint %@.", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "%@ Could not retrieve DST offset information. Unable to setDSTOffset on endpoint %@.", self, v6);
                }
              }
            }

            else
            {
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy7 = self;
                v35 = 2112;
                v36 = v6;
                _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Unable to SetDSTOffset on endpoint %@, since it does not support the TZ feature", buf, 0x16u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(0, 2, "%@ Unable to SetDSTOffset on endpoint %@, since it does not support the TZ feature", self, v6);
              }
            }
          }

          v4 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v4);
      }
    }

    else
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy7 = self;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Could not convert NSDate (%@) to Matter Epoch Time. Unable to setUTCTime on endpoints.", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ Could not convert NSDate (%@) to Matter Epoch Time. Unable to setUTCTime on endpoints.", self, v22);
      }
    }
  }

  else
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy7 = self;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%@ Could not retrieve current date. Unable to setUTCTime on endpoints.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Could not retrieve current date. Unable to setUTCTime on endpoints.", self);
    }
  }
}

- (void)_scheduleNextUpdate:(unint64_t)update
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  queue = [(MTRDevice_Concrete *)self queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  self->_lastTimeUpdateScheduledDelayInSeconds = update;
  v7 = dispatch_time(0, 1000000000 * update);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_23938E1E0;
  handler[3] = &unk_278A73D80;
  v8 = v6;
  v11 = v8;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v8, handler);
  [(MTRDevice_Concrete *)self setTimeUpdateTimer:v8];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2048;
    updateCopy = update;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "%@ Timer Scheduled for next Device Time Update, in %llu seconds", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "%@ Timer Scheduled for next Device Time Update, in %llu seconds", self, update);
  }

  dispatch_resume(v8);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)_updateDeviceTimeAndScheduleNextUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_timeSyncLock);
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (timeUpdateTimer)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%@ Device Time Update already scheduled", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ Device Time Update already scheduled", self);
    }
  }

  else
  {
    [(MTRDevice_Concrete *)self _setTimeOnDevice];

    [(MTRDevice_Concrete *)self _scheduleNextUpdate:86400];
  }
}

- (void)_performScheduledTimeUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->super._lock);
  os_unfair_lock_lock(&self->_timeSyncLock);
  if (state == 1)
  {
    timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (timeUpdateTimer)
    {
      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _updateDeviceTimeAndScheduleNextUpdate];
    }

    else
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "%@ Device Time Update is no longer scheduled, MTRDevice may have been invalidated.", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0, 3, "%@ Device Time Update is no longer scheduled, MTRDevice may have been invalidated.", self);
      }
    }
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "%@ Device is not reachable, canceling Device Time Updates.", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ Device is not reachable, canceling Device Time Updates.", self);
    }
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
}

- (void)_cancelTimeUpdateTimer
{
  os_unfair_lock_lock(&self->_timeSyncLock);
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

  if (timeUpdateTimer)
  {
    timeUpdateTimer2 = [(MTRDevice_Concrete *)self timeUpdateTimer];
    dispatch_source_cancel(timeUpdateTimer2);

    [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
}

- (id)_endpointsWithTimeSyncClusterServer
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  _endpointList = [(MTRDevice_Concrete *)self _endpointList];
  os_unfair_lock_unlock(&self->super._lock);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = _endpointList;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [(MTRDevice_Concrete *)self readAttributeWithEndpointID:v7 clusterID:&unk_284C43A48 attributeID:&unk_284C43A60 params:0];
        v9 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v8];
        v10 = v9;
        if (v9 && [v9 containsObject:&unk_284C43A18])
        {
          [v13 addObject:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "%@ Device has following endpoints with Time Sync Cluster Server: %@", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "%@ Device has following endpoints with Time Sync Cluster Server: %@", self, v13);
  }

  return v13;
}

- (void)_setUTCTime:(unint64_t)time withGranularity:(unsigned __int8)granularity forEndpoint:(id)endpoint
{
  granularityCopy = granularity;
  v31 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v27 = 2048;
    timeCopy = time;
    v29 = 2112;
    v30 = endpointCopy;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, " %@ _setUTCTime with matterEpochTime: %llu, endpoint %@", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, " %@ _setUTCTime with matterEpochTime: %llu, endpoint %@", self, time, endpointCopy);
  }

  v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetUTCTimeParams);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
  [(MTRTimeSynchronizationClusterSetUTCTimeParams *)v10 setUtcTime:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:granularityCopy];
  [(MTRTimeSynchronizationClusterSetUTCTimeParams *)v10 setGranularity:v12];

  objc_initWeak(buf, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_23938EC94;
  v21 = &unk_278A75670;
  objc_copyWeak(&v24, buf);
  v13 = endpointCopy;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](&v18);
  serverSideProcessingTimeout = [(MTRTimeSynchronizationClusterSetUTCTimeParams *)v14 serverSideProcessingTimeout];
  queue = [(MTRDevice_Concrete *)self queue];
  [(MTRDevice *)self _invokeKnownCommandWithEndpointID:v13 clusterID:&unk_284C43A18 commandID:&unk_284C43A78 commandPayload:v14 expectedValues:0 expectedValueInterval:0 timedInvokeTimeout:0 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:queue completion:v15, v18, v19, v20, v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)_setDSTOffsets:(id)offsets forEndpoint:(id)endpoint
{
  v28 = *MEMORY[0x277D85DE8];
  offsetsCopy = offsets;
  endpointCopy = endpoint;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2112;
    v25 = offsetsCopy;
    v26 = 2112;
    v27 = endpointCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "%@ _setDSTOffsets with offsets: %@, endpoint %@", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "%@ _setDSTOffsets with offsets: %@, endpoint %@", self, offsetsCopy, endpointCopy);
  }

  v9 = objc_alloc_init(MTRTimeSynchronizationClusterSetDSTOffsetParams);
  [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v9 setDstOffset:offsetsCopy];
  objc_initWeak(buf, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23938F068;
  v18 = &unk_278A75670;
  objc_copyWeak(&v21, buf);
  v10 = endpointCopy;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  v12 = MEMORY[0x23EE78590](&v15);
  serverSideProcessingTimeout = [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v11 serverSideProcessingTimeout];
  queue = [(MTRDevice_Concrete *)self queue];
  [(MTRDevice *)self _invokeKnownCommandWithEndpointID:v10 clusterID:&unk_284C43A18 commandID:&unk_284C43A90 commandPayload:v11 expectedValues:0 expectedValueInterval:0 timedInvokeTimeout:0 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:queue completion:v12, v15, v16, v17, v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (id)arrayOfNumbersFromAttributeValue:(id)value
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v3 = [valueCopy objectForKeyedSubscript:@"type"];
  v4 = [@"Array" isEqual:v3];

  if (v4)
  {
    v5 = [valueCopy objectForKeyedSubscript:@"value"];
    v20 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = *v25;
        v19 = v6;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_19;
            }

            v11 = v10;
            v12 = [v11 objectForKeyedSubscript:{@"data", v19, v20}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v13 = v12;
            v14 = [v13 objectForKeyedSubscript:@"type"];
            v15 = [v13 objectForKeyedSubscript:@"value"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

LABEL_18:
LABEL_19:

              v17 = 0;
              v16 = v22;
              goto LABEL_20;
            }

            [v22 addObject:v15];
          }

          v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v16 = v22;
      v17 = v22;
LABEL_20:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_subscriptionsAllowed
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self suspended])
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (void)_delegateAdded:(id)added
{
  addedCopy = added;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5.receiver = self;
  v5.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v5 _delegateAdded:addedCopy];
  [(MTRDevice_Concrete *)self _ensureSubscriptionForExistingDelegates:@"delegate is set"];
}

- (void)_ensureSubscriptionForExistingDelegates:(id)delegates
{
  v19 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _subscriptionsAllowed])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ - starting subscription setup", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ - starting subscription setup", self);
    }

    if (!self->_initialSubscribeStart)
    {
      v6 = [MEMORY[0x277CBEAA8] now];
      initialSubscribeStart = self->_initialSubscribeStart;
      self->_initialSubscribeStart = v6;
    }

    objc_initWeak(&location, self);
    if ([(MTRDevice_Concrete *)self _deviceUsesThread])
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, " => %@ - device is a thread device, scheduling in pool", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, " => %@ - device is a thread device, scheduling in pool", self);
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTRDevice setDelegate first subscription / controller resume (%p)", self];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23938F980;
      v13[3] = &unk_278A75698;
      objc_copyWeak(&v15, &location);
      v14 = delegatesCopy;
      [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v13 inNanoseconds:0 description:v8];

      objc_destroyWeak(&v15);
    }

    else
    {
      deviceController = self->super._deviceController;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23938FE08;
      v10[3] = &unk_278A75698;
      objc_copyWeak(&v12, &location);
      v11 = delegatesCopy;
      [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v10 errorHandler:0];

      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ invalidate", self);
  }

  [(MTRAsyncWorkQueue *)self->_asyncWorkQueue invalidate];
  [(MTRDevice_Concrete *)self _cancelTimeUpdateTimer];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _persistClusterData];
  self->_state = 0;
  self->_reattemptingSubscription = 0;
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  objc_initWeak(buf, self);
  deviceController = self->super._deviceController;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23939012C;
  v6[3] = &unk_278A72CD0;
  objc_copyWeak(&v7, buf);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v6 errorHandler:0];
  [(MTRDevice_Concrete *)self _stopConnectivityMonitoring];
  os_unfair_lock_unlock(&self->super._lock);
  v5.receiver = self;
  v5.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v5 invalidate];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)nodeMayBeAdvertisingOperational
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1201);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ saw new operational advertisement", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ saw new operational advertisement", self);
  }

  [(MTRDevice_Concrete *)self _triggerResubscribeWithReason:@"operational advertisement seen" nodeLikelyReachable:1];
}

- (void)_triggerResubscribeWithReason:(id)reason nodeLikelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    selfCopy = self;
    v21 = 2112;
    if (reachableCopy)
    {
      v8 = @"YES";
    }

    v22 = reasonCopy;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ _triggerResubscribeWithReason called with reason %@, nodeLikelyReachable: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v9 = @"NO";
    if (reachableCopy)
    {
      v9 = @"YES";
    }

    sub_2393D5320(0, 2, "%@ _triggerResubscribeWithReason called with reason %@, nodeLikelyReachable: %@", self, reasonCopy, v9);
  }

  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1215);
  os_unfair_lock_lock(&self->super._lock);
  reattemptingSubscription = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (reattemptingSubscription)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    readClient = [matterCPPObjectsHolder readClient];

    matterCPPObjectsHolder2 = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
    subscriptionCallback = [matterCPPObjectsHolder2 subscriptionCallback];

    os_unfair_lock_unlock(&self->super._lock);
    if (readClient)
    {
      if (reachableCopy)
      {
        *(subscriptionCallback + 200) = 0;
      }

      v15 = reasonCopy;
      if ((sub_2394D8E90(readClient, [reasonCopy UTF8String]) & 1) == 0)
      {
        os_unfair_lock_lock(&self->super._lock);
        [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
LABEL_24:
        os_unfair_lock_unlock(&self->super._lock);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  if (self->_internalDeviceState == 1)
  {
    if ((![(MTRDevice_Concrete *)self doingCASEAttemptForDeviceMayBeReachable]|| reattemptingSubscription) && reachableCopy)
    {
LABEL_19:
      os_unfair_lock_lock(&self->super._lock);
      [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
      os_unfair_lock_unlock(&self->super._lock);
      objc_initWeak(buf, self);
      _concreteController = [(MTRDevice_Concrete *)self _concreteController];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_239390700;
      v17[3] = &unk_278A756E8;
      objc_copyWeak(&v18, buf);
      [_concreteController asyncGetCommissionerOnMatterQueue:v17 errorHandler:0];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      if (!reattemptingSubscription)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else if (reattemptingSubscription && reachableCopy)
  {
    goto LABEL_19;
  }

  if (reattemptingSubscription)
  {
LABEL_23:
    os_unfair_lock_lock(&self->super._lock);
    [(MTRDevice_Concrete *)self _reattemptSubscriptionNowIfNeededWithReason:reasonCopy];
    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)_subscriptionAbleToReport
{
  os_unfair_lock_lock(&self->super._lock);
  _subscriptionsAllowed = [(MTRDevice *)self _delegateExists]&& [(MTRDevice_Concrete *)self _subscriptionsAllowed];
  os_unfair_lock_unlock(&self->super._lock);
  return _subscriptionsAllowed;
}

- (void)_readThroughSkipped
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  if (self->_state != 1 && self->_lastSubscriptionFailureTime)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v3 timeIntervalSinceDate:self->_lastSubscriptionFailureTime];
    v5 = v4;

    if (v5 >= 600.0)
    {
      objc_initWeak(buf, self);
      deviceController = self->super._deviceController;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_239390B90;
      v9[3] = &unk_278A72CD0;
      objc_copyWeak(&v10, buf);
      [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v9 errorHandler:0];
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
        *buf = 138412546;
        selfCopy = self;
        v13 = 2112;
        v14 = lastSubscriptionFailureTime;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "%@ skipping resubscribe from skipped read-through: not enough time has passed since %@", buf, 0x16u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0, 3, "%@ skipping resubscribe from skipped read-through: not enough time has passed since %@", self, self->_lastSubscriptionFailureTime);
      }
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_callDelegateDeviceCachePrimed
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_239390CEC;
  v3[3] = &unk_278A744C8;
  v3[4] = self;
  [(MTRDevice *)self _callDelegatesWithBlock:v3];
  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)_changeState:(unint64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1379);
  os_unfair_lock_assert_owner(&self->super._lock);
  state = self->_state;
  self->_state = state;
  if (state == state)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v14 = 2048;
      stateCopy4 = state;
      v16 = 2048;
      stateCopy5 = state;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Not reporting reachability state change, since no change in state %lu => %lu", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Not reporting reachability state change, since no change in state %lu => %lu", self, state, state);
    }
  }

  else
  {
    v7 = sub_2393D9044(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (state == 1)
    {
      if (v8)
      {
        *buf = 138412802;
        selfCopy3 = self;
        v14 = 2048;
        stateCopy4 = state;
        v16 = 2048;
        stateCopy5 = 1;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ reachability state change %lu => %lu", self, state, 1);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 138412802;
        selfCopy3 = self;
        v14 = 2048;
        stateCopy4 = state;
        v16 = 2048;
        stateCopy5 = state;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ reachability state change %lu => %lu, set estimated start time to nil", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ reachability state change %lu => %lu, set estimated start time to nil", self, state, state);
      }

      estimatedStartTime = self->_estimatedStartTime;
      self->_estimatedStartTime = 0;

      estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
      self->_estimatedStartTimeFromGeneralDiagnosticsUpTime = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_239391028;
    v11[3] = &unk_278A744F0;
    v11[4] = self;
    v11[5] = state;
    [(MTRDevice *)self _callDelegatesWithBlock:v11];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }
}

- (void)_changeInternalState:(unint64_t)state
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1413);
  os_unfair_lock_assert_owner(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  self->_internalDeviceState = state;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_internalDeviceStateForDescription = self->_internalDeviceState;
  os_unfair_lock_unlock(&self->_descriptionLock);
  if (internalDeviceState != state)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v10 = 2048;
      v11 = internalDeviceState;
      v12 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ internal state change %lu => %lu", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ internal state change %lu => %lu", self, internalDeviceState, state);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2393911F0;
    v7[3] = &unk_278A75710;
    v7[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v7];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }
}

- (void)_handleSubscriptionEstablished
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  if (internalDeviceState == 2 || internalDeviceState == 4)
  {
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
    [(MTRDevice_Concrete *)self _stopConnectivityMonitoring];
    [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
    v16 = self->_initialSubscribeStart;
    initialSubscribeStart = self->_initialSubscribeStart;
    self->_initialSubscribeStart = 0;

    if (v16)
    {
      [(NSDate *)v16 timeIntervalSinceNow];
      v7 = -v6;
      estimatedSubscriptionLatency = self->_estimatedSubscriptionLatency;
      if (estimatedSubscriptionLatency)
      {
        [(NSNumber *)estimatedSubscriptionLatency doubleValue];
        [MEMORY[0x277CCABB0] numberWithDouble:v9 * 0.666666667 + v7 * 0.333333333];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithDouble:-v6];
      }
      v10 = ;
      v13 = self->_estimatedSubscriptionLatency;
      self->_estimatedSubscriptionLatency = v10;

      [(MTRDevice_Concrete *)self _storePersistedDeviceData];
    }

    timeUpdateShortDelayInSeconds = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
    os_unfair_lock_unlock(&self->super._lock);
    os_unfair_lock_lock(&self->_timeSyncLock);
    timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];

    if (!timeUpdateTimer)
    {
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:timeUpdateShortDelayInSeconds];
    }

    os_unfair_lock_unlock(&self->_timeSyncLock);
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 2048;
      v20 = internalDeviceState;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ _handleSubscriptionEstablished run with internal state %lu - skipping subscription establishment logic", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ _handleSubscriptionEstablished run with internal state %lu - skipping subscription establishment logic", self, self->_internalDeviceState);
    }

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)_handleSubscriptionError:(id)error
{
  errorCopy = error;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1498);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:errorCopy];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_doHandleSubscriptionError:(id)error
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1506);
  os_unfair_lock_assert_owner(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeInternalState:0];
  unreportedEvents = self->_unreportedEvents;
  self->_unreportedEvents = 0;

  [(MTRDevice_Concrete *)self _changeState:2];
}

- (BOOL)deviceUsesThread
{
  os_unfair_lock_lock(&self->super._lock);
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  os_unfair_lock_unlock(&self->super._lock);
  return _deviceUsesThread;
}

- (BOOL)_deviceUsesThread
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [MTRClusterPath clusterPathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43AC0];
  v4 = [(MTRDevice_Concrete *)self _clusterDataForPath:v3];
  attributes = [v4 attributes];
  v6 = [attributes objectForKeyedSubscript:&unk_284C43AD8];
  v7 = [v6 objectForKeyedSubscript:@"value"];

  if (!v7)
  {
LABEL_8:
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ Unexpected NetworkCommissioning FeatureMap value %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Unexpected NetworkCommissioning FeatureMap value %@", self, v7);
    }

    goto LABEL_8;
  }

  v8 = ([v7 unsignedLongValue] >> 1) & 1;
LABEL_9:

  return v8;
}

- (void)_clearSubscriptionPoolWorkWithProvidedDelegate:(id)delegate
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = MEMORY[0x23EE78590](self->_subscriptionPoolWorkCompletionBlock);
  if (v5)
  {
    subscriptionPoolWorkCompletionBlock = self->_subscriptionPoolWorkCompletionBlock;
    self->_subscriptionPoolWorkCompletionBlock = 0;

    v5[2](v5, 0);
  }
}

- (void)_scheduleSubscriptionPoolWork:(id)work inNanoseconds:(int64_t)nanoseconds description:(id)description
{
  v23 = *MEMORY[0x277D85DE8];
  workCopy = work;
  descriptionCopy = description;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (self->_subscriptionPoolWorkCompletionBlock)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = descriptionCopy;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ already scheduled in subscription pool for this device - ignoring: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ already scheduled in subscription pool for this device - ignoring: %@", self, descriptionCopy);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_239391B7C;
    v15[3] = &unk_278A75760;
    objc_copyWeak(&v18, buf);
    v16 = descriptionCopy;
    v17 = workCopy;
    v11 = MEMORY[0x23EE78590](v15);
    v12 = v11;
    if (nanoseconds < 1)
    {
      (*(v11 + 16))(v11);
    }

    else
    {
      v13 = dispatch_time(0, nanoseconds);
      queue = [(MTRDevice_Concrete *)self queue];
      dispatch_after(v13, queue, v12);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_handleResubscriptionNeededWithDelay:(id)delay
{
  delayCopy = delay;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1657);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:0];
  if (self->_internalDeviceState >= 2)
  {
    [(MTRDevice_Concrete *)self _changeInternalState:3];
  }

  objc_initWeak(&location, self);
  queue = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393921E0;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = delayCopy;
  v6 = delayCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_handleResubscriptionNeededWithDelayOnDeviceQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x277CBEAA8] now];
  lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
  self->_lastSubscriptionFailureTime = v5;

  os_unfair_lock_lock(&self->_descriptionLock);
  objc_storeStrong(&self->_lastSubscriptionFailureTimeForDescription, self->_lastSubscriptionFailureTime);
  os_unfair_lock_unlock(&self->_descriptionLock);
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  os_unfair_lock_unlock(&self->super._lock);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2393924D0;
  v13[3] = &unk_278A72CD0;
  objc_copyWeak(&v14, &location);
  v8 = MEMORY[0x23EE78590](v13);
  v9 = 1000000 * [queueCopy unsignedIntValue];
  if (_deviceUsesThread)
  {
    os_unfair_lock_lock(&self->super._lock);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ReadClient resubscription (%p)", self];
    [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v8 inNanoseconds:v9 description:v10];

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v11 = dispatch_time(0, v9);
    queue = [(MTRDevice_Concrete *)self queue];
    dispatch_after(v11, queue, v8);
  }

  [(MTRDevice_Concrete *)self _setupConnectivityMonitoring];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_handleSubscriptionReset:(id)reset
{
  resetCopy = reset;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1741);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _doHandleSubscriptionReset:resetCopy];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_setLastSubscriptionAttemptWait:(unsigned int)wait
{
  os_unfair_lock_assert_owner(&self->super._lock);
  self->_lastSubscriptionAttemptWait = wait;
  os_unfair_lock_lock(&self->_descriptionLock);
  self->_lastSubscriptionAttemptWaitForDescription = wait;
  os_unfair_lock_unlock(&self->_descriptionLock);

  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)_doHandleSubscriptionReset:(id)reset
{
  v23 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1762);
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self suspended])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ ignoring expected subscription reset on controller suspend", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ ignoring expected subscription reset on controller suspend", self);
    }

    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    lastSubscriptionFailureTime = self->_lastSubscriptionFailureTime;
    self->_lastSubscriptionFailureTime = v6;

    os_unfair_lock_lock(&self->_descriptionLock);
    objc_storeStrong(&self->_lastSubscriptionFailureTimeForDescription, self->_lastSubscriptionFailureTime);
    os_unfair_lock_unlock(&self->_descriptionLock);
    if ([(MTRDevice *)self _delegateExists])
    {
      if (![(MTRDevice_Concrete *)self reattemptingSubscription])
      {
        [(MTRDevice_Concrete *)self setReattemptingSubscription:1];
        lastSubscriptionAttemptWait = self->_lastSubscriptionAttemptWait;
        if (lastSubscriptionAttemptWait)
        {
          if (resetCopy)
          {
            [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:0];
            [resetCopy doubleValue];
            v10 = v9;
            v11 = sub_2393D9044(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy3 = self;
              v21 = 2048;
              v22 = v10;
              _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%@ resetting resubscribe attempt counter, and delaying by the server-provided delay: %f", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(0, 2, "%@ resetting resubscribe attempt counter, and delaying by the server-provided delay: %f", self, *&v10);
            }
          }

          else
          {
            if (2 * lastSubscriptionAttemptWait >= 0xE10)
            {
              v12 = 3600;
            }

            else
            {
              v12 = 2 * lastSubscriptionAttemptWait;
            }

            [(MTRDevice_Concrete *)self _setLastSubscriptionAttemptWait:v12];
            v10 = v12;
          }
        }

        else
        {
          self->_lastSubscriptionAttemptWait = 1;
          v10 = 1.0;
        }

        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy3 = self;
          v21 = 2048;
          v22 = v10;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ scheduling to reattempt subscription in %f seconds", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "%@ scheduling to reattempt subscription in %f seconds", self, *&v10);
        }

        [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
        objc_initWeak(buf, self);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_239392E60;
        v17[3] = &unk_278A72CD0;
        objc_copyWeak(&v18, buf);
        v14 = MEMORY[0x23EE78590](v17);
        if ([(MTRDevice_Concrete *)self _deviceUsesThread])
        {
          queue = [MEMORY[0x277CCACA8] stringWithFormat:@"MTRDevice resubscription (%p)", self];
          [(MTRDevice_Concrete *)self _scheduleSubscriptionPoolWork:v14 inNanoseconds:(v10 * 1000000000.0) description:queue];
        }

        else
        {
          v16 = dispatch_time(0, (v10 * 1000000000.0));
          queue = [(MTRDevice_Concrete *)self queue];
          dispatch_after(v16, queue, v14);
        }

        [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
    }
  }
}

- (BOOL)_reattemptSubscriptionNowIfNeededWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1863);
  os_unfair_lock_assert_owner(&self->super._lock);
  reattemptingSubscription = [(MTRDevice_Concrete *)self reattemptingSubscription];
  if (reattemptingSubscription)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = reasonCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ reattempting subscription with reason %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ reattempting subscription with reason %@", self, reasonCopy);
    }

    [(MTRDevice_Concrete *)self _setupSubscriptionWithReason:reasonCopy];
  }

  else
  {
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
  }

  return reattemptingSubscription;
}

- (void)_handleUnsolicitedMessageFromPublisher
{
  v16 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1879);
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _changeState:1];
  lastDeviceBecameActiveCallbackTime = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];

  if (lastDeviceBecameActiveCallbackTime && (-[MTRDevice_Concrete lastDeviceBecameActiveCallbackTime](self, "lastDeviceBecameActiveCallbackTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 >= -60.0))
  {
    if (![(MTRDevice_Concrete *)self throttlingDeviceBecameActiveCallbacks])
    {
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        lastDeviceBecameActiveCallbackTime2 = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];
        *buf = 138412546;
        selfCopy = self;
        v14 = 2112;
        v15 = lastDeviceBecameActiveCallbackTime2;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ throttling deviceBecameActive callbacks because report came in too soon after %@", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        lastDeviceBecameActiveCallbackTime3 = [(MTRDevice_Concrete *)self lastDeviceBecameActiveCallbackTime];
        sub_2393D5320(0, 2, "%@ throttling deviceBecameActive callbacks because report came in too soon after %@", self, lastDeviceBecameActiveCallbackTime3);
      }

      [(MTRDevice_Concrete *)self setThrottlingDeviceBecameActiveCallbacks:1];
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_239393664;
    v11[3] = &unk_278A744C8;
    v11[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v11];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(MTRDevice_Concrete *)self setLastDeviceBecameActiveCallbackTime:v7];

    [(MTRDevice_Concrete *)self setThrottlingDeviceBecameActiveCallbacks:0];
  }

  [(MTRDevice_Concrete *)self _reattemptSubscriptionNowIfNeededWithReason:@"got unsolicited message from publisher"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_markDeviceAsUnreachableIfNeverSubscribed
{
  objc_initWeak(&location, self);
  deviceController = self->super._deviceController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2393937A8;
  v4[3] = &unk_278A72CD0;
  objc_copyWeak(&v5, &location);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v4 errorHandler:0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handleReportBegin
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 1938);
  os_unfair_lock_lock(&self->super._lock);
  self->_receivingReport = 1;
  if (self->_state != 1)
  {
    [(MTRDevice_Concrete *)self _changeState:1];
  }

  self->_timeSynchronizationLossDetected = 0;
  internalDeviceState = self->_internalDeviceState;
  v5 = internalDeviceState != 2 && internalDeviceState != 4;
  self->_receivingPrimingReport = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)_clusterDataToPersistSnapshot
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_clusterDataToPersist;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        v9 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:v8, v12];
        v10 = [v9 copy];
        [dictionary setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return dictionary;
}

- (BOOL)_haveClusterDataToPersist
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(NSMutableDictionary *)self->_clusterDataToPersist count])
  {
    return 1;
  }

  return [(MTRDevice_Concrete *)self highestObservedEventNumberNeedsPersisting];
}

- (BOOL)_doPersistClusterData
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists])
  {
    if ([(MTRDevice_Concrete *)self highestObservedEventNumberNeedsPersisting])
    {
      [(MTRDevice_Concrete *)self _storePersistedDeviceData];
    }

    v3 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
    if (v3)
    {
      v4 = sub_2393D9044(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(NSMutableDictionary *)self->_clusterDataToPersist count];
        *buf = 138412546;
        selfCopy2 = self;
        v26 = 2048;
        v27 = v5;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Storing cluster information (data version and attributes) count: %lu", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ Storing cluster information (data version and attributes) count: %lu", self, [(NSMutableDictionary *)self->_clusterDataToPersist count]);
      }

      _clusterDataToPersistSnapshot = [(MTRDevice_Concrete *)self _clusterDataToPersistSnapshot];
      _concreteController = [(MTRDevice_Concrete *)self _concreteController];
      controllerDataStore = [_concreteController controllerDataStore];
      [controllerDataStore storeClusterData:_clusterDataToPersistSnapshot forNodeID:self->super._nodeID];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = self->_clusterDataToPersist;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            persistedClusterData = self->_persistedClusterData;
            v13 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:v11];
            [(NSCache *)persistedClusterData setObject:v13 forKey:v11];

            [(NSMutableSet *)self->_persistedClusters addObject:v11];
          }

          v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      clusterDataToPersist = self->_clusterDataToPersist;
      self->_clusterDataToPersist = 0;

      LOBYTE(v3) = 1;
    }
  }

  else
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ storage behavior: no data store in _persistClusterData!", buf, 0xCu);
    }

    LODWORD(v3) = sub_2393D5398(1u);
    if (v3)
    {
      sub_2393D5320(0, 1, "%@ storage behavior: no data store in _persistClusterData!", self);
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_deviceIsReportingExcessively
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
  if (deviceReportingExcessivelyStartTime)
  {
    [(NSDate *)deviceReportingExcessivelyStartTime timeIntervalSinceNow];
    v5 = -v4;
    [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration deviceReportingExcessivelyIntervalThreshold];
    LOBYTE(deviceReportingExcessivelyStartTime) = 0;
    if (v6 < v5)
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v11 = 2048;
        v12 = v5;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: device has been reporting excessively for %.3lf seconds", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ storage behavior: device has been reporting excessively for %.3lf seconds", self, *&v5);
      }

      LOBYTE(deviceReportingExcessivelyStartTime) = 1;
    }
  }

  return deviceReportingExcessivelyStartTime;
}

- (void)_persistClusterDataAsNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _haveClusterDataToPersist]&& ![(MTRDevice_Concrete *)self _deviceIsReportingExcessively]&& !self->_receivingReport)
  {
    lastObject = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
    [lastObject timeIntervalSinceNow];
    v5 = v4;
    [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeAfterMutiplier];
    v6 = -v5;
    if (v7 <= -v5)
    {
      goto LABEL_7;
    }

    clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
    if (!clusterDataPersistenceFirstScheduledTime)
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ storage behavior: expects _clusterDataPersistenceFirstScheduledTime if _clusterDataToPersist exists", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ storage behavior: expects _clusterDataPersistenceFirstScheduledTime if _clusterDataToPersist exists", self);
      }

      goto LABEL_8;
    }

    [(NSDate *)clusterDataPersistenceFirstScheduledTime timeIntervalSinceNow];
    v10 = v9;
    [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeMaxAfterMutiplier];
    v11 = -v10;
    if (v12 > v11)
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy2 = self;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: not persisting: intervalSinceLastReport %lf intervalSinceFirstScheduledPersistence %lf", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ storage behavior: not persisting: intervalSinceLastReport %lf intervalSinceFirstScheduledPersistence %lf", self, *&v6, *&v11);
      }
    }

    else
    {
LABEL_7:
      [(MTRDevice_Concrete *)self _persistClusterData];
      v13 = self->_clusterDataPersistenceFirstScheduledTime;
      self->_clusterDataPersistenceFirstScheduledTime = 0;
    }

LABEL_8:
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_scheduleClusterDataPersistence
{
  v49 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists])
  {
    if ([(MTRDevice_Concrete *)self _haveClusterDataToPersist])
    {
      storageBehaviorConfiguration = self->_storageBehaviorConfiguration;
      if (!storageBehaviorConfiguration)
      {
        v4 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
        v5 = self->_storageBehaviorConfiguration;
        self->_storageBehaviorConfiguration = v4;

        [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration checkValuesAndResetToDefaultIfNecessary];
        storageBehaviorConfiguration = self->_storageBehaviorConfiguration;
      }

      if ([(MTRDeviceStorageBehaviorConfiguration *)storageBehaviorConfiguration disableStorageBehaviorOptimization]|| !self->_deviceCachePrimed)
      {

        [(MTRDevice_Concrete *)self _persistClusterData];
      }

      else
      {
        if (!self->_mostRecentReportTimes)
        {
          array = [MEMORY[0x277CBEB18] array];
          mostRecentReportTimes = self->_mostRecentReportTimes;
          self->_mostRecentReportTimes = array;
        }

        if (!self->_clusterDataPersistenceFirstScheduledTime)
        {
          v8 = [MEMORY[0x277CBEAA8] now];
          clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
          self->_clusterDataPersistenceFirstScheduledTime = v8;
        }

        while (1)
        {
          v10 = [(NSMutableArray *)self->_mostRecentReportTimes count];
          if (v10 < [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration recentReportTimesMaxCount])
          {
            break;
          }

          [(NSMutableArray *)self->_mostRecentReportTimes removeObjectAtIndex:0];
        }

        v11 = self->_mostRecentReportTimes;
        v12 = [MEMORY[0x277CBEAA8] now];
        [(NSMutableArray *)v11 addObject:v12];

        os_unfair_lock_lock(&self->_descriptionLock);
        lastObject = [(NSMutableArray *)self->_mostRecentReportTimes lastObject];
        mostRecentReportTimeForDescription = self->_mostRecentReportTimeForDescription;
        self->_mostRecentReportTimeForDescription = lastObject;

        os_unfair_lock_unlock(&self->_descriptionLock);
        if ([(NSMutableArray *)self->_mostRecentReportTimes count]>= 3)
        {
          v15 = 0.0;
          if ([(NSMutableArray *)self->_mostRecentReportTimes count]>= 2)
          {
            v16 = 1;
            do
            {
              v17 = [(NSMutableArray *)self->_mostRecentReportTimes objectAtIndex:v16 - 1];
              v18 = [(NSMutableArray *)self->_mostRecentReportTimes objectAtIndex:v16];
              [v18 timeIntervalSinceDate:v17];
              if (v19 > 0.0)
              {
                v15 = v15 + v19;
              }

              ++v16;
            }

            while ([(NSMutableArray *)self->_mostRecentReportTimes count]> v16);
          }

          v20 = v15 / ([(NSMutableArray *)self->_mostRecentReportTimes count]- 1);
          [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
          if (v20 >= v21)
          {
            self->_reportToPersistenceDelayCurrentMultiplier = 1.0;
          }

          else
          {
            [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
            v23 = v22 - v20;
            [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortThreshold];
            v25 = v24;
            [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortMinThreshold];
            v27 = v23 / (v25 - v26);
            if (v27 <= 1.0)
            {
              v28 = v27;
            }

            else
            {
              v28 = 1.0;
            }

            [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration reportToPersistenceDelayMaxMultiplier];
            v30 = v28 * (v29 + -1.0) + 1.0;
            self->_reportToPersistenceDelayCurrentMultiplier = v30;
            v31 = sub_2393D9044(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy4 = self;
              v47 = 2048;
              v48 = v30;
              _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: device reporting frequently - setting delay multiplier to %lf", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(0, 2, "%@ storage behavior: device reporting frequently - setting delay multiplier to %lf", self, *&self->_reportToPersistenceDelayCurrentMultiplier);
            }
          }

          [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration timeBetweenReportsTooShortMinThreshold];
          deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
          if (v20 >= v35)
          {
            self->_deviceReportingExcessivelyStartTime = 0;
          }

          else if (!deviceReportingExcessivelyStartTime)
          {
            v36 = [MEMORY[0x277CBEAA8] now];
            v37 = self->_deviceReportingExcessivelyStartTime;
            self->_deviceReportingExcessivelyStartTime = v36;

            v38 = sub_2393D9044(0);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = self->_deviceReportingExcessivelyStartTime;
              *buf = 138412546;
              selfCopy4 = self;
              v47 = 2112;
              v48 = *&v39;
              _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_INFO, "%@ storage behavior: device is reporting excessively @%@", buf, 0x16u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(0, 3, "%@ storage behavior: device is reporting excessively @%@", self, self->_deviceReportingExcessivelyStartTime);
            }
          }
        }

        if (![(MTRDevice_Concrete *)self _deviceIsReportingExcessively])
        {
          objc_initWeak(buf, self);
          [(MTRDevice_Concrete *)self _reportToPersistenceDelayTimeAfterMutiplier];
          v41 = dispatch_time(0, (v40 * 1000000000.0));
          queue = [(MTRDevice_Concrete *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_239394A34;
          block[3] = &unk_278A72CD0;
          objc_copyWeak(&v44, buf);
          dispatch_after(v41, queue, block);

          objc_destroyWeak(&v44);
          objc_destroyWeak(buf);
        }
      }
    }

    else
    {
      v33 = sub_2393D9044(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_INFO, "%@ storage behavior: nothing to persist", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0, 3, "%@ storage behavior: nothing to persist", self);
      }
    }
  }

  else
  {
    v32 = sub_2393D9044(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_INFO, "%@ storage behavior: no data store", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ storage behavior: no data store", self);
    }
  }
}

- (void)_resetStorageBehaviorState
{
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataPersistenceFirstScheduledTime = self->_clusterDataPersistenceFirstScheduledTime;
  self->_clusterDataPersistenceFirstScheduledTime = 0;

  mostRecentReportTimes = self->_mostRecentReportTimes;
  self->_mostRecentReportTimes = 0;

  os_unfair_lock_lock(&self->_descriptionLock);
  mostRecentReportTimeForDescription = self->_mostRecentReportTimeForDescription;
  self->_mostRecentReportTimeForDescription = 0;

  os_unfair_lock_unlock(&self->_descriptionLock);
  deviceReportingExcessivelyStartTime = self->_deviceReportingExcessivelyStartTime;
  self->_deviceReportingExcessivelyStartTime = 0;

  self->_reportToPersistenceDelayCurrentMultiplier = 1.0;
  if ([(MTRDevice_Concrete *)self _dataStoreExists])
  {
    [(MTRDevice_Concrete *)self _persistClusterData];
  }

  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
}

- (void)setStorageBehaviorConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = configurationCopy;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: setStorageBehaviorConfiguration %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ storage behavior: setStorageBehaviorConfiguration %@", self, configurationCopy);
  }

  os_unfair_lock_lock(&self->super._lock);
  objc_storeStrong(&self->_storageBehaviorConfiguration, configuration);
  [(MTRDeviceStorageBehaviorConfiguration *)self->_storageBehaviorConfiguration checkValuesAndResetToDefaultIfNecessary];
  [(MTRDevice_Concrete *)self _resetStorageBehaviorState];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_handleReportEnd
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ handling report end", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ handling report end", self);
  }

  os_unfair_lock_lock(&self->super._lock);
  self->_receivingReport = 0;
  self->_receivingPrimingReport = 0;
  estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
  self->_estimatedStartTimeFromGeneralDiagnosticsUpTime = 0;

  [(MTRDevice_Concrete *)self _commitPendingDataVersions];
  [(MTRDevice_Concrete *)self _scheduleClusterDataPersistence];
  if (self->_deviceConfigurationChanged)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_239395008;
    v10[3] = &unk_278A744C8;
    v10[4] = self;
    [(MTRDevice *)self _callDelegatesWithBlock:v10];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
    self->_deviceConfigurationChanged = 0;
  }

  if (!self->_deviceCachePrimed)
  {
    self->_deviceCachePrimed = 1;
    [(MTRDevice_Concrete *)self _callDelegateDeviceCachePrimed];
    [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  }

  timeUpdateShortDelayInSeconds = [(MTRDevice_Concrete *)self timeUpdateShortDelayInSeconds];
  timeSynchronizationLossDetected = self->_timeSynchronizationLossDetected;
  os_unfair_lock_unlock(&self->super._lock);
  os_unfair_lock_lock(&self->_timeSyncLock);
  timeUpdateTimer = [(MTRDevice_Concrete *)self timeUpdateTimer];
  if (timeUpdateTimer)
  {
    v8 = self->_lastTimeUpdateScheduledDelayInSeconds == 86400;

    if (timeSynchronizationLossDetected && v8)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ Trying to correct time synchronization loss, reschedule time update", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ Trying to correct time synchronization loss, reschedule time update", self);
      }

      timeUpdateTimer2 = [(MTRDevice_Concrete *)self timeUpdateTimer];
      dispatch_source_cancel(timeUpdateTimer2);

      [(MTRDevice_Concrete *)self setTimeUpdateTimer:0];
      [(MTRDevice_Concrete *)self _scheduleNextUpdate:timeUpdateShortDelayInSeconds];
    }
  }

  os_unfair_lock_unlock(&self->_timeSyncLock);
}

- (void)_handleCASESessionEstablished:(const void *)established
{
  v20 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 2363);
  if ((*(**established + 16))() == 2)
  {
    v5 = sub_239495304(*established);
    v6 = *(v5 + 112);
    if ((v6 | 2) == 3)
    {
      v11 = *(v5 + 96);
      sub_2393CF6CC(&v11, v16, 0x2Eu);
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v14 = 2080;
        v15 = v16;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Using CASE session to IP %s for subscription", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ Using CASE session to IP %s for subscription", self, v16);
      }

      os_unfair_lock_lock(&self->super._lock);
      engaged = self->_lastSubscriptionIPAddress.__engaged_;
      self->_lastSubscriptionIPAddress.var0 = v11;
      if (!engaged)
      {
        self->_lastSubscriptionIPAddress.__engaged_ = 1;
      }

      os_unfair_lock_unlock(&self->super._lock);
    }

    else
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v16 = 138412546;
        selfCopy3 = self;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ CASE session with unexpected transport type %d", v16, 0x12u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ CASE session with unexpected transport type %d", self, v6);
      }
    }
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v16 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ CASE session is not a secure session?", v16, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ CASE session is not a secure session?", self);
    }
  }
}

- (BOOL)_interestedPaths:(id)paths includesAttributePath:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = pathsCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          endpoint = [pathCopy endpoint];
          v13 = [v11 isEqualToNumber:endpoint];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          cluster = [v14 cluster];
          cluster2 = [pathCopy cluster];
          v13 = [cluster isEqualToNumber:cluster2];

LABEL_10:
          if (v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v10;
          cluster3 = [v17 cluster];
          cluster4 = [pathCopy cluster];
          if ([cluster3 isEqualToNumber:cluster4])
          {
            attribute = [v17 attribute];
            attribute2 = [pathCopy attribute];
            v22 = [attribute isEqualToNumber:attribute2];

            if (v22)
            {
LABEL_20:
              LOBYTE(v7) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = v23;
    }

    while (v23);
  }

LABEL_21:

  return v7;
}

- (id)_filteredAttributes:(id)attributes forInterestedPaths:(id)paths
{
  v33 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  pathsCopy = paths;
  v8 = pathsCopy;
  v21 = attributesCopy;
  if (pathsCopy)
  {
    if ([pathsCopy count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = attributesCopy;
      array = 0;
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"attributePath"];
            if ([(MTRDevice_Concrete *)self _interestedPaths:v8 includesAttributePath:v15])
            {
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v11);
      }

      if ([array count])
      {
        v16 = [array count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [array count];
            *buf = 138412802;
            selfCopy = self;
            v28 = 2048;
            v29 = v18;
            v30 = 2048;
            v31 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered attribute report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(0, 2, "%@ filtered attribute report %lu => %lu", self, [v9 count], objc_msgSend(array, "count"));
          }
        }
      }
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = attributesCopy;
  }

  return array;
}

- (void)_reportAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([attributesCopy count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2393959F8;
    v5[3] = &unk_278A75788;
    v5[4] = self;
    v6 = attributesCopy;
    [(MTRDevice *)self _iterateDelegatesWithBlock:v5];
  }
}

- (void)_handleAttributeReport:(id)report fromSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  v17 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    selfCopy = self;
    if (subscriptionCopy)
    {
      v8 = @"YES";
    }

    v13 = 2048;
    v14 = reportCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ handling attribute report %p, fromSubscription: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    v9 = @"NO";
    if (subscriptionCopy)
    {
      v9 = @"YES";
    }

    sub_2393D5320(0, 2, "%@ handling attribute report %p, fromSubscription: %@", self, reportCopy, v9);
  }

  os_unfair_lock_lock(&self->super._lock);
  v10 = [(MTRDevice_Concrete *)self _getAttributesToReportWithReportedValues:reportCopy fromSubscription:subscriptionCopy];
  [(MTRDevice_Concrete *)self _reportAttributes:v10];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_injectAttributeReport:(id)report fromSubscription:(BOOL)subscription
{
  v16 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (sub_23938A994(reportCopy))
  {
    objc_initWeak(location, self);
    deviceController = self->super._deviceController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_239395E98;
    v9[3] = &unk_278A757B0;
    objc_copyWeak(&v11, location);
    v10 = reportCopy;
    subscriptionCopy = subscription;
    [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v9 errorHandler:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 138412546;
      *&location[4] = self;
      v14 = 2112;
      v15 = reportCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ injected attribute report is not well-formed: %@", location, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ injected attribute report is not well-formed: %@", self, reportCopy);
    }
  }
}

- (void)_injectEventReport:(id)report
{
  v10 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (sub_23938B148(reportCopy))
  {
    [(MTRDevice_Concrete *)self _injectPossiblyInvalidEventReport:reportCopy];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = reportCopy;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ injected event report is not well-formed: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ injected event report is not well-formed: %@", self, reportCopy);
    }
  }
}

- (void)_injectPossiblyInvalidEventReport:(id)report
{
  reportCopy = report;
  objc_initWeak(&location, self);
  queue = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239396374;
  block[3] = &unk_278A75698;
  objc_copyWeak(&v9, &location);
  v8 = reportCopy;
  v6 = reportCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_interestedPaths:(id)paths includesEventPath:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = pathsCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          endpoint = [pathCopy endpoint];
          v13 = [v11 isEqualToNumber:endpoint];

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          cluster = [v14 cluster];
          cluster2 = [pathCopy cluster];
          v13 = [cluster isEqualToNumber:cluster2];

LABEL_10:
          if (v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v10;
          cluster3 = [v17 cluster];
          cluster4 = [pathCopy cluster];
          if ([cluster3 isEqualToNumber:cluster4])
          {
            event = [v17 event];
            event2 = [pathCopy event];
            v22 = [event isEqualToNumber:event2];

            if (v22)
            {
LABEL_20:
              LOBYTE(v7) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = v23;
    }

    while (v23);
  }

LABEL_21:

  return v7;
}

- (id)_filteredEvents:(id)events forInterestedPaths:(id)paths
{
  v33 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  pathsCopy = paths;
  v8 = pathsCopy;
  v21 = eventsCopy;
  if (pathsCopy)
  {
    if ([pathsCopy count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = eventsCopy;
      array = 0;
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"eventPath"];
            if ([(MTRDevice_Concrete *)self _interestedPaths:v8 includesEventPath:v15])
            {
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v11);
      }

      if ([array count])
      {
        v16 = [array count];
        if (v16 != [v9 count])
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v9 count];
            v19 = [array count];
            *buf = 138412802;
            selfCopy = self;
            v28 = 2048;
            v29 = v18;
            v30 = 2048;
            v31 = v19;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ filtered event report %lu => %lu", buf, 0x20u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(0, 2, "%@ filtered event report %lu => %lu", self, [v9 count], objc_msgSend(array, "count"));
          }
        }
      }
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = eventsCopy;
  }

  return array;
}

- (void)_handleEventReport:(id)report
{
  v57 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  os_unfair_lock_lock(&self->super._lock);
  v42 = self->_estimatedStartTime;
  unreportedEvents = self->_unreportedEvents;
  if (unreportedEvents)
  {
    array = unreportedEvents;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v43 = array;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = reportCopy;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v46 = *v51;
    do
    {
      v7 = 0;
      do
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"eventPath"];
        estimatedStartTime = [v9 cluster];
        if ([estimatedStartTime unsignedLongValue] == 40)
        {
          event = [v9 event];
          v12 = [event unsignedLongValue] == 0;

          if (!v12)
          {
            goto LABEL_24;
          }

          estimatedStartTimeFromGeneralDiagnosticsUpTime = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
          v14 = sub_2393D9044(0);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (estimatedStartTimeFromGeneralDiagnosticsUpTime)
          {
            if (v15)
            {
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = estimatedStartTimeFromGeneralDiagnosticsUpTime;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ StartUp event: set estimated start time forward to %@", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(0, 2, "%@ StartUp event: set estimated start time forward to %@", self, self->_estimatedStartTimeFromGeneralDiagnosticsUpTime);
            }

            v16 = self->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
          }

          else
          {
            if (v15)
            {
              *buf = 138412290;
              *&buf[4] = self;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ StartUp event: set estimated start time to nil", buf, 0xCu);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(0, 2, "%@ StartUp event: set estimated start time to nil", self);
            }

            v16 = 0;
          }

          estimatedStartTime = self->_estimatedStartTime;
          self->_estimatedStartTime = v16;
        }

LABEL_24:
        v17 = [v8 objectForKeyedSubscript:@"eventTimeType"];
        v18 = v17;
        if (v17)
        {
          if ([v17 unsignedIntegerValue])
          {
            goto LABEL_31;
          }

          v19 = [v8 objectForKeyedSubscript:@"eventSystemUpTime"];
          v20 = v19;
          if (v19)
          {
            [v19 doubleValue];
            v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v21];
            v23 = v22;
            if (!self->_estimatedStartTime || [v22 compare:?] == -1)
            {
              objc_storeStrong(&self->_estimatedStartTime, v23);
            }

LABEL_31:
            v24 = [v8 objectForKeyedSubscript:@"eventNumber"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v8 objectForKeyedSubscript:@"eventNumber"];

              if (v25)
              {
                highestObservedEventNumber = [(MTRDevice_Concrete *)self highestObservedEventNumber];
                if (!highestObservedEventNumber || (-[MTRDevice_Concrete highestObservedEventNumber](self, "highestObservedEventNumber"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 compare:v25] == -1, v27, highestObservedEventNumber, v28))
                {
                  [(MTRDevice_Concrete *)self setHighestObservedEventNumber:v25];
                  [(MTRDevice_Concrete *)self setHighestObservedEventNumberNeedsPersisting:1];
                  v31 = [v8 mutableCopy];
                  v32 = [v31 objectForKeyedSubscript:@"eventIsHistorical"];
                  v33 = v32 == 0;

                  if (v33)
                  {
                    if (self->_receivingPrimingReport)
                    {
                      v34 = MEMORY[0x277CBEC38];
                    }

                    else
                    {
                      v34 = MEMORY[0x277CBEC28];
                    }

                    [v31 setObject:v34 forKeyedSubscript:@"eventIsHistorical"];
                  }

                  [(NSMutableArray *)v43 addObject:v31];
                }

                else if (self->_receivingReport)
                {
                  self->_receivingPrimingReport = 1;
                }

LABEL_53:

                goto LABEL_54;
              }
            }

            else
            {
            }

            v30 = sub_2393D9044(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v8;
              _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event number", buf, 0x16u);
            }

            v25 = 0;
            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "%@ Event %@ missing event number", self, v8);
            }

            goto LABEL_53;
          }

          v35 = sub_2393D9044(0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event time value", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "%@ Event %@ missing event time value", self, v8);
          }
        }

        else
        {
          v29 = sub_2393D9044(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "%@ Event %@ missing event time type", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "%@ Event %@ missing event time type", self, v8);
          }
        }

LABEL_54:

        ++v7;
      }

      while (v6 != v7);
      v36 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      v6 = v36;
    }

    while (v36);
  }

  v37 = self->_estimatedStartTime;
  if (v42 != v37)
  {
    v38 = sub_2393D9044(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "%@ updated estimated start time to %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ updated estimated start time to %@", self, self->_estimatedStartTime);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v55 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_239397380;
  v47[3] = &unk_278A757D8;
  v47[4] = self;
  v44 = v43;
  v48 = v44;
  v49 = buf;
  [(MTRDevice *)self _iterateDelegatesWithBlock:v47];
  if (*(*&buf[8] + 24))
  {
    v39 = 0;
  }

  else
  {
    v39 = v44;
  }

  v40 = self->_unreportedEvents;
  self->_unreportedEvents = v39;

  _Block_object_dispose(buf, 8);
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_reconcilePersistedClustersWithStorage
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  v16 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_persistedClusters;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        _concreteController = [(MTRDevice_Concrete *)self _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = self->super._nodeID;
        endpoint = [v6 endpoint];
        cluster = [v6 cluster];
        v12 = [controllerDataStore getStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];

        if (!v12)
        {
          [v16 addObject:v6];
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v3);
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v16 count];
    v15 = [(NSMutableSet *)self->_persistedClusters count];
    *buf = 138412802;
    selfCopy = self;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ Storage missing %lu / %lu clusters - reconciling in-memory records", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "%@ Storage missing %lu / %lu clusters - reconciling in-memory records", self, [v16 count], -[NSMutableSet count](self->_persistedClusters, "count"));
  }

  [(NSMutableSet *)self->_persistedClusters minusSet:v16];
}

- (id)_clusterDataForPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (!clusterDataToPersist || ([(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:pathCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![(MTRDevice_Concrete *)self _dataStoreExists]|| ([(NSCache *)self->_persistedClusterData objectForKey:pathCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([(NSMutableSet *)self->_persistedClusters containsObject:pathCopy])
      {
        _concreteController = [(MTRDevice_Concrete *)self _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = self->super._nodeID;
        endpoint = [pathCopy endpoint];
        cluster = [pathCopy cluster];
        v6 = [controllerDataStore getStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];

        v12 = sub_2393D9044(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"YES";
          *buf = 138412802;
          selfCopy = self;
          v19 = 2112;
          if (!v6)
          {
            v13 = @"NO";
          }

          v20 = pathCopy;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ cluster path %@ cache miss - load from storage success %@", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          v14 = @"YES";
          if (!v6)
          {
            v14 = @"NO";
          }

          sub_2393D5320(0, 2, "%@ cluster path %@ cache miss - load from storage success %@", self, pathCopy, v14);
        }

        if (v6)
        {
          [(NSCache *)self->_persistedClusterData setObject:v6 forKey:pathCopy];
        }

        else
        {
          [(MTRDevice_Concrete *)self _reconcilePersistedClustersWithStorage];
          pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Data store has no data for cluster %@", pathCopy];
          [(MTRDevice_Concrete *)self _resetSubscriptionWithReasonString:pathCopy];
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)_knownClusters
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(NSMutableSet *)self->_persistedClusters mutableCopy];
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v5 = MEMORY[0x277CBEB98];
    allKeys = [(NSMutableDictionary *)clusterDataToPersist allKeys];
    v7 = [v5 setWithArray:allKeys];
    [v3 unionSet:v7];
  }

  return v3;
}

- (id)_getCachedDataVersions
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->super._lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _knownClusters = [(MTRDevice_Concrete *)self _knownClusters];
  v5 = [_knownClusters countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(_knownClusters);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(MTRDevice_Concrete *)self _clusterDataForPath:v8];
        dataVersion = [v9 dataVersion];
        [dictionary setObject:dataVersion forKeyedSubscript:v8];
      }

      v5 = [_knownClusters countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [dictionary count];
    *buf = 138412546;
    selfCopy = self;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "%@ _getCachedDataVersions dataVersions count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "%@ _getCachedDataVersions dataVersions count: %lu", self, [dictionary count]);
  }

  os_unfair_lock_unlock(&self->super._lock);

  return dictionary;
}

- (void)_commitPendingDataVersionsForClusterPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v4 = [(NSMutableDictionary *)self->_clusterDataToPersist objectForKeyedSubscript:pathCopy];
  pendingDataVersion = [v4 pendingDataVersion];

  if (pendingDataVersion)
  {
    pendingDataVersion2 = [v4 pendingDataVersion];
    [v4 setDataVersion:pendingDataVersion2];

    [v4 setPendingDataVersion:0];
  }
}

- (void)_commitPendingDataVersions
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = clusterDataToPersist;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

          [(MTRDevice_Concrete *)self _commitPendingDataVersionsForClusterPath:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)_cachedAttributeValueForPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  endpoint = [pathCopy endpoint];
  cluster = [pathCopy cluster];
  v7 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

  v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:v7];
  v9 = v8;
  if (v8)
  {
    attributes = [v8 attributes];
    attribute = [pathCopy attribute];
    v12 = [attributes objectForKeyedSubscript:attribute];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_setCachedAttributeValue:(id)value forPath:(id)path fromSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  valueCopy = value;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  endpoint = [pathCopy endpoint];
  cluster = [pathCopy cluster];
  v12 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

  v13 = [(MTRDevice_Concrete *)self _clusterDataForPath:v12];
  if (!v13)
  {
    if (!valueCopy)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v13 = objc_alloc_init(MTRDeviceClusterData);
  }

  attribute = [pathCopy attribute];
  [(MTRDeviceClusterData *)v13 storeValue:valueCopy forAttribute:attribute];

  if ([(MTRDevice_Concrete *)self _attributePathAffectsDescriptionData:pathCopy])
  {
    [(MTRDevice_Concrete *)self _updateAttributeDependentDescriptionData];
  }

  if (valueCopy && subscriptionCopy && !self->_receivingPrimingReport && sub_2393983AC(pathCopy))
  {
    v18 = 0;
    v19 = "dwnpm_bad_c_attr_update";
    v20 = 0;
    sub_23948BD20(&v18);
    [(MTRDevice_Concrete *)self _addInformationalAttributesToCurrentMetricScope];
    v18 = 1;
    v19 = "dwnpm_bad_c_attr_update";
    v20 = 0;
    sub_23948BD20(&v18);
  }

  else
  {
    clusterDataToPersist = self->_clusterDataToPersist;
    if (!clusterDataToPersist)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v17 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = dictionary;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v13 forKeyedSubscript:v12];
  }

LABEL_14:
}

- (void)_removeCachedAttribute:(id)attribute fromCluster:(id)cluster
{
  attributeCopy = attribute;
  clusterCopy = cluster;
  os_unfair_lock_assert_owner(&self->super._lock);
  clusterDataToPersist = self->_clusterDataToPersist;
  if (clusterDataToPersist)
  {
    v8 = [(NSMutableDictionary *)clusterDataToPersist objectForKeyedSubscript:clusterCopy];
    [v8 removeValueForAttribute:attributeCopy];
  }
}

- (void)_createDataVersionFilterListFromDictionary:(id)dictionary dataVersionFilterList:(DataVersionFilter *)list count:(unint64_t *)count
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    operator new[]();
  }

  *count = 0;
  *list = 0;
}

- (void)_stopConnectivityMonitoring
{
  os_unfair_lock_assert_owner(&self->super._lock);
  connectivityMonitor = self->_connectivityMonitor;
  if (connectivityMonitor)
  {
    [(MTRDeviceConnectivityMonitor *)connectivityMonitor stopMonitoring];
    v4 = self->_connectivityMonitor;
    self->_connectivityMonitor = 0;
  }
}

- (void)_resetSubscriptionWithReasonString:(id)string
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = stringCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ %@ - resetting subscription", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "%@ %@ - resetting subscription", self, stringCopy);
  }

  objc_initWeak(buf, self);
  deviceController = self->super._deviceController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239398B24;
  v7[3] = &unk_278A72CD0;
  objc_copyWeak(&v8, buf);
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v7 errorHandler:0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_resetSubscription
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 3006);
  os_unfair_lock_assert_owner(&self->super._lock);
  matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  [matterCPPObjectsHolder clearReadClientAndDeleteSubscriptionCallback];

  [(MTRDevice_Concrete *)self _doHandleSubscriptionError:0];
}

- (void)_setupSubscriptionWithReason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_Concrete.mm", 3033);
  os_unfair_lock_assert_owner(&self->super._lock);
  [(MTRDevice_Concrete *)self setReattemptingSubscription:0];
  if (![(MTRDevice_Concrete *)self _subscriptionsAllowed])
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v24 = self;
      *&v24[8] = 2112;
      *&v24[10] = reasonCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ _setupSubscription: Subscriptions not allowed. Do not set up subscription (reason: %@)", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ _setupSubscription: Subscriptions not allowed. Do not set up subscription (reason: %@)", self, reasonCopy);
    }

    goto LABEL_25;
  }

  internalDeviceState = self->_internalDeviceState;
  if (internalDeviceState)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (internalDeviceState > 4)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = off_278A75B38[internalDeviceState - 1];
      }

      *buf = 138412802;
      *v24 = self;
      *&v24[8] = 2112;
      *&v24[10] = v7;
      v25 = 2112;
      v26 = reasonCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ setupSubscription: No need to subscribe due to internal state %@ (reason: %@)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v16 = self->_internalDeviceState;
      if (v16 > 4)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = off_278A75B58[v16];
      }

      sub_2393D5320(0, 2, "%@ setupSubscription: No need to subscribe due to internal state %@ (reason: %@)", self, v17, reasonCopy);
    }

LABEL_25:
    [(MTRDevice_Concrete *)self _clearSubscriptionPoolWork];
    goto LABEL_26;
  }

  [(MTRDevice_Concrete *)self _changeInternalState:1];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v24 = self;
    *&v24[8] = 2112;
    *&v24[10] = reasonCopy;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting up subscription with reason: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ setting up subscription with reason: %@", self, reasonCopy);
  }

  if ([reasonCopy hasPrefix:@"SPI client indicated the device may now be reachable"])
  {
    [(MTRDevice_Concrete *)self setDoingCASEAttemptForDeviceMayBeReachable:1];
  }

  objc_initWeak(buf, self);
  v10 = dispatch_time(0, 10000000000);
  queue = [(MTRDevice_Concrete *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239399220;
  block[3] = &unk_278A72CD0;
  objc_copyWeak(&v22, buf);
  dispatch_after(v10, queue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
  *buf = 0;
  *&v24[4] = "dwnpm_dev_initial_subscription_setup";
  v24[16] = 0;
  sub_23948BD20(buf);
  matterCPPObjectsHolder = [(MTRDevice_Concrete *)self matterCPPObjectsHolder];
  objc_initWeak(buf, self);
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  unsignedLongLongValue = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2393992E8;
  v18[3] = &unk_278A758A0;
  objc_copyWeak(&v20, buf);
  v15 = matterCPPObjectsHolder;
  v19 = v15;
  [_concreteController directlyGetSessionForNode:unsignedLongLongValue completion:v18];

  [(MTRDevice_Concrete *)self _setupConnectivityMonitoring];
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

LABEL_26:
}

- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params
{
  v71[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  v48 = dCopy;
  paramsCopy = params;
  v50 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  if (sub_238EA55DC([iDCopy unsignedIntValue], objc_msgSend(attributeIDCopy, "unsignedIntValue")))
  {
    LOBYTE(v13) = sub_2393983AC(v50);
  }

  else if (paramsCopy)
  {
    v13 = [paramsCopy shouldAssumeUnknownAttributesReportable] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v47 = [(MTRDevice_Concrete *)self _attributeValueDictionaryForAttributePath:v50];
  os_unfair_lock_lock(&self->super._lock);
  suspended = [(MTRDevice_Concrete *)self suspended];
  os_unfair_lock_unlock(&self->super._lock);
  if (suspended || !(v13 & 1 | ![(MTRDevice_Concrete *)self _subscriptionAbleToReport]))
  {
    [(MTRDevice_Concrete *)self _readThroughSkipped];
  }

  else
  {
    v45 = [MTRAttributeRequestPath requestPathWithEndpointID:v48 clusterID:iDCopy attributeID:attributeIDCopy];
    v71[0] = v45;
    null = paramsCopy;
    if (!paramsCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v71[1] = null;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    if (!paramsCopy)
    {
    }

    if (![(MTRAsyncWorkQueue *)self->_asyncWorkQueue hasDuplicateForTypeID:1 workItemData:v46])
    {
      v16 = [MEMORY[0x277CBEB18] arrayWithObject:v46];
      v17 = [MTRAsyncWorkItem alloc];
      queue = [(MTRDevice_Concrete *)self queue];
      v19 = [(MTRAsyncWorkItem *)v17 initWithQueue:queue];

      uniqueID = [(MTRAsyncWorkItem *)v19 uniqueID];
      nodeID = [(MTRDevice *)self nodeID];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_23939BDDC;
      v65[3] = &unk_278A758C8;
      v70 = uniqueID;
      v22 = nodeID;
      v66 = v22;
      v23 = v48;
      v67 = v23;
      v24 = iDCopy;
      v68 = v24;
      v25 = attributeIDCopy;
      v69 = v25;
      [(MTRAsyncWorkItem *)v19 setBatchingID:1 data:v16 handler:v65];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = sub_23939C29C;
      v58[3] = &unk_278A758F0;
      v26 = v16;
      v59 = v26;
      v64 = uniqueID;
      v27 = v22;
      v60 = v27;
      v28 = v23;
      v61 = v28;
      v29 = v24;
      v62 = v29;
      v30 = v25;
      v31 = uniqueID;
      v32 = v30;
      v63 = v30;
      v44 = v19;
      [(MTRAsyncWorkItem *)v19 setDuplicateTypeID:1 handler:v58];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_23939C4F4;
      v51[3] = &unk_278A75940;
      v42 = v26;
      v52 = v42;
      v57 = v31;
      v43 = v27;
      v53 = v43;
      v33 = v28;
      v54 = v33;
      v34 = v29;
      v55 = v34;
      v35 = v32;
      v56 = v35;
      [(MTRAsyncWorkItem *)v19 setReadyHandler:v51];
      asyncWorkQueue = self->_asyncWorkQueue;
      unsignedLongLongValue = [v34 unsignedLongLongValue];
      v38 = MTRClusterNameForID([v34 unsignedLongLongValue]);
      unsignedLongLongValue2 = [v35 unsignedLongLongValue];
      v40 = MTRAttributeNameForID([v34 unsignedLongLongValue], objc_msgSend(v35, "unsignedLongLongValue"));
      [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v44 descriptionWithFormat:@"read %@ 0x%llx (%@) 0x%llx (%@)", v33, unsignedLongLongValue, v38, unsignedLongLongValue2, v40];
    }
  }

  return v47;
}

- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout
{
  v59[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  v17 = [valueCopy copy];

  if (timeoutCopy)
  {
    v18 = sub_238DB3374(timeoutCopy, &unk_284C43AF0, &unk_284C43B08);

    timeoutCopy = v18;
  }

  v40 = sub_238DB3374(intervalCopy, &unk_284C43AF0, &unk_284C43B20);

  v39 = v17;
  v42 = timeoutCopy;
  v19 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 1;
  v53 = 0;
  v58[0] = @"attributePath";
  v58[1] = @"data";
  v59[0] = v19;
  v59[1] = v17;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v57 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [(MTRDevice_Concrete *)self setExpectedValues:v21 expectedValueInterval:v40 expectedValueID:&v53];

  v22 = [MTRAsyncWorkItem alloc];
  queue = [(MTRDevice_Concrete *)self queue];
  v24 = [(MTRAsyncWorkItem *)v22 initWithQueue:queue];

  uniqueID = [(MTRAsyncWorkItem *)v24 uniqueID];
  v37 = self->super._nodeID;
  v56[0] = v19;
  v56[1] = v17;
  null = timeoutCopy;
  if (!timeoutCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v56[2] = null;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v53];
  v56[3] = v27;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];

  if (!timeoutCopy)
  {
  }

  v28 = [MEMORY[0x277CBEB18] arrayWithObject:v38];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_23939D3BC;
  v50[3] = &unk_278A75968;
  v52 = uniqueID;
  v29 = v37;
  v51 = v29;
  [(MTRAsyncWorkItem *)v24 setBatchingID:2 data:v28 handler:v50];
  [(MTRAsyncWorkItem *)v24 setDuplicateTypeID:1 handler:&unk_284BB75B0];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23939D774;
  v45[3] = &unk_278A759D8;
  v30 = v28;
  v46 = v30;
  v48 = v54;
  v49 = uniqueID;
  v31 = v19;
  v47 = v31;
  [(MTRAsyncWorkItem *)v24 setReadyHandler:v45];
  asyncWorkQueue = self->_asyncWorkQueue;
  unsignedLongLongValue = [iDCopy unsignedLongLongValue];
  v34 = MTRClusterNameForID([iDCopy unsignedLongLongValue]);
  unsignedLongLongValue2 = [attributeIDCopy unsignedLongLongValue];
  v36 = MTRAttributeNameForID([iDCopy unsignedLongLongValue], objc_msgSend(attributeIDCopy, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v24 descriptionWithFormat:@"write %@ 0x%llx (%@) 0x%llx (%@): %@", dCopy, unsignedLongLongValue, v34, unsignedLongLongValue2, v36, v39];

  _Block_object_dispose(v54, 8);
}

- (id)readAttributePaths:(id)paths
{
  v78 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  os_unfair_lock_lock(&self->super._lock);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = pathsCopy;
  v43 = [obj countByEnumeratingWithState:&v68 objects:v77 count:{16, pathsCopy}];
  if (v43)
  {
    v44 = *v69;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v68 + 1) + 8 * i);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        _knownClusters = [(MTRDevice_Concrete *)selfCopy _knownClusters];
        v4 = [_knownClusters countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (v4)
        {
          v49 = *v65;
          do
          {
            v52 = 0;
            v50 = v4;
            do
            {
              if (*v65 != v49)
              {
                objc_enumerationMutation(_knownClusters);
              }

              v5 = *(*(&v64 + 1) + 8 * v52);
              endpoint = [v54 endpoint];
              if (!endpoint || ([v54 endpoint], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "endpoint"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, endpoint, (v9 & 1) != 0))
              {
                cluster = [v54 cluster];
                if (!cluster || ([v54 cluster], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "cluster"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, v11, cluster, (v13 & 1) != 0))
                {
                  v51 = [(MTRDevice_Concrete *)selfCopy _clusterDataForPath:v5];
                  attribute = [v54 attribute];
                  v15 = attribute == 0;

                  if (v15)
                  {
                    v62 = 0u;
                    v63 = 0u;
                    v60 = 0u;
                    v61 = 0u;
                    attributes = [v51 attributes];
                    v24 = [attributes countByEnumeratingWithState:&v60 objects:v75 count:16];
                    if (v24)
                    {
                      v25 = *v61;
                      do
                      {
                        for (j = 0; j != v24; ++j)
                        {
                          if (*v61 != v25)
                          {
                            objc_enumerationMutation(attributes);
                          }

                          v27 = *(*(&v60 + 1) + 8 * j);
                          endpoint2 = [v5 endpoint];
                          cluster2 = [v5 cluster];
                          v30 = [MTRAttributePath attributePathWithEndpointID:endpoint2 clusterID:cluster2 attributeID:v27];
                          [v55 addObject:v30];
                        }

                        v24 = [attributes countByEnumeratingWithState:&v60 objects:v75 count:16];
                      }

                      while (v24);
                    }

LABEL_25:
                  }

                  else
                  {
                    attributes2 = [v51 attributes];
                    attribute2 = [v54 attribute];
                    v18 = [attributes2 objectForKey:attribute2];
                    v19 = v18 == 0;

                    if (!v19)
                    {
                      attributes = [v5 endpoint];
                      cluster3 = [v5 cluster];
                      attribute3 = [v54 attribute];
                      v23 = [MTRAttributePath attributePathWithEndpointID:attributes clusterID:cluster3 attributeID:attribute3];
                      [v55 addObject:v23];

                      goto LABEL_25;
                    }
                  }
                }
              }

              v52 = v52 + 1;
            }

            while (v52 != v50);
            v4 = [_knownClusters countByEnumeratingWithState:&v64 objects:v76 count:16];
          }

          while (v4);
        }
      }

      v43 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v43);
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v55, "count")}];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v53 = v55;
  v32 = [v53 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v32)
  {
    v33 = *v57;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(v53);
        }

        v35 = *(*(&v56 + 1) + 8 * k);
        endpoint3 = [v35 endpoint];
        cluster4 = [v35 cluster];
        attribute4 = [v35 attribute];
        v39 = [(MTRDevice_Concrete *)selfCopy readAttributeWithEndpointID:endpoint3 clusterID:cluster4 attributeID:attribute4 params:0];

        if (v39)
        {
          v72[0] = @"attributePath";
          v72[1] = @"data";
          v73[0] = v35;
          v73[1] = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
          [v31 addObject:v40];
        }
      }

      v32 = [v53 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v32);
  }

  return v31;
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2
{
  v85 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  if (!intervalCopy || (v24 = valuesCopy, [intervalCopy compare:&unk_284C43B38] == -1))
  {
    v24 = 0;
  }

  else
  {
    sub_238DB3374(intervalCopy, &unk_284C43AF0, &unk_284C43B20);
    intervalCopy = valuesCopy = intervalCopy;
  }

  v25 = [processingTimeoutCopy copy];
  v26 = [timeoutCopy copy];

  v64 = [fieldsCopy copy];
  v56 = intervalCopy;
  v59 = v25;
  if (v26)
  {
    goto LABEL_8;
  }

  if (sub_2392DEB5C(iDCopy, commandIDCopy))
  {
    v26 = &unk_284C43B50;
LABEL_8:
    v27 = MEMORY[0x277CBEAA8];
    [v26 doubleValue];
    v61 = [v27 dateWithTimeIntervalSinceNow:v28 / 1000.0];
    goto LABEL_9;
  }

  v26 = 0;
  v61 = 0;
LABEL_9:
  v58 = v26;
  v83 = 0;
  if (v24)
  {
    [(MTRDevice_Concrete *)self setExpectedValues:v24 expectedValueInterval:intervalCopy expectedValueID:&v83];
    array = [MEMORY[0x277CBEB18] array];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v31)
    {
      v32 = *v80;
      do
      {
        v33 = 0;
        do
        {
          if (*v80 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = [*(*(&v79 + 1) + 8 * v33) objectForKeyedSubscript:@"attributePath"];
          [array addObject:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v30 countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v31);
    }
  }

  else
  {
    array = 0;
  }

  v35 = [MTRAsyncWorkItem alloc];
  queue = [(MTRDevice_Concrete *)self queue];
  v37 = [(MTRAsyncWorkItem *)v35 initWithQueue:queue];

  v55 = v37;
  uniqueID = [(MTRAsyncWorkItem *)v37 uniqueID];
  [(MTRAsyncWorkItem *)v37 setDuplicateTypeID:1 handler:&unk_284BB75D0];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_23939EB9C;
  v65[3] = &unk_278A75A50;
  v51 = queueCopy;
  v66 = v51;
  v52 = completionCopy;
  v76 = v52;
  v48 = v24;
  v67 = v48;
  v54 = array;
  v68 = v54;
  v77 = v83;
  v49 = v58;
  v69 = v49;
  v53 = v61;
  v70 = v53;
  v78 = uniqueID;
  v39 = dCopy;
  v71 = v39;
  v40 = iDCopy;
  v72 = v40;
  v41 = commandIDCopy;
  v73 = v41;
  v42 = v64;
  v74 = v42;
  v50 = v59;
  v75 = v50;
  [(MTRAsyncWorkItem *)v37 setReadyHandler:v65];
  asyncWorkQueue = self->_asyncWorkQueue;
  unsignedLongLongValue = [v40 unsignedLongLongValue];
  v45 = MTRClusterNameForID([v40 unsignedLongLongValue]);
  unsignedLongLongValue2 = [v41 unsignedLongLongValue];
  v47 = MTRRequestCommandNameForID([v40 unsignedLongLongValue], objc_msgSend(v41, "unsignedLongLongValue"));
  [(MTRAsyncWorkQueue *)asyncWorkQueue enqueueWorkItem:v55 descriptionWithFormat:@"invoke %@ 0x%llx (%@) 0x%llx (%@): %@", v39, unsignedLongLongValue, v45, unsignedLongLongValue2, v47, v42];
}

- (BOOL)_invokeResponse:(id)response matchesRequiredResponse:(id)requiredResponse
{
  v62 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requiredResponseCopy = requiredResponse;
  v41 = responseCopy;
  v7 = [responseCopy objectForKeyedSubscript:?];

  if (v7)
  {
    v36 = [responseCopy objectForKeyedSubscript:@"data"];
    v8 = [v36 objectForKeyedSubscript:@"type"];
    v9 = [@"Structure" isEqual:v8];

    if (v9)
    {
      v38 = [v36 objectForKeyedSubscript:@"value"];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = requiredResponseCopy;
      v10 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (v10)
      {
        selfCopy = self;
        v35 = *v47;
        while (1)
        {
          v34 = v10;
          v11 = 0;
LABEL_6:
          if (*v47 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v46 + 1) + 8 * v11);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v13 = v38;
          v14 = [v13 countByEnumeratingWithState:&v42 objects:v60 count:16];
          if (!v14)
          {
            break;
          }

          v15 = *v43;
LABEL_10:
          v16 = 0;
          while (1)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v42 + 1) + 8 * v16);
            v18 = [v17 objectForKeyedSubscript:@"contextTag"];
            v19 = [v12 isEqual:v18];

            if (v19)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v13 countByEnumeratingWithState:&v42 objects:v60 count:16];
              if (v14)
              {
                goto LABEL_10;
              }

              goto LABEL_33;
            }
          }

          v20 = [v17 objectForKeyedSubscript:@"data"];

          if (!v20)
          {
            goto LABEL_34;
          }

          v21 = [obj objectForKeyedSubscript:v12];
          if (([v21 isEqual:v20] & 1) == 0)
          {
            v29 = sub_2393D9044(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v41 objectForKeyedSubscript:@"commandPath"];
              *buf = 138413314;
              selfCopy3 = selfCopy;
              v52 = 2112;
              v53 = v30;
              v54 = 2112;
              v55 = v12;
              v56 = 2112;
              v57 = v20;
              v58 = 2112;
              v59 = v21;
              _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "%@ invokeCommands response for %@ field %@ got %@ but expected %@", buf, 0x34u);
            }

            if (sub_2393D5398(1u))
            {
              v31 = [v41 objectForKeyedSubscript:@"commandPath"];
              sub_2393D5320(0, 1, "%@ invokeCommands response for %@ field %@ got %@ but expected %@", selfCopy, v31, v12, v20, v21);
            }

            goto LABEL_43;
          }

          if (++v11 != v34)
          {
            goto LABEL_6;
          }

          v10 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
          v22 = 1;
          if (!v10)
          {
            goto LABEL_45;
          }
        }

LABEL_33:

LABEL_34:
        v27 = sub_2393D9044(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [v41 objectForKeyedSubscript:@"commandPath"];
          *buf = 138412802;
          selfCopy3 = selfCopy;
          v52 = 2112;
          v53 = v28;
          v54 = 2112;
          v55 = v12;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "%@ invokeCommands response for %@ does not have a field with ID %@", buf, 0x20u);
        }

        if (sub_2393D5398(1u))
        {
          v20 = [v41 objectForKeyedSubscript:@"commandPath"];
          sub_2393D5320(0, 1, "%@ invokeCommands response for %@ does not have a field with ID %@", selfCopy, v20, v12);
LABEL_43:
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

LABEL_45:

      goto LABEL_46;
    }

    v25 = sub_2393D9044(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v41 objectForKeyedSubscript:@"commandPath"];
      *buf = 138412802;
      selfCopy3 = self;
      v52 = 2112;
      v53 = v36;
      v54 = 2112;
      v55 = v26;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "%@ invokeCommands data value %@ for command response for %@ is not a structure", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      [v41 objectForKeyedSubscript:@"commandPath"];
      v39 = v22 = 0;
      sub_2393D5320(0, 1, "%@ invokeCommands data value %@ for command response for %@ is not a structure", self, v36, v39);

LABEL_46:
      goto LABEL_47;
    }

LABEL_30:
    v22 = 0;
    goto LABEL_46;
  }

  v23 = sub_2393D9044(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [v41 objectForKeyedSubscript:@"commandPath"];
    *buf = 138412546;
    selfCopy3 = self;
    v52 = 2112;
    v53 = v24;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "%@ invokeCommands expects a data response for %@ but got no data", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v36 = [v41 objectForKeyedSubscript:@"commandPath"];
    sub_2393D5320(0, 1, "%@ invokeCommands expects a data response for %@ but got no data", self, v36);
    goto LABEL_30;
  }

  v22 = 0;
LABEL_47:

  return v22;
}

- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_23939FEE0;
  v45[3] = &unk_278A75A78;
  v23 = queueCopy;
  v46 = v23;
  v24 = completionCopy;
  v47 = v24;
  v9 = MEMORY[0x23EE78590](v45);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  reverseObjectEnumerator = [commandsCopy reverseObjectEnumerator];
  obj = reverseObjectEnumerator;
  v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v11)
  {
    v22 = *v42;
    do
    {
      v26 = v11;
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v41 + 1) + 8 * i);
        objc_initWeak(&location, self);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        reverseObjectEnumerator2 = [v27 reverseObjectEnumerator];
        v14 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v14)
        {
          v15 = *v37;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v37 != v15)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              v17 = *(*(&v36 + 1) + 8 * j);
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = sub_23939FFA8;
              v33[3] = &unk_278A75AC8;
              objc_copyWeak(&v35, &location);
              v33[4] = v17;
              v34 = v9;
              v18 = MEMORY[0x23EE78590](v33);
              v9 = MEMORY[0x23EE78590]();

              objc_destroyWeak(&v35);
            }

            v14 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v14);
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_2393A06B0;
        v28[3] = &unk_278A75AF0;
        objc_copyWeak(&v32, &location);
        v28[4] = v27;
        v29 = v23;
        v30 = v24;
        v31 = v9;
        v19 = MEMORY[0x23EE78590](v28);
        v9 = MEMORY[0x23EE78590]();

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      reverseObjectEnumerator = obj;
      v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v11);
  }

  v9[2](v9, 1, MEMORY[0x277CBEBF8]);
}

- (void)openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  newBaseDevice = [(MTRDevice_Concrete *)self newBaseDevice];
  [newBaseDevice openCommissioningWindowWithSetupPasscode:passcodeCopy discriminator:discriminatorCopy duration:durationCopy queue:queueCopy completion:completionCopy];
}

- (void)openCommissioningWindowWithDiscriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  newBaseDevice = [(MTRDevice_Concrete *)self newBaseDevice];
  [newBaseDevice openCommissioningWindowWithDiscriminator:discriminatorCopy duration:durationCopy queue:queueCopy completion:completionCopy];
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2048;
    typeCopy = type;
    v22 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType: %lu, timeout: %f", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ downloadLogOfType: %lu, timeout: %f", self, type, *&timeout);
  }

  newBaseDevice = [(MTRDevice_Concrete *)self newBaseDevice];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setDiagnosticLogTransferInProgress:1];
  [(MTRDevice_Concrete *)self _notifyDelegateOfPrivateInternalPropertiesChanges];
  os_unfair_lock_unlock(&self->super._lock);
  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2393A0CEC;
  v15[3] = &unk_278A75B18;
  objc_copyWeak(v17, buf);
  v17[1] = type;
  v14 = completionCopy;
  v16 = v14;
  [newBaseDevice downloadLogOfType:type timeout:queueCopy queue:v15 completion:timeout];

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)_checkExpiredExpectedValues
{
  v50 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  date = [MEMORY[0x277CBEAA8] date];
  v27 = [MEMORY[0x277CBEB58] set];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_expectedValueCache;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v4)
  {
    v30 = 0;
    goto LABEL_17;
  }

  v30 = 0;
  v5 = *v38;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v38 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v37 + 1) + 8 * i);
      v8 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:v7];
      v9 = [v8 objectAtIndexedSubscript:0];
      if (v8)
      {
        if ([date compare:v9] == 1)
        {
          v48[0] = v7;
          v10 = [v8 objectAtIndexedSubscript:1];
          v48[1] = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
          [v27 addObject:v11];

LABEL_12:
          goto LABEL_13;
        }

        v10 = v30;
        if (!v30 || (v10 = v30, [v30 compare:v9] == 1))
        {
          v30 = v9;
          goto LABEL_12;
        }
      }

LABEL_13:
    }

    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v49 count:16];
  }

  while (v4);
LABEL_17:

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v27;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * j);
        v16 = [v15 objectAtIndexedSubscript:0];
        v17 = [v15 objectAtIndexedSubscript:1];
        v18 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v16];
        if (v18 && ![(MTRDevice *)self _attributeDataValue:v17 isEqualToDataValue:v18])
        {
          v45[0] = @"attributePath";
          v45[1] = @"data";
          v46[0] = v16;
          v46[1] = v18;
          v45[2] = @"previousData";
          v46[2] = v17;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
          [array addObject:v19];

          [array2 addObject:v16];
        }

        [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v12);
  }

  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v43 = 2112;
    v44 = array2;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "%@ report from expired expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ report from expired expected values %@", self, array2);
  }

  [(MTRDevice_Concrete *)self _reportAttributes:array];
  if (v30 && [(NSMutableDictionary *)self->_expectedValueCache count]&& ![(MTRDevice_Concrete *)self expirationCheckScheduled])
  {
    [v30 timeIntervalSinceDate:date];
    if (v21 >= 0.1)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0.1;
    }

    objc_initWeak(buf, self);
    v23 = dispatch_time(0, (v22 * 1000000000.0));
    queue = [(MTRDevice_Concrete *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393A14D8;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v32, buf);
    dispatch_after(v23, queue, block);

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }
}

- (void)_performScheduledExpirationCheck
{
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setExpirationCheckScheduled:0];
  [(MTRDevice_Concrete *)self _checkExpiredExpectedValues];

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)_attributeValueDictionaryForAttributePath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _lockedAttributeValueDictionaryForAttributePath:pathCopy];
  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (id)_lockedAttributeValueDictionaryForAttributePath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:pathCopy];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [date compare:v7];

    if (v8 != 1)
    {
      v10 = [v5 objectAtIndexedSubscript:1];

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:pathCopy];
  }

  v9 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = pathCopy;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ _attributeValueDictionaryForAttributePath: could not find cached attribute values for attribute %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ _attributeValueDictionaryForAttributePath: could not find cached attribute values for attribute %@", self, pathCopy);
    }
  }

LABEL_12:

  return v10;
}

- (id)_dataValueWithoutDataVersion:(id)version
{
  v15[2] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v4 = versionCopy;
  if (versionCopy && ([versionCopy objectForKeyedSubscript:@"type"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];

    if (v6)
    {
      v14[0] = @"type";
      v7 = [v4 objectForKeyedSubscript:@"type"];
      v14[1] = @"value";
      v15[0] = v7;
      v8 = [v4 objectForKeyedSubscript:@"value"];
      v15[1] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    else
    {
      v12 = @"type";
      v11 = [v4 objectForKeyedSubscript:@"type"];
      v13 = v11;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (void)_noteDataVersion:(id)version forClusterPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  if (versionCopy && pathCopy)
  {
    v8 = [(MTRDevice_Concrete *)self _clusterDataForPath:pathCopy];
    v9 = v8;
    if (v8)
    {
      dataVersion = [(MTRDeviceClusterData *)v8 dataVersion];
      v11 = [dataVersion isEqualToNumber:versionCopy];

      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      [(MTRDeviceClusterData *)v9 setPendingDataVersion:versionCopy];
    }

    else
    {
      v9 = objc_alloc_init(MTRDeviceClusterData);
      [(MTRDeviceClusterData *)v9 setPendingDataVersion:versionCopy];
    }

    clusterDataToPersist = self->_clusterDataToPersist;
    if (!clusterDataToPersist)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = self->_clusterDataToPersist;
      self->_clusterDataToPersist = dictionary;

      clusterDataToPersist = self->_clusterDataToPersist;
    }

    [(NSMutableDictionary *)clusterDataToPersist setObject:v9 forKeyedSubscript:pathCopy];
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      v20 = pathCopy;
      v21 = 2112;
      v22 = versionCopy;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "%@ updated DataVersion for %@ to %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ updated DataVersion for %@ to %@", self, pathCopy, versionCopy);
    }

    goto LABEL_17;
  }

  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v19 = 2112;
    v20 = pathCopy;
    v21 = 2112;
    v22 = versionCopy;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ Attempted to update data version with a nil value. clusterPath: %@, dataVersion: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "%@ Attempted to update data version with a nil value. clusterPath: %@, dataVersion: %@", self, pathCopy, versionCopy);
  }

LABEL_18:
}

- (BOOL)_attributeAffectsDeviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cluster = [configurationCopy cluster];
  unsignedLongValue = [cluster unsignedLongValue];

  if (unsignedLongValue != 29 || ([configurationCopy attribute], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedLongValue"), v6, v7 > 3) || v7 == 2)
  {
    attribute = [configurationCopy attribute];
    unsignedLongValue2 = [attribute unsignedLongValue];

    if ((unsignedLongValue2 - 65529) >= 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x1Du >> (unsignedLongValue2 + 7);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)_removeClusters:(id)clusters doRemoveFromDataStore:(BOOL)store
{
  storeCopy = store;
  v22 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  os_unfair_lock_assert_owner(&self->super._lock);
  [(NSMutableSet *)self->_persistedClusters minusSet:clustersCopy, clustersCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = clustersCopy;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [(NSCache *)self->_persistedClusterData removeObjectForKey:v10];
        [(NSMutableDictionary *)self->_clusterDataToPersist removeObjectForKey:v10];
        if (storeCopy)
        {
          _concreteController = [(MTRDevice_Concrete *)self _concreteController];
          controllerDataStore = [_concreteController controllerDataStore];
          nodeID = [(MTRDevice *)self nodeID];
          endpoint = [v10 endpoint];
          cluster = [v10 cluster];
          [controllerDataStore clearStoredClusterDataForNodeID:nodeID endpointID:endpoint clusterID:cluster];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)_removeAttributes:(id)attributes fromCluster:(id)cluster
{
  v20 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  clusterCopy = cluster;
  os_unfair_lock_assert_owner(&self->super._lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = attributesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(MTRDevice_Concrete *)self _removeCachedAttribute:*(*(&v15 + 1) + 8 * v11++) fromCluster:clusterCopy, v15];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(NSCache *)self->_persistedClusterData removeObjectForKey:clusterCopy];
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  controllerDataStore = [_concreteController controllerDataStore];
  nodeID = [(MTRDevice *)self nodeID];
  [controllerDataStore removeAttributes:v8 fromCluster:clusterCopy forNodeID:nodeID];
}

- (void)_pruneEndpointsIn:(id)in missingFrom:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = MEMORY[0x277CBEB58];
  v7 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:in];
  v27 = [v6 setWithArray:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
  v10 = [v8 setWithArray:v9];

  v26 = v10;
  [v27 minusSet:v10];
  val = self;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  obj = v27;
  v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v11)
  {
    v30 = *v41;
    do
    {
      v31 = v11;
      for (i = 0; i != v31; ++i)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v15 = val->_persistedClusters;
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v16)
        {
          v17 = *v37;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v36 + 1) + 8 * j);
              endpoint = [v19 endpoint];
              v21 = [endpoint isEqualToNumber:v13];

              if (v21)
              {
                [v14 addObject:v19];
              }
            }

            v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v16);
        }

        [(MTRDevice_Concrete *)val _removeClusters:v14 doRemoveFromDataStore:0];
        _concreteController = [(MTRDevice_Concrete *)val _concreteController];
        controllerDataStore = [_concreteController controllerDataStore];
        nodeID = [(MTRDevice *)val nodeID];
        [controllerDataStore clearStoredClusterDataForNodeID:nodeID endpointID:v13];

        objc_initWeak(&location, val);
        deviceController = val->super._deviceController;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_2393A260C;
        v33[3] = &unk_278A75698;
        objc_copyWeak(&v34, &location);
        v33[4] = v13;
        [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v33 errorHandler:0];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v11);
  }
}

- (void)_pruneClustersIn:(id)in missingFrom:(id)from forEndpoint:(id)endpoint
{
  v42 = *MEMORY[0x277D85DE8];
  inCopy = in;
  fromCopy = from;
  endpointCopy = endpoint;
  v10 = MEMORY[0x277CBEB58];
  selfCopy = self;
  v27 = inCopy;
  v11 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:inCopy];
  v12 = [v10 setWithArray:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
  v15 = [v13 setWithArray:v14];

  v28 = v15;
  [v12 minusSet:v15];
  v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = self->_persistedClusters;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        endpoint = [v20 endpoint];
        if ([endpoint isEqualToNumber:endpointCopy])
        {
          cluster = [v20 cluster];
          v23 = [v12 containsObject:cluster];

          if (v23)
          {
            [v31 addObject:v20];
          }
        }

        else
        {
        }
      }

      v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v17);
  }

  [(MTRDevice_Concrete *)selfCopy _removeClusters:v31 doRemoveFromDataStore:1];
  objc_initWeak(&location, selfCopy);
  deviceController = selfCopy->super._deviceController;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2393A2AC4;
  v32[3] = &unk_278A75800;
  objc_copyWeak(&v35, &location);
  v25 = v12;
  v33 = v25;
  v26 = endpointCopy;
  v34 = v26;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v32 errorHandler:0];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)_pruneAttributesIn:(id)in missingFrom:(id)from forCluster:(id)cluster
{
  inCopy = in;
  fromCopy = from;
  clusterCopy = cluster;
  v11 = MEMORY[0x277CBEB58];
  v12 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:inCopy];
  v13 = [v11 setWithArray:v12];

  v14 = MEMORY[0x277CBEB98];
  v15 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:fromCopy];
  v16 = [v14 setWithArray:v15];

  [v13 minusSet:v16];
  [(MTRDevice_Concrete *)self _removeAttributes:v13 fromCluster:clusterCopy];
  objc_initWeak(&location, self);
  deviceController = self->super._deviceController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2393A2ED0;
  v20[3] = &unk_278A75800;
  objc_copyWeak(&v23, &location);
  v18 = v13;
  v21 = v18;
  v19 = clusterCopy;
  v22 = v19;
  [(MTRDeviceController *)deviceController asyncDispatchToMatterQueue:v20 errorHandler:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_pruneStoredDataForPath:(id)path missingFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  fromCopy = from;
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(MTRDevice_Concrete *)self _dataStoreExists]|| [(NSMutableDictionary *)self->_clusterDataToPersist count])
  {
    cluster = [pathCopy cluster];
    unsignedLongValue = [cluster unsignedLongValue];

    if (unsignedLongValue == 29)
    {
      attribute = [pathCopy attribute];
      if ([attribute unsignedLongValue] == 3)
      {
        endpoint = [pathCopy endpoint];
        v12 = [endpoint isEqualToNumber:&unk_284C43AA8];

        if (v12)
        {
          v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
          [(MTRDevice_Concrete *)self _pruneEndpointsIn:v13 missingFrom:fromCopy];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      attribute2 = [pathCopy attribute];
      unsignedLongValue2 = [attribute2 unsignedLongValue];

      if (unsignedLongValue2 == 1)
      {
        v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
        endpoint2 = [pathCopy endpoint];
        [(MTRDevice_Concrete *)self _pruneClustersIn:v13 missingFrom:fromCopy forEndpoint:endpoint2];
LABEL_12:

        goto LABEL_13;
      }
    }

    attribute3 = [pathCopy attribute];
    unsignedLongValue3 = [attribute3 unsignedLongValue];

    if (unsignedLongValue3 == 65531)
    {
      v13 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
      endpoint2 = [pathCopy endpoint];
      cluster2 = [pathCopy cluster];
      v20 = [MTRClusterPath clusterPathWithEndpointID:endpoint2 clusterID:cluster2];
      [(MTRDevice_Concrete *)self _pruneAttributesIn:v13 missingFrom:fromCopy forCluster:v20];

      goto LABEL_12;
    }
  }

  else
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "%@ No data store to prune from", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ No data store to prune from", self);
    }
  }

LABEL_14:
}

- (id)_getAttributesToReportWithReportedValues:(id)values fromSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  v88 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  os_unfair_lock_assert_owner(&self->super._lock);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = valuesCopy;
  v5 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
  selfCopy = self;
  if (v5)
  {
    v65 = *v73;
    do
    {
      v66 = v5;
      for (i = 0; i != v66; ++i)
      {
        if (*v73 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v72 + 1) + 8 * i);
        [(NSDate *)v7 objectForKeyedSubscript:@"attributePath"];
        v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v9 = [(NSDate *)v7 objectForKeyedSubscript:@"data"];
        v10 = [(NSDate *)v7 objectForKeyedSubscript:@"error"];
        v11 = v10;
        if (v9 | v10)
        {
          if (v10)
          {
            v12 = [(MTRDevice_Concrete *)selfCopy _cachedAttributeValueForPath:*&v8];
            v13 = sub_2393D9044(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
              *buf = 138413314;
              v78 = selfCopy;
              v79 = 2112;
              v80 = v8;
              v81 = 2112;
              v82 = v11;
              v83 = 2112;
              v84 = v14;
              v85 = 2112;
              v86 = v12;
              _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ report %@ error %@ purge expected value %@ read cache %@", buf, 0x34u);
            }

            if (sub_2393D5398(1u))
            {
              v15 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
              sub_2393D5320(0, 1, "%@ report %@ error %@ purge expected value %@ read cache %@", selfCopy, *&v8, v11, v15, v12);
            }

            [(NSMutableDictionary *)selfCopy->_expectedValueCache setObject:0 forKeyedSubscript:*&v8];
            [(MTRDevice_Concrete *)selfCopy _setCachedAttributeValue:0 forPath:*&v8 fromSubscription:subscriptionCopy];
            v16 = v12;
LABEL_57:
            if (v16)
            {
              v40 = [(NSDate *)v7 mutableCopy];
              [v40 setObject:v16 forKeyedSubscript:@"previousData"];
              [array addObject:v40];
            }

            else
            {
              [array addObject:v7];
            }

            [array2 addObject:*&v8];
            goto LABEL_61;
          }

          v64 = [v9 objectForKeyedSubscript:@"dataVersion"];
          endpoint = [*&v8 endpoint];
          cluster = [*&v8 cluster];
          v62 = [MTRClusterPath clusterPathWithEndpointID:endpoint clusterID:cluster];

          if (v64)
          {
            [(MTRDevice_Concrete *)selfCopy _noteDataVersion:v64 forClusterPath:v62];
            v20 = [(MTRDevice_Concrete *)selfCopy _dataValueWithoutDataVersion:v9];

            v9 = v20;
          }

          v16 = [(MTRDevice_Concrete *)selfCopy _cachedAttributeValueForPath:*&v8];
          v21 = [(MTRDevice *)selfCopy _attributeDataValue:v9 isEqualToDataValue:v16];
          if ((v21 & 1) == 0)
          {
            [(MTRDevice_Concrete *)selfCopy _pruneStoredDataForPath:*&v8 missingFrom:v9];
            if (!selfCopy->_deviceConfigurationChanged)
            {
              v22 = [(MTRDevice_Concrete *)selfCopy _attributeAffectsDeviceConfiguration:*&v8];
              selfCopy->_deviceConfigurationChanged = v22;
              if (v22)
              {
                v23 = sub_2393D9044(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v78 = selfCopy;
                  v79 = 2112;
                  v80 = v8;
                  _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "%@ device configuration changed due to changes in attribute %@", buf, 0x16u);
                }

                if (sub_2393D5398(2u))
                {
                  sub_2393D5320(0, 2, "%@ device configuration changed due to changes in attribute %@", selfCopy, *&v8);
                }
              }
            }

            [(MTRDevice_Concrete *)selfCopy _setCachedAttributeValue:v9 forPath:*&v8 fromSubscription:subscriptionCopy];
            [(MTRDevice *)selfCopy _attributeValue:v9 reportedForPath:*&v8];
            cluster2 = [*&v8 cluster];
            if ([cluster2 unsignedLongValue] != 56)
            {
              goto LABEL_30;
            }

            attribute = [*&v8 attribute];
            if ([attribute unsignedLongValue])
            {
              goto LABEL_29;
            }

            shouldDetectTimeSynchronizationLoss = [(MTRDevice_Concrete *)selfCopy shouldDetectTimeSynchronizationLoss];

            if (shouldDetectTimeSynchronizationLoss)
            {
              v42 = [[MTRAttributeReport alloc] initWithResponseValue:v7 error:0];
              cluster2 = v42;
              if (v42)
              {
                attribute = [(MTRAttributeReport *)v42 value];
                unsignedLongLongValue = [attribute unsignedLongLongValue];
                v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(unsignedLongLongValue + 946684800000000) / 1000000.0];
                [v44 timeIntervalSinceNow];
                if (fabs(v45) > 300.0)
                {
                  loga = sub_2393D9044(0);
                  if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v78 = selfCopy;
                    _os_log_impl(&dword_238DAE000, loga, OS_LOG_TYPE_DEFAULT, "%@ Time synchronization loss detected", buf, 0xCu);
                  }

                  if (sub_2393D5398(2u))
                  {
                    sub_2393D5320(0, 2, "%@ Time synchronization loss detected", selfCopy);
                  }

                  selfCopy->_timeSynchronizationLossDetected = 1;
                  v46 = [MEMORY[0x277CBEAA8] now];
                  timeSynchronizationLossDetectedTime = selfCopy->_timeSynchronizationLossDetectedTime;
                  selfCopy->_timeSynchronizationLossDetectedTime = v46;
                }

LABEL_29:
              }

LABEL_30:
            }
          }

          v26 = [(NSMutableDictionary *)selfCopy->_expectedValueCache objectForKeyedSubscript:*&v8];
          if (v26)
          {
            v27 = 1;
          }

          else
          {
            v27 = v21;
          }

          log = v27;
          if (v27)
          {
            v28 = sub_2393D9044(0);
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            if (v26)
            {
              if (v29)
              {
                *buf = 138412802;
                v78 = selfCopy;
                v79 = 2112;
                v80 = v8;
                v81 = 2112;
                v82 = v9;
                _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_DEFAULT, "%@ report %@ value %@ filtered - expected value still present", buf, 0x20u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(0, 2, "%@ report %@ value %@ filtered - expected value still present", selfCopy, *&v8, v9);
              }
            }

            else
            {
              if (v29)
              {
                *buf = 138412802;
                v78 = selfCopy;
                v79 = 2112;
                v80 = v8;
                v81 = 2112;
                v82 = v9;
                _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_DEFAULT, "%@ report %@ value %@ filtered - same as read cache", buf, 0x20u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(0, 2, "%@ report %@ value %@ filtered - same as read cache", selfCopy, *&v8, v9);
              }
            }
          }

          cluster3 = [*&v8 cluster];
          if ([cluster3 unsignedLongValue] == 51)
          {
            attribute2 = [*&v8 attribute];
            v32 = [attribute2 unsignedLongValue] == 2;

            if (v32)
            {
              v33 = [v9 objectForKeyedSubscript:@"type"];
              v34 = [v33 isEqual:@"UnsignedInteger"];

              if (v34)
              {
                cluster3 = [v9 objectForKeyedSubscript:@"value"];
                unsignedLongLongValue2 = [cluster3 unsignedLongLongValue];
                v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-unsignedLongLongValue2];
                v56 = selfCopy->_estimatedStartTime;
                if (!selfCopy->_estimatedStartTime || [(NSDate *)v36 compare:?]== NSOrderedAscending)
                {
                  v37 = sub_2393D9044(0);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413058;
                    v78 = selfCopy;
                    v79 = 2048;
                    v80 = unsignedLongLongValue2;
                    v81 = 2112;
                    v82 = v56;
                    v83 = 2112;
                    v84 = v36;
                    _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_DEFAULT, "%@ General Diagnostics UpTime %.3lf: estimated start time %@ => %@", buf, 0x2Au);
                  }

                  if (sub_2393D5398(2u))
                  {
                    sub_2393D5320(0, 2, "%@ General Diagnostics UpTime %.3lf: estimated start time %@ => %@", selfCopy, *&unsignedLongLongValue2, v56, v36);
                  }

                  objc_storeStrong(&selfCopy->_estimatedStartTime, v36);
                }

                estimatedStartTimeFromGeneralDiagnosticsUpTime = selfCopy->_estimatedStartTimeFromGeneralDiagnosticsUpTime;
                selfCopy->_estimatedStartTimeFromGeneralDiagnosticsUpTime = v36;
                v39 = v36;

                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
          }

          if (log)
          {
            goto LABEL_61;
          }

          goto LABEL_57;
        }

        v17 = sub_2393D9044(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v78 = selfCopy;
          v79 = 2112;
          v80 = v8;
          v81 = 2112;
          v82 = v7;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ report %@ no data value or error: %@", buf, 0x20u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "%@ report %@ no data value or error: %@", selfCopy, *&v8, v7);
        }

        v16 = 0;
        v9 = 0;
LABEL_61:
      }

      v5 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v5);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v48 = array2;
  v49 = [v48 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v49)
  {
    v50 = *v69;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v69 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = *(*(&v68 + 1) + 8 * j);
        v53 = sub_2393D9044(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v78 = selfCopy;
          v79 = 2112;
          v80 = v52;
          _os_log_impl(&dword_238DAE000, v53, OS_LOG_TYPE_DEFAULT, "%@ report from reported values %@", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "%@ report from reported values %@", selfCopy, *&v52);
        }
      }

      v49 = [v48 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v49);
  }

  return array;
}

- (id)getAllAttributesReport
{
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  v22 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MTRDevice_Concrete *)selfCopy _knownClusters];
  v17 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v17)
  {
    v16 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v27 + 1) + 8 * i);
        v4 = [(MTRDevice_Concrete *)selfCopy _clusterDataForPath:v3];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v18 = v4;
        attributes = [v4 attributes];
        v5 = [attributes countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v5)
        {
          v6 = *v24;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v24 != v6)
              {
                objc_enumerationMutation(attributes);
              }

              v8 = *(*(&v23 + 1) + 8 * j);
              endpoint = [v3 endpoint];
              cluster = [v3 cluster];
              v11 = [MTRAttributePath attributePathWithEndpointID:endpoint clusterID:cluster attributeID:v8];

              v31[1] = @"data";
              v32[0] = v11;
              v31[0] = @"attributePath";
              v12 = [(os_unfair_lock_s *)v22 _lockedAttributeValueDictionaryForAttributePath:v11];
              v32[1] = v12;
              v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
              [array addObject:v13];
            }

            v5 = [attributes countByEnumeratingWithState:&v23 objects:v33 count:16];
          }

          while (v5);
        }

        selfCopy = v22;
      }

      v17 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(v22 + 2);

  return array;
}

- (void)setPersistedClusterData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(MTRDevice_Concrete *)self _doSetPersistedClusterData:dataCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v8 = 2048;
    v9 = [dataCopy count];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ setPersistedClusterData count: %lu", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ setPersistedClusterData count: %lu", self, [dataCopy count]);
  }
}

- (void)_doSetPersistedClusterData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy count])
  {
    os_unfair_lock_lock(&self->super._lock);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = dataCopy;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          [(NSMutableSet *)self->_persistedClusters addObject:v8];
          persistedClusterData = self->_persistedClusterData;
          v10 = [v4 objectForKeyedSubscript:v8];
          [(NSCache *)persistedClusterData setObject:v10 forKey:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v5);
    }

    [(MTRDevice_Concrete *)self _updateAttributeDependentDescriptionData];
    os_unfair_lock_lock(&self->_descriptionLock);
    v11 = self->_allNetworkFeatures;
    os_unfair_lock_unlock(&self->_descriptionLock);
    if (([(NSNumber *)v11 unsignedLongLongValue]& 1) == 0 && ([(NSNumber *)v11 unsignedLongLongValue]& 2) == 0)
    {
      v12 = [MTRClusterPath clusterPathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43AC0];
      v13 = [v4 objectForKeyedSubscript:v12];
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        attributes = [v13 attributes];
        v16 = [attributes objectForKeyedSubscript:&unk_284C43AD8];
        *buf = 138412802;
        selfCopy = self;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ after setting persisted data, network features: %@, root network commissioning featureMap: %@", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        attributes2 = [v13 attributes];
        v18 = [attributes2 objectForKeyedSubscript:&unk_284C43AD8];
        sub_2393D5320(0, 2, "%@ after setting persisted data, network features: %@, root network commissioning featureMap: %@", self, v11, v18);
      }
    }

    self->_deviceCachePrimed = 1;

    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)_setLastInitialSubscribeLatency:(id)latency
{
  latencyCopy = latency;
  os_unfair_lock_assert_owner(&self->super._lock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_estimatedSubscriptionLatency, latency);
  }
}

- (void)setPersistedDeviceData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "%@ setPersistedDeviceData: %@", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "%@ setPersistedDeviceData: %@", self, dataCopy);
  }

  os_unfair_lock_lock(&self->super._lock);
  v6 = [dataCopy objectForKeyedSubscript:@"lastInitialSubscribeLatency"];
  if (v6)
  {
    [(MTRDevice_Concrete *)self _setLastInitialSubscribeLatency:v6];
  }

  v7 = [dataCopy objectForKeyedSubscript:@"highestObservedEventNumber"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTRDevice_Concrete *)self setHighestObservedEventNumber:v7];
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_storePersistedDeviceData
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  _concreteController = [(MTRDevice_Concrete *)self _concreteController];
  controllerDataStore = [_concreteController controllerDataStore];

  if (controllerDataStore)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = dictionary;
    estimatedSubscriptionLatency = self->_estimatedSubscriptionLatency;
    if (estimatedSubscriptionLatency)
    {
      [dictionary setObject:estimatedSubscriptionLatency forKeyedSubscript:@"lastInitialSubscribeLatency"];
    }

    highestObservedEventNumber = [(MTRDevice_Concrete *)self highestObservedEventNumber];

    if (highestObservedEventNumber)
    {
      highestObservedEventNumber2 = [(MTRDevice_Concrete *)self highestObservedEventNumber];
      [v6 setObject:highestObservedEventNumber2 forKeyedSubscript:@"highestObservedEventNumber"];

      [(MTRDevice_Concrete *)self setHighestObservedEventNumberNeedsPersisting:0];
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "%@ _storePersistedDeviceData: %@", buf, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ _storePersistedDeviceData: %@", self, v6);
    }

    v11 = [v6 copy];
    nodeID = [(MTRDevice *)self nodeID];
    [controllerDataStore storeDeviceData:v11 forNodeID:nodeID];
  }
}

- (BOOL)deviceCachePrimed
{
  os_unfair_lock_lock(&self->super._lock);
  deviceCachePrimed = self->_deviceCachePrimed;
  os_unfair_lock_unlock(&self->super._lock);
  return deviceCachePrimed;
}

- (void)_setExpectedValue:(id)value attributePath:(id)path expirationTime:(id)time shouldReportValue:(BOOL *)reportValue attributeValueToReport:(id *)report expectedValueID:(unint64_t)d previousValue:(id *)previousValue
{
  v32[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  timeCopy = time;
  os_unfair_lock_assert_owner(&self->super._lock);
  *reportValue = 0;
  v16 = [(NSMutableDictionary *)self->_expectedValueCache objectForKeyedSubscript:pathCopy];
  v17 = v16;
  if (v16)
  {
    if (valueCopy)
    {
      v18 = [v16 objectAtIndexedSubscript:1];
      v19 = [(MTRDevice *)self _attributeDataValue:valueCopy isEqualToDataValue:v18];

      if (!v19)
      {
        *reportValue = 1;
        v20 = valueCopy;
        *report = valueCopy;
        *previousValue = [v17 objectAtIndexedSubscript:1];
      }

LABEL_16:
      v32[0] = timeCopy;
      v32[1] = valueCopy;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
      v32[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
      [(NSMutableDictionary *)self->_expectedValueCache setObject:v28 forKeyedSubscript:pathCopy];

      goto LABEL_17;
    }

    v21 = [v16 objectAtIndexedSubscript:2];
    if ([v21 unsignedLongLongValue] == d)
    {
      v29 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
      v23 = [v17 objectAtIndexedSubscript:1];
      v24 = [(MTRDevice *)self _attributeDataValue:v23 isEqualToDataValue:v29];

      if (!v24)
      {
        *reportValue = 1;
        *report = v29;
        *previousValue = [v17 objectAtIndexedSubscript:1];
        [(NSMutableDictionary *)self->_expectedValueCache setObject:0 forKeyedSubscript:pathCopy];
      }
    }
  }

  else
  {
    v21 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
    if (valueCopy)
    {
      if ([(MTRDevice *)self _attributeDataValue:valueCopy isEqualToDataValue:v21])
      {
        v22 = 0;
      }

      else
      {
        *reportValue = 1;
        v25 = valueCopy;
        *report = valueCopy;
        v26 = v21;
        v22 = v21;
      }

      *previousValue = v22;

      goto LABEL_16;
    }

    *previousValue = 0;
  }

LABEL_17:
}

- (id)_getAttributesToReportWithNewExpectedValues:(id)values expirationTime:(id)time expectedValueID:(unint64_t *)d
{
  v42 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  timeCopy = time;
  os_unfair_lock_assert_owner(&self->super._lock);
  expectedValueNextID = self->_expectedValueNextID;
  selfCopy = self;
  self->_expectedValueNextID = expectedValueNextID + 1;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = valuesCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v8)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"attributePath"];
        v12 = [v10 objectForKeyedSubscript:@"data"];
        buf[0] = 0;
        v27 = 0;
        v28 = 0;
        [(MTRDevice_Concrete *)selfCopy _setExpectedValue:v12 attributePath:v11 expirationTime:timeCopy shouldReportValue:buf attributeValueToReport:&v28 expectedValueID:expectedValueNextID previousValue:&v27];
        v13 = v28;
        v14 = v27;
        v15 = v14;
        if (buf[0] == 1)
        {
          if (v14)
          {
            v39[0] = @"attributePath";
            v39[1] = @"data";
            v40[0] = v11;
            v40[1] = v13;
            v39[2] = @"previousData";
            v40[2] = v14;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
          }

          else
          {
            v37[0] = @"attributePath";
            v37[1] = @"data";
            v38[0] = v11;
            v38[1] = v13;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
          }
          v16 = ;
          [array addObject:v16];

          [array2 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  if (d)
  {
    *d = expectedValueNextID;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = selfCopy;
    v35 = 2112;
    v36 = array2;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ report from new expected values %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ report from new expected values %@", selfCopy, array2);
  }

  return array;
}

- (void)setExpectedValues:(id)values expectedValueInterval:(id)interval expectedValueID:(unint64_t *)d
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  intervalCopy = interval;
  v10 = MEMORY[0x277CBEAA8];
  [intervalCopy doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceNow:v11 / 1000.0];
  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [v12 timeIntervalSinceNow];
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = valuesCopy;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ Setting expected values %@ with expiration time %f seconds from now", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    [v12 timeIntervalSinceNow];
    sub_2393D5320(0, 2, "%@ Setting expected values %@ with expiration time %f seconds from now", self, valuesCopy, v15);
  }

  os_unfair_lock_lock(&self->super._lock);
  v16 = [(MTRDevice_Concrete *)self _getAttributesToReportWithNewExpectedValues:valuesCopy expirationTime:v12 expectedValueID:d];
  [(MTRDevice_Concrete *)self _reportAttributes:v16];
  [(MTRDevice_Concrete *)self _checkExpiredExpectedValues];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)removeExpectedValuesForAttributePaths:(id)paths expectedValueID:(unint64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  os_unfair_lock_lock(&self->super._lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:*(*(&v11 + 1) + 8 * v10++) expectedValueID:d, v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d
{
  pathCopy = path;
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self _removeExpectedValueForAttributePath:pathCopy expectedValueID:d];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_removeExpectedValueForAttributePath:(id)path expectedValueID:(unint64_t)d
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->super._lock);
  v17 = 0;
  v15 = 0;
  v16 = 0;
  [(MTRDevice_Concrete *)self _setExpectedValue:0 attributePath:pathCopy expirationTime:0 shouldReportValue:&v17 attributeValueToReport:&v16 expectedValueID:d previousValue:&v15];
  v7 = v16;
  v8 = v15;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    if (v17)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    selfCopy = self;
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ remove expected value for path %@ should report %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    if (v17)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    sub_2393D5320(0, 2, "%@ remove expected value for path %@ should report %@", self, pathCopy, v11);
  }

  if (v17 == 1)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:pathCopy forKey:@"attributePath"];
    v13 = v12;
    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:@"data"];
    }

    if (v8)
    {
      [v13 setObject:v8 forKeyedSubscript:@"previousData"];
    }

    v18 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [(MTRDevice_Concrete *)self _reportAttributes:v14];
  }
}

- (id)newBaseDevice
{
  nodeID = [(MTRDevice *)self nodeID];
  deviceController = [(MTRDevice *)self deviceController];
  v5 = [MTRBaseDevice deviceWithNodeID:nodeID controller:deviceController];

  return v5;
}

- (id)_informationalNumberAtAttributePath:(id)path
{
  v12[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:pathCopy];
  if (v5)
  {
    v6 = [MTRAttributeReport alloc];
    v11[0] = @"attributePath";
    v11[1] = @"data";
    v12[0] = pathCopy;
    v12[1] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v8 = [(MTRAttributeReport *)v6 initWithResponseValue:v7 error:0];

    value = [(MTRAttributeReport *)v8 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)_informationalVendorID
{
  v3 = [MTRAttributePath attributePathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43B68 attributeID:&unk_284C43B80];
  v4 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v3];

  return v4;
}

- (id)_informationalProductID
{
  v3 = [MTRAttributePath attributePathWithEndpointID:&unk_284C43AA8 clusterID:&unk_284C43B68 attributeID:&unk_284C43A90];
  v4 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v3];

  return v4;
}

- (void)_addInformationalAttributesToCurrentMetricScope
{
  os_unfair_lock_assert_owner(&self->super._lock);
  _informationalVendorID = [(MTRDevice_Concrete *)self _informationalVendorID];
  v7 = 2;
  v8 = "dwnfw_device_vendor_id";
  unsignedShortValue = [_informationalVendorID unsignedShortValue];
  v10 = 2;

  sub_23948BD20(&v7);
  _informationalProductID = [(MTRDevice_Concrete *)self _informationalProductID];
  unsignedShortValue2 = [_informationalProductID unsignedShortValue];
  v7 = 2;
  v8 = "dwnfw_device_product_id";
  unsignedShortValue = unsignedShortValue2;
  v10 = 2;

  sub_23948BD20(&v7);
  _deviceUsesThread = [(MTRDevice_Concrete *)self _deviceUsesThread];
  v7 = 2;
  v8 = "dwnfw_device_uses_thread_BOOL";
  unsignedShortValue = _deviceUsesThread;
  v10 = 1;
  sub_23948BD20(&v7);
}

- (BOOL)_attributePathAffectsDescriptionData:(id)data
{
  dataCopy = data;
  os_unfair_lock_assert_owner(&self->super._lock);
  cluster = [dataCopy cluster];
  unsignedLongLongValue = [cluster unsignedLongLongValue];

  if (unsignedLongLongValue == 40)
  {
    attribute = [dataCopy attribute];
    unsignedLongLongValue2 = [attribute unsignedLongLongValue];

    v8 = ((unsignedLongLongValue2 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else if (unsignedLongLongValue == 49)
  {
    attribute2 = [dataCopy attribute];
    v8 = [attribute2 unsignedLongLongValue] == 65532;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateAttributeDependentDescriptionData
{
  os_unfair_lock_assert_owner(&self->super._lock);
  _informationalVendorID = [(MTRDevice_Concrete *)self _informationalVendorID];
  _informationalProductID = [(MTRDevice_Concrete *)self _informationalProductID];
  _networkFeatures = [(MTRDevice_Concrete *)self _networkFeatures];
  os_unfair_lock_lock(&self->_descriptionLock);
  vid = self->_vid;
  self->_vid = _informationalVendorID;
  v7 = _informationalVendorID;

  pid = self->_pid;
  self->_pid = _informationalProductID;
  v9 = _informationalProductID;

  allNetworkFeatures = self->_allNetworkFeatures;
  self->_allNetworkFeatures = _networkFeatures;

  os_unfair_lock_unlock(&self->_descriptionLock);
}

- (id)_endpointList
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:&unk_284C43AA8 clusterID:&unk_284C43A48 attributeID:&unk_284C43B98];
  v4 = [v3 mutableCopy];
  [v4 addObject:&unk_284C43AA8];

  return v4;
}

- (id)_cachedListOfNumbersValueForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  os_unfair_lock_assert_owner(&self->super._lock);
  v11 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  v12 = [(MTRDevice_Concrete *)self _cachedAttributeValueForPath:v11];
  v13 = [(MTRDevice_Concrete *)self arrayOfNumbersFromAttributeValue:v12];
  v14 = v13;
  if (v13)
  {
    array = v13;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v16 = array;

  return v16;
}

- (id)_serverListForEndpointID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->super._lock);
  v5 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:dCopy clusterID:&unk_284C43A48 attributeID:&unk_284C43A60];

  return v5;
}

- (id)_attributeListForEndpointID:(id)d clusterID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_assert_owner(&self->super._lock);
  v8 = [(MTRDevice_Concrete *)self _cachedListOfNumbersValueForEndpointID:dCopy clusterID:iDCopy attributeID:&unk_284C43BB0];

  return v8;
}

- (id)_networkFeatures
{
  v18 = *MEMORY[0x277D85DE8];
  [(MTRDevice_Concrete *)self _endpointList];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  obj = v14 = 0u;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [MTRAttributePath attributePathWithEndpointID:*(*(&v13 + 1) + 8 * i) clusterID:&unk_284C43AC0 attributeID:&unk_284C43AD8];
        v8 = [(MTRDevice_Concrete *)self _informationalNumberAtAttributePath:v7];
        v9 = v8;
        if (v8)
        {
          if (v3)
          {
            v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "unsignedLongLongValue") | objc_msgSend(v8, "unsignedLongLongValue")}];

            v3 = v10;
          }

          else
          {
            v3 = v8;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)controllerSuspended
{
  v3.receiver = self;
  v3.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v3 controllerSuspended];
  [(MTRDevice_Concrete *)self _cancelTimeUpdateTimer];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setSuspended:1];
  [(MTRDevice_Concrete *)self _resetSubscriptionWithReasonString:@"Controller suspended"];
  self->_reattemptingSubscription = 0;
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)controllerResumed
{
  v7 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = MTRDevice_Concrete;
  [(MTRDevice *)&v4 controllerResumed];
  os_unfair_lock_lock(&self->super._lock);
  [(MTRDevice_Concrete *)self setSuspended:0];
  if ([(MTRDevice *)self _delegateExists])
  {
    [(MTRDevice_Concrete *)self _ensureSubscriptionForExistingDelegates:@"Controller resumed"];
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring controller resume: no delegates", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ ignoring controller resume: no delegates", self);
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (optional<chip::Inet::IPAddress>)lastSubscriptionIPAddress
{
  os_unfair_lock_lock(&self->super._lock);
  *retstr = self->_lastSubscriptionIPAddress;

  os_unfair_lock_unlock(&self->super._lock);
  return result;
}

- (id).cxx_construct
{
  *(self + 456) = 0;
  *(self + 472) = 0;
  return self;
}

- (BOOL)_deviceHasActiveSubscription
{
  os_unfair_lock_lock(&self->super._lock);
  internalDeviceState = self->_internalDeviceState;
  v5 = internalDeviceState == 2 || internalDeviceState == 4;
  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)_deviceMayBeReachable
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->super._lock);
  lastSubscriptionActiveTime = [(MTRDevice_Concrete *)self lastSubscriptionActiveTime];

  if (lastSubscriptionActiveTime && (-[MTRDevice_Concrete lastSubscriptionActiveTime](self, "lastSubscriptionActiveTime"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceNow], v6 = v5, v4, v6 > -1.5))
  {
    v9 = -v6;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ _deviceMayBeReachable called and ignored, because last received communication from device %.6lf seconds ago", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ _deviceMayBeReachable called and ignored, because last received communication from device %.6lf seconds ago", self, *&v9);
    }

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ _deviceMayBeReachable called, resetting subscription", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ _deviceMayBeReachable called, resetting subscription", self);
    }

    objc_initWeak(buf, self);
    _concreteController = [(MTRDevice_Concrete *)self _concreteController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2393A7378;
    v11[3] = &unk_278A756E8;
    objc_copyWeak(&v12, buf);
    [_concreteController asyncGetCommissionerOnMatterQueue:v11 errorHandler:0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

+ (id)deviceWithNodeID:(unint64_t)d deviceController:(id)controller
{
  controllerCopy = controller;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v8 = [self deviceWithNodeID:v7 controller:controllerCopy];

  return v8;
}

@end