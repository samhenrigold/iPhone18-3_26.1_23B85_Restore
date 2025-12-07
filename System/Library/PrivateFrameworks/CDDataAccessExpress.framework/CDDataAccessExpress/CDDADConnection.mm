@interface CDDADConnection
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update;
- (BOOL)_validateXPCReply:(id)reply;
- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d;
- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d;
- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (BOOL)registerForInterrogationWithBlock:(id)block;
- (BOOL)requestPolicyUpdateForAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithSyncKeyMap:(id)map forAccountID:(id)d;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d;
- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent;
- (BOOL)watchFoldersWithSyncKeyMap:(id)map forAccountID:(id)d persistent:(BOOL)persistent;
- (CDDADConnection)init;
- (id)_connection;
- (id)_createReplyToRequest:(id)request withProperties:(id)properties;
- (id)_init;
- (id)activeSyncDeviceIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock;
- (id)currentPolicyKeyForAccountID:(id)d;
- (id)decodedErrorFromData:(id)data;
- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)statusReports;
- (unint64_t)requestDaemonStopMonitoringAgents;
- (unint64_t)requestDaemonStopMonitoringAgentsSync;
- (void)_calendarAvailabilityRequestFinished:(id)finished;
- (void)_calendarAvailabilityRequestReturnedResults:(id)results;
- (void)_calendarDirectorySearchFinished:(id)finished;
- (void)_calendarDirectorySearchReturnedResults:(id)results;
- (void)_cancelDownloadsWithIDs:(id)ds error:(id)error;
- (void)_dispatchMessage:(id)message;
- (void)_downloadFinished:(id)finished;
- (void)_downloadProgress:(id)progress;
- (void)_folderChangeFinished:(id)finished;
- (void)_foldersUpdated:(id)updated;
- (void)_getStatusReportsFromClient:(id)client;
- (void)_initializeConnection;
- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint;
- (void)_initializeXPCConnection:(id)connection;
- (void)_oofSettingsRequestsFinished:(id)finished;
- (void)_policyKeyChanged:(id)changed;
- (void)_registerForAppResumedNotification;
- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)status withToken:(unint64_t)token waitForReply:(BOOL)reply;
- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_resetThrottleTimersForAccountId:(id)id;
- (void)_sendSynchronousXPCMessageWithParameters:(id)parameters handlerBlock:(id)block;
- (void)_serverContactsSearchQueryFinished:(id)finished;
- (void)_serverDiedWithReason:(id)reason;
- (void)_shareResponseFinished:(id)finished;
- (void)_tearDownInFlightObjects;
- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelDownloadingAttachmentWithDownloadID:(id)d error:(id)error;
- (void)cancelServerContactsSearch:(id)search;
- (void)dealloc;
- (void)externalIdentificationForAccountID:(id)d resultsBlock:(id)block;
- (void)fillOutCurrentEASTimeZoneInfo;
- (void)handleURL:(id)l;
- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block;
- (void)reallyRegisterForInterrogation;
- (void)removeStoresForAccountWithID:(id)d;
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
@end

@implementation CDDADConnection

- (void)_tearDownInFlightObjects
{
  v129 = *MEMORY[0x277D85DE8];
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy_;
  v121 = __Block_byref_object_dispose_;
  v122 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_278D54308;
  block[5] = &v117;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v118[5];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v5];

  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy_;
  v114 = __Block_byref_object_dispose_;
  v115 = 0;
  v6 = self->_muckingWithInFlightCollections;
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_105;
  v109[3] = &unk_278D54308;
  v109[5] = &v110;
  v109[4] = self;
  dispatch_sync(v6, v109);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v7 = v111[5];
  v8 = [v7 countByEnumeratingWithState:&v105 objects:v128 count:16];
  if (v8)
  {
    v9 = *v106;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v106 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v105 + 1) + 8 * i);
        consumer = [v11 consumer];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [consumer folderChange:v11 finishedWithStatus:0 error:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v105 objects:v128 count:16];
    }

    while (v8);
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy_;
  v103 = __Block_byref_object_dispose_;
  v104 = 0;
  v14 = self->_muckingWithInFlightCollections;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_106;
  v98[3] = &unk_278D54308;
  v98[5] = &v99;
  v98[4] = self;
  dispatch_sync(v14, v98);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v15 = v100[5];
  v16 = [v15 countByEnumeratingWithState:&v94 objects:v127 count:16];
  if (v16)
  {
    v17 = *v95;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v95 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v94 + 1) + 8 * j);
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [v19 finishedWithError:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v94 objects:v127 count:16];
    }

    while (v16);
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy_;
  v92 = __Block_byref_object_dispose_;
  v93 = 0;
  v21 = self->_muckingWithInFlightCollections;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_107;
  v87[3] = &unk_278D54308;
  v87[5] = &v88;
  v87[4] = self;
  dispatch_sync(v21, v87);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v22 = v89[5];
  v23 = [v22 countByEnumeratingWithState:&v83 objects:v126 count:16];
  if (v23)
  {
    v24 = *v84;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v84 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v83 + 1) + 8 * k);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v26 finishedWithError:v27];
      }

      v23 = [v22 countByEnumeratingWithState:&v83 objects:v126 count:16];
    }

    while (v23);
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy_;
  v81 = __Block_byref_object_dispose_;
  v82 = 0;
  v28 = self->_muckingWithInFlightCollections;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_108;
  v76[3] = &unk_278D54308;
  v76[4] = self;
  v76[5] = &v77;
  dispatch_sync(v28, v76);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v29 = v78[5];
  v30 = [v29 countByEnumeratingWithState:&v72 objects:v125 count:16];
  if (v30)
  {
    v31 = *v73;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v73 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v72 + 1) + 8 * m);
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v33 finishedWithError:v34 exceededResultLimit:0];
      }

      v30 = [v29 countByEnumeratingWithState:&v72 objects:v125 count:16];
    }

    while (v30);
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy_;
  v70 = __Block_byref_object_dispose_;
  v71 = 0;
  v35 = self->_muckingWithInFlightCollections;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_109;
  v65[3] = &unk_278D54308;
  v65[4] = self;
  v65[5] = &v66;
  dispatch_sync(v35, v65);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v36 = v67[5];
  v37 = [v36 countByEnumeratingWithState:&v61 objects:v124 count:16];
  if (v37)
  {
    v38 = *v62;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v61 + 1) + 8 * n);
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v40 finishedWithError:v41];
      }

      v37 = [v36 countByEnumeratingWithState:&v61 objects:v124 count:16];
    }

    while (v37);
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v60 = 0;
  v42 = self->_muckingWithInFlightCollections;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_110;
  v54[3] = &unk_278D54308;
  v54[4] = self;
  v54[5] = &v55;
  dispatch_sync(v42, v54);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = v56[5];
  v44 = [v43 countByEnumeratingWithState:&v50 objects:v123 count:16];
  if (v44)
  {
    v45 = *v51;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v50 + 1) + 8 * ii);
        consumer2 = [v47 consumer];
        v49 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [consumer2 oofRequestInfo:v47 finishedWithResult:0 error:v49];
      }

      v44 = [v43 countByEnumeratingWithState:&v50 objects:v123 count:16];
    }

    while (v44);
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(&v117, 8);
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing ALL search queries", v7, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_105(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Failing all folder changes", v7, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_106(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all attachment downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_107(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar availability lookups", v7, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_108(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar search requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_109(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all share requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all settings requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

- (void)_serverDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Daemon died, cleaning up.";
      v8 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (reasonCopy == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      v7 = "LOOK AT ME!!!! dataaccessd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v8 = &v10;
LABEL_7:
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(CDDADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(CDDADConnection *)self setRegistered:0];
}

- (id)_connection
{
  conn = self->_conn;
  if (!conn)
  {
    [(CDDADConnection *)self _initializeConnection];
    conn = self->_conn;
  }

  return conn;
}

- (void)_initializeConnection
{
  muckingWithConn = self->_muckingWithConn;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CDDADConnection__initializeConnection__block_invoke;
  block[3] = &unk_278D542E0;
  block[4] = self;
  dispatch_sync(muckingWithConn, block);
}

void __40__CDDADConnection__initializeConnection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [@"com.apple.remindd.dataaccess" UTF8String];
  v3 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(v2, v3, 0);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = mach_service;

  v7 = *(a1 + 32);
  if (v7[1])
  {

    [v7 _initializeXPCConnection:?];
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = @"com.apple.remindd.dataaccess";
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_ERROR, "Couldn't create a connection to [%@]", &v9, 0xCu);
    }
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CDDADConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_278D542B8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(muckingWithConn, v7);
}

