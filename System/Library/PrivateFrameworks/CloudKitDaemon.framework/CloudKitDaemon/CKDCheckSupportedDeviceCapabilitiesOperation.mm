@interface CKDCheckSupportedDeviceCapabilitiesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDCheckSupportedDeviceCapabilitiesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_handleContinuation:(id)continuation;
- (void)_handleError:(id)error forZoneID:(id)d capabilitySet:(id)set;
- (void)_handleSupportedDeviceCapabilitiesCheckedForZoneID:(id)d capabilitySet:(id)set result:(id)result responseCode:(id)code;
- (void)checkSupportedCapabilitiesWithServer;
- (void)fetchServerConfigIfNecessary;
- (void)invokeCompletionHandlers;
- (void)reportClientValidationError:(id)error;
- (void)validateShareParticipants;
- (void)validateSigningIdentities;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesOperation

- (CKDCheckSupportedDeviceCapabilitiesOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = CKDCheckSupportedDeviceCapabilitiesOperation;
  v9 = [(CKDDatabaseOperation *)&v33 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_zoneIDs(infoCopy, v7, v8);
    zoneIDs = v9->_zoneIDs;
    v9->_zoneIDs = v10;

    v14 = objc_msgSend_desiredCapabilitySets(infoCopy, v12, v13);
    desiredCapabilitySets = v9->_desiredCapabilitySets;
    v9->_desiredCapabilitySets = v14;

    v18 = objc_msgSend_options(infoCopy, v16, v17);
    options = v9->_options;
    v9->_options = v18;

    v20 = objc_opt_new();
    continuations = v9->_continuations;
    v9->_continuations = v20;

    v22 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_count(v9->_zoneIDs, v23, v24);
    v28 = objc_msgSend_count(v9->_desiredCapabilitySets, v26, v27);
    v30 = objc_msgSend_initWithCapacity_(v22, v29, v28 * v25);
    results = v9->_results;
    v9->_results = v30;
  }

  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        objc_msgSend_setState_(self, v5, 5);
        objc_msgSend_validateSigningIdentities(self, v21, v22);
        break;
      case 5:
        objc_msgSend_setState_(self, v5, 6);
        objc_msgSend_invokeCompletionHandlers(self, v23, v24);
        break;
      case 6:
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        v17 = objc_msgSend_error(self, v15, v16);
        objc_msgSend_finishWithError_(self, v18, v17);

        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend_fetchServerConfigIfNecessary(self, v19, v20);
        return 1;
      case 2:
        objc_msgSend_setState_(self, v5, 3);
        goto LABEL_14;
      case 3:
        v7 = objc_msgSend_continuations(self, v5, v6);
        v10 = objc_msgSend_count(v7, v8, v9);

        if (!v10)
        {
          objc_msgSend_setState_(self, v11, 4);
          objc_msgSend_validateShareParticipants(self, v13, v14);
          return 1;
        }

LABEL_14:
        objc_msgSend_checkSupportedCapabilitiesWithServer(self, v11, v12);
        break;
    }
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDCheckSupportedDeviceCapabilitiesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854ADE8[state - 2];
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/check-device-capabilities", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fetchServerConfigIfNecessary
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_serverConfig(v4, v5, v6);

  if (!v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Server config is not fetched yet for determining device capabilities checking enablement. Fetching it now...", location, 2u);
    }

    v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v11);
    objc_initWeak(location, self);
    v14 = objc_msgSend_container(self, v12, v13);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_225240810;
    v17[3] = &unk_27854AD00;
    objc_copyWeak(&v19, location);
    v15 = v11;
    v18 = v15;
    objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v14, v16, self, v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }
}

- (void)checkSupportedCapabilitiesWithServer
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_allowsDeviceCapabilitiesChecking(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_continuations(self, v8, v9);
    v13 = objc_msgSend_count(v10, v11, v12);

    v14 = *MEMORY[0x277CBC878];
    v15 = MEMORY[0x277CBC830];
    if (v13)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v16 = *v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v50 = v16;
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v55 = objc_msgSend_ckShortDescription(self, v53, v54);
        *location = 138543874;
        *&location[4] = v52;
        v76 = 2048;
        selfCopy2 = self;
        v78 = 2114;
        v79 = v55;
        _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Continuing check supported device capabilities operation <%{public}@: %p; %{public}@>", location, 0x20u);
      }

      v19 = objc_msgSend_continuations(self, v17, v18);
      v20 = objc_opt_new();
      objc_msgSend_setContinuations_(self, v21, v20);

      v24 = 0;
      v25 = 0;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v28 = *v15;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v56 = v28;
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v61 = objc_msgSend_ckShortDescription(self, v59, v60);
        *location = 138543874;
        *&location[4] = v58;
        v76 = 2048;
        selfCopy2 = self;
        v78 = 2114;
        v79 = v61;
        _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Check supported device capabilities operation <%{public}@: %p; %{public}@> is starting", location, 0x20u);
      }

      v25 = objc_msgSend_zoneIDs(self, v29, v30);
      v24 = objc_msgSend_desiredCapabilitySets(self, v31, v32);
      v19 = 0;
    }

    v33 = objc_msgSend_stateTransitionGroup(self, v22, v23);
    dispatch_group_enter(v33);

    v34 = [CKDCheckSupportedDeviceCapabilitiesURLRequest alloc];
    v37 = objc_msgSend_options(self, v35, v36);
    v39 = objc_msgSend_initWithOperation_continuations_zoneIDs_desiredCapabilitySets_options_(v34, v38, self, v19, v25, v24, v37);

    objc_initWeak(location, self);
    objc_initWeak(&from, v39);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_225240FF4;
    v72[3] = &unk_27854AD28;
    objc_copyWeak(&v73, location);
    objc_msgSend_setSupportedDeviceCapabilitiesCheckedForZoneBlock_(v39, v40, v72);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22524109C;
    v70[3] = &unk_27854AD50;
    objc_copyWeak(&v71, location);
    objc_msgSend_setContinuationResponseBlock_(v39, v41, v70);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2252410F8;
    v68[3] = &unk_27854AD78;
    objc_copyWeak(&v69, location);
    objc_msgSend_setErrorFromServerBlock_(v39, v42, v68);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_22524133C;
    v66[3] = &unk_27854ADA0;
    objc_copyWeak(&v67, location);
    objc_msgSend_setErrorFromClientValidationBlock_(v39, v43, v66);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2252414DC;
    v63[3] = &unk_278548748;
    objc_copyWeak(&v64, location);
    objc_copyWeak(&v65, &from);
    objc_msgSend_setCompletionBlock_(v39, v44, v63);
    objc_msgSend_setRequest_(self, v45, v39);
    v48 = objc_msgSend_container(self, v46, v47);
    objc_msgSend_performRequest_(v48, v49, v39);

    objc_destroyWeak(&v65);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&v69);
    objc_destroyWeak(&v71);
    objc_destroyWeak(&v73);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v62 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1017, @"Device capability checking is not enabled for this container");
    objc_msgSend_setState_(self, v26, 0xFFFFFFFFLL);
    objc_msgSend_finishWithError_(self, v27, v62);
  }
}

- (void)_handleContinuation:(id)continuation
{
  continuationCopy = continuation;
  v8 = objc_msgSend_continuations(self, v5, v6);
  objc_msgSend_addObject_(v8, v7, continuationCopy);
}

- (void)_handleError:(id)error forZoneID:(id)d capabilitySet:(id)set
{
  setCopy = set;
  dCopy = d;
  errorCopy = error;
  v11 = [CKDDeviceCapabilityCheckPerRequestResult alloc];
  v17 = objc_msgSend_initWithZoneID_capabilitySet_result_error_(v11, v12, dCopy, setCopy, 0, errorCopy);

  v15 = objc_msgSend_results(self, v13, v14);
  objc_msgSend_addObject_(v15, v16, v17);
}

- (void)_handleSupportedDeviceCapabilitiesCheckedForZoneID:(id)d capabilitySet:(id)set result:(id)result responseCode:(id)code
{
  resultCopy = result;
  setCopy = set;
  dCopy = d;
  v12 = [CKDDeviceCapabilityCheckPerRequestResult alloc];
  v18 = objc_msgSend_initWithZoneID_capabilitySet_result_error_(v12, v13, dCopy, setCopy, resultCopy, 0);

  v16 = objc_msgSend_results(self, v14, v15);
  objc_msgSend_addObject_(v16, v17, v18);
}

- (void)reportClientValidationError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225241910;
  v7[3] = &unk_2785487F8;
  v8 = errorCopy;
  v5 = errorCopy;
  objc_msgSend_updateCloudKitMetrics_(self, v6, v7);
}

- (void)validateShareParticipants
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = objc_msgSend_results(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v49, v54, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = objc_msgSend_error(v17, v12, v13);

        if (!v18)
        {
          v19 = objc_msgSend_result(v17, v12, v13);
          v22 = objc_msgSend_shareID(v19, v20, v21);

          if (v22)
          {
            objc_msgSend_addObject_(v5, v23, v22);
            objc_msgSend_addObject_(v6, v24, v17);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v49, v54, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v5, v25, v26))
  {
    v29 = objc_alloc_init(MEMORY[0x277CBC3F0]);
    v32 = objc_msgSend_allObjects(v5, v30, v31);
    objc_msgSend_setRecordIDs_(v29, v33, v32);

    v53 = *MEMORY[0x277CBC040];
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v53, 1);
    objc_msgSend_setDesiredKeys_(v29, v36, v35);

    v39 = objc_msgSend_stateTransitionGroup(self, v37, v38);
    dispatch_group_enter(v39);

    v40 = objc_opt_class();
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = sub_225241BD4;
    v46 = &unk_278548C48;
    v47 = v6;
    selfCopy = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v41, v40, v29, &v43);
  }

  v42 = objc_msgSend_stateTransitionGroup(self, v27, v28, v43, v44, v45, v46);
  dispatch_group_leave(v42);
}

- (void)validateSigningIdentities
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = objc_msgSend_results(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v38, v42, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        objc_msgSend_setIsValidatedWithKT_(v14, v10, 0);
        v17 = objc_msgSend_error(v14, v15, v16);

        if (!v17)
        {
          v19 = objc_msgSend_result(v14, v10, v18);
          v22 = objc_msgSend_publicKeys(v19, v20, v21);

          if (objc_msgSend_count(v22, v23, v24))
          {
            v27 = objc_msgSend_result(v14, v25, v26);
            objc_msgSend_canValidateWithKT(v27, v28, v29);

            v32 = objc_msgSend_result(v14, v30, v31);
            objc_msgSend_shareID(v32, v33, v34);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v38, v42, 16);
    }

    while (v11);
  }

  v37 = objc_msgSend_stateTransitionGroup(self, v35, v36);
  dispatch_group_leave(v37);
}

- (void)invokeCompletionHandlers
{
  selfCopy = self;
  v87 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_results(selfCopy, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v76 = objc_msgSend_initWithCapacity_(v5, v12, v11);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = objc_msgSend_results(selfCopy, v13, v14);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v82, v86, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v83;
    v74 = *v83;
    v75 = selfCopy;
    do
    {
      v21 = 0;
      v77 = v19;
      do
      {
        if (*v83 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v82 + 1) + 8 * v21);
        v23 = objc_msgSend_result(v22, v17, v18);
        v26 = objc_msgSend_checkSupportedDeviceCapabilitiesProgressBlock(selfCopy, v24, v25);

        if (v26)
        {
          v29 = objc_msgSend_checkSupportedDeviceCapabilitiesProgressBlock(selfCopy, v27, v28);
          v32 = objc_msgSend_zoneID(v22, v30, v31);
          v35 = objc_msgSend_capabilitySet(v22, v33, v34);
          v38 = objc_msgSend_error(v22, v36, v37);
          (v29)[2](v29, v32, v35, v23, v38);
        }

        v39 = objc_msgSend_error(v22, v27, v28);

        if (!v39)
        {
          isSupported = objc_msgSend_isSupported(v23, v40, v41);
          if (isSupported)
          {
            IsManateeSigned = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
          }

          else
          {
            v49 = objc_msgSend_shareID(v23, v42, v43);
            v46 = v49 == 0;

            v52 = objc_msgSend_publicKeys(v23, v50, v51);
            v48 = objc_msgSend_count(v52, v53, v54);

            if (v48)
            {
              v45 = objc_msgSend_usageIsManateeSigned(v23, v42, v43) ^ 1;
              v47 = objc_msgSend_capabilitiesIsManateeSigned(v23, v55, v56) ^ 1;
              IsManateeSigned = objc_msgSend_usageIsManateeSigned(v23, v57, v58);
              v48 = objc_msgSend_capabilitiesIsManateeSigned(v23, v59, v60);
            }

            else
            {
              IsManateeSigned = 0;
              v45 = 0;
              v47 = 0;
            }
          }

          v61 = MEMORY[0x277CCABB0];
          LOBYTE(v73) = objc_msgSend_isValidatedWithKT(v22, v42, v43);
          v63 = objc_msgSend_makeAdopterCapabilityCheckResultWithIsSupported_isOwner_isUsageStingraySigned_isCapabilitiesStingraySigned_isUsageManateeSigned_isCapabilitiesManateeSigned_isKTValidated_(CKDOperationMetrics, v62, isSupported, v46, v45, v47, IsManateeSigned, v48, v73);
          v65 = objc_msgSend_numberWithUnsignedInteger_(v61, v64, v63);
          objc_msgSend_addObject_(v76, v66, v65);

          v20 = v74;
          selfCopy = v75;
          v19 = v77;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v82, v86, 16);
    }

    while (v19);
  }

  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_225242B5C;
  v80[3] = &unk_2785487F8;
  v81 = v76;
  objc_msgSend_updateCloudKitMetrics_(selfCopy, v67, v80);
  v68 = objc_autoreleasePoolPush();
  objc_msgSend_setResults_(selfCopy, v69, 0);
  objc_autoreleasePoolPop(v68);
  v72 = objc_msgSend_stateTransitionGroup(selfCopy, v70, v71);
  dispatch_group_leave(v72);
}

@end