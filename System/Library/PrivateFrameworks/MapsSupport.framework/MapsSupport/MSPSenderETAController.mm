@interface MSPSenderETAController
- (BOOL)_validateNavigationState:(id *)state;
- (BOOL)startSharingWith:(id)with capabilityType:(unint64_t)type serviceName:(id)name error:(id *)error;
- (BOOL)stopSharingWith:(id)with reason:(unint64_t)reason error:(id *)error;
- (BOOL)stopSharingWithReason:(unint64_t)reason error:(id *)error;
- (MSPSenderETAController)initWithRelay:(id)relay;
- (MSPSenderETAControllerDelegate)delegate;
- (NSDictionary)serviceNamesByActiveHandle;
- (void)_cleanObjects;
- (void)_createGroupSessionIfNeededWithIdentifier:(id)identifier;
- (void)_invalidateActiveHandles;
- (void)_invalidateSharedTripWithError:(id)error;
- (void)_restoreLastSession;
- (void)_setState:(id)state forEvent:(unint64_t)event;
- (void)_startLiveForVirtualReceiver:(id)receiver;
- (void)_startNavigationListener;
- (void)_startingGroupSession;
- (void)_stopLiveForVirtualReceiver:(id)receiver;
- (void)_stopNavigationListener;
- (void)_updateStorage;
- (void)dealloc;
- (void)groupSession:(id)session participantDidJoin:(id)join;
- (void)groupSession:(id)session participantDidLeave:(id)leave;
- (void)groupSessionEnded:(id)ended withError:(id)error;
- (void)navigationListenerArrived:(id)arrived;
- (void)navigationListenerETAUpdated:(id)updated;
- (void)navigationListenerIsReady:(id)ready;
- (void)navigationListenerLocationUpdated:(id)updated;
- (void)navigationListenerResumed:(id)resumed;
- (void)navigationListenerRouteUpdated:(id)updated;
- (void)navigationListenerStopped:(id)stopped;
- (void)navigationListenerTrafficUpdated:(id)updated;
- (void)navigationListenerWaypointsUpdated:(id)updated;
@end

@implementation MSPSenderETAController

- (NSDictionary)serviceNamesByActiveHandle
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  senderStrategyController = self->_senderStrategyController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__MSPSenderETAController_serviceNamesByActiveHandle__block_invoke;
  v8[3] = &unk_2798685C8;
  v9 = v3;
  v5 = v3;
  [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithAllMinimalSenders:v8];
  v6 = [v5 copy];

  return v6;
}

- (MSPSenderETAController)initWithRelay:(id)relay
{
  relayCopy = relay;
  v18.receiver = self;
  v18.super_class = MSPSenderETAController;
  v5 = [(MSPSenderETAController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_idsRelay, relayCopy);
    storageController = [relayCopy storageController];
    storageController = v6->_storageController;
    v6->_storageController = storageController;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    destinations = v6->_destinations;
    v6->_destinations = v9;

    v11 = objc_alloc_init(MSPNavigationListener);
    navigationListener = v6->_navigationListener;
    v6->_navigationListener = v11;

    [(MSPSenderETAController *)v6 _restoreLastSession];
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

    if (isInternalInstall)
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__startLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:0 suspensionBehavior:4];

      defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter2 addObserver:v6 selector:sel__stopLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:0 suspensionBehavior:4];
    }
  }

  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v6 = "[MSPSenderETAController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Sender] %{private}s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPSenderETAController;
  [(MSPSenderETAController *)&v4 dealloc];
}

- (void)_updateStorage
{
  [MSPSharedTripSenderStrategyController updateGroupSessionStorage:self->_sessionStorage fromController:self->_senderStrategyController];
  currentState = [(MSPNavigationListener *)self->_navigationListener currentState];
  v5 = [currentState copy];

  identifier = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
  [v5 setGroupIdentifier:identifier];

  [(MSPGroupSessionStorage *)self->_sessionStorage updateWithState:v5];
  [(MSPSharedTripStorageController *)self->_storageController setSenderSessionStorage:self->_sessionStorage];
}

