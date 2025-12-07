@interface DADConnection
+ (id)_dictionarySuitableForLogging:(id)logging;
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
+ (void)_logRequestID:(id)d forRequestAttributes:(id)attributes associatedContext:(id)context;
- (BOOL)_checkInvalidIdExistsInXPCRely:(id)rely;
- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update;
- (BOOL)_validateXPCReply:(id)reply;
- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d;
- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d;
- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (BOOL)registerForInterrogationWithBlock:(id)block;
- (BOOL)requestPolicyUpdateForAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)retrieveOofSettingsRequest:(id)request forAccountWithID:(id)d;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d;
- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (BOOL)updateOofSettingsRequest:(id)request forAccountWithID:(id)d;
- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent;
- (DADConnection)init;
- (id)_connection;
- (id)_createReplyToRequest:(id)request withProperties:(id)properties;
- (id)_init;
- (id)activeSyncDeviceIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock;
- (id)currentPolicyKeyForAccountID:(id)d;
- (id)decodedErrorFromData:(id)data;
- (id)downloadSubscribedCalendarWithURL:(id)l queue:(id)queue delegate:(id)delegate;
- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)requestGrantedDelegatesListForAccountID:(id)d resultsBlock:(id)block;
- (id)statusReports;
- (id)updateGrantedDelegateForAccountID:(id)d grantedDelegate:(id)delegate action:(int64_t)action resultsBlock:(id)block;
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
- (void)_downloadSubscribedCalendarFinished:(id)finished;
- (void)_downloadSubscribedCalendarProgress:(id)progress;
- (void)_downloadSubscribedCalendarRequiresPassword:(id)password;
- (void)_folderChangeFinished:(id)finished;
- (void)_foldersUpdated:(id)updated;
- (void)_getStatusReportsFromClient:(id)client;
- (void)_grantedDelegatesListRequestFinished:(id)finished;
- (void)_groupExpansionFinished:(id)finished;
- (void)_holidayCalendarFetchFinished:(id)finished;
- (void)_holidayCalendarFetchReturnedResults:(id)results;
- (void)_initializeConnection;
- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint;
- (void)_initializeXPCConnection:(id)connection;
- (void)_officeHoursRequestFinished:(id)finished;
- (void)_oofSettingsRequestsFinished:(id)finished;
- (void)_policyKeyChanged:(id)changed;
- (void)_registerForAppResumedNotification;
- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)status withToken:(unint64_t)token waitForReply:(BOOL)reply;
- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_resetThrottleTimersForAccountId:(id)id;
- (void)_sendXPCMessageSynchronous:(BOOL)synchronous withParameters:(id)parameters handlerBlock:(id)block;
- (void)_serverContactsSearchQueryFinished:(id)finished;
- (void)_serverDiedWithReason:(id)reason;
- (void)_shareResponseFinished:(id)finished;
- (void)_subscriptionCalendarJunkCheckFinished:(id)finished;
- (void)_tearDownInFlightObjects;
- (void)_updateGrantedDelegatePermissionRequestFinished:(id)finished;
- (void)addExchangeDelegateWithName:(id)name emailAddress:(id)address toAccountWithID:(id)d completion:(id)completion;
- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (void)beginCalDAVServerSimulationWithHostname:(id)hostname;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelDownloadingAttachmentWithDownloadID:(id)d error:(id)error;
- (void)cancelDownloadingSubscriptionCalendarWithDownloadID:(id)d;
- (void)cancelGrantedDelegatesListRequestWithID:(id)d;
- (void)cancelServerContactsSearch:(id)search;
- (void)checkSubscriptionCalendarIsJunk:(id)junk queue:(id)queue completionBlock:(id)block;
- (void)dealloc;
- (void)endCalDAVServerSimulationWithHostname:(id)hostname;
- (void)fetchAvailableHolidayCalendarsWithResultsBlock:(id)block completionBlock:(id)completionBlock queue:(id)queue;
- (void)fetchOfficeHoursForAccountWithID:(id)d queue:(id)queue completionBlock:(id)block;
- (void)fillOutCurrentEASTimeZoneInfo;
- (void)handleAccountChange:(id)change callback:(id)callback;
- (void)handleURL:(id)l;
- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block;
- (void)performGroupExpansionWithAccountID:(id)d principalPath:(id)path completionBlock:(id)block;
- (void)reallyRegisterForInterrogation;
- (void)removeExchangeDelegateWithSourceID:(id)d fromParentAccountWithID:(id)iD completion:(id)completion;
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)reportSubscriptionCalendarAsJunk:(id)junk;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)setOfficeHours:(id)hours forAccountWithID:(id)d queue:(id)queue completionBlock:(id)block;
- (void)validateCandidateSubscriptionURLWithICloud:(id)cloud queue:(id)queue completionBlock:(id)block;
@end

@implementation DADConnection

