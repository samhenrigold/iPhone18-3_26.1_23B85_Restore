@interface HMDResidentSyncServer
- (HMDBufferingStructureDataFilter)_createResponseAdapterForRequest:(void *)request writer:(void *)writer forceFullResponse:(_BYTE *)response;
- (HMDRemoteAccountMessageDestination)_destinationForUser:(uint64_t)user restrictToResidentCapable:;
- (HMDResidentSyncServer)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence dataSource:(id)source logEventSubmitter:(id)self0;
- (id)_generateHomeDataWithRequest:(void *)request message:(int)message useCachedToken:(void *)token error:;
- (id)decodeToken:(id)token error:(id *)error;
- (id)start;
- (int64_t)currentToken:(id *)token andHistory:(id *)history fromToken:(id)fromToken limit:(int64_t)limit error:(id *)error;
- (uint64_t)_currentToken:(void *)token andHistory:(void *)history fromToken:(uint64_t)fromToken limit:(void *)limit error:;
- (uint64_t)_parseRequestDetails:(void *)details fromDictionary:(void *)dictionary message:;
- (void)_handleFetchHomeData:(id)data;
- (void)_notifyDevicesOfHomeChangeWithToken:(void *)token changes:;
- (void)handlePersistentStoreChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handlePrimaryResidentState:(void *)state;
- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed;
- (void)stop;
@end

@implementation HMDResidentSyncServer

- (id)decodeToken:(id)token error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = HMDResidentSyncServer;
  v7 = [(HMDResidentSyncController *)&v14 decodeToken:tokenCopy error:error];
  if (!v7)
  {
    goto LABEL_8;
  }

  if ([(NSPersistentHistoryToken *)self->_storeExemplarToken compareToken:v7 error:0])
  {
    v8 = v7;
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Client-provided change token is incompatible with our store, ignoring it", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *error = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)handlePrimaryResidentState:(void *)state
{
  if (state)
  {
    v3 = state[4];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__HMDResidentSyncServer_handlePrimaryResidentState___block_invoke;
    v5[3] = &unk_278687F68;
    v5[4] = state;
    v6 = a2;
    state = [MEMORY[0x277D0F7C0] inContext:v3 perform:v5];
    v2 = vars8;
  }

  return state;
}

uint64_t __52__HMDResidentSyncServer_handlePrimaryResidentState___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) persistentStoreCoordinator];
  v3 = *MEMORY[0x277CBE260];
  [*(*(a1 + 32) + 40) removeObserver:*(a1 + 32) name:*MEMORY[0x277CBE260] object:v2];
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 40) addObserver:*(a1 + 32) selector:sel_handlePersistentStoreChanged_ name:v3 object:v2];
    v4 = *(a1 + 32);
    v19 = 0;
    [(HMDResidentSyncServer *)v4 _currentToken:0 andHistory:0 fromToken:0 limit:0 error:?];
    v5 = v19;
    v6 = v19;
    objc_storeStrong((*(a1 + 32) + 96), v5);
    *(*(a1 + 32) + 88) = 1;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDShortDescriptionForToken(v6);
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Became primary resident, will broadcast Home change notification with token %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSyncServer *)*(a1 + 32) _notifyDevicesOfHomeChangeWithToken:v6 changes:0];
    [*(*(a1 + 32) + 32) reset];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not acting as the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 32);
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;

    *(*(a1 + 32) + 88) = 0;
  }

  return 1;
}

