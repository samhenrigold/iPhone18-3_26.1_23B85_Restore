@interface VMVoicemailServiceController
- (NSString)description;
- (VMCarrierServicesController)carrierServicesController;
- (VMDAccountManager)accountManager;
- (VMDGreetingManager)greetingManager;
- (VMTranscriptionService)transcriptionService;
- (VMVoicemailServiceController)initWithConnection:(id)connection accountManager:(id)manager greetingManager:(id)greetingManager carrierServicesController:(id)controller transcriptionService:(id)service telephonyClient:(id)client;
- (id).cxx_construct;
- (id)allVoicemails;
- (id)clientConnectionWithErrorHandler:(id)handler;
- (void)_handleCheckSubscriptionStatus:(id)status;
- (void)_handleOnlineStatusChanged:(id)changed;
- (void)_handleSubscriptionStatusChanged:(id)changed;
- (void)_handleSyncStatusChangedNotification:(id)notification;
- (void)_handleVoicemailStorageUsageChanged:(id)changed;
- (void)_handleVoicemailStoreSaved;
- (void)accounts:(id)accounts;
- (void)accountsDidChangeForAccountManager:(id)manager;
- (void)allVoicemails:(id)voicemails;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)createPersonalizedTranscript:(id)transcript reply:(id)reply;
- (void)createTranscription:(id)transcription transcription:(id)a4 reply:(id)reply;
- (void)dealloc;
- (void)getServiceInfoForAccountUUID:(id)d reply:(id)reply;
- (void)greetingChangedByCarrier:(id)carrier;
- (void)greetingForAccountUUID:(id)d reply:(id)reply;
- (void)greetingManager:(id)manager greetingDidChangeForAccountUUID:(id)d;
- (void)greetingManager:(id)manager greetingWillChangeForAccountUUID:(id)d;
- (void)insertVoicemail:(id)voicemail;
- (void)isAccountOnline:(id)online reply:(id)reply;
- (void)isAccountSubscribed:(id)subscribed reply:(id)reply;
- (void)isCallVoicemailSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)isGreetingChangeSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)isPasscodeChangeSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)maximumGreetingDurationForAccountUUID:(id)d reply:(id)reply;
- (void)maximumPasscodeLengthForAccountUUID:(id)d reply:(id)reply;
- (void)messageCountForMailboxType:(int64_t)type read:(BOOL)read reply:(id)reply;
- (void)messageCountForMailboxType:(int64_t)type reply:(id)reply;
- (void)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply;
- (void)messagesForMailboxType:(int64_t)type read:(BOOL)read limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply;
- (void)minimumPasscodeLengthForAccountUUID:(id)d reply:(id)reply;
- (void)obliterate;
- (void)ping:(id)ping;
- (void)remapAccount:(id)account toAccount:(id)toAccount;
- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)identifier;
- (void)reportTranscriptionProblemForIdentifier:(int64_t)identifier;
- (void)reportTranscriptionProblemForUUID:(id)d;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forIdentifier:(int64_t)identifier;
- (void)reportTranscriptionRatedAccurateForUUID:(BOOL)d forVoicemailUUID:(id)iD;
- (void)requestInitialState:(id)state;
- (void)requestTranscriptionProgress:(id)progress;
- (void)resetNetworkSettings;
- (void)retrieveDataForIdentifier:(int64_t)identifier;
- (void)sendStateRequestForAccountUUID:(id)d;
- (void)setAccountProperties:(id)properties properties:(id)a4 reply:(id)reply;
- (void)setDeletedForIdentifier:(int64_t)identifier;
- (void)setDeletedForIdentifiers:(id)identifiers;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d reply:(id)reply;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d reply:(id)reply;
- (void)setReadForIdentifier:(int64_t)identifier;
- (void)setReadForIdentifiers:(id)identifiers;
- (void)setTrashedForIdentifiers:(id)identifiers;
- (void)storageUsageForAccountUUID:(id)d reply:(id)reply;
- (void)synchronize;
- (void)transcriptionAvailabilityChanged:(BOOL)changed;
- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed;
- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed;
- (void)transcriptionController:(id)controller transcriptionStatusChanged:(BOOL)changed;
@end