- (void)_tearDownInFlightObjects
{
  v266 = *MEMORY[0x277D85DE8];
  v247 = 0;
  v248 = &v247;
  v249 = 0x3032000000;
  v250 = __Block_byref_object_copy_;
  v251 = __Block_byref_object_dispose_;
  v252 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_27851FF50;
  block[5] = &v247;
  selfCopy = self;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v248[5];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v5];

  v240 = 0;
  v241 = &v240;
  v242 = 0x3032000000;
  v243 = __Block_byref_object_copy_;
  v244 = __Block_byref_object_dispose_;
  v245 = 0;
  v6 = selfCopy->_muckingWithInFlightCollections;
  v239[0] = MEMORY[0x277D85DD0];
  v239[1] = 3221225472;
  v239[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_181;
  v239[3] = &unk_27851FF50;
  v239[5] = &v240;
  v239[4] = selfCopy;
  dispatch_sync(v6, v239);
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  v7 = v241[5];
  v8 = [v7 countByEnumeratingWithState:&v235 objects:v265 count:16];
  if (v8)
  {
    v9 = *v236;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v236 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v235 + 1) + 8 * i);
        consumer = [v11 consumer];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [consumer folderChange:v11 finishedWithStatus:0 error:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v235 objects:v265 count:16];
    }

    while (v8);
  }

  v229 = 0;
  v230 = &v229;
  v231 = 0x3032000000;
  v232 = __Block_byref_object_copy_;
  v233 = __Block_byref_object_dispose_;
  v234 = 0;
  v14 = selfCopy->_muckingWithInFlightCollections;
  v228[0] = MEMORY[0x277D85DD0];
  v228[1] = 3221225472;
  v228[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_182;
  v228[3] = &unk_27851FF50;
  v228[5] = &v229;
  v228[4] = selfCopy;
  dispatch_sync(v14, v228);
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v15 = v230[5];
  v16 = [v15 countByEnumeratingWithState:&v224 objects:v264 count:16];
  if (v16)
  {
    v17 = *v225;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v225 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v224 + 1) + 8 * j);
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [v19 finishedWithError:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v224 objects:v264 count:16];
    }

    while (v16);
  }

  v218 = 0;
  v219 = &v218;
  v220 = 0x3032000000;
  v221 = __Block_byref_object_copy_;
  v222 = __Block_byref_object_dispose_;
  v223 = 0;
  v21 = selfCopy->_muckingWithInFlightCollections;
  v217[0] = MEMORY[0x277D85DD0];
  v217[1] = 3221225472;
  v217[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_183;
  v217[3] = &unk_27851FF50;
  v217[5] = &v218;
  v217[4] = selfCopy;
  dispatch_sync(v21, v217);
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v22 = v219[5];
  v23 = [v22 countByEnumeratingWithState:&v213 objects:v263 count:16];
  if (v23)
  {
    v24 = *v214;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v214 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v213 + 1) + 8 * k);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v26 finishedWithError:v27];
      }

      v23 = [v22 countByEnumeratingWithState:&v213 objects:v263 count:16];
    }

    while (v23);
  }

  v207 = 0;
  v208 = &v207;
  v209 = 0x3032000000;
  v210 = __Block_byref_object_copy_;
  v211 = __Block_byref_object_dispose_;
  v212 = 0;
  v28 = selfCopy->_muckingWithInFlightCollections;
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_184;
  v206[3] = &unk_27851FF50;
  v206[5] = &v207;
  v206[4] = selfCopy;
  dispatch_sync(v28, v206);
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v29 = v208[5];
  v30 = [v29 countByEnumeratingWithState:&v202 objects:v262 count:16];
  if (v30)
  {
    v31 = *v203;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v203 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v202 + 1) + 8 * m);
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v33 finishedWithResults:0 error:v34];
      }

      v30 = [v29 countByEnumeratingWithState:&v202 objects:v262 count:16];
    }

    while (v30);
  }

  v196 = 0;
  v197 = &v196;
  v198 = 0x3032000000;
  v199 = __Block_byref_object_copy_;
  v200 = __Block_byref_object_dispose_;
  v201 = 0;
  v35 = selfCopy->_muckingWithInFlightCollections;
  v195[0] = MEMORY[0x277D85DD0];
  v195[1] = 3221225472;
  v195[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_185;
  v195[3] = &unk_27851FF50;
  v195[5] = &v196;
  v195[4] = selfCopy;
  dispatch_sync(v35, v195);
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v36 = v197[5];
  v37 = [v36 countByEnumeratingWithState:&v191 objects:v261 count:16];
  if (v37)
  {
    v38 = *v192;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v192 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v191 + 1) + 8 * n);
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v40 finishedWithError:v41];
      }

      v37 = [v36 countByEnumeratingWithState:&v191 objects:v261 count:16];
    }

    while (v37);
  }

  v185 = 0;
  v186 = &v185;
  v187 = 0x3032000000;
  v188 = __Block_byref_object_copy_;
  v189 = __Block_byref_object_dispose_;
  v190 = 0;
  v42 = selfCopy->_muckingWithInFlightCollections;
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_186;
  v184[3] = &unk_27851FF50;
  v184[5] = &v185;
  v184[4] = selfCopy;
  dispatch_sync(v42, v184);
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v43 = v186[5];
  v44 = [v43 countByEnumeratingWithState:&v180 objects:v260 count:16];
  if (v44)
  {
    v45 = *v181;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v181 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v180 + 1) + 8 * ii);
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v47 finishedWithError:v48 exceededResultLimit:0];
      }

      v44 = [v43 countByEnumeratingWithState:&v180 objects:v260 count:16];
    }

    while (v44);
  }

  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy_;
  v178 = __Block_byref_object_dispose_;
  v179 = 0;
  v49 = selfCopy->_muckingWithInFlightCollections;
  v173[0] = MEMORY[0x277D85DD0];
  v173[1] = 3221225472;
  v173[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_187;
  v173[3] = &unk_27851FF50;
  v173[5] = &v174;
  v173[4] = selfCopy;
  dispatch_sync(v49, v173);
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v50 = v175[5];
  v51 = [v50 countByEnumeratingWithState:&v169 objects:v259 count:16];
  if (v51)
  {
    v52 = *v170;
    do
    {
      for (jj = 0; jj != v51; ++jj)
      {
        if (*v170 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v169 + 1) + 8 * jj);
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v54 finishedWithError:v55];
      }

      v51 = [v50 countByEnumeratingWithState:&v169 objects:v259 count:16];
    }

    while (v51);
  }

  v163 = 0;
  v164 = &v163;
  v165 = 0x3032000000;
  v166 = __Block_byref_object_copy_;
  v167 = __Block_byref_object_dispose_;
  v168 = 0;
  v56 = selfCopy->_muckingWithInFlightCollections;
  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_188;
  v162[3] = &unk_27851FF50;
  v162[5] = &v163;
  v162[4] = selfCopy;
  dispatch_sync(v56, v162);
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v57 = v164[5];
  v58 = [v57 countByEnumeratingWithState:&v158 objects:v258 count:16];
  if (v58)
  {
    v59 = *v159;
    do
    {
      for (kk = 0; kk != v58; ++kk)
      {
        if (*v159 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v61 = *(*(&v158 + 1) + 8 * kk);
        v62 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v61 finishedWithError:v62];
      }

      v58 = [v57 countByEnumeratingWithState:&v158 objects:v258 count:16];
    }

    while (v58);
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy_;
  v156 = __Block_byref_object_dispose_;
  v157 = 0;
  v63 = selfCopy->_muckingWithInFlightCollections;
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_189;
  v151[3] = &unk_27851FF50;
  v151[5] = &v152;
  v151[4] = selfCopy;
  dispatch_sync(v63, v151);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v64 = v153[5];
  v65 = [v64 countByEnumeratingWithState:&v147 objects:v257 count:16];
  if (v65)
  {
    v66 = *v148;
    do
    {
      for (mm = 0; mm != v65; ++mm)
      {
        if (*v148 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v147 + 1) + 8 * mm);
        consumer2 = [v68 consumer];
        v70 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [consumer2 oofRequestInfo:v68 finishedWithResult:0 error:v70];
      }

      v65 = [v64 countByEnumeratingWithState:&v147 objects:v257 count:16];
    }

    while (v65);
  }

  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy_;
  v145 = __Block_byref_object_dispose_;
  v146 = 0;
  v71 = selfCopy->_muckingWithInFlightCollections;
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_190;
  v140[3] = &unk_27851FF50;
  v140[5] = &v141;
  v140[4] = selfCopy;
  dispatch_sync(v71, v140);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v72 = v142[5];
  v73 = [v72 countByEnumeratingWithState:&v136 objects:v256 count:16];
  if (v73)
  {
    v74 = *v137;
    do
    {
      for (nn = 0; nn != v73; ++nn)
      {
        if (*v137 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v136 + 1) + 8 * nn);
        v77 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v76 abortWithError:v77];
      }

      v73 = [v72 countByEnumeratingWithState:&v136 objects:v256 count:16];
    }

    while (v73);
  }

  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy_;
  v134 = __Block_byref_object_dispose_;
  v135 = 0;
  v78 = selfCopy->_muckingWithInFlightCollections;
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_191;
  v129[3] = &unk_27851FF50;
  v129[4] = selfCopy;
  v129[5] = &v130;
  dispatch_sync(v78, v129);
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v79 = v131[5];
  v80 = [v79 countByEnumeratingWithState:&v125 objects:v255 count:16];
  if (v80)
  {
    v81 = *v126;
    do
    {
      for (i1 = 0; i1 != v80; ++i1)
      {
        if (*v126 != v81)
        {
          objc_enumerationMutation(v79);
        }

        v83 = *(*(&v125 + 1) + 8 * i1);
        v84 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_192;
        v123[3] = &unk_27851FF78;
        v85 = v84;
        v124 = v85;
        [v83 callOutToDelegate:v123];
      }

      v80 = [v79 countByEnumeratingWithState:&v125 objects:v255 count:16];
    }

    while (v80);
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy_;
  v121 = __Block_byref_object_dispose_;
  v122 = 0;
  v86 = selfCopy->_muckingWithInFlightCollections;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_2;
  v116[3] = &unk_27851FF50;
  v116[4] = selfCopy;
  v116[5] = &v117;
  dispatch_sync(v86, v116);
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v87 = v118[5];
  v88 = [v87 countByEnumeratingWithState:&v112 objects:v254 count:16];
  if (v88)
  {
    v89 = *v113;
    do
    {
      for (i2 = 0; i2 != v88; ++i2)
      {
        if (*v113 != v89)
        {
          objc_enumerationMutation(v87);
        }

        v91 = *(*(&v112 + 1) + 8 * i2);
        v92 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v91 finishedWithError:v92];
      }

      v88 = [v87 countByEnumeratingWithState:&v112 objects:v254 count:16];
    }

    while (v88);
  }

  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy_;
  v110 = __Block_byref_object_dispose_;
  v111 = 0;
  v93 = selfCopy->_muckingWithInFlightCollections;
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_194;
  v105[3] = &unk_27851FF50;
  v105[4] = selfCopy;
  v105[5] = &v106;
  dispatch_sync(v93, v105);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v94 = v107[5];
  v95 = [v94 countByEnumeratingWithState:&v101 objects:v253 count:16];
  if (v95)
  {
    v96 = *v102;
    do
    {
      for (i3 = 0; i3 != v95; ++i3)
      {
        if (*v102 != v96)
        {
          objc_enumerationMutation(v94);
        }

        v98 = *(*(&v101 + 1) + 8 * i3);
        v99 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v98 finishedWithError:v99];
      }

      v95 = [v94 countByEnumeratingWithState:&v101 objects:v253 count:16];
    }

    while (v95);
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v117, 8);

  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v141, 8);

  _Block_object_dispose(&v152, 8);
  _Block_object_dispose(&v163, 8);

  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v185, 8);

  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v207, 8);

  _Block_object_dispose(&v218, 8);
  _Block_object_dispose(&v229, 8);

  _Block_object_dispose(&v240, 8);
  _Block_object_dispose(&v247, 8);
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing ALL search queries", v7, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_181(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Failing all folder changes", v7, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_182(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all attachment downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_183(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar availability lookups", v7, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_184(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all granted delegates list requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 128) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_185(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all update-granted-delegate-permission requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 136) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_186(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar search requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_187(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all group expansions", v7, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_188(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all share requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_189(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all settings requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 112) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_190(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all office hours requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 120) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_191(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all subscribed calendar downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 144) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Remove all subscribed calendar junk checks", v7, 2u);
  }

  return [*(*(a1 + 32) + 152) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_194(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Remove all holiday calendar fetches", v7, 2u);
  }

  return [*(*(a1 + 32) + 160) removeAllObjects];
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
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(DADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(DADConnection *)self setRegistered:0];
}

- (id)_connection
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
  v5[2] = __28__DADConnection__connection__block_invoke;
  v5[3] = &unk_27851FFA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__DADConnection__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _initializeConnection];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_initializeConnection
{
  v10 = *MEMORY[0x277D85DE8];
  uTF8String = [@"com.apple.dataaccess.dataaccessd" UTF8String];
  v4 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(uTF8String, v4, 0);
  conn = self->_conn;
  self->_conn = mach_service;

  if (self->_conn)
  {

    [(DADConnection *)self _initializeXPCConnection:?];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = @"com.apple.dataaccess.dataaccessd";
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a connection to [%@]", &v8, 0xCu);
    }
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__DADConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_27851FED8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(muckingWithConn, v7);
}

void __54__DADConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Couldn't create a connection to endpoint: [%@]", &v8, 0xCu);
    }
  }
}

- (void)_initializeXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__DADConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_27851FFC8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(connectionCopy, v5);
  xpc_connection_resume(connectionCopy);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__DADConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x22AA4EF10]();
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
  applier[2] = __54__DADConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_27851FFF0;
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
        _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode error: %@", buf, 0xCu);
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

+ (id)_dictionarySuitableForLogging:(id)logging
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:logging];
  v4 = [v3 objectForKeyedSubscript:@"kDAESubCalPasswordKey"];

  if (v4)
  {
    [v3 setObject:@"<redacted>" forKeyedSubscript:@"kDAESubCalPasswordKey"];
  }

  return v3;
}

+ (void)_logRequestID:(id)d forRequestAttributes:(id)attributes associatedContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  attributesCopy = attributes;
  contextCopy = context;
  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [objc_opt_class() _dictionarySuitableForLogging:attributesCopy];
    v12 = 138412802;
    v13 = dCopy;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", &v12, 0x20u);
  }
}

- (void)_policyKeyChanged:(id)changed
{
  changedCopy = changed;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DADConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_27851FF00;
  v6 = changedCopy;
  v4 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__DADConnection__policyKeyChanged___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_ERROR, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }
}

- (void)_foldersUpdated:(id)updated
{
  updatedCopy = updated;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DADConnection__foldersUpdated___block_invoke;
  block[3] = &unk_27851FF00;
  v6 = updatedCopy;
  v4 = updatedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__DADConnection__foldersUpdated___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
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

void __38__DADConnection__logDataAccessStatus___block_invoke()
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
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
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
  block[2] = __52__DADConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278520038;
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
          _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode search results: %@", v26, 0xCu);
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
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v26, 2u);
      }

      v18 = 0;
    }

    v19 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v26 = 138412290;
      v27 = v18;
      _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEBUG, "Search results: %@", v26, 0xCu);
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
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "received results for an unknown search query", v26, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __52__DADConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing query %@ for key %@", &v9, 0x16u);
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
  v10 = [(DADConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "folderChange finished with status %@, error %@", buf, 0x16u);
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
  block[2] = __39__DADConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278520038;
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
      _os_log_impl(&dword_2243BD000, consumer, OS_LOG_TYPE_ERROR, "received results for an unknown folderChange", v18, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __39__DADConnection__folderChangeFinished___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing folder change %@ for key %@", &v9, 0x16u);
  }

  return [*(a1[4] + 64) removeObjectForKey:a1[5]];
}

- (void)_getStatusReportsFromClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DADConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_27851FED8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

void __45__DADConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
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
        block[2] = __35__DADConnection__downloadProgress___block_invoke;
        block[3] = &unk_278520038;
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

uint64_t __35__DADConnection__downloadProgress___block_invoke(void *a1)
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
  v6 = [(DADConnection *)self decodedErrorFromData:v5];

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
        block[2] = __35__DADConnection__downloadFinished___block_invoke;
        block[3] = &unk_278520038;
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

uint64_t __35__DADConnection__downloadFinished___block_invoke(void *a1)
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
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DADConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__DADConnection__shareResponseFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 104);

  return [v6 removeObjectForKey:v5];
}

- (void)_officeHoursRequestFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DADConnection__officeHoursRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v16 = &v17;
  block[4] = self;
  v10 = v6;
  v15 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  v11 = v18[5];
  if (v11)
  {
    if ([v11 isFetch])
    {
      v12 = [v5 objectForKeyedSubscript:@"kDAEOfficeHoursDataKey"];
      if (v12)
      {
        v13 = [CalDAVOfficeHour officeHoursFromData:v12];
      }

      else
      {
        v13 = 0;
      }

      [v18[5] finishFetchWithOfficeHours:v13 error:v8];
    }

    else
    {
      [v18[5] finishSetWithError:v8];
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __45__DADConnection__officeHoursRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 120);

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
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
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
  block[2] = __46__DADConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278520038;
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
              _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_DEBUG, "Oof settings request results: %@", v27, 0xCu);
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
              _os_log_impl(&dword_2243BD000, v22, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v27, 2u);
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
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_INFO, "Status missing from the xpc message", v27, 2u);
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
      _os_log_impl(&dword_2243BD000, consumer4, OS_LOG_TYPE_ERROR, "received results for an unknown oof settings request", v27, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __46__DADConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 112) objectForKeyedSubscript:a1[5]];
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing from inflight dictionary: oof settings request %@ for key %@", &v9, 0x16u);
  }

  return [*(a1[4] + 112) removeObjectForKey:a1[5]];
}

- (void)_subscriptionCalendarJunkCheckFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarIsJunkIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DADConnection__subscriptionCalendarJunkCheckFinished___block_invoke;
  block[3] = &unk_278520038;
  v15 = &v16;
  block[4] = self;
  v10 = v6;
  v14 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v17[5])
  {
    v11 = [v5 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarJunkStatusKey"];
    integerValue = [v11 integerValue];
    [v17[5] setJunkStatus:integerValue];
    [v17[5] finishedWithError:v8];
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __56__DADConnection__subscriptionCalendarJunkCheckFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 152) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 152);

  return [v6 removeObjectForKey:v5];
}

- (void)_holidayCalendarFetchReturnedResults:(id)results
{
  v32 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DADConnection__holidayCalendarFetchReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  v23 = &v24;
  block[4] = self;
  v8 = v6;
  v22 = v8;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v25[5])
  {
    v9 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsResultsKey"];
    v10 = MEMORY[0x277CCAAC8];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v20 = 0;
    v16 = [v10 unarchivedObjectOfClasses:v15 fromData:v9 error:&v20];
    v17 = v20;

    if (!v16 || v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "unable to unarchive results: %@", buf, 0xCu);
      }
    }

    v19 = [v16 objectForKey:@"kDAEFetchHolidayCalendarsResults_FetchResultsKey"];
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25[5] resultsReturned:v19];
      }
    }
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __54__DADConnection__holidayCalendarFetchReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_holidayCalendarFetchFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DADConnection__holidayCalendarFetchFinished___block_invoke;
  block[3] = &unk_278520038;
  v14 = &v15;
  block[4] = self;
  v10 = v6;
  v13 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  v11 = v16[5];
  if (v11)
  {
    [v11 finishedWithError:v8];
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __47__DADConnection__holidayCalendarFetchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 160);

  return [v6 removeObjectForKey:v5];
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[DADConnection sharedConnection];
  }

  [sharedConnection_gDADConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gDADConnection;

  return v2;
}

uint64_t __33__DADConnection_sharedConnection__block_invoke()
{
  sharedConnection_gDADConnection = [[DADConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_checkInvalidIdExistsInXPCRely:(id)rely
{
  v13 = *MEMORY[0x277D85DE8];
  relyCopy = rely;
  v4 = MEMORY[0x22AA4EF10]();
  if (v4 == MEMORY[0x277D86468])
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = [v8 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    v7 = v9 != 0;
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v23[4] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v22[0] = @"kDAEMessageNameKey";
  v22[1] = @"kDAEAccountIdKey";
  v23[0] = @"kDAEBeginMonitoringFolders";
  v23[1] = dCopy;
  v23[2] = keysCopy;
  v22[2] = @"kDAEFolderIDsKey";
  v22[3] = @"kDAEPersistentMonitoringKey";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:persistentCopy];
  v23[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v12 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[DADConnection watchFoldersWithKeys:forAccountID:persistent:]";
    _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v20, 0xCu);
  }

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  v15 = xpc_connection_send_message_with_reply_sync(_connection, v13);

  if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v15])
  {
    if (ExchangeSyncExpressLibraryCore(0))
    {
      v16 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v20 = 138543362;
        v21 = dCopy;
        _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Retry watchFoldersWithSyncKeyMap on exchangesyncd for accountID %{public}@", &v20, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      v18 = [sharedConnection watchFoldersWithKeys:keysCopy forAccountID:dCopy persistent:persistentCopy];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = [(DADConnection *)self _validateXPCReply:v15];
  }

  return v18;
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v20[3] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  if (self->_conn)
  {
    [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
    v19[0] = @"kDAEMessageNameKey";
    v19[1] = @"kDAEAccountIdKey";
    v20[0] = @"kDAEResumeMonitoringFolders";
    v20[1] = dCopy;
    v19[2] = @"kDAEFolderIDsKey";
    v20[2] = keysCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[DADConnection resumeWatchingFoldersWithKeys:forAccountID:]";
      _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v17, 0xCu);
    }

    v10 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(DADConnection *)self _connection];
    v12 = xpc_connection_send_message_with_reply_sync(_connection, v10);

    if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
    {
      if (ExchangeSyncExpressLibraryCore(0))
      {
        v13 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = 138543362;
          v18 = dCopy;
          _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry resumeWatchingFoldersWithSyncKeyMap on exchangesyncd for accountID %{public}@", &v17, 0xCu);
        }

        sharedConnection = [getESDConnectionClass() sharedConnection];
        v15 = [sharedConnection resumeWatchingFoldersWithKeys:keysCopy forAccountID:dCopy];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = [(DADConnection *)self _validateXPCReply:v12];
    }
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_INFO, "[DADConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v17, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v20[3] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v19[0] = @"kDAEMessageNameKey";
  v19[1] = @"kDAEAccountIdKey";
  v20[0] = @"kDAESuspendMonitoringFolders";
  v20[1] = dCopy;
  v19[2] = @"kDAEFolderIDsKey";
  v20[2] = keysCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[DADConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v17, 0xCu);
  }

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  v12 = xpc_connection_send_message_with_reply_sync(_connection, v10);

  if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
  {
    if (ExchangeSyncExpressLibraryCore(0))
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138543362;
        v18 = dCopy;
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry suspendWatchingFoldersWithKeys on exchangesyncd for accountID %{public}@", &v17, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      v15 = [sharedConnection suspendWatchingFoldersWithKeys:keysCopy forAccountID:dCopy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(DADConnection *)self _validateXPCReply:v12];
  }

  return v15;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v20[3] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v19[0] = @"kDAEMessageNameKey";
  v19[1] = @"kDAEAccountIdKey";
  v20[0] = @"kDAEStopMonitoringFolders";
  v20[1] = dCopy;
  v19[2] = @"kDAEFolderIDsKey";
  v20[2] = keysCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[DADConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v17, 0xCu);
  }

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  v12 = xpc_connection_send_message_with_reply_sync(_connection, v10);

  if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
  {
    if (ExchangeSyncExpressLibraryCore(0))
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138543362;
        v18 = dCopy;
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry stopWatchingFoldersWithKeys on exchangesyncd for accountID %{public}@", &v17, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      v15 = [sharedConnection stopWatchingFoldersWithKeys:keysCopy forAccountID:dCopy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(DADConnection *)self _validateXPCReply:v12];
  }

  return v15;
}

- (BOOL)_validateXPCReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = MEMORY[0x22AA4EF10]();
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
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "XPC Reply Failure. Status Code: %@", &v12, 0xCu);
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
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = dCopy;
      _os_log_impl(&dword_2243BD000, v4, OS_LOG_TYPE_DEBUG, "Send current policy key to exchangesyncd for accountID %{public}@", &v8, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v6 = [sharedConnection requestPolicyUpdateForAccountID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentPolicyKeyForAccountID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = dCopy;
      _os_log_impl(&dword_2243BD000, v4, OS_LOG_TYPE_DEBUG, "Send current policy key to exchangesyncd for accountID %{public}@", &v8, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v6 = [sharedConnection currentPolicyKeyForAccountID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "Requesting that DataAccess %@ monitoring agents.", &v21, 0xCu);
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
    _connection = [(DADConnection *)self _connection];
    _connection2 = xpc_connection_send_message_with_reply_sync(_connection, v14);

    if (MEMORY[0x22AA4EF10](_connection2) == MEMORY[0x277D86468])
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
          v22 = "[DADConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v23 = 2112;
          v24 = v19;
          _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v21, 0x16u);
        }
      }
    }
  }

  else
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connection2 = [(DADConnection *)self _connection];
    xpc_connection_send_message(_connection2, v14);
  }
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(DADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:0];
  return _nextStopMonitoringStatusToken;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(DADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:1];
  return _nextStopMonitoringStatusToken;
}

- (void)handleAccountChange:(id)change callback:(id)callback
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  callbackCopy = callback;
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = changeCopy;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEFAULT, "Handling account change: %{public}@", buf, 0xCu);
  }

  if (!changeCopy)
  {
    v16 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "No change info given";
    goto LABEL_11;
  }

  accountIdentifier = [changeCopy accountIdentifier];

  if (accountIdentifier)
  {
    v21 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:changeCopy requiringSecureCoding:1 error:&v21];
    v11 = v21;
    if (v10)
    {
      v22[0] = @"kDAEMessageNameKey";
      v22[1] = @"kDAEHandleAccountChangeDataKey";
      v23[0] = @"kDAEHandleAccountChange";
      v23[1] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      _connection = [(DADConnection *)self _connection];
      v15 = dispatch_get_global_queue(0, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__DADConnection_handleAccountChange_callback___block_invoke;
      v19[3] = &unk_278520060;
      v20 = callbackCopy;
      xpc_connection_send_message_with_reply(_connection, v13, v15, v19);
    }

    else
    {
      v18 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v11;
        _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "Failed to encode account change info: %@", buf, 0xCu);
      }

      if (callbackCopy)
      {
        (*(callbackCopy + 2))(callbackCopy, v11);
      }
    }

    goto LABEL_19;
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "No account identifier given";
LABEL_11:
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
  }

LABEL_12:

  if (callbackCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(callbackCopy + 2))(callbackCopy, v11);
LABEL_19:
  }
}

void __46__DADConnection_handleAccountChange_callback___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = v6;
    if (v6 && [v6 intValue] == 2)
    {
      v4 = 0;
    }

    else
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[DADConnection handleAccountChange:callback:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v10, 0x16u);
      }

      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }
}

- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v24 = dCopy;
    v25 = 2048;
    dataclassesCopy = dataclasses;
    v27 = 1024;
    v28 = foldersCopy;
    v29 = 1024;
    v30 = requestedCopy;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "updateFolderListForAccountID %{public}@, dataclasses %lx, requireChangedFolders %d, isUserRequested %d", buf, 0x22u);
  }

  [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(DADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v22[0] = @"kDAERequestFolderListUpdate";
  v22[1] = dCopy;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v22[2] = v12;
  v21[3] = @"kDAERequireChangedFoldersKey";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:foldersCopy];
  v22[3] = v13;
  v21[4] = @"kDAEIsUserRequestedKey";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v22[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v16 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v16);

  if (ExchangeSyncExpressLibraryCore(0))
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v24 = dCopy;
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_DEBUG, "Update folder list on exchangesyncd for accountID %{public}@", buf, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection updateFolderListForAccountID:dCopy andDataclasses:dataclasses requireChangedFolders:foldersCopy isUserRequested:requestedCopy];
  }

  return 1;
}