- (uint64_t)_currentToken:(void *)token andHistory:(void *)history fromToken:(uint64_t)fromToken limit:(void *)limit error:
{
  v56[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v9 = historyCopy;
  if (!self)
  {
    v37 = 0;
    goto LABEL_35;
  }

  fromTokenCopy = fromToken;
  if (historyCopy)
  {
    v10 = fromToken < 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v49 = *MEMORY[0x277CCA050];
  while (1)
  {
    v12 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v9];
    v13 = v12;
    v14 = (v11 & 1) != 0 ? 5 : 3;
    [v12 setResultType:v14];
    v56[0] = self[9];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    [v13 setAffectedStores:v15];

    fetchRequest = [MEMORY[0x277CBE4C8] fetchRequest];
    v17 = MEMORY[0x277CCAC30];
    v18 = HMDWorkingContextNameForHomeUUID(self[2]);
    v19 = [v17 predicateWithFormat:@"%K == %@", @"contextName", v18];
    [fetchRequest setPredicate:v19];

    if (v11)
    {
      if (fromTokenCopy)
      {
        [v13 setFetchBatchSize:fromTokenCopy];
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
      v55 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [fetchRequest setSortDescriptors:v21];

      [fetchRequest setFetchLimit:1];
      [v13 setFetchLimit:1];
    }

    [v13 setFetchRequest:fetchRequest];
    v22 = self[4];
    v50 = 0;
    v23 = [v22 executeRequest:v13 error:&v50];
    v24 = v50;
    v25 = v24;
    if (v23)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    domain = [v24 domain];
    if (([domain isEqualToString:v49] & 1) == 0)
    {

LABEL_28:
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v36;
        v53 = 2114;
        v54 = v25;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch store history: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      if (limit)
      {
        *limit = HMDSanitizeCoreDataError(v25);
      }

      result = 0;
LABEL_33:
      v37 = 0;
      goto LABEL_34;
    }

    code = [v25 code];

    if (code != 134301)
    {
      goto LABEL_28;
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Provided change token was expired, ignoring it", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v11 = 0;
    v9 = 0;
  }

  result = [v23 result];

  if (![result count])
  {
    if (v9)
    {
      v37 = 1;
    }

    else
    {
      if (!limit)
      {
        v9 = 0;
        goto LABEL_33;
      }

      [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unable to fetch current transaction" reason:0 suggestion:0];
      v9 = 0;
      *limit = v37 = 0;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (v11)
    {
      [result lastObject];
    }

    else
    {
      [result firstObject];
    }
    v39 = ;
    *a2 = [v39 token];
    if ((v11 & 1) == 0)
    {

      goto LABEL_52;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (!fromTokenCopy || [result count] <= fromTokenCopy)
  {
    if (token)
    {
      v44 = result;
      *token = result;
    }

    v37 = 2;
    goto LABEL_34;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v43;
    v53 = 2048;
    v54 = fromTokenCopy;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Not processing history, would need to process more than %zd transactions", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v40);
LABEL_52:
  v37 = 3;
LABEL_34:

LABEL_35:
  return v37;
}

- (void)_notifyDevicesOfHomeChangeWithToken:(void *)token changes:
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  tokenCopy = token;
  if (!self)
  {
    goto LABEL_42;
  }

  selfCopy = self;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v7 = [self encodeToken:v5 error:0];
    [v6 setObject:v7 forKeyedSubscript:@"etag"];
    [self[8] primaryResidentGenerationID];
    v9 = v8 = self;
    uUIDString = [v9 UUIDString];
    [v6 setObject:uUIDString forKeyedSubscript:@"resgen"];

    primaryResidentSelectionTimestamp = [v8[8] primaryResidentSelectionTimestamp];
    [v6 setObject:primaryResidentSelectionTimestamp forKeyedSubscript:@"seltimestamp"];

    if ([v6 count])
    {
      v12 = objc_msgSend_copy(v6);
    }

    else
    {
      v12 = 0;
    }

    self = selfCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = self[2];
  v14 = self[4];
  v72 = 0;
  v15 = [(_MKFModel *)_MKFHome modelWithModelID:v13 context:v14 error:&v72];
  v16 = v72;
  if (!v15)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v75 = v56;
      v76 = 2114;
      v77 = v16;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    goto LABEL_41;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v17 = v15;
  users = [v17 users];
  allObjects = [users allObjects];
  v20 = [allObjects mutableCopy];

  guests = [v17 guests];

  allObjects2 = [guests allObjects];
  [v20 addObjectsFromArray:allObjects2];

  dictionary = objc_msgSend_copy(v20);
  v67 = [dictionary countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (!v67)
  {
    goto LABEL_37;
  }

  v57 = v16;
  v58 = v15;
  v59 = v5;
  v64 = 0;
  v66 = *v69;
  v24 = tokenCopy;
  v25 = selfCopy;
  v62 = v12;
  obj = dictionary;
  do
  {
    for (i = 0; i != v67; ++i)
    {
      if (*v69 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v68 + 1) + 8 * i);
      if (v24)
      {
        v28 = v27;
        v29 = v24;
        v30 = v17;
        if (!v28)
        {
          _HMFPreconditionFailure();
        }

        v31 = v30;
        v32 = v17;
        v33 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v28 targetIsResident:0 targetDeviceAddress:0];
        if ([v25[3] isRelevantChanges:v29 withRootObject:v31 conditions:0 userContext:v33])
        {
          v34 = [(HMDResidentSyncServer *)v25 _destinationForUser:v28 restrictToResidentCapable:0];
          goto LABEL_30;
        }

        if ([v28 isOwner])
        {
          v35 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v28 targetIsResident:1 targetDeviceAddress:0];
          if ([v25[3] isRelevantChanges:v29 withRootObject:v31 conditions:0 userContext:v35])
          {
            context = objc_autoreleasePoolPush();
            v36 = v25;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543362;
              v75 = v38;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Broadcasting Home change notification to residents only", buf, 0xCu);

              v24 = tokenCopy;
            }

            objc_autoreleasePoolPop(context);
            v34 = [(HMDResidentSyncServer *)v36 _destinationForUser:v28 restrictToResidentCapable:1];

LABEL_29:
            v12 = v62;
            v25 = selfCopy;
LABEL_30:

            v17 = v32;
            if (!v34)
            {
              goto LABEL_32;
            }

LABEL_31:
            v43 = [HMDRemoteMessage alloc];
            v44 = HMDHomeDataChangedMessageTimeout();
            modelID = [v17 modelID];
            uUIDString2 = [modelID UUIDString];
            v64 = 1;
            v47 = [(HMDRemoteMessage *)v43 initWithName:@"HMDHomeDataChangedMessage" qualityOfService:-1 destination:v34 payload:v12 type:3 timeout:1 secure:v44 restriction:-1 sendOptions:1 collapseID:uUIDString2];

            v25 = selfCopy;
            [selfCopy[7] sendMessage:v47];

            goto LABEL_32;
          }
        }

        v39 = objc_autoreleasePoolPush();
        v40 = v25;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v75 = v42;
          v76 = 2112;
          v77 = v28;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Skipping notifying user %@ of home change because it is not relevant", buf, 0x16u);

          v24 = tokenCopy;
        }

        objc_autoreleasePoolPop(v39);
        v34 = 0;
        goto LABEL_29;
      }

      v34 = [(HMDResidentSyncServer *)v25 _destinationForUser:v27 restrictToResidentCapable:0];
      if (v34)
      {
        goto LABEL_31;
      }

LABEL_32:
    }

    v67 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  }

  while (v67);

  v15 = v58;
  v5 = v59;
  v16 = v57;
  if ((v64 & 1) != 0 && isInternalBuild())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [tokenCopy summary];
    v49 = v48 = v25;
    [dictionary setObject:v49 forKeyedSubscript:@"HMDGeneratedHomeDataChangedSummaryNotificationKey"];

    modelID2 = [v17 modelID];
    [dictionary setObject:modelID2 forKeyedSubscript:@"HMDGeneratedHomeDataChangedHomeUUIDNotificationKey"];

    v51 = v48[5];
    v52 = objc_msgSend_copy(dictionary);
    logAndPostNotificationWithNotificationCenter(v51, @"HMDGeneratedHomeDataChangedNotification", v48, v52);

LABEL_37:
  }

LABEL_41:

LABEL_42:
}

- (HMDRemoteAccountMessageDestination)_destinationForUser:(uint64_t)user restrictToResidentCapable:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  accountHandle = [v5 accountHandle];
  if (accountHandle)
  {
    WeakRetained = objc_loadWeakRetained(self + 1);
    v8 = WeakRetained;
    if (WeakRetained && user)
    {
      destinationForEnabledResidents = [WeakRetained destinationForEnabledResidents];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      v13 = v12;
      if (destinationForEnabledResidents)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Residents only broadcast of Home Data Changed notification is utilizing bulk send API", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        goto LABEL_15;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v19;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bulk send destination invalid, residents only broadcast of Home Data Changed notification is falling back to account destination", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    v20 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [self messageTargetUUID];
    destinationForEnabledResidents = [(HMDRemoteAccountMessageDestination *)v20 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

    [(HMDRemoteAccountMessageDestination *)destinationForEnabledResidents setRestrictToResidentCapable:user];
LABEL_15:

    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v18;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Skipping notifying user %{public}@ of home change because the account handle is missing", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  destinationForEnabledResidents = 0;
LABEL_16:

  return destinationForEnabledResidents;
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 isCurrentDevice])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._home);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__HMDResidentSyncServer_handlePrimaryResidentChanged___block_invoke;
    v10[3] = &unk_27868A250;
    v10[4] = self;
    [WeakRetained doFullImportWithCompletion:v10];
  }

  else
  {
    v9 = -[HMDResidentSyncServer handlePrimaryResidentState:](self, [v7 isCurrentDevice]);
  }
}

