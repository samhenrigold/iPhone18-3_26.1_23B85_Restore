@interface HMDResidentDeviceManagerLegacy
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_createResidentDeviceWithModel:(id)model;
- (BOOL)_isHH1EOLEnabled;
- (BOOL)_shouldEnableCoordinationElection;
- (BOOL)hasFirstHomeManagerZoneFetch;
- (BOOL)hasFirstHomeZoneFetch;
- (BOOL)hasFirstLegacyFetch;
- (BOOL)hasTrustZoneCapableResident;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isOwnerUser;
- (BOOL)isResidentAvailable;
- (BOOL)isResidentElectionV2Enabled;
- (BOOL)isResidentEnabled;
- (BOOL)isResidentSupported;
- (HMDDevice)confirmedPrimaryResidentDevice;
- (HMDHome)home;
- (HMDResidentDevice)primaryResidentDevice;
- (HMDResidentDeviceManagerDelegate)delegate;
- (HMDResidentDeviceManagerLegacy)init;
- (HMDResidentDeviceManagerLegacy)initWithCoder:(id)coder;
- (HMDResidentDeviceManagerLegacy)initWithDataSource:(id)source;
- (NSArray)availableResidentDevices;
- (NSArray)residentDevices;
- (NSUUID)messageTargetUUID;
- (NSUUID)primaryResidentUUID;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dumpState;
- (id)ourSelf;
- (id)residentDeviceForDevice:(id)device;
- (id)residentWithUUID:(id)d;
- (id)shortDescription;
- (int64_t)atHomeLevel;
- (void)__currentDeviceUpdated:(id)updated completion:(id)completion;
- (void)_addResidentDevice:(id)device;
- (void)_electResidentDevice:(unint64_t)device;
- (void)_fixUpRemoteResidentDevice:(id)device existingResidentDevice:(id)residentDevice;
- (void)_handleCloudZoneReadyNotification:(id)notification;
- (void)_handleResidentDeviceUpdateEnabled:(id)enabled;
- (void)_registerForMessages;
- (void)_removeResidentDevice:(id)device;
- (void)_removeResidentDevice:(id)device reason:(id)reason;
- (void)_removeResidentDeviceWithModel:(id)model message:(id)message;
- (void)_run;
- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device;
- (void)_setupSessionWithPrimaryResidentDevice;
- (void)_startElectionAddOn;
- (void)_stopActingAsResidentWithReason:(id)reason;
- (void)_stopCoordinationElectionWithReason:(id)reason;
- (void)_stopLegacyElectionWithReason:(id)reason;
- (void)_teardownSessionWithPrimaryResidentDevice;
- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device;
- (void)_updateResidentAvailability;
- (void)_verifyCurrentResidentDevice;
- (void)addDataSource:(id)source;
- (void)atHomeLevelChanged:(int64_t)changed;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher;
- (void)confirmAsResident;
- (void)confirmOnAvailability;
- (void)confirmWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)electResidentDevice:(unint64_t)device;
- (void)encodeWithCoder:(id)coder;
- (void)handleCurrentDeviceChanged:(id)changed;
- (void)handleDeviceUpdated:(id)updated;
- (void)handleHomeUpdatedAccessories:(id)accessories;
- (void)handleResidentDeviceIsNotReachable:(id)reachable;
- (void)handleResidentDeviceIsReachable:(id)reachable;
- (void)invalidate;
- (void)notifyClientsOfUpdatedResidentDevice:(id)device;
- (void)notifyResidentAvailable:(BOOL)available;
- (void)notifyUpdatedPrimaryResident:(id)resident;
- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event;
- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error;
- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes;
- (void)run;
- (void)setFirstHomeManagerZoneFetch:(BOOL)fetch;
- (void)setFirstHomeZoneFetch:(BOOL)fetch;
- (void)setFirstLegacyFetch:(BOOL)fetch;
- (void)setHome:(id)home;
- (void)setResidentAvailable:(BOOL)available;
- (void)setResidentSupported:(BOOL)supported;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updatePrimaryResidentWithUUID:(id)d actions:(id)actions;
- (void)updateResidentAvailability;
@end

@implementation HMDResidentDeviceManagerLegacy

- (HMDResidentDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes
{
  v16 = *MEMORY[0x277D85DE8];
  onCopy = on;
  nodesCopy = nodes;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = nodesCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received updated active nodes: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  onCopy = on;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v11;
    v14 = 2112;
    v15 = onCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Election %@ failed: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event
{
  confirmedCopy = confirmed;
  v63 = *MEMORY[0x277D85DE8];
  onCopy = on;
  residentCopy = resident;
  eventCopy = event;
  queue = [(HMDResidentDeviceManagerLegacy *)self queue];
  dispatch_assert_queue_V2(queue);

  localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];
  v15 = localNetworkElection;
  if (localNetworkElection != onCopy)
  {

    goto LABEL_4;
  }

  isCurrentDevice = [residentCopy isCurrentDevice];

  if (isCurrentDevice)
  {
LABEL_4:
    primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
    if (HMFEqualObjects())
    {
      isConfirmed = [primaryResidentDevice isConfirmed];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (isConfirmed == confirmedCopy)
      {
        if (v22)
        {
          v52 = HMFGetLogIdentifier();
          v57 = 138543362;
          v58 = v52;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Resident device did not change after election.", &v57, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [(HMDResidentDeviceManagerLegacy *)selfCopy _run];
        goto LABEL_19;
      }

      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMFBooleanToString();
        v57 = 138543618;
        v58 = v23;
        v59 = 2112;
        v60 = v24;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating current resident confirmed to %@", &v57, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      home = [(HMDResidentDeviceManagerLegacy *)selfCopy home];
      v26 = [HMDResidentDeviceModel alloc];
      identifier = [residentCopy identifier];
      uuid = [home uuid];
      v29 = [(HMDBackingStoreModelObject *)v26 initWithObjectChangeType:2 uuid:identifier parentUUID:uuid];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:confirmedCopy];
      [(HMDResidentDeviceModel *)v29 setConfirmed:v30];

      backingStore = [home backingStore];
      v32 = +[HMDBackingStoreTransactionOptions defaultResidenceOptions];
      v33 = [backingStore transaction:@"residentConfirmed" options:v32];

      [(HMDHomeModel *)v33 add:v29 withMessage:0];
      [(HMDHomeModel *)v33 run];
      if (!eventCopy)
      {
LABEL_15:

LABEL_19:
        goto LABEL_20;
      }

      v34 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v34 submitLogEvent:eventCopy];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v57 = 138543874;
        v58 = v38;
        v59 = 2112;
        v60 = primaryResidentDevice;
        v61 = 2112;
        v62 = residentCopy;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Resident device changed from %@ to %@ after election. Confirming...", &v57, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      home = [(HMDResidentDeviceManagerLegacy *)selfCopy2 home];
      v39 = [HMDResidentDeviceModel alloc];
      identifier2 = [residentCopy identifier];
      uuid2 = [home uuid];
      v29 = [(HMDBackingStoreModelObject *)v39 initWithObjectChangeType:2 uuid:identifier2 parentUUID:uuid2];

      v42 = [MEMORY[0x277CCABB0] numberWithBool:confirmedCopy];
      [(HMDResidentDeviceModel *)v29 setConfirmed:v42];

      v43 = [HMDHomeModel alloc];
      uuid3 = [home uuid];
      homeManager = [home homeManager];
      uuid4 = [homeManager uuid];
      v33 = [(HMDBackingStoreModelObject *)v43 initWithObjectChangeType:2 uuid:uuid3 parentUUID:uuid4];

      identifier3 = [residentCopy identifier];
      uUIDString = [identifier3 UUIDString];
      [(HMDHomeModel *)v33 setPrimaryResidentUUID:uUIDString];

      backingStore2 = [home backingStore];
      v50 = +[HMDBackingStoreTransactionOptions defaultResidenceOptions];
      v34 = [backingStore2 transaction:@"electResidentDevice" options:v50];

      [v34 add:v33 withMessage:0];
      [v34 add:v29 withMessage:0];
      [v34 run];
      if (eventCopy)
      {
        v51 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v51 submitLogEvent:eventCopy];
      }
    }

    goto LABEL_15;
  }

  v53 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = HMFGetLogIdentifier();
    v57 = 138543618;
    v58 = v56;
    v59 = 2112;
    v60 = residentCopy;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Coordination add-on elected %@ as primary resident by local mesh, but we're not the primary resident so waiting for its cloud push", &v57, 0x16u);
  }

  objc_autoreleasePoolPop(v53);
LABEL_20:
}

- (int64_t)atHomeLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  atHomeLevel = [WeakRetained atHomeLevel];

  return atHomeLevel;
}

- (BOOL)isOwnerUser
{
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  isOwnerUser = [home isOwnerUser];

  return isOwnerUser;
}