@implementation VMVoicemailServiceController

- (VMCarrierServicesController)carrierServicesController
{
  WeakRetained = objc_loadWeakRetained(&self->_carrierServicesController);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0uLL;
  *(self + 4) = 0;
  return self;
}

- (VMTranscriptionService)transcriptionService
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptionService);

  return WeakRetained;
}

- (VMDAccountManager)accountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);

  return WeakRetained;
}

- (id)clientConnectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (VMVoicemailServiceController)initWithConnection:(id)connection accountManager:(id)manager greetingManager:(id)greetingManager carrierServicesController:(id)controller transcriptionService:(id)service telephonyClient:(id)client
{
  connectionCopy = connection;
  managerCopy = manager;
  greetingManagerCopy = greetingManager;
  obj = controller;
  serviceCopy = service;
  clientCopy = client;
  v44.receiver = self;
  v44.super_class = VMVoicemailServiceController;
  v17 = [(VMVoicemailServiceController *)&v44 init];
  if (v17)
  {
    vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
    v19 = NSStringFromSelector("queue");
    v20 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v19];

    v21 = v20;
    v22 = dispatch_queue_create([v20 UTF8String], 0);
    objc_storeStrong(&v17->_queue, v22);
    v23 = objc_storeWeak(&v17->_accountManager, managerCopy);
    [managerCopy addDelegate:v17 queue:v17->_queue];

    v24 = objc_storeWeak(&v17->_greetingManager, greetingManagerCopy);
    [greetingManagerCopy addDelegate:v17 queue:v17->_queue];

    objc_storeStrong(&v17->_connection, connection);
    [(NSXPCConnection *)v17->_connection setDelegate:v17];
    v17->procPid = [connectionCopy processIdentifier];
    sub_100002EBC();
    p_procName = &v17->procName;
    if (*(&v17->procName.__rep_.__l + 23) < 0)
    {
      operator delete(*p_procName);
    }

    v26 = *&buf[16];
    *p_procName = *buf;
    *(&v17->procName.__rep_.__l + 2) = v26;
    *&v17->fMailsSyncRequested = 0;
    objc_storeWeak(&v17->_carrierServicesController, obj);
    objc_storeWeak(&v17->_transcriptionService, serviceCopy);
    objc_storeStrong(&v17->_telephonyClient, client);
    WeakRetained = objc_loadWeakRetained(&v17->_transcriptionService);
    [WeakRetained addTranscriptionDelegate:v17 queue:v17->_queue];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v17, sub_10000C638, @"com.apple.voicemail.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v17 selector:"_handleSubscriptionStatusChanged:" name:@"VVServiceSubscriptionStatusChangedNotification" object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v17 selector:"_handleCheckSubscriptionStatus:" name:@"VVServiceCheckSubscriptionStatusNotification" object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v17 selector:"_handleOnlineStatusChanged:" name:@"VVServiceOnlineStateChangedNotification" object:0];

    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v17 selector:"_handleSyncStatusChangedNotification:" name:@"VVServiceSyncStatusChangedNotification" object:0];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v17 selector:"_handleVoicemailStorageUsageChanged:" name:@"VVServiceMailboxUsageChangedNotification" object:0];

    v35 = sub_10000294C(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      if (*(&v17->procName.__rep_.__l + 23) < 0)
      {
        p_procName = *p_procName;
      }

      procPid = v17->procPid;
      connection = [(VMVoicemailServiceController *)v17 connection];
      *buf = 138413314;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      *&buf[22] = 2080;
      v46 = p_procName;
      v47 = 1024;
      v48 = procPid;
      v49 = 2048;
      v50 = connection;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@ %p> for client [%s:%d] (conn=%p) Created", buf, 0x30u);
    }
  }

  return v17;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_transcriptionService);
  [WeakRetained removeTranscriptionDelegate:self];

  v7 = sub_10000294C(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    connection = [(VMVoicemailServiceController *)self connection];
    *buf = 138413314;
    v14 = v8;
    v15 = 2048;
    selfCopy = self;
    v17 = 2080;
    v18 = p_procName;
    v19 = 1024;
    v20 = procPid;
    v21 = 2048;
    v22 = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@ %p> for client [%s:%d] (conn=%p) Deleted", buf, 0x30u);
  }

  v12.receiver = self;
  v12.super_class = VMVoicemailServiceController;
  [(VMVoicemailServiceController *)&v12 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  p_procName = &self->procName;
  if (*(&self->procName.__rep_.__l + 23) < 0)
  {
    p_procName = p_procName->__rep_.__l.__data_;
  }

  procPid = self->procPid;
  connection = [(VMVoicemailServiceController *)self connection];
  [v3 appendFormat:@", client [%s:%d] (conn=%p)", p_procName, procPid, connection];

  [v3 appendString:@">"];

  return v3;
}

