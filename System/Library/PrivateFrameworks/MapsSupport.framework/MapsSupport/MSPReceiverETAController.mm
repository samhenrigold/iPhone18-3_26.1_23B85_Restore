@interface MSPReceiverETAController
- (BOOL)_allowMessageWithState:(id)state forGroup:(id)group fromID:(id)d;
- (BOOL)_cleanUpNecessaryForGroup:(id)group;
- (BOOL)subscribeToUpdatesToSharedTrip:(id)trip error:(id *)error;
- (BOOL)unsubscribeFromUpdatesToSharedTrip:(id)trip error:(id *)error;
- (MSPReceiverETAController)initWithRelay:(id)relay;
- (MSPReceiverETAControllerDelegate)delegate;
- (NSArray)allTrips;
- (void)_cleanGroup:(id)group;
- (void)_cleanupIfNecessary;
- (void)_resolveContactIfNeeded:(id)needed fromId:(id)id completion:(id)completion;
- (void)_showOrUpdateNotificationIfNeeded:(id)needed;
- (void)_updateData:(id)data forGroup:(id)group fromID:(id)d;
- (void)_updateDelegateWithUpdateState:(id)state to:(id)to freshAvailable:(BOOL)available;
- (void)blockSharedTrip:(id)trip;
- (void)cleanTimer;
- (void)clearBlockedTripIdentifiers;
- (void)dealloc;
- (void)groupSessionEnded:(id)ended;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)relay:(id)relay receiveData:(id)data info:(id)info fromID:(id)d;
- (void)relay:(id)relay sharingClosed:(id)closed;
- (void)storageController:(id)controller updatedSharedTripGroupStorage:(id)storage;
- (void)updateContacts;
@end

@implementation MSPReceiverETAController

- (NSArray)allTrips
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  storageController = [WeakRetained storageController];
  [storageController initialiseStoredSessionsIfNeeded];

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableOrderedSet count](self->_orderedNavStateIdentifiers, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_orderedNavStateIdentifiers;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (MSPReceiverETAController)initWithRelay:(id)relay
{
  relayCopy = relay;
  v22.receiver = self;
  v22.super_class = MSPReceiverETAController;
  v5 = [(MSPReceiverETAController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_idsRelay, relayCopy);
    v7 = +[MSPSharedTripBlocklist sharedInstance];
    blockedList = v6->_blockedList;
    v6->_blockedList = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedSessions = v6->_sharedSessions;
    v6->_sharedSessions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedNavStates = v6->_sharedNavStates;
    v6->_sharedNavStates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    waitingNavStates = v6->_waitingNavStates;
    v6->_waitingNavStates = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB40]);
    orderedNavStateIdentifiers = v6->_orderedNavStateIdentifiers;
    v6->_orderedNavStateIdentifiers = v15;

    storageController = [relayCopy storageController];
    [storageController setDelegate:v6];

    [relayCopy setDelegate:v6];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_updateContacts name:*MEMORY[0x277CBD140] object:0];
  }

  v19 = MSPGetSharedTripLog(v5);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "MSPReceiverETAController initialized", v21, 2u);
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
    v6 = "[MSPReceiverETAController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Receiver] %{private}s", buf, 0xCu);
  }

  [(NSTimer *)self->_cleanupTimer invalidate];
  v4.receiver = self;
  v4.super_class = MSPReceiverETAController;
  [(MSPReceiverETAController *)&v4 dealloc];
}

- (void)cleanTimer
{
  [(NSTimer *)self->_cleanupTimer invalidate];
  cleanupTimer = self->_cleanupTimer;
  self->_cleanupTimer = 0;
}