- (BOOL)isResidentEnabled
{
  ourSelf = [(HMDResidentDeviceManagerLegacy *)self ourSelf];
  isEnabled = [ourSelf isEnabled];

  return isEnabled;
}

- (void)_removeResidentDeviceWithModel:(id)model message:(id)message
{
  v61 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  [messageCopy transactionResult];
  v47 = v46 = self;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v9 = [residentDevices countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(residentDevices);
      }

      v13 = *(*(&v50 + 1) + 8 * v12);
      uuid = [modelCopy uuid];
      identifier = [v13 identifier];
      v16 = [uuid isEqual:identifier];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [residentDevices countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    responseHandler2 = v13;

    if (!responseHandler2)
    {
      goto LABEL_13;
    }

    v18 = messageCopy;
    transactionResult = [messageCopy transactionResult];
    v20 = [transactionResult source] == 2 || objc_msgSend(transactionResult, "source") == 3;
    v30 = v47;
    dataSource = [(HMDResidentDeviceManagerLegacy *)v46 dataSource];
    appleAccountManager = [dataSource appleAccountManager];
    device = [appleAccountManager device];

    device2 = [responseHandler2 device];
    LODWORD(appleAccountManager) = [device2 isEqual:device];

    if (appleAccountManager && v20)
    {
      v45 = [responseHandler2 modelObjectWithChangeType:1 version:4];
      v35 = objc_autoreleasePoolPush();
      v36 = v46;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = HMFGetLogIdentifier();
        device3 = [responseHandler2 device];
        *buf = 138543618;
        v55 = v38;
        v56 = 2112;
        v57 = device3;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Resident device was removed by another device, adding back - %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      home = [(HMDResidentDeviceManagerLegacy *)v36 home];
      backingStore = [home backingStore];
      v42 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v43 = [backingStore transaction:@"residentAddedPushback" options:v42];

      [v43 add:v45];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __73__HMDResidentDeviceManagerLegacy__removeResidentDeviceWithModel_message___block_invoke;
      v48[3] = &unk_2797358C8;
      v48[4] = v36;
      v49 = v45;
      v44 = v45;
      [v43 save:v48];

      v30 = v47;
    }

    else
    {
      [(HMDResidentDeviceManagerLegacy *)v46 _removeResidentDevice:responseHandler2];
    }

    [v30 markChanged];
    [v18 respondWithPayload:0];

    goto LABEL_25;
  }

LABEL_9:

LABEL_13:
  v21 = objc_autoreleasePoolPush();
  v22 = HMFGetOSLogHandle();
  v18 = messageCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    uuid2 = [modelCopy uuid];
    uUIDString = [uuid2 UUIDString];
    home2 = [(HMDResidentDeviceManagerLegacy *)v46 home];
    uuid3 = [home2 uuid];
    uUIDString2 = [uuid3 UUIDString];
    *buf = 138543874;
    v55 = v23;
    v56 = 2114;
    v57 = uUIDString;
    v58 = 2114;
    v59 = uUIDString2;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove resident device %{public}@ for home %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  responseHandler = [v18 responseHandler];

  v30 = v47;
  if (responseHandler)
  {
    responseHandler2 = [v18 responseHandler];
    transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(responseHandler2 + 2))(responseHandler2, transactionResult, 0);
LABEL_25:
  }
}

void __73__HMDResidentDeviceManagerLegacy__removeResidentDeviceWithModel_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  [v2 saveWithReason:@"residentAddedPushback" information:0 postSyncNotification:0 objectChange:*(a1 + 40) != 0];
}

- (BOOL)_createResidentDeviceWithModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dataSource = [(HMDResidentDeviceManagerLegacy *)self dataSource];
  v6 = [dataSource createResidentDeviceWithModel:modelCopy];

  if (v6)
  {
    home = [(HMDResidentDeviceManagerLegacy *)self home];
    [v6 configureWithHome:home];

    [(HMDResidentDeviceManagerLegacy *)self _addResidentDevice:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      uuid = [modelCopy uuid];
      uUIDString = [uuid UUIDString];
      home2 = [(HMDResidentDeviceManagerLegacy *)self home];
      uuid2 = [home2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = uUIDString;
      v21 = 2114;
      v22 = uUIDString2;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to add resident device %{public}@ for home %{public}@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v6 != 0;
}

- (void)updatePrimaryResidentWithUUID:(id)d actions:(id)actions
{
  dCopy = d;
  actionsCopy = actions;
  primaryResidentUUID = [(HMDResidentDeviceManagerLegacy *)self primaryResidentUUID];
  if ((HMFEqualObjects() & 1) == 0)
  {
    [actionsCopy markChanged];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDResidentDeviceManagerLegacy_updatePrimaryResidentWithUUID_actions___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v11 = actionsCopy;
    v12 = dCopy;
    dispatch_async(queue, block);
  }
}

void __72__HMDResidentDeviceManagerLegacy_updatePrimaryResidentWithUUID_actions___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _teardownSessionWithPrimaryResidentDevice];
  v2 = [*(a1 + 40) source] == 2 || objc_msgSend(*(a1 + 40), "source") == 3;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v7 = *(v4 + 7);
    v24 = [v7 isEqual:v6];
    if (v24)
    {
      v8 = 0;
    }

    else
    {
      objc_storeStrong(v4 + 7, v3);
      v9 = *(v4 + 3);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = ____HMDResidentDeviceManagerUpdatePrimaryResidentUUID_block_invoke;
      v29[3] = &unk_279728880;
      v30 = v7;
      v10 = [v9 objectsPassingTest:v29];
      v8 = [v10 anyObject];
    }

    v11 = *(v4 + 3);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ____HMDResidentDeviceManagerUpdatePrimaryResidentUUID_block_invoke_2;
    v27[3] = &unk_279728880;
    v23 = v6;
    v28 = v23;
    v12 = [v11 objectsPassingTest:v27];
    v13 = [v12 anyObject];

    os_unfair_lock_unlock(v4 + 2);
    v14 = [v4 legacyElection];
    if (!v14)
    {
      v14 = [v4 localNetworkElection];
    }

    [v14 primaryResidentChanged:v13 previousResidentDevice:v8];
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFBooleanToString();
      *buf = 138544130;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident changed (from cloud: %@): %@ -> %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    if ((v24 & 1) == 0)
    {
      if (v8)
      {
        [v16 notifyClientsOfUpdatedResidentDevice:v8];
      }

      [v16 notifyUpdatedPrimaryResident:v13];
      v20 = [v16 home];
      v21 = [v20 backingStore];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = ____HMDResidentDeviceManagerUpdatePrimaryResidentUUID_block_invoke_492;
      v25[3] = &unk_2797359D8;
      v26 = v16;
      [v21 submitBlock:v25];
    }

    if (((v24 | !v2) & 1) == 0)
    {
      v22 = [*(a1 + 32) legacyElection];
      [v22 confirmPrimaryResident];
    }
  }

  else
  {
  }
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = removedCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    [(HMDResidentDeviceManagerLegacy *)self _removeResidentDeviceWithModel:v8 message:messageCopy];
  }

  else
  {
    responseHandler = [messageCopy responseHandler];

    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(responseHandler + 16))(responseHandler, v10, 0);

    messageCopy = responseHandler;
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = valuesCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11)
  {
    uuid = [v11 uuid];
    v14 = [(HMDResidentDeviceManagerLegacy *)self residentWithUUID:uuid];

    if (v14)
    {
      [v14 transactionObjectUpdated:updatedCopy newValues:v12 message:messageCopy];
    }

    else
    {
      transactionResult = [messageCopy transactionResult];
      if ([(HMDResidentDeviceManagerLegacy *)self _createResidentDeviceWithModel:v12])
      {
        [transactionResult markChanged];
        [messageCopy respondWithPayload:0];
      }

      else
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [messageCopy respondWithError:v16];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v14];
  }
}

- (void)_verifyCurrentResidentDevice
{
  v52 = *MEMORY[0x277D85DE8];
  if (!self->_verifyCurrentResidentDevice)
  {
    return;
  }

  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Verifying resident device objects", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  self->_verifyCurrentResidentDevice = 0;
  home = [(HMDResidentDeviceManagerLegacy *)selfCopy home];
  backingStore = [home backingStore];
  v8 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v37 = [backingStore transaction:@"Remove Invalid Resident" options:v8];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)selfCopy residentDevices];
  v10 = [residentDevices countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v10)
  {

    goto LABEL_25;
  }

  v12 = v10;
  v35 = 0;
  v13 = *v42;
  *&v11 = 138543874;
  v33 = v11;
  v39 = selfCopy;
  do
  {
    v14 = 0;
    v38 = v12;
    do
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(residentDevices);
      }

      v15 = *(*(&v41 + 1) + 8 * v14);
      device = [v15 device];
      dataSource = [(HMDResidentDeviceManagerLegacy *)selfCopy dataSource];
      appleAccountManager = [dataSource appleAccountManager];
      device2 = [appleAccountManager device];

      if ([device isCurrentDevice])
      {
        v20 = residentDevices;
        if ([device isEqual:device2])
        {
          uuid = [home uuid];
          identifier = [device2 identifier];
          v23 = [HMDResidentDevice deriveUUIDFromHomeUUID:uuid deviceUUID:identifier];

          identifier2 = [v15 identifier];
          LOBYTE(uuid) = [identifier2 isEqual:v23];

          if ((uuid & 1) == 0)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = v39;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v28 = v36 = v25;
              *buf = v33;
              v46 = v28;
              v47 = 2112;
              v48 = v15;
              v49 = 2114;
              v50 = v23;
              _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Current UUID of %@ does not match expected %{public}@, removing current model", buf, 0x20u);

              v25 = v36;
            }

            objc_autoreleasePoolPop(v25);
            goto LABEL_18;
          }
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v32;
            v47 = 2112;
            v48 = v15;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HMDResidentDevice referencing stale currentDevice %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