void __56__CDDADConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = xpc_connection_create_from_endpoint(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  if (v5[1])
  {

    [v5 _initializeXPCConnection:?];
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, "Couldn't create a connection to endpoint: [%@]", &v8, 0xCu);
    }
  }
}

- (void)_initializeXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CDDADConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_278D54330;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(connectionCopy, v5);
  xpc_connection_resume(connectionCopy);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__CDDADConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245D11100]();
  if (v3 == MEMORY[0x277D86480])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _serverDiedWithReason:v5];
  }

  else
  {
    if (v3 != MEMORY[0x277D86468])
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dispatchMessage:v5];
  }

LABEL_6:
}

- (id)_createReplyToRequest:(id)request withProperties:(id)properties
{
  propertiesCopy = properties;
  reply = xpc_dictionary_create_reply(request);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __56__CDDADConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278D54358;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (id)decodedErrorFromData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v10];
    v5 = v10;
    if (!v4)
    {
      v6 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode error: %@", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"root"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_policyKeyChanged:(id)changed
{
  changedCopy = changed;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CDDADConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_278D542E0;
  v6 = changedCopy;
  v4 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__CDDADConnection__policyKeyChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = _CFXPCCreateCFObjectFromXPCObject();
  v2 = [v1 objectForKeyedSubscript:@"kDAEPolicyKeyKey"];
  v3 = [v1 objectForKeyedSubscript:@"kDAEPolicyErrorCodeKey"];
  v4 = [v1 objectForKeyedSubscript:@"kDAEAccountIdKey"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    if (v3)
    {
      v11 = @"ASPolicyKey";
      v12 = @"ASPolicyErrorCodeKey";
      v13 = v2;
      v14 = v3;
      v6 = MEMORY[0x277CBEAC0];
      v7 = &v13;
      v8 = &v11;
      v9 = 2;
    }

    else
    {
      v15 = @"ASPolicyKey";
      v16 = v2;
      v6 = MEMORY[0x277CBEAC0];
      v7 = &v16;
      v8 = &v15;
      v9 = 1;
    }

    v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:{v9, v11, v12, v13, v14, v15, v16}];
    [v5 postNotificationName:@"ASPolicyKeyChangedNotification" object:v4 userInfo:v10];
  }

  else
  {
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v1;
      _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_ERROR, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }
}

- (void)_foldersUpdated:(id)updated
{
  updatedCopy = updated;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CDDADConnection__foldersUpdated___block_invoke;
  block[3] = &unk_278D542E0;
  v6 = updatedCopy;
  v4 = updatedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__CDDADConnection__foldersUpdated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = _CFXPCCreateCFObjectFromXPCObject();
  v2 = [v1 objectForKeyedSubscript:@"kDAEFolderIDsKey"];
  v3 = [v1 objectForKeyedSubscript:@"kDAEAccountIdKey"];
  v4 = v3;
  if (!v2)
  {
    v5 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v11 = v1;
    v7 = "Malformed callback message from dataaccess daemon: no folders (%@)";
LABEL_8:
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v3)
  {
    v5 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v11 = v1;
    v7 = "Malformed callback message from dataaccess daemon: bad account id (%@)";
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v8[0] = @"DAChangedFolders";
  v8[1] = @"DAChangedAccountID";
  v9[0] = v2;
  v9[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 postNotificationName:@"DataAccessMonitoredFolderUpdated" object:0 userInfo:v6];

LABEL_9:
}

void __40__CDDADConnection__logDataAccessStatus___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ASClientAccountDumpStatusNotification" object:0];
}

- (void)_serverContactsSearchQueryFinished:(id)finished
{
  v33 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_DEBUG, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CDDADConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v10 = v6;
  v24 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    v11 = [v5 objectForKeyedSubscript:@"kDAESearchResultsKey"];
    if (v11)
    {
      v22 = 0;
      v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:&v22];
      v13 = v22;
      if (!v12)
      {
        v14 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 138412290;
          v27 = v13;
          _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode search results: %@", v26, 0xCu);
        }
      }

      v15 = MEMORY[0x277CBEB98];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v18 = [v12 decodeObjectOfClasses:v17 forKey:@"root"];
    }

    else
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_242505000, v13, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v26, 2u);
      }

      v18 = 0;
    }

    v19 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v26 = 138412290;
      v27 = v18;
      _os_log_impl(&dword_242505000, v19, OS_LOG_TYPE_DEBUG, "Search results: %@", v26, 0xCu);
    }

    [*(*(&buf + 1) + 40) sendResultsToConsumer:v18];
    v20 = *(*(&buf + 1) + 40);
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
    [v20 sendFinishedToConsumerWithError:v21];
  }

  else
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_242505000, v18, OS_LOG_TYPE_ERROR, "received results for an unknown search query", v26, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __54__CDDADConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing query %@ for key %@", &v9, 0x16u);
  }

  return [*(a1[4] + 56) removeObjectForKey:a1[5]];
}

- (void)_folderChangeFinished:(id)finished
{
  v26 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:@"kDAETaskIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
  v7 = [v4 objectForKeyedSubscript:@"kDAEFolderIDKey"];
  v8 = [v4 objectForKeyedSubscript:@"kDAEFolderNameKey"];
  v9 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v10 = [(CDDADConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_DEBUG, "folderChange finished with status %@, error %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CDDADConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v21 = buf;
  block[4] = self;
  v13 = v5;
  v20 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  v14 = *&buf[8];
  v15 = *(*&buf[8] + 40);
  if (v15)
  {
    if (v7)
    {
      [v15 setFolderId:v7];
      v14 = *&buf[8];
    }

    if (v8)
    {
      [*(v14 + 40) setDisplayName:v8];
      v14 = *&buf[8];
    }

    consumer = [*(v14 + 40) consumer];
    -[NSObject folderChange:finishedWithStatus:error:](consumer, "folderChange:finishedWithStatus:error:", *(*&buf[8] + 40), [v6 intValue], v10);
  }

  else
  {
    consumer = DALoggingwithCategory(0);
    if (os_log_type_enabled(consumer, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_242505000, consumer, OS_LOG_TYPE_ERROR, "received results for an unknown folderChange", v18, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __41__CDDADConnection__folderChangeFinished___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing folder change %@ for key %@", &v9, 0x16u);
  }

  return [*(a1[4] + 64) removeObjectForKey:a1[5]];
}

- (void)_getStatusReportsFromClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CDDADConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_278D542B8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

void __47__CDDADConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if ([v4 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v15 + 1) + 8 * v9) dictionaryRepresentation];
            [v2 addObject:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v7);
      }
    }
  }

  v19 = @"kDAEStatusReportsKey";
  v20 = v2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:{1, v15}];
  v12 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v11];
  v13 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v14 = *(*(a1 + 32) + 8);
  if (v14 == v13)
  {
    xpc_connection_send_message(v14, v12);
  }
}