- (BOOL)subscribeToUpdatesToSharedTrip:(id)trip error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v7 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 138412290;
    *&v24[4] = tripCopy;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController subscribeToUpdatesToSharedTrip sharedTripIdentifier: %@", v24, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  storageController = [WeakRetained storageController];
  v10 = [storageController groupSessionInfoForKey:tripCopy];

  if ([v10 hasState])
  {
    state = [v10 state];
    if ([state closed])
    {

      goto LABEL_7;
    }

    state2 = [v10 state];
    arrived = [state2 arrived];

    if (arrived)
    {
LABEL_7:
      if (error)
      {
        v25[0] = *MEMORY[0x277CCA068];
        *v24 = @"Trip already ended";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v25 count:1];
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:18 userInfo:v14];

        v16 = v15;
        v17 = 0;
        *error = v15;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_13;
    }
  }

  v18 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:tripCopy];
  if (!v18)
  {
    v18 = [WeakRetained groupSessionForIdentifier:tripCopy];
    [(NSMutableDictionary *)self->_sharedSessions setObject:v18 forKeyedSubscript:tripCopy];
    if (!self->_transaction)
    {
      v19 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v19;
    }
  }

  receivingHandle = [v10 receivingHandle];
  receivingAccountIdentifier = [v10 receivingAccountIdentifier];
  v17 = [v18 joinLiveModeFromHandle:receivingHandle fromAccountID:receivingAccountIdentifier error:error];

LABEL_13:
  return v17;
}