LABEL_18:
          v23 = [v15 modelObjectWithChangeType:3 version:4];
          [v37 add:v23];
          v35 = 1;
        }

        residentDevices = v20;

        v12 = v38;
        selfCopy = v39;
      }

      ++v14;
    }

    while (v12 != v14);
    v12 = [residentDevices countByEnumeratingWithState:&v41 objects:v51 count:16];
  }

  while (v12);

  if (v35)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __62__HMDResidentDeviceManagerLegacy__verifyCurrentResidentDevice__block_invoke;
    v40[3] = &unk_2797359D8;
    v40[4] = selfCopy;
    [v37 run:v40];
  }

LABEL_25:
}

void __62__HMDResidentDeviceManagerLegacy__verifyCurrentResidentDevice__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v1 = [v2 homeManager];
  [v1 verifyCurrentDeviceResidentStatus];
}

- (void)_handleCloudZoneReadyNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"HMDCR.id"];
  [userInfo hmf_BOOLForKey:@"HMDCR.stc"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUIDString = [v6 UUIDString];
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = uUIDString;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cloud manager completed initial fetch for zone %{public}@, didServerTokenChange: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  queue = selfCopy->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke;
  v15[3] = &unk_2797359B0;
  v15[4] = selfCopy;
  v16 = v6;
  v14 = v6;
  dispatch_async(queue, v15);
}

void __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v2 zoneID];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      [*(a1 + 32) setFirstHomeZoneFetch:1];
      if ([*(a1 + 32) hasFirstLegacyFetch] && objc_msgSend(*(a1 + 32), "hasFirstHomeManagerZoneFetch"))
      {
        v7 = [*(a1 + 32) hasFirstHomeZoneFetch];
      }

      else
      {
        v7 = 0;
      }

      v10 = [v3 backingStore];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_2;
      v19[3] = &unk_2797359D8;
      v19[4] = *(a1 + 32);
      [v10 submitBlock:v19];

      if ((v7 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"];
      LODWORD(v8) = [v8 isEqual:v9];

      if (!v8)
      {
        goto LABEL_21;
      }

      [*(a1 + 32) setFirstHomeManagerZoneFetch:1];
      if (![*(a1 + 32) hasFirstLegacyFetch] || !objc_msgSend(*(a1 + 32), "hasFirstHomeManagerZoneFetch") || !objc_msgSend(*(a1 + 32), "hasFirstHomeZoneFetch"))
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    [*(a1 + 32) setFirstLegacyFetch:1];
    if (![*(a1 + 32) hasFirstLegacyFetch] || !objc_msgSend(*(a1 + 32), "hasFirstHomeManagerZoneFetch") || (objc_msgSend(*(a1 + 32), "hasFirstHomeZoneFetch") & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = [*(a1 + 32) dataSource];
  v12 = [v11 isResidentCapable];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Confirming primary resident after first fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v3 backingStore];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_222;
    v18[3] = &unk_2797359D8;
    v18[4] = *(a1 + 32);
    [v17 submitBlock:v18];
  }

LABEL_21:
}

void __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) cloudReadyPromise];
  [v1 fulfillWithNoValue];
}

void __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_222(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_2_223;
  block[3] = &unk_279735D00;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __68__HMDResidentDeviceManagerLegacy__handleCloudZoneReadyNotification___block_invoke_2_223(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyElection];
  [v2 confirmPrimaryResident];

  v3 = *(a1 + 32);

  return [v3 _verifyCurrentResidentDevice];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"HM.home"];

  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  [coderCopy encodeConditionalObject:primaryResidentDevice forKey:@"HM.currentResidentDevice"];

  primaryResidentUUID = [(HMDResidentDeviceManagerLegacy *)self primaryResidentUUID];
  [coderCopy encodeConditionalObject:primaryResidentUUID forKey:@"HM.currentResidentDeviceUUID"];

  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  [coderCopy encodeObject:residentDevices forKey:@"HM.residentDevices"];
}

- (HMDResidentDeviceManagerLegacy)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDResidentDeviceManagerLegacy *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.home"];
    objc_storeWeak(&v5->_home, v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.currentResidentDevice"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.currentResidentDeviceUUID"];
    primaryResidentUUID = v5->_primaryResidentUUID;
    v5->_primaryResidentUUID = v8;

    if (v5->_primaryResidentUUID)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 == 0;
    }

    if (!v10)
    {
      identifier = [v7 identifier];
      v12 = v5->_primaryResidentUUID;
      v5->_primaryResidentUUID = identifier;
    }

    v13 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"HM.residentDevices"];

    v17 = [MEMORY[0x277CBEB58] setWithArray:v16];
    residentDevices = v5->_residentDevices;
    v5->_residentDevices = v17;

    v5->_verifyCurrentResidentDevice = [(NSMutableSet *)v5->_residentDevices count]!= 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v25 + 1) + 8 * i) isEnabled])
          {
            v5->_residentAvailable = 1;
            goto LABEL_17;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v5;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  uuid = [home uuid];

  return uuid;
}

- (id)dumpState
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  legacyElection = [(HMDResidentDeviceManagerLegacy *)self legacyElection];

  if (legacyElection)
  {
    legacyElection2 = [(HMDResidentDeviceManagerLegacy *)self legacyElection];
    dumpState = [legacyElection2 dumpState];
    [dictionary setObject:dumpState forKeyedSubscript:@"Election.Legacy"];
  }

  localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];

  if (localNetworkElection)
  {
    localNetworkElection2 = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];
    dumpState2 = [localNetworkElection2 dumpState];
    [dictionary setObject:dumpState2 forKeyedSubscript:@"Election.Coordination"];
  }

  v10 = MEMORY[0x277CCACA8];
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  v13 = v12 = dictionary;
  device = [v13 device];
  identifier = [device identifier];
  uUIDString2 = [identifier UUIDString];
  [(HMDResidentDeviceManagerLegacy *)self isResidentAvailable];
  v17 = HMFBooleanToString();
  [(HMDResidentDeviceManagerLegacy *)self isResidentSupported];
  v18 = HMFBooleanToString();
  v19 = [v10 stringWithFormat:@"home: %@, primaryResidentDevice: %@ isResidentAvailable: %@, isResidentSupported: %@", uUIDString, uUIDString2, v17, v18];
  v34 = v12;
  [v12 setObject:v19 forKeyedSubscript:@"State"];

  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v22 = [residentDevices countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(residentDevices);
        }

        dumpState3 = [*(*(&v35 + 1) + 8 * i) dumpState];
        [array addObject:dumpState3];
      }

      v23 = [residentDevices countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }

  [v34 setObject:array forKeyedSubscript:@"Residents"];
  messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];
  dumpState4 = [deviceMonitor dumpState];
  [v34 setObject:dumpState4 forKeyedSubscript:@"Remote Device Monitor"];

  return v34;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_286509E58;
  }

  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v9 = [v5 stringWithFormat:@"<%@%@, Resident Devices = %@", shortDescription, v7, residentDevices];

  if (pointerCopy)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  messageTargetUUID = [(HMDResidentDeviceManagerLegacy *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device
{
  reachabilityCopy = reachability;
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queue = [(HMDResidentDeviceManagerLegacy *)self queue];
  dispatch_assert_queue_V2(queue);

  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  device = [deviceCopy device];
  isCurrentDevice = [device isCurrentDevice];

  if (isCurrentDevice)
  {
    if (reachabilityCopy && ([primaryResidentDevice isReachable] & 1) == 0)
    {
      device2 = [primaryResidentDevice device];
      isCurrentDevice2 = [device2 isCurrentDevice];

      if ((isCurrentDevice2 & 1) == 0)
      {
        [(HMDResidentDeviceManagerLegacy *)self _electResidentDevice:1];
      }
    }
  }

  else if ([deviceCopy isReachable] != reachabilityCopy)
  {
    [deviceCopy setReachable:reachabilityCopy];
    v13 = [primaryResidentDevice isEqual:deviceCopy];
    if (reachabilityCopy)
    {
      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting up session with the primary resident and subscribing for notifications", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDResidentDeviceManagerLegacy *)selfCopy _setupSessionWithPrimaryResidentDevice];
        home = [(HMDResidentDeviceManagerLegacy *)selfCopy home];
        [home subscribeForNotificationsFromRemoteGateway];
      }
    }

    else if (v13)
    {
      [(HMDResidentDeviceManagerLegacy *)self _teardownSessionWithPrimaryResidentDevice];
      messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
      secureRemoteTransport = [messageDispatcher secureRemoteTransport];
      deviceMonitor = [secureRemoteTransport deviceMonitor];
      isReachable = [deviceMonitor isReachable];

      if (isReachable)
      {
        [(HMDResidentDeviceManagerLegacy *)self _electResidentDevice:1];
      }
    }

    [(HMDResidentDeviceManagerLegacy *)self notifyClientsOfUpdatedResidentDevice:deviceCopy];
  }
}

- (void)handleResidentDeviceIsNotReachable:(id)reachable
{
  reachableCopy = reachable;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDResidentDeviceManagerLegacy_handleResidentDeviceIsNotReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = reachableCopy;
  selfCopy = self;
  v6 = reachableCopy;
  dispatch_async(queue, v7);
}

void __69__HMDResidentDeviceManagerLegacy_handleResidentDeviceIsNotReachable___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [*(a1 + 40) residentDeviceForDevice:v4];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v9;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that resident device is not reachable: %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 40) _updateReachability:0 forResidentDevice:v5];
    }
  }
}