- (BOOL)updateContentsOfFoldersWithKeys:(id)keys forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v31 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v12 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = keysCopy;
    v25 = 2114;
    v26 = dCopy;
    v27 = 2048;
    dataclassesCopy = dataclasses;
    v29 = 1024;
    v30 = requestedCopy;
    _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_DEBUG, "updateContentsOfFoldersWithKeys %@ for account id %{public}@, dataclasses 0x%lx isUserRequested %d", buf, 0x26u);
  }

  [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(DADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v22[0] = @"kDAERequestFolderContentsUpdate";
  v22[1] = dCopy;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v22[2] = v13;
  v21[3] = @"kDAEIsUserRequestedKey";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v21[4] = @"kDAEFolderIDsKey";
  v22[3] = v14;
  v22[4] = keysCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v16 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v16);

  if (ExchangeSyncExpressLibraryCore(0))
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v24 = dCopy;
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_DEBUG, "Update contents of folders on exchangesyncd for accountID %{public}@", buf, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection updateContentsOfFoldersWithKeys:keysCopy forAccountID:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  }

  return 1;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v21 = dCopy;
    v22 = 2048;
    dataclassesCopy = dataclasses;
    v24 = 1024;
    v25 = requestedCopy;
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_DEBUG, "updateContentsOfAllFoldersForAccountID %{public}@, dataclasses 0x%lxx isUserRequested %d", buf, 0x1Cu);
  }

  [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  [(DADConnection *)self _resetThrottleTimersForAccountId:dCopy];
  v19[0] = @"kDAERequestAllFolderContentsUpdate";
  v19[1] = dCopy;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey"}];
  v19[2] = v10;
  v18[3] = @"kDAEIsUserRequestedKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
  v19[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v13);

  if (ExchangeSyncExpressLibraryCore(0))
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v21 = dCopy;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_DEBUG, "Update contents of all folders on exchangesyncd for accountID %{public}@", buf, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection updateContentsOfAllFoldersForAccountID:dCopy andDataclasses:dataclasses isUserRequested:requestedCopy];
  }

  return 1;
}

- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d
{
  v36[3] = *MEMORY[0x277D85DE8];
  searchCopy = search;
  dCopy = d;
  [(DADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:8 isUserRequested:0];
  if (dCopy)
  {
    searchString = [searchCopy searchString];

    if (searchString)
    {
      v35[0] = @"kDAEMessageNameKey";
      v35[1] = @"kDAEAccountIdKey";
      v36[0] = @"kDAEOpenServerContactsSearch";
      v36[1] = dCopy;
      v35[2] = @"kDAESearchQueryKey";
      dictionaryRepresentation = [searchCopy dictionaryRepresentation];
      v36[2] = dictionaryRepresentation;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

      v11 = _CFXPCCreateXPCObjectFromCFObject();
      _connection = [(DADConnection *)self _connection];
      v13 = xpc_connection_send_message_with_reply_sync(_connection, v11);

      if (MEMORY[0x22AA4EF10](v13) != MEMORY[0x277D86468])
      {
LABEL_4:
        v14 = 0;
LABEL_23:

        goto LABEL_24;
      }

      sharedConnection = _CFXPCCreateCFObjectFromXPCObject();
      v17 = [sharedConnection objectForKeyedSubscript:@"kDAEStatusKey"];
      integerValue = [v17 integerValue];
      if (!v17 || (v19 = integerValue, integerValue == 2))
      {
        v21 = [sharedConnection objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
        if (v21)
        {
          v22 = v21;
          v23 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v34 = v22;
            _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
          }

          if (!ExchangeSyncExpressLibraryCore(0))
          {
            goto LABEL_4;
          }

          v24 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v34 = dCopy;
            _os_log_impl(&dword_2243BD000, v24, OS_LOG_TYPE_DEBUG, "Perform server contact search on exchangesyncd for accountID %{public}@", buf, 0xCu);
          }

          sharedConnection = [getESDConnectionClass() sharedConnection];
          v14 = [sharedConnection performServerContactsSearch:searchCopy forAccountWithID:dCopy];
        }

        else
        {
          v25 = [sharedConnection objectForKeyedSubscript:@"kDAESearchIDKey"];
          [searchCopy setSearchID:v25];
          muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__DADConnection_performServerContactsSearch_forAccountWithID___block_invoke;
          block[3] = &unk_27851FF28;
          v30 = searchCopy;
          v31 = v25;
          selfCopy = self;
          v27 = v25;
          dispatch_sync(muckingWithInFlightCollections, block);

          v14 = 1;
        }
      }

      else
      {
        [searchCopy sendResultsToConsumer:0];
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v19 userInfo:0];
        [searchCopy sendFinishedToConsumerWithError:v20];

        v14 = 0;
      }

      goto LABEL_23;
    }

    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_9;
    }
  }

  else
  {
    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_9:
      _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    }
  }

  v14 = 0;
LABEL_24:

  return v14;
}

uint64_t __62__DADConnection_performServerContactsSearch_forAccountWithID___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Setting search query %@ for key %@", &v6, 0x16u);
  }

  return [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
}

- (void)cancelServerContactsSearch:(id)search
{
  v31 = *MEMORY[0x277D85DE8];
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
      LODWORD(buf) = 134217984;
      *(&buf + 4) = searchCopy;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Cancelling search task %p", &buf, 0xCu);
    }

    searchID2 = [searchCopy searchID];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DADConnection_cancelServerContactsSearch___block_invoke;
    block[3] = &unk_278520038;
    p_buf = &buf;
    block[4] = self;
    v10 = searchID2;
    v20 = v10;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(*(&buf + 1) + 40))
    {
      v24[0] = @"kDAEMessageNameKey";
      v24[1] = @"kDAESearchIDKey";
      v25[0] = @"kDAECancelServerContactsSearch";
      v25[1] = v10;
      sharedConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v12 = _CFXPCCreateXPCObjectFromCFObject();
      _connection = [(DADConnection *)self _connection];
      xpc_connection_send_message(_connection, v12);

      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 138412290;
        v23 = v10;
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Removing search query for key %@", v22, 0xCu);
      }

      v15 = self->_muckingWithInFlightCollections;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__DADConnection_cancelServerContactsSearch___block_invoke_223;
      v17[3] = &unk_27851FED8;
      v17[4] = self;
      v18 = v10;
      dispatch_sync(v15, v17);
      [searchCopy setSearchID:&stru_2837C8288];
    }

    else
    {
      if (!ExchangeSyncExpressLibraryCore(0))
      {
LABEL_13:

        _Block_object_dispose(&buf, 8);
        goto LABEL_14;
      }

      v16 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 138412290;
        v23 = v10;
        _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Cancel server contact search on exchangesyncd for searchID %@", v22, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      [sharedConnection cancelServerContactsSearch:searchCopy];
    }

    goto LABEL_13;
  }

LABEL_14:
}

uint64_t __44__DADConnection_cancelServerContactsSearch___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  v22 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  withIdCopy = withId;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138543362;
      v21 = withIdCopy;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Process meeting request on exchangesyncd for accountID %{public}@", &v20, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v18 = [sharedConnection processMeetingRequests:requestsCopy deliveryIdsToClear:clearCopy deliveryIdsToSoftClear:softClearCopy inFolderWithId:idCopy forAccountWithId:withIdCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  withIdCopy = withId;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543362;
      v19 = withIdCopy;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Async process meeting request on exchangesyncd for accountID %{public}@", &v18, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection asyncProcessMeetingRequests:requestsCopy deliveryIdsToClear:clearCopy deliveryIdsToSoftClear:softClearCopy inFolderWithId:idCopy forAccountWithId:withIdCopy];
  }
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Set folder IDs that external clients care about on exchangesyncd for accountID %{public}@", &v17, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v15 = [sharedConnection setFolderIdsThatExternalClientsCareAboutAdded:addedCopy deleted:deletedCopy foldersTag:tagCopy forAccountID:dCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  successCopy = success;
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v11 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543362;
      v14 = iDCopy;
      _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Report folder items sync success on exchangesyncd for accountID %{public}@", &v13, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection reportFolderItemsSyncSuccess:successCopy forFolderWithID:dCopy withItemsCount:count andAccountWithID:iDCopy];
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
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)_sendXPCMessageSynchronous:(BOOL)synchronous withParameters:(id)parameters handlerBlock:(id)block
{
  synchronousCopy = synchronous;
  blockCopy = block;
  v8 = _CFXPCCreateXPCObjectFromCFObject();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__DADConnection__sendXPCMessageSynchronous_withParameters_handlerBlock___block_invoke;
  aBlock[3] = &unk_278520060;
  v16 = blockCopy;
  v9 = blockCopy;
  v10 = _Block_copy(aBlock);
  _connection = [(DADConnection *)self _connection];
  v12 = _connection;
  if (synchronousCopy)
  {
    v13 = xpc_connection_send_message_with_reply_sync(_connection, v8);

    v10[2](v10, v13);
    v12 = v13;
  }

  else
  {
    v14 = dispatch_get_global_queue(0, 0);
    xpc_connection_send_message_with_reply(v12, v8, v14, v10);
  }
}

void __72__DADConnection__sendXPCMessageSynchronous_withParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v6 = v3;
    v4 = MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468];
    v3 = v6;
    if (v4)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
      (*(*(a1 + 32) + 16))();

      v3 = v6;
    }
  }
}

- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock
{
  v50[3] = *MEMORY[0x277D85DE8];
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
    *&buf[12] = 2114;
    *&buf[14] = iDCopy;
    _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_INFO, "Requesting download of attachment UUID %@ for accountID %{public}@", buf, 0x16u);
  }

  v18 = [[DADownloadContext alloc] initWithAttachmentUUID:dCopy accountID:iDCopy queue:queueCopy downloadProgressBlock:blockCopy completionBlock:completionBlockCopy];
  v49[0] = @"kDAEMessageNameKey";
  v49[1] = @"kDAEAttachmentUUIDKey";
  v50[0] = @"kDAEBeginDownloadingAttachment";
  v50[1] = dCopy;
  v49[2] = @"kDAEAccountIdKey";
  v50[2] = iDCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v32 = &unk_2785200B0;
  v20 = v18;
  v33 = v20;
  v37 = buf;
  v21 = dCopy;
  v34 = v21;
  v22 = iDCopy;
  v35 = v22;
  selfCopy = self;
  v38 = &v39;
  [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v19 handlerBlock:&v29];
  if (*(v40 + 24) == 1 && ExchangeSyncExpressLibraryCore(0))
  {
    v23 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v43 = 138543362;
      v44 = v22;
      _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEBUG, "Begin download attachment on exchangesyncd for accountID %{public}@", v43, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v25 = [sharedConnection beginDownloadingAttachmentWithUUID:v21 accountID:v22 queue:queueCopy progressBlock:blockCopy completionBlock:completionBlockCopy];
    v26 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v25;
  }

  v27 = *(*&buf[8] + 40);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(buf, 8);

  return v27;
}