- (BOOL)unsubscribeFromUpdatesToSharedTrip:(id)trip error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v7 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412290;
    *&v16[4] = tripCopy;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController unsubscribeFromUpdatesToSharedTrip sharedTripIdentifier: %@", v16, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:tripCopy];
  v9 = v8;
  if (!v8)
  {
    if (error)
    {
      v17[0] = *MEMORY[0x277CCA068];
      *v16 = @"Invalid trip ID";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:17 userInfo:v12];

      v14 = v13;
      v11 = 0;
      *error = v13;
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (![v8 leaveLiveModeIfNeeded:error])
  {
    goto LABEL_10;
  }

  [(NSMutableDictionary *)self->_sharedSessions setObject:0 forKeyedSubscript:tripCopy];
  if (![(NSMutableDictionary *)self->_sharedSessions count])
  {
    transaction = self->_transaction;
    self->_transaction = 0;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)blockSharedTrip:(id)trip
{
  v26 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v5 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = tripCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController blockSharedTrip identifier: %@", buf, 0xCu);
  }

  [(MSPReceiverETAController *)self unsubscribeFromUpdatesToSharedTrip:tripCopy error:0];
  v6 = MSPGetSharedTripLog([(MSPSharedTripBlocklist *)self->_blockedList blockIdentifier:tripCopy]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    blockedList = self->_blockedList;
    *buf = 138412290;
    v25 = blockedList;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController blockSharedTrip _blockedList: %@", buf, 0xCu);
  }

  allValues = [(NSMutableDictionary *)self->_sharedNavStates allValues];
  v9 = [allValues copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = self->_blockedList;
        groupIdentifier = [v15 groupIdentifier];
        LODWORD(v16) = [(MSPSharedTripBlocklist *)v16 containsIdentifier:groupIdentifier];

        if (v16)
        {
          groupIdentifier2 = [v15 groupIdentifier];
          [(MSPReceiverETAController *)self _cleanGroup:groupIdentifier2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)clearBlockedTripIdentifiers
{
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController clear blocked trip identifiers", v4, 2u);
  }

  [(MSPSharedTripBlocklist *)self->_blockedList clearBlockedIdentifiers];
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController purge expired blocked trip identifiers", v4, 2u);
  }

  [(MSPSharedTripBlocklist *)self->_blockedList purgeExpiredIdentifiers];
}

- (void)_showOrUpdateNotificationIfNeeded:(id)needed
{
  v38 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (GEOConfigGetBOOL())
  {
    v5 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:neededCopy];
    if ([v5 hasClosed])
    {
      closed = [v5 closed];
      if (closed)
      {
        v7 = MSPGetSharedTripLog(closed);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = neededCopy;
          v8 = "[SR] _showOrUpdateNotification trip closed id %@";
LABEL_10:
          _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, v8, &v32, 0xCu);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    if ([v5 hasMuted])
    {
      muted = [v5 muted];
      if (muted)
      {
        v7 = MSPGetSharedTripLog(muted);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = neededCopy;
          v8 = "[SR] _showOrUpdateNotification trip muted id %@";
          goto LABEL_10;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    v7 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:neededCopy];
    inLiveMode = [v7 inLiveMode];
    if (inLiveMode)
    {
      WeakRetained = MSPGetSharedTripLog(inLiveMode);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = neededCopy;
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification while in live mode %@", &v32, 0xCu);
      }

      goto LABEL_30;
    }

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    storageController = [WeakRetained storageController];
    v13 = [storageController receivingRulesForIdentifier:neededCopy];

    if (v13)
    {
      destinationWaypointInfo = [v5 destinationWaypointInfo];
      if (destinationWaypointInfo)
      {
        v15 = destinationWaypointInfo;
        etaInfo = [v5 etaInfo];
        if (etaInfo)
        {
          v17 = etaInfo;
          senderInfo = [v5 senderInfo];
          localName = [senderInfo localName];

          if (localName)
          {
            etaInfo2 = [v5 etaInfo];
            [etaInfo2 etaTimestamp];
            v22 = v21;
            [v5 updatedTimestamp];
            [v13 didReceiveUpdateWithETA:v22 lastUpdated:v23];

            v24 = [v13 currentlyNecessaryNotificationTypeForState:v5];
            v25 = MSPGetSharedTripLog(v24);
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              if (v26)
              {
                mspDescription = [v5 mspDescription];
                v28 = MSPSharedTripNotificationTypeAsString(v24);
                v32 = 138412802;
                v33 = neededCopy;
                v34 = 2112;
                v35 = mspDescription;
                v36 = 2114;
                v37 = v28;
                _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification id %@ state %@ notificationType: %{public}@", &v32, 0x20u);
              }

              mapsNotificationCenter = self->_mapsNotificationCenter;
              data = [v5 data];
              [(MDNotificationCenter *)mapsNotificationCenter showSharedTripNotification:neededCopy ofType:v24 forState:data];

              [v13 didPostNotificationType:v24 forState:v5];
            }

            else
            {
              if (v26)
              {
                LOWORD(v32) = 0;
                _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification not showing notification as type is none", &v32, 2u);
              }
            }

            storageController2 = [WeakRetained storageController];
            [storageController2 receivingRulesTouched];
LABEL_29:

LABEL_30:
            goto LABEL_31;
          }
        }

        else
        {
        }
      }
    }

    storageController2 = MSPGetSharedTripLog(destinationWaypointInfo);
    if (os_log_type_enabled(storageController2, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412546;
      v33 = v13;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_25813A000, storageController2, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification skipping notification, rules: %@ currentState: %@", &v32, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_32:
}

- (void)_resolveContactIfNeeded:(id)needed fromId:(id)id completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  completionCopy = completion;
  sharedNavStates = self->_sharedNavStates;
  idCopy = id;
  v12 = [(NSMutableDictionary *)sharedNavStates objectForKeyedSubscript:neededCopy];
  v13 = [idCopy componentsSeparatedByString:@":"];

  lastObject = [v13 lastObject];
  senderInfo = [v12 senderInfo];
  [senderInfo setFromIdentifier:lastObject];

  senderInfo2 = [v12 senderInfo];
  hasLocalName = [senderInfo2 hasLocalName];

  if (hasLocalName)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke;
    v31[3] = &unk_279865EF8;
    v18 = v12;
    v32 = v18;
    v19 = lastObject;
    v33 = v19;
    v20 = MEMORY[0x259C7AD60](v31);
    _maps_isAuthorized = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    v22 = _maps_isAuthorized;
    v23 = MSPGetSharedTripLog(_maps_isAuthorized);
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        mspDescription = [v18 mspDescription];
        *buf = 138478339;
        v35 = v19;
        v36 = 2112;
        v37 = neededCopy;
        v38 = 2112;
        v39 = mspDescription;
        _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_INFO, "[SR] _resolveContact %{private}@ (id %@ state %@)", buf, 0x20u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke_22;
      v27[3] = &unk_279865F20;
      v28 = v18;
      v29 = v20;
      v30 = completionCopy;
      [MSPContact contactWithAccountIdentifier:v19 completion:v27];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        mspDescription2 = [v18 mspDescription];
        *buf = 138478339;
        v35 = v19;
        v36 = 2112;
        v37 = neededCopy;
        v38 = 2112;
        v39 = mspDescription2;
        _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_ERROR, "[SR] _resolveContact [not authorized for Contacts access] %{private}@ (id %@ state %@)", buf, 0x20u);
      }

      v20[2](v20);
      completionCopy[2](completionCopy);
    }
  }
}

