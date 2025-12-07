@interface CKDFetchShareParticipantKeyOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDFetchShareParticipantKeyOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleFetchedShare:(id)share withID:(id)d error:(id)error;
- (void)_participantKeyFromShare:(id)share completionHandler:(id)handler;
- (void)_performCallbackForShareID:(id)d withParticipantKey:(id)key error:(id)error;
- (void)_sendErrorForFailedShares;
- (void)fetchSharesFromServer;
- (void)main;
- (void)updateShares;
@end

@implementation CKDFetchShareParticipantKeyOperation

- (CKDFetchShareParticipantKeyOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = CKDFetchShareParticipantKeyOperation;
  v9 = [(CKDDatabaseOperation *)&v26 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_shareIDs(infoCopy, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    shareIDs = v9->_shareIDs;
    v9->_shareIDs = v13;

    v17 = objc_msgSend_baseTokensByShareID(infoCopy, v15, v16);
    baseTokensByShareID = v9->_baseTokensByShareID;
    v9->_baseTokensByShareID = v17;

    v21 = objc_msgSend_childRecordIDsByShareID(infoCopy, v19, v20);
    childRecordIDsByShareID = v9->_childRecordIDsByShareID;
    v9->_childRecordIDsByShareID = v21;

    v23 = objc_opt_new();
    sharesNeedingUpdateByID = v9->_sharesNeedingUpdateByID;
    v9->_sharesNeedingUpdateByID = v23;
  }

  return v9;
}

- (id)relevantZoneIDs
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_shareIDs(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v16 = objc_msgSend_zoneID(*(*(&v18 + 1) + 8 * i), v10, v11, v18);
          if (v16)
          {
            objc_msgSend_addObject_(v6, v15, v16);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
      }

      while (v12);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      goto LABEL_4;
    case 2:
      v9 = objc_msgSend_sharesNeedingUpdateByID(self, v5, v6);
      if (objc_msgSend_count(v9, v10, v11))
      {
        hasAttemptedShareUpdate = objc_msgSend_hasAttemptedShareUpdate(self, v12, v13);

        if ((hasAttemptedShareUpdate & 1) == 0)
        {
          objc_msgSend_setState_(self, v15, 3);
          objc_msgSend_setHasAttemptedShareUpdate_(self, v17, 1);
          objc_msgSend_updateShares(self, v18, v19);
          return 1;
        }
      }

      else
      {
      }

      objc_msgSend__sendErrorForFailedShares(self, v15, v16);
      objc_msgSend_setState_(self, v20, 0xFFFFFFFFLL);
      v23 = objc_msgSend_error(self, v21, v22);
      objc_msgSend_finishWithError_(self, v24, v23);

      return 1;
    case 1:
LABEL_4:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend_fetchSharesFromServer(self, v7, v8);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Shares";
  }

  else if (state == 3)
  {
    v5 = @"Updating Shares";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchShareParticipantKeyOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-share-participant-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_performCallbackForShareID:(id)d withParticipantKey:(id)key error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  errorCopy = error;
  v13 = objc_msgSend_shareParticipantKeyFetchedBlock(self, v11, v12);

  if (v13)
  {
    v14 = *MEMORY[0x277CBC878];
    if (keyCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v15 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v28 = dCopy;
      v18 = "Returning participant key for share %@";
      v19 = v15;
      v20 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v21 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 138412546;
      v28 = dCopy;
      v29 = 2112;
      v30 = errorCopy;
      v18 = "Returning error for share %@: %@";
      v19 = v21;
      v20 = 22;
    }

    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
LABEL_10:
    v22 = objc_msgSend_callbackQueue(self, v16, v17);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_225233284;
    v23[3] = &unk_2785463D0;
    v23[4] = self;
    v24 = dCopy;
    v25 = keyCopy;
    v26 = errorCopy;
    dispatch_async(v22, v23);
  }
}

- (void)_sendErrorForFailedShares
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = objc_msgSend_sharesNeedingUpdateByID(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    v13 = *MEMORY[0x277CBC120];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, v13, 2043, @"Share %@ couldn't be upgraded", v15);
        objc_msgSend__performCallbackForShareID_withParticipantKey_error_(self, v17, v15, 0, v16);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v11);
  }
}