- (void)handleResidentDeviceIsReachable:(id)reachable
{
  reachableCopy = reachable;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDResidentDeviceManagerLegacy_handleResidentDeviceIsReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = reachableCopy;
  selfCopy = self;
  v6 = reachableCopy;
  dispatch_async(queue, v7);
}

void __66__HMDResidentDeviceManagerLegacy_handleResidentDeviceIsReachable___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [*(a1 + 40) residentDeviceForDevice:v4];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v9;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that resident device is reachable: %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 40) _updateReachability:1 forResidentDevice:v5];
    }
  }
}

- (void)_electResidentDevice:(unint64_t)device
{
  legacyElection = [(HMDResidentDeviceManagerLegacy *)self legacyElection];
  [legacyElection performElectionWithReason:device];
}

- (void)electResidentDevice:(unint64_t)device
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HMDResidentDeviceManagerLegacy_electResidentDevice___block_invoke;
  v4[3] = &unk_279734BB8;
  v4[4] = self;
  v4[5] = device;
  dispatch_async(queue, v4);
}

- (void)__currentDeviceUpdated:(id)updated completion:(id)completion
{
  updatedCopy = updated;
  completionCopy = completion;
  ourSelf = [(HMDResidentDeviceManagerLegacy *)self ourSelf];
  if (ourSelf)
  {
    home = [(HMDResidentDeviceManagerLegacy *)self home];
    backingStore = [home backingStore];
    v10 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v11 = [backingStore transaction:@"residentUpdated" options:v10];

    v12 = [HMDResidentDeviceModel alloc];
    identifier = [ourSelf identifier];
    uuid = [home uuid];
    v15 = [(HMDBackingStoreModelObject *)v12 initWithObjectChangeType:2 uuid:identifier parentUUID:uuid];

    identifier2 = [updatedCopy identifier];
    uUIDString = [identifier2 UUIDString];
    [(HMDResidentDeviceModel *)v15 setDeviceUUID:uUIDString];

    [(HMDResidentDeviceModel *)v15 setDevice:updatedCopy];
    [v11 add:v15];
    [v11 run:completionCopy];
  }
}

- (void)handleDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDResidentDeviceManagerLegacy_handleDeviceUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(queue, v7);
}

void __54__HMDResidentDeviceManagerLegacy_handleDeviceUpdated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    if ([v4 isCurrentDevice])
    {
      [*(a1 + 40) __currentDeviceUpdated:v4 completion:0];
    }

    v5 = [*(a1 + 40) ourSelf];
    v6 = v5;
    if (v5 && [v5 isEnabled])
    {
      [*(a1 + 40) _startElectionAddOn];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resident device is nil or not enabled", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)handleCurrentDeviceChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDResidentDeviceManagerLegacy_handleCurrentDeviceChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __61__HMDResidentDeviceManagerLegacy_handleCurrentDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 isResidentSupported];
    [*(a1 + 40) setResidentSupported:1];
    v8 = [v5 capabilities];
    v9 = [v8 isResidentCapable];

    if (v9)
    {
      if (v7)
      {
        v10 = [*(a1 + 40) notificationCenter];
        [v10 addObserver:*(a1 + 40) selector:sel_handleDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];
      }

      v11 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__HMDResidentDeviceManagerLegacy_handleCurrentDeviceChanged___block_invoke_2;
      v12[3] = &unk_2797359D8;
      v12[4] = v11;
      [v11 __currentDeviceUpdated:v5 completion:v12];
    }
  }

  else
  {
    [v6 setResidentSupported:0];
    [*(a1 + 40) _teardownSessionWithPrimaryResidentDevice];
    [*(a1 + 40) run];
  }
}

- (void)handleHomeUpdatedAccessories:(id)accessories
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDResidentDeviceManagerLegacy_handleHomeUpdatedAccessories___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__HMDResidentDeviceManagerLegacy_handleHomeUpdatedAccessories___block_invoke(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isOwnerUser];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(v1 + 32);
    v6 = HMFGetOSLogHandle();
    v28 = v1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that accessories changed in home, auditing residents", buf, 0xCu);

      v1 = v28;
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(v1 + 32) dataSource];
    v9 = [v8 appleAccountManager];
    v10 = [v9 account];

    if (v10)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [*(v1 + 32) residentDevices];
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v30;
        *&v13 = 138543618;
        v27 = v13;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [v17 device];
            v19 = [v18 isCurrentDevice];

            if ((v19 & 1) == 0)
            {
              v20 = [v10 devices];
              v21 = [v17 device];
              v22 = [v20 containsObject:v21];

              if ((v22 & 1) == 0)
              {
                v23 = objc_autoreleasePoolPush();
                v24 = *(v1 + 32);
                v25 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = HMFGetLogIdentifier();
                  *buf = v27;
                  v34 = v26;
                  v35 = 2112;
                  v36 = v17;
                  _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Removing stale resident: %@", buf, 0x16u);

                  v1 = v28;
                }

                objc_autoreleasePoolPop(v23);
                [*(v1 + 32) removeResidentDevice:v17];
              }
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)_handleResidentDeviceUpdateEnabled:(id)enabled
{
  v63 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = [enabledCopy uuidForKey:@"kIdentifierKey"];
  if (v5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
    v7 = [residentDevices countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v55;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(residentDevices);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:v5];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [residentDevices countByEnumeratingWithState:&v54 objects:v58 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_16;
      }

      v53 = 0;
      messagePayload = [enabledCopy messagePayload];
      v16 = [messagePayload hmf_BOOLForKey:@"kEnabledKey" isPresent:&v53];

      if (v53)
      {
        home = [(HMDResidentDeviceManagerLegacy *)self home];
        backingStore = [home backingStore];
        v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        responseHandler2 = [backingStore transaction:@"residentDeviceUpdateEnabled" options:v19];

        v21 = [HMDResidentDeviceModel alloc];
        identifier2 = [v14 identifier];
        uuid = [home uuid];
        v24 = [(HMDBackingStoreModelObject *)v21 initWithObjectChangeType:2 uuid:identifier2 parentUUID:uuid];

        v25 = [MEMORY[0x277CCABB0] numberWithBool:v16];
        [(HMDResidentDeviceModel *)v24 setEnabled:v25];

        [responseHandler2 add:v24 withMessage:enabledCopy];
        primaryResidentUUID = [(HMDResidentDeviceManagerLegacy *)self primaryResidentUUID];
        LODWORD(v25) = [v5 isEqual:primaryResidentUUID];

        if (v25)
        {
          v27 = [HMDHomeModel alloc];
          uuid2 = [home uuid];
          homeManager = [home homeManager];
          uuid3 = [homeManager uuid];
          v31 = [(HMDBackingStoreModelObject *)v27 initWithObjectChangeType:2 uuid:uuid2 parentUUID:uuid3];

          [(HMDHomeModel *)v31 setPrimaryResidentUUID:0];
          [responseHandler2 add:v31 withMessage:0];
        }

        [responseHandler2 run];

        goto LABEL_29;
      }

      v47 = objc_autoreleasePoolPush();
      selfCopy = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        messagePayload2 = [enabledCopy messagePayload];
        buf = 138543618;
        v60 = v50;
        v61 = 2112;
        v62 = messagePayload2;
        _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Invalid message paylaod, missing enabled state: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      responseHandler = [enabledCopy responseHandler];

      if (responseHandler)
      {
        home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        responseHandler2 = [enabledCopy responseHandler];
        (responseHandler2)[2](responseHandler2, home, 0);
LABEL_29:

        goto LABEL_30;
      }

      goto LABEL_30;
    }

LABEL_10:

LABEL_16:
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      uUIDString = [v5 UUIDString];
      buf = 138543618;
      v60 = v35;
      v61 = 2112;
      v62 = uUIDString;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Failed to find resident device with identifier: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    responseHandler3 = [enabledCopy responseHandler];

    if (responseHandler3)
    {
      v38 = MEMORY[0x277CCA9B8];
      v39 = 2;
LABEL_24:
      v14 = [v38 hmErrorWithCode:v39];
      responseHandler4 = [enabledCopy responseHandler];
      (responseHandler4)[2](responseHandler4, v14, 0);

LABEL_30:
    }
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      messagePayload3 = [enabledCopy messagePayload];
      buf = 138543618;
      v60 = v43;
      v61 = 2112;
      v62 = messagePayload3;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Invalid message paylaod, missing resident device identifier: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    responseHandler5 = [enabledCopy responseHandler];

    if (responseHandler5)
    {
      v38 = MEMORY[0x277CCA9B8];
      v39 = 20;
      goto LABEL_24;
    }
  }
}

- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device
{
  queue = self->_queue;
  deviceCopy = device;
  nameCopy = name;
  dispatch_assert_queue_V2(queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:deviceCopy forKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  home = [(HMDResidentDeviceManagerLegacy *)self home];
  uuid = [home uuid];
  [dictionary setObject:uuid forKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  logAndPostNotification(nameCopy, self, dictionary);
}

- (void)notifyUpdatedPrimaryResident:(id)resident
{
  residentCopy = resident;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDResidentDeviceManagerLegacy_notifyUpdatedPrimaryResident___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = residentCopy;
  v6 = residentCopy;
  dispatch_async(queue, v7);
}

uint64_t __63__HMDResidentDeviceManagerLegacy_notifyUpdatedPrimaryResident___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManager:*(a1 + 32) didUpdatePrimaryResident:*(a1 + 40) previousPrimaryResident:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" forResidentDevice:v4];
}

- (void)notifyClientsOfUpdatedResidentDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDResidentDeviceManagerLegacy_notifyClientsOfUpdatedResidentDevice___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

void __71__HMDResidentDeviceManagerLegacy_notifyClientsOfUpdatedResidentDevice___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated resident: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdateResidentNotification" forResidentDevice:*(a1 + 40)];
  v8 = [*(a1 + 32) home];
  v9 = [v8 homeManager];
  v10 = [*(a1 + 40) identifier];
  [v9 updateGenerationCounterWithReason:@"ResidentDeviceUpdated" sourceUUID:v10 shouldNotifyClients:1];

  [v8 reEvaluateHomeHubState];
  [v8 evaluateResidentUpdate];
}

- (void)notifyResidentAvailable:(BOOL)available
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDResidentDeviceManagerLegacy_notifyResidentAvailable___block_invoke;
  v4[3] = &unk_279735D28;
  v4[4] = self;
  availableCopy = available;
  dispatch_async(queue, v4);
}

void __58__HMDResidentDeviceManagerLegacy_notifyResidentAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManager:*(a1 + 32) didUpdateResidentAvailable:*(a1 + 40)];
}

- (void)setResidentSupported:(BOOL)supported
{
  os_unfair_lock_lock_with_options();
  self->_residentSupported = supported;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isResidentSupported
{
  os_unfair_lock_lock_with_options();
  residentSupported = self->_residentSupported;
  os_unfair_lock_unlock(&self->_lock);
  return residentSupported;
}

- (void)setResidentAvailable:(BOOL)available
{
  availableCopy = available;
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_residentAvailable == availableCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_residentAvailable = availableCopy;
    os_unfair_lock_unlock(&self->_lock);
    [(HMDResidentDeviceManagerLegacy *)self notifyResidentAvailable:availableCopy];
    if (availableCopy)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resident availability became TRUE now, notifying updated primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      queue = selfCopy->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HMDResidentDeviceManagerLegacy_setResidentAvailable___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }
  }
}

void __55__HMDResidentDeviceManagerLegacy_setResidentAvailable___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryResidentUUID];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 primaryResidentUUID];
    v5 = [v3 residentWithUUID:v4];

    if (v5)
    {
      [*(a1 + 32) notifyUpdatedPrimaryResident:v5];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 32) primaryResidentUUID];
        v15 = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Primary resident UUID is set to %@, cannot find the primary resident device", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Primary resident UUID is not set, cannot find the primary resident device", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)isResidentAvailable
{
  os_unfair_lock_lock_with_options();
  residentAvailable = self->_residentAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return residentAvailable;
}

- (void)_updateResidentAvailability
{
  availableResidentDevices = [(HMDResidentDeviceManagerLegacy *)self availableResidentDevices];
  v4 = [availableResidentDevices count] != 0;

  [(HMDResidentDeviceManagerLegacy *)self setResidentAvailable:v4];
  ourSelf = [(HMDResidentDeviceManagerLegacy *)self ourSelf];
  v6 = ourSelf;
  v9 = ourSelf;
  if (ourSelf && (v7 = [ourSelf isEnabled], v6 = v9, v7))
  {
    [(HMDResidentDeviceManagerLegacy *)self _startElectionAddOn];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No longer a resident: %@", v6];
    [(HMDResidentDeviceManagerLegacy *)self _stopLegacyElectionWithReason:v8];
    [(HMDResidentDeviceManagerLegacy *)self _stopCoordinationElectionWithReason:v8];
  }
}

- (void)updateResidentAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentDeviceManagerLegacy_updateResidentAvailability__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_removeResidentDevice:(id)device reason:(id)reason
{
  reasonCopy = reason;
  deviceCopy = device;
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  backingStore = [home backingStore];
  v9 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v10 = [backingStore transaction:reasonCopy options:v9];

  v11 = [HMDResidentDeviceModel alloc];
  identifier = [deviceCopy identifier];
  uuid = [home uuid];
  v14 = [(HMDBackingStoreModelObject *)v11 initWithObjectChangeType:3 uuid:identifier parentUUID:uuid];

  [v10 add:v14 withMessage:0];
  identifier2 = [deviceCopy identifier];

  primaryResidentUUID = [(HMDResidentDeviceManagerLegacy *)self primaryResidentUUID];
  LODWORD(deviceCopy) = [identifier2 isEqual:primaryResidentUUID];

  if (deviceCopy)
  {
    v17 = [HMDHomeModel alloc];
    uuid2 = [home uuid];
    homeManager = [home homeManager];
    uuid3 = [homeManager uuid];
    v21 = [(HMDBackingStoreModelObject *)v17 initWithObjectChangeType:2 uuid:uuid2 parentUUID:uuid3];

    [(HMDHomeModel *)v21 setPrimaryResidentUUID:0];
    [v10 add:v21 withMessage:0];
  }

  [v10 run];
}

- (void)_removeResidentDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_residentDevices containsObject:deviceCopy])
    {
      [(NSMutableSet *)self->_residentDevices removeObject:deviceCopy];
      os_unfair_lock_unlock(&self->_lock);
      queue = self->_queue;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __56__HMDResidentDeviceManagerLegacy__removeResidentDevice___block_invoke;
      v6[3] = &unk_2797359B0;
      v6[4] = self;
      v7 = deviceCopy;
      dispatch_async(queue, v6);
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

void __56__HMDResidentDeviceManagerLegacy__removeResidentDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerRemoveResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [*(a1 + 32) _updateResidentAvailability];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Modifying notification registrations with resident due to resident device removal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 40) device];
  v15 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [v3 disableNotificationsForDevices:v9];

  if ([*(a1 + 40) isCurrentDevice])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removed residentDevice is current device, clean up reachability event notification registry if there is any", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v3 notificationRegistry];
    [v14 removeAllReachabilityEventNotificationRegistrations];
  }
}

- (void)_addResidentDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_residentDevices member:deviceCopy];
  if (v5)
  {
    [(HMDResidentDeviceManagerLegacy *)self _fixUpRemoteResidentDevice:deviceCopy existingResidentDevice:v5];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(NSMutableSet *)self->_residentDevices addObject:deviceCopy];
    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__HMDResidentDeviceManagerLegacy__addResidentDevice___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = deviceCopy;
    dispatch_async(queue, v7);
  }
}

