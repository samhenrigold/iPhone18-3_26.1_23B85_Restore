@interface ESDConnection
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
- (BOOL)_hasConnectionForExchange;
- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update;
- (BOOL)_validateXPCReply:(id)reply;
- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d;
- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d;
- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (BOOL)registerForInterrogationWithBlock:(id)block;
- (BOOL)requestPolicyUpdateForAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d;
- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent;
- (ESDConnection)init;
- (id)_connectionForExchange;
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
- (void)_exchangeServerDiedWithReason:(id)reason;
- (void)_folderChangeFinished:(id)finished;
- (void)_foldersUpdated:(id)updated;
- (void)_getStatusReportsFromClient:(id)client;
- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint;
- (void)_initializeExchangeConnection;
- (void)_initializeXPCConnection:(id)connection;
- (void)_initializeXPCConnectionForExchange:(id)exchange;
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
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
@end

@implementation ESDConnection

- (void)_tearDownInFlightObjects
{
  v130 = *MEMORY[0x277D85DE8];
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy_;
  v122 = __Block_byref_object_dispose_;
  v123 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_278FCFB68;
  block[5] = &v118;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v119[5];
  v5 = *MEMORY[0x277D038E0];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v6];

  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy_;
  v115 = __Block_byref_object_dispose_;
  v116 = 0;
  v7 = self->_muckingWithInFlightCollections;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_105;
  v110[3] = &unk_278FCFB68;
  v110[5] = &v111;
  v110[4] = self;
  dispatch_sync(v7, v110);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v8 = v112[5];
  v9 = [v8 countByEnumeratingWithState:&v106 objects:v129 count:16];
  if (v9)
  {
    v10 = *v107;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v107 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v106 + 1) + 8 * i);
        consumer = [v12 consumer];
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:0 userInfo:0];
        [consumer folderChange:v12 finishedWithStatus:0 error:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v106 objects:v129 count:16];
    }

    while (v9);
  }

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy_;
  v104 = __Block_byref_object_dispose_;
  v105 = 0;
  v15 = self->_muckingWithInFlightCollections;
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_106;
  v99[3] = &unk_278FCFB68;
  v99[5] = &v100;
  v99[4] = self;
  dispatch_sync(v15, v99);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v16 = v101[5];
  v17 = [v16 countByEnumeratingWithState:&v95 objects:v128 count:16];
  if (v17)
  {
    v18 = *v96;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v96 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v95 + 1) + 8 * j);
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:0 userInfo:0];
        [v20 finishedWithError:v21];
      }

      v17 = [v16 countByEnumeratingWithState:&v95 objects:v128 count:16];
    }

    while (v17);
  }

  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy_;
  v93 = __Block_byref_object_dispose_;
  v94 = 0;
  v22 = self->_muckingWithInFlightCollections;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_107;
  v88[3] = &unk_278FCFB68;
  v88[5] = &v89;
  v88[4] = self;
  dispatch_sync(v22, v88);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v23 = v90[5];
  v24 = [v23 countByEnumeratingWithState:&v84 objects:v127 count:16];
  if (v24)
  {
    v25 = *v85;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v85 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v84 + 1) + 8 * k);
        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v27 finishedWithError:v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v84 objects:v127 count:16];
    }

    while (v24);
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy_;
  v82 = __Block_byref_object_dispose_;
  v83 = 0;
  v29 = self->_muckingWithInFlightCollections;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_108;
  v77[3] = &unk_278FCFB68;
  v77[4] = self;
  v77[5] = &v78;
  dispatch_sync(v29, v77);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v30 = v79[5];
  v31 = [v30 countByEnumeratingWithState:&v73 objects:v126 count:16];
  if (v31)
  {
    v32 = *v74;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v74 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v73 + 1) + 8 * m);
        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v34 finishedWithError:v35 exceededResultLimit:0];
      }

      v31 = [v30 countByEnumeratingWithState:&v73 objects:v126 count:16];
    }

    while (v31);
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy_;
  v71 = __Block_byref_object_dispose_;
  v72 = 0;
  v36 = self->_muckingWithInFlightCollections;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_109;
  v66[3] = &unk_278FCFB68;
  v66[4] = self;
  v66[5] = &v67;
  dispatch_sync(v36, v66);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v37 = v68[5];
  v38 = [v37 countByEnumeratingWithState:&v62 objects:v125 count:16];
  if (v38)
  {
    v39 = *v63;
    do
    {
      for (n = 0; n != v38; ++n)
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v62 + 1) + 8 * n);
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v41 finishedWithError:v42];
      }

      v38 = [v37 countByEnumeratingWithState:&v62 objects:v125 count:16];
    }

    while (v38);
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v43 = self->_muckingWithInFlightCollections;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_110;
  v55[3] = &unk_278FCFB68;
  v55[4] = self;
  v55[5] = &v56;
  dispatch_sync(v43, v55);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = v57[5];
  v45 = [v44 countByEnumeratingWithState:&v51 objects:v124 count:16];
  if (v45)
  {
    v46 = *v52;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v51 + 1) + 8 * ii);
        consumer2 = [v48 consumer];
        v50 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [consumer2 oofRequestInfo:v48 finishedWithResult:0 error:v50];
      }

      v45 = [v44 countByEnumeratingWithState:&v51 objects:v124 count:16];
    }

    while (v45);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v111, 8);

  _Block_object_dispose(&v118, 8);
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing ALL search queries", v8, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_105(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Failing all folder changes", v8, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_106(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all attachment downloads", v8, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_107(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all calendar availability lookups", v8, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_108(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all calendar search requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_109(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all share requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all settings requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

- (void)_serverDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      v8 = "Daemon died, cleaning up.";
      v9 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (reasonCopy == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v11) = 0;
      v8 = "LOOK AT ME!!!! dataaccessd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v9 = &v11;
LABEL_7:
      _os_log_impl(&dword_24A1B8000, v6, v7, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(ESDConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(ESDConnection *)self setRegistered:0];
}

- (void)_exchangeServerDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      v8 = "Exchange daemon died, cleaning up.";
      v9 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (reasonCopy == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v11) = 0;
      v8 = "LOOK AT ME!!!! exchangesyncd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v9 = &v11;
LABEL_7:
      _os_log_impl(&dword_24A1B8000, v6, v7, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(ESDConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(ESDConnection *)self setRegistered:0];
}

- (id)_connectionForExchange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  muckingWithConn = self->_muckingWithConn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ESDConnection__connectionForExchange__block_invoke;
  v5[3] = &unk_278FCFB90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__ESDConnection__connectionForExchange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _initializeExchangeConnection];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (BOOL)_hasConnectionForExchange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  muckingWithConn = self->_muckingWithConn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ESDConnection__hasConnectionForExchange__block_invoke;
  v5[3] = &unk_278FCFB68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_initializeExchangeConnection
{
  v11 = *MEMORY[0x277D85DE8];
  uTF8String = [@"com.apple.exchangesyncd" UTF8String];
  v4 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(uTF8String, v4, 0);
  connExchange = self->_connExchange;
  self->_connExchange = mach_service;

  if (self->_connExchange)
  {

    [(ESDConnection *)self _initializeXPCConnectionForExchange:?];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 138412290;
      v10 = @"com.apple.exchangesyncd";
      _os_log_impl(&dword_24A1B8000, v7, v8, "Couldn't create a connection to [%@]", &v9, 0xCu);
    }
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ESDConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_278FCFB18;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(muckingWithConn, v7);
}

void __54__ESDConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
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
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_24A1B8000, v6, v7, "Couldn't create a connection to endpoint: [%@]", &v9, 0xCu);
    }
  }
}

- (void)_initializeXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ESDConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_278FCFBB8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(connectionCopy, v5);
  xpc_connection_resume(connectionCopy);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__ESDConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x24C212D60]();
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