- (void)_participantKeyFromShare:(id)share completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  handlerCopy = handler;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_2250740C0;
  v92 = sub_2250735EC;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_2250740C0;
  v86 = sub_2250735EC;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_2250740C0;
  v80 = sub_2250735EC;
  v81 = 0;
  v10 = objc_msgSend_childRecordIDsByShareID(self, v8, v9);
  v13 = objc_msgSend_recordID(shareCopy, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

  v18 = objc_msgSend_container(self, v16, v17);
  v23 = objc_msgSend_shortToken(shareCopy, v19, v20);
  if (!v23)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v66 = objc_msgSend_recordID(shareCopy, v37, v38);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v66;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Couldn't get a short token for share %@", location, 0xCu);
    }

    v39 = MEMORY[0x277CBC560];
    v42 = objc_msgSend_recordID(shareCopy, v40, v41);
    v44 = objc_msgSend_errorWithDomain_code_format_(v39, v43, *MEMORY[0x277CBC120], 2003, @"Couldn't get a short token for share %@", v42);
    v45 = v83[5];
    v83[5] = v44;

    v46 = 0;
    v47 = v83[5];
    goto LABEL_13;
  }

  if (objc_msgSend_publicPermission(shareCopy, v21, v22) != 1)
  {
    v48 = MEMORY[0x277CCACA8];
    v51 = objc_msgSend_containerScopedUserID(v18, v24, v25);
    if (v15)
    {
      v52 = objc_msgSend_recordName(v15, v49, v50);
      v55 = objc_msgSend_CKBase64EncodedURLSafeString(v52, v53, v54);
      v57 = objc_msgSend_stringWithFormat_(v48, v56, @"v3:%@:%@:%@", v23, v51, v55);
      v58 = v89[5];
      v89[5] = v57;
    }

    else
    {
      v59 = objc_msgSend_stringWithFormat_(v48, v49, @"v1:%@:%@", v23, v51);
      v52 = v89[5];
      v89[5] = v59;
    }

    v61 = objc_msgSend_dataUsingEncoding_(v89[5], v60, 4);
    v64 = objc_msgSend_CKBase64URLSafeString(v61, v62, v63);
    v65 = v77[5];
    v77[5] = v64;

    v47 = 0;
    v46 = v77[5];
LABEL_13:
    handlerCopy[2](handlerCopy, v46, v47);
    goto LABEL_14;
  }

  objc_initWeak(location, v18);
  v28 = objc_msgSend_pcsManager(v18, v26, v27);
  v31 = objc_msgSend_currentUserParticipant(shareCopy, v29, v30);
  v34 = objc_msgSend_protectionInfo(v31, v32, v33);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2252339D4;
  v67[3] = &unk_27854AA88;
  objc_copyWeak(&v75, location);
  v71 = handlerCopy;
  v72 = &v82;
  v68 = v15;
  v73 = &v88;
  v69 = v23;
  v70 = shareCopy;
  v74 = &v76;
  objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v28, v35, v34, 4, 2, v67);

  objc_destroyWeak(&v75);
  objc_destroyWeak(location);
LABEL_14:

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  _Block_object_dispose(&v88, 8);
}

- (void)_handleFetchedShare:(id)share withID:(id)d error:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  dCopy = d;
  errorCopy = error;
  if (errorCopy)
  {
    goto LABEL_15;
  }

  if (!shareCopy)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch a share with ID %@", dCopy);
    errorCopy = LABEL_14:;