void __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) senderInfo];
  v3 = [v2 fromDisplayName];
  v4 = [v3 length];

  if (v4)
  {
    v8 = [*(a1 + 32) senderInfo];
    v5 = [v8 fromDisplayName];
    v6 = [*(a1 + 32) senderInfo];
    [v6 setLocalName:v5];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) senderInfo];
    [v8 setLocalName:v7];
  }
}

void __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 length] && objc_msgSend(v5, "length"))
  {
    v6 = [*(a1 + 32) senderInfo];
    [v6 setLocalName:v8];

    v7 = [*(a1 + 32) senderInfo];
    [v7 setLocalContactIdentifier:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateContacts
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_sharedNavStates allValues];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        senderInfo = [v6 senderInfo];
        [senderInfo setLocalName:0];

        senderInfo2 = [v6 senderInfo];
        [senderInfo2 setLocalContactIdentifier:0];

        objc_initWeak(&location, self);
        groupIdentifier = [v6 groupIdentifier];
        senderInfo3 = [v6 senderInfo];
        fromIdentifier = [senderInfo3 fromIdentifier];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __42__MSPReceiverETAController_updateContacts__block_invoke;
        v13[3] = &unk_279865F48;
        objc_copyWeak(&v14, &location);
        v13[4] = v6;
        [(MSPReceiverETAController *)self _resolveContactIfNeeded:groupIdentifier fromId:fromIdentifier completion:v13];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void __42__MSPReceiverETAController_updateContacts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 10);
    v4 = v7[3];
    v5 = [*(a1 + 32) groupIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    [v3 etaController:v7 didUpdateETAForSharedTrip:v6];

    WeakRetained = v7;
  }
}

- (BOOL)_allowMessageWithState:(id)state forGroup:(id)group fromID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dCopy = d;
  if ([(__CFString *)groupCopy length])
  {
    v9 = [(MSPSharedTripBlocklist *)self->_blockedList containsIdentifier:groupCopy];
    if (v9)
    {
      v10 = MSPGetSharedTripLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        blockedList = self->_blockedList;
        v38 = 138412546;
        v39 = blockedList;
        v40 = 2112;
        v41 = groupCopy;
        v12 = "[SR] _allowMessageWithState NO blocklist %@ contains identifier %@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
LABEL_7:
        _os_log_impl(&dword_25813A000, v13, v14, v12, &v38, v15);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v10 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:groupCopy];
    if (v10)
    {
      v16 = [(__CFString *)dCopy componentsSeparatedByString:@":"];
      lastObject = [v16 lastObject];
      if (![lastObject length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v18 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:groupCopy];
      initiatorIdentifier = [v18 initiatorIdentifier];
      v20 = [initiatorIdentifier isEqualToString:dCopy];

      v21 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:groupCopy];
      accountIdentifiers = [v21 accountIdentifiers];
      v23 = [accountIdentifiers containsObject:lastObject];

      if ((v20 & 1) == 0 && (v23 & 1) == 0)
      {
        v25 = MSPGetSharedTripLog(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v38 = 138412290;
          v39 = dCopy;
          _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_ERROR, "fromID %@", &v38, 0xCu);
        }

        v27 = MSPGetSharedTripLog(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:groupCopy];
          initiatorIdentifier2 = [v28 initiatorIdentifier];
          v38 = 138412290;
          v39 = initiatorIdentifier2;
          _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_ERROR, "initiatorIdentifier %@", &v38, 0xCu);
        }

        v31 = MSPGetSharedTripLog(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:groupCopy];
          accountIdentifiers2 = [v32 accountIdentifiers];
          v38 = 138412290;
          v39 = accountIdentifiers2;
          _os_log_impl(&dword_25813A000, v31, OS_LOG_TYPE_ERROR, "accountIdentifiers %@", &v38, 0xCu);
        }

        v35 = MSPGetSharedTripLog(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v38 = 138412546;
          v39 = @"NO";
          v40 = 2112;
          v41 = @"NO";
          _os_log_impl(&dword_25813A000, v35, OS_LOG_TYPE_ERROR, "_allowMessageWithState NO senderIsGroupInitiator %@, groupContainsSender %@", &v38, 0x16u);
        }

        goto LABEL_21;
      }
    }

    v36 = 1;
    goto LABEL_23;
  }

  v10 = MSPGetSharedTripLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v38) = 0;
    v12 = "[SR] _allowMessageWithState NO nil group identifier";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 2;
    goto LABEL_7;
  }