void __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
  if (v4)
  {
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v25 = v4;
      _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = [v6 integerValue];
    if (v6)
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAEAttachmentDownloadIdKey"];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(*(a1 + 64) + 8) + 40);
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        *buf = 138412802;
        v25 = v13;
        v26 = 2114;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_INFO, "Download context %@ set up for downloading attachment UUID %{public}@ on accountID %{public}@", buf, 0x20u);
      }

      v16 = *(a1 + 56);
      v17 = *(v16 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_231;
      block[3] = &unk_278520088;
      v18 = *(a1 + 64);
      block[4] = v16;
      v23 = v18;
      v22 = *(a1 + 32);
      dispatch_sync(v17, block);
    }

    else
    {
      v19 = *(a1 + 32);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v7 userInfo:0];
      [v19 finishedWithError:v20];
    }
  }
}

- (void)_cancelDownloadsWithIDs:(id)ds error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = ds;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v13[0] = 0;
        v13[1] = v13;
        v13[2] = 0x3032000000;
        v13[3] = __Block_byref_object_copy_;
        v13[4] = __Block_byref_object_dispose_;
        v14 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__DADConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278520038;
        block[5] = v9;
        block[6] = v13;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        _Block_object_dispose(v13, 8);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

uint64_t __47__DADConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
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
  v19[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19[0] = @"kDAECancelDownloadingAttachment";
  v18[0] = @"kDAEMessageNameKey";
  v18[1] = @"kDAEErrorDataKey";
  v7 = MEMORY[0x277CCAAB0];
  errorCopy = error;
  v9 = [v7 archivedDataWithRootObject:errorCopy];
  v18[2] = @"kDAEAttachmentDownloadIdKey";
  v19[1] = v9;
  v19[2] = dCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = dCopy;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_INFO, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v10 handlerBlock:0];
  v15 = dCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(DADConnection *)self _cancelDownloadsWithIDs:v12 error:errorCopy];

  if (ExchangeSyncExpressLibraryCore(0))
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Canceling downloading attachments on exchangesyncd for downloadIDs %@", buf, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection cancelDownloadingAttachmentWithDownloadID:dCopy error:0];
  }
}

- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    inviteCopy = invite;
    v31 = 2112;
    v32 = dCopy;
    v33 = 2114;
    v34 = iDCopy;
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Requesting share response %ld for calendar %@ for accountID %{public}@", buf, 0x20u);
  }

  if (dCopy && iDCopy)
  {
    v17 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
    [(DASharedCalendarContext *)v17 setShouldSyncCalendar:invite == 1];
    v27[0] = @"kDAEMessageNameKey";
    v27[1] = @"kDAEAccountIdKey";
    v28[0] = @"kDAERespondToSharedCalendar";
    v28[1] = iDCopy;
    v27[2] = @"kDAESharedCalendarReponseTypeKey";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:invite];
    v27[3] = @"kDAESharedCalendarResponseCalendarIDKey";
    v28[2] = v18;
    v28[3] = dCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
    v22[3] = &unk_2785200D8;
    v23 = v17;
    v24 = dCopy;
    v25 = iDCopy;
    selfCopy = self;
    v20 = v17;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v19 handlerBlock:v22];
  }

  else
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v21, OS_LOG_TYPE_ERROR, "Not continuing with respondToSharedCalendarInvite. Given calendarId or accountId is nil.", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    blockCopy[2](blockCopy, dCopy, iDCopy, v19);
  }
}

void __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_234;
    block[3] = &unk_27851FF28;
    block[4] = v11;
    v17 = v7;
    v18 = *(a1 + 32);
    v13 = v7;
    dispatch_sync(v12, block);
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v14 finishedWithError:v15];
  }
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v27 = dCopy;
    v28 = 2114;
    v29 = iDCopy;
    _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Reporting calendar %@ for accountID %{public}@ as junk", buf, 0x16u);
  }

  if (dCopy && iDCopy)
  {
    v15 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
    [(DASharedCalendarContext *)v15 setShouldSyncCalendar:0];
    v24[0] = @"kDAEMessageNameKey";
    v24[1] = @"kDAEAccountIdKey";
    v25[0] = @"kDAEReportSharedCalendarAsJunk";
    v25[1] = iDCopy;
    v24[2] = @"kDAESharedCalendarResponseCalendarIDKey";
    v25[2] = dCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
    v19[3] = &unk_2785200D8;
    v20 = v15;
    v21 = dCopy;
    v22 = iDCopy;
    selfCopy = self;
    v17 = v15;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v16 handlerBlock:v19];
  }

  else
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "Not continuing with reportSharedCalendarInviteAsJunkForCalendarWithID. Given calendarId or accountId is nil.", buf, 2u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    blockCopy[2](blockCopy, dCopy, iDCopy, v16);
  }
}

void __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_235;
    block[3] = &unk_27851FF28;
    block[4] = v11;
    v17 = v7;
    v18 = *(a1 + 32);
    v13 = v7;
    dispatch_sync(v12, block);
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v14 finishedWithError:v15];
  }
}

- (void)fetchOfficeHoursForAccountWithID:(id)d queue:(id)queue completionBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  queueCopy = queue;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v23 = dCopy;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Fetching office hours for accountID %{public}@", buf, 0xCu);
  }

  v12 = objc_opt_new();
  [v12 setAccountID:dCopy];
  [v12 setQueue:queueCopy];

  [v12 setFetchCompletionBlock:blockCopy];
  v20[0] = @"kDAEMessageNameKey";
  v20[1] = @"kDAEAccountIdKey";
  v21[0] = @"kDAEFetchOfficeHours";
  v21[1] = dCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke;
  v16[3] = &unk_278520100;
  v17 = v12;
  v18 = dCopy;
  selfCopy = self;
  v14 = dCopy;
  v15 = v12;
  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v16];
}

void __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Office hours fetch request %{public}@ set up for accountID %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke_237;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v16 = v7;
    v17 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 abortWithError:v14];
  }
}

- (void)setOfficeHours:(id)hours forAccountWithID:(id)d queue:(id)queue completionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  hoursCopy = hours;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v27 = dCopy;
    _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Setting office hours for accountID %{public}@", buf, 0xCu);
  }

  if (!hoursCopy)
  {
    v16 = 0;
LABEL_8:
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:91 userInfo:0];
    blockCopy[2](blockCopy, dCopy, v18);
    goto LABEL_9;
  }

  v15 = [CalDAVOfficeHour dataFromOfficeHours:hoursCopy];
  v16 = v15;
  if (!dCopy || !v15)
  {
    goto LABEL_8;
  }

  v17 = objc_opt_new();
  [v17 setAccountID:dCopy];
  [v17 setQueue:queueCopy];
  [v17 setSetCompletionBlock:blockCopy];
  v24[0] = @"kDAEMessageNameKey";
  v24[1] = @"kDAEAccountIdKey";
  v25[0] = @"kDAESetOfficeHours";
  v25[1] = dCopy;
  v24[2] = @"kDAEOfficeHoursDataKey";
  v25[2] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke;
  v20[3] = &unk_278520100;
  v21 = v17;
  v22 = dCopy;
  selfCopy = self;
  v19 = v17;
  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v18 handlerBlock:v20];

LABEL_9:
}

void __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Office hours set request %{public}@ set up for accountID %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke_238;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v16 = v7;
    v17 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 abortWithError:v14];
  }
}

- (void)reportSubscriptionCalendarAsJunk:(id)junk
{
  v9[2] = *MEMORY[0x277D85DE8];
  junkCopy = junk;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Marking a subscription calendar as junk", v7, 2u);
  }

  v8[0] = @"kDAEMessageNameKey";
  v8[1] = @"kDAEURLStringKey";
  v9[0] = @"kDAEReportSubscribedCalendarAsJunk";
  v9[1] = junkCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:&__block_literal_global_240];
}

- (void)checkSubscriptionCalendarIsJunk:(id)junk queue:(id)queue completionBlock:(id)block
{
  v22[2] = *MEMORY[0x277D85DE8];
  junkCopy = junk;
  queueCopy = queue;
  blockCopy = block;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Checking whether a subscription calendar is junk", buf, 2u);
  }

  if (junkCopy)
  {
    v12 = [[DACheckSubscribedCalendarIsJunkContext alloc] initWithURLString:junkCopy completionBlock:blockCopy];
    [(DACheckSubscribedCalendarIsJunkContext *)v12 setQueue:queueCopy];
    v21[0] = @"kDAEMessageNameKey";
    v21[1] = @"kDAEURLStringKey";
    v22[0] = @"kDAECheckSubscribedCalendarIsJunk";
    v22[1] = junkCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke;
    v16[3] = &unk_278520100;
    v17 = v12;
    v18 = junkCopy;
    selfCopy = self;
    v14 = v12;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v16];
  }

  else
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_ERROR, "Not continuing with checkSubscriptionCalendarIsJunk. Given urlString is nil.", buf, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    blockCopy[2](blockCopy, &stru_2837C8288, 0, v13);
  }
}

void __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarIsJunkIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Check junk request %@ set up for subscribed calendar URL %@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke_242;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v16 = v7;
    v17 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 finishedWithError:v14];
  }
}

- (void)fetchAvailableHolidayCalendarsWithResultsBlock:(id)block completionBlock:(id)completionBlock queue:(id)queue
{
  v21[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  queueCopy = queue;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Fetching list of available holiday calendars", buf, 2u);
  }

  if (completionBlockCopy)
  {
    if (blockCopy)
    {
      v12 = [[DAHolidayCalendarsFetchContext alloc] initWithResultsBlock:blockCopy completionBlock:completionBlockCopy];
      [(DAHolidayCalendarsFetchContext *)v12 setQueue:queueCopy];
      v20 = @"kDAEMessageNameKey";
      v21[0] = @"kDAEFetchHolidayCalendars";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke;
      v16[3] = &unk_278520148;
      v17 = v12;
      selfCopy = self;
      v14 = v12;
      [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v16];
    }

    else
    {
      v15 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_ERROR, "Not continuing with fetchAvailableHolidayCalendarsWithResultsBlock. resultsBlock is null.", buf, 2u);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
      completionBlockCopy[2](completionBlockCopy, v13);
    }
  }

  else
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_ERROR, "Not continuing with fetchAvailableHolidayCalendarsWithResultsBlock. completionBlock is null.", buf, 2u);
    }
  }
}

void __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Holiday calendar fetch request set up: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke_244;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v16 = v7;
    v17 = v9;
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 finishedWithError:v14];
  }
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Process folder change on exchangesyncd for accountID %{public}@", &v11, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v9 = [sharedConnection processFolderChange:changeCopy forAccountWithID:dCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
  _connection = [(DADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__DADConnection_statusReports__block_invoke;
  handler[3] = &unk_278520170;
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

void __30__DADConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468])
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
        v12 = "[DADConnection statusReports]_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v11, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reallyRegisterForInterrogation
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(DADConnection *)self registered])
  {
    [(DADConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_INFO, "Sending message: kDAERegisterForInterrogation", v7, 2u);
    }

    v8 = @"kDAEMessageNameKey";
    v9[0] = @"kDAERegisterForInterrogation";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(DADConnection *)self _connection];
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
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v2 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Fill out current EAS timezone info on exchangesyncd", v4, 2u);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection fillOutCurrentEASTimeZoneInfo];
  }
}