LABEL_15:
    v35 = errorCopy;
    objc_msgSend__performCallbackForShareID_withParticipantKey_error_(self, v11, dCopy, 0, errorCopy);

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 2020, @"Item with ID %@ was not a share", dCopy);
    goto LABEL_14;
  }

  v14 = objc_msgSend_baseTokensByShareID(self, v12, v13);
  v17 = objc_msgSend_recordID(shareCopy, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v14, v18, v17);
  objc_msgSend_setBaseToken_(shareCopy, v20, v19);

  v23 = objc_msgSend_baseToken(shareCopy, v21, v22);

  if (v23)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v50 = v26;
      v53 = objc_msgSend_baseToken(shareCopy, v51, v52);
      v56 = objc_msgSend_recordID(shareCopy, v54, v55);
      *buf = 138543618;
      v60 = v53;
      v61 = 2112;
      v62 = v56;
      _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Using base token %{public}@ on share %@", buf, 0x16u);
    }
  }

  if (objc_msgSend_publicPermission(shareCopy, v24, v25) != 1)
  {
    goto LABEL_23;
  }

  v29 = objc_msgSend_currentUserParticipant(shareCopy, v27, v28);
  v32 = objc_msgSend_protectionInfo(v29, v30, v31);
  if (v32)
  {

LABEL_23:
    v48 = objc_msgSend_stateTransitionGroup(self, v27, v28);
    dispatch_group_enter(v48);

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_225234478;
    v57[3] = &unk_27854AAB0;
    v57[4] = self;
    v58 = dCopy;
    objc_msgSend__participantKeyFromShare_completionHandler_(self, v49, shareCopy, v57);

    goto LABEL_16;
  }

  v36 = objc_msgSend_currentUserParticipant(shareCopy, v33, v34);
  v39 = objc_msgSend_role(v36, v37, v38);

  if (v39 != 1)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v60 = dCopy;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Share %@ needs to be updated on the server so that it gets a PPPCS for the owner", buf, 0xCu);
  }

  v43 = objc_msgSend_sharesNeedingUpdateByID(self, v41, v42);
  v46 = objc_msgSend_recordID(shareCopy, v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v43, v47, shareCopy, v46);

LABEL_16:
}

- (void)fetchSharesFromServer
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v21 = v11;
      v24 = objc_msgSend_shareIDs(self, v22, v23);
      v27 = objc_msgSend_count(v24, v25, v26);
      v30 = objc_msgSend_operationID(self, v28, v29);
      *buf = 134218242;
      v33 = v27;
      v34 = 2114;
      v35 = v30;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Fetching %lu shares from the server for operation %{public}@", buf, 0x16u);
    }

    v12 = objc_opt_new();
    v15 = objc_msgSend_shareIDs(self, v13, v14);
    objc_msgSend_setRecordIDs_(v12, v16, v15);

    objc_msgSend_setDesiredKeys_(v12, v17, MEMORY[0x277CBEBF8]);
    v18 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_225234768;
    v31[3] = &unk_278548B60;
    v31[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v19, v18, v12, v31);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "No shares to fetch from the server. Returning early", buf, 2u);
    }
  }
}

- (void)updateShares
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_shareIDs(self, v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  v12 = objc_opt_new();
  if (*MEMORY[0x277CBC810] == 1)
  {
    v13 = objc_msgSend_unitTestOverrides(self, v10, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"NoProtectectionInfoTagOnShareUpgrade");

    if (v15)
    {
      v16 = objc_msgSend_sharesNeedingUpdateByID(self, v10, v11);
      v19 = objc_msgSend_allValues(v16, v17, v18);
      v22 = objc_msgSend_firstObject(v19, v20, v21);

      objc_msgSend_setPreviousProtectionEtagFromUnitTest_(v22, v23, &stru_28385ED00);
    }
  }

  v24 = objc_msgSend_sharesNeedingUpdateByID(self, v10, v11);
  v27 = objc_msgSend_allValues(v24, v25, v26);
  objc_msgSend_setRecordsToSave_(v12, v28, v27);

  v29 = objc_opt_class();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_225234CD8;
  v31[3] = &unk_278548B60;
  v31[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v30, v29, v12, v31);
}

- (void)main
{
  v4 = objc_msgSend_shareIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setShareParticipantKeyFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareParticipantKeyOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end