void __53__HMDResidentDeviceManagerLegacy__addResidentDevice___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerAddResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [*(a1 + 32) _updateResidentAvailability];
  v4 = [*(a1 + 32) primaryResidentUUID];
  v5 = [*(a1 + 40) identifier];
  if ([v4 isEqual:v5])
  {

    goto LABEL_3;
  }

  v10 = [*(a1 + 32) primaryResidentDevice];
  v11 = [v10 device];
  if (![v11 isCurrentDevice])
  {

LABEL_10:
    goto LABEL_11;
  }

  v12 = [*(a1 + 40) isEnabled];

  if (v12)
  {
LABEL_3:
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Modifying notification registrations with resident due to resident device addition", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v4 = [*(a1 + 40) device];
    v19 = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v3 enableNotificationsForDevices:v5];
    goto LABEL_10;
  }

LABEL_11:
  v13 = [*(a1 + 40) device];
  v14 = [v13 isCurrentDevice];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding ourselves as a resident device, starting election", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 32) _electResidentDevice:3];
  }

  else
  {
    [*(a1 + 32) _run];
  }
}

- (void)_startElectionAddOn
{
  v52 = *MEMORY[0x277D85DE8];
  if ([(HMDResidentDeviceManagerLegacy *)self _isHH1EOLEnabled])
  {

    [(HMDResidentDeviceManagerLegacy *)self _stopActingAsResidentWithReason:@"HH1EOL"];
    return;
  }

  if ([(HMDResidentDeviceManagerLegacy *)self _shouldEnableCoordinationElection])
  {
    localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];

    if (localNetworkElection)
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        v8 = "%{public}@Not restarting coordination election because it's already started";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, v8, &buf, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    [(HMDResidentDeviceManagerLegacy *)self _stopLegacyElectionWithReason:@"starting the coordination election"];
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Starting coordination election", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    dataSource = [(HMDResidentDeviceManagerLegacy *)selfCopy2 dataSource];
    v15 = [dataSource createElectionAddOnWithContext:selfCopy2];
    [(HMDResidentDeviceManagerLegacy *)selfCopy2 setLocalNetworkElection:v15];

    localNetworkElection2 = [(HMDResidentDeviceManagerLegacy *)selfCopy2 localNetworkElection];
    [localNetworkElection2 setDelegate:selfCopy2];

    localNetworkElection3 = [(HMDResidentDeviceManagerLegacy *)selfCopy2 localNetworkElection];
    [localNetworkElection3 registerForMessages];

    if (selfCopy2)
    {
      localNetworkElection4 = [(HMDResidentDeviceManagerLegacy *)selfCopy2 localNetworkElection];

      if (!localNetworkElection4)
      {
        _HMFPreconditionFailure();
      }

      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy2;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for the remote transport to start before starting the coordination election", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v20->_queue];
      messageDispatcher = [(HMDResidentDeviceManagerLegacy *)v20 messageDispatcher];
      secureRemoteTransport = [messageDispatcher secureRemoteTransport];
      startFuture = [secureRemoteTransport startFuture];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v49 = __60__HMDResidentDeviceManagerLegacy__startCoordinationElection__block_invoke;
      v50 = &unk_2797333D8;
      v51 = v20;
      v27 = [startFuture inContext:v23 then:&buf];
    }
  }

  else
  {
    legacyElection = [(HMDResidentDeviceManagerLegacy *)self legacyElection];

    if (legacyElection)
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        v8 = "%{public}@Not restarting legacy election because it's already started";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v4);
      return;
    }

    [(HMDResidentDeviceManagerLegacy *)self _stopCoordinationElectionWithReason:@"starting the legacy election"];
    v28 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Starting legacy election", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [[HMDPrimaryElectionLegacyAddOn alloc] initWithContext:selfCopy4];
    [(HMDResidentDeviceManagerLegacy *)selfCopy4 setLegacyElection:v32];

    legacyElection2 = [(HMDResidentDeviceManagerLegacy *)selfCopy4 legacyElection];
    [legacyElection2 setDelegate:selfCopy4];

    legacyElection3 = [(HMDResidentDeviceManagerLegacy *)selfCopy4 legacyElection];
    [legacyElection3 registerForMessages];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    devicePreferenceDataSources = [(HMDResidentDeviceManagerLegacy *)selfCopy4 devicePreferenceDataSources];
    v36 = [devicePreferenceDataSources countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(devicePreferenceDataSources);
          }

          v40 = *(*(&v43 + 1) + 8 * i);
          legacyElection4 = [(HMDResidentDeviceManagerLegacy *)selfCopy4 legacyElection];
          [legacyElection4 addDataSource:v40];
        }

        v37 = [devicePreferenceDataSources countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v37);
    }

    legacyElection5 = [(HMDResidentDeviceManagerLegacy *)selfCopy4 legacyElection];
    [legacyElection5 start];
  }
}

uint64_t __60__HMDResidentDeviceManagerLegacy__startCoordinationElection__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Starting coordination election", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) localNetworkElection];
  [v8 start];

  return 1;
}

- (void)_stopLegacyElectionWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  legacyElection = [(HMDResidentDeviceManagerLegacy *)self legacyElection];

  if (legacyElection)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = reasonCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping legacy election: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    legacyElection2 = [(HMDResidentDeviceManagerLegacy *)selfCopy legacyElection];
    [legacyElection2 stop];

    [(HMDResidentDeviceManagerLegacy *)selfCopy setLegacyElection:0];
  }
}

- (void)_stopCoordinationElectionWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];

  if (localNetworkElection)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = reasonCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping coordination election: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    localNetworkElection2 = [(HMDResidentDeviceManagerLegacy *)selfCopy localNetworkElection];
    [localNetworkElection2 stop];

    [(HMDResidentDeviceManagerLegacy *)selfCopy setLocalNetworkElection:0];
  }
}

- (BOOL)_shouldEnableCoordinationElection
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating whether we should enable coordination election", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = +[HMDHomeKitVersion version9];
  residentDevices = [(HMDResidentDeviceManagerLegacy *)selfCopy residentDevices];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDResidentDeviceManagerLegacy__shouldEnableCoordinationElection__block_invoke;
  v12[3] = &unk_279729B18;
  v13 = v7;
  v14 = selfCopy;
  v9 = v7;
  v10 = [residentDevices na_all:v12];

  return v10;
}

BOOL __67__HMDResidentDeviceManagerLegacy__shouldEnableCoordinationElection__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 version];
  v6 = [v5 compare:*(a1 + 32)];

  if (v6 == -1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not enabling coordination election because device %@ has too low a version", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 != -1;
}

- (void)_fixUpRemoteResidentDevice:(id)device existingResidentDevice:(id)residentDevice
{
  deviceCopy = device;
  residentDeviceCopy = residentDevice;
  v8 = residentDeviceCopy;
  if (self->_fixupRemoteResidentDevice && [residentDeviceCopy isCurrentDevice])
  {
    home = [(HMDResidentDeviceManagerLegacy *)self home];
    uuid = [home uuid];
    device = [v8 device];
    identifier = [device identifier];
    v13 = [HMDResidentDevice deriveUUIDFromHomeUUID:uuid deviceUUID:identifier];

    identifier2 = [deviceCopy identifier];
    LOBYTE(uuid) = [identifier2 isEqual:v13];

    if ((uuid & 1) == 0)
    {
      self->_fixupRemoteResidentDevice = 0;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__HMDResidentDeviceManagerLegacy__fixUpRemoteResidentDevice_existingResidentDevice___block_invoke;
      block[3] = &unk_279734960;
      block[4] = self;
      v17 = deviceCopy;
      v18 = v8;
      dispatch_async(queue, block);
    }
  }
}

void __84__HMDResidentDeviceManagerLegacy__fixUpRemoteResidentDevice_existingResidentDevice___block_invoke(id *a1)
{
  v2 = [a1[4] home];
  v3 = [v2 backingStore];
  v4 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v9 = [v3 transaction:@"Removing Invalid Resident Model" options:v4];

  v5 = [a1[5] modelObjectWithChangeType:3 version:4];
  [v9 add:v5];
  v6 = [a1[6] modelObjectWithChangeType:2 version:4];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v6 setChangeToken:v8];

  [v9 add:v6];
  [v9 run];
}

- (id)residentDeviceForDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_residentDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        device = [v9 device];
        v11 = [device isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMDDevice)confirmedPrimaryResidentDevice
{
  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  if ([primaryResidentDevice isConfirmed])
  {
    device = [primaryResidentDevice device];
  }

  else
  {
    device = 0;
  }

  return device;
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  if ([primaryResidentDevice isCurrentDevice])
  {
    isConfirmed = [primaryResidentDevice isConfirmed];
  }

  else
  {
    isConfirmed = 0;
  }

  return isConfirmed;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  isCurrentDevice = [primaryResidentDevice isCurrentDevice];

  return isCurrentDevice;
}