- (id)activeSyncDeviceIdentifier
{
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v2 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Get active sync device identifier on exchangesyncd", v6, 2u);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    activeSyncDeviceIdentifier = [sharedConnection activeSyncDeviceIdentifier];
  }

  else
  {
    activeSyncDeviceIdentifier = 0;
  }

  return activeSyncDeviceIdentifier;
}

- (BOOL)_performOofSettingsRequest:(id)request forAccountWithID:(id)d forUpdate:(BOOL)update
{
  updateCopy = update;
  v38[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  if (dCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v37[0] = @"kDAEMessageNameKey";
    v37[1] = @"kDAEAccountIdKey";
    v38[0] = @"kDAEOofSettings";
    v38[1] = dCopy;
    v37[2] = @"kDAEOofIsUpdateKey";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
    v38[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v13 = [v10 initWithDictionary:v12];

    if (updateCopy)
    {
      dictionaryRepresentation = [requestCopy dictionaryRepresentation];
      [v13 setObject:dictionaryRepresentation forKeyedSubscript:@"kDAEOofSettingsRequestKey"];
    }

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(DADConnection *)self _connection];
    v17 = xpc_connection_send_message_with_reply_sync(_connection, v15);

    if (MEMORY[0x22AA4EF10](v17) == MEMORY[0x277D86468])
    {
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      v29 = [v19 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
      [requestCopy setRequestID:?];
      v30 = v19;
      v20 = [v19 objectForKeyedSubscript:@"kDAEStatusKey"];
      integerValue = [v20 integerValue];
      if (v20)
      {
        v22 = integerValue == 2;
      }

      else
      {
        v22 = 1;
      }

      v18 = v22;
      if (v22)
      {
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__DADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke;
        block[3] = &unk_278520198;
        v35 = updateCopy;
        v32 = requestCopy;
        v27 = v29;
        v33 = v29;
        selfCopy = self;
        dispatch_sync(muckingWithInFlightCollections, block);

        consumer = v32;
      }

      else
      {
        v24 = integerValue;
        consumer = [requestCopy consumer];
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v24 userInfo:0];
        [consumer oofRequestInfo:requestCopy finishedWithResult:0 error:v26];

        v27 = v29;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_ERROR, "nil accountID passed to performASSettingsRequest. Cannot continue.", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

uint64_t __71__DADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v7, 0x20u);
  }

  return [*(*(a1 + 48) + 112) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)retrieveOofSettingsRequest:(id)request forAccountWithID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Retrieve OOF settings on exchangesyncd for accountID %{public}@", &v11, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v9 = [sharedConnection retrieveOofSettingsRequest:requestCopy forAccountWithID:dCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateOofSettingsRequest:(id)request forAccountWithID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Update OOF settings on exchangesyncd for accountID %{public}@", &v11, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    v9 = [sharedConnection updateOofSettingsRequest:requestCopy forAccountWithID:dCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (ExchangeSyncExpressLibraryCore(0))
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = dCopy;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Checking OOF supported on exchangesyncd for accountID %{public}@", &v9, 0xCu);
    }

    sharedConnection = [getESDConnectionClass() sharedConnection];
    [sharedConnection isOofSettingsSupportedForAccountWithID:dCopy completionBlock:blockCopy];
  }
}

- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v76 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  addressesCopy = addresses;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy_;
  v64 = __Block_byref_object_dispose_;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  if (!dCopy)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v67 = 0;
      v22 = "Invalid 'accountID' provided: [%{public}@].";
      v23 = v21;
      v24 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    goto LABEL_11;
  }

  if (!dateCopy || !endDateCopy || [dateCopy compare:endDateCopy] == 1)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v67 = dateCopy;
      v68 = 2112;
      v69 = endDateCopy;
      v22 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v23 = v21;
      v24 = 22;
LABEL_9:
      _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (addressesCopy && [addressesCopy count])
  {
    v38 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544386;
      v67 = dCopy;
      v68 = 2112;
      v69 = dateCopy;
      v70 = 2112;
      v71 = endDateCopy;
      v72 = 2112;
      v73 = iDCopy;
      v74 = 2112;
      v75 = addressesCopy;
      _os_log_impl(&dword_2243BD000, v38, OS_LOG_TYPE_DEBUG, "Preparing calendar availability request.  accountID: [%{public}@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v39 setObject:@"kDAERequestCalendarAvailability" forKey:@"kDAEMessageNameKey"];
    [v39 setObject:dCopy forKey:@"kDAEAccountIdKey"];
    [v39 setObject:dateCopy forKey:@"kDAEStartDateKey"];
    [v39 setObject:endDateCopy forKey:@"kDAEEndDateKey"];
    [v39 setObject:addressesCopy forKey:@"kDAEAddressesKey"];
    if (iDCopy)
    {
      [v39 setObject:iDCopy forKey:@"kDAEIgnoredEventIDKey"];
    }

    v47 = completionBlockCopy;
    v51 = v47;
    v52[1] = &v60;
    v40 = blockCopy;
    v52[0] = v40;
    v50 = v39;
    v52[2] = &v56;
    v35 = v50;
    [DADConnection _sendXPCMessageSynchronous:"_sendXPCMessageSynchronous:withParameters:handlerBlock:" withParameters:1 handlerBlock:?];
    if (*(v57 + 24) == 1 && ExchangeSyncExpressLibraryCore(0))
    {
      v41 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v67 = dCopy;
        _os_log_impl(&dword_2243BD000, v41, OS_LOG_TYPE_DEBUG, "Retry request calendar availability on exchangesyncd for accountID %{public}@", buf, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      v43 = [sharedConnection requestCalendarAvailabilityWithAccountID:dCopy startDate:dateCopy endDate:endDateCopy ignoredEventID:iDCopy addresses:addressesCopy resultsBlock:v40 completionBlock:v47];
      v44 = v61[5];
      v61[5] = v43;
    }

    v33 = completionBlockCopy;
    v46 = endDateCopy;
    *type = dateCopy;
    v28 = dCopy;
    v29 = addressesCopy;
    v30 = blockCopy;
    v25 = 0;
    v32 = &v51;
    v34 = v52;
    goto LABEL_15;
  }

  v45 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v45, OS_LOG_TYPE_DEBUG, "No 'addresses' provided.", buf, 2u);
  }

  v25 = 0;
LABEL_11:
  v26 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v26, OS_LOG_TYPE_DEFAULT, "Will not issue calendar availability request.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v27 = completionBlockCopy;
    v46 = endDateCopy;
    *type = dateCopy;
    v28 = dCopy;
    v29 = addressesCopy;
    v30 = blockCopy;
    v31 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v32 = &v55;
    v33 = v27;
    v55 = v27;
    v34 = &v54;
    v25 = v25;
    v54 = v25;
    v35 = v31;
    dispatch_async(v31, block);
LABEL_15:

    addressesCopy = v29;
    dCopy = v28;
    endDateCopy = v46;
    dateCopy = *type;
    blockCopy = v30;
    completionBlockCopy = v33;
  }

  v36 = v61[5];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v36;
}

void __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_251(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
  if (v4)
  {
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
    }

    *(*(a1[9] + 8) + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = [v6 integerValue];
    if (v6)
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
      v10 = *(a1[8] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [[DAECalendarAvailabilityContext alloc] initWithResultsBlock:a1[7] completionBlock:a1[6]];
      [objc_opt_class() _logRequestID:*(*(a1[8] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v12];
      v13 = a1[4];
      v14 = *(v13 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v15 = a1[8];
      v20 = v12;
      v21 = v15;
      block[4] = v13;
      v16 = v12;
      dispatch_sync(v14, block);
    }

    else
    {
      v17 = a1[6];
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v7 userInfo:0];
      (*(v17 + 16))(v17, v18);
    }
  }
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v22[0] = @"kDAEMessageNameKey";
    v22[1] = @"kDAECalendarAvailabilityRequestIDKey";
    v23[0] = @"kDAECancelCalendarAvailabilityRequest";
    v23[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278520038;
    v13 = buf;
    block[4] = self;
    v8 = v5;
    v12 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v15 + 5))
    {
      sharedConnection = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v15 + 5) finishedWithError:sharedConnection];
    }

    else
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 138412290;
        v21 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Retry canceling calendar availability request on exchangesyncd for requestID %@", v20, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      [sharedConnection cancelCalendarAvailabilityRequestWithID:v8];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }
}

uint64_t __57__DADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
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
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __61__DADConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v20 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
}

uint64_t __61__DADConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
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
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DADConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __54__DADConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (id)downloadSubscribedCalendarWithURL:(id)l queue:(id)queue delegate:(id)delegate
{
  lCopy = l;
  queueCopy = queue;
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v11 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "nil delegate given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately";
LABEL_9:
    _os_log_impl(&dword_2243BD000, &v11->super, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_13;
  }

  if (!queueCopy)
  {
    v11 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "nil queue given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately.";
    goto LABEL_9;
  }

  v11 = objc_alloc_init(DAESubscriptionCalendarDownloadContext);
  [(DAESubscriptionCalendarDownloadContext *)v11 setQueue:queueCopy];
  [(DAESubscriptionCalendarDownloadContext *)v11 setDelegate:delegateCopy];
  if (lCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"kDAEDownloadSubscribedCalendar" forKey:@"kDAEMessageNameKey"];
    [v12 setObject:lCopy forKey:@"kDAESubCalDownloadURLKey"];
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_2;
    v18[3] = &unk_278520230;
    v11 = v11;
    v22 = buf;
    v19 = v11;
    selfCopy = self;
    v13 = v12;
    v21 = v13;
    [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v13 handlerBlock:v18];
    v14 = *(v24 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_14;
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_ERROR, "nil subscription URL given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately.", buf, 2u);
  }

  [(DAESubscriptionCalendarDownloadContext *)v11 callOutToDelegate:&__block_literal_global_256];
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

void __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = a2;
  v4 = [v2 errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
  [v3 subscribedCalendarFailedWithError:v4];
}

void __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[6] associatedContext:a1[4]];
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(v11 + 24);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_4;
    v17[3] = &unk_278520088;
    v13 = a1[7];
    v17[4] = v11;
    v19 = v13;
    v18 = v10;
    dispatch_sync(v12, v17);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    v15 = a1[4];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_3;
    v20[3] = &unk_27851FF78;
    v21 = v14;
    v16 = v14;
    [v15 callOutToDelegate:v20];
  }
}

- (void)cancelDownloadingSubscriptionCalendarWithDownloadID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v22[0] = @"kDAEMessageNameKey";
    v22[1] = @"kDAESubCalDownloadRequestIDKey";
    v23[0] = @"kDAECancelDownloadSubscribedCalendar";
    v23[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke;
    block[3] = &unk_278520038;
    v15 = buf;
    block[4] = self;
    v14 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v17 + 5))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      v9 = *(v17 + 5);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke_2;
      v11[3] = &unk_27851FF78;
      v10 = v8;
      v12 = v10;
      [v9 callOutToDelegate:v11];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }
}

uint64_t __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 144);

  return [v6 removeObjectForKey:v5];
}