void __54__HMDResidentSyncServer_handlePrimaryResidentChanged___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(*(a1 + 32) + 64) isCurrentDeviceConfirmedPrimaryResident])
  {
    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v7;
        v15 = 2114;
        v16 = v3;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Full import for home failed with error: %{public}@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }

    v8 = [(HMDResidentSyncServer *)*(a1 + 32) handlePrimaryResidentState:?];
    [*(*(a1 + 32) + 40) postNotificationName:@"HMDHomeDataReadyAfterBecomingPrimaryNotification" object:*(a1 + 32) userInfo:0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@We are not the primary resident anymore.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)handlePersistentStoreChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE300]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    identifier = [(NSPersistentStore *)self->_store identifier];
    v10 = [identifier isEqualToString:v8];

    if (v10)
    {
      context = self->super._context;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__HMDResidentSyncServer_handlePersistentStoreChanged___block_invoke;
      v12[3] = &unk_27868A750;
      v12[4] = self;
      v13 = changedCopy;
      [(HMDManagedObjectContext *)context performBlock:v12];
    }
  }
}

void __54__HMDResidentSyncServer_handlePersistentStoreChanged___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v3 = *(v2 + 96);
    v4 = [*(a1 + 40) userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE200]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7 || ([*(a1 + 32) changeToken:v7 isAheadOf:v3] & 1) != 0)
    {
      v8 = [*(*(a1 + 32) + 104) maximumTransactionsForStoreChange];
      v9 = *(a1 + 32);
      v48 = 0;
      v49 = v7;
      v10 = [(HMDResidentSyncServer *)v9 _currentToken:&v48 andHistory:v3 fromToken:v8 limit:0 error:?];
      v11 = v49;
      v12 = v49;

      v13 = v48;
      if (!v10)
      {
LABEL_34:

        [*(*(a1 + 32) + 32) reset];
        return;
      }

      if (v10 == 1)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v17;
          v18 = "%{public}@Not broadcasting Home change notification, no new transactions.";
          v19 = v16;
          v20 = OS_LOG_TYPE_DEBUG;
          v21 = 12;
LABEL_25:
          _os_log_impl(&dword_229538000, v19, v20, v18, buf, v21);

          goto LABEL_26;
        }

        goto LABEL_26;
      }

      objc_storeStrong((*(a1 + 32) + 96), v11);
      if (([*(*(a1 + 32) + 64) isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v39 = [v13 count];
          *buf = 138543618;
          v51 = v17;
          v52 = 2048;
          v53 = v39;
          v18 = "%{public}@Not broadcasting Home change notification, no longer the primary resident (processed %tu transactions)";
          v19 = v16;
          v20 = OS_LOG_TYPE_INFO;
          v21 = 22;
          goto LABEL_25;
        }

LABEL_26:

        objc_autoreleasePoolPop(v14);
        goto LABEL_34;
      }

      if (v13)
      {
        v31 = [[HMDManagedObjectCodingChangeSet alloc] initWithCodingModel:*(*(a1 + 32) + 24) context:*(*(a1 + 32) + 32) transactions:v13];
        v32 = [(HMDManagedObjectCodingChangeSet *)v31 isEmpty];
        v33 = objc_autoreleasePoolPush();
        v34 = *(a1 + 32);
        v35 = HMFGetOSLogHandle();
        v36 = v35;
        if (v32)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            v38 = [v13 count];
            *buf = 138543618;
            v51 = v37;
            v52 = 2048;
            v53 = v38;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not broadcasting Home change notification, no syncable changes (processed %tu transactions)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          goto LABEL_33;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v42 = v47 = v33;
          v45 = [v13 count];
          v43 = HMDShortDescriptionForToken(v12);
          v46 = [(HMDManagedObjectCodingChangeSet *)v31 summary];
          v44 = [v46 shortDescriptionForChangeSet];
          *buf = 138544130;
          v51 = v42;
          v52 = 2048;
          v53 = v45;
          v54 = 2114;
          v55 = v43;
          v56 = 2114;
          v57 = v44;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Found syncable changes (processed %tu transactions), will broadcast Home change notification with token %{public}@. Changes: %{public}@", buf, 0x2Au);

          v33 = v47;
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = *(a1 + 32);
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          v41 = HMDShortDescriptionForToken(v12);
          *buf = 138543874;
          v51 = v40;
          v52 = 2048;
          v53 = v8;
          v54 = 2114;
          v55 = v41;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Assuming syncable changes (more than %tu transactions), will broadcast Home change notification with token %{public}@", buf, 0x20u);
        }

        v31 = 0;
      }

      objc_autoreleasePoolPop(v33);
      [(HMDResidentSyncServer *)*(a1 + 32) _notifyDevicesOfHomeChangeWithToken:v12 changes:v31];