- (void)_restoreLastSession
{
  v28 = *MEMORY[0x277D85DE8];
  senderSessionStorage = [(MSPSharedTripStorageController *)self->_storageController senderSessionStorage];
  v4 = senderSessionStorage;
  if (senderSessionStorage)
  {
    state = [senderSessionStorage state];
    array = [MEMORY[0x277CBEB18] array];
    if ([v4 minimalStrategyIdentifiersCount])
    {
      minimalStrategyIdentifiers = [v4 minimalStrategyIdentifiers];
      [array addObjectsFromArray:minimalStrategyIdentifiers];
    }

    if ([v4 messageStrategyIdentifiersCount])
    {
      messageStrategyIdentifiers = [v4 messageStrategyIdentifiers];
      [array addObjectsFromArray:messageStrategyIdentifiers];
    }

    smsStrategyIdentifiersCount = [v4 smsStrategyIdentifiersCount];
    if (smsStrategyIdentifiersCount)
    {
      smsStrategyIdentifiers = [v4 smsStrategyIdentifiers];
      [array addObjectsFromArray:smsStrategyIdentifiers];
    }

    v11 = MSPGetSharedTripLog(smsStrategyIdentifiersCount);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mspDescription = [state mspDescription];
      *buf = 138412546;
      v25 = mspDescription;
      v26 = 2112;
      v27 = array;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Sender] _restoreLastSession restoring state %@ to %@", buf, 0x16u);
    }

    if ([array count] && objc_msgSend(state, "hasGroupIdentifier"))
    {
      groupIdentifier = [state groupIdentifier];
      [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:groupIdentifier];

      v14 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:array];
      [(NSMutableSet *)self->_destinations addObjectsFromArray:v14];
      [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v14];
      [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController restoreFromGroupSessionStorage:v4];
      [(MSPSenderETAController *)self _setState:state forEvent:1];
      objc_initWeak(buf, self);
      v15 = self->_navigationListener;
      v16 = dispatch_time(0, 3000000000);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __45__MSPSenderETAController__restoreLastSession__block_invoke;
      v21 = &unk_279868528;
      v22 = v15;
      v17 = v15;
      objc_copyWeak(&v23, buf);
      dispatch_after(v16, MEMORY[0x277D85CD0], &v18);
      objc_destroyWeak(&v23);

      objc_destroyWeak(buf);
    }

    [(MSPSenderETAController *)self _invalidateActiveHandles:v18];
  }
}

void __45__MSPSenderETAController__restoreLastSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInNavigatingState] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained stopSharingWithReason:0 error:0];
  }
}

- (void)_createGroupSessionIfNeededWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!self->_groupSession)
  {
    v6 = MSPGetSharedTripLog(identifierCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPSenderETAController creating group session for uuid %{public}@", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v8 = [WeakRetained startSharingGroupSessionWithTripIdentifer:v5];
    groupSession = self->_groupSession;
    self->_groupSession = v8;

    [(MSPSharedTripGroupSession *)self->_groupSession setDelegate:self];
    v10 = [[MSPSharedTripSenderStrategyController alloc] initWithGroupSession:self->_groupSession messageStrategyDelegate:self];
    senderStrategyController = self->_senderStrategyController;
    self->_senderStrategyController = v10;

    v12 = objc_alloc_init(MSPGroupSessionStorage);
    sessionStorage = self->_sessionStorage;
    self->_sessionStorage = v12;

    identifier = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setGroupIdentifier:identifier];

    initiatorIdentifier = [(MSPSharedTripGroupSession *)self->_groupSession initiatorIdentifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setOriginatorIdentifier:initiatorIdentifier];

    [(MSPSenderETAController *)self _startNavigationListener];
    delegate = [(MSPSenderETAController *)self delegate];
    groupIdentifier = [(MSPGroupSessionStorage *)self->_sessionStorage groupIdentifier];
    [delegate senderController:self didStartSharingWithGroupIdentifier:groupIdentifier];
  }
}