LABEL_22:
  v36 = 0;
LABEL_23:

  return v36;
}

- (void)_updateData:(id)data forGroup:(id)group fromID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  groupCopy = group;
  dCopy = d;
  v11 = [objc_alloc(MEMORY[0x277D0ED30]) initWithData:dataCopy];
  if ([v11 hasEtaInfo] & 1) != 0 || (objc_msgSend(v11, "hasRouteInfo") & 1) != 0 || (objc_msgSend(v11, "hasDestinationInfo") & 1) != 0 || objc_msgSend(v11, "waypointInfosCount") || (v12 = objc_msgSend(v11, "hasSenderInfo"), (v12))
  {
    v13 = [(MSPReceiverETAController *)self _allowMessageWithState:v11 forGroup:groupCopy fromID:dCopy];
    if (v13)
    {
      v14 = MSPGetSharedTripLog([v11 setGroupIdentifier:groupCopy]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        mspDescription = [v11 mspDescription];
        *buf = 138412290;
        v42 = mspDescription;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[SR] processing incoming state %@", buf, 0xCu);
      }

      v16 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:groupCopy];
      v35 = [v11 copy];
      WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
      storageController = [WeakRetained storageController];
      [storageController updateGroupSessionStorageWithState:v35];

      if (v16)
      {
        v19 = MSPGetSharedTripLog([v16 merge:v11]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          mspDescription2 = [v16 mspDescription];
          *buf = 138412290;
          v42 = mspDescription2;
          _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_INFO, "[SR] merge with existing state %@", buf, 0xCu);
        }

        v21 = v16;
      }

      else
      {
        v27 = v11;
        v28 = [(NSMutableDictionary *)self->_waitingNavStates objectForKeyedSubscript:groupCopy];
        v19 = v28;
        if (v28)
        {
          [v28 merge:v27];
          v21 = v19;

          v30 = MSPGetSharedTripLog(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            mspDescription3 = [v21 mspDescription];
            *buf = 138412290;
            v42 = mspDescription3;
            _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_INFO, "[SR] merge with waiting state %@", buf, 0xCu);
          }
        }

        else
        {
          v21 = v27;
        }

        if (([v21 hasDestinationInfo]& 1) == 0 && ![v21 waypointInfosCount]|| ([v21 hasSenderInfo]& 1) == 0)
        {
          v32 = MSPGetSharedTripLog([(NSMutableDictionary *)self->_waitingNavStates setObject:v21 forKeyedSubscript:groupCopy]);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            mspDescription4 = [v21 mspDescription];
            *buf = 138412290;
            v42 = mspDescription4;
            _os_log_impl(&dword_25813A000, v32, OS_LOG_TYPE_INFO, "[SR] wait state %@", buf, 0xCu);
          }

          goto LABEL_33;
        }

        [(NSMutableDictionary *)self->_waitingNavStates setObject:0 forKeyedSubscript:groupCopy];
        [(NSMutableDictionary *)self->_sharedNavStates setObject:v21 forKeyedSubscript:groupCopy];
        if (([(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers containsObject:groupCopy]& 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers insertObject:groupCopy atIndex:0];
        }
      }

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      [v21 setLocalUpdatedTimestamp:?];

      if ([(MSPReceiverETAController *)self _cleanUpNecessaryForGroup:groupCopy])
      {
        [(MSPReceiverETAController *)self _cleanGroup:groupCopy];
      }

      else
      {
        if (!self->_cleanupTimer)
        {
          v24 = MEMORY[0x277CBEBB8];
          GEOConfigGetDouble();
          v25 = [v24 scheduledTimerWithTimeInterval:self target:sel__cleanupIfNecessary selector:0 userInfo:1 repeats:?];
          cleanupTimer = self->_cleanupTimer;
          self->_cleanupTimer = v25;
        }

        objc_initWeak(buf, self);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __56__MSPReceiverETAController__updateData_forGroup_fromID___block_invoke;
        v36[3] = &unk_279865F70;
        objc_copyWeak(&v39, buf);
        v37 = v35;
        v21 = v21;
        v38 = v21;
        v40 = v16 == 0;
        [(MSPReceiverETAController *)self _resolveContactIfNeeded:groupCopy fromId:dCopy completion:v36];

        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }

LABEL_33:

      goto LABEL_34;
    }

    v21 = MSPGetSharedTripLog(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      mspDescription5 = [v11 mspDescription];
      *buf = 138412290;
      v42 = mspDescription5;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_DEFAULT, "[SR] discarding message %@", buf, 0xCu);
    }
  }

  else
  {
    v21 = MSPGetSharedTripLog(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mspDescription6 = [v11 mspDescription];
      *buf = 138412290;
      v42 = mspDescription6;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[SR] incoming state is missing too many fields: %@", buf, 0xCu);
    }
  }

LABEL_34:
}

void __56__MSPReceiverETAController__updateData_forGroup_fromID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateDelegateWithUpdateState:*(a1 + 32) to:*(a1 + 40) freshAvailable:*(a1 + 56)];
}

- (void)_updateDelegateWithUpdateState:(id)state to:(id)to freshAvailable:(BOOL)available
{
  availableCopy = available;
  v44 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  toCopy = to;
  hasRouteInfo = [stateCopy hasRouteInfo];
  hasDestinationInfo = [stateCopy hasDestinationInfo];
  hasEtaInfo = [stateCopy hasEtaInfo];
  LODWORD(v13) = [stateCopy arrived];
  closed = [stateCopy closed];
  hasMuted = [stateCopy hasMuted];
  if (hasMuted && (hasMuted = [stateCopy muted], hasMuted))
  {
    v15 = MSPGetSharedTripIDSTransportLog(hasMuted);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      mspDescription = [stateCopy mspDescription];
      *buf = 138412290;
      v35 = mspDescription;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[SR] _updateDelegateWithUpdateState update muted %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = MSPGetSharedTripLog(hasMuted);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v13;
      if (hasDestinationInfo)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      selfCopy = self;
      v19 = v18;
      if (hasRouteInfo)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      if (hasEtaInfo)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v31 = hasEtaInfo;
      v23 = v22;
      if (v13)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v30 = hasRouteInfo;
      v25 = v24;
      if (closed)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v13 = v26;
      *buf = 138413314;
      v35 = v19;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v23;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[SR] update delegate destination %@ route %@ eta %@ arrived %@ closed %@", buf, 0x34u);

      LOBYTE(v13) = v32;
      hasRouteInfo = v30;

      hasEtaInfo = v31;
      self = selfCopy;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = WeakRetained;
    if (availableCopy)
    {
      [WeakRetained etaController:self sharedTripDidBecomeAvailable:toCopy];
    }

    if (closed)
    {
      [toCopy stripArrivedOrClosedTrip];
      [v15 etaController:self sharedTripDidClose:toCopy];
    }

    else if (v13)
    {
      [toCopy stripArrivedOrClosedTrip];
      [v15 etaController:self didUpdateReachedDestinationForSharedTrip:toCopy];
    }

    else
    {
      if (hasDestinationInfo)
      {
        [v15 etaController:self didUpdateDestinationForSharedTrip:toCopy];
      }

      if ((hasRouteInfo | hasEtaInfo))
      {
        [toCopy truncatePointDataForPrivacy];
        [v15 etaController:self didUpdateRouteForSharedTrip:toCopy];
      }

      if (hasEtaInfo)
      {
        [v15 etaController:self didUpdateETAForSharedTrip:toCopy];
      }
    }

    groupIdentifier = [toCopy groupIdentifier];
    [(MSPReceiverETAController *)self _showOrUpdateNotificationIfNeeded:groupIdentifier];
  }
}