LABEL_33:

      goto LABEL_34;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      v30 = HMDShortDescriptionForToken(v7);
      *buf = 138543618;
      v51 = v29;
      v52 = 2112;
      v53 = v30;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Not broadcasting Home change notification, provided token is not ahead: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring persistent store change, not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (int64_t)currentToken:(id *)token andHistory:(id *)history fromToken:(id)fromToken limit:(int64_t)limit error:(id *)error
{
  fromTokenCopy = fromToken;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__175147;
  v40 = __Block_byref_object_dispose__175148;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__175147;
  v34 = __Block_byref_object_dispose__175148;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__175147;
  v28 = __Block_byref_object_dispose__175148;
  v29 = 0;
  context = self->super._context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HMDResidentSyncServer_currentToken_andHistory_fromToken_limit_error___block_invoke;
  v17[3] = &unk_27867D000;
  v19 = &v42;
  v20 = &v36;
  v17[4] = self;
  v21 = &v30;
  v14 = fromTokenCopy;
  v22 = &v24;
  limitCopy = limit;
  v18 = v14;
  [(HMDManagedObjectContext *)context performBlockAndWait:v17];
  if (token)
  {
    *token = v37[5];
  }

  if (history)
  {
    *history = v31[5];
  }

  if (error)
  {
    *error = v25[5];
  }

  v15 = v43[3];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v15;
}

void __71__HMDResidentSyncServer_currentToken_andHistory_fromToken_limit_error___block_invoke(void *a1)
{
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 40);
  v4 = *(a1[8] + 8);
  v11 = *(v4 + 40);
  obj = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[10];
  v8 = *(a1[9] + 8);
  v10 = *(v8 + 40);
  v9 = [(HMDResidentSyncServer *)v5 _currentToken:&v11 andHistory:v6 fromToken:v7 limit:&v10 error:?];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v4 + 40), v11);
  objc_storeStrong((v8 + 40), v10);
  *(*(a1[6] + 8) + 24) = v9;
}

- (void)_handleFetchHomeData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  context = self->super._context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDResidentSyncServer__handleFetchHomeData___block_invoke;
  v7[3] = &unk_278686B48;
  objc_copyWeak(&v9, &location);
  v6 = dataCopy;
  v8 = v6;
  [(HMDManagedObjectContext *)context performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__HMDResidentSyncServer__handleFetchHomeData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v3 = [v2 messagePayload];
    v4 = [(HMDResidentSyncServer *)WeakRetained _parseRequestDetails:v9 fromDictionary:v3 message:v2];

    if (v4)
    {
      v8 = 0;
      v5 = [(HMDResidentSyncServer *)WeakRetained _generateHomeDataWithRequest:v9 message:v2 useCachedToken:1 error:&v8];
      v6 = v8;
      if (v5)
      {
        [v2 respondWithPayload:v5];
      }

      else
      {
        [v2 respondWithError:v6];
      }
    }
  }
}