- (void)_initializeXPCConnectionForExchange:(id)exchange
{
  exchangeCopy = exchange;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ESDConnection__initializeXPCConnectionForExchange___block_invoke;
  v5[3] = &unk_278FCFBB8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(exchangeCopy, v5);
  xpc_connection_resume(exchangeCopy);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__ESDConnection__initializeXPCConnectionForExchange___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x24C212D60]();
  if (v3 == MEMORY[0x277D86480])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _exchangeServerDiedWithReason:v5];
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
  applier[2] = __54__ESDConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278FCFBE0;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (id)decodedErrorFromData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v11 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v11];
    v5 = v11;
    if (!v4)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_24A1B8000, v6, v7, "Unable to read data to decode error: %@", buf, 0xCu);
      }
    }

    v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"root"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_policyKeyChanged:(id)changed
{
  changedCopy = changed;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ESDConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_278FCFB40;
  v6 = changedCopy;
  v4 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__ESDConnection__policyKeyChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = _CFXPCCreateCFObjectFromXPCObject();
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D03D20]];
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277D03D10]];
  v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D038B8];
    if (v3)
    {
      v7 = *MEMORY[0x277D038A0];
      v14 = *MEMORY[0x277D038B0];
      v15 = v7;
      v16 = v2;
      v17 = v3;
      v8 = MEMORY[0x277CBEAC0];
      v9 = &v16;
      v10 = &v14;
      v11 = 2;
    }

    else
    {
      v18 = *MEMORY[0x277D038B0];
      v19 = v2;
      v8 = MEMORY[0x277CBEAC0];
      v9 = &v19;
      v10 = &v18;
      v11 = 1;
    }

    v13 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:{v11, v14, v15, v16, v17, v18, v19}];
    [v5 postNotificationName:v6 object:v4 userInfo:v13];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v12))
    {
      *buf = 138412290;
      v21 = v1;
      _os_log_impl(&dword_24A1B8000, v5, v12, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }
}

- (void)_foldersUpdated:(id)updated
{
  updatedCopy = updated;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ESDConnection__foldersUpdated___block_invoke;
  block[3] = &unk_278FCFB40;
  v6 = updatedCopy;
  v4 = updatedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__ESDConnection__foldersUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = _CFXPCCreateCFObjectFromXPCObject();
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v4 = v3;
  if (!v2)
  {
    v5 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v5, v8))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v13 = v1;
    v9 = "Malformed callback message from dataaccess daemon: no folders (%@)";
LABEL_8:
    _os_log_impl(&dword_24A1B8000, v5, v8, v9, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v3)
  {
    v5 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v5, v8))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v13 = v1;
    v9 = "Malformed callback message from dataaccess daemon: bad account id (%@)";
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D038C8];
  v10[0] = *MEMORY[0x277D038D0];
  v10[1] = v6;
  v11[0] = v2;
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v5 postNotificationName:@"DataAccessMonitoredFolderUpdated" object:0 userInfo:v7];

LABEL_9:
}

void __38__ESDConnection__logDataAccessStatus___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D03898] object:0];
}

- (void)_serverContactsSearchQueryFinished:(id)finished
{
  v40 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_24A1B8000, v8, v10, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ESDConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v12 = v6;
  v31 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03DC8]];
    if (v13)
    {
      v29 = 0;
      v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v13 error:&v29];
      v15 = v29;
      if (!v14)
      {
        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v16, v17))
        {
          *v33 = 138412290;
          v34 = v15;
          _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to read data to decode search results: %@", v33, 0xCu);
        }
      }

      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [v14 decodeObjectOfClasses:v20 forKey:@"root"];
    }

    else
    {
      v15 = DALoggingwithCategory();
      v23 = *(v9 + 6);
      if (os_log_type_enabled(v15, v23))
      {
        *v33 = 0;
        _os_log_impl(&dword_24A1B8000, v15, v23, "Could not deserialize search results from the xpc message", v33, 2u);
      }

      v21 = 0;
    }

    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v10))
    {
      *v33 = 138412290;
      v34 = v21;
      _os_log_impl(&dword_24A1B8000, v24, v10, "Search results: %@", v33, 0xCu);
    }

    [*(*(&buf + 1) + 40) sendResultsToConsumer:v21];
    v25 = *(*(&buf + 1) + 40);
    v26 = MEMORY[0x277CCA9B8];
    intValue = [v7 intValue];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D038E0] code:intValue userInfo:0];
    [v25 sendFinishedToConsumerWithError:v28];
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(v9 + 3);
    if (os_log_type_enabled(v21, v22))
    {
      *v33 = 0;
      _os_log_impl(&dword_24A1B8000, v21, v22, "received results for an unknown search query", v33, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __52__ESDConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing query %@ for key %@", &v10, 0x16u);
  }

  return [*(a1[4] + 56) removeObjectForKey:a1[5]];
}

- (void)_folderChangeFinished:(id)finished
{
  v29 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E88]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BB0]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v10 = [(ESDConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_24A1B8000, v11, v13, "folderChange finished with status %@, error %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ESDConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v24 = buf;
  block[4] = self;
  v15 = v5;
  v23 = v15;
  dispatch_sync(muckingWithInFlightCollections, block);
  v16 = *&buf[8];
  v17 = *(*&buf[8] + 40);
  if (v17)
  {
    if (v7)
    {
      [v17 setFolderId:v7];
      v16 = *&buf[8];
    }

    if (v8)
    {
      [*(v16 + 40) setDisplayName:v8];
      v16 = *&buf[8];
    }

    consumer = [*(v16 + 40) consumer];
    -[NSObject folderChange:finishedWithStatus:error:](consumer, "folderChange:finishedWithStatus:error:", *(*&buf[8] + 40), [v6 intValue], v10);
  }

  else
  {
    consumer = DALoggingwithCategory();
    v19 = *(v12 + 3);
    if (os_log_type_enabled(consumer, v19))
    {
      *v21 = 0;
      _os_log_impl(&dword_24A1B8000, consumer, v19, "received results for an unknown folderChange", v21, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __39__ESDConnection__folderChangeFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing folder change %@ for key %@", &v10, 0x16u);
  }

  return [*(a1[4] + 64) removeObjectForKey:a1[5]];
}

- (void)_getStatusReportsFromClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ESDConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_278FCFB18;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

void __45__ESDConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if ([v4 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v16 + 1) + 8 * v9) dictionaryRepresentation];
            [v2 addObject:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
        }

        while (v7);
      }
    }
  }

  v20 = *MEMORY[0x277D03E40];
  v21 = v2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v16}];
  v12 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v11];
  v13 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v14 = [*(a1 + 32) _connectionForExchange];
  v15 = v14;
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
  v4 = [v15 objectForKeyedSubscript:*MEMORY[0x277D03A30]];
  v5 = [v15 objectForKeyedSubscript:*MEMORY[0x277D03B30]];
  longLongValue = [v5 longLongValue];

  v7 = [v15 objectForKeyedSubscript:*MEMORY[0x277D03E90]];
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
        block[2] = __35__ESDConnection__downloadProgress___block_invoke;
        block[3] = &unk_278FCFC28;
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