- (void)_downloadProgress:(id)progress
{
  v29 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v15 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v15 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v15 objectForKeyedSubscript:@"kDAEDownloadedBytesKey"];
  longLongValue = [v5 longLongValue];

  v7 = [v15 objectForKeyedSubscript:@"kDAETotalBytesKey"];
  longLongValue2 = [v7 longLongValue];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy_;
        v22 = __Block_byref_object_dispose_;
        v23 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__CDDADConnection__downloadProgress___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v12;
        block[6] = &v18;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v19[5] updateProgressDownloadedByteCount:longLongValue totalByteCount:{longLongValue2, progressCopy}];
        _Block_object_dispose(&v18, 8);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

uint64_t __37__CDDADConnection__downloadProgress___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadFinished:(id)finished
{
  v27 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v13 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v13 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v13 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v6 = [(CDDADConnection *)self decodedErrorFromData:v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy_;
        v20 = __Block_byref_object_dispose_;
        v21 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__CDDADConnection__downloadFinished___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v10;
        block[6] = &v16;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v17[5] finishedWithError:{v6, finishedCopy}];
        _Block_object_dispose(&v16, 8);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

uint64_t __37__CDDADConnection__downloadFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)_shareResponseFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CDDADConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __42__CDDADConnection__shareResponseFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 96);

  return [v6 removeObjectForKey:v5];
}

- (void)_oofSettingsRequestsFinished:(id)finished
{
  v34 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_DEBUG, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CDDADConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v10 = v6;
  v25 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    if (v7)
    {
      if ([v7 intValue] == 2)
      {
        v11 = [v5 objectForKeyedSubscript:@"kDAEOofIsUpdateKey"];
        consumer4 = v11;
        if (v11 && [v11 BOOLValue])
        {
          consumer = [*(*(&buf + 1) + 40) consumer];
          [consumer oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:0 error:0];
        }

        else
        {
          consumer = [v5 objectForKeyedSubscript:@"kDAEOofSettingsResultKey"];
          if (consumer)
          {
            consumer3 = [[DAOofParams alloc] initWithDictionary:consumer];
            v20 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *v27 = 138412290;
              v28 = consumer3;
              _os_log_impl(&dword_242505000, v20, OS_LOG_TYPE_DEBUG, "Oof settings request results: %@", v27, 0xCu);
            }

            consumer2 = [*(*(&buf + 1) + 40) consumer];
            [consumer2 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:consumer3 error:0];
          }

          else
          {
            v22 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v27 = 0;
              _os_log_impl(&dword_242505000, v22, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v27, 2u);
            }

            consumer3 = [*(*(&buf + 1) + 40) consumer];
            v23 = *(*(&buf + 1) + 40);
            consumer2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
            [(DAOofParams *)consumer3 oofRequestInfo:v23 finishedWithResult:0 error:consumer2];
          }
        }
      }

      else
      {
        consumer4 = [*(*(&buf + 1) + 40) consumer];
        v17 = *(*(&buf + 1) + 40);
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
        [consumer4 oofRequestInfo:v17 finishedWithResult:0 error:v18];
      }
    }

    else
    {
      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_INFO, "Status missing from the xpc message", v27, 2u);
      }

      consumer4 = [*(*(&buf + 1) + 40) consumer];
      v15 = *(*(&buf + 1) + 40);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
      [consumer4 oofRequestInfo:v15 finishedWithResult:0 error:v16];
    }
  }

  else
  {
    consumer4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(consumer4, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_242505000, consumer4, OS_LOG_TYPE_ERROR, "received results for an unknown oof settings request", v27, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __48__CDDADConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing from inflight dictionary: oof settings request %@ for key %@", &v9, 0x16u);
  }

  return [*(a1[4] + 104) removeObjectForKey:a1[5]];
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[CDDADConnection sharedConnection];
  }

  [sharedConnection_gDADConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gDADConnection;

  return v2;
}

uint64_t __35__CDDADConnection_sharedConnection__block_invoke()
{
  sharedConnection_gDADConnection = [[CDDADConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v25 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        null = [MEMORY[0x277CBEB68] null];
        [v9 setObject:null forKey:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [(CDDADConnection *)self watchFoldersWithSyncKeyMap:v9 forAccountID:dCopy persistent:persistentCopy];
  return v17;
}

- (BOOL)watchFoldersWithSyncKeyMap:(id)map forAccountID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v21[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  mapCopy = map;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v20[0] = @"kDAEMessageNameKey";
  v20[1] = @"kDAEAccountIdKey";
  v21[0] = @"kDAEBeginMonitoringFolders";
  v21[1] = dCopy;
  v21[2] = mapCopy;
  v20[2] = @"kDAESyncKeyMapKey";
  v20[3] = @"kDAEPersistentMonitoringKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:persistentCopy];
  v21[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v12 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[CDDADConnection watchFoldersWithSyncKeyMap:forAccountID:persistent:]";
    _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v18, 0xCu);
  }

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v15 = xpc_connection_send_message_with_reply_sync(_connection, v13);

  v16 = [(CDDADConnection *)self _validateXPCReply:v15];
  return v16;
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        null = [MEMORY[0x277CBEB68] null];
        [v8 setObject:null forKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(CDDADConnection *)self resumeWatchingFoldersWithSyncKeyMap:v8 forAccountID:dCopy];
  return v16;
}

- (BOOL)resumeWatchingFoldersWithSyncKeyMap:(id)map forAccountID:(id)d
{
  v18[3] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dCopy = d;
  if (self->_conn)
  {
    [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
    v17[0] = @"kDAEMessageNameKey";
    v17[1] = @"kDAEAccountIdKey";
    v18[0] = @"kDAEResumeMonitoringFolders";
    v18[1] = dCopy;
    v17[2] = @"kDAESyncKeyMapKey";
    v18[2] = mapCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[CDDADConnection resumeWatchingFoldersWithSyncKeyMap:forAccountID:]";
      _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v15, 0xCu);
    }

    v10 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    v12 = xpc_connection_send_message_with_reply_sync(_connection, v10);

    v13 = [(CDDADConnection *)self _validateXPCReply:v12];
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_INFO, "[DADConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v15, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = @"kDAEMessageNameKey";
  v18[1] = @"kDAEAccountIdKey";
  v19[0] = @"kDAESuspendMonitoringFolders";
  v19[1] = d;
  v18[2] = @"kDAEFolderIDsKey";
  v19[2] = keys;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v9 = [v6 dictionaryWithObjects:v19 forKeys:v18 count:3];

  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[CDDADConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v16, 0xCu);
  }

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v13 = xpc_connection_send_message_with_reply_sync(_connection, v11);

  v14 = [(CDDADConnection *)self _validateXPCReply:v13];
  return v14;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = @"kDAEMessageNameKey";
  v18[1] = @"kDAEAccountIdKey";
  v19[0] = @"kDAEStopMonitoringFolders";
  v19[1] = d;
  v18[2] = @"kDAEFolderIDsKey";
  v19[2] = keys;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v9 = [v6 dictionaryWithObjects:v19 forKeys:v18 count:3];

  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[CDDADConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v16, 0xCu);
  }

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v13 = xpc_connection_send_message_with_reply_sync(_connection, v11);

  v14 = [(CDDADConnection *)self _validateXPCReply:v13];
  return v14;
}

