@interface CKDPCSKeySyncManager
+ (id)sharedManager;
+ (void)sendCoreAnalyticsEventForKeySync:(id)sync;
- (CKDPCSKeySyncManager)init;
- (id)_on_queue_createSyncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider;
- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)d;
- (id)_on_queue_syncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider;
- (id)createSyncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider;
- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)d service:(id)service;
- (id)syncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider;
- (void)_on_queue_performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler;
- (void)getKeySyncEligibilityForService:(id)service isManatee:(BOOL)manatee accountDSID:(id)d lastModifiedDate:(id)date testOverrideProvider:(id)provider completionHandler:(id)handler;
- (void)performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler;
- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)completion;
- (void)syncUserKeysForService:(id)service context:(id)context bundleID:(id)d serviceIsManatee:(BOOL)manatee accountDSID:(id)iD accountType:(int64_t)type shouldThrottle:(BOOL)throttle testOverrideProvider:(id)self0 requestorOperationID:(id)self1 completionHandler:(id)self2;
- (void)syncUserKeysForSessionAcquisitionWithService:(id)service bundleID:(id)d accountDSID:(id)iD accountType:(int64_t)type testOverrideProvider:(id)provider completionHandler:(id)handler;
@end

@implementation CKDPCSKeySyncManager

+ (id)sharedManager
{
  if (qword_280D583B0 != -1)
  {
    dispatch_once(&qword_280D583B0, &unk_28385DA20);
  }

  v3 = qword_280D583A8;

  return v3;
}

- (CKDPCSKeySyncManager)init
{
  v9.receiver = self;
  v9.super_class = CKDPCSKeySyncManager;
  v2 = [(CKDPCSKeySyncManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keySyncTrackerByServiceNameByAccount = v2->_keySyncTrackerByServiceNameByAccount;
    v2->_keySyncTrackerByServiceNameByAccount = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cloudkit.keySyncQueue", v5);
    keySyncQueue = v2->_keySyncQueue;
    v2->_keySyncQueue = v6;
  }

  return v2;
}

- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, dCopy);

  if (!v9)
  {
    v12 = objc_opt_new();
    v15 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v12, dCopy);
  }

  v17 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v10, v11);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, dCopy);

  return v19;
}

- (id)_on_queue_createSyncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider
{
  manateeCopy = manatee;
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  providerCopy = provider;
  v16 = objc_alloc_init(CKDPCSKeySyncTracker);
  objc_msgSend_setServiceName_(v16, v17, serviceCopy);
  objc_msgSend_setManatee_(v16, v18, manateeCopy);
  objc_msgSend_setAccountDSID_(v16, v19, dCopy);
  objc_msgSend_setRequestorOperationID_(v16, v20, iDCopy);
  v23 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v21, v22);
  objc_sync_enter(v23);
  v25 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(self, v24, dCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v16, serviceCopy);

  objc_sync_exit(v23);

  return v16;
}

- (id)createSyncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider
{
  manateeCopy = manatee;
  providerCopy = provider;
  serviceCopy = service;
  iDCopy = iD;
  dCopy = d;
  v18 = objc_msgSend_keySyncQueue(self, v16, v17);
  dispatch_assert_queue_V2(v18);

  v20 = objc_msgSend__on_queue_createSyncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(self, v19, dCopy, iDCopy, serviceCopy, manateeCopy, providerCopy);

  return v20;
}

- (id)_on_queue_syncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider
{
  manateeCopy = manatee;
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  providerCopy = provider;
  v18 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v16, v17);
  objc_sync_enter(v18);
  v20 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(self, v19, dCopy);
  v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, serviceCopy);
  v25 = objc_msgSend_state(v22, v23, v24);
  if (!v22 || v25 == 3)
  {
    v27 = objc_msgSend__on_queue_createSyncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(self, v26, dCopy, iDCopy, serviceCopy, manateeCopy, providerCopy);

    v22 = v27;
  }

  objc_sync_exit(v18);

  return v22;
}