uint64_t __35__ESDConnection__downloadProgress___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadFinished:(id)finished
{
  v27 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v13 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v13 objectForKeyedSubscript:*MEMORY[0x277D03A30]];
  v5 = [v13 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v6 = [(ESDConnection *)self decodedErrorFromData:v5];

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
        block[2] = __35__ESDConnection__downloadFinished___block_invoke;
        block[3] = &unk_278FCFC28;
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

uint64_t __35__ESDConnection__downloadFinished___block_invoke(void *a1)
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
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ESDConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__ESDConnection__shareResponseFinished___block_invoke(void *a1)
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
  v41 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CC8]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_24A1B8000, v8, v10, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ESDConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v12 = v6;
  v32 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    if (v7)
    {
      if ([v7 intValue] == 2)
      {
        v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CC0]];
        consumer4 = v13;
        if (v13 && [v13 BOOLValue])
        {
          consumer = [*(*(&buf + 1) + 40) consumer];
          [consumer oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:0 error:0];
        }

        else
        {
          consumer = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CE8]];
          if (consumer)
          {
            consumer3 = [objc_alloc(MEMORY[0x277D03968]) initWithDictionary:consumer];
            v26 = DALoggingwithCategory();
            if (os_log_type_enabled(v26, v10))
            {
              *v34 = 138412290;
              v35 = consumer3;
              _os_log_impl(&dword_24A1B8000, v26, v10, "Oof settings request results: %@", v34, 0xCu);
            }

            consumer2 = [*(*(&buf + 1) + 40) consumer];
            [consumer2 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:consumer3 error:0];
          }

          else
          {
            v28 = DALoggingwithCategory();
            v29 = *(v9 + 6);
            if (os_log_type_enabled(v28, v29))
            {
              *v34 = 0;
              _os_log_impl(&dword_24A1B8000, v28, v29, "Could not deserialize search results from the xpc message", v34, 2u);
            }

            consumer3 = [*(*(&buf + 1) + 40) consumer];
            v30 = *(*(&buf + 1) + 40);
            consumer2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:62 userInfo:0];
            [consumer3 oofRequestInfo:v30 finishedWithResult:0 error:consumer2];
          }
        }
      }

      else
      {
        consumer4 = [*(*(&buf + 1) + 40) consumer];
        v21 = *(*(&buf + 1) + 40);
        v22 = MEMORY[0x277CCA9B8];
        intValue = [v7 intValue];
        v24 = [v22 errorWithDomain:*MEMORY[0x277D038E0] code:intValue userInfo:0];
        [consumer4 oofRequestInfo:v21 finishedWithResult:0 error:v24];
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(v9 + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *v34 = 0;
        _os_log_impl(&dword_24A1B8000, v17, v18, "Status missing from the xpc message", v34, 2u);
      }

      consumer4 = [*(*(&buf + 1) + 40) consumer];
      v19 = *(*(&buf + 1) + 40);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:62 userInfo:0];
      [consumer4 oofRequestInfo:v19 finishedWithResult:0 error:v20];
    }
  }

  else
  {
    consumer4 = DALoggingwithCategory();
    v16 = *(v9 + 3);
    if (os_log_type_enabled(consumer4, v16))
    {
      *v34 = 0;
      _os_log_impl(&dword_24A1B8000, consumer4, v16, "received results for an unknown oof settings request", v34, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __46__ESDConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing from inflight dictionary: oof settings request %@ for key %@", &v10, 0x16u);
  }

  return [*(a1[4] + 104) removeObjectForKey:a1[5]];
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[ESDConnection sharedConnection];
  }

  [sharedConnection_gESDConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gESDConnection;

  return v2;
}

uint64_t __33__ESDConnection_sharedConnection__block_invoke()
{
  sharedConnection_gESDConnection = [[ESDConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v26[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  keysCopy = keys;
  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v10 = *MEMORY[0x277D03A48];
  v11 = *MEMORY[0x277D039D0];
  v25[0] = *MEMORY[0x277D03C88];
  v25[1] = v11;
  v26[0] = v10;
  v26[1] = dCopy;
  v12 = *MEMORY[0x277D03BA8];
  v26[2] = keysCopy;
  v13 = *MEMORY[0x277D03D08];
  v25[2] = v12;
  v25[3] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:persistentCopy];
  v26[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v16, v17))
  {
    v23 = 136315138;
    v24 = "[ESDConnection watchFoldersWithKeys:forAccountID:persistent:]";
    _os_log_impl(&dword_24A1B8000, v16, v17, "XPC call performed in: %s", &v23, 0xCu);
  }

  v18 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v20 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v18);

  v21 = [(ESDConnection *)self _validateXPCReply:v20];
  return v21;
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v22[3] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  if ([(ESDConnection *)self _hasConnectionForExchange])
  {
    [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
    v8 = *MEMORY[0x277D03DB0];
    v9 = *MEMORY[0x277D039D0];
    v21[0] = *MEMORY[0x277D03C88];
    v21[1] = v9;
    v22[0] = v8;
    v22[1] = dCopy;
    v21[2] = *MEMORY[0x277D03BA8];
    v22[2] = keysCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v12))
    {
      v19 = 136315138;
      v20 = "[ESDConnection resumeWatchingFoldersWithKeys:forAccountID:]";
      _os_log_impl(&dword_24A1B8000, v11, v12, "XPC call performed in: %s", &v19, 0xCu);
    }

    v13 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    v15 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v13);

    v16 = [(ESDConnection *)self _validateXPCReply:v15];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v17))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_24A1B8000, v10, v17, "[ESDConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v19, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D03E80];
  v7 = *MEMORY[0x277D039D0];
  v21[0] = *MEMORY[0x277D03C88];
  v21[1] = v7;
  v22[0] = v6;
  v22[1] = d;
  v21[2] = *MEMORY[0x277D03BA8];
  v22[2] = keys;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v11 = [v8 dictionaryWithObjects:v22 forKeys:v21 count:3];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v19 = 136315138;
    v20 = "[ESDConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v12, v13, "XPC call performed in: %s", &v19, 0xCu);
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v16 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v14);

  v17 = [(ESDConnection *)self _validateXPCReply:v16];
  return v17;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D03E50];
  v7 = *MEMORY[0x277D039D0];
  v21[0] = *MEMORY[0x277D03C88];
  v21[1] = v7;
  v22[0] = v6;
  v22[1] = d;
  v21[2] = *MEMORY[0x277D03BA8];
  v22[2] = keys;
  v8 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v11 = [v8 dictionaryWithObjects:v22 forKeys:v21 count:3];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v19 = 136315138;
    v20 = "[ESDConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v12, v13, "XPC call performed in: %s", &v19, 0xCu);
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v16 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v14);

  v17 = [(ESDConnection *)self _validateXPCReply:v16];
  return v17;
}

- (BOOL)_validateXPCReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = MEMORY[0x24C212D60]();
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    intValue = [v9 intValue];
    v8 = intValue == 2;
    if (intValue != 2)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_24A1B8000, v11, v12, "XPC Reply Failure. Status Code: %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_24A1B8000, v6, v7, "Unsupported XPC reply type. Reply Type: %@", &v14, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)d
{
  v12[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v5 = *MEMORY[0x277D03D88];
  v6 = *MEMORY[0x277D039D0];
  v11[0] = *MEMORY[0x277D03C88];
  v11[1] = v6;
  v12[0] = v5;
  v12[1] = dCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v8 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v8);

  return 1;
}