- (void)_startingGroupSession
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  navigationSessionIdentifier = [(MSPNavigationListener *)self->_navigationListener navigationSessionIdentifier];
  [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:navigationSessionIdentifier];
}

- (BOOL)startSharingWith:(id)with capabilityType:(unint64_t)type serviceName:(id)name error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  nameCopy = name;
  if ([(MSPSenderETAController *)self _validateNavigationState:error])
  {
    if (type <= 1)
    {
      v57[0] = *MEMORY[0x277CCA068];
      *buf = @"Unknown";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:0 userInfo:v12];

      if (error)
      {
        v14 = v13;
        v15 = 0;
        *error = v13;
      }

      else
      {
        v15 = 0;
      }

LABEL_33:

      goto LABEL_34;
    }

    v16 = [withCopy count];
    if (!v16)
    {
      v57[0] = *MEMORY[0x277CCA068];
      *buf = @"No contact handles provided";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:11 userInfo:v19];

LABEL_25:
      v37 = MSPGetSharedTripLog(v20);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        destinations = self->_destinations;
        if (type - 2 > 2)
        {
          v39 = @"Unknown";
        }

        else
        {
          v39 = off_279868628[type - 2];
        }

        *buf = 138478083;
        *&buf[4] = destinations;
        v55 = 2114;
        v56 = v39;
        _os_log_impl(&dword_25813A000, v37, OS_LOG_TYPE_DEFAULT, "[Sender] destinations is now %{private}@ (startSharingWith %{public}@)", buf, 0x16u);
      }

      if (error)
      {
        v40 = v13;
        *error = v13;
      }

      v15 = v13 == 0;
      goto LABEL_33;
    }

    v17 = MSPGetSharedTripLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (type - 2 > 2)
      {
        v18 = @"Unknown";
      }

      else
      {
        v18 = off_279868628[type - 2];
      }

      *buf = 138412546;
      *&buf[4] = withCopy;
      v55 = 2114;
      v56 = v18;
      _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[Sender] startSharingWith identifiers: %@, via %{public}@", buf, 0x16u);
    }

    [(MSPSenderETAController *)self _startingGroupSession];
    v21 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:withCopy];
    [(NSMutableSet *)self->_destinations addObjectsFromArray:v21];
    [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v21];
    v22 = nameCopy;
    if (!nameCopy)
    {
      if (type - 2 > 2)
      {
        v23 = 0;
        goto LABEL_18;
      }

      v22 = *off_279868610[type - 2];
    }

    v23 = v22;
LABEL_18:
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke;
    v51[3] = &unk_279868550;
    v24 = v23;
    v52 = v24;
    typeCopy = type;
    v25 = MEMORY[0x259C7AD60](v51);
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

    if (isInternalInstall)
    {
      v28 = MSPSharedTripGetVirtualReceivers(withCopy);
      v29 = [(__CFString *)v28 count];
      if (v29)
      {
        v30 = MSPGetSharedTripLog(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(__CFString *)v28 count];
          *buf = 134218242;
          *&buf[4] = v31;
          v55 = 2114;
          v56 = v28;
          _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_DEFAULT, "[Sender] found %lu virtual receivers: %{public}@", buf, 0x16u);
        }

        senderStrategyController = self->_senderStrategyController;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke_23;
        v48[3] = &unk_279868578;
        v50 = v25;
        v49 = v28;
        [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v48];
        v33 = MSPSharedTripGetRealReceivers(v21);

        v21 = v33;
      }
    }

    v34 = self->_senderStrategyController;
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke_2;
    v45 = &unk_279868578;
    v46 = v21;
    v47 = v25;
    v35 = v21;
    v36 = v25;
    [(MSPSharedTripSenderStrategyController *)v34 performWithVirtualSenders:0 block:&v42];
    [(MSPSenderETAController *)self _updateStorage:v42];
    [(MSPSenderETAController *)self _invalidateActiveHandles];

    v13 = 0;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_34:

  return v15;
}