- (id)syncTrackerForAccountDSID:(id)d requestorOperationID:(id)iD service:(id)service manatee:(BOOL)manatee testOverrideProvider:(id)provider
{
  manateeCopy = manatee;
  providerCopy = provider;
  serviceCopy = service;
  iDCopy = iD;
  dCopy = d;
  v18 = objc_msgSend_keySyncQueue(self, v16, v17);
  dispatch_assert_queue_V2(v18);

  v20 = objc_msgSend__on_queue_syncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(self, v19, dCopy, iDCopy, serviceCopy, manateeCopy, providerCopy);

  return v20;
}

- (void)_on_queue_performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler
{
  v100 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  providerCopy = provider;
  dCopy = d;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v20 = objc_msgSend_serviceName(trackerCopy, v18, v19);
    v23 = objc_msgSend_accountDSID(trackerCopy, v21, v22);
    v26 = objc_msgSend_requestorOperationID(trackerCopy, v24, v25);
    *buf = 138543874;
    v95 = v20;
    v96 = 2112;
    v97 = v23;
    v98 = 2114;
    v99 = v26;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Starting user key sync for service: %{public}@, account dsid %@, operation %{public}@", buf, 0x20u);
  }

  v27 = dispatch_group_create();
  objc_msgSend_setSyncGroup_(trackerCopy, v28, v27);

  v31 = objc_msgSend_syncGroup(trackerCopy, v29, v30);
  dispatch_group_enter(v31);

  v34 = objc_msgSend_keySyncQueue(self, v32, v33);
  v84 = dCopy;
  objc_msgSend_waitOnSyncWithQueue_waiterOperationID_handler_(trackerCopy, v35, v34, dCopy, handlerCopy);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22528FF70;
  aBlock[3] = &unk_27854BC28;
  aBlock[4] = self;
  v36 = trackerCopy;
  v91 = v36;
  v83 = _Block_copy(aBlock);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2252905CC;
  v86[3] = &unk_27854BC50;
  v37 = v36;
  v87 = v37;
  selfCopy = self;
  v38 = providerCopy;
  v89 = v38;
  v39 = _Block_copy(v86);
  v92[0] = *MEMORY[0x277D430D8];
  v42 = objc_msgSend_serviceName(v37, v40, v41);
  v93[0] = v42;
  v92[1] = *MEMORY[0x277D430A8];
  v45 = objc_msgSend_accountDSID(v37, v43, v44);
  v93[1] = v45;
  v92[2] = *MEMORY[0x277D430C0];
  v46 = _Block_copy(v39);
  v93[2] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v93, v92, 3);

  v51 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v49, v50);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v52 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v54 = v52;
    v57 = objc_msgSend_ckShortDescription(v51, v55, v56);
    *buf = 138412290;
    v95 = v57;
    _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Starting user key sync on current persona %@", buf, 0xCu);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v58 = objc_msgSend__pcsTestOverrideForKey_(v38, v53, @"ExpectedPersonaIdentifier");
    if (v58)
    {
      v61 = v58;
      v62 = objc_msgSend_CKNilIfEmpty(v58, v59, v60);

      if (v62)
      {
        v65 = objc_msgSend_identifier(v51, v63, v64);
        isEqualToString = objc_msgSend_isEqualToString_(v62, v66, v65);

        if ((isEqualToString & 1) == 0)
        {
          v70 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v70, v71, a2, self, @"CKDPCSKeySyncManager.m", 258, @"Expected persona identifier to match");
LABEL_40:
        }

LABEL_16:

        goto LABEL_17;
      }

      objc_msgSend_isDataSeparated(v51, v63, v64);
      if (CKBoolFromCKTernary())
      {
        v70 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v72, v73);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v70, v81, a2, self, @"CKDPCSKeySyncManager.m", 260, @"Expected non-data separated persona");
        goto LABEL_40;
      }
    }

    v62 = 0;
    goto LABEL_16;
  }

LABEL_17:
  if (config > 1)
  {
    if (config == 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v74 = v83;
      v76 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Faking failed user key sync", buf, 2u);
      }

      if (objc_msgSend_isManatee(v37, v77, v78))
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 5009, @"Underlying user key sync error");
      }

      else
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 5000, @"Underlying user key sync error");
      }
    }

    else
    {
      v74 = v83;
      if (config != 3)
      {
        goto LABEL_38;
      }

      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v53, *MEMORY[0x277CBC120], 228, @"Fake DBR account key sync failure");
    }
    v80 = ;
    (v74)[2](v74, 0, v80);