- (BOOL)_validateXPCReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = MEMORY[0x245D11100]();
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = [v6 objectForKeyedSubscript:@"kDAEStatusKey"];
    intValue = [v8 intValue];
    v7 = intValue == 2;
    if (intValue != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "XPC Reply Failure. Status Code: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)d
{
  v10[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEAccountIdKey";
  v10[0] = @"kDAERequestPolicyUpdate";
  v10[1] = dCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v6);

  return 1;
}

- (id)currentPolicyKeyForAccountID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v22[0] = @"kDAEMessageNameKey";
  v22[1] = @"kDAEAccountIdKey";
  v23[0] = @"kDAEGetCurrentPolicyKey";
  v23[1] = dCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v6 = _CFXPCCreateXPCObjectFromCFObject();
  v7 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v9 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__CDDADConnection_currentPolicyKeyForAccountID___block_invoke;
  handler[3] = &unk_278D543C8;
  v15 = &v16;
  v10 = v7;
  v14 = v10;
  xpc_connection_send_message_with_reply(_connection, v6, v9, handler);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __48__CDDADConnection_currentPolicyKeyForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEPolicyKeyKey"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[CDDADConnection currentPolicyKeyForAccountID:]_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v11, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (unint64_t)_nextStopMonitoringStatusToken
{
  os_unfair_lock_lock(&_nextStopMonitoringStatusToken_nextTokenLock);
  v2 = ++_nextStopMonitoringStatusToken_nextToken;
  os_unfair_lock_unlock(&_nextStopMonitoringStatusToken_nextTokenLock);
  return v2;
}

- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)status withToken:(unint64_t)token waitForReply:(BOOL)reply
{
  replyCopy = reply;
  statusCopy = status;
  v25 = *MEMORY[0x277D85DE8];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"stop";
    if (statusCopy)
    {
      v10 = @"start";
    }

    v21 = 138412290;
    v22 = v10;
    _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_INFO, "Requesting that DataAccess %@ monitoring agents.", &v21, 0xCu);
  }

  v11 = kDAEStopMonitoringAgents;
  if (statusCopy)
  {
    v11 = kDAEStartMonitoringAgents;
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:*v11 forKey:@"kDAEMessageNameKey"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [v12 setObject:v13 forKeyedSubscript:@"kDAEAgentMonitoringToken"];

  if (replyCopy)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kDAEAgentMonitoringNeedsReply"];
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    _connection2 = xpc_connection_send_message_with_reply_sync(_connection, v14);

    if (MEMORY[0x245D11100](_connection2) == MEMORY[0x277D86468])
    {
      v17 = _CFXPCCreateCFObjectFromXPCObject();
      v18 = [v17 objectForKeyedSubscript:@"kDAEStatusKey"];
      v19 = v18;
      if (!v18 || [v18 intValue] != 2)
      {
        v20 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "[CDDADConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v23 = 2112;
          v24 = v19;
          _os_log_impl(&dword_242505000, v20, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v21, 0x16u);
        }
      }
    }
  }

  else
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connection2 = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection2, v14);
  }
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(CDDADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:0];
  return _nextStopMonitoringStatusToken;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(CDDADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:1];
  return _nextStopMonitoringStatusToken;
}

- (void)removeStoresForAccountWithID:(id)d
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEAccountIdKey";
  v10[0] = @"kDAERemoveStoresForAccountWithID";
  v10[1] = d;
  v4 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);
}

- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v22 = dCopy;
    v23 = 2048;
    dataclassesCopy = dataclasses;
    v25 = 1024;
    v26 = foldersCopy;
    v27 = 1024;
    v28 = requestedCopy;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_DEBUG, "updateFolderListForAccountID %@, dataclasses %lx, requireChangedFolders %d, isUserRequested %d", buf, 0x22u);
  }

  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(CDDADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v20[0] = @"kDAERequestFolderListUpdate";
  v20[1] = dCopy;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v20[2] = v12;
  v19[3] = @"kDAERequireChangedFoldersKey";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:foldersCopy];
  v20[3] = v13;
  v19[4] = @"kDAEIsUserRequestedKey";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v20[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  v16 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v16);

  return 1;
}

- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v29 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v12 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v22 = keysCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2048;
    dataclassesCopy = dataclasses;
    v27 = 1024;
    v28 = requestedCopy;
    _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_DEBUG, "updateContentsOfFoldersWithKeys %@ for account id %@, dataclasses 0x%lx isUserRequested %d", buf, 0x26u);
  }

  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(CDDADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v20[0] = @"kDAERequestFolderContentsUpdate";
  v20[1] = dCopy;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v20[2] = v13;
  v19[3] = @"kDAEIsUserRequestedKey";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v19[4] = @"kDAEFolderIDsKey";
  v20[3] = v14;
  v20[4] = keysCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  v16 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v16);

  return 1;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = dCopy;
    v20 = 2048;
    dataclassesCopy = dataclasses;
    v22 = 1024;
    v23 = requestedCopy;
    _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_DEBUG, "updateContentsOfAllFoldersForAccountID %@, dataclasses 0x%lxx isUserRequested %d", buf, 0x1Cu);
  }

  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(CDDADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v17[0] = @"kDAERequestAllFolderContentsUpdate";
  v17[1] = dCopy;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v17[2] = v10;
  v16[3] = @"kDAEIsUserRequestedKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v13);

  return 1;
}

- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d
{
  v31[3] = *MEMORY[0x277D85DE8];
  searchCopy = search;
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:8 isUserRequested:0];
  if (!dCopy)
  {
    v11 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_8:
      _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  searchString = [searchCopy searchString];
  v9 = searchString == 0;

  if (v9)
  {
    v11 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v30[0] = @"kDAEMessageNameKey";
  v30[1] = @"kDAEAccountIdKey";
  v31[0] = @"kDAEOpenServerContactsSearch";
  v31[1] = dCopy;
  v30[2] = @"kDAESearchQueryKey";
  dictionaryRepresentation = [searchCopy dictionaryRepresentation];
  v31[2] = dictionaryRepresentation;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  v12 = _CFXPCCreateXPCObjectFromCFObject();
  v13 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v15 = dispatch_get_global_queue(0, 0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke;
  v20[3] = &unk_278D54418;
  v21 = searchCopy;
  selfCopy = self;
  v24 = &v26;
  v16 = v13;
  v23 = v16;
  xpc_connection_send_message_with_reply(_connection, v12, v15, v20);

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = *(v27 + 24);

LABEL_10:
  _Block_object_dispose(&v26, 8);

  return v17 & 1;
}

void __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAESearchIDKey"];
    [*(a1 + 32) setSearchID:v5];
    v6 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke_2;
    block[3] = &unk_278D543F0;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, block);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Setting search query %@ for key %@", &v6, 0x16u);
  }

  return [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
}

- (void)cancelServerContactsSearch:(id)search
{
  v25 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  searchID = [searchCopy searchID];
  v6 = [searchID length];

  if (v6)
  {
    [searchCopy setState:2];
    [searchCopy setConsumer:0];
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v24 = searchCopy;
      _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Cancelling search task %p", buf, 0xCu);
    }

    searchID2 = [searchCopy searchID];
    v21[0] = @"kDAEMessageNameKey";
    v21[1] = @"kDAESearchIDKey";
    v22[0] = @"kDAECancelServerContactsSearch";
    v22[1] = searchID2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v10);

    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = searchID2;
      _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_DEBUG, "Removing search query for key %@", buf, 0xCu);
    }

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__CDDADConnection_cancelServerContactsSearch___block_invoke;
    v18 = &unk_278D542B8;
    selfCopy = self;
    v20 = searchID2;
    v14 = searchID2;
    dispatch_sync(muckingWithInFlightCollections, &v15);
    [searchCopy setSearchID:{&stru_2854C3900, v15, v16, v17, v18, selfCopy}];
  }
}

- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  v26 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEProcessMeetingRequests", @"kDAEMessageNameKey", withIdCopy, @"kDAEAccountIdKey", idCopy, @"kDAEFolderIDKey", 0}];

  if (requestsCopy)
  {
    [v17 setObject:requestsCopy forKeyedSubscript:@"kDAEMeetingRequestDatasKey"];
  }

  if (clearCopy)
  {
    [v17 setObject:clearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToClearKey"];
  }

  if (softClearCopy)
  {
    [v17 setObject:softClearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToSoftClearKey"];
  }

  v18 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDDADConnection processMeetingRequests:deliveryIdsToClear:deliveryIdsToSoftClear:inFolderWithId:forAccountWithId:]";
    _os_log_impl(&dword_242505000, v18, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v21 = xpc_connection_send_message_with_reply_sync(_connection, v19);

  v22 = [(CDDADConnection *)self _validateXPCReply:v21];
  return v22;
}

- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEAsyncProcessMeetingRequests", @"kDAEMessageNameKey", withIdCopy, @"kDAEAccountIdKey", idCopy, @"kDAEFolderIDKey", 0}];

  if (requestsCopy)
  {
    [v16 setObject:requestsCopy forKeyedSubscript:@"kDAEMeetingRequestDatasKey"];
  }

  if (clearCopy)
  {
    [v16 setObject:clearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToClearKey"];
  }

  if (softClearCopy)
  {
    [v16 setObject:softClearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToSoftClearKey"];
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v17);
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  v13 = MEMORY[0x277CBEB38];
  dCopy = d;
  v15 = [[v13 alloc] initWithObjectsAndKeys:{@"kDAESetFolderIdsThatExternalClientsCareAbout", @"kDAEMessageNameKey", dCopy, @"kDAEAccountIdKey", 0}];

  if (addedCopy)
  {
    [v15 setObject:addedCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsAddedKey"];
  }

  if (deletedCopy)
  {
    [v15 setObject:deletedCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsDeletedKey"];
  }

  if (tagCopy)
  {
    [v15 setObject:tagCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsTagKey"];
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[CDDADConnection setFolderIdsThatExternalClientsCareAboutAdded:deleted:foldersTag:forAccountID:]";
    _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v19 = xpc_connection_send_message_with_reply_sync(_connection, v17);

  v20 = [(CDDADConnection *)self _validateXPCReply:v19];
  return v20;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  v19[5] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v19[0] = @"kDAEReportFolderItemsSyncResult";
    v18[0] = @"kDAEMessageNameKey";
    v18[1] = @"kDAEStatusKey";
    v9 = MEMORY[0x277CCABB0];
    if (success)
    {
      v10 = 2;
    }

    else
    {
      v10 = 10;
    }

    iDCopy = iD;
    dCopy = d;
    v13 = [v9 numberWithInteger:v10];
    v19[1] = v13;
    v19[2] = dCopy;
    v18[2] = @"kDAEFolderIDKey";
    v18[3] = @"kDAEFolderSyncItemsCountKey";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v18[4] = @"kDAEAccountIdKey";
    v19[3] = v14;
    v19[4] = iDCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

    v16 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v16);
  }
}

- (void)handleURL:(id)l
{
  v10[2] = *MEMORY[0x277D85DE8];
  absoluteString = [l absoluteString];
  v5 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], absoluteString, 0, @"&=", 0x8000100u);
  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEURLStringKey";
  v10[0] = @"kDAEHandleURL";
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)_sendSynchronousXPCMessageWithParameters:(id)parameters handlerBlock:(id)block
{
  blockCopy = block;
  parametersCopy = parameters;
  v8 = dispatch_semaphore_create(0);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  _connection = [(CDDADConnection *)self _connection];
  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CDDADConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke;
  v14[3] = &unk_278D54440;
  v15 = v8;
  v16 = blockCopy;
  v12 = v8;
  v13 = blockCopy;
  xpc_connection_send_message_with_reply(_connection, v9, v11, v14);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void __73__CDDADConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) && MEMORY[0x245D11100](v4) == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock
{
  v36[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v17 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = iDCopy;
    _os_log_impl(&dword_242505000, v17, OS_LOG_TYPE_INFO, "Requesting download of attachment UUID %@ for accountID %@", buf, 0x16u);
  }

  v18 = [[DADownloadContext alloc] initWithAttachmentUUID:dCopy accountID:iDCopy queue:queueCopy downloadProgressBlock:blockCopy completionBlock:completionBlockCopy];
  v35[0] = @"kDAEMessageNameKey";
  v35[1] = @"kDAEAttachmentUUIDKey";
  v36[0] = @"kDAEBeginDownloadingAttachment";
  v36[1] = dCopy;
  v35[2] = @"kDAEAccountIdKey";
  v36[2] = iDCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v25[3] = &unk_278D54490;
  v30 = buf;
  v20 = dCopy;
  v26 = v20;
  v21 = iDCopy;
  v27 = v21;
  selfCopy = self;
  v22 = v18;
  v29 = v22;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v25];
  v23 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v23;
}

void __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAEAttachmentDownloadIdKey"];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_INFO, "Download context %@ set up for downloading attachment UUID %@ on accountID %@", buf, 0x20u);
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_141;
  block[3] = &unk_278D54468;
  block[4] = v10;
  v13 = *(a1 + 56);
  v12 = v13;
  v15 = v13;
  dispatch_sync(v11, block);
}

- (void)_cancelDownloadsWithIDs:(id)ds error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  errorCopy = error;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy_;
        v19 = __Block_byref_object_dispose_;
        v20 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__CDDADConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v11;
        block[6] = &v15;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v16[5] finishedWithError:errorCopy];
        _Block_object_dispose(&v15, 8);

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

uint64_t __49__CDDADConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)cancelDownloadingAttachmentWithDownloadID:(id)d error:(id)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17[0] = @"kDAECancelDownloadingAttachment";
  v16[0] = @"kDAEMessageNameKey";
  v16[1] = @"kDAEErrorDataKey";
  v7 = MEMORY[0x277CCAAB0];
  errorCopy = error;
  v9 = [v7 archivedDataWithRootObject:errorCopy];
  v16[2] = @"kDAEAttachmentDownloadIdKey";
  v17[1] = v9;
  v17[2] = dCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v10 handlerBlock:0];
  v13 = dCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [(CDDADConnection *)self _cancelDownloadsWithIDs:v12 error:errorCopy];
}

- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    inviteCopy = invite;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = iDCopy;
    _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEBUG, "Requesting share response %ld for calendar %@ for accountID %@", buf, 0x20u);
  }

  v17 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(DASharedCalendarContext *)v17 setShouldSyncCalendar:invite == 1];
  v28[0] = @"kDAEMessageNameKey";
  v28[1] = @"kDAEAccountIdKey";
  v29[0] = @"kDAERespondToSharedCalendar";
  v29[1] = iDCopy;
  v28[2] = @"kDAESharedCalendarReponseTypeKey";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:invite];
  v28[3] = @"kDAESharedCalendarResponseCalendarIDKey";
  v29[2] = v18;
  v29[3] = dCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v23[3] = &unk_278D544B8;
  v24 = dCopy;
  v25 = iDCopy;
  selfCopy = self;
  v27 = v17;
  v20 = v17;
  v21 = iDCopy;
  v22 = dCopy;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v23];
}