void __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [v8 addParticipants:v5 forServiceName:*(a1 + 32)];
  if (*(a1 + 40) == 4)
  {
    v6 = [MEMORY[0x277D0EC70] sharedPlatform];
    if ([v6 isInternalInstall])
    {
      BOOL = GEOConfigGetBOOL();

      if (BOOL)
      {
        [v8 addLiveParticipants:v5];
      }
    }

    else
    {
    }
  }
}

- (BOOL)stopSharingWith:(id)with reason:(unint64_t)reason error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = [withCopy count];
  v36 = withCopy;
  if (v7)
  {
    [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:withCopy];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v8 = 0;
    v9 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v9)
    {
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
          isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

          if (isInternalInstall && (MSPSharedTripVirtualReceiverIsValid(v12) & 1) != 0)
          {
            *v49 = 0;
            *&v49[8] = v49;
            *&v49[16] = 0x2020000000;
            v50 = 0;
            senderStrategyController = self->_senderStrategyController;
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke_25;
            v40[3] = &unk_2798685A0;
            v40[5] = v49;
            v40[6] = reason;
            v40[4] = v12;
            v16 = MSPGetSharedTripLog([(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v40]);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = @"NO";
              if (*(*&v49[8] + 24))
              {
                v17 = @"YES";
              }

              v18 = v17;
              *buf = 138543618;
              *&buf[4] = v12;
              v47 = 2114;
              v48 = v18;
              _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "stopSharingWith (virtual): %{public}@ wasSharing: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            *v49 = 0;
            *&v49[8] = v49;
            *&v49[16] = 0x2020000000;
            v50 = 0;
            v19 = self->_senderStrategyController;
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke;
            v41[3] = &unk_2798685A0;
            v41[5] = v49;
            v41[6] = reason;
            v41[4] = v12;
            v16 = MSPGetSharedTripLog([(MSPSharedTripSenderStrategyController *)v19 performWithVirtualSenders:0 block:v41]);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v20 = @"NO";
              if (*(*&v49[8] + 24))
              {
                v20 = @"YES";
              }

              v21 = v20;
              *buf = 138543618;
              *&buf[4] = v12;
              v47 = 2114;
              v48 = v21;
              _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "stopSharingWith: %{public}@ wasSharing: %{public}@", buf, 0x16u);
            }
          }

          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = *(*&v49[8] + 24);
          }

          _Block_object_dispose(v49, 8);
        }

        v9 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v9);
    }

    v23 = MSPGetSharedTripLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [obj count];
      *v49 = 134218243;
      *&v49[4] = v24;
      *&v49[12] = 2113;
      *&v49[14] = obj;
      _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "Removing %lu identifiers from sharing: %{private}@", v49, 0x16u);
    }

    destinations = self->_destinations;
    v26 = [MEMORY[0x277CBEB98] setWithArray:obj];
    [(NSMutableSet *)destinations minusSet:v26];

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v28 = [WeakRetained removeSharingWith:obj];
    groupSession = self->_groupSession;
    self->_groupSession = v28;

    [(MSPSenderETAController *)self _updateStorage];
    if (![(NSMutableSet *)self->_destinations count])
    {
      [(MSPSenderETAController *)self _cleanObjects];
    }

    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  else
  {
    v8 = 0;
  }

  if (error && (v8 & 1) == 0)
  {
    v30 = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v49 = 0;
      _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_ERROR, "[Sender] Asked to stop sharing but we didn't match with any of the handles", v49, 2u);
    }

    *buf = *MEMORY[0x277CCA068];
    *v49 = @"Not currently sharing with contacts";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:buf count:1];
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:13 userInfo:v31];

    v7 = v32;
    *error = v32;
  }

  v33 = MSPGetSharedTripLog(v7);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_destinations;
    *v49 = 138477827;
    *&v49[4] = v34;
    _os_log_impl(&dword_25813A000, v33, OS_LOG_TYPE_DEFAULT, "[Sender] destinations is now %{private}@ (stopSharingWith)", v49, 0xCu);
  }

  return v8 & 1;
}