- (id)currentPolicyKeyForAccountID:(id)d
{
  v25[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v5 = *MEMORY[0x277D03BD0];
  v6 = *MEMORY[0x277D039D0];
  v24[0] = *MEMORY[0x277D03C88];
  v24[1] = v6;
  v25[0] = v5;
  v25[1] = dCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v8 = _CFXPCCreateXPCObjectFromCFObject();
  v9 = dispatch_semaphore_create(0);
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v11 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__ESDConnection_currentPolicyKeyForAccountID___block_invoke;
  handler[3] = &unk_278FCFC50;
  v17 = &v18;
  v12 = v9;
  v16 = v12;
  xpc_connection_send_message_with_reply(_connectionForExchange, v8, v11, handler);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __46__ESDConnection_currentPolicyKeyForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D20]];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = 136315394;
        v13 = "[ESDConnection currentPolicyKeyForAccountID:]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_24A1B8000, v10, v11, "Server error in %s communicating with daemon: %@", &v12, 0x16u);
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
  v28 = *MEMORY[0x277D85DE8];
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    v12 = @"stop";
    if (statusCopy)
    {
      v12 = @"start";
    }

    v24 = 138412290;
    v25 = v12;
    _os_log_impl(&dword_24A1B8000, v9, v11, "Requesting that DataAccess %@ monitoring agents.", &v24, 0xCu);
  }

  v13 = MEMORY[0x277D03E48];
  if (statusCopy)
  {
    v13 = MEMORY[0x277D03E30];
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithObject:*v13 forKey:*MEMORY[0x277D03C88]];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D03A08]];

  if (replyCopy)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03A00]];
    v16 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    _connectionForExchange2 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v16);

    if (MEMORY[0x24C212D60](_connectionForExchange2) == MEMORY[0x277D86468])
    {
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
      v21 = v20;
      if (!v20 || [v20 intValue] != 2)
      {
        v22 = DALoggingwithCategory();
        v23 = *(v10 + 3);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = 136315394;
          v25 = "[ESDConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v26 = 2112;
          v27 = v21;
          _os_log_impl(&dword_24A1B8000, v22, v23, "Server error in %s communicating with daemon: %@", &v24, 0x16u);
        }
      }
    }
  }

  else
  {
    v16 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange2 = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange2, v16);
  }
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(ESDConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:0];
  return _nextStopMonitoringStatusToken;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(ESDConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:1];
  return _nextStopMonitoringStatusToken;
}

- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138413058;
    v25 = dCopy;
    v26 = 2048;
    dataclassesCopy = dataclasses;
    v28 = 1024;
    v29 = foldersCopy;
    v30 = 1024;
    v31 = requestedCopy;
    _os_log_impl(&dword_24A1B8000, v11, v12, "updateFolderListForAccountID %@, dataclasses %lx, requireChangedFolders %d, isUserRequested %d", buf, 0x22u);
  }

  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(ESDConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v13 = *MEMORY[0x277D03D78];
  v14 = *MEMORY[0x277D039D0];
  v22[0] = *MEMORY[0x277D03C88];
  v23[0] = v13;
  v23[1] = dCopy;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, v22[0], v14, *MEMORY[0x277D03B08]}];
  v23[2] = v15;
  v22[3] = *MEMORY[0x277D03D90];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:foldersCopy];
  v23[3] = v16;
  v22[4] = *MEMORY[0x277D03C58];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v23[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v19);

  return 1;
}

- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v32 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138413058;
    v25 = keysCopy;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2048;
    dataclassesCopy = dataclasses;
    v30 = 1024;
    v31 = requestedCopy;
    _os_log_impl(&dword_24A1B8000, v12, v13, "updateContentsOfFoldersWithKeys %@ for account id %@, dataclasses 0x%lx isUserRequested %d", buf, 0x26u);
  }

  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(ESDConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v14 = *MEMORY[0x277D03D70];
  v15 = *MEMORY[0x277D039D0];
  v22[0] = *MEMORY[0x277D03C88];
  v23[0] = v14;
  v23[1] = dCopy;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, v22[0], v15, *MEMORY[0x277D03B08]}];
  v23[2] = v16;
  v22[3] = *MEMORY[0x277D03C58];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v22[4] = *MEMORY[0x277D03BA8];
  v23[3] = v17;
  v23[4] = keysCopy;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v19);

  return 1;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412802;
    v22 = dCopy;
    v23 = 2048;
    dataclassesCopy = dataclasses;
    v25 = 1024;
    v26 = requestedCopy;
    _os_log_impl(&dword_24A1B8000, v9, v10, "updateContentsOfAllFoldersForAccountID %@, dataclasses 0x%lxx isUserRequested %d", buf, 0x1Cu);
  }

  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(ESDConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v11 = *MEMORY[0x277D03D60];
  v12 = *MEMORY[0x277D039D0];
  v19[0] = *MEMORY[0x277D03C88];
  v20[0] = v11;
  v20[1] = dCopy;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, v19[0], v12, *MEMORY[0x277D03B08]}];
  v20[2] = v13;
  v19[3] = *MEMORY[0x277D03C58];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v16);

  return 1;
}

- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d
{
  v34[3] = *MEMORY[0x277D85DE8];
  searchCopy = search;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  [(ESDConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:8 isUserRequested:0];
  if (!dCopy)
  {
    v13 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v20))
    {
      *buf = 0;
      v21 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_8:
      _os_log_impl(&dword_24A1B8000, v13, v20, v21, buf, 2u);
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  searchString = [searchCopy searchString];
  v9 = searchString == 0;

  if (v9)
  {
    v13 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v20))
    {
      *buf = 0;
      v21 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x277D03CF0];
  v11 = *MEMORY[0x277D039D0];
  v33[0] = *MEMORY[0x277D03C88];
  v33[1] = v11;
  v34[0] = v10;
  v34[1] = dCopy;
  v33[2] = *MEMORY[0x277D03DC0];
  dictionaryRepresentation = [searchCopy dictionaryRepresentation];
  v34[2] = dictionaryRepresentation;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = dispatch_semaphore_create(0);
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke;
  v23[3] = &unk_278FCFCA0;
  v24 = searchCopy;
  selfCopy = self;
  v27 = &v29;
  v18 = v15;
  v26 = v18;
  xpc_connection_send_message_with_reply(_connectionForExchange, v14, v17, v23);

  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v19 = *(v30 + 24);

LABEL_10:
  _Block_object_dispose(&v29, 8);

  return v19 & 1;
}

void __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
    [*(a1 + 32) setSearchID:v5];
    v6 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke_2;
    block[3] = &unk_278FCFC78;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, block);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke_2(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_24A1B8000, v3, v4, "Setting search query %@ for key %@", &v8, 0x16u);
  }

  return [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
}

- (void)cancelServerContactsSearch:(id)search
{
  v28 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  searchID = [searchCopy searchID];
  v6 = [searchID length];

  if (v6)
  {
    [searchCopy setState:2];
    [searchCopy setConsumer:0];
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 134217984;
      v27 = searchCopy;
      _os_log_impl(&dword_24A1B8000, v7, v8, "Cancelling search task %p", buf, 0xCu);
    }

    searchID2 = [searchCopy searchID];
    v10 = *MEMORY[0x277D03AE0];
    v11 = *MEMORY[0x277D03DB8];
    v24[0] = *MEMORY[0x277D03C88];
    v24[1] = v11;
    v25[0] = v10;
    v25[1] = searchID2;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v13 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange, v13);

    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v8))
    {
      *buf = 138412290;
      v27 = searchID2;
      _os_log_impl(&dword_24A1B8000, v15, v8, "Removing search query for key %@", buf, 0xCu);
    }

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __44__ESDConnection_cancelServerContactsSearch___block_invoke;
    v21 = &unk_278FCFB18;
    selfCopy = self;
    v23 = searchID2;
    v17 = searchID2;
    dispatch_sync(muckingWithInFlightCollections, &v18);
    [searchCopy setSearchID:{&stru_285D5C2E8, v18, v19, v20, v21, selfCopy}];
  }
}

- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  v27 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(ESDConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03D30], *MEMORY[0x277D03C88], withIdCopy, *MEMORY[0x277D039D0], idCopy, *MEMORY[0x277D03BA0], 0}];

  if (requestsCopy)
  {
    [v17 setObject:requestsCopy forKeyedSubscript:*MEMORY[0x277D03C70]];
  }

  if (clearCopy)
  {
    [v17 setObject:clearCopy forKeyedSubscript:*MEMORY[0x277D03C78]];
  }

  if (softClearCopy)
  {
    [v17 setObject:softClearCopy forKeyedSubscript:*MEMORY[0x277D03C80]];
  }

  v18 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 136315138;
    v26 = "[ESDConnection processMeetingRequests:deliveryIdsToClear:deliveryIdsToSoftClear:inFolderWithId:forAccountWithId:]";
    _os_log_impl(&dword_24A1B8000, v18, v19, "XPC call performed in: %s", buf, 0xCu);
  }

  v20 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v22 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v20);

  v23 = [(ESDConnection *)self _validateXPCReply:v22];
  return v23;
}

- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(ESDConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03A10], *MEMORY[0x277D03C88], withIdCopy, *MEMORY[0x277D039D0], idCopy, *MEMORY[0x277D03BA0], 0}];

  if (requestsCopy)
  {
    [v16 setObject:requestsCopy forKeyedSubscript:*MEMORY[0x277D03C70]];
  }

  if (clearCopy)
  {
    [v16 setObject:clearCopy forKeyedSubscript:*MEMORY[0x277D03C78]];
  }

  if (softClearCopy)
  {
    [v16 setObject:softClearCopy forKeyedSubscript:*MEMORY[0x277D03C80]];
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v17);
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  v13 = MEMORY[0x277CBEB38];
  dCopy = d;
  v15 = [v13 alloc];
  v16 = [v15 initWithObjectsAndKeys:{*MEMORY[0x277D03DF8], *MEMORY[0x277D03C88], dCopy, *MEMORY[0x277D039D0], 0}];

  if (addedCopy)
  {
    [v16 setObject:addedCopy forKeyedSubscript:*MEMORY[0x277D03C90]];
  }

  if (deletedCopy)
  {
    [v16 setObject:deletedCopy forKeyedSubscript:*MEMORY[0x277D03C98]];
  }

  if (tagCopy)
  {
    [v16 setObject:tagCopy forKeyedSubscript:*MEMORY[0x277D03CA0]];
  }

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 136315138;
    v25 = "[ESDConnection setFolderIdsThatExternalClientsCareAboutAdded:deleted:foldersTag:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v17, v18, "XPC call performed in: %s", buf, 0xCu);
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v21 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v19);

  v22 = [(ESDConnection *)self _validateXPCReply:v21];
  return v22;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  v23[5] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v9 = *MEMORY[0x277D03C88];
    v23[0] = *MEMORY[0x277D03D40];
    v10 = *MEMORY[0x277D03E38];
    v22[0] = v9;
    v22[1] = v10;
    v11 = MEMORY[0x277CCABB0];
    if (success)
    {
      v12 = 2;
    }

    else
    {
      v12 = 10;
    }

    iDCopy = iD;
    dCopy = d;
    v15 = [v11 numberWithInteger:v12];
    v16 = *MEMORY[0x277D03BA0];
    v23[1] = v15;
    v23[2] = dCopy;
    v17 = *MEMORY[0x277D03BB8];
    v22[2] = v16;
    v22[3] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v22[4] = *MEMORY[0x277D039D0];
    v23[3] = v18;
    v23[4] = iDCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

    v20 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange, v20);
  }
}

- (void)handleURL:(id)l
{
  v12[2] = *MEMORY[0x277D85DE8];
  absoluteString = [l absoluteString];
  v5 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], absoluteString, 0, @"&=", 0x8000100u);
  v6 = *MEMORY[0x277D03C30];
  v7 = *MEMORY[0x277D03E98];
  v11[0] = *MEMORY[0x277D03C88];
  v11[1] = v7;
  v12[0] = v6;
  v12[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(_connectionForExchange, v9);

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

  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ESDConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke;
  v14[3] = &unk_278FCFCC8;
  v15 = v8;
  v16 = blockCopy;
  v12 = v8;
  v13 = blockCopy;
  xpc_connection_send_message_with_reply(_connectionForExchange, v9, v11, v14);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void __71__ESDConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) && MEMORY[0x24C212D60](v4) == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock
{
  v39[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = iDCopy;
    _os_log_impl(&dword_24A1B8000, v17, v18, "Requesting download of attachment UUID %@ for accountID %@", buf, 0x16u);
  }

  v19 = [[ESDownloadContext alloc] initWithAttachmentUUID:dCopy accountID:iDCopy queue:queueCopy downloadProgressBlock:blockCopy completionBlock:completionBlockCopy];
  v20 = *MEMORY[0x277D03A40];
  v21 = *MEMORY[0x277D03A38];
  v38[0] = *MEMORY[0x277D03C88];
  v38[1] = v21;
  v39[0] = v20;
  v39[1] = dCopy;
  v38[2] = *MEMORY[0x277D039D0];
  v39[2] = iDCopy;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v28[3] = &unk_278FCFD18;
  v33 = buf;
  v23 = dCopy;
  v29 = v23;
  v24 = iDCopy;
  v30 = v24;
  selfCopy = self;
  v25 = v19;
  v32 = v25;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v22 handlerBlock:v28];
  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v26;
}

void __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A20]];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_24A1B8000, v6, v7, "Download context %@ set up for downloading attachment UUID %@ on accountID %@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_140;
  block[3] = &unk_278FCFCF0;
  block[4] = v11;
  v14 = *(a1 + 56);
  v13 = v14;
  v16 = v14;
  dispatch_sync(v12, block);
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
        block[2] = __47__ESDConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278FCFC28;
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

uint64_t __47__ESDConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
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
  v20[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = *MEMORY[0x277D03C88];
  v20[0] = *MEMORY[0x277D03AD0];
  v8 = *MEMORY[0x277D03B40];
  v19[0] = v7;
  v19[1] = v8;
  v9 = MEMORY[0x277CCAAB0];
  errorCopy = error;
  v11 = [v9 archivedDataWithRootObject:errorCopy];
  v19[2] = *MEMORY[0x277D03A20];
  v20[1] = v11;
  v20[2] = dCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&dword_24A1B8000, v13, v14, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v12 handlerBlock:0];
  v16 = dCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [(ESDConnection *)self _cancelDownloadsWithIDs:v15 error:errorCopy];
}

- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 134218498;
    inviteCopy = invite;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = iDCopy;
    _os_log_impl(&dword_24A1B8000, v16, v17, "Requesting share response %ld for calendar %@ for accountID %@", buf, 0x20u);
  }

  v18 = [[ESSharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(ESSharedCalendarContext *)v18 setShouldSyncCalendar:invite == 1];
  v19 = *MEMORY[0x277D039D0];
  v30[0] = *MEMORY[0x277D03C88];
  v30[1] = v19;
  v31[0] = *MEMORY[0x277D03DA8];
  v31[1] = iDCopy;
  v30[2] = *MEMORY[0x277D03E18];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:invite];
  v30[3] = *MEMORY[0x277D03E20];
  v31[2] = v20;
  v31[3] = dCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v25[3] = &unk_278FCFD40;
  v26 = dCopy;
  v27 = iDCopy;
  selfCopy = self;
  v29 = v18;
  v22 = v18;
  v23 = iDCopy;
  v24 = dCopy;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v21 handlerBlock:v25];
}

void __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    *buf = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_24A1B8000, v4, v5, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v9 = a1[6];
  v8 = a1[7];
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_144;
  block[3] = &unk_278FCFC78;
  block[4] = v9;
  v13 = v3;
  v14 = v8;
  v11 = v3;
  dispatch_sync(v10, block);
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412546;
    v31 = dCopy;
    v32 = 2112;
    v33 = iDCopy;
    _os_log_impl(&dword_24A1B8000, v14, v15, "Reporting calendar %@ for accountID %@ as junk", buf, 0x16u);
  }

  v16 = [[ESSharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(ESSharedCalendarContext *)v16 setShouldSyncCalendar:0];
  v17 = *MEMORY[0x277D03D48];
  v18 = *MEMORY[0x277D039D0];
  v28[0] = *MEMORY[0x277D03C88];
  v28[1] = v18;
  v29[0] = v17;
  v29[1] = iDCopy;
  v28[2] = *MEMORY[0x277D03E20];
  v29[2] = dCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v23[3] = &unk_278FCFD40;
  v24 = dCopy;
  v25 = iDCopy;
  selfCopy = self;
  v27 = v16;
  v20 = v16;
  v21 = iDCopy;
  v22 = dCopy;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v23];
}