- (BOOL)isCurrentDeviceAvailableResident
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v3 = [residentDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(residentDevices);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        device = [v6 device];
        isCurrentDevice = [device isCurrentDevice];

        if (isCurrentDevice)
        {
          LOBYTE(v3) = [v6 isEnabled];
          goto LABEL_11;
        }
      }

      v3 = [residentDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSArray)availableResidentDevices
{
  v16 = *MEMORY[0x277D85DE8];
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(residentDevices, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = residentDevices;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEnabled])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)residentDevices
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_residentDevices allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (id)ourSelf
{
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v3 = [residentDevices hmf_objectPassingTest:&__block_literal_global_73474];

  return v3;
}

uint64_t __41__HMDResidentDeviceManagerLegacy_ourSelf__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (id)residentWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v6 = [residentDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(residentDevices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [residentDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setFirstHomeZoneFetch:(BOOL)fetch
{
  os_unfair_lock_lock_with_options();
  self->_firstHomeZoneFetch = fetch;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasFirstHomeZoneFetch
{
  os_unfair_lock_lock_with_options();
  firstHomeZoneFetch = self->_firstHomeZoneFetch;
  os_unfair_lock_unlock(&self->_lock);
  return firstHomeZoneFetch;
}

- (void)setFirstHomeManagerZoneFetch:(BOOL)fetch
{
  os_unfair_lock_lock_with_options();
  self->_firstHomeManagerZoneFetch = fetch;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasFirstHomeManagerZoneFetch
{
  os_unfair_lock_lock_with_options();
  firstHomeManagerZoneFetch = self->_firstHomeManagerZoneFetch;
  os_unfair_lock_unlock(&self->_lock);
  return firstHomeManagerZoneFetch;
}

- (void)setFirstLegacyFetch:(BOOL)fetch
{
  os_unfair_lock_lock_with_options();
  self->_firstLegacyFetch = fetch;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasFirstLegacyFetch
{
  os_unfair_lock_lock_with_options();
  firstLegacyFetch = self->_firstLegacyFetch;
  os_unfair_lock_unlock(&self->_lock);
  return firstLegacyFetch;
}

- (NSUUID)primaryResidentUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDResidentDevice)primaryResidentDevice
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_residentDevices;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = [(NSUUID *)v3 isEqual:identifier];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__HMDResidentDeviceManagerLegacy_addDataSource___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = sourceCopy;
    dispatch_async(queue, v7);
  }
}

void __48__HMDResidentDeviceManagerLegacy_addDataSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) devicePreferenceDataSources];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) legacyElection];
  [v3 addDataSource:*(a1 + 40)];
}

- (void)_teardownSessionWithPrimaryResidentDevice
{
  messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  [messageDispatcher setRemoteAccessDevice:0 forHome:home];
}

- (void)_setupSessionWithPrimaryResidentDevice
{
  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)self primaryResidentDevice];
  if (primaryResidentDevice)
  {
    v7 = primaryResidentDevice;
    messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
    device = [v7 device];
    home = [(HMDResidentDeviceManagerLegacy *)self home];
    [messageDispatcher setRemoteAccessDevice:device forHome:home];

    primaryResidentDevice = v7;
  }
}

- (void)_stopActingAsResidentWithReason:(id)reason
{
  reasonCopy = reason;
  [(HMDResidentDeviceManagerLegacy *)self _stopLegacyElectionWithReason:reasonCopy];
  [(HMDResidentDeviceManagerLegacy *)self _stopCoordinationElectionWithReason:reasonCopy];
}

- (BOOL)_isHH1EOLEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  homeManager = [home homeManager];
  isHH1EOLEnabled = [homeManager isHH1EOLEnabled];

  if (isHH1EOLEnabled)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@HH1 is no longer supported. The current device should stop acting as a resident", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  return isHH1EOLEnabled;
}

- (void)_run
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Running", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = [(HMDResidentDeviceManagerLegacy *)selfCopy queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDResidentDeviceManagerLegacy *)selfCopy _isHH1EOLEnabled])
  {
    [(HMDResidentDeviceManagerLegacy *)selfCopy _stopActingAsResidentWithReason:@"HH1EOL"];
    return;
  }

  primaryResidentDevice = [(HMDResidentDeviceManagerLegacy *)selfCopy primaryResidentDevice];
  v45 = primaryResidentDevice;
  if (!primaryResidentDevice)
  {
    [(HMDPrimaryElectionLegacyAddOn *)selfCopy->_legacyElection performElectionWithReason:0];
    home = [(HMDResidentDeviceManagerLegacy *)selfCopy home];
    goto LABEL_13;
  }

  v9 = primaryResidentDevice;
  home = [(HMDResidentDeviceManagerLegacy *)selfCopy home];
  if (![(HMDResidentDeviceManagerLegacy *)selfCopy isResidentSupported])
  {
LABEL_13:
    messageDispatcher = [(HMDResidentDeviceManagerLegacy *)selfCopy messageDispatcher];
    legacyElection = [messageDispatcher remoteAccessDeviceForHome:home];

    capabilities = [legacyElection capabilities];
    isResidentCapable = [capabilities isResidentCapable];

    if (isResidentCapable)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v25;
        v53 = 2112;
        v54 = legacyElection;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Tearing down remote access to device: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDResidentDeviceManagerLegacy *)v23 _teardownSessionWithPrimaryResidentDevice];
    }

    v43 = home;
    goto LABEL_18;
  }

  device = [v9 device];
  isCurrentDevice = [device isCurrentDevice];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (isCurrentDevice)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications from secondary residents", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [home subscribeForNotificationsFromRemoteGateway];
    if (([v9 isConfirmed] & 1) == 0)
    {
      [(HMDResidentDeviceManagerLegacy *)v14 confirmAsResident];
    }

    goto LABEL_19;
  }

  if (v16)
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v40;
    v53 = 2112;
    v54 = v9;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting up remote access to resident: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if ([v9 isReachable])
  {
    [(HMDResidentDeviceManagerLegacy *)v14 _setupSessionWithPrimaryResidentDevice];
    [home subscribeForNotificationsFromRemoteGateway];
  }

  ourSelf = [(HMDResidentDeviceManagerLegacy *)v14 ourSelf];
  isEnabled = [ourSelf isEnabled];

  if (!isEnabled)
  {
    goto LABEL_19;
  }

  legacyElection = [(HMDResidentDeviceManagerLegacy *)v14 legacyElection];
  [legacyElection start];
LABEL_18:

LABEL_19:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)selfCopy residentDevices];
  v27 = [residentDevices countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(residentDevices);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        if ([v31 isEnabled])
        {
          primaryResidentDevice2 = [(HMDResidentDeviceManagerLegacy *)selfCopy primaryResidentDevice];
          v33 = [primaryResidentDevice2 isEqual:v31];

          if (v33)
          {
            primaryResidentInitialReachabilityManager = [(HMDResidentDeviceManagerLegacy *)selfCopy primaryResidentInitialReachabilityManager];
            initialReachability = [primaryResidentInitialReachabilityManager initialReachability];
          }

          else
          {
            initialReachability = 0;
          }

          messageDispatcher2 = [(HMDResidentDeviceManagerLegacy *)selfCopy messageDispatcher];
          secureRemoteTransport = [messageDispatcher2 secureRemoteTransport];
          deviceMonitor = [secureRemoteTransport deviceMonitor];
          device2 = [v31 device];
          [deviceMonitor startMonitoringDevice:device2 withInitialReachability:initialReachability forClient:selfCopy];
        }
      }

      v28 = [residentDevices countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v28);
  }
}

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDResidentDeviceManagerLegacy_run__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)atHomeLevelChanged:(int64_t)changed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HMDResidentDeviceManagerLegacy_atHomeLevelChanged___block_invoke;
  v4[3] = &unk_279734BB8;
  v4[4] = self;
  v4[5] = changed;
  dispatch_async(queue, v4);
}

void __53__HMDResidentDeviceManagerLegacy_atHomeLevelChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyElection];
  [v2 atHomeLevelChanged:*(a1 + 40)];
}

- (void)confirmOnAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDResidentDeviceManagerLegacy_confirmOnAvailability__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__HMDResidentDeviceManagerLegacy_confirmOnAvailability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) legacyElection];
  [v1 confirmOnAvailability];
}

- (void)confirmAsResident
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDResidentDeviceManagerLegacy_confirmAsResident__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__HMDResidentDeviceManagerLegacy_confirmAsResident__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) legacyElection];
  [v1 confirmAsResident];
}

- (void)confirmWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDResidentDeviceManagerLegacy_confirmWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __63__HMDResidentDeviceManagerLegacy_confirmWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyElection];
  [v2 confirmWithCompletionHandler:*(a1 + 40)];
}

- (BOOL)hasTrustZoneCapableResident
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[HMDHomeKitVersion version6];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  residentDevices = [(HMDResidentDeviceManagerLegacy *)self residentDevices];
  v5 = [residentDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(residentDevices);
        }

        device = [*(*(&v12 + 1) + 8 * i) device];
        version = [device version];
        v10 = [version isAtLeastVersion:v3];

        if (v10)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [residentDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)isResidentElectionV2Enabled
{
  localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];
  v3 = localNetworkElection != 0;

  return v3;
}