- (uint64_t)_parseRequestDetails:(void *)details fromDictionary:(void *)dictionary message:
{
  v47 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  dictionaryCopy = dictionary;
  if (self)
  {
    if (!detailsCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        shortDescription = [dictionaryCopy shortDescription];
        v43 = 138543618;
        v44 = v16;
        v45 = 2112;
        v46 = shortDescription;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: missing resident sync details", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [dictionaryCopy respondWithError:v9];
      goto LABEL_23;
    }

    v9 = [detailsCopy objectForKeyedSubscript:@"schema"];
    if (!v9)
    {
      v18 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:0 minorVersion:0 updateVersion:0];
      v19 = *a2;
      *a2 = v18;

      *(a2 + 8) = 1;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v9];
      if (v10)
      {
        v11 = v10;
        objc_storeStrong(a2, v10);
        v12 = [detailsCopy objectForKeyedSubscript:@"opts"];
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          *(a2 + 8) = [v12 unsignedIntegerValue];

LABEL_13:
          v20 = [detailsCopy hmf_dataForKey:@"etag"];
          v21 = v20;
          if (v20)
          {
            v20 = [self decodeToken:v20 error:0];
          }

          v22 = *(a2 + 16);
          *(a2 + 16) = v20;

          self = 1;
          goto LABEL_24;
        }

        v37 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          shortDescription2 = [dictionaryCopy shortDescription];
          v43 = 138543618;
          v44 = v40;
          v45 = 2112;
          v46 = shortDescription2;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid request options", &v43, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        [dictionaryCopy respondWithError:v42];

LABEL_23:
        self = 0;
LABEL_24:

        goto LABEL_25;
      }

      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        shortDescription3 = [dictionaryCopy shortDescription];
        v43 = 138543618;
        v44 = v33;
        v45 = 2112;
        v46 = shortDescription3;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid schema version", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 3;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        shortDescription4 = [dictionaryCopy shortDescription];
        v43 = 138543618;
        v44 = v26;
        v45 = 2112;
        v46 = shortDescription4;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid schema version", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 22;
    }

    v35 = [v28 hmErrorWithCode:v29];
    [dictionaryCopy respondWithError:v35];

    goto LABEL_23;
  }

LABEL_25:

  return self;
}

- (id)_generateHomeDataWithRequest:(void *)request message:(int)message useCachedToken:(void *)token error:
{
  v188[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (self)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = *(self + 96);
    if (v12)
    {
      v13 = message == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && ([self changeToken:v12 isAheadOf:*(a2 + 16)] & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v172 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Provided token is up to date with cached token, home data not modified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v187 = @"response";
      v188[0] = &unk_283E73868;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:&v187 count:1];
      goto LABEL_111;
    }

    v167 = 0;
    v168 = 0;
    v14 = -[HMDResidentSyncServer _currentToken:andHistory:fromToken:limit:error:](self, &v168, &v167, *(a2 + 16), [*(self + 104) maximumTransactionsForSparseUpdate], token);
    v15 = v168;
    v16 = v167;
    v17 = v16;
    if (!v14)
    {
      v22 = 0;
LABEL_110:

LABEL_111:
      [*(self + 32) reset];
      goto LABEL_112;
    }

    if (v14 == 1)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v172 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@No history transactions since the provided token, home data not modified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v185 = @"response";
      v186 = &unk_283E73868;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
      goto LABEL_110;
    }

    if (v16)
    {
      v27 = [[HMDManagedObjectCodingChangeSet alloc] initWithCodingModel:*(self + 24) context:*(self + 32) transactions:v16];
    }

    else
    {
      v27 = 0;
    }

    v166 = 0;
    v28 = [self encodeToken:v15 error:&v166];
    v29 = v166;
    v30 = v29;
    if (!v28)
    {
      if (token)
      {
        v43 = v29;
        v22 = 0;
        *token = v30;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_109;
    }

    v160 = v28;
    WeakRetained = objc_loadWeakRetained((self + 8));
    v161 = requestCopy;
    v32 = [requestCopy userForHome:WeakRetained];

    v157 = v32;
    v158 = v27;
    if ([v32 isRestrictedGuest])
    {
      remoteSourceDevice = [v161 remoteSourceDevice];
      v34 = remoteSourceDevice;
      if (remoteSourceDevice)
      {
        v150 = v15;
        context = v17;
        version = [remoteSourceDevice version];
        v36 = +[HMDHomeKitVersion version12];
        v37 = [version isAtLeastVersion:v36];

        if (v37)
        {

          v15 = v150;
          v17 = context;
          v27 = v158;
          goto LABEL_24;
        }

        v60 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v62 = HMFGetOSLogHandle();
        v27 = v158;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v63 = v149 = v60;
          version2 = [v34 version];
          *buf = 138544130;
          v172 = v63;
          v173 = 2112;
          v174 = version2;
          v175 = 2112;
          v176 = *&v34;
          v177 = 2112;
          v178 = *&v161;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEBUG, "%{public}@Not sending home data to Restricted Guest with version: %@, device: %@, message: %@", buf, 0x2Au);

          v60 = v149;
        }

        objc_autoreleasePoolPop(v60);
        v183[0] = @"response";
        v183[1] = @"etag";
        v184[0] = &unk_283E73868;
        v184[1] = v160;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
        v15 = v150;
        v17 = context;
      }

      else
      {
        contextb = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v152 = HMFGetLogIdentifier();
          *buf = 138543618;
          v172 = v152;
          v173 = 2112;
          v174 = v161;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine source device, not generating home data for message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contextb);
        if (token)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *token = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        v27 = v158;
      }

      v28 = v160;