void __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  LOBYTE(v3) = [v5 removeParticipant:v3 reason:v4];
  LOBYTE(v4) = [v5 removeLiveParticipant:a1[4]];

  *(*(a1[5] + 8) + 24) = (v3 | v4) & 1;
}

void __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke_25(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  LOBYTE(v3) = [v5 removeParticipant:v3 reason:v4];
  LOBYTE(v4) = [v5 removeLiveParticipant:a1[4]];

  *(*(a1[5] + 8) + 24) = (v3 | v4) & 1;
}

- (BOOL)stopSharingWithReason:(unint64_t)reason error:(id *)error
{
  allObjects = [(NSMutableSet *)self->_destinations allObjects];
  v8 = [(MSPSenderETAController *)self stopSharingWith:allObjects reason:reason error:error];

  v9 = [(NSMutableSet *)self->_destinations count];
  if (v9)
  {
    v10 = MSPGetSharedTripLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_FAULT, "[Sender] stopSharing didn't clear all destinations, forcing it now", v12, 2u);
    }

    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _cleanObjects];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  return v8;
}

void __52__MSPSenderETAController_serviceNamesByActiveHandle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a2 participants];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_startLiveForVirtualReceiver:(id)receiver
{
  object = [receiver object];
  v5 = object;
  if (object)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MSPSenderETAController__startLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = object;
    [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v7];
  }
}

void __55__MSPSenderETAController__startLiveForVirtualReceiver___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 addLiveParticipants:{v4, v5, v6}];
}

- (void)_stopLiveForVirtualReceiver:(id)receiver
{
  object = [receiver object];
  v5 = object;
  if (object)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MSPSenderETAController__stopLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = object;
    [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v7];
  }
}

- (void)_cleanObjects
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSPSenderETAController _cleanObjects]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Sender] %s", &v9, 0xCu);
  }

  sessionStorage = self->_sessionStorage;
  self->_sessionStorage = 0;

  [(MSPSharedTripStorageController *)self->_storageController setSenderSessionStorage:0];
  senderStrategyController = self->_senderStrategyController;
  self->_senderStrategyController = 0;

  [(NSMutableSet *)self->_destinations removeAllObjects];
  [(MSPSenderETAController *)self _stopNavigationListener];
  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  [WeakRetained stopSharing];

  groupSession = self->_groupSession;
  self->_groupSession = 0;

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)_invalidateSharedTripWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSPSenderETAController__invalidateSharedTripWithError___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v8, &location);
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__MSPSenderETAController__invalidateSharedTripWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 senderController:v4 didInvalidateSharedTripWithError:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_invalidateActiveHandles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSPSenderETAController__invalidateActiveHandles__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__MSPSenderETAController__invalidateActiveHandles__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 invalidateActiveHandlesForSenderController:*(a1 + 32)];
}

- (void)_startNavigationListener
{
  delegate = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (!delegate)
  {
    v5 = MSPGetSharedTripLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "MSPSenderETAController start listening to navigation", v6, 2u);
    }

    [(MSPNavigationListener *)self->_navigationListener setDelegate:self];
  }
}

- (void)_stopNavigationListener
{
  delegate = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (delegate == self)
  {
    v5 = MSPGetSharedTripLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "MSPSenderETAController stop listening to navigation", v6, 2u);
    }

    [(MSPNavigationListener *)self->_navigationListener setDelegate:0];
  }
}