- (void)_registerForMessages
{
  v11[3] = *MEMORY[0x277D85DE8];
  home = [(HMDResidentDeviceManagerLegacy *)self home];
  messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2, v6, v5];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [messageDispatcher registerForMessage:@"kResidentDeviceUpdateEnabledRequestKey" receiver:self policies:v8 selector:sel__handleResidentDeviceUpdateEnabled_];

  localNetworkElection = [(HMDResidentDeviceManagerLegacy *)self localNetworkElection];
  [localNetworkElection registerForMessages];

  legacyElection = [(HMDResidentDeviceManagerLegacy *)self legacyElection];
  [legacyElection registerForMessages];
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = homeCopy;
  v13 = dispatcherCopy;
  v9 = dispatcherCopy;
  v10 = homeCopy;
  dispatch_async(queue, block);
}

void __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke(id *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  [a1[4] setHome:a1[5]];
  v2 = [a1[4] dataSource];
  v3 = [a1[5] uuid];
  v4 = [v2 createInitialReachabilityManagerWithUUID:v3];
  [a1[4] setPrimaryResidentInitialReachabilityManager:v4];

  v5 = [a1[4] primaryResidentInitialReachabilityManager];
  [v5 configureWithHome:a1[5]];

  objc_storeStrong(a1[4] + 8, a1[6]);
  v6 = [a1[4] dataSource];
  v7 = [v6 appleAccountManager];
  v8 = [v7 device];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = [a1[4] residentDevices];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        [v15 configureWithHome:a1[5]];
        v16 = [v15 device];
        v17 = [v16 isEqual:v8];

        if (v17)
        {
          v18 = v15;

          v12 = v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  [a1[4] _registerForMessages];
  v19 = a1[4];
  if (v8)
  {
    [v19 setResidentSupported:1];
    v20 = [v8 capabilities];
    v21 = [v20 isResidentCapable];

    if (v21)
    {
      v22 = [a1[4] notificationCenter];
      [v22 addObserver:a1[4] selector:sel_handleDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];
    }

    if (v12)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        v27 = a1[5];
        *buf = 138543618;
        v51 = v26;
        v52 = 2112;
        v53 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Current device is a resident in home %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke_119;
      aBlock[3] = &unk_279728838;
      v28 = v12;
      v29 = a1[4];
      v42 = v28;
      v43 = v29;
      v44 = v8;
      v30 = _Block_copy(aBlock);
      v31 = [HMDBackingStoreCacheFetchModelObjects alloc];
      v32 = [v28 identifier];
      v49 = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      v34 = [(HMDBackingStoreCacheFetchModelObjects *)v31 initWithUUIDs:v33 fetchResult:v30];

      v35 = [a1[5] backingStore];
      [v35 submit:v34];

      goto LABEL_23;
    }
  }

  else
  {
    [v19 setResidentSupported:0];
  }

  v36 = objc_autoreleasePoolPush();
  v37 = a1[4];
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = HMFGetLogIdentifier();
    v40 = a1[5];
    *buf = 138543618;
    v51 = v39;
    v52 = 2112;
    v53 = v40;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Current device is not a resident in home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
LABEL_23:
  if (([v12 isEnabled] & 1) != 0 || (objc_msgSend(a1[4], "_shouldEnableCoordinationElection") & 1) == 0)
  {
    [a1[4] _startElectionAddOn];
  }

  [a1[4] _run];
}

uint64_t __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v37 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 object];
        v12 = [v11 uuid];
        v13 = [*(a1 + 32) identifier];
        if ([v12 isEqual:v13])
        {
          v14 = [v10 object];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {

            v23 = [v14 device];

            v24 = objc_autoreleasePoolPush();
            v25 = *(a1 + 40);
            v26 = HMFGetOSLogHandle();
            v27 = v26;
            if (v23)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v28 = HMFGetLogIdentifier();
                v29 = *(a1 + 48);
                v30 = [*(a1 + 40) home];
                *buf = 138543874;
                v46 = v28;
                v47 = 2112;
                v48 = v29;
                v49 = 2112;
                v50 = v30;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Current device %@ is in the cloud for home %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v24);
            }

            else
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v31 = HMFGetLogIdentifier();
                v32 = *(a1 + 48);
                v33 = [*(a1 + 40) home];
                *buf = 138543874;
                v46 = v31;
                v47 = 2112;
                v48 = v32;
                v49 = 2112;
                v50 = v33;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Current device %@ should be updated in the cloud for home %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v24);
              v35 = *(a1 + 40);
              v34 = *(a1 + 48);
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke_121;
              v39[3] = &unk_2797358C8;
              v39[4] = v35;
              v40 = v14;
              v14 = v14;
              [v35 __currentDeviceUpdated:v34 completion:v39];
            }

            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 40);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 48);
    v22 = [*(a1 + 40) home];
    *buf = 138543874;
    v46 = v20;
    v47 = 2112;
    v48 = v21;
    v49 = 2112;
    v50 = v22;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Model not detected for current device %@ for home %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_26:

  return 1;
}

void __70__HMDResidentDeviceManagerLegacy_configureWithHome_messageDispatcher___block_invoke_121(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  [v2 saveWithReason:@"residentUpdated" information:0 postSyncNotification:0 objectChange:*(a1 + 40) != 0];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDResidentDeviceManagerLegacy_invalidate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__HMDResidentDeviceManagerLegacy_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) messageDispatcher];
  [v3 deregisterReceiver:*(a1 + 32)];

  v4 = [*(a1 + 32) legacyElection];
  [v4 stop];
}

- (void)setHome:(id)home
{
  homeCopy = home;
  objc_storeWeak(&self->_home, homeCopy);
  dataSource = [(HMDResidentDeviceManagerLegacy *)self dataSource];
  v6 = [dataSource logIdentifierForHome:homeCopy];
  logIdentifier = self->_logIdentifier;
  self->_logIdentifier = v6;

  notificationCenter = [(HMDResidentDeviceManagerLegacy *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleHomeUpdatedAccessories_ name:@"HMDNotificationHomeAddedAccessory" object:homeCopy];

  notificationCenter2 = [(HMDResidentDeviceManagerLegacy *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleHomeUpdatedAccessories_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)dealloc
{
  messageDispatcher = [(HMDResidentDeviceManagerLegacy *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDResidentDeviceManagerLegacy;
  [(HMDResidentDeviceManagerLegacy *)&v4 dealloc];
}

- (HMDResidentDeviceManagerLegacy)initWithDataSource:(id)source
{
  sourceCopy = source;
  v23.receiver = self;
  v23.super_class = HMDResidentDeviceManagerLegacy;
  v6 = [(HMDResidentDeviceManagerLegacy *)&v23 init];
  if (v6)
  {
    queue = [sourceCopy queue];
    queue = v6->_queue;
    v6->_queue = queue;

    objc_storeStrong(&v6->_dataSource, source);
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = @"<unconfigured>";

    v10 = [MEMORY[0x277CBEB58] set];
    residentDevices = v6->_residentDevices;
    v6->_residentDevices = v10;

    v6->_fixupRemoteResidentDevice = 1;
    v6->_verifyCurrentResidentDevice = 1;
    notificationCenter = [sourceCopy notificationCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = notificationCenter;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    devicePreferenceDataSources = v6->_devicePreferenceDataSources;
    v6->_devicePreferenceDataSources = v14;

    v16 = [MEMORY[0x277D0F7C0] futureWithPromise:&v6->_cloudReadyPromise];
    cloudReady = v6->_cloudReady;
    v6->_cloudReady = v16;

    notificationCenter2 = [(HMDResidentDeviceManagerLegacy *)v6 notificationCenter];
    [notificationCenter2 addObserver:v6 selector:sel__handleCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];

    notificationCenter3 = [(HMDResidentDeviceManagerLegacy *)v6 notificationCenter];
    [notificationCenter3 addObserver:v6 selector:sel_handleCurrentDeviceChanged_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:0];

    notificationCenter4 = [(HMDResidentDeviceManagerLegacy *)v6 notificationCenter];
    [notificationCenter4 addObserver:v6 selector:sel_handleResidentDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    notificationCenter5 = [(HMDResidentDeviceManagerLegacy *)v6 notificationCenter];
    [notificationCenter5 addObserver:v6 selector:sel_handleResidentDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];
  }

  return v6;
}

- (HMDResidentDeviceManagerLegacy)init
{
  v3 = objc_alloc_init(HMDDefaultResidentDeviceManagerLegacyDataSource);
  v4 = [(HMDResidentDeviceManagerLegacy *)self initWithDataSource:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t60 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t60, &__block_literal_global_204_73506);
  }

  v3 = logCategory__hmf_once_v61;

  return v3;
}

uint64_t __45__HMDResidentDeviceManagerLegacy_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v61;
  logCategory__hmf_once_v61 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end