LABEL_37:
    (*(v39 + 2))(v39, 0);
    goto LABEL_38;
  }

  if (config)
  {
    v74 = v83;
    if (config == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v75 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Faking successful user key sync", buf, 2u);
      }

      (*(v83 + 2))(v83, 1, 0);
      goto LABEL_37;
    }
  }

  else
  {
    v74 = v83;
    PCSSyncKeyRegistryWithOptions();
  }

LABEL_38:
}

- (void)performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler
{
  throttleCopy = throttle;
  handlerCopy = handler;
  dCopy = d;
  providerCopy = provider;
  trackerCopy = tracker;
  v19 = objc_msgSend_keySyncQueue(self, v17, v18);
  dispatch_assert_queue_V2(v19);

  objc_msgSend__on_queue_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(self, v20, trackerCopy, config, throttleCopy, providerCopy, dCopy, handlerCopy);
}

- (void)getKeySyncEligibilityForService:(id)service isManatee:(BOOL)manatee accountDSID:(id)d lastModifiedDate:(id)date testOverrideProvider:(id)provider completionHandler:(id)handler
{
  serviceCopy = service;
  dCopy = d;
  dateCopy = date;
  providerCopy = provider;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(providerCopy, v17, @"ResetKeySyncState"))
  {
    v20 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v17, v18);
    objc_sync_enter(v20);
    v23 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v21, v22);
    objc_msgSend_removeAllObjects(v23, v24, v25);

    objc_sync_exit(v20);
  }

  if (dCopy)
  {
    v26 = objc_msgSend_keySyncQueue(self, v17, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225290BB4;
    block[3] = &unk_278547248;
    block[4] = self;
    v29 = dCopy;
    v30 = serviceCopy;
    v31 = dateCopy;
    v32 = handlerCopy;
    dispatch_async(v26, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "No account DSID, so we can't start user key sync", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)syncUserKeysForSessionAcquisitionWithService:(id)service bundleID:(id)d accountDSID:(id)iD accountType:(int64_t)type testOverrideProvider:(id)provider completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  providerCopy = provider;
  iDCopy = iD;
  dCopy = d;
  IsManatee = PCSServiceItemTypeIsManatee();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225290F1C;
  v24[3] = &unk_27854BC78;
  v27 = IsManatee;
  v25 = serviceCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = serviceCopy;
  v23 = 0;
  objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(self, v22, v21, @"CloudCoreAcquisition", dCopy, IsManatee, iDCopy, type, v23, providerCopy, 0, v24);
}

- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v10 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v8, v9);
  objc_sync_enter(v10);
  v12 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(self, v11, dCopy);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, serviceCopy);
  v17 = objc_msgSend_completionDate(v14, v15, v16);

  objc_sync_exit(v10);

  return v17;
}

- (void)syncUserKeysForService:(id)service context:(id)context bundleID:(id)d serviceIsManatee:(BOOL)manatee accountDSID:(id)iD accountType:(int64_t)type shouldThrottle:(BOOL)throttle testOverrideProvider:(id)self0 requestorOperationID:(id)self1 completionHandler:(id)self2
{
  manateeCopy = manatee;
  v105 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  providerCopy = provider;
  operationIDCopy = operationID;
  handlerCopy = handler;
  if (!serviceCopy)
  {
    v72 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v72, v73, a2, self, @"CKDPCSKeySyncManager.m", 388, @"Must provide a service name to syncUserKeys");
  }

  v83 = objc_msgSend_date(MEMORY[0x277CBEAA8], v21, v22);
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v77 = type == 0;
  v26 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v24, v25);
  v78 = objc_msgSend_suppressPCSKeySyncThrottling(v26, v27, v28);

  if (iDCopy)
  {
    v31 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v29, v30);
    v35 = objc_msgSend_serviceNeedsDBRReauthentication_(v31, v32, serviceCopy);
    if (!(manateeCopy | v35) && objc_msgSend_hasOutstandingServicesNeedingDBRReauthentication(v31, v33, v34))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v104 = serviceCopy;
        _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Stingray service %@ requested key sync while other outstanding services require DBR re-auth. Adding service to services needing DBR re-auth.", buf, 0xCu);
      }

      v102 = serviceCopy;
      v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, &v102, 1);
      objc_msgSend_addServicesNeedingDBRReauthentication_(v31, v39, v38);

      goto LABEL_12;
    }

    if (v35)
    {
LABEL_12:
      v40 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 10006, @"Service blocked from performing key sync due to DBR account re-auth needed. Direct user to settings to re-auth their account.");
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v40, 0);
      }

      goto LABEL_31;
    }

    v41 = objc_alloc_init(CKDPCSKeySyncCoreAnalytics);
    objc_msgSend_setServiceName_(v41, v42, serviceCopy);
    v44 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v43, manateeCopy);
    objc_msgSend_setIsManatee_(v41, v45, v44);

    v47 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, throttle);
    objc_msgSend_setShouldThrottle_(v41, v48, v47);

    objc_msgSend_setThrottledDurationSec_(v41, v49, &unk_2838C8460);
    objc_msgSend_setContext_(v41, v50, contextCopy);
    objc_msgSend_setBundleID_(v41, v51, dCopy);
    if (*MEMORY[0x277CBC810] == 1)
    {
      v74 = objc_msgSend__checkPCSTestOverrideForKey_(providerCopy, v52, @"AllowThrottlingWithUnitTestAccount");
      if (type)
      {
        v55 = v74;
      }

      else
      {
        v55 = 1;
      }

      v77 = v55;
      v56 = objc_msgSend__pcsTestOverrideForKey_(providerCopy, v54, @"ResetKeySyncState");
      v59 = objc_msgSend_BOOLValue(v56, v57, v58);

      v61 = objc_msgSend__pcsTestOverrideForKey_(providerCopy, v60, @"AllowRealKeySync");
      v64 = objc_msgSend_BOOLValue(v61, v62, v63);

      v76 = objc_msgSend__checkAndClearPCSTestOverrideForKey_(providerCopy, v65, @"ForceKeySyncFailure");
      if (objc_msgSend_isEqualToString_(serviceCopy, v66, @"com.apple.reminders"))
      {
        v76 |= objc_msgSend__checkAndClearPCSTestOverrideForKey_(providerCopy, v67, @"ForceKeySyncFailureForReminders");
      }

      v68 = v74 ^ 1 | v78;
      v75 = v64 ^ 1;
      v78 = v68;
      if (objc_msgSend__checkAndClearPCSTestOverrideForKey_(providerCopy, v67, @"FakeDBRAccountNeedsReauthenticationPCSError"))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v69 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Faking DBR account needs re-authentication error from PCS", buf, 2u);
        }

        v70 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v75 = 0;
      v76 = 0;
      v59 = 0;
    }

    v70 = 0;
LABEL_30:
    v71 = objc_msgSend_keySyncQueue(self, v52, v53);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225291768;
    block[3] = &unk_27854BCC8;
    v93 = v59;
    block[4] = self;
    v85 = v41;
    v92 = v101;
    v86 = v83;
    v94 = manateeCopy;
    v91 = handlerCopy;
    v87 = iDCopy;
    v88 = operationIDCopy;
    v89 = serviceCopy;
    v90 = providerCopy;
    v95 = v78 & 1;
    throttleCopy = throttle;
    v97 = v77;
    v98 = v76 & 1;
    v99 = v70;
    v100 = v75;
    v40 = v41;
    dispatch_async(v71, block);

LABEL_31:
    goto LABEL_32;
  }

  v31 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 1002, @"No account DSID, so we can't start user key sync");
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v31, 0);
  }

LABEL_32:

  _Block_object_dispose(v101, 8);
}

+ (void)sendCoreAnalyticsEventForKeySync:(id)sync
{
  v103[9] = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v6 = objc_msgSend_error(syncCopy, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = objc_msgSend_error(syncCopy, v7, v8);
    isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v10, v11, v12);

    if (isCloudCoreSessionNoLongerValidError)
    {
      goto LABEL_24;
    }
  }

  v14 = objc_msgSend_serviceName(syncCopy, v7, v8);
  if (!v14)
  {
    goto LABEL_24;
  }

  v17 = v14;
  v18 = objc_msgSend_shouldThrottle(syncCopy, v15, v16);
  if (!v18)
  {
LABEL_23:

    goto LABEL_24;
  }

  v21 = v18;
  v22 = objc_msgSend_isManatee(syncCopy, v19, v20);
  if (!v22)
  {
LABEL_22:

    goto LABEL_23;
  }

  v25 = v22;
  v26 = objc_msgSend_keySyncResult(syncCopy, v23, v24);
  if (!v26)
  {
LABEL_21:

    goto LABEL_22;
  }

  v29 = v26;
  v30 = objc_msgSend_overallResult(syncCopy, v27, v28);
  if (!v30)
  {
LABEL_20:

    goto LABEL_21;
  }

  v33 = v30;
  v34 = objc_msgSend_keySyncDurationSec(syncCopy, v31, v32);
  if (!v34)
  {
LABEL_19:

    goto LABEL_20;
  }

  v37 = v34;
  v38 = objc_msgSend_throttledDurationSec(syncCopy, v35, v36);
  if (!v38)
  {
LABEL_18:

    goto LABEL_19;
  }

  v41 = v38;
  v42 = objc_msgSend_context(syncCopy, v39, v40);
  if (!v42)
  {

    goto LABEL_18;
  }

  v45 = v42;
  v46 = objc_msgSend_bundleID(syncCopy, v43, v44);

  if (v46)
  {
    v102[0] = 0x283872580;
    v101 = objc_msgSend_serviceName(syncCopy, v47, v48);
    v103[0] = v101;
    v102[1] = 0x28387E820;
    v100 = objc_msgSend_shouldThrottle(syncCopy, v49, v50);
    v103[1] = v100;
    v102[2] = 0x28387E840;
    v53 = objc_msgSend_isManatee(syncCopy, v51, v52);
    v103[2] = v53;
    v102[3] = 0x28387E860;
    v56 = objc_msgSend_keySyncResult(syncCopy, v54, v55);
    v103[3] = v56;
    v102[4] = 0x28387E880;
    v59 = objc_msgSend_overallResult(syncCopy, v57, v58);
    v103[4] = v59;
    v102[5] = 0x28387E8A0;
    v62 = objc_msgSend_keySyncDurationSec(syncCopy, v60, v61);
    v103[5] = v62;
    v102[6] = 0x28387E8C0;
    v65 = objc_msgSend_throttledDurationSec(syncCopy, v63, v64);
    v103[6] = v65;
    v102[7] = 0x28387E8E0;
    v68 = objc_msgSend_context(syncCopy, v66, v67);
    v103[7] = v68;
    v102[8] = 0x28386EE20;
    v71 = objc_msgSend_bundleID(syncCopy, v69, v70);
    v103[8] = v71;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, v103, v102, 9);
    v17 = objc_msgSend_mutableCopy(v73, v74, v75);

    v78 = objc_msgSend_error(syncCopy, v76, v77);

    if (v78)
    {
      v81 = MEMORY[0x277CCABB0];
      v82 = objc_msgSend_error(syncCopy, v79, v80);
      v85 = objc_msgSend_code(v82, v83, v84);
      v87 = objc_msgSend_numberWithInteger_(v81, v86, v85);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v88, v87, 0x28387E4A0);

      v91 = objc_msgSend_error(syncCopy, v89, v90);
      v92 = CKErrorChainStringFromError();
      objc_msgSend_setObject_forKeyedSubscript_(v17, v93, v92, 0x28387E4C0);
    }

    v94 = objc_msgSend_KRSReturnedExistingIdentity(syncCopy, v79, v80);

    if (v94)
    {
      v97 = objc_msgSend_KRSReturnedExistingIdentity(syncCopy, v95, v96);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v98, v97, 0x28387E960);
    }

    v99 = objc_msgSend_copy(v17, v95, v96);
    AnalyticsSendEvent();

    goto LABEL_23;
  }

LABEL_24:
}

- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_keySyncQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225292434;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

@end