- (void)_downloadSubscribedCalendarProgress:(id)progress
{
  progressCopy = progress;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEDownloadedBytesKey"];
  longLongValue = [v7 longLongValue];

  v9 = [v5 objectForKeyedSubscript:@"kDAETotalBytesKey"];
  longLongValue2 = [v9 longLongValue];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke;
  block[3] = &unk_278520038;
  v17 = &v18;
  block[4] = self;
  v12 = v6;
  v16 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  v13 = v19[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke_2;
  v14[3] = &__block_descriptor_48_e49_v16__0___DAESubscribedCalendarDownloadDelegate__8l;
  v14[4] = longLongValue;
  v14[5] = longLongValue2;
  [v13 callOutToDelegate:v14];

  _Block_object_dispose(&v18, 8);
}

uint64_t __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadSubscribedCalendarFinished:(id)finished
{
  v33 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v19 = [v4 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v5 = [v4 objectForKeyedSubscript:@"kDAESubCalDownloadSummaryDataKey"];
  if (v5)
  {
    v27 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v27];
    v7 = v27;
    if (!v6)
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "Error unarchiving subcal summary data: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  if (v9)
  {
    v26 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v26];
    v11 = v26;
    if (!v10)
    {
      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_ERROR, "Error unarchiving subcal download error: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (!(v5 | v10))
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
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
  block[2] = __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v14 = v19;
  v24 = v14;
  dispatch_sync(muckingWithInFlightCollections, block);
  v15 = *(*(&buf + 1) + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke_2;
  v20[3] = &unk_278520278;
  v16 = v6;
  v21 = v16;
  v17 = v10;
  v22 = v17;
  [v15 callOutToDelegate:v20];

  _Block_object_dispose(&buf, 8);
}

uint64_t __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 144);

  return [v6 removeObjectForKey:v5];
}

uint64_t __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return [a2 subscribedCalendarDidFinishLoading:?];
  }

  else
  {
    return [a2 subscribedCalendarFailedWithError:*(a1 + 40)];
  }
}

- (void)_downloadSubscribedCalendarRequiresPassword:(id)password
{
  passwordCopy = password;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadURLKey"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke;
  block[3] = &unk_278520038;
  v19 = &v20;
  block[4] = self;
  v9 = v6;
  v18 = v9;
  dispatch_sync(muckingWithInFlightCollections, block);
  v10 = v21[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_2;
  v13[3] = &unk_2785202C8;
  v11 = v7;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  selfCopy = self;
  [v10 callOutToDelegate:v13];

  _Block_object_dispose(&v20, 8);
}

uint64_t __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_3;
  v7[3] = &unk_2785202A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [a2 subscribedCalendarRequiresPassword:v4 withContinuation:v7];
}

void __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v12[0] = @"kDAEMessageNameKey";
    v12[1] = @"kDAESubCalDownloadRequestIDKey";
    v5 = *(a1 + 32);
    v13[0] = @"kDAESetPasswordForSubscribedCalendar";
    v13[1] = v5;
    v12[2] = @"kDAESubCalUsernameKey";
    v12[3] = @"kDAESubCalPasswordKey";
    v13[2] = a2;
    v13[3] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    v8 = a2;
    v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:4];
    [*(a1 + 40) _sendXPCMessageSynchronous:0 withParameters:v9 handlerBlock:0];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8 = a3;
    v9 = a2;
    [v11 cancelDownloadingSubscriptionCalendarWithDownloadID:v10];
  }
}

- (void)validateCandidateSubscriptionURLWithICloud:(id)cloud queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__DADConnection_validateCandidateSubscriptionURLWithICloud_queue_completionBlock___block_invoke;
  block[3] = &unk_2785202F0;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(queue, block);
}

- (id)requestGrantedDelegatesListForAccountID:(id)d resultsBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (dCopy)
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v34 = dCopy;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Preparing granted delegates list request for accountID: [%{public}@]", buf, 0xCu);
    }

    v31[0] = @"kDAEMessageNameKey";
    v31[1] = @"kDAEAccountIdKey";
    v32[0] = @"kDAERequestGrantedDelegatesList";
    v32[1] = dCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke;
    v16[3] = &unk_278520318;
    v10 = blockCopy;
    v18 = v10;
    v19 = &v25;
    v16[4] = self;
    v11 = v9;
    v17 = v11;
    v20 = &v21;
    [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v11 handlerBlock:v16];
    if (*(v22 + 24) == 1)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:15 userInfo:0];
      (*(v10 + 2))(v10, 0, v12);
    }

    goto LABEL_11;
  }

  v13 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = 0;
    _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  if (blockCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v11);
LABEL_11:
  }

  v14 = v26[5];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

void __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v9)
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      *(*(a1[8] + 8) + 24) = 1;
    }

    else
    {
      v10 = [v3 objectForKeyedSubscript:@"kDAEGrantedDelegatesListRequestIDKey"];
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = [[DAEGrantedDelegatesListContext alloc] initWithResultsBlock:a1[6]];
      [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v13];
      v14 = a1[4];
      v15 = *(v14 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v16 = a1[7];
      v19 = v13;
      v20 = v16;
      block[4] = v14;
      v17 = v13;
      dispatch_sync(v15, block);
    }
  }

  else
  {
    v8 = a1[6];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)d
{
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v18[0] = @"kDAEMessageNameKey";
    v18[1] = @"kDAEGrantedDelegatesListRequestIDKey";
    v19[0] = @"kDAECancelGrantedDelegatesListRequest";
    v19[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DADConnection_cancelGrantedDelegatesListRequestWithID___block_invoke;
    block[3] = &unk_278520038;
    v11 = buf;
    block[4] = self;
    v10 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v13 + 5))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v13 + 5) finishedWithResults:0 error:v8];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }
}

uint64_t __57__DADConnection_cancelGrantedDelegatesListRequestWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 128);

  return [v6 removeObjectForKey:v5];
}

- (void)_grantedDelegatesListRequestFinished:(id)finished
{
  v28 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:@"kDAEGrantedDelegatesListRequestIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v7 = [(DADConnection *)self decodedErrorFromData:v6];
  v8 = [v4 objectForKeyedSubscript:@"kDAEGrantedDelegatesListResultsKey"];
  v9 = MEMORY[0x277CCAAC8];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v22 = 0;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v22];
  v14 = v22;

  if (!v13)
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __54__DADConnection__grantedDelegatesListRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v17 = v5;
  v20 = v17;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) finishedWithResults:v13 error:v7];

  _Block_object_dispose(&buf, 8);
}

uint64_t __54__DADConnection__grantedDelegatesListRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 128);

  return [v6 removeObjectForKey:v5];
}

- (id)updateGrantedDelegateForAccountID:(id)d grantedDelegate:(id)delegate action:(int64_t)action resultsBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  delegateCopy = delegate;
  blockCopy = block;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  if (dCopy)
  {
    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [delegateCopy uri];
      permission = [delegateCopy permission];
      *buf = 138543874;
      v40 = dCopy;
      v41 = 2112;
      v42 = v13;
      v43 = 2048;
      v44 = permission;
      _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_DEBUG, "Preparing update granted delegate permission for accountID: [%{public}@], delegate uri: %@, permission: %ld", buf, 0x20u);
    }

    v28 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:delegateCopy requiringSecureCoding:1 error:&v28];
    v16 = v28;
    if (v16)
    {
      v17 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [delegateCopy uri];
        *buf = 138412290;
        v40 = v18;
        _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_DEFAULT, "Unable to encode granted delegate with URI: %@", buf, 0xCu);
      }
    }

    else
    {
      v37[0] = @"kDAEMessageNameKey";
      v37[1] = @"kDAEAccountIdKey";
      v38[0] = @"kDAEUpdateGrantedDelegatePermissionRequest";
      v38[1] = dCopy;
      v37[2] = @"kDAEGrantedDelegateKey";
      v38[2] = v15;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke;
      v23[3] = &unk_278520318;
      v25 = blockCopy;
      v26 = &v31;
      v23[4] = self;
      v17 = v20;
      v24 = v17;
      v27 = v29;
      [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v17 handlerBlock:v23];
    }

    goto LABEL_13;
  }

  v19 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = 0;
    _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  if (blockCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v16);
LABEL_13:
  }

  v21 = v32[5];
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);

  return v21;
}

void __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v8)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }

    else
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAEUpdateGrantedDelegatePermissionRequestIDKey"];
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [[DAEUpdateGrantedDelegatePermissionContext alloc] initWithResultsBlock:a1[6]];
      [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v12];
      v13 = a1[4];
      v14 = *(v13 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v15 = a1[7];
      v18 = v12;
      v19 = v15;
      block[4] = v13;
      v16 = v12;
      dispatch_sync(v14, block);
    }
  }

  else
  {
    v7 = a1[6];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)addExchangeDelegateWithName:(id)name emailAddress:(id)address toAccountWithID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Exchange delegates are not supported on this platform", v9, 2u);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  completionCopy[2](completionCopy, 0, -1, v8);
}

- (void)removeExchangeDelegateWithSourceID:(id)d fromParentAccountWithID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Exchange delegates are not supported on this platform", v8, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  completionCopy[2](completionCopy, 0, v7);
}

- (void)_updateGrantedDelegatePermissionRequestFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEUpdateGrantedDelegatePermissionRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DADConnection__updateGrantedDelegatePermissionRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __65__DADConnection__updateGrantedDelegatePermissionRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 136) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 136);

  return [v6 removeObjectForKey:v5];
}

- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  termsCopy = terms;
  typesCopy = types;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy_;
  v56 = __Block_byref_object_dispose_;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (dCopy)
  {
    if (termsCopy && [termsCopy count])
    {
      if (typesCopy && [typesCopy count])
      {
        v19 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138544130;
          v59 = dCopy;
          v60 = 2112;
          v61 = typesCopy;
          v62 = 2048;
          limitCopy = limit;
          v64 = 2112;
          v65 = termsCopy;
          _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEBUG, "Preparing calendar directory search.  accountID: [%{public}@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
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

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_263;
        v40[3] = &unk_2785201E8;
        v39 = completionBlockCopy;
        v43 = v39;
        v44[1] = &v52;
        v38 = blockCopy;
        v44[0] = v38;
        v24 = v20;
        v41 = v24;
        selfCopy = self;
        v44[2] = &v48;
        [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v24 handlerBlock:v40];
        if (*(v49 + 24) == 1 && ExchangeSyncExpressLibraryCore(0))
        {
          v25 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v59 = dCopy;
            _os_log_impl(&dword_2243BD000, v25, OS_LOG_TYPE_DEBUG, "Retry calendar directory search on exchangesyncd for accountID %{public}@", buf, 0xCu);
          }

          sharedConnection = [getESDConnectionClass() sharedConnection];
          v27 = [sharedConnection performCalendarDirectorySearchWithAccountID:dCopy terms:termsCopy recordTypes:typesCopy resultLimit:limit resultsBlock:v38 completionBlock:v39];
          v28 = v53[5];
          v53[5] = v27;
        }

        v29 = 0;
        v30 = &v43;
        v31 = v44;
        goto LABEL_27;
      }

      v32 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v33 = "No 'recordTypes' provided.";
    }

    else
    {
      v32 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        v29 = 0;
        goto LABEL_23;
      }

      *buf = 0;
      v33 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_2243BD000, v32, OS_LOG_TYPE_DEBUG, v33, buf, 2u);
    goto LABEL_22;
  }

  v34 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = 0;
    _os_log_impl(&dword_2243BD000, v34, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
LABEL_23:
  v35 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v35, OS_LOG_TYPE_DEFAULT, "Will not issue calendar directory search.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v30 = &v47;
    v47 = completionBlockCopy;
    v31 = &v46;
    v29 = v29;
    v46 = v29;
    dispatch_async(v24, block);
LABEL_27:
  }

  v36 = v53[5];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v36;
}