void __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v4 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v8 = a1[6];
  v7 = a1[7];
  v9 = *(v8 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_145;
  block[3] = &unk_278D543F0;
  block[4] = v8;
  v12 = v3;
  v13 = v7;
  v10 = v3;
  dispatch_sync(v9, block);
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = dCopy;
    v29 = 2112;
    v30 = iDCopy;
    _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_DEBUG, "Reporting calendar %@ for accountID %@ as junk", buf, 0x16u);
  }

  v15 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(DASharedCalendarContext *)v15 setShouldSyncCalendar:0];
  v25[0] = @"kDAEMessageNameKey";
  v25[1] = @"kDAEAccountIdKey";
  v26[0] = @"kDAEReportSharedCalendarAsJunk";
  v26[1] = iDCopy;
  v25[2] = @"kDAESharedCalendarResponseCalendarIDKey";
  v26[2] = dCopy;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v20[3] = &unk_278D544B8;
  v21 = dCopy;
  v22 = iDCopy;
  selfCopy = self;
  v24 = v15;
  v17 = v15;
  v18 = iDCopy;
  v19 = dCopy;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v16 handlerBlock:v20];
}

void __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v4 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v8 = a1[6];
  v7 = a1[7];
  v9 = *(v8 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_146;
  block[3] = &unk_278D543F0;
  block[4] = v8;
  v12 = v3;
  v13 = v7;
  v10 = v3;
  dispatch_sync(v9, block);
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = MEMORY[0x277CCAAB0];
  dCopy = d;
  v9 = [v7 archivedDataWithRootObject:changeCopy];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEProcessFolderChange", @"kDAEMessageNameKey", dCopy, @"kDAEAccountIdKey", v9, @"kDAEFolderChangeDataKey", 0}];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDDADConnection processFolderChange:forAccountWithID:]";
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v12 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v14 = xpc_connection_send_message_with_reply_sync(_connection, v12);

  if (MEMORY[0x245D11100](v14) == MEMORY[0x277D86468])
  {
    v15 = _CFXPCCreateCFObjectFromXPCObject();
    v16 = [v15 objectForKeyedSubscript:@"kDAETaskIDKey"];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CDDADConnection_processFolderChange_forAccountWithID___block_invoke;
    block[3] = &unk_278D544E0;
    selfCopy = self;
    v23 = unsignedIntegerValue;
    v21 = changeCopy;
    dispatch_sync(muckingWithInFlightCollections, block);
  }

  return 1;
}

void __56__CDDADConnection_processFolderChange_forAccountWithID___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[6];
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Setting folder change %@ for key %lu", &v8, 0x16u);
  }

  v5 = a1[4];
  v6 = *(a1[5] + 64);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (id)statusReports
{
  v22[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v21 = @"kDAEMessageNameKey";
  v22[0] = @"kDAEGetStatusReports";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__CDDADConnection_statusReports__block_invoke;
  handler[3] = &unk_278D543C8;
  v14 = &v15;
  v8 = v5;
  v13 = v8;
  xpc_connection_send_message_with_reply(_connection, v4, v7, handler);

  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __32__CDDADConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEStatusReportsKey"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[CDDADConnection statusReports]_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v11, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reallyRegisterForInterrogation
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(CDDADConnection *)self registered])
  {
    [(CDDADConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_INFO, "Sending message: kDAERegisterForInterrogation", v7, 2u);
    }

    v8 = @"kDAEMessageNameKey";
    v9[0] = @"kDAERegisterForInterrogation";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v5);
  }
}

- (BOOL)registerForInterrogationWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_statusReportBlock != blockCopy)
  {
    if (blockCopy)
    {
      v6 = [blockCopy copy];
    }

    else
    {
      v6 = 0;
    }

    v7 = _Block_copy(v6);
    statusReportBlock = self->_statusReportBlock;
    self->_statusReportBlock = v7;
  }

  return 1;
}

- (void)fillOutCurrentEASTimeZoneInfo
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"kDAEMessageNameKey";
  v12[0] = @"kDAEFillOutEASTimeZoneInfo";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CDDADConnection_fillOutCurrentEASTimeZoneInfo__block_invoke;
  v9[3] = &unk_278D54508;
  v10 = v5;
  v8 = v5;
  xpc_connection_send_message_with_reply(_connection, v4, v7, v9);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)activeSyncDeviceIdentifier
{
  v24[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v23 = @"kDAEMessageNameKey";
  v24[0] = @"kDAEGetActiveSyncDeviceIdentifier";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v4 = 3;
  while (1)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    v6 = dispatch_semaphore_create(0);
    _connection = [(CDDADConnection *)self _connection];
    v8 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__CDDADConnection_activeSyncDeviceIdentifier__block_invoke;
    handler[3] = &unk_278D543C8;
    v16 = &v17;
    v9 = v6;
    v15 = v9;
    xpc_connection_send_message_with_reply(_connection, v5, v8, handler);

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (v18[5])
    {
      break;
    }

    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Error getting activesync device identifier, will try again", v13, 2u);
    }

    if (!--v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __45__CDDADConnection_activeSyncDeviceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:@"kDAEActiveSyncDeviceIdentifierKey"];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update
{
  updateCopy = update;
  v34[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (dCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v33[0] = @"kDAEMessageNameKey";
    v33[1] = @"kDAEAccountIdKey";
    v34[0] = @"kDAEOofSettings";
    v34[1] = dCopy;
    v33[2] = @"kDAEOofIsUpdateKey";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
    v34[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    v13 = [v10 initWithDictionary:v12];

    if (updateCopy)
    {
      dictionaryRepresentation = [requestCopy dictionaryRepresentation];
      [v13 setObject:dictionaryRepresentation forKeyedSubscript:@"kDAEOofSettingsRequestKey"];
    }

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    v16 = dispatch_semaphore_create(0);
    _connection = [(CDDADConnection *)self _connection];
    v18 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke;
    handler[3] = &unk_278D54558;
    v23 = requestCopy;
    selfCopy = self;
    v27 = updateCopy;
    v26 = &v29;
    v19 = v16;
    v25 = v19;
    xpc_connection_send_message_with_reply(_connection, v15, v18, handler);

    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    v20 = *(v30 + 24);
  }

  else
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v13, OS_LOG_TYPE_ERROR, "nil accountID passed to performASSettingsRequest. Cannot continue.", buf, 2u);
    }

    v20 = 0;
  }

  _Block_object_dispose(&v29, 8);
  return v20 & 1;
}

void __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
    [*(a1 + 32) setRequestID:v5];
    v6 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2;
    v8[3] = &unk_278D54530;
    v12 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, v8);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 56))
    {
      v3 = @"update";
    }

    else
    {
      v3 = @"retrieve";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v7, 0x20u);
  }

  return [*(*(a1 + 48) + 104) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
}

- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block
{
  v16[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    v15[0] = @"kDAEMessageNameKey";
    v15[1] = @"kDAEAccountIdKey";
    v16[0] = @"kDAEIsOofSettingsSupported";
    v16[1] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    v11 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__CDDADConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke;
    handler[3] = &unk_278D54580;
    v13 = blockCopy;
    xpc_connection_send_message_with_reply(_connection, v9, v11, handler);
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_ERROR, "nil accountID passed to isOofSettingsSupportedForAccountWithID. Cannot continue.", buf, 2u);
    }
  }
}