void __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    *buf = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_24A1B8000, v4, v5, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v9 = a1[6];
  v8 = a1[7];
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_145;
  block[3] = &unk_278FCFC78;
  block[4] = v9;
  v13 = v3;
  v14 = v8;
  v11 = v3;
  dispatch_sync(v10, block);
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = MEMORY[0x277CCAAB0];
  dCopy = d;
  v9 = [v7 archivedDataWithRootObject:changeCopy];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03D28], *MEMORY[0x277D03C88], dCopy, *MEMORY[0x277D039D0], v9, *MEMORY[0x277D03B90], 0}];

  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 136315138;
    v26 = "[ESDConnection processFolderChange:forAccountWithID:]";
    _os_log_impl(&dword_24A1B8000, v11, v12, "XPC call performed in: %s", buf, 0xCu);
  }

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v15 = xpc_connection_send_message_with_reply_sync(_connectionForExchange, v13);

  if (MEMORY[0x24C212D60](v15) == MEMORY[0x277D86468])
  {
    v16 = _CFXPCCreateCFObjectFromXPCObject();
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03E88]];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ESDConnection_processFolderChange_forAccountWithID___block_invoke;
    block[3] = &unk_278FCFD68;
    selfCopy = self;
    v24 = unsignedIntegerValue;
    v22 = changeCopy;
    dispatch_sync(muckingWithInFlightCollections, block);
  }

  return 1;
}

void __54__ESDConnection_processFolderChange_forAccountWithID___block_invoke(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = a1[4];
    v6 = a1[6];
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_24A1B8000, v3, v4, "Setting folder change %@ for key %lu", &v10, 0x16u);
  }

  v7 = a1[4];
  v8 = *(a1[5] + 64);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v8 setObject:v7 forKeyedSubscript:v9];
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
  v21 = *MEMORY[0x277D03C88];
  v22[0] = *MEMORY[0x277D03BD8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__ESDConnection_statusReports__block_invoke;
  handler[3] = &unk_278FCFC50;
  v14 = &v15;
  v8 = v5;
  v13 = v8;
  xpc_connection_send_message_with_reply(_connectionForExchange, v4, v7, handler);

  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __30__ESDConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E40]];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = 136315394;
        v13 = "[ESDConnection statusReports]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_24A1B8000, v10, v11, "Server error in %s communicating with daemon: %@", &v12, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reallyRegisterForInterrogation
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(ESDConnection *)self registered])
  {
    [(ESDConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      *v8 = 0;
      _os_log_impl(&dword_24A1B8000, v3, v4, "Sending message: kDAERegisterForInterrogation", v8, 2u);
    }

    v9 = *MEMORY[0x277D03C88];
    v10[0] = *MEMORY[0x277D03D38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange, v6);
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

    v7 = MEMORY[0x24C212B50](v6);
    statusReportBlock = self->_statusReportBlock;
    self->_statusReportBlock = v7;
  }

  return 1;
}

- (void)fillOutCurrentEASTimeZoneInfo
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277D03C88];
  v12[0] = *MEMORY[0x277D03B88];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ESDConnection_fillOutCurrentEASTimeZoneInfo__block_invoke;
  v9[3] = &unk_278FCFD90;
  v10 = v5;
  v8 = v5;
  xpc_connection_send_message_with_reply(_connectionForExchange, v4, v7, v9);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)activeSyncDeviceIdentifier
{
  v33[1] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v3, v5, "Sending get activesync device identifier request", buf, 2u);
  }

  v32 = *MEMORY[0x277D03C88];
  v33[0] = *MEMORY[0x277D03BC8];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = dispatch_semaphore_create(0);
  _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
  v10 = dispatch_get_global_queue(2, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__ESDConnection_activeSyncDeviceIdentifier__block_invoke;
  v21[3] = &unk_278FCFC50;
  v23 = &v24;
  v11 = v8;
  v22 = v11;
  xpc_connection_send_message_with_reply(_connectionForExchange, v7, v10, v21);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (v25[5])
  {
    v12 = DALoggingwithCategory();
    if (!os_log_type_enabled(v12, v5))
    {
      goto LABEL_9;
    }

    v13 = v25[5];
    *buf = 138412290;
    v31 = v13;
    v14 = "Received activesync device identifier: %@";
    v15 = v12;
    v16 = v5;
    v17 = 12;
  }

  else
  {
    v12 = DALoggingwithCategory();
    v18 = *(v4 + 3);
    if (!os_log_type_enabled(v12, v18))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Error getting activesync device identifier";
    v15 = v12;
    v16 = v18;
    v17 = 2;
  }

  _os_log_impl(&dword_24A1B8000, v15, v16, v14, buf, v17);
LABEL_9:

  v19 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v19;
}

void __43__ESDConnection_activeSyncDeviceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D039F0]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update
{
  updateCopy = update;
  v36[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (dCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v11 = *MEMORY[0x277D039D0];
    v35[0] = *MEMORY[0x277D03C88];
    v35[1] = v11;
    v36[0] = *MEMORY[0x277D03CD0];
    v36[1] = dCopy;
    v35[2] = *MEMORY[0x277D03CC0];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
    v36[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v14 = [v10 initWithDictionary:v13];

    if (updateCopy)
    {
      dictionaryRepresentation = [requestCopy dictionaryRepresentation];
      [v14 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277D03CE0]];
    }

    v16 = _CFXPCCreateXPCObjectFromCFObject();
    v17 = dispatch_semaphore_create(0);
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    v19 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke;
    handler[3] = &unk_278FCFDE0;
    v25 = requestCopy;
    selfCopy = self;
    v29 = updateCopy;
    v28 = &v31;
    v20 = v17;
    v27 = v20;
    xpc_connection_send_message_with_reply(_connectionForExchange, v16, v19, handler);

    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    v21 = *(v32 + 24);
  }

  else
  {
    v14 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v22))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v14, v22, "nil accountID passed to performASSettingsRequest. Cannot continue.", buf, 2u);
    }

    v21 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v21 & 1;
}

void __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03CC8]];
    [*(a1 + 32) setRequestID:v5];
    v6 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2;
    v8[3] = &unk_278FCFDB8;
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

uint64_t __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    if (*(a1 + 56))
    {
      v5 = @"update";
    }

    else
    {
      v5 = @"retrieve";
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24A1B8000, v3, v4, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v9, 0x20u);
  }

  return [*(*(a1 + 48) + 104) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
}

- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block
{
  v20[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    v8 = *MEMORY[0x277D03C48];
    v9 = *MEMORY[0x277D039D0];
    v19[0] = *MEMORY[0x277D03C88];
    v19[1] = v9;
    v20[0] = v8;
    v20[1] = dCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)self _connectionForExchange];
    v13 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __72__ESDConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke;
    handler[3] = &unk_278FCFE08;
    v17 = blockCopy;
    xpc_connection_send_message_with_reply(_connectionForExchange, v11, v13, handler);
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v14, v15, "nil accountID passed to isOofSettingsSupportedForAccountWithID. Cannot continue.", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __72__ESDConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C50]];
    v6 = v5;
    if (v5)
    {
      [v5 BOOLValue];
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        *v9 = 0;
        _os_log_impl(&dword_24A1B8000, v7, v8, "Error getting activesync device identifier", v9, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v72 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  addressesCopy = addresses;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v20 = dCopy;
  if (!dCopy)
  {
    v21 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, *(MEMORY[0x277D03988] + 4)))
    {
      *buf = 138412290;
      v63 = 0;
      v23 = "Invalid 'accountID' provided: [%@].";
      v24 = v21;
      v25 = v27;
      v26 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
    goto LABEL_11;
  }

  if (!dateCopy || !endDateCopy || [dateCopy compare:endDateCopy] == 1)
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, v22))
    {
      *buf = 138412546;
      v63 = dateCopy;
      v64 = 2112;
      v65 = endDateCopy;
      v23 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v24 = v21;
      v25 = v22;
      v26 = 22;
LABEL_9:
      _os_log_impl(&dword_24A1B8000, v24, v25, v23, buf, v26);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (addressesCopy && [addressesCopy count])
  {
    v40 = DALoggingwithCategory();
    v41 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v40, v41))
    {
      *buf = 138413314;
      v63 = v20;
      v64 = 2112;
      v65 = dateCopy;
      v66 = 2112;
      v67 = endDateCopy;
      v68 = 2112;
      v69 = iDCopy;
      v70 = 2112;
      v71 = addressesCopy;
      _os_log_impl(&dword_24A1B8000, v40, v41, "Preparing calendar availability request.  accountID: [%@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v42 setObject:*MEMORY[0x277D03D68] forKey:*MEMORY[0x277D03C88]];
    [v42 setObject:v20 forKey:*MEMORY[0x277D039D0]];
    [v42 setObject:dateCopy forKey:*MEMORY[0x277D03E28]];
    [v42 setObject:endDateCopy forKey:*MEMORY[0x277D03B38]];
    [v42 setObject:addressesCopy forKey:*MEMORY[0x277D039F8]];
    if (iDCopy)
    {
      [v42 setObject:iDCopy forKey:*MEMORY[0x277D03C38]];
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_152;
    v48[3] = &unk_278FCFE58;
    v52[1] = &v56;
    v51 = blockCopy;
    v52[0] = completionBlockCopy;
    v34 = v42;
    v49 = v34;
    selfCopy = self;
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v34 handlerBlock:v48];

    v36 = completionBlockCopy;
    v45 = dateCopy;
    v31 = endDateCopy;
    v32 = v20;
    v33 = addressesCopy;
    v28 = 0;
    v35 = &v51;
    v37 = v52;
    goto LABEL_15;
  }

  v43 = DALoggingwithCategory();
  v44 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v43, v44))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v43, v44, "No 'addresses' provided.", buf, 2u);
  }

  v28 = 0;
LABEL_11:
  v29 = DALoggingwithCategory();
  v30 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v29, v30))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v29, v30, "Will not issue calendar availability request.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v45 = dateCopy;
    v31 = endDateCopy;
    v32 = v20;
    v33 = addressesCopy;
    v34 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278FCFE30;
    v35 = &v55;
    v36 = completionBlockCopy;
    v55 = completionBlockCopy;
    v37 = &v54;
    v28 = v28;
    v54 = v28;
    dispatch_async(v34, block);
LABEL_15:

    addressesCopy = v33;
    dateCopy = v45;
    v20 = v32;
    endDateCopy = v31;
    completionBlockCopy = v36;
  }

  v38 = v57[5];

  _Block_object_dispose(&v56, 8);

  return v38;
}

void __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_152(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[ESECalendarAvailabilityContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(*(a1[8] + 8) + 40);
    v10 = a1[4];
    *buf = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_24A1B8000, v7, v8, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v11 = a1[5];
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_154;
  block[3] = &unk_278FCFCF0;
  v13 = a1[8];
  v16 = v6;
  v17 = v13;
  block[4] = v11;
  v14 = v6;
  dispatch_sync(v12, block);
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v22[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = *MEMORY[0x277D03AB8];
    v7 = *MEMORY[0x277D03A58];
    v21[0] = *MEMORY[0x277D03C88];
    v21[1] = v7;
    v22[0] = v6;
    v22[1] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:0];
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ESDConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278FCFC28;
    v14 = buf;
    block[4] = self;
    v13 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [*(v16 + 5) finishedWithError:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v8, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v8, v11, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }
}

uint64_t __57__ESDConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
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
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A68]];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v23 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v23];
  v15 = v23;

  if (!v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v16, v17))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ESDConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v19 = v6;
  v21 = v19;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
}

uint64_t __61__ESDConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_calendarAvailabilityRequestFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ESDConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __54__ESDConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
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
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  termsCopy = terms;
  typesCopy = types;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = 0;
  if (dCopy)
  {
    if (termsCopy && [termsCopy count])
    {
      if (typesCopy && [typesCopy count])
      {
        v19 = DALoggingwithCategory();
        v20 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138413058;
          v53 = dCopy;
          v54 = 2112;
          v55 = typesCopy;
          v56 = 2048;
          limitCopy = limit;
          v58 = 2112;
          v59 = termsCopy;
          _os_log_impl(&dword_24A1B8000, v19, v20, "Preparing calendar directory search.  accountID: [%@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
        }

        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v21 setObject:*MEMORY[0x277D03CF8] forKey:*MEMORY[0x277D03C88]];
        [v21 setObject:dCopy forKey:*MEMORY[0x277D039D0]];
        allObjects = [termsCopy allObjects];
        [v21 setObject:allObjects forKey:*MEMORY[0x277D03AA8]];

        allObjects2 = [typesCopy allObjects];
        [v21 setObject:allObjects2 forKey:*MEMORY[0x277D03A88]];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
        [v21 setObject:v24 forKey:*MEMORY[0x277D03A90]];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_156;
        v38[3] = &unk_278FCFE58;
        v42[1] = &v46;
        v41 = blockCopy;
        v42[0] = completionBlockCopy;
        v25 = v21;
        v39 = v25;
        selfCopy = self;
        [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v25 handlerBlock:v38];

        v26 = 0;
        v27 = &v41;
        v28 = v42;
        goto LABEL_22;
      }

      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 7);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v31 = "No 'recordTypes' provided.";
    }

    else
    {
      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 7);
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_17:

        v26 = 0;
        goto LABEL_18;
      }

      *buf = 0;
      v31 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_24A1B8000, v29, v30, v31, buf, 2u);
    goto LABEL_17;
  }

  v32 = DALoggingwithCategory();
  v33 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v32, v33))
  {
    *buf = 138412290;
    v53 = 0;
    _os_log_impl(&dword_24A1B8000, v32, v33, "Invalid 'accountID' provided: [%@].", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
LABEL_18:
  v34 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v34, v35))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v34, v35, "Will not issue calendar directory search.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278FCFE30;
    v27 = &v45;
    v45 = completionBlockCopy;
    v28 = &v44;
    v26 = v26;
    v44 = v26;
    dispatch_async(v25, block);
LABEL_22:
  }

  v36 = v47[5];

  _Block_object_dispose(&v46, 8);

  return v36;
}

void __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_156(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[ESECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(*(a1[8] + 8) + 40);
    v10 = a1[4];
    *buf = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_24A1B8000, v7, v8, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v11 = a1[5];
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_158;
  block[3] = &unk_278FCFCF0;
  v13 = a1[8];
  v16 = v6;
  v17 = v13;
  block[4] = v11;
  v14 = v6;
  dispatch_sync(v12, block);
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v27[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = *MEMORY[0x277D03AC0];
    v7 = *MEMORY[0x277D03A80];
    v26[0] = *MEMORY[0x277D03C88];
    v26[1] = v7;
    v27[0] = v6;
    v27[1] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:0];
    *v18 = 0;
    v19 = v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ESDConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278FCFC28;
    v17 = v18;
    block[4] = self;
    v10 = v5;
    v16 = v10;
    dispatch_sync(muckingWithInFlightCollections, block);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [*(v19 + 5) finishedWithError:v11 exceededResultLimit:0];
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_24A1B8000, v12, v13, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
    }

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v8 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v8, v14))
    {
      *v18 = 0;
      _os_log_impl(&dword_24A1B8000, v8, v14, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v18, 2u);
    }
  }
}