- (BOOL)_validateNavigationState:(id *)state
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (![(MSPNavigationListener *)self->_navigationListener isInNavigatingState])
  {
    v16[0] = *MEMORY[0x277CCA068];
    *v13 = @"Not navigating";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v16 count:1];
    v8 = MEMORY[0x277CCA9B8];
    v9 = 7;
    goto LABEL_9;
  }

  if (![(MSPNavigationListener *)self->_navigationListener isCompatibleTransportType])
  {
    v16[0] = *MEMORY[0x277CCA068];
    *v13 = @"Incompatible transport type";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v16 count:1];
    v8 = MEMORY[0x277CCA9B8];
    v9 = 8;
    goto LABEL_9;
  }

  isCompatibleNavigationType = [(MSPNavigationListener *)self->_navigationListener isCompatibleNavigationType];
  if ((isCompatibleNavigationType & 1) == 0)
  {
    v16[0] = *MEMORY[0x277CCA068];
    *v13 = @"Incompatible navigation type";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v16 count:1];
    v8 = MEMORY[0x277CCA9B8];
    v9 = 9;
LABEL_9:
    v6 = [v8 errorWithDomain:@"com.apple.Maps.SharedTrip" code:v9 userInfo:v7];

    if (!state)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = 0;
  if (state)
  {
LABEL_10:
    isCompatibleNavigationType = v6;
    *state = v6;
  }

LABEL_11:
  if (v6)
  {
    v10 = MSPGetSharedTripLog(isCompatibleNavigationType);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      navigationListener = self->_navigationListener;
      *v13 = 138412546;
      *&v13[4] = v6;
      v14 = 2112;
      v15 = navigationListener;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "[Sender] invalid navigation state for sharing: %@ | listener: %@", v13, 0x16u);
    }
  }

  return v6 == 0;
}

- (void)_setState:(id)state forEvent:(unint64_t)event
{
  if (state)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController setState:state forEvent:event];
  }
}

- (void)navigationListenerWaypointsUpdated:(id)updated
{
  currentState = [updated currentState];
  if (currentState)
  {
    [(MSPSenderETAController *)self _setState:currentState forEvent:3];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerIsReady:(id)ready
{
  currentState = [ready currentState];
  if (currentState)
  {
    [(MSPSenderETAController *)self _setState:currentState forEvent:0];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerETAUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:2];
}

- (void)navigationListenerLocationUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:4];
}

- (void)navigationListenerRouteUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:5];
}

- (void)navigationListenerTrafficUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:6];
}

- (void)navigationListenerArrived:(id)arrived
{
  currentState = [arrived currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:7];
}

- (void)navigationListenerResumed:(id)resumed
{
  currentState = [resumed currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:8];
}

- (void)navigationListenerStopped:(id)stopped
{
  currentState = [stopped currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:9];
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
}

- (void)groupSession:(id)session participantDidJoin:(id)join
{
  v12 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v6 = MSPGetSharedTripLog(joinCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = joinCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did join %@", buf, 0xCu);
  }

  if (joinCopy)
  {
    senderStrategyController = self->_senderStrategyController;
    v9 = joinCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(MSPSharedTripSenderStrategyController *)senderStrategyController addLiveParticipants:v8];

    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }
}

- (void)groupSession:(id)session participantDidLeave:(id)leave
{
  v9 = *MEMORY[0x277D85DE8];
  leaveCopy = leave;
  v6 = MSPGetSharedTripLog(leaveCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = leaveCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did leave %@", &v7, 0xCu);
  }

  if (leaveCopy)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController removeLiveParticipant:leaveCopy];
    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }
}

- (void)groupSessionEnded:(id)ended withError:(id)error
{
  errorCopy = error;
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
  [(MSPSenderETAController *)self _invalidateSharedTripWithError:errorCopy];
}

- (MSPSenderETAControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end