void __74__CDDADConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEIsOofSupportedKey"];
    v6 = v5;
    if (v5)
    {
      [v5 BOOLValue];
    }

    else
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_ERROR, "Error getting activesync device identifier", v8, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  addressesCopy = addresses;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v20 = dCopy;
  if (!dCopy)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = 0;
      v22 = "Invalid 'accountID' provided: [%@].";
      v23 = v21;
      v24 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
    goto LABEL_11;
  }

  if (!dateCopy || !endDateCopy || [dateCopy compare:endDateCopy] == 1)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = dateCopy;
      v58 = 2112;
      v59 = endDateCopy;
      v22 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v23 = v21;
      v24 = 22;
LABEL_9:
      _os_log_impl(&dword_242505000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (addressesCopy && [addressesCopy count])
  {
    v36 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v57 = v20;
      v58 = 2112;
      v59 = dateCopy;
      v60 = 2112;
      v61 = endDateCopy;
      v62 = 2112;
      v63 = iDCopy;
      v64 = 2112;
      v65 = addressesCopy;
      _os_log_impl(&dword_242505000, v36, OS_LOG_TYPE_DEBUG, "Preparing calendar availability request.  accountID: [%@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v37 setObject:@"kDAERequestCalendarAvailability" forKey:@"kDAEMessageNameKey"];
    [v37 setObject:v20 forKey:@"kDAEAccountIdKey"];
    [v37 setObject:dateCopy forKey:@"kDAEStartDateKey"];
    [v37 setObject:endDateCopy forKey:@"kDAEEndDateKey"];
    [v37 setObject:addressesCopy forKey:@"kDAEAddressesKey"];
    if (iDCopy)
    {
      [v37 setObject:iDCopy forKey:@"kDAEIgnoredEventIDKey"];
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_153;
    v42[3] = &unk_278D545D0;
    v46[1] = &v50;
    v45 = blockCopy;
    v46[0] = completionBlockCopy;
    v30 = v37;
    v43 = v30;
    selfCopy = self;
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v30 handlerBlock:v42];

    v32 = completionBlockCopy;
    v39 = dateCopy;
    v27 = endDateCopy;
    v28 = v20;
    v29 = addressesCopy;
    v25 = 0;
    v31 = &v45;
    v33 = v46;
    goto LABEL_15;
  }

  v38 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v38, OS_LOG_TYPE_DEBUG, "No 'addresses' provided.", buf, 2u);
  }

  v25 = 0;
LABEL_11:
  v26 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v26, OS_LOG_TYPE_DEFAULT, "Will not issue calendar availability request.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v39 = dateCopy;
    v27 = endDateCopy;
    v28 = v20;
    v29 = addressesCopy;
    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278D545A8;
    v31 = &v49;
    v32 = completionBlockCopy;
    v49 = completionBlockCopy;
    v33 = &v48;
    v25 = v25;
    v48 = v25;
    dispatch_async(v30, block);
LABEL_15:

    addressesCopy = v29;
    dateCopy = v39;
    v20 = v28;
    endDateCopy = v27;
    completionBlockCopy = v32;
  }

  v34 = v51[5];

  _Block_object_dispose(&v50, 8);

  return v34;
}

void __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_153(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[DAECalendarAvailabilityContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1[8] + 8) + 40);
    v9 = a1[4];
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v10 = a1[5];
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_155;
  block[3] = &unk_278D54468;
  v12 = a1[8];
  v15 = v6;
  v16 = v12;
  block[4] = v10;
  v13 = v6;
  dispatch_sync(v11, block);
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v18[0] = @"kDAEMessageNameKey";
    v18[1] = @"kDAECalendarAvailabilityRequestIDKey";
    v19[0] = @"kDAECancelCalendarAvailabilityRequest";
    v19[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v6 handlerBlock:0];
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CDDADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278D543A0;
    v11 = buf;
    block[4] = self;
    v10 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
    [*(v13 + 5) finishedWithError:v8];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }
}

uint64_t __59__CDDADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarAvailabilityRequestReturnedResults:(id)results
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityResultsKey"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v22 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v22];
  v15 = v22;

  if (!v14)
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CDDADConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v20 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
}

uint64_t __63__CDDADConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_calendarAvailabilityRequestFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CDDADConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __56__CDDADConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  termsCopy = terms;
  typesCopy = types;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = 0;
  if (dCopy)
  {
    if (termsCopy && [termsCopy count])
    {
      if (typesCopy && [typesCopy count])
      {
        v19 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v49 = dCopy;
          v50 = 2112;
          v51 = typesCopy;
          v52 = 2048;
          limitCopy = limit;
          v54 = 2112;
          v55 = termsCopy;
          _os_log_impl(&dword_242505000, v19, OS_LOG_TYPE_DEBUG, "Preparing calendar directory search.  accountID: [%@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
        }

        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v20 setObject:@"kDAEPerformCalendarDirectorySearch" forKey:@"kDAEMessageNameKey"];
        [v20 setObject:dCopy forKey:@"kDAEAccountIdKey"];
        allObjects = [termsCopy allObjects];
        [v20 setObject:allObjects forKey:@"kDAECalendarDirectorySearchTermsKey"];

        allObjects2 = [typesCopy allObjects];
        [v20 setObject:allObjects2 forKey:@"kDAECalendarDirectorySearchRecordTypesKey"];

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
        [v20 setObject:v23 forKey:@"kDAECalendarDirectorySearchResultLimitKey"];

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_157;
        v34[3] = &unk_278D545D0;
        v38[1] = &v42;
        v37 = blockCopy;
        v38[0] = completionBlockCopy;
        v24 = v20;
        v35 = v24;
        selfCopy = self;
        [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v24 handlerBlock:v34];

        v25 = 0;
        v26 = &v37;
        v27 = v38;
        goto LABEL_22;
      }

      v28 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v29 = "No 'recordTypes' provided.";
    }

    else
    {
      v28 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
LABEL_17:

        v25 = 0;
        goto LABEL_18;
      }

      *buf = 0;
      v29 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_242505000, v28, OS_LOG_TYPE_DEBUG, v29, buf, 2u);
    goto LABEL_17;
  }

  v30 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = 0;
    _os_log_impl(&dword_242505000, v30, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%@].", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
LABEL_18:
  v31 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v31, OS_LOG_TYPE_DEFAULT, "Will not issue calendar directory search.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278D545A8;
    v26 = &v41;
    v41 = completionBlockCopy;
    v27 = &v40;
    v25 = v25;
    v40 = v25;
    dispatch_async(v24, block);
LABEL_22:
  }

  v32 = v43[5];

  _Block_object_dispose(&v42, 8);

  return v32;
}

void __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_157(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[DAECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1[8] + 8) + 40);
    v9 = a1[4];
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v10 = a1[5];
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_159;
  block[3] = &unk_278D54468;
  v12 = a1[8];
  v15 = v6;
  v16 = v12;
  block[4] = v10;
  v13 = v6;
  dispatch_sync(v11, block);
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v22[0] = @"kDAEMessageNameKey";
    v22[1] = @"kDAECalendarDirectorySearchIDKey";
    v23[0] = @"kDAECancelCalendarDirectorySearch";
    v23[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v6 handlerBlock:0];
    *v14 = 0;
    v15 = v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CDDADConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278D543A0;
    v13 = v14;
    block[4] = self;
    v8 = v5;
    v12 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
    [*(v15 + 5) finishedWithError:v9 exceededResultLimit:0];
    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_DEBUG, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
    }

    _Block_object_dispose(v14, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v14, 2u);
    }
  }
}