LABEL_108:

      requestCopy = v161;
LABEL_109:

      goto LABEL_110;
    }

LABEL_24:
    if (v27 && [(HMDManagedObjectCodingChangeSet *)v27 isEmpty])
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v17;
        *buf = 138543362;
        v172 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEBUG, "%{public}@No syncable changes since the provided token, home data not modified", buf, 0xCu);

        v17 = v41;
      }

      objc_autoreleasePoolPop(v38);
      v181[0] = @"response";
      v181[1] = @"etag";
      v28 = v160;
      v182[0] = &unk_283E73868;
      v182[1] = v160;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
      v27 = v158;
      goto LABEL_108;
    }

    v44 = *(self + 16);
    v45 = *(self + 32);
    v165 = v30;
    v46 = [(_MKFModel *)_MKFHome modelWithModelID:v44 context:v45 error:&v165];
    v148 = v165;

    if (!v46)
    {
      v59 = 0;
      v28 = v160;
      if (token)
      {
        HMDSanitizeCoreDataError(v148);
        *token = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      v32 = v157;
      goto LABEL_107;
    }

    contexta = v17;
    v47 = v161;
    v146 = v46;
    v48 = objc_loadWeakRetained((self + 8));
    v142 = v47;
    v49 = [v47 matchingRemoteIdentityUserForHome:v48];

    v151 = v49;
    if (!v49)
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v68 = v143 = v65;
        [v142 shortDescription];
        v70 = v69 = v15;
        *buf = 138543618;
        v172 = v68;
        v173 = 2112;
        v174 = v70;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine remote user for '%@'", buf, 0x16u);

        v15 = v69;
        v65 = v143;
      }

      objc_autoreleasePoolPop(v65);
      if (token)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        *token = v71 = 0;
      }

      else
      {
        v71 = 0;
      }

      v17 = contexta;
      v27 = v158;
      v28 = v160;