- (void)_cleanupIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sharedNavStates allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(MSPReceiverETAController *)self _cleanUpNecessaryForGroup:v8])
        {
          [(MSPReceiverETAController *)self _cleanGroup:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_cleanUpNecessaryForGroup:(id)group
{
  v48 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:groupCopy];
  v6 = v5;
  if (v5)
  {
    hasLocalUpdatedTimestamp = [v5 hasLocalUpdatedTimestamp];
    if ((hasLocalUpdatedTimestamp & 1) == 0)
    {
      v9 = MSPGetSharedTripLog(hasLocalUpdatedTimestamp);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v34 = 138412290;
        v35 = groupCopy;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "_cleanUpNecessaryForGroup called for group %@ without update timestamp", &v34, 0xCu);
      }

      goto LABEL_36;
    }

    v8 = MEMORY[0x277CBEAA8];
    [v6 localUpdatedTimestamp];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    Double = GEOConfigGetDouble();
    if (v11 < -v13)
    {
      v14 = MSPGetSharedTripLog(Double);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412290;
        v35 = groupCopy;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "_cleanUpNecessaryForGroup cleaning group %@ as abandoned", &v34, 0xCu);
      }

LABEL_35:

LABEL_36:
      v15 = 1;
LABEL_37:

      goto LABEL_38;
    }

    v16 = [v6 hasArrived] && objc_msgSend(v6, "arrived") && objc_msgSend(v6, "numberOfIntermediateStopsRemaining") == 0;
    if ([v6 hasClosed])
    {
      closed = [v6 closed];
    }

    else
    {
      closed = 0;
    }

    v18 = MEMORY[0x277CBEAA8];
    etaInfo = [v6 etaInfo];
    [etaInfo etaTimestamp];
    v20 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    [v20 timeIntervalSinceNow];
    v22 = v21;

    if ([v6 hasClosureReason])
    {
      closureReason = [v6 closureReason];
      if (closureReason == 1)
      {
        v24 = 0.0;
        v25 = 1;
        goto LABEL_22;
      }

      v25 = closureReason;
    }

    else
    {
      v25 = 0;
    }

    closureReason = GEOConfigGetDouble();
    v24 = v26;
LABEL_22:
    v15 = 0;
    if (v11 >= -v24 || !((v16 | closed) & 1 | (v22 < 0.0)))
    {
      goto LABEL_37;
    }

    v14 = MSPGetSharedTripLog(closureReason);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v16)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = v27;
      if (closed)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v30 = v29;
      if (v22 >= 0.0)
      {
        v31 = @"NO";
      }

      else
      {
        v31 = @"YES";
      }

      v32 = v31;
      v34 = 138544898;
      v35 = groupCopy;
      v36 = 2048;
      v37 = v24;
      v38 = 2114;
      v39 = @"YES";
      v40 = 2114;
      v41 = v28;
      v42 = 2114;
      v43 = v30;
      v44 = 2048;
      v45 = v25;
      v46 = 2114;
      v47 = v32;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "_cleanUpNecessaryForGroup %{public}@ (updateLongerAgoThanExpiryInterval %#.1lfs %{public}@, arrived %{public}@, closed %{public}@ for reason %lu, etaInPast %{public}@)", &v34, 0x48u);
    }

    goto LABEL_35;
  }

  v15 = 0;
LABEL_38:

  return v15;
}

- (void)_cleanGroup:(id)group
{
  v21 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = MSPGetSharedTripIDSTransportLog(groupCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = groupCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[SR] cleanGroup %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  storageController = [WeakRetained storageController];
  [storageController removeSession:groupCopy];

  v8 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:groupCopy];
  [(NSMutableDictionary *)self->_sharedSessions setObject:0 forKeyedSubscript:groupCopy];
  [(NSMutableDictionary *)self->_waitingNavStates setObject:0 forKeyedSubscript:groupCopy];
  [(NSMutableDictionary *)self->_sharedNavStates setObject:0 forKeyedSubscript:groupCopy];
  [(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers removeObject:groupCopy];
  if (v8)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __40__MSPReceiverETAController__cleanGroup___block_invoke;
    v16 = &unk_279865EF8;
    selfCopy = self;
    v18 = v8;
    dispatch_async(MEMORY[0x277D85CD0], &v13);
  }

  v9 = [(NSMutableDictionary *)self->_sharedNavStates allKeys:v13];
  v10 = [v9 count];

  if (!v10)
  {
    [(NSTimer *)self->_cleanupTimer invalidate];
    cleanupTimer = self->_cleanupTimer;
    self->_cleanupTimer = 0;
  }

  if (![(NSMutableDictionary *)self->_sharedSessions count])
  {
    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

void __40__MSPReceiverETAController__cleanGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained etaController:*(a1 + 32) sharedTripDidBecomeUnavailable:*(a1 + 40)];
}