- (void)_handleVoicemailStorageUsageChanged:(id)changed
{
  changedCopy = changed;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = changedCopy;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v13, 0x16u);
  }

  if (self->fStateSyncRequested)
  {
    userInfo = [changedCopy userInfo];
    v8 = [userInfo valueForKey:@"accountUUID"];

    userInfo2 = [changedCopy userInfo];
    v10 = [userInfo2 valueForKey:@"MailboxUsage"];

    connection = [(VMVoicemailServiceController *)self connection];
    v12 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED938];
    [v12 setStorageUsage:v8 storageUsage:{objc_msgSend(v10, "unsignedIntValue")}];
  }
}

- (void)_handleVoicemailStoreSaved
{
  if (self->fMailsSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v3 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED958];
    allVoicemails = [(VMVoicemailServiceController *)self allVoicemails];
    [v3 voicemailsUpdated:allVoicemails];
  }
}

- (void)_handleSubscriptionStatusChanged:(id)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED978];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSubscribed:{objc_msgSend(carrierServicesController, "isSubscribed")}];
  }
}

- (void)_handleCheckSubscriptionStatus:(id)status
{
  if (self->fStateSyncRequested)
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009B644(v4);
    }

    connection = [(VMVoicemailServiceController *)self connection];
    v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED998];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v6 setSubscribed:{objc_msgSend(carrierServicesController, "isSubscribed")}];
  }
}

- (void)_handleOnlineStatusChanged:(id)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED9B8];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setOnline:{objc_msgSend(carrierServicesController, "isOnline")}];
  }
}

- (void)transcriptionAvailabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    connection = [(VMVoicemailServiceController *)self connection];
    v10 = asNSStringBOOL();
    v13 = 138413570;
    v14 = v6;
    v15 = 2048;
    selfCopy = self;
    v17 = 2080;
    v18 = p_procName;
    v19 = 1024;
    v20 = procPid;
    v21 = 2048;
    v22 = connection;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@ %p> updating client [%s:%d] (conn=%p) transcription availability status changed to %@", &v13, 0x3Au);
  }

  if (self->fStateSyncRequested)
  {
    connection2 = [(VMVoicemailServiceController *)self connection];
    v12 = [connection2 remoteObjectProxyWithErrorHandler:&stru_1000ED9D8];
    [v12 setTranscriptionServiceAvailable:changedCopy];
  }
}