uint64_t __55__CDDADConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarDirectorySearchReturnedResults:(id)results
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchResultsKey"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v27 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v27];
  v15 = v27;

  if (!v14)
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v25 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  v19 = [v14 count];
  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v19];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v22[3] = &unk_278D545F8;
  v21 = v20;
  v23 = v21;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];
  [*(*(&buf + 1) + 40) resultsReturned:v21];

  _Block_object_dispose(&buf, 8);
}

uint64_t __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

- (void)_calendarDirectorySearchFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];
  v9 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchExceededResultLimitKey"];
  v10 = v9;
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CDDADConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:bOOLValue];

  _Block_object_dispose(&v17, 8);
}

uint64_t __52__CDDADConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)externalIdentificationForAccountID:(id)d resultsBlock:(id)block
{
  v37[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if (blockCopy)
  {
    if (dCopy)
    {
      v36[0] = @"kDAEMessageNameKey";
      v36[1] = @"kDAEAccountIdKey";
      v37[0] = @"kDAERequestCalendarExternalIdentification";
      v37[1] = dCopy;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __67__CDDADConnection_externalIdentificationForAccountID_resultsBlock___block_invoke;
      v12[3] = &unk_278D54620;
      v12[4] = &v30;
      v12[5] = &v24;
      v12[6] = &v20;
      v12[7] = &v14;
      [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:v12];
    }

    else
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_DEFAULT, "No accountID provided.", buf, 2u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
      v8 = v31[5];
      v31[5] = v11;
    }

    blockCopy[2](blockCopy, v31[5], v25[5], v21[3], v15[5]);
  }

  else
  {
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_DEFAULT, "No results block provided.", buf, 2u);
    }
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

void __67__CDDADConnection_externalIdentificationForAccountID_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 count])
  {
    v3 = [v11 objectForKeyedSubscript:@"kDAEAccountServerHostKey"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [v11 objectForKeyedSubscript:@"kDAEAccountServerPortKey"];
    *(*(*(a1 + 48) + 8) + 24) = [v6 integerValue];

    v7 = [v11 objectForKeyedSubscript:@"kDAEAccountOwnerAddressesKey"];
    v8 = 56;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:28 userInfo:0];
    v8 = 32;
  }

  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (CDDADConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v28.receiver = self;
  v28.super_class = CDDADConnection;
  v2 = [(CDDADConnection *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dataaccess.muckingWithConn", v3);
    muckingWithConn = v2->_muckingWithConn;
    v2->_muckingWithConn = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.dataaccess.muckingWithInFlightCollections", v6);
    muckingWithInFlightCollections = v2->_muckingWithInFlightCollections;
    v2->_muckingWithInFlightCollections = v7;

    v9 = objc_opt_new();
    accountIdsWithAlreadyResetCerts = v2->_accountIdsWithAlreadyResetCerts;
    v2->_accountIdsWithAlreadyResetCerts = v9;

    v11 = objc_opt_new();
    accountIdsWithAlreadyResetThrottleTimers = v2->_accountIdsWithAlreadyResetThrottleTimers;
    v2->_accountIdsWithAlreadyResetThrottleTimers = v11;

    v13 = objc_opt_new();
    inFlightSearchQueries = v2->_inFlightSearchQueries;
    v2->_inFlightSearchQueries = v13;

    v15 = objc_opt_new();
    inFlightFolderChanges = v2->_inFlightFolderChanges;
    v2->_inFlightFolderChanges = v15;

    v17 = objc_opt_new();
    inFlightAttachmentDownloads = v2->_inFlightAttachmentDownloads;
    v2->_inFlightAttachmentDownloads = v17;

    v19 = objc_opt_new();
    inFlightCalendarAvailabilityRequests = v2->_inFlightCalendarAvailabilityRequests;
    v2->_inFlightCalendarAvailabilityRequests = v19;

    v21 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v21;

    v23 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v23;

    v25 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v25;

    [(CDDADConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(CDDADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CDDADConnection;
  [(CDDADConnection *)&v4 dealloc];
}

- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    accountIdsWithAlreadyResetCerts = self->_accountIdsWithAlreadyResetCerts;
    *buf = 138412290;
    v21 = accountIdsWithAlreadyResetCerts;
    _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_DEBUG, "in _resetCertWarningsForAccount, _accountIdsWithAlreadyResetCerts is %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (idCopy)
  {
    v12 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetCerts containsObject:idCopy]^ 1;
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  if (((idCopy != 0) & (v12 | requestedCopy)) == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey", @"kDAEResetCertWarnings", idCopy}];
    v19[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:3];

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)selfCopy _connection];
    xpc_connection_send_message(_connection, v15);

    v17 = selfCopy;
    objc_sync_enter(v17);
    [v17[4] addObject:idCopy];
    objc_sync_exit(v17);
  }
}

- (void)_resetThrottleTimersForAccountId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Name = sel_getName(a2);
    accountIdsWithAlreadyResetThrottleTimers = self->_accountIdsWithAlreadyResetThrottleTimers;
    *buf = 136315394;
    v18 = Name;
    v19 = 2112;
    v20 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!idCopy)
  {
    objc_sync_exit(selfCopy);
    v11 = selfCopy;
    goto LABEL_7;
  }

  v10 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers containsObject:idCopy];
  objc_sync_exit(selfCopy);

  if ((v10 & 1) == 0)
  {
    v15[0] = @"kDAEMessageNameKey";
    v15[1] = @"kDAEAccountIdKey";
    v16[0] = @"kDAEResetThrottleTimers";
    v16[1] = idCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)selfCopy _connection];
    xpc_connection_send_message(_connection, v12);

    v14 = selfCopy;
    objc_sync_enter(v14);
    [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers addObject:idCopy];
    objc_sync_exit(v14);

LABEL_7:
  }
}

- (void)resetTimersAndWarnings
{
  v3 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_DEBUG, "Resetting shouldResetCertWarnings and throttle timers", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetCerts removeAllObjects];
  [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)_registerForAppResumedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_resetTimersAndWarnings name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_dispatchMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEMessageNameKey"];
  if ([v6 isEqualToString:@"kDAEFoldersUpdated"])
  {
    [(CDDADConnection *)self _foldersUpdated:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEPolicyKeyChanged"])
  {
    [(CDDADConnection *)self _policyKeyChanged:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAELogDataAccessStatus"])
  {
    [(CDDADConnection *)self _logDataAccessStatus:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEServerContactsSearchQueryFinished"])
  {
    [(CDDADConnection *)self _serverContactsSearchQueryFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEFolderChangeFinished"])
  {
    [(CDDADConnection *)self _folderChangeFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEGetStatusReportsFromClient"])
  {
    [(CDDADConnection *)self _getStatusReportsFromClient:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadProgress"])
  {
    [(CDDADConnection *)self _downloadProgress:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadFinished"])
  {
    [(CDDADConnection *)self _downloadFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarShareResponseFinished"])
  {
    [(CDDADConnection *)self _shareResponseFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEOofSettingsFinished"])
  {
    [(CDDADConnection *)self _oofSettingsRequestsFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestReturnedResults"])
  {
    [(CDDADConnection *)self _calendarAvailabilityRequestReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestFinished"])
  {
    [(CDDADConnection *)self _calendarAvailabilityRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchReturnedResults"])
  {
    [(CDDADConnection *)self _calendarDirectorySearchReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchFinished"])
  {
    [(CDDADConnection *)self _calendarDirectorySearchFinished:messageCopy];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_ERROR, "unknown request sent to connection.", &v9, 2u);
    }

    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_ERROR, "request: %@", &v9, 0xCu);
    }
  }
}

@end