- (void)relay:(id)relay receiveData:(id)data info:(id)info fromID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  dataCopy = data;
  infoCopy = info;
  dCopy = d;
  v14 = MSPGetSharedTripIDSTransportLog(dCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = infoCopy;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[SR] receiveData from %@", buf, 0xCu);
  }

  v15 = [infoCopy objectForKeyedSubscript:@"chunkGroupIDKey"];
  v16 = MEMORY[0x277D85CD0];
  v17 = MEMORY[0x277D85CD0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v28 = __58__MSPReceiverETAController_relay_receiveData_info_fromID___block_invoke;
  v29 = &unk_279865F98;
  selfCopy = self;
  v18 = dataCopy;
  v31 = v18;
  v19 = v15;
  v32 = v19;
  v20 = dCopy;
  v33 = v20;
  v21 = v16;
  v22 = v27;
  label = dispatch_queue_get_label(v16);
  v24 = dispatch_queue_get_label(0);
  if (label == v24 || label && v24 && !strcmp(label, v24))
  {
    v25 = objc_autoreleasePoolPush();
    v28(v22);
    objc_autoreleasePoolPop(v25);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  v26 = MEMORY[0x277D85CD0];
}

- (void)relay:(id)relay sharingClosed:(id)closed
{
  v25 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  closedCopy = closed;
  v8 = MSPGetSharedTripIDSTransportLog(closedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = closedCopy;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[SR] sharingClosed %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85CD0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __48__MSPReceiverETAController_relay_sharingClosed___block_invoke;
  v20 = &unk_279865EF8;
  selfCopy = self;
  v11 = closedCopy;
  v22 = v11;
  v12 = v9;
  v13 = v18;
  label = dispatch_queue_get_label(v9);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || label && v15 && !strcmp(label, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v19(v13);
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  v17 = MEMORY[0x277D85CD0];
}

void *__48__MSPReceiverETAController_relay_sharingClosed___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUpNecessaryForGroup:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _cleanGroup:v4];
  }

  return result;
}

- (void)storageController:(id)controller updatedSharedTripGroupStorage:(id)storage
{
  v30 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v6 = MSPGetSharedTripLog(storageCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = storageCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[SR] updatedSharedTripGroupStorage %@", buf, 0xCu);
  }

  allKeys = [storageCopy allKeys];
  v8 = [allKeys copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = MSPGetSharedTripLog(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v13;
          _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[SR] keys %@", buf, 0xCu);
        }

        v15 = [storageCopy objectForKeyedSubscript:v13];
        state = [v15 state];
        v17 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v13];

        if (!v17)
        {
          v19 = MSPGetSharedTripLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v13;
            _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[SR] restore %@", buf, 0xCu);
          }

          data = [state data];
          fromID = [v15 fromID];
          [(MSPReceiverETAController *)self _updateData:data forGroup:v13 fromID:fromID];
        }

        ++v12;
      }

      while (v10 != v12);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v9;
    }

    while (v9);
  }
}

- (void)groupSessionEnded:(id)ended
{
  endedCopy = ended;
  identifier = [endedCopy identifier];
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __46__MSPReceiverETAController_groupSessionEnded___block_invoke;
  v17 = &unk_279865EF8;
  selfCopy = self;
  v8 = identifier;
  v19 = v8;
  v9 = v6;
  v10 = v15;
  label = dispatch_queue_get_label(v6);
  v12 = dispatch_queue_get_label(0);
  if (label == v12 || label && v12 && !strcmp(label, v12))
  {
    v13 = objc_autoreleasePoolPush();
    v16(v10);
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v14 = MEMORY[0x277D85CD0];
}

void *__46__MSPReceiverETAController_groupSessionEnded___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUpNecessaryForGroup:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _cleanGroup:v4];
  }

  return result;
}

- (MSPReceiverETAControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end