LABEL_70:

      v145 = v71;
      if (!v71)
      {
        v59 = v46;
        v22 = 0;
        v32 = v157;
LABEL_106:

LABEL_107:
        v30 = v148;
        goto LABEL_108;
      }

      v136 = v46;
      v153 = v15;
      v137 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v81 = [HMDStructuredWriter writerIntoOPACKData:?];
      v164 = 0;
      v82 = *a2;
      schemaVersion = [self schemaVersion];
      v84 = [v82 compare:schemaVersion];

      if (v84 == -1)
      {
        v85 = [HMDResidentSyncServer _createResponseAdapterForRequest:a2 writer:v81 forceFullResponse:&v164];
        if (v85 == v81)
        {
          v139 = v81;
        }

        else
        {
          v86 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v88 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v89 = v140 = v86;
            v90 = *a2;
            HMFBooleanToString();
            v92 = v91 = selfCopy7;
            *buf = 138543874;
            v172 = v89;
            v173 = 2112;
            v174 = v90;
            v27 = v158;
            v175 = 2112;
            v176 = *&v92;
            _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_INFO, "%{public}@Using adapters for client version %@ (forceFullResponse=%@)", buf, 0x20u);

            selfCopy7 = v91;
            v86 = v140;
          }

          objc_autoreleasePoolPop(v86);
          v93 = v85;

          v139 = v93;
          v71 = v145;
        }

        v28 = v160;
      }

      else
      {
        v139 = v81;
      }

      v94 = v136;
      if (v27)
      {
        targetUser = [(HMDResidentSyncCodingContext *)v71 targetUser];
        databaseID = [targetUser databaseID];
        objectID = [databaseID objectID];
        v98 = v27;
        v99 = objectID;
        v162 = 0;
        v163 = 0;
        v100 = [(HMDManagedObjectCodingChangeSet *)v98 changeScopeForObjectWithID:objectID attributeKeys:&v163 relationshipKeys:&v162];
        v101 = v163;
        v102 = v162;

        if (v100 == 3 || [v101 containsObject:@"privilege"])
        {
          v103 = v102;
          v104 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v106 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
          {
            v107 = HMFGetLogIdentifier();
            *buf = 138543362;
            v172 = v107;
            _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_INFO, "%{public}@Change includes user privilege. Forcing full update", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v104);
          v164 = 1;
          v102 = v103;
        }

        v27 = v158;
        v28 = v160;
        v71 = v145;
      }

      targetUser2 = [(HMDResidentSyncCodingContext *)v71 targetUser];
      isRestrictedGuest = [targetUser2 isRestrictedGuest];

      if (isRestrictedGuest)
      {
        v164 = 1;
        v17 = contexta;
      }

      else
      {
        v17 = contexta;
        if ((v164 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v27 = 0;
LABEL_91:
      v15 = v153;
      if (([*(self + 24) encodeRootObject:v146 withWriter:v139 changes:v27 conditions:0 userContext:v71] & 1) == 0)
      {
        v59 = v94;
        if (token)
        {
          [v139 error];
          *token = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        v32 = v157;
        v125 = v137;
        goto LABEL_105;
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v111 = v110 - v11;
      v112 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v114 = HMFGetOSLogHandle();
      v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
      v159 = v27;
      v59 = v94;
      if (v27)
      {
        if (v115)
        {
          v116 = HMFGetLogIdentifier();
          v117 = [v17 count];
          v118 = v137;
          v119 = [v137 length];
          [v142 shortDescription];
          v120 = v147 = v112;
          *buf = 138544386;
          v172 = v116;
          v173 = 2048;
          v174 = v117;
          v175 = 2048;
          v176 = *&v119;
          v15 = v153;
          v177 = 2048;
          v178 = v111;
          v179 = 2112;
          v180 = v120;
          _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Generated sparse home data (%tu transactions, %tu bytes) in %.3lf seconds for %@", buf, 0x34u);

          v112 = v147;
          v121 = 2;
LABEL_104:

          objc_autoreleasePoolPop(v112);
          v169[0] = @"response";
          v126 = [MEMORY[0x277CCABB0] numberWithInteger:v121];
          v170[0] = v126;
          v170[1] = v118;
          v169[1] = @"data";
          v169[2] = @"etag";
          v28 = v160;
          v170[2] = v160;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:3];

          v27 = v159;
          v125 = v118;
          v17 = contexta;
          v32 = v157;
LABEL_105:

          goto LABEL_106;
        }

        v121 = 2;
      }

      else
      {
        if (v115)
        {
          v122 = HMFGetLogIdentifier();
          v118 = v137;
          v123 = [v137 length];
          shortDescription = [v142 shortDescription];
          *buf = 138544130;
          v172 = v122;
          v173 = 2048;
          v174 = v123;
          v15 = v153;
          v175 = 2048;
          v176 = v111;
          v177 = 2112;
          v178 = *&shortDescription;
          _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Generated full home data (%tu bytes) in %.3lf seconds for %@", buf, 0x2Au);

          v121 = 1;
          goto LABEL_104;
        }

        v121 = 1;
      }

      v118 = v137;
      goto LABEL_104;
    }

    uuid = [v49 uuid];
    v51 = *(self + 32);
    v52 = uuid;
    v53 = v51;
    v54 = [(_MKFModel *)_MKFUser modelWithModelID:v52 context:v53];
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = [(_MKFModel *)_MKFGuest modelWithModelID:v52 context:v53];
    }

    v72 = v56;

    v144 = v72;
    if (v72)
    {
      home = [v72 home];
      v74 = home;
      if (home == v146)
      {
        isResidentSyncParticipant = [v72 isResidentSyncParticipant];

        if (isResidentSyncParticipant)
        {
          if (*(a2 + 8))
          {
            isOwner = [v144 isOwner];
          }

          else
          {
            isOwner = 0;
          }

          remoteSourceDevice2 = [v142 remoteSourceDevice];
          deviceAddress = [remoteSourceDevice2 deviceAddress];

          if (deviceAddress)
          {
            v71 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v144 targetIsResident:isOwner targetDeviceAddress:deviceAddress];
            v17 = contexta;
          }

          else
          {
            v130 = objc_autoreleasePoolPush();
            selfCopy10 = self;
            v132 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v133 = v141 = v130;
              [v142 shortDescription];
              v138 = selfCopy10;
              v135 = v134 = v15;
              *buf = 138543618;
              v172 = v133;
              v173 = 2112;
              v174 = v135;
              _os_log_impl(&dword_229538000, v132, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine device address for '%@'", buf, 0x16u);

              v15 = v134;
              selfCopy10 = v138;

              v130 = v141;
            }

            objc_autoreleasePoolPop(v130);
            v17 = contexta;
            if (token)
            {
              [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
              *token = v71 = 0;
            }

            else
            {
              v71 = 0;
            }
          }

          v27 = v158;

          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    v77 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = HMFGetLogIdentifier();
      *buf = 138543618;
      v172 = v80;
      v173 = 2114;
      v174 = v151;
      _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@Unable to find active MKFUser for %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    if (token)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      *token = v71 = 0;
    }

    else
    {
      v71 = 0;
    }

    v17 = contexta;
    v27 = v158;
LABEL_67:
    v28 = v160;

    goto LABEL_70;
  }

  v22 = 0;
LABEL_112:

  return v22;
}

- (HMDBufferingStructureDataFilter)_createResponseAdapterForRequest:(void *)request writer:(void *)writer forceFullResponse:(_BYTE *)response
{
  writerCopy = writer;
  v6 = *request;
  v7 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];
  v8 = [v6 compare:v7];

  if (v8 == -1)
  {
    if (response)
    {
      *response = 1;
    }

    v9 = writerCopy;
    writerCopy = [[HMDBufferingStructureDataFilter alloc] initWithUnderlyingWriter:v9 block:&__block_literal_global_16324];
  }

  v10 = writerCopy;

  return writerCopy;
}

- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  proceedCopy = proceed;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v8 = [requestCopy dictionaryForKey:@"$HMDRS$"];
  v9 = [(HMDResidentSyncServer *)self _parseRequestDetails:v8 fromDictionary:requestCopy message:?];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._home);
    isCurrentDeviceConfirmedPrimaryResident = [WeakRetained isCurrentDeviceConfirmedPrimaryResident];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        shortDescription = [requestCopy shortDescription];
        *buf = 138543618;
        v31 = v15;
        v32 = 2112;
        v33 = shortDescription;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Intercepting remote resident request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [requestCopy mutableCopy];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3254779904;
      v21[2] = __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke;
      v21[3] = &unk_283CF2860;
      v22 = requestCopy;
      v23 = selfCopy;
      v24 = v27;
      v25 = v28;
      v26 = v29;
      [v17 setResponseHandler:v21];
      proceedCopy[2](proceedCopy, v17);
    }

    else
    {
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        shortDescription2 = [requestCopy shortDescription];
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = shortDescription2;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Rejecting resident request %@: not the primary resident", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
      [requestCopy respondWithError:v17];
    }
  }
}