- (void)transcriptionController:(id)controller transcriptionStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  controllerCopy = controller;
  if (changedCopy)
  {
    transcriptionService = [(VMVoicemailServiceController *)self transcriptionService];
    getTranscriptionProgress = [transcriptionService getTranscriptionProgress];
    v10 = v9;
    v11 = *&getTranscriptionProgress;

    v12 = [NSNumber numberWithDouble:v11];
    v13 = [NSNumber numberWithUnsignedLong:v10];
    v14 = [NSString stringWithFormat:@" (fractionCompleted %@, totalUnitCount %@)", v12, v13];
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = &stru_1000F0098;
  }

  v15 = vm_vmd_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v14;
    v24 = controllerCopy;
    v16 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    connection = [(VMVoicemailServiceController *)self connection];
    v20 = asNSStringBOOL();
    *buf = 138413826;
    v26 = v16;
    v27 = 2048;
    selfCopy = self;
    v29 = 2080;
    v30 = p_procName;
    v31 = 1024;
    v32 = procPid;
    v33 = 2048;
    v34 = connection;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v14 = v23;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%@ %p> updating client [%s:%d] (conn=%p) transcribing status changed to %@%@", buf, 0x44u);

    controllerCopy = v24;
  }

  if (self->fStateSyncRequested)
  {
    connection2 = [(VMVoicemailServiceController *)self connection];
    v22 = [connection2 remoteObjectProxyWithErrorHandler:&stru_1000ED9F8];
    [v22 setTranscribing:changedCopy fractionCompleted:v12 totalUnitCount:v13];
  }
}

- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v5 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA18];
    v6 = [NSNumber numberWithDouble:changed];
    [v5 setProgressFractionCompleted:v6];
  }
}

- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v5 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA38];
    v6 = [NSNumber numberWithUnsignedLong:changed];
    [v5 setProgressTotalUnitCount:v6];
  }
}

- (void)_handleSyncStatusChangedNotification:(id)notification
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA58];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSyncInProgress:{objc_msgSend(carrierServicesController, "isSyncInProgress")}];
  }
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v7 = 138412290;
    v8 = connection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got pinged by client: %@", &v7, 0xCu);
  }

  pingCopy[2](pingCopy, 1);
}

- (void)requestInitialState:(id)state
{
  stateCopy = state;
  self->fStateSyncRequested = 1;
  v17 = stateCopy;
  if (stateCopy)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    isSubscribed = [carrierServicesController isSubscribed];
    carrierServicesController2 = [(VMVoicemailServiceController *)self carrierServicesController];
    isOnline = [carrierServicesController2 isOnline];
    carrierServicesController3 = [(VMVoicemailServiceController *)self carrierServicesController];
    isSyncInProgress = [carrierServicesController3 isSyncInProgress];
    transcriptionService = [(VMVoicemailServiceController *)self transcriptionService];
    isTranscriptionServiceAvailable = [transcriptionService isTranscriptionServiceAvailable];
    transcriptionService2 = [(VMVoicemailServiceController *)self transcriptionService];
    cache_isTranscribing = [transcriptionService2 cache_isTranscribing];
    carrierServicesController4 = [(VMVoicemailServiceController *)self carrierServicesController];
    getStorageUsage = [carrierServicesController4 getStorageUsage];
    v17[2](v17, isSubscribed, isOnline, isSyncInProgress, isTranscriptionServiceAvailable, cache_isTranscribing, getStorageUsage);
  }
}

- (void)requestTranscriptionProgress:(id)progress
{
  progressCopy = progress;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    connection = [(VMVoicemailServiceController *)self connection];
    v18 = 138413314;
    v19 = v6;
    v20 = 2048;
    selfCopy = self;
    v22 = 2080;
    v23 = p_procName;
    v24 = 1024;
    v25 = procPid;
    v26 = 2048;
    v27 = connection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %p client [%s:%d] (conn=%p) requested transcription progress", &v18, 0x30u);
  }

  if (progressCopy)
  {
    transcriptionService = [(VMVoicemailServiceController *)self transcriptionService];
    cache_isTranscribing = [transcriptionService cache_isTranscribing];

    if (cache_isTranscribing)
    {
      transcriptionService2 = [(VMVoicemailServiceController *)self transcriptionService];
      getTranscriptionProgress = [transcriptionService2 getTranscriptionProgress];
      v15 = v14;

      v16 = [NSNumber numberWithDouble:*&getTranscriptionProgress];
      v17 = [NSNumber numberWithUnsignedLong:v15];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    progressCopy[2](progressCopy, cache_isTranscribing, v16, v17);
  }
}