uint64_t __53__ESDConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
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
  v34 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A98]];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v28 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v16, v17))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to decode results: %@", &buf, 0xCu);
    }
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
  block[2] = __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v19 = v6;
  v26 = v19;
  dispatch_sync(muckingWithInFlightCollections, block);
  v20 = [v14 count];
  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v20];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v23[3] = &unk_278FCFE80;
  v22 = v21;
  v24 = v22;
  [v14 enumerateKeysAndObjectsUsingBlock:v23];
  [*(*(&buf + 1) + 40) resultsReturned:v22];

  _Block_object_dispose(&buf, 8);
}

uint64_t __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A70]];
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
  block[2] = __50__ESDConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:bOOLValue];

  _Block_object_dispose(&v17, 8);
}

uint64_t __50__ESDConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
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
  v41[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if (blockCopy)
  {
    if (dCopy)
    {
      v8 = *MEMORY[0x277D03D58];
      v9 = *MEMORY[0x277D039D0];
      v40[0] = *MEMORY[0x277D03C88];
      v40[1] = v9;
      v41[0] = v8;
      v41[1] = dCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65__ESDConnection_externalIdentificationForAccountID_resultsBlock___block_invoke;
      v16[3] = &unk_278FCFEA8;
      v16[4] = &v34;
      v16[5] = &v28;
      v16[6] = &v24;
      v16[7] = &v18;
      [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v10 handlerBlock:v16];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_24A1B8000, v13, v14, "No accountID provided.", buf, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
      v10 = v35[5];
      v35[5] = v15;
    }

    blockCopy[2](blockCopy, v35[5], v29[5], v25[3], v19[5]);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v11, v12, "No results block provided.", buf, 2u);
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

void __65__ESDConnection_externalIdentificationForAccountID_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 count])
  {
    v3 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039E0]];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039E8]];
    *(*(*(a1 + 48) + 8) + 24) = [v6 integerValue];

    v7 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039D8]];
    v8 = 56;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:28 userInfo:0];
    v8 = 32;
  }

  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (ESDConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v26.receiver = self;
  v26.super_class = ESDConnection;
  v2 = [(ESDConnection *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.muckingWithConn", 0);
    muckingWithConn = v2->_muckingWithConn;
    v2->_muckingWithConn = v3;

    v5 = dispatch_queue_create("com.apple.dataaccess.muckingWithInFlightCollections", 0);
    muckingWithInFlightCollections = v2->_muckingWithInFlightCollections;
    v2->_muckingWithInFlightCollections = v5;

    v7 = objc_opt_new();
    accountIdsWithAlreadyResetCerts = v2->_accountIdsWithAlreadyResetCerts;
    v2->_accountIdsWithAlreadyResetCerts = v7;

    v9 = objc_opt_new();
    accountIdsWithAlreadyResetThrottleTimers = v2->_accountIdsWithAlreadyResetThrottleTimers;
    v2->_accountIdsWithAlreadyResetThrottleTimers = v9;

    v11 = objc_opt_new();
    inFlightSearchQueries = v2->_inFlightSearchQueries;
    v2->_inFlightSearchQueries = v11;

    v13 = objc_opt_new();
    inFlightFolderChanges = v2->_inFlightFolderChanges;
    v2->_inFlightFolderChanges = v13;

    v15 = objc_opt_new();
    inFlightAttachmentDownloads = v2->_inFlightAttachmentDownloads;
    v2->_inFlightAttachmentDownloads = v15;

    v17 = objc_opt_new();
    inFlightCalendarAvailabilityRequests = v2->_inFlightCalendarAvailabilityRequests;
    v2->_inFlightCalendarAvailabilityRequests = v17;

    v19 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v19;

    v21 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v21;

    v23 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v23;

    [(ESDConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(ESDConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ESDConnection;
  [(ESDConnection *)&v4 dealloc];
}

- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v18[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (idCopy)
  {
    v10 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetCerts containsObject:idCopy]^ 1;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  if (idCopy && v10 | requestedCopy)
  {
    v11 = *MEMORY[0x277D039D0];
    v17[0] = *MEMORY[0x277D03C88];
    v17[1] = v11;
    v18[0] = *MEMORY[0x277D03D98];
    v18[1] = idCopy;
    v17[2] = *MEMORY[0x277D03B08];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:dataclasses];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)selfCopy _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange, v14);

    v16 = selfCopy;
    objc_sync_enter(v16);
    [v16[4] addObject:idCopy];
    objc_sync_exit(v16);
  }
}

- (void)_resetThrottleTimersForAccountId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    Name = sel_getName(a2);
    accountIdsWithAlreadyResetThrottleTimers = self->_accountIdsWithAlreadyResetThrottleTimers;
    *buf = 136315394;
    v21 = Name;
    v22 = 2112;
    v23 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_24A1B8000, v6, v7, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!idCopy)
  {
    objc_sync_exit(selfCopy);
    v14 = selfCopy;
    goto LABEL_7;
  }

  v11 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers containsObject:idCopy];
  objc_sync_exit(selfCopy);

  if ((v11 & 1) == 0)
  {
    v12 = *MEMORY[0x277D03DA0];
    v13 = *MEMORY[0x277D039D0];
    v18[0] = *MEMORY[0x277D03C88];
    v18[1] = v13;
    v19[0] = v12;
    v19[1] = idCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15 = _CFXPCCreateXPCObjectFromCFObject();
    _connectionForExchange = [(ESDConnection *)selfCopy _connectionForExchange];
    xpc_connection_send_message(_connectionForExchange, v15);

    v17 = selfCopy;
    objc_sync_enter(v17);
    [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers addObject:idCopy];
    objc_sync_exit(v17);

LABEL_7:
  }
}

- (void)resetTimersAndWarnings
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A1B8000, v3, v4, "Resetting shouldResetCertWarnings and throttle timers", v6, 2u);
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
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03C88]];
  if ([v6 isEqualToString:*MEMORY[0x277D03BC0]])
  {
    [(ESDConnection *)self _foldersUpdated:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03D18]])
  {
    [(ESDConnection *)self _policyKeyChanged:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03C60]])
  {
    [(ESDConnection *)self _logDataAccessStatus:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03DD0]])
  {
    [(ESDConnection *)self _serverContactsSearchQueryFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03B98]])
  {
    [(ESDConnection *)self _folderChangeFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03BE0]])
  {
    [(ESDConnection *)self _getStatusReportsFromClient:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A28]])
  {
    [(ESDConnection *)self _downloadProgress:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A18]])
  {
    [(ESDConnection *)self _downloadFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03AB0]])
  {
    [(ESDConnection *)self _shareResponseFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03CD8]])
  {
    [(ESDConnection *)self _oofSettingsRequestsFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A60]])
  {
    [(ESDConnection *)self _calendarAvailabilityRequestReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A50]])
  {
    [(ESDConnection *)self _calendarAvailabilityRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03AA0]])
  {
    [(ESDConnection *)self _calendarDirectorySearchReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A78]])
  {
    [(ESDConnection *)self _calendarDirectorySearchFinished:messageCopy];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_24A1B8000, v7, v8, "unknown request sent to connection.", &v10, 2u);
    }

    v9 = DALoggingwithCategory();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_24A1B8000, v9, v8, "request: %@", &v10, 0xCu);
    }
  }
}

@end