void __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_263(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v9)
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      *(*(a1[9] + 8) + 24) = 1;
    }

    else
    {
      v10 = [v3 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
      v11 = *(a1[8] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = [[DAECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[7] completionBlock:a1[6]];
      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1[8] + 8) + 40);
        v16 = a1[4];
        *buf = 138412802;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
      }

      v17 = a1[5];
      v18 = *(v17 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_265;
      block[3] = &unk_278520088;
      v19 = a1[8];
      v22 = v13;
      v23 = v19;
      block[4] = v17;
      v20 = v13;
      dispatch_sync(v18, block);
    }
  }

  else
  {
    v8 = a1[6];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v23[0] = @"kDAEMessageNameKey";
    v23[1] = @"kDAECalendarDirectorySearchIDKey";
    v24[0] = @"kDAECancelCalendarDirectorySearch";
    v24[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *v15 = 0;
    v16 = v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__DADConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278520038;
    v14 = v15;
    block[4] = self;
    v8 = v5;
    v13 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v16 + 5))
    {
      sharedConnection = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v16 + 5) finishedWithError:sharedConnection exceededResultLimit:0];
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
      }
    }

    else
    {
      if (!ExchangeSyncExpressLibraryCore(0))
      {
LABEL_13:

        _Block_object_dispose(v15, 8);
        goto LABEL_14;
      }

      v11 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Retry canceling calendar directory search on exchangesyncd for searchID %@", buf, 0xCu);
      }

      sharedConnection = [getESDConnectionClass() sharedConnection];
      [sharedConnection cancelCalendarDirectorySearchWithID:v8];
    }

    goto LABEL_13;
  }

  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v15, 2u);
  }

LABEL_14:
}

uint64_t __53__DADConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
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
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v25 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  v19 = [v14 count];
  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v19];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v22[3] = &unk_278520340;
  v21 = v20;
  v23 = v21;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];
  [*(*(&buf + 1) + 40) resultsReturned:v21];

  _Block_object_dispose(&buf, 8);
}

uint64_t __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
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
  block[2] = __50__DADConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278520038;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:bOOLValue];

  _Block_object_dispose(&v17, 8);
}

uint64_t __50__DADConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)performGroupExpansionWithAccountID:(id)d principalPath:(id)path completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  blockCopy = block;
  if (dCopy)
  {
    if (pathCopy && [pathCopy length])
    {
      v11 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v24 = dCopy;
        v25 = 2112;
        v26 = pathCopy;
        _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Preparing group expansion.  accountID: [%{public}@]  principalPath: [%@]", buf, 0x16u);
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v12 setObject:@"kDAEPerformGroupExpansion" forKey:@"kDAEMessageNameKey"];
      [v12 setObject:dCopy forKey:@"kDAEAccountIdKey"];
      [v12 setObject:pathCopy forKey:@"kDAEGroupExpansionPrincipalPathKey"];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_268;
      v18[3] = &unk_278520368;
      v13 = &v19;
      v18[4] = self;
      v19 = blockCopy;
      [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v12 handlerBlock:v18];
      v14 = 0;
      goto LABEL_17;
    }

    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_DEBUG, "No 'principalPath' provided.", buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = 0;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
  }

  v17 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_DEFAULT, "Will not do group expansion.", buf, 2u);
  }

  if (blockCopy)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v13 = &v22;
    v22 = blockCopy;
    v14 = v14;
    v21 = v14;
    dispatch_async(v12, block);

LABEL_17:
  }
}

void __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_268(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v7)
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v22 = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:15 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      v13 = [v3 objectForKeyedSubscript:@"kDAEGroupExpansionIDKey"];
      v14 = [[DAEGroupExpansionContext alloc] initWithCompletionBlock:*(a1 + 40)];
      v15 = *(a1 + 32);
      v16 = *(v15 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_2;
      block[3] = &unk_27851FF28;
      block[4] = v15;
      v19 = v13;
      v20 = v14;
      v17 = v14;
      v10 = v13;
      dispatch_sync(v16, block);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }
}

- (void)_groupExpansionFinished:(id)finished
{
  v34 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEGroupExpansionIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchResultsKey"];
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
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __41__DADConnection__groupExpansionFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v26 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v15 || ([v5 objectForKeyedSubscript:@"kDAEErrorDataKey"], v19 = objc_claimAutoreleasedReturnValue(), -[DADConnection decodedErrorFromData:](self, "decodedErrorFromData:", v19), v15 = objc_claimAutoreleasedReturnValue(), v19, v15))
  {
    [*(*(&buf + 1) + 40) finishedWithError:v15];
  }

  else
  {
    v20 = [v14 count];
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v20];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __41__DADConnection__groupExpansionFinished___block_invoke_2;
    v23[3] = &unk_278520340;
    v22 = v21;
    v24 = v22;
    [v14 enumerateKeysAndObjectsUsingBlock:v23];
    [*(*(&buf + 1) + 40) setResults:v22];
    [*(*(&buf + 1) + 40) finishedWithError:0];

    v15 = 0;
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __41__DADConnection__groupExpansionFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 96);

  return [v6 removeObjectForKey:v5];
}

void __41__DADConnection__groupExpansionFinished___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

- (DADConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v40.receiver = self;
  v40.super_class = DADConnection;
  v2 = [(DADConnection *)&v40 init];
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
    inFlightGrantedDelegatesListRequests = v2->_inFlightGrantedDelegatesListRequests;
    v2->_inFlightGrantedDelegatesListRequests = v19;

    v21 = objc_opt_new();
    inFlightUpdateGrantedDelegatePermissionRequests = v2->_inFlightUpdateGrantedDelegatePermissionRequests;
    v2->_inFlightUpdateGrantedDelegatePermissionRequests = v21;

    v23 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v23;

    v25 = objc_opt_new();
    inFlightGroupExpansions = v2->_inFlightGroupExpansions;
    v2->_inFlightGroupExpansions = v25;

    v27 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v27;

    v29 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v29;

    v31 = objc_opt_new();
    inFlightOfficeHoursRequests = v2->_inFlightOfficeHoursRequests;
    v2->_inFlightOfficeHoursRequests = v31;

    v33 = objc_opt_new();
    inFlightSubscribedCalendarDownloads = v2->_inFlightSubscribedCalendarDownloads;
    v2->_inFlightSubscribedCalendarDownloads = v33;

    v35 = objc_opt_new();
    inFlightSubscribedCalendarJunkChecks = v2->_inFlightSubscribedCalendarJunkChecks;
    v2->_inFlightSubscribedCalendarJunkChecks = v35;

    v37 = objc_opt_new();
    inFlightHolidayCalendarFetches = v2->_inFlightHolidayCalendarFetches;
    v2->_inFlightHolidayCalendarFetches = v37;

    [(DADConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(DADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DADConnection;
  [(DADConnection *)&v4 dealloc];
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
    *buf = 138543362;
    v21 = accountIdsWithAlreadyResetCerts;
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_DEBUG, "in _resetCertWarningsForAccount, _accountIdsWithAlreadyResetCerts is %{public}@", buf, 0xCu);
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
    _connection = [(DADConnection *)selfCopy _connection];
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
    v19 = 2114;
    v20 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %{public}@", buf, 0x16u);
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
    _connection = [(DADConnection *)selfCopy _connection];
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
    _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_DEBUG, "Resetting shouldResetCertWarnings and throttle timers", v5, 2u);
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
    [(DADConnection *)self _foldersUpdated:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEPolicyKeyChanged"])
  {
    [(DADConnection *)self _policyKeyChanged:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAELogDataAccessStatus"])
  {
    [(DADConnection *)self _logDataAccessStatus:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEServerContactsSearchQueryFinished"])
  {
    [(DADConnection *)self _serverContactsSearchQueryFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEFolderChangeFinished"])
  {
    [(DADConnection *)self _folderChangeFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEGetStatusReportsFromClient"])
  {
    [(DADConnection *)self _getStatusReportsFromClient:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadProgress"])
  {
    [(DADConnection *)self _downloadProgress:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadFinished"])
  {
    [(DADConnection *)self _downloadFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarShareResponseFinished"])
  {
    [(DADConnection *)self _shareResponseFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEOfficeHoursRequestFinished"])
  {
    [(DADConnection *)self _officeHoursRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEOofSettingsFinished"])
  {
    [(DADConnection *)self _oofSettingsRequestsFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestReturnedResults"])
  {
    [(DADConnection *)self _calendarAvailabilityRequestReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestFinished"])
  {
    [(DADConnection *)self _calendarAvailabilityRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEGrantedDelegatesListRequestFinished"])
  {
    [(DADConnection *)self _grantedDelegatesListRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEUpdateGrantedDelegatePermissionRequestFinished"])
  {
    [(DADConnection *)self _updateGrantedDelegatePermissionRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchReturnedResults"])
  {
    [(DADConnection *)self _calendarDirectorySearchReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchFinished"])
  {
    [(DADConnection *)self _calendarDirectorySearchFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEGroupExpansionFinished"])
  {
    [(DADConnection *)self _groupExpansionFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarProgress"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarProgress:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarFinished"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarPasswordRequired"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarRequiresPassword:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECheckSubscribedCalendarIsJunkFinished"])
  {
    [(DADConnection *)self _subscriptionCalendarJunkCheckFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEFetchHolidayCalendarsReturnedResults"])
  {
    [(DADConnection *)self _holidayCalendarFetchReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEFetchHolidayCalendarsFinished"])
  {
    [(DADConnection *)self _holidayCalendarFetchFinished:messageCopy];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "unknown request sent to connection.", &v9, 2u);
    }

    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "request: %@", &v9, 0xCu);
    }
  }
}

- (void)beginCalDAVServerSimulationWithHostname:(id)hostname
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEServerSimulatorHostnameKey";
  v10[0] = @"kDAEManageCalDAVServerSimulator";
  v10[1] = hostname;
  v9[2] = @"kDAEServerSimulatorActionKey";
  v10[2] = @"kDAEServerSimulatorActionBegin";
  v4 = MEMORY[0x277CBEAC0];
  hostnameCopy = hostname;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);
}

- (void)endCalDAVServerSimulationWithHostname:(id)hostname
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEServerSimulatorHostnameKey";
  v10[0] = @"kDAEManageCalDAVServerSimulator";
  v10[1] = hostname;
  v9[2] = @"kDAEServerSimulatorActionKey";
  v10[2] = @"kDAEServerSimulatorActionEnd";
  v4 = MEMORY[0x277CBEAC0];
  hostnameCopy = hostname;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(DADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);
}

@end