- (void)synchronize
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Synchronize requested from client", v5, 2u);
  }

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController synchronize];
}

- (void)retrieveDataForIdentifier:(int64_t)identifier
{
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController retrieveDataForRecord:v5];

    CFRelease(v5);
  }
}

- (id)allVoicemails
{
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

  v21 = VMStoreCopyOfAllRecordsWithFlags(0, 0, 0);
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v21 count]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v21;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [VMVoicemail messageForRecord:*(*(&v26 + 1) + 8 * i) forContexts:subscriptions andIsoCodes:getIsoContryCodes];
        v13 = v12;
        if (v12 && [v12 isDataAvailable] && (objc_msgSend(v13, "isDeleted") & 1) == 0 && (objc_msgSend(v13, "isTemporary") & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v14 = [v7 sortedArrayUsingComparator:&stru_1000EDA98];
  v15 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v14 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [v15 addObject:*(*(&v22 + 1) + 8 * j)];
      }

      v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v15;
}

- (void)allVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  self->fMailsSyncRequested = 1;
  v6 = voicemailsCopy;
  if (voicemailsCopy)
  {
    allVoicemails = [(VMVoicemailServiceController *)self allVoicemails];
    v6[2](v6, allVoicemails);
  }
}

- (void)setTrashedForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController moveRecordsWithIdentifiersToTrash:identifiersCopy];
}

- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController moveRecordsWithIdentifiersToInbox:v6];
}

- (void)setDeletedForIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController moveRecordsWithIdentifiersToDeleted:v6];
}

- (void)setDeletedForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController moveRecordsWithIdentifiersToDeleted:identifiersCopy];
}

- (void)setReadForIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController markRecordsWithIdentifiersAsRead:v6];
}

- (void)setReadForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController markRecordsWithIdentifiersAsRead:identifiersCopy];
}

- (void)remapAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = toAccountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "VMVoicemailServiceController: remapAccount %@ %@", &v12, 0x16u);
  }

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v10 = [[NSUUID alloc] initWithUUIDString:accountCopy];
  v11 = [[NSUUID alloc] initWithUUIDString:toAccountCopy];
  [carrierServicesController remapAccount:v10 toAccount:v11];
}

- (void)resetNetworkSettings
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetNetworkSettings", v5, 2u);
  }

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController resetNetworkSettings];
}

- (void)reportTranscriptionProblemForIdentifier:(int64_t)identifier
{
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@>", &v11, 0xCu);
  }

  v7 = VMStoreCopyRecordWithIdentifier();
  if (v7)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionProblemForRecord:v7];

    CFRelease(v7);
  }

  else
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:identifier];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@> failed with error record not found", &v11, 0xCu);
    }
  }
}

- (void)reportTranscriptionProblemForUUID:(id)d
{
  dCopy = d;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <uuid identifier=%@>", &v9, 0xCu);
  }

  v6 = sub_10008C108(dCopy);
  if (v6)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionProblemForRecord:v6];

    CFRelease(v6);
  }

  else
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <uuid identifier=%@> failed with error record not found", &v9, 0xCu);
    }
  }
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forIdentifier:(int64_t)identifier
{
  accurateCopy = accurate;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asNSStringBOOL();
    v9 = [NSNumber numberWithInteger:identifier];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting transcription marked accurate (%@) for record <identifier=%@>", &v15, 0x16u);
  }

  v10 = VMStoreCopyRecordWithIdentifier();
  if (v10)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionRatedAccurate:accurateCopy forRecord:v10];

    CFRelease(v10);
  }

  else
  {
    v12 = vm_vmd_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asNSStringBOOL();
      v14 = [NSNumber numberWithInteger:identifier];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Reporting transcription accurate (%@) for record <identifier=%@> failed with error record not found", &v15, 0x16u);
    }
  }
}