void __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    [*(a1 + 32) respondWithError:v5];
  }

  else
  {
    v8 = MEMORY[0x277D0F7C0];
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(v10 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3254779904;
    v18 = __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke_2;
    v19 = &unk_283CF2828;
    v20 = v10;
    v12 = v9;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v21 = *(a1 + 32);
    v22 = v6;
    v15 = [v8 inContext:v11 perform:&v16];
    [v7 respondWithOutcomeOf:{v15, v16, v17, v18, v19, v20}];
  }
}

uint64_t __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke_2(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v21 = 0;
  v4 = [(HMDResidentSyncServer *)v2 _generateHomeDataWithRequest:v3 message:0 useCachedToken:&v21 error:?];
  v5 = v21;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] shortDescription];
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Responding to intercepted remote resident request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [a1[6] mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    v18 = v14;

    [v18 setObject:v4 forKeyedSubscript:@"$HMDRS$"];
    objc_msgSend_copy(v18);
    v19 = 1;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] shortDescription];
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Home data changes for successfully handled message '%{public}@': %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v17 = v5;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v18 = 0;
    }

    v19 = 2;
  }

  return v19;
}

- (void)stop
{
  [(HMFMessageDispatcher *)self->_dispatcher deregisterReceiver:self];
  notificationCenter = self->super._notificationCenter;

  [(NSNotificationCenter *)notificationCenter removeObserver:self];
}

- (id)start
{
  v16[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->super._home);
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:WeakRetained userPrivilege:5 remoteAccessRequired:0];

  v5 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v5 setRoles:{objc_msgSend(v5, "roles") | 8}];
  v6 = objc_msgSend_copy(v5);
  dispatcher = self->_dispatcher;
  v16[0] = v4;
  v16[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [(HMFMessageDispatcher *)dispatcher registerForMessage:@"HMDFetchHomeDataMessage" receiver:self policies:v8 selector:sel__handleFetchHomeData_];

  if (shouldEnableInternalDebugInterfaces__hmf_once_t48 != -1)
  {
    dispatch_once(&shouldEnableInternalDebugInterfaces__hmf_once_t48, &__block_literal_global_786);
  }

  if (shouldEnableInternalDebugInterfaces__hmf_once_v49 == 1)
  {
    v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v10 = self->_dispatcher;
    v11 = [@"HMDFetchHomeDataMessage" stringByAppendingString:@".Debug"];
    v15 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [(HMFMessageDispatcher *)v10 registerForMessage:v11 receiver:self policies:v12 selector:sel__handleFetchHomeData_];
  }

  [(NSNotificationCenter *)self->super._notificationCenter addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:self->_residentDeviceManager];
  [(NSNotificationCenter *)self->super._notificationCenter addObserver:self selector:sel_handleReassertAsTheCurrentPrimaryResident_ name:@"HMDResidentDeviceManagerReassertAsCurrentPrimaryNotification" object:self->_residentDeviceManager];
  v13 = [(HMDResidentSyncServer *)self handlePrimaryResidentState:?];

  return v13;
}

- (HMDResidentSyncServer)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence dataSource:(id)source logEventSubmitter:(id)self0
{
  v35[1] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  persistenceCopy = persistence;
  sourceCopy = source;
  submitterCopy = submitter;
  v34.receiver = self;
  v34.super_class = HMDResidentSyncServer;
  v19 = [(HMDResidentSyncController *)&v34 initWithHome:home codingModel:model notificationCenter:center persistence:persistenceCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dispatcher, dispatcher);
    objc_storeStrong(&v20->_residentDeviceManager, manager);
    workingStore = [persistenceCopy workingStore];
    store = v20->_store;
    v20->_store = workingStore;

    coordinator = [persistenceCopy coordinator];
    v35[0] = v20->_store;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v25 = [coordinator currentPersistentHistoryTokenFromStores:v24];
    storeExemplarToken = v20->_storeExemplarToken;
    v20->_storeExemplarToken = v25;

    objc_storeStrong(&v20->_logEventSubmitter, submitter);
    objc_storeStrong(&v20->_dataSource, source);
    context = v20->super._context;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __143__HMDResidentSyncServer_initWithHome_codingModel_dispatcher_residentDeviceManager_notificationCenter_persistence_dataSource_logEventSubmitter___block_invoke;
    v32[3] = &unk_27868A728;
    v33 = v20;
    [(HMDManagedObjectContext *)context performBlockAndWait:v32];
  }

  return v20;
}

void __143__HMDResidentSyncServer_initWithHome_codingModel_dispatcher_residentDeviceManager_notificationCenter_persistence_dataSource_logEventSubmitter___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v7 = 0;
  v3 = [v1 setQueryGenerationFromToken:v2 error:&v7];
  v4 = v7;

  if (v3)
  {
  }

  else
  {
    v5 = _HMFPreconditionFailureWithFormat();
    [(HMDResidentSyncController *)v5 .cxx_destruct];
  }
}

@end