- (void)reportTranscriptionRatedAccurateForUUID:(BOOL)d forVoicemailUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asNSStringBOOL();
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = iDCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting transcription marked accurate (%@) for record <uuid identifier=%@>", &v13, 0x16u);
  }

  v9 = sub_10008C108(iDCopy);
  if (v9)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionRatedAccurate:dCopy forRecord:v9];

    CFRelease(v9);
  }

  else
  {
    v11 = vm_vmd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asNSStringBOOL();
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = iDCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting transcription marked accurate (%@) for record <uuid identifier=%@> failed with error record not found", &v13, 0x16u);
    }
  }
}

- (void)obliterate
{
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting (obliterate) VVM...", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Voicemail" error:&v7];
  v5 = v7;

  if (v4)
  {
    notify_post([kVVReloadServiceNotification UTF8String]);
  }

  else
  {
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009B960(v5, v6);
    }
  }
}

- (void)insertVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  receiverDestinationID = [voicemailCopy receiverDestinationID];
  v7 = [telephonyClient subscriptionContextWithPhoneNumber:receiverDestinationID];

  firstObject = v7;
  if (!v7)
  {
    telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
    userDefaultVoiceSubscriptionContext = [telephonyClient2 userDefaultVoiceSubscriptionContext];

    firstObject = userDefaultVoiceSubscriptionContext;
    if (!userDefaultVoiceSubscriptionContext)
    {
      telephonyClient3 = [(VMVoicemailServiceController *)self telephonyClient];
      subscriptions = [telephonyClient3 subscriptions];
      firstObject = [subscriptions firstObject];
    }
  }

  v12 = [NSUUID alloc];
  labelID = [firstObject labelID];
  v51 = [v12 initWithUUIDString:labelID];

  phoneNumber = [firstObject phoneNumber];
  date = [voicemailCopy date];
  [date timeIntervalSince1970];
  v16 = v15;
  senderDestinationID = [voicemailCopy senderDestinationID];
  v49 = [NSString stringWithFormat:@"%f_%@", v16, senderDestinationID];

  LODWORD(senderDestinationID) = [voicemailCopy remoteUID];
  date2 = [voicemailCopy date];
  [date2 timeIntervalSince1970];
  v20 = v19;
  senderDestinationID2 = [voicemailCopy senderDestinationID];
  callbackDestinationID = [voicemailCopy callbackDestinationID];
  objc_msgSend_duration(voicemailCopy);
  v24 = VMStoreCreateAndAddRecord(senderDestinationID, v20, v49, senderDestinationID2, callbackDestinationID, v23, 0, 0, phoneNumber, v51);

  VMStoreSave();
  v25 = VMStoreRecordCopyDescription(v24);
  dataURL = [voicemailCopy dataURL];
  path = [dataURL path];

  v48 = VMStoreRecordCopyDataPath(v24);
  v28 = +[NSFileManager defaultManager];
  LODWORD(v12) = [v28 fileExistsAtPath:path];

  if (v12)
  {
    v29 = +[NSFileManager defaultManager];
    v54 = 0;
    v30 = [v29 copyItemAtPath:path toPath:v48 error:&v54];
    v31 = v54;

    if (v30)
    {
      VMStoreRecordSetFlag(v51, v24, 2u);
    }

    else
    {
      v34 = vm_vmd_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10009BA54();
      }
    }
  }

  else
  {
    v32 = vm_vmd_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10009B9EC();
    }

    Flags = VMStoreRecordGetFlags(v24);
    VMStoreRecordSetFlags(v51, v24, Flags & 0xFFFFFFFD);
  }

  transcriptionURL = [voicemailCopy transcriptionURL];
  path2 = [transcriptionURL path];

  v37 = VMStoreRecordCopyTranscriptionPath(v24);
  v38 = +[NSFileManager defaultManager];
  v39 = [v38 fileExistsAtPath:path2];

  if (v39)
  {
    v40 = +[NSFileManager defaultManager];
    v53 = 0;
    v41 = [v40 copyItemAtPath:path2 toPath:v37 error:&v53];
    v42 = v53;

    if (v41)
    {
      VMStoreRecordSetFlag(v51, v24, 0x100u);
    }

    else
    {
      v45 = vm_vmd_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10009BB24();
      }
    }
  }

  else
  {
    v43 = vm_vmd_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_10009BABC();
    }

    v44 = VMStoreRecordGetFlags(v24);
    VMStoreRecordSetFlags(v51, v24, v44 & 0xFFFE6DFF | 0x1000);
  }

  v46 = VMStoreRecordCopyDescription(v24);

  v47 = vm_vmd_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v46;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Created record %@", buf, 0xCu);
  }

  VMStoreSave();
  if (v24)
  {
    VMStoreRecordRelease(v24);
  }
}

- (void)createTranscription:(id)transcription transcription:(id)a4 reply:(id)reply
{
  transcriptionCopy = transcription;
  v8 = a4;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController createTranscription:transcriptionCopy transcription:v8 completion:replyCopy];
}

- (void)createPersonalizedTranscript:(id)transcript reply:(id)reply
{
  transcriptCopy = transcript;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController createPersonalizedTranscript:transcriptCopy completion:replyCopy];
}

- (void)sendStateRequestForAccountUUID:(id)d
{
  dCopy = d;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController sendStateRequestForAccountUUID:dCopy];
}

- (void)getServiceInfoForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v8 = [carrierServicesController getServiceInfoForAccountUUID:dCopy];
  replyCopy[2](replyCopy, v8);
}

- (void)accounts:(id)accounts
{
  accountsCopy = accounts;
  accountManager = [(VMVoicemailServiceController *)self accountManager];
  accounts = [accountManager accounts];
  accountsCopy[2](accountsCopy, accounts);
}

- (void)isAccountSubscribed:(id)subscribed reply:(id)reply
{
  subscribedCopy = subscribed;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isAccountSubscribed:subscribedCopy completion:replyCopy];
}

- (void)isAccountOnline:(id)online reply:(id)reply
{
  onlineCopy = online;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isAccountOnline:onlineCopy completion:replyCopy];
}

- (void)isCallVoicemailSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isCallVoicemailSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)isPasscodeChangeSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isPasscodeChangeSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)minimumPasscodeLengthForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController minimumPasscodeLengthForAccountUUID:dCopy completion:replyCopy];
}

- (void)maximumPasscodeLengthForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController maximumPasscodeLengthForAccountUUID:dCopy completion:replyCopy];
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d reply:(id)reply
{
  passcodeCopy = passcode;
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController setPasscode:passcodeCopy forAccountUUID:dCopy completion:replyCopy];
}

- (void)storageUsageForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController storageUsageForAccountUUID:dCopy completion:replyCopy];
}

- (void)setAccountProperties:(id)properties properties:(id)a4 reply:(id)reply
{
  propertiesCopy = properties;
  v9 = a4;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v14 = 0;
  v12 = [carrierServicesController setAccountProperties:propertiesCopy properties:v9 error:&v14];
  v13 = v14;

  replyCopy[2](replyCopy, v12, v13);
}

- (void)accountsDidChangeForAccountManager:(id)manager
{
  managerCopy = manager;
  queue = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDAB8];
  accounts = [managerCopy accounts];
  [v6 updateAccounts:accounts];
}

- (void)greetingForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController greetingForAccountUUID:dCopy completion:replyCopy];
}

- (void)isGreetingChangeSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isGreetingChangeSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)maximumGreetingDurationForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController maximumGreetingDurationForAccountUUID:dCopy completion:replyCopy];
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d reply:(id)reply
{
  greetingCopy = greeting;
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController setGreeting:greetingCopy forAccountUUID:dCopy completion:replyCopy];
}

- (void)greetingManager:(id)manager greetingWillChangeForAccountUUID:(id)d
{
  v4 = [(VMVoicemailServiceController *)self queue:manager];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingManager:(id)manager greetingDidChangeForAccountUUID:(id)d
{
  v4 = [(VMVoicemailServiceController *)self queue:manager];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingChangedByCarrier:(id)carrier
{
  carrierCopy = carrier;
  queue = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDAD8];
  [v6 greetingChangedByCarrier:carrierCopy];
}

- (void)messageCountForMailboxType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  v5 = sub_10001BFFC(type);
  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v5, 0);
  replyCopy[2](replyCopy, RecordCountWithMailboxType);
}

- (void)messageCountForMailboxType:(int64_t)type read:(BOOL)read reply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  v7 = sub_10001BFFC(type);
  v8 = &kCFBooleanTrue;
  if (!readCopy)
  {
    v8 = &kCFBooleanFalse;
  }

  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v7, *v8);
  replyCopy[2](replyCopy, RecordCountWithMailboxType);
}

- (void)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply
{
  offsetCopy = offset;
  limitCopy = limit;
  replyCopy = reply;
  v11 = +[NSMutableArray array];
  v12 = sub_10001BFFC(type);
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

  v17 = VMStoreCopyRecordsWithMailboxType(v12, 0, limitCopy, offsetCopy);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100010BEC;
  v21[3] = &unk_1000EDB00;
  v18 = subscriptions;
  v22 = v18;
  v19 = getIsoContryCodes;
  v23 = v19;
  v20 = v11;
  v24 = v20;
  [v17 enumerateObjectsUsingBlock:v21];
  replyCopy[2](replyCopy, v20);
}

- (void)messagesForMailboxType:(int64_t)type read:(BOOL)read limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply
{
  offsetCopy = offset;
  limitCopy = limit;
  readCopy = read;
  replyCopy = reply;
  v13 = +[NSMutableArray array];
  v14 = sub_10001BFFC(type);
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

  v19 = &kCFBooleanTrue;
  if (!readCopy)
  {
    v19 = &kCFBooleanFalse;
  }

  v20 = VMStoreCopyRecordsWithMailboxType(v14, *v19, limitCopy, offsetCopy);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100010E84;
  v24[3] = &unk_1000EDB00;
  v21 = subscriptions;
  v25 = v21;
  v22 = getIsoContryCodes;
  v26 = v22;
  v23 = v13;
  v27 = v23;
  [v20 enumerateObjectsUsingBlock:v24];
  replyCopy[2](replyCopy, v23);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = invocationCopy;
  if (replyCopy)
  {
    [invocationCopy invoke];
  }

  else
  {
    invocationDescription = [invocationCopy invocationDescription];
    v12 = sub_10000294C(invocationDescription);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      p_procName = &self->procName;
      if (*(&self->procName.__rep_.__l + 23) < 0)
      {
        p_procName = p_procName->__rep_.__l.__data_;
      }

      procPid = self->procPid;
      *buf = 136315906;
      *&buf[4] = p_procName;
      v26 = 1024;
      v27 = procPid;
      v28 = 2048;
      v29 = connectionCopy;
      v30 = 2112;
      v31 = invocationDescription;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client [%s:%d] (conn=%p) invoking %@", buf, 0x26u);
    }

    connection = [(VMVoicemailServiceController *)self connection];
    exportedInterface = [connection exportedInterface];
    v17 = [exportedInterface replyBlockSignatureForSelector:{objc_msgSend(v10, "selector")}];

    if (v17)
    {
      getBlockArgumentIndex = [v10 getBlockArgumentIndex];
      *buf = 0;
      [v10 getArgument:buf atIndex:getBlockArgumentIndex];
      v19 = NSStringFromSelector([v10 selector]);
      v20 = [*buf copy];
      v21 = v17;
      [v17 UTF8String];
      v22 = v19;
      v23 = v20;
      v24 = __NSMakeSpecialForwardingCaptureBlock();
      [v10 setArgument:&v24 atIndex:{getBlockArgumentIndex, _NSConcreteStackBlock, 3221225472, sub_100011254, &unk_1000EDB28}];
      [v10 invoke];
    }

    else
    {
      [v10 invoke];
    }
  }
}

- (VMDGreetingManager)greetingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_greetingManager);

  return WeakRetained;
}

@end