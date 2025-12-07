@interface CKDModifyShareHandler
+ (id)modifyHandlerForDeleteWithShareID:(id)d operation:(id)operation;
+ (id)modifyHandlerWithShare:(id)share operation:(id)operation;
- (BOOL)_addedPrivateParticipantNeedsAManateeInvitation:(id)invitation;
- (BOOL)_cleanPublicPCSforShareWithError:(id *)error;
- (BOOL)_modifyRoleForParticipant:(id)participant invitedPCS:(_OpaquePCSShareProtection *)s shareeIdentities:(id)identities error:(id *)error;
- (BOOL)_removePrivateParticipantsFromInvitedPCS:(_OpaquePCSShareProtection *)s error:(id *)error;
- (BOOL)_serializePCSDataForShareWithError:(id *)error;
- (BOOL)_setupParticipantsProtectionInfos:(id *)infos;
- (BOOL)_updateSharePublicPCSWithError:(id *)error;
- (BOOL)isCloudDocsContainer;
- (CKRecordID)shareID;
- (_PCSPublicIdentityData)createPublicIdentityFromPublicKeyForParticipant:(id)participant error:(id *)error;
- (id)_createNewSharePCSDataWithError:(id *)error;
- (id)_ensurePrivateParticipant:(id)participant isInInvitedSharePCS:(_OpaquePCSShareProtection *)s;
- (id)_handleSharePCSData:(id)data zonePCSData:(id)sData;
- (id)_publicKeyForParticipant:(id)participant error:(id *)error;
- (id)_removePrivateParticipant:(id)participant fromInvitedSharePCS:(_OpaquePCSShareProtection *)s;
- (id)_removePublicKey:(id)key fromInvitedPCS:(_OpaquePCSShareProtection *)s;
- (id)_rollShareAndZonePCSIfNeededForSharePCS:(id)s zonePCSData:(id)data;
- (id)sideEffectRecordIDs;
- (unint64_t)invitedPCSPermissionForParticipant:(id)participant;
- (unint64_t)serviceType;
- (void)_addPublicKeyToSelfParticipantWithCompletionHandler:(id)handler;
- (void)_alignParticipantPermissions;
- (void)_fetchRootRecordPublicSharingIdentityWithCompletionHandler:(id)handler;
- (void)_fetchSharePCSData;
- (void)_prepareDependentPCSUpdateIfNeededForShareWithSharePCS:(id)s error:(id)error;
- (void)clearProtectionDataForRecord;
- (void)createSharePCSDataWithKRS:(id)s;
- (void)dealloc;
- (void)decryptSelfParticipantPCSWithCompletionHandler:(id)handler;
- (void)fetchSharePCSData;
- (void)noteSideEffectRecordPendingDelete:(id)delete;
- (void)noteSideEffectRecordPendingModify:(id)modify;
- (void)prepareForSaveWithCompletionHandler:(id)handler;
- (void)savePCSDataToCache;
- (void)setServerRecord:(id)record;
- (void)updateParticipantsForFetchedShare:(id)share error:(id)error;
@end

@implementation CKDModifyShareHandler

+ (id)modifyHandlerWithShare:(id)share operation:(id)operation
{
  operationCopy = operation;
  shareCopy = share;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initWithRecord_operation_(v7, v8, shareCopy, operationCopy);

  objc_msgSend_setState_(v9, v10, 0);

  return v9;
}

+ (id)modifyHandlerForDeleteWithShareID:(id)d operation:(id)operation
{
  operationCopy = operation;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initForDeleteWithRecordID_operation_(v7, v8, dCopy, operationCopy);

  objc_msgSend_setState_(v9, v10, 0);

  return v9;
}

- (CKRecordID)shareID
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v9 = objc_msgSend_share(self, v5, v6);
    v8 = objc_msgSend_recordID(v9, v10, v11);
  }

  return v8;
}

- (BOOL)isCloudDocsContainer
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_containerID(v6, v7, v8);
  v12 = objc_msgSend_specialContainerType(v9, v10, v11) == 4;

  return v12;
}

- (unint64_t)serviceType
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsManager(v6, v7, v8);
  v12 = objc_msgSend_serviceTypeForSharing(v9, v10, v11);

  return v12;
}

- (id)sideEffectRecordIDs
{
  if (objc_msgSend_state(self, a2, v2))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDModifyShareHandler.m", 106, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler sideEffectRecordIDs]", self, "CKDModifyRecordHandlerStateNeedRecordSideEffects");
  }

  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_rootRecordID(v7, v8, v9);
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_share(self, v11, v12);
    isKnownToServer = objc_msgSend_isKnownToServer(v14, v15, v16);

    if (isKnownToServer)
    {
      v20 = 0;
      goto LABEL_9;
    }

    v21 = MEMORY[0x277CBEB98];
    v7 = objc_msgSend_share(self, v18, v19);
    v24 = objc_msgSend_rootRecordID(v7, v22, v23);
    v20 = objc_msgSend_setWithObject_(v21, v25, v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_9:

  return v20;
}

- (void)noteSideEffectRecordPendingModify:(id)modify
{
  modifyCopy = modify;
  v6 = objc_msgSend_recordID(modifyCopy, v4, v5);
  v9 = objc_msgSend_share(self, v7, v8);
  v12 = objc_msgSend_rootRecordID(v9, v10, v11);
  isEqual = objc_msgSend_isEqual_(v6, v13, v12);

  if (isEqual)
  {
    v15 = objc_alloc(MEMORY[0x277CBC620]);
    v18 = objc_msgSend_share(self, v16, v17);
    v20 = objc_msgSend_initWithRecord_action_(v15, v19, v18, 0);
    objc_msgSend_setShare_(modifyCopy, v21, v20);
  }
}

- (void)noteSideEffectRecordPendingDelete:(id)delete
{
  deleteCopy = delete;
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);
  v13 = objc_msgSend_recordID(v10, v11, v12);
  isEqual = objc_msgSend_isEqual_(v13, v14, deleteCopy);

  if (isEqual)
  {
    v19 = objc_msgSend_record(self, v16, v17);
    objc_msgSend_setShare_(v19, v18, 0);
  }
}

- (void)fetchSharePCSData
{
  v60 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, v2) != 1)
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKDModifyShareHandler.m", 132, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler fetchSharePCSData]", self, "CKDModifyRecordHandlerStateNeedSharePCSData");
  }

  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(v7, v8, v9);
  dispatch_group_enter(v10);

  objc_initWeak(&location, self);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 1;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_225074070;
  v53[4] = sub_2250735C4;
  v54 = 0;
  v13 = objc_msgSend_share(self, v11, v12);
  v14 = dispatch_group_create();
  v19 = objc_msgSend_invitedProtectionData(v13, v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_publicProtectionData(v13, v17, v18);
    v21 = v20 == 0;

    if (!v21)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_shareID(self, v23, v24);
        *buf = 138412290;
        v59 = v25;
        _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Share %@ already has PCS data. Decrypting it.", buf, 0xCu);
      }

      dispatch_group_enter(v14);
      v28 = objc_msgSend_pcsManager(self, v26, v27);
      v31 = objc_msgSend_share(self, v29, v30);
      v34 = objc_msgSend_topmostParentOperation(v7, v32, v33);
      v37 = objc_msgSend_operationID(v34, v35, v36);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_2252103F4;
      v48[3] = &unk_27854A450;
      objc_copyWeak(&v52, &location);
      v51 = v55;
      v50 = v53;
      v48[4] = self;
      v49 = v14;
      objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v28, v38, v31, v37, v48);

      objc_destroyWeak(&v52);
    }
  }

  v39 = objc_msgSend_modifyRecordsQueue(v7, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225210630;
  block[3] = &unk_27854A4F0;
  objc_copyWeak(&v47, &location);
  v46 = v53;
  v44 = v7;
  v45 = v55;
  v40 = v7;
  dispatch_group_notify(v14, v39, block);

  objc_destroyWeak(&v47);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(v55, 8);
  objc_destroyWeak(&location);
}

- (void)_fetchSharePCSData
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_stateTransitionGroup(v4, v5, v6);
  dispatch_group_enter(v7);

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_225074070;
  v35[4] = sub_2250735C4;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_225074070;
  v33[4] = sub_2250735C4;
  v34 = 0;
  objc_initWeak(&location, self);
  v8 = dispatch_group_create();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_shareID(self, v10, v11);
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Fetching PCS data for share %@", buf, 0xCu);
  }

  dispatch_group_enter(v8);
  v15 = objc_msgSend_pcsCache(self, v13, v14);
  v18 = objc_msgSend_shareID(self, v16, v17);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_225210A44;
  v26[3] = &unk_27854A450;
  objc_copyWeak(&v31, &location);
  v19 = v8;
  v27 = v19;
  selfCopy = self;
  v29 = v33;
  v30 = v35;
  objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v15, v20, v18, v4, 0, v26);

  v23 = objc_msgSend_modifyRecordsQueue(v4, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225211770;
  block[3] = &unk_27854A478;
  objc_copyWeak(&v25, &location);
  block[4] = v35;
  block[5] = v33;
  dispatch_group_notify(v19, v23, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&location);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
}

- (void)createSharePCSDataWithKRS:(id)s
{
  v63 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_225074070;
  v57 = sub_2250735C4;
  v52 = 0;
  v6 = objc_msgSend__createNewSharePCSDataWithError_(self, v5, &v52);
  v7 = v52;
  v58 = v6;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_container(v10, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v19 = objc_msgSend_pcsServiceName(v16, v17, v18);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v22 = objc_msgSend_unitTestOverrides(v10, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"FailSharePCSWithoutKRSWithError");
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = objc_msgSend_unitTestOverrides(v10, v20, v21);
      v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"FailSharePCSWithoutKRSWithError");

      v7 = v28;
    }
  }

  if (v7)
  {
    if (objc_msgSend_code(v7, v20, v21) == 5000)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = objc_msgSend_shareID(self, v30, v31);
        *buf = 138412546;
        v60 = v32;
        v61 = 2114;
        v62 = v19;
        _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Failed to create new share PCS. Attempting KRS for share %@ with service name %{public}@.", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v35 = objc_msgSend_container(v10, v33, v34);
      v38 = objc_msgSend_pcsManager(v35, v36, v37);
      v41 = objc_msgSend_serviceType(self, v39, v40);
      v44 = objc_msgSend_operationID(v10, v42, v43);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_225211C08;
      v46[3] = &unk_27854A4A0;
      objc_copyWeak(&v51, buf);
      v47 = v10;
      v48 = v19;
      v49 = sCopy;
      v50 = &v53;
      objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v38, v45, v41, 0, 0, 1, 0x28387E900, v44, v46);

      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);
    }

    else
    {
      (*(sCopy + 2))(sCopy, 0, v7);
    }
  }

  else
  {
    (*(sCopy + 2))(sCopy, v54[5], 0);
  }

  _Block_object_dispose(&v53, 8);
}

- (void)_fetchRootRecordPublicSharingIdentityWithCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_rootRecordID(v7, v8, v9);

  v11 = *MEMORY[0x277CBC878];
  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = v12;
      v30 = objc_msgSend_share(self, v28, v29);
      v33 = objc_msgSend_rootRecordID(v30, v31, v32);
      *buf = 138412290;
      v41 = v33;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Fetching public sharing identity for root record %@", buf, 0xCu);
    }

    v15 = objc_msgSend_pcsCache(self, v13, v14);
    v18 = objc_msgSend_share(self, v16, v17);
    v21 = objc_msgSend_rootRecordID(v18, v19, v20);
    v24 = objc_msgSend_operation(self, v22, v23);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2252121F0;
    v38[3] = &unk_278549CB8;
    v39 = handlerCopy;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v15, v25, v21, v24, 0, v38);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v34 = v26;
      v37 = objc_msgSend_shareID(self, v35, v36);
      *buf = 138412290;
      v41 = v37;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Share %@ has no root record ID, so we'll generate a new PSI for the share", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)_createNewSharePCSDataWithError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v6 = objc_msgSend_operation(self, a2, error);
    v9 = objc_msgSend_unitTestOverrides(v6, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"DisallowSharePCSToBeCreated");

    if (v11)
    {
      v79 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, error);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v79, v80, a2, self, @"CKDModifyShareHandler.m", 328, @"Share PCS creation not allowed by unit test");
    }
  }

  v12 = objc_msgSend_share(self, a2, error);
  v15 = objc_msgSend_operation(self, v13, v14);
  if (objc_msgSend_databaseScope(v15, v16, v17) != 2 && objc_msgSend_databaseScope(v15, v18, v19) != 3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Someone is trying to save a share in the public database. That's not going to go very well.", buf, 2u);
    }

    v50 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v55, *MEMORY[0x277CBC120], 5005, @"Can't save a share in the public database");
    v29 = 0;
    goto LABEL_30;
  }

  v20 = objc_msgSend_container(v15, v18, v19);
  v23 = objc_msgSend_cachedEnvironment(v20, v21, v22);

  v26 = objc_msgSend_mutableEncryptedPSK(v12, v24, v25);
  v29 = objc_msgSend_data(v26, v27, v28);

  v30 = MEMORY[0x277CBC878];
  v31 = *MEMORY[0x277CBC878];
  v32 = MEMORY[0x277CBC880];
  if (v29)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v31);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v36 = v33;
      v39 = objc_msgSend_recordID(v12, v37, v38);
      *buf = 138412546;
      v85 = v39;
      v86 = 2112;
      v87 = v29;
      _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "Using passed in data to create a public sharing identity for %@: %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v31);
  }

  v40 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v43 = v40;
    v46 = objc_msgSend_recordID(v12, v44, v45);
    *buf = 138412290;
    v85 = v46;
    _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Creating a new random sharing identity for share %@", buf, 0xCu);
  }

  v47 = objc_msgSend_pcsManager(self, v41, v42);
  v83 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v47, v48, &v83);
  v50 = v83;

  if (RandomSharingIdentityWithError)
  {
    v51 = objc_msgSend_pcsManager(self, v34, v35);
    v82 = v50;
    v29 = objc_msgSend_dataFromSharingIdentity_error_(v51, v52, RandomSharingIdentityWithError, &v82);
    v53 = v82;

    v30 = MEMORY[0x277CBC878];
    CFRelease(RandomSharingIdentityWithError);
    v50 = v53;
    v32 = MEMORY[0x277CBC880];
  }

  else
  {
    v29 = 0;
  }

  if (v50)
  {
LABEL_30:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v70 = v68;
      v73 = objc_msgSend_recordID(v12, v71, v72);
      *buf = 138412546;
      v85 = v73;
      v86 = 2112;
      v87 = v50;
      _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Error creating PCS data for share %@: %@", buf, 0x16u);

      if (error)
      {
        goto LABEL_34;
      }
    }

    else if (error)
    {
LABEL_34:
      v69 = v50;
      v62 = 0;
      *error = v50;
      goto LABEL_37;
    }

    v62 = 0;
    goto LABEL_37;
  }

LABEL_24:
  v56 = v23 > 0;
  v57 = objc_msgSend_pcsManager(self, v34, v35);
  v60 = objc_msgSend_recordID(v12, v58, v59);
  v81 = 0;
  v62 = objc_msgSend_createNewSharePCSDataForShareWithID_withPublicSharingKey_addDebugIdentity_error_(v57, v61, v60, v29, v56, &v81);
  v50 = v81;

  if (!v62)
  {
    goto LABEL_30;
  }

  if (*v32 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v30);
  }

  v63 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    if (!v29)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v75 = v63;
  v78 = objc_msgSend_recordID(v12, v76, v77);
  *buf = 138412290;
  v85 = v78;
  _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Successfully created PCS data for share %@", buf, 0xCu);

  if (v29)
  {
LABEL_29:
    v64 = objc_alloc(MEMORY[0x277CBC2E8]);
    v66 = objc_msgSend_initWithData_(v64, v65, v29);
    objc_msgSend_setMutableEncryptedPSK_(v12, v67, v66);
  }

LABEL_37:

  return v62;
}

- (id)_handleSharePCSData:(id)data zonePCSData:(id)sData
{
  v140 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sDataCopy = sData;
  if (objc_msgSend_pcs(dataCopy, v8, v9) && objc_msgSend_publicPCS(dataCopy, v10, v11))
  {
    v14 = objc_msgSend_pcsManager(self, v12, v13);
    v17 = objc_msgSend_publicPCS(dataCopy, v15, v16);
    v133 = 0;
    v19 = objc_msgSend_sharingIdentityDataFromPCS_error_(v14, v18, v17, &v133);
    v20 = v133;

    if (!v19 || v20)
    {
      if (!v20)
      {
        v86 = MEMORY[0x277CBC560];
        v87 = *MEMORY[0x277CBC120];
        v88 = objc_msgSend_shareID(self, v21, v22);
        v20 = objc_msgSend_errorWithDomain_code_format_(v86, v89, v87, 5000, @"Couldn't create a public sharing identity for share %@", v88);
      }

      v53 = v20;
      v52 = v53;
      goto LABEL_36;
    }

    v23 = objc_msgSend_share(self, v21, v22);
    v26 = objc_msgSend_publicSharingIdentity(v23, v24, v25);
    if (v26)
    {
      v29 = v26;
      v30 = objc_msgSend_share(self, v27, v28);
      v33 = objc_msgSend_publicSharingIdentity(v30, v31, v32);
      isEqual = objc_msgSend_isEqual_(v33, v34, v19);

      if ((isEqual & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v36 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v123 = v36;
          v126 = objc_msgSend_shareID(self, v124, v125);
          v129 = objc_msgSend_share(self, v127, v128);
          v132 = objc_msgSend_publicSharingIdentity(v129, v130, v131);
          *buf = 138412802;
          v135 = v126;
          v136 = 2114;
          v137 = v132;
          v138 = 2114;
          v139 = v19;
          _os_log_error_impl(&dword_22506F000, v123, OS_LOG_TYPE_ERROR, "Public sharing identity on share %@ is different. Expected %{public}@, got %{public}@", buf, 0x20u);
        }

        v39 = MEMORY[0x277CBC560];
        v40 = *MEMORY[0x277CBC120];
        v41 = objc_msgSend_shareID(self, v37, v38);
        v44 = objc_msgSend_share(self, v42, v43);
        v47 = objc_msgSend_mutableEncryptedPSK(v44, v45, v46);
        v50 = objc_msgSend_data(v47, v48, v49);
        v52 = objc_msgSend_errorWithDomain_code_format_(v39, v51, v40, 5000, @"Public sharing identity on share %@ is different. Expected %@, got %@", v41, v50, v19);

        v53 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v90 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v91 = v90;
      v94 = objc_msgSend_shareID(self, v92, v93);
      *buf = 138412290;
      v135 = v94;
      _os_log_impl(&dword_22506F000, v91, OS_LOG_TYPE_INFO, "Fetched pcs info for share %@", buf, 0xCu);
    }

    v95 = objc_alloc(MEMORY[0x277CBC2E8]);
    v97 = objc_msgSend_initWithData_(v95, v96, v19);
    v100 = objc_msgSend_share(self, v98, v99);
    objc_msgSend_setMutableEncryptedPSK_(v100, v101, v97);

    v104 = objc_msgSend_share(self, v102, v103);
    v107 = objc_msgSend_operation(self, v105, v106);
    v110 = objc_msgSend_container(v107, v108, v109);
    v113 = objc_msgSend_deviceContext(v110, v111, v112);
    v116 = objc_msgSend_testDeviceReference(v113, v114, v115);
    objc_msgSend_setSharePCSData_isUnitTestAccount_(v104, v117, dataCopy, v116 != 0);

    objc_msgSend_setSharePCSData_(self, v118, dataCopy);
    v53 = 0;
    v52 = 0;
    goto LABEL_36;
  }

  v54 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v55 = MEMORY[0x277CBC858];
  v56 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v59 = v56;
    v62 = objc_msgSend_shareID(self, v60, v61);
    *buf = 138412802;
    v135 = v62;
    v136 = 2114;
    v137 = &stru_28385ED00;
    v138 = 2112;
    v139 = &stru_28385ED00;
    _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Warn: Can't save share %@ if we have no PCS data for it%{public}@%@", buf, 0x20u);
  }

  if (!objc_msgSend_pcs(dataCopy, v57, v58))
  {
    if (*v54 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v66 = v65;
      v69 = objc_msgSend_shareID(self, v67, v68);
      *buf = 138412290;
      v135 = v69;
      _os_log_impl(&dword_22506F000, v66, OS_LOG_TYPE_INFO, "Warn: Private PCS data for share %@ is nil", buf, 0xCu);
    }
  }

  if (!objc_msgSend_publicPCS(dataCopy, v63, v64))
  {
    if (*v54 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v73 = v72;
      v76 = objc_msgSend_shareID(self, v74, v75);
      *buf = 138412290;
      v135 = v76;
      _os_log_impl(&dword_22506F000, v73, OS_LOG_TYPE_INFO, "Warn: Public PCS data for share %@ is nil", buf, 0xCu);
    }
  }

  v77 = MEMORY[0x277CBC560];
  v78 = *MEMORY[0x277CBC120];
  v53 = objc_msgSend_shareID(self, v70, v71);
  v81 = objc_msgSend_publicPCS(dataCopy, v79, v80);
  v84 = objc_msgSend_pcs(dataCopy, v82, v83);
  v52 = objc_msgSend_errorWithDomain_code_format_(v77, v85, v78, 5005, @"Can't save share %@ because we're missing PCS data. Public PCS: %@, Private PCS: %@", v53, v81, v84);
LABEL_37:

  if (!v52 && objc_msgSend_pcs(sDataCopy, v119, v120))
  {
    objc_msgSend_setSharedZonePCSData_(self, v121, sDataCopy);
  }

  return v52;
}

- (void)_prepareDependentPCSUpdateIfNeededForShareWithSharePCS:(id)s error:(id)error
{
  sCopy = s;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_225074070;
  v53 = sub_2250735C4;
  errorCopy = error;
  v54 = errorCopy;
  v10 = objc_msgSend_shareID(self, v8, v9);
  v13 = objc_msgSend_zoneID(v10, v11, v12);

  v16 = objc_msgSend_operation(self, v14, v15);
  objc_initWeak(&location, self);
  v17 = dispatch_group_create();
  v20 = objc_msgSend_stateTransitionGroup(v16, v18, v19);
  dispatch_group_enter(v20);

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_225074070;
  v46[4] = sub_2250735C4;
  v47 = 0;
  if (!v50[5])
  {
    v23 = objc_msgSend_share(self, v21, v22);
    isZoneWideShare = objc_msgSend_isZoneWideShare(v23, v24, v25);

    if (isZoneWideShare)
    {
      dispatch_group_enter(v17);
      v29 = objc_msgSend_pcsCache(self, v27, v28);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2252132F0;
      v38[3] = &unk_27854A4C8;
      objc_copyWeak(&v45, &location);
      v39 = v13;
      selfCopy = self;
      v41 = sCopy;
      v43 = v46;
      v44 = &v49;
      v42 = v17;
      objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v29, v30, v39, v16, 0, v38);

      objc_destroyWeak(&v45);
    }
  }

  v31 = objc_msgSend_modifyRecordsQueue(v16, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22521368C;
  block[3] = &unk_27854A4F0;
  objc_copyWeak(&v37, &location);
  v34 = sCopy;
  v35 = &v49;
  v36 = v46;
  v32 = sCopy;
  dispatch_group_notify(v17, v31, block);

  objc_destroyWeak(&v37);
  _Block_object_dispose(v46, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v49, 8);
}

- (void)prepareForSaveWithCompletionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (objc_msgSend_state(self, v5, v6) != 5)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKDModifyShareHandler.m", 485, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler prepareForSaveWithCompletionHandler:]", self, "CKDModifyRecordHandlerStateNeedRecordPrepareForUpload");
  }

  if ((objc_msgSend_isDelete(self, v7, v8) & 1) == 0)
  {
    v11 = objc_msgSend_operation(self, v9, v10);
    v14 = objc_msgSend_container(v11, v12, v13);
    v17 = objc_msgSend_containerID(v14, v15, v16);
    if (objc_msgSend_isAppleInternal(v17, v18, v19))
    {
      v20 = *MEMORY[0x277CBC810];

      if ((v20 & 1) == 0)
      {
LABEL_33:
        objc_initWeak(buf, self);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_225213D70;
        v50[3] = &unk_27854A540;
        objc_copyWeak(&v52, buf);
        v50[4] = self;
        v51 = handlerCopy;
        objc_msgSend_decryptSelfParticipantPCSWithCompletionHandler_(self, v45, v50);

        objc_destroyWeak(&v52);
        objc_destroyWeak(buf);
        goto LABEL_34;
      }
    }

    else
    {
    }

    v23 = objc_msgSend_share(self, v21, v22);
    v26 = objc_msgSend_allParticipants(v23, v24, v25);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v27 = v26;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v54, v62, 16);
    if (v31)
    {
      v32 = *v55;
      do
      {
        v33 = 0;
        do
        {
          if (*v55 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v54 + 1) + 8 * v33);
          if (objc_msgSend_role(v34, v29, v30) == 3 && objc_msgSend_originalParticipantRole(v34, v29, v30) == 3)
          {
            v35 = objc_msgSend_pcsManager(self, v29, v30);
            v38 = objc_msgSend_share(self, v36, v37);
            v53 = 0;
            v40 = objc_msgSend_invitedPCSPermissionForParticipant_inShare_error_(v35, v39, v34, v38, &v53);
            v41 = v53;

            if (v41)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v42 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v59 = v34;
                v60 = 2112;
                v61 = v41;
                _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to determine PCS permission for %@: %@", buf, 0x16u);
              }
            }

            else if (!v40)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v43 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v59 = v34;
                _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Promoting participant %@ to administrator.", buf, 0xCu);
              }

              objc_msgSend_setRole_(v34, v44, 2);
            }
          }

          ++v33;
        }

        while (v31 != v33);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v54, v62, 16);
      }

      while (v31);
    }

    goto LABEL_33;
  }

  if (objc_msgSend_state(self, v9, v10) == 5)
  {
    v49.receiver = self;
    v49.super_class = CKDModifyShareHandler;
    [(CKDModifyRecordHandler *)&v49 prepareForSaveWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2]();
  }

LABEL_34:
}

- (void)decryptSelfParticipantPCSWithCompletionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_currentUserParticipant(v7, v8, v9);

  if (objc_msgSend_role(v10, v11, v12) == 1 || objc_msgSend_role(v10, v13, v14) == 2)
  {
    v15 = objc_msgSend_protectionInfo(v10, v13, v14);
    v18 = objc_msgSend_length(v15, v16, v17);

    if (v18)
    {
      objc_initWeak(location, self);
      v21 = objc_msgSend_userIdentity(v10, v19, v20);
      v24 = objc_msgSend_publicKeyVersion(v21, v22, v23);

      v27 = objc_msgSend_pcsManager(self, v25, v26);
      v30 = objc_msgSend_protectionInfo(v10, v28, v29);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_225214638;
      v40[3] = &unk_27854A568;
      objc_copyWeak(&v43, location);
      v41 = v10;
      v42 = handlerCopy;
      objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v27, v31, v30, 4, 2 * (v24 < 3), v40);

      objc_destroyWeak(&v43);
      objc_destroyWeak(location);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        v36 = objc_msgSend_participantID(v10, v34, v35);
        v39 = objc_msgSend_shareID(self, v37, v38);
        *location = 138543618;
        *&location[4] = v36;
        v45 = 2114;
        v46 = v39;
        _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Current participant %{public}@ does not have a protection info on share %{public}@, possibly due to owner adding themselves for the first time", location, 0x16u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)_rollShareAndZonePCSIfNeededForSharePCS:(id)s zonePCSData:(id)data
{
  v84 = *MEMORY[0x277D85DE8];
  sCopy = s;
  dataCopy = data;
  v10 = objc_msgSend_share(self, v8, v9);
  v13 = objc_msgSend_operation(self, v11, v12);
  v16 = v13;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_unitTestOverrides(v13, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"ShouldRollSharePCSOnFetch");
    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_invitedKeysToRemove(v10, v14, v15);
  v24 = objc_msgSend_count(v21, v22, v23);

  v27 = objc_msgSend_removedParticipants(v10, v25, v26);
  v30 = objc_msgSend_count(v27, v28, v29);

  if (!v20 && !v24 && !v30)
  {
    goto LABEL_23;
  }

  v33 = objc_msgSend_share(self, v31, v32);
  if ((objc_msgSend_isZoneWideShare(v33, v34, v35) & 1) == 0)
  {

LABEL_23:
    v55 = 0;
    goto LABEL_24;
  }

  v38 = objc_msgSend_currentUserParticipant(v10, v36, v37);
  v41 = objc_msgSend_role(v38, v39, v40);

  if (v41 != 1)
  {
    goto LABEL_23;
  }

  v42 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = MEMORY[0x277CBC830];
  v44 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    log = v44;
    v74 = objc_msgSend_operationID(v16, v69, v70);
    objc_msgSend_recordID(v10, v71, v72);
    *buf = 138544130;
    v77 = v74;
    v79 = v78 = 2112;
    v73 = v79;
    v80 = 2048;
    v81 = v24;
    v82 = 2048;
    v83 = v30;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Operation %{public}@ needs to key roll for zone-wide share %@ due to %tu invited keys to remove and %tu removed participants", buf, 0x2Au);
  }

  v47 = objc_msgSend_pcsManager(self, v45, v46);
  canRollShareKeys = objc_msgSend_canRollShareKeys(v47, v48, v49);

  if (!canRollShareKeys)
  {
    goto LABEL_23;
  }

  v53 = objc_msgSend_pcsManager(self, v51, v52);
  v55 = objc_msgSend_keyRollForZoneWideShareWithZonePCS_sharePCS_forOperation_(v53, v54, dataCopy, sCopy, v16);

  objc_msgSend_setDidAttemptZoneWideShareKeyRoll_(self, v56, 1);
  if (*v42 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v57 = *v43;
  if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
  {
    v58 = v57;
    v61 = objc_msgSend_operationID(v16, v59, v60);
    v64 = objc_msgSend_recordID(v10, v62, v63);
    v65 = v64;
    v66 = @" error: ";
    *buf = 138413058;
    v67 = &stru_28385ED00;
    v77 = v61;
    v78 = 2112;
    if (!v55)
    {
      v66 = &stru_28385ED00;
    }

    v79 = v64;
    if (v55)
    {
      v67 = v55;
    }

    v80 = 2114;
    v81 = v66;
    v82 = 2112;
    v83 = v67;
    _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Operation %@ did attempt a key roll for zone-wide share %@%{public}@%@", buf, 0x2Au);
  }

LABEL_24:

  return v55;
}

- (void)_alignParticipantPermissions
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_share(self, a2, v2);
  v6 = objc_msgSend_currentUserParticipant(v3, v4, v5);
  if (objc_msgSend_role(v6, v7, v8) == 1)
  {
  }

  else
  {
    v13 = objc_msgSend_currentUserParticipant(v3, v9, v10);
    v16 = objc_msgSend_role(v13, v14, v15);

    if (v16 != 2)
    {
      goto LABEL_20;
    }
  }

  if (objc_msgSend_publicPermission(v3, v11, v12) >= 2)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = objc_msgSend_participants(v3, v17, v18);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v58, v72, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v59;
      v25 = MEMORY[0x277CBC880];
      v26 = MEMORY[0x277CBC830];
      v54 = *v59;
      do
      {
        v27 = 0;
        v56 = v23;
        do
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v58 + 1) + 8 * v27);
          if (objc_msgSend_role(v28, v21, v22) == 3 || objc_msgSend_role(v28, v29, v30) == 2)
          {
            if (*v25 != -1)
            {
              dispatch_once(v25, *MEMORY[0x277CBC878]);
            }

            v31 = *v26;
            if (os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
            {
              v34 = v31;
              objc_msgSend_role(v28, v35, v36);
              v37 = CKStringFromParticipantRole();
              v40 = objc_msgSend_participantID(v28, v38, v39);
              objc_msgSend_permission(v28, v41, v42);
              v43 = CKStringFromParticipantPermission();
              objc_msgSend_publicPermission(v3, v44, v45);
              CKStringFromParticipantPermission();
              v47 = v46 = v3;
              objc_msgSend_shareID(self, v48, v49);
              v51 = v50 = v25;
              *buf = 138413314;
              v63 = v37;
              v64 = 2112;
              v65 = v40;
              v66 = 2114;
              v67 = v43;
              v68 = 2114;
              v69 = v47;
              v70 = 2112;
              v71 = v51;
              _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Updating permission for %@ participant %@ from %{public}@ -> %{public}@ to match the public permission on share %@", buf, 0x34u);

              v25 = v50;
              v3 = v46;
              v24 = v54;
              v26 = MEMORY[0x277CBC830];

              v23 = v56;
            }

            v52 = objc_msgSend_publicPermission(v3, v32, v33);
            objc_msgSend_setPermission_(v28, v53, v52);
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v58, v72, 16);
      }

      while (v23);
    }
  }

LABEL_20:
}

- (BOOL)_serializePCSDataForShareWithError:(id *)error
{
  v277 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_share(self, a2, error);
  v8 = objc_msgSend_currentUserParticipant(v5, v6, v7);

  if (objc_msgSend_role(v8, v9, v10) == 1 || objc_msgSend_role(v8, v11, v12) == 2)
  {
    v13 = objc_msgSend_pcsManager(self, v11, v12);
    v16 = objc_msgSend_share(self, v14, v15);
    v19 = objc_msgSend_privatePCS(v16, v17, v18);
    v272 = 0;
    v21 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v13, v20, v19, 5, &v272);
    v22 = v272;

    if (!v21 || v22)
    {
      if (!v22)
      {
        v31 = MEMORY[0x277CBC560];
        v32 = *MEMORY[0x277CBC120];
        v33 = objc_msgSend_shareID(self, v23, v24);
        v22 = objc_msgSend_errorWithDomain_code_format_(v31, v34, v32, 5002, @"Couldn't serialize private share PCS for share %@: %@", v33, 0);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v36 = v35;
        v39 = objc_msgSend_shareID(self, v37, v38);
        *buf = 138412546;
        v274 = v39;
        v275 = 2112;
        v276 = v22;
        _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "Warn: Couldn't serialize private share PCS for share %@: %@", buf, 0x16u);
      }

      v40 = 0;
      v41 = 0;
      goto LABEL_43;
    }

    v25 = objc_msgSend_share(self, v23, v24);
    objc_msgSend_setInvitedProtectionData_(v25, v26, v21);

    v29 = objc_msgSend_sharePCSData(self, v27, v28);
    objc_msgSend_setPcsData_(v29, v30, v21);
  }

  else
  {
    v21 = 0;
  }

  v42 = objc_msgSend_pcsManager(self, v11, v12);
  v45 = objc_msgSend_share(self, v43, v44);
  v48 = objc_msgSend_privatePCS(v45, v46, v47);
  v271 = 0;
  v41 = objc_msgSend_etagFromSharePCS_error_(v42, v49, v48, &v271);
  v22 = v271;

  if (!v41 || v22)
  {
    if (!v22)
    {
      v129 = MEMORY[0x277CBC560];
      v130 = *MEMORY[0x277CBC120];
      v131 = objc_msgSend_shareID(self, v50, v51);
      v22 = objc_msgSend_errorWithDomain_code_format_(v129, v132, v130, 5002, @"Couldn't create a PCS etag for share %@: %@", v131, 0);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v133 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v134 = v133;
      v137 = objc_msgSend_shareID(self, v135, v136);
      *buf = 138412546;
      v274 = v137;
      v275 = 2112;
      v276 = v22;
      _os_log_impl(&dword_22506F000, v134, OS_LOG_TYPE_INFO, "Warn: Couldn't create a PCS etag for share %@: %@", buf, 0x16u);
    }

    v40 = 0;
LABEL_43:
    v78 = 0;
    goto LABEL_44;
  }

  v52 = objc_msgSend_share(self, v50, v51);
  objc_msgSend_setInvitedProtectionEtag_(v52, v53, v41);

  v56 = objc_msgSend_sharePCSData(self, v54, v55);
  objc_msgSend_setEtag_(v56, v57, v41);

  v60 = objc_msgSend_share(self, v58, v59);
  v63 = objc_msgSend_privatePCS(v60, v61, v62);
  v66 = objc_msgSend_sharePCSData(self, v64, v65);
  objc_msgSend_setInvitedPCS_(v66, v67, v63);

  v70 = objc_msgSend_pcsManager(self, v68, v69);
  v73 = objc_msgSend_share(self, v71, v72);
  v76 = objc_msgSend_publicPCS(v73, v74, v75);
  v270 = 0;
  v78 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v70, v77, v76, 0, &v270);
  v22 = v270;

  if (!v78 || v22)
  {
    if (!v22)
    {
      v142 = MEMORY[0x277CBC560];
      v143 = *MEMORY[0x277CBC120];
      v144 = objc_msgSend_shareID(self, v79, v80);
      v22 = objc_msgSend_errorWithDomain_code_format_(v142, v145, v143, 5002, @"Couldn't serialize public share PCS for share %@: %@", v144, 0);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v146 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v147 = v146;
      v150 = objc_msgSend_shareID(self, v148, v149);
      *buf = 138412546;
      v274 = v150;
      v275 = 2112;
      v276 = v22;
      _os_log_impl(&dword_22506F000, v147, OS_LOG_TYPE_INFO, "Warn: Couldn't serialize public share PCS for share %@: %@", buf, 0x16u);
    }

    v40 = 0;
  }

  else
  {
    v81 = objc_msgSend_pcsManager(self, v79, v80);
    v84 = objc_msgSend_share(self, v82, v83);
    v87 = objc_msgSend_publicPCS(v84, v85, v86);
    v269 = 0;
    v40 = objc_msgSend_etagFromSharePCS_error_(v81, v88, v87, &v269);
    v22 = v269;

    if (!v40 || v22)
    {
      if (!v22)
      {
        v151 = MEMORY[0x277CBC560];
        v152 = *MEMORY[0x277CBC120];
        v153 = objc_msgSend_shareID(self, v89, v90);
        v22 = objc_msgSend_errorWithDomain_code_format_(v151, v154, v152, 5002, @"Couldn't create a public PCS etag for share %@: %@", v153, 0);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v155 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v156 = v155;
        v159 = objc_msgSend_shareID(self, v157, v158);
        *buf = 138412546;
        v274 = v159;
        v275 = 2112;
        v276 = v22;
        _os_log_impl(&dword_22506F000, v156, OS_LOG_TYPE_INFO, "Warn: Couldn't create a public PCS etag for share %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v91 = objc_msgSend_sharedZonePCSData(self, v89, v90);
      if (!objc_msgSend_pcs(v91, v92, v93))
      {
LABEL_89:

        goto LABEL_90;
      }

      v96 = objc_msgSend_role(v8, v94, v95);

      if (v96 != 1)
      {
LABEL_90:
        v221 = objc_msgSend_share(self, v97, v98);
        objc_msgSend_setPublicProtectionData_(v221, v222, v78);

        v225 = objc_msgSend_share(self, v223, v224);
        objc_msgSend_setPublicProtectionEtag_(v225, v226, v40);

        v229 = objc_msgSend_share(self, v227, v228);
        v232 = objc_msgSend_publicPCS(v229, v230, v231);
        v235 = objc_msgSend_sharePCSData(self, v233, v234);
        objc_msgSend_setPublicPCS_(v235, v236, v232);

        v239 = objc_msgSend_sharePCSData(self, v237, v238);
        objc_msgSend_setPublicPCSData_(v239, v240, v78);

        v243 = objc_msgSend_sharePCSData(self, v241, v242);
        objc_msgSend_setPublicPCSEtag_(v243, v244, v40);

        v140 = 1;
        goto LABEL_91;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v99 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v250 = v99;
        v253 = objc_msgSend_shareID(self, v251, v252);
        *buf = 138412290;
        v274 = v253;
        _os_log_debug_impl(&dword_22506F000, v250, OS_LOG_TYPE_DEBUG, "Serializing zone PCS for plugin-field update to create zone-wide share %@", buf, 0xCu);
      }

      v265 = objc_msgSend_pcsManager(self, v100, v101);
      v104 = objc_msgSend_sharedZonePCSData(self, v102, v103);
      v107 = objc_msgSend_pcs(v104, v105, v106);
      v268 = 0;
      v109 = objc_msgSend_dataFromZonePCS_error_(v265, v108, v107, &v268);
      v22 = v268;

      v266 = v109;
      if (!v109 || v22)
      {
        if (!v22)
        {
          v164 = MEMORY[0x277CBC560];
          v165 = *MEMORY[0x277CBC120];
          v166 = objc_msgSend_shareID(self, v110, v111);
          v22 = objc_msgSend_errorWithDomain_code_format_(v164, v167, v165, 5002, @"Couldn't serialize zone update PCS for share %@: %@", v166, 0);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v168 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v274 = v22;
          _os_log_error_impl(&dword_22506F000, v168, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS trying to create zone-wide share: %@", buf, 0xCu);
        }
      }

      else
      {
        v112 = objc_msgSend_sharedZonePCSData(self, v110, v111);
        v115 = objc_msgSend_zoneishPCS(v112, v113, v114);

        if (!v115)
        {
          v263 = 0;
          goto LABEL_75;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v116 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v254 = v116;
          v257 = objc_msgSend_shareID(self, v255, v256);
          *buf = 138412290;
          v274 = v257;
          _os_log_debug_impl(&dword_22506F000, v254, OS_LOG_TYPE_DEBUG, "Serializing zoneish PCS for plugin-field update to create zone-wide share %@", buf, 0xCu);
        }

        v262 = objc_msgSend_pcsManager(self, v117, v118);
        v121 = objc_msgSend_sharedZonePCSData(self, v119, v120);
        v124 = objc_msgSend_zoneishPCS(v121, v122, v123);
        v267 = 0;
        v126 = objc_msgSend_dataFromRecordPCS_error_(v262, v125, v124, &v267);
        v22 = v267;

        if (v126 && !v22)
        {
          v263 = v126;
LABEL_75:
          v169 = objc_alloc(MEMORY[0x277CBC5E8]);
          v172 = objc_msgSend_shareID(self, v170, v171);
          v175 = objc_msgSend_zoneID(v172, v173, v174);
          v177 = objc_msgSend_initWithZoneID_(v169, v176, v175);

          v179 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v178, v266);
          objc_msgSend_setProtectionData_(v177, v180, v266);
          v259 = v179;
          objc_msgSend_setProtectionEtag_(v177, v181, v179);
          objc_msgSend_setZoneishProtectionData_(v177, v182, v263);
          v185 = objc_msgSend_operation(self, v183, v184);
          v188 = objc_msgSend_translator(v185, v186, v187);
          v260 = v177;
          v190 = objc_msgSend_pRecordZoneFromRecordZone_(v188, v189, v177);

          v193 = objc_msgSend_share(self, v191, v192);
          v198 = objc_msgSend_pluginFields(v193, v194, v195);
          v261 = v190;
          if (v198)
          {
            v199 = objc_msgSend_share(self, v196, v197);
            objc_msgSend_pluginFields(v199, v200, v201);
            v258 = v198;
            v203 = v202 = v193;
            v206 = objc_msgSend_mutableCopy(v203, v204, v205);

            v193 = v202;
            v198 = v258;

            v190 = v261;
          }

          else
          {
            v206 = objc_opt_new();
          }

          v213 = objc_msgSend_data(v190, v211, v212);
          objc_msgSend_setObject_forKeyedSubscript_(v206, v214, v213, @"___zoneUpdateData");

          v91 = v263;
          if (*MEMORY[0x277CBC810] == 1)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v206, v215, v266, @"_rawZonePCSUpdateByes");
            objc_msgSend_setObject_forKeyedSubscript_(v206, v217, v259, @"_rawZonePCSUpdateEtag");
            objc_msgSend_setObject_forKeyedSubscript_(v206, v218, v263, @"_rawZoneishPCSUpdateByes");
          }

          v219 = objc_msgSend_share(self, v215, v216);
          objc_msgSend_setPluginFields_(v219, v220, v206);

          goto LABEL_89;
        }

        if (!v22)
        {
          v264 = MEMORY[0x277CBC560];
          v207 = *MEMORY[0x277CBC120];
          v208 = objc_msgSend_shareID(self, v127, v128);
          v22 = objc_msgSend_errorWithDomain_code_format_(v264, v209, v207, 5002, @"Couldn't serialize zoneish update PCS for share %@: %@", v208, 0);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v210 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v274 = v22;
          _os_log_error_impl(&dword_22506F000, v210, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS trying to create zone-wide share: %@", buf, 0xCu);
        }
      }
    }
  }

LABEL_44:
  if (error && v22)
  {
    v138 = v22;
    *error = v22;
  }

  else if (!v22)
  {
    v140 = 0;
LABEL_91:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v245 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v246 = v245;
      v249 = objc_msgSend_shareID(self, v247, v248);
      *buf = 138412290;
      v274 = v249;
      _os_log_impl(&dword_22506F000, v246, OS_LOG_TYPE_INFO, "Successfully serialized PCS data for share %@", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v139 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v160 = v139;
    v163 = objc_msgSend_shareID(self, v161, v162);
    *buf = 138412546;
    v274 = v163;
    v275 = 2112;
    v276 = v22;
    _os_log_error_impl(&dword_22506F000, v160, OS_LOG_TYPE_ERROR, "Failed to serialize PCS data for share %@: %@", buf, 0x16u);
  }

  v140 = 0;
LABEL_53:

  return v140;
}

- (BOOL)_updateSharePublicPCSWithError:(id *)error
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_pcsManager(self, a2, error);
  v8 = objc_msgSend_share(self, v6, v7);
  v11 = objc_msgSend_privatePCS(v8, v9, v10);
  v14 = objc_msgSend_share(self, v12, v13);
  v17 = objc_msgSend_publicPCS(v14, v15, v16);
  v122 = 0;
  v19 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v5, v18, v11, v17, 0, &v122);
  v20 = v122;

  if ((v19 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v41 = v38;
      v44 = objc_msgSend_shareID(self, v42, v43);
      *buf = 138412546;
      v124 = v44;
      v125 = 2112;
      v126 = v20;
      _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Error adding private sharing PCS to public sharing PCS for share %@: %@", buf, 0x16u);
    }

    if (!error)
    {
      v26 = 0;
LABEL_32:
      v67 = 0;
      goto LABEL_35;
    }

    v45 = MEMORY[0x277CBC560];
    v46 = *MEMORY[0x277CBC120];
    v47 = objc_msgSend_shareID(self, v39, v40);
    v49 = objc_msgSend_errorWithDomain_code_format_(v45, v48, v46, 5004, @"Error adding private sharing PCS to public sharing PCS for share %@: %@", v47, v20);
    v26 = 0;
LABEL_31:
    *error = v49;

    goto LABEL_32;
  }

  v23 = objc_msgSend_share(self, v21, v22);
  v26 = objc_msgSend_currentUserParticipant(v23, v24, v25);

  if (objc_msgSend_role(v26, v27, v28) == 1 || objc_msgSend_role(v26, v29, v30) == 2)
  {
    v31 = objc_msgSend_share(self, v29, v30);
    if (objc_msgSend_publicPermission(v31, v32, v33) == 2)
    {

LABEL_13:
      v54 = objc_msgSend_pcsManager(self, v36, v37);
      v57 = objc_msgSend_share(self, v55, v56);
      v60 = objc_msgSend_publicPCS(v57, v58, v59);
      v63 = objc_msgSend_share(self, v61, v62);
      v66 = objc_msgSend_privatePCS(v63, v64, v65);
      v121 = v20;
      v67 = 1;
      v69 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v54, v68, v60, v66, 1, &v121);
      v70 = v121;

      if (v69)
      {
LABEL_34:
        v20 = v70;
        goto LABEL_35;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v71 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v74 = v71;
        v77 = objc_msgSend_shareID(self, v75, v76);
        *buf = 138412546;
        v124 = v77;
        v125 = 2112;
        v126 = v70;
        _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Error adding public sharing PCS to private sharing PCS for share %@: %@", buf, 0x16u);
      }

      if (error)
      {
        v78 = MEMORY[0x277CBC560];
        v79 = *MEMORY[0x277CBC120];
        v47 = objc_msgSend_shareID(self, v72, v73);
        objc_msgSend_errorWithDomain_code_format_(v78, v80, v79, 5004, @"Error adding public sharing PCS to private sharing PCS for share %@: %@", v47, v70);
        v49 = LABEL_30:;
        v20 = v70;
        goto LABEL_31;
      }

LABEL_33:
      v67 = 0;
      goto LABEL_34;
    }

    v50 = objc_msgSend_share(self, v34, v35);
    v53 = objc_msgSend_publicPermission(v50, v51, v52);

    if (v53 == 3)
    {
      goto LABEL_13;
    }

    v81 = objc_msgSend_pcsManager(self, v36, v37);
    v84 = objc_msgSend_share(self, v82, v83);
    v87 = objc_msgSend_publicPCS(v84, v85, v86);
    v90 = objc_msgSend_share(self, v88, v89);
    v93 = objc_msgSend_privatePCS(v90, v91, v92);
    v120 = v20;
    v95 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(v81, v94, v87, v93, &v120);
    v70 = v120;

    if ((v95 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v98 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v101 = v98;
        v104 = objc_msgSend_shareID(self, v102, v103);
        *buf = 138412546;
        v124 = v104;
        v125 = 2112;
        v126 = v70;
        _os_log_impl(&dword_22506F000, v101, OS_LOG_TYPE_INFO, "Error removing public sharing PCS from private sharing PCS for share %@: %@", buf, 0x16u);
      }

      if (error)
      {
        v105 = MEMORY[0x277CBC560];
        v106 = *MEMORY[0x277CBC120];
        v47 = objc_msgSend_shareID(self, v99, v100);
        objc_msgSend_errorWithDomain_code_format_(v105, v107, v106, 5004, @"Error removing public sharing PCS from private sharing PCS for share %@: %@", v47, v70);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    v119 = v70;
    v97 = objc_msgSend__cleanPublicPCSforShareWithError_(self, v96, &v119);
    v20 = v119;

    if ((v97 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v109 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v112 = v109;
        v115 = objc_msgSend_shareID(self, v113, v114);
        *buf = 138412546;
        v124 = v115;
        v125 = 2112;
        v126 = v20;
        _os_log_impl(&dword_22506F000, v112, OS_LOG_TYPE_INFO, "Error cleaning up public PCS for share %@: %@", buf, 0x16u);
      }

      if (!error)
      {
        goto LABEL_32;
      }

      v116 = MEMORY[0x277CBC560];
      v117 = *MEMORY[0x277CBC120];
      v47 = objc_msgSend_shareID(self, v110, v111);
      v49 = objc_msgSend_errorWithDomain_code_format_(v116, v118, v117, 5004, @"Error cleaning up public PCS for share %@: %@", v47, v20);
      goto LABEL_31;
    }
  }

  v67 = 1;
LABEL_35:

  return v67;
}

- (BOOL)_cleanPublicPCSforShareWithError:(id *)error
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_share(self, a2, error);
  v7 = objc_msgSend_publicPermission(v4, v5, v6);

  if (v7 <= 1)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = objc_msgSend_share(selfCopy, v8, v9);
    v13 = objc_msgSend_participants(v10, v11, v12);
    v16 = objc_msgSend_copy(v13, v14, v15);

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v45, v53, 16);
    if (v18)
    {
      v22 = v18;
      v23 = MEMORY[0x277CBC880];
      v24 = *v46;
      v25 = MEMORY[0x277CBC830];
      *&v21 = 138412546;
      v43 = v21;
      do
      {
        v26 = 0;
        v44 = v22;
        do
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v45 + 1) + 8 * v26);
          if (objc_msgSend_role(v27, v19, v20, v43) == 4)
          {
            if (*v23 != -1)
            {
              dispatch_once(v23, *MEMORY[0x277CBC878]);
            }

            v28 = *v25;
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
            {
              v30 = v28;
              v33 = objc_msgSend_participantID(v27, v31, v32);
              objc_msgSend_shareID(selfCopy, v34, v35);
              v36 = v24;
              v37 = v16;
              v38 = v25;
              v39 = v23;
              v41 = v40 = selfCopy;
              *buf = v43;
              v50 = v33;
              v51 = 2112;
              v52 = v41;
              _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Removing public participant %@ from share %@.", buf, 0x16u);

              selfCopy = v40;
              v23 = v39;
              v25 = v38;
              v16 = v37;
              v24 = v36;
              v22 = v44;
            }

            objc_msgSend_setAcceptanceStatus_(v27, v29, 3);
          }

          ++v26;
        }

        while (v22 != v26);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v45, v53, 16);
      }

      while (v22);
    }
  }

  return 1;
}

- (void)_addPublicKeyToSelfParticipantWithCompletionHandler:(id)handler
{
  v150 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!objc_msgSend_haveAddedOwnerToShare(self, v5, v6) || !objc_msgSend_isALegacyPublicShareThatNeedsOwnerPPPCSUpgrade(self, v7, v8))
  {
    if ((objc_msgSend_haveAddedOwnerToShare(self, v7, v8) & 1) != 0 || (objc_msgSend_share(self, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_currentUserParticipant(v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_role(v32, v33, v34), v32, v29, v35 != 1))
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_45;
    }

    objc_msgSend_setHaveAddedOwnerToShare_(self, v36, 1);
    v39 = objc_msgSend_share(self, v37, v38);
    v42 = objc_msgSend_currentUserParticipant(v39, v40, v41);

    v45 = objc_msgSend_operation(self, v43, v44);
    if (objc_msgSend_isCloudDocsContainer(self, v46, v47))
    {
      v50 = 1;
    }

    else
    {
      v52 = objc_msgSend_container(v45, v48, v49);
      v55 = objc_msgSend_pcsManager(v52, v53, v54);
      IsManatee = objc_msgSend_currentServiceIsManatee(v55, v56, v57);

      if (IsManatee)
      {
        v50 = 0;
      }

      else
      {
        v50 = 2;
      }
    }

    v59 = objc_msgSend_pcsManager(self, v48, v49);
    v61 = objc_msgSend_publicKeyVersionForServiceType_(v59, v60, v50);
    v64 = objc_msgSend_userIdentity(v42, v62, v63);
    objc_msgSend_setPublicKeyVersion_(v64, v65, v61);

    v68 = objc_msgSend_pcsManager(self, v66, v67);
    v146 = 0;
    v141 = objc_msgSend_participantPublicKeyForServiceType_error_(v68, v69, v50, &v146);
    v70 = v146;

    if (*MEMORY[0x277CBC810] == 1)
    {
      v73 = objc_msgSend_unitTestOverrides(v45, v71, v72);
      v75 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"NoOwnerPublicKey");
      v76 = v75 == 0;

      if (!v76)
      {

        v141 = 0;
LABEL_30:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v87 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v118 = v87;
          v121 = objc_msgSend_shareID(self, v119, v120);
          *location = 138412546;
          *&location[4] = v121;
          v148 = 2112;
          v149 = v70;
          _os_log_error_impl(&dword_22506F000, v118, OS_LOG_TYPE_ERROR, "Couldn't get a current public sharing identity for the owner on share %@. Error: %@. Synchronizing key chain and retrying...", location, 0x16u);
        }

        objc_initWeak(location, self);
        v90 = objc_msgSend_container(v45, v88, v89);
        v93 = objc_msgSend_pcsManager(v90, v91, v92);
        v96 = objc_msgSend_operationID(v45, v94, v95);
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 3221225472;
        v142[2] = sub_225216FDC;
        v142[3] = &unk_27854A590;
        objc_copyWeak(v145, location);
        v143 = v42;
        v145[1] = v50;
        v144 = handlerCopy;
        objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v93, v97, v50, 0, 0, 1, 0x28387E900, v96, v142);

        objc_destroyWeak(v145);
        objc_destroyWeak(location);
        goto LABEL_44;
      }
    }

    if (!v141 || v70)
    {
      goto LABEL_30;
    }

    v77 = objc_msgSend_userIdentity(v42, v71, v72);
    objc_msgSend_setPublicSharingKey_(v77, v78, v141);

    v79 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v80 = MEMORY[0x277CBC830];
    v81 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v127 = v81;
      v130 = objc_msgSend_userIdentity(v42, v128, v129);
      v133 = objc_msgSend_publicSharingKey(v130, v131, v132);
      v136 = objc_msgSend_shareID(self, v134, v135);
      *location = 138543618;
      *&location[4] = v133;
      v148 = 2112;
      v149 = v136;
      _os_log_debug_impl(&dword_22506F000, v127, OS_LOG_TYPE_DEBUG, "Added public sharing identity %{public}@ to our self owner user on share %@", location, 0x16u);
    }

    v84 = objc_msgSend_protectionInfo(v42, v82, v83);
    if (v84)
    {
    }

    else
    {
      v98 = objc_msgSend_share(self, v85, v86);
      v101 = objc_msgSend_addedParticipants(v98, v99, v100);
      v103 = objc_msgSend_containsObject_(v101, v102, v42);

      if ((v103 & 1) == 0)
      {
        objc_msgSend_setIsALegacyPublicShareThatNeedsOwnerPPPCSUpgrade_(self, v104, 1);
        v107 = objc_msgSend_share(self, v105, v106);
        v110 = objc_msgSend_privatePCS(v107, v108, v109);

        if (v110)
        {
          v113 = objc_msgSend_share(self, v111, v112);
          v116 = objc_msgSend_privatePCS(v113, v114, v115);
          v70 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(self, v117, v42, v116);

LABEL_43:
          (handlerCopy)[2](handlerCopy, v70);
LABEL_44:

          goto LABEL_45;
        }

        if (*v79 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v126 = *v80;
        if (os_log_type_enabled(*v80, OS_LOG_TYPE_DEBUG))
        {
          v137 = v126;
          v140 = objc_msgSend_shareID(self, v138, v139);
          *location = 138412290;
          *&location[4] = v140;
          _os_log_debug_impl(&dword_22506F000, v137, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", location, 0xCu);
        }
      }
    }

    v70 = 0;
    goto LABEL_43;
  }

  v9 = objc_msgSend_share(self, v7, v8);
  v12 = objc_msgSend_privatePCS(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_share(self, v13, v14);
    v18 = objc_msgSend_currentUserParticipant(v15, v16, v17);

    v21 = objc_msgSend_share(self, v19, v20);
    v24 = objc_msgSend_privatePCS(v21, v22, v23);
    v26 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(self, v25, v18, v24);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v122 = v51;
      v125 = objc_msgSend_shareID(self, v123, v124);
      *location = 138412290;
      *&location[4] = v125;
      _os_log_debug_impl(&dword_22506F000, v122, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", location, 0xCu);
    }

    v26 = 0;
  }

  (handlerCopy)[2](handlerCopy, v26);

LABEL_45:
}

- (BOOL)_setupParticipantsProtectionInfos:(id *)infos
{
  v387 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v5);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v269 = objc_msgSend_shareID(self, v8, v9);
    *buf = 138412290;
    v373 = v269;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Checking participants on share %@", buf, 0xCu);
  }

  v12 = objc_msgSend_share(self, v10, v11);
  v15 = objc_msgSend_allParticipants(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  if (!v18)
  {
    return 1;
  }

  v21 = objc_msgSend_share(self, v19, v20);
  v24 = objc_msgSend_privatePCS(v21, v22, v23);

  v335 = v24;
  if (!v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v302 = v36;
      v305 = objc_msgSend_shareID(self, v303, v304);
      *buf = 138412290;
      v373 = v305;
      _os_log_error_impl(&dword_22506F000, v302, OS_LOG_TYPE_ERROR, "Couldn't get invitedPCS for share %@", buf, 0xCu);
    }

    v39 = MEMORY[0x277CBC560];
    v40 = *MEMORY[0x277CBC120];
    v41 = objc_msgSend_shareID(self, v37, v38);
    v43 = objc_msgSend_errorWithDomain_code_format_(v39, v42, v40, 5004, @"Couldn't create invited PCS for share %@", v41);

    if (infos)
    {
      v44 = v43;
      v35 = 0;
      *infos = v43;
      goto LABEL_163;
    }

    goto LABEL_134;
  }

  v27 = objc_msgSend_share(self, v25, v26);
  v30 = objc_msgSend_currentUserParticipant(v27, v28, v29);
  selfCopy = self;
  if (objc_msgSend_role(v30, v31, v32) == 2)
  {
  }

  else
  {
    v45 = objc_msgSend_share(self, v33, v34);
    v48 = objc_msgSend_currentUserParticipant(v45, v46, v47);
    v51 = objc_msgSend_role(v48, v49, v50);

    v54 = v51 == 1;
    v6 = MEMORY[0x277CBC830];
    if (!v54)
    {
      v249 = 0;
      goto LABEL_111;
    }
  }

  infosCopy = infos;
  v55 = objc_opt_new();
  v58 = objc_msgSend_share(self, v56, v57);
  v61 = objc_msgSend_addedParticipants(v58, v59, v60);
  objc_msgSend_addObjectsFromArray_(v55, v62, v61);

  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v65 = objc_msgSend_share(self, v63, v64);
  v68 = objc_msgSend_allParticipants(v65, v66, v67);

  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v368, v386, 16);
  if (v70)
  {
    v73 = v70;
    v74 = *v369;
    do
    {
      v75 = 0;
      do
      {
        if (*v369 != v74)
        {
          objc_enumerationMutation(v68);
        }

        v76 = *(*(&v368 + 1) + 8 * v75);
        if (objc_msgSend_wantsNewInvitationToken(v76, v71, v72))
        {
          v77 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v77);
          }

          v78 = *v6;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v82 = objc_msgSend_shareID(selfCopy, v79, v80);
            *buf = 138412546;
            v373 = v76;
            v374 = 2112;
            v375 = v82;
            _os_log_debug_impl(&dword_22506F000, v78, OS_LOG_TYPE_DEBUG, "Participant %@ wants a new invitation token on share %@", buf, 0x16u);

            v6 = MEMORY[0x277CBC830];
          }

          objc_msgSend_addObject_(v55, v81, v76);
        }

        ++v75;
      }

      while (v73 != v75);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v368, v386, 16);
    }

    while (v73);
  }

  v85 = objc_msgSend_share(selfCopy, v83, v84);
  v88 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v85, v86, v87);
  v89 = v88;
  if (v88)
  {
    v330 = v88;
  }

  else
  {
    v330 = objc_opt_new();
  }

  v366 = 0u;
  v367 = 0u;
  v364 = 0u;
  v365 = 0u;
  v90 = v55;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v364, v385, 16);
  v95 = selfCopy;
  v96 = v330;
  v328 = v90;
  if (v92)
  {
    v97 = v92;
    v98 = *v365;
    v326 = *v365;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v365 != v98)
        {
          objc_enumerationMutation(v90);
        }

        v100 = *(*(&v364 + 1) + 8 * i);
        if (objc_msgSend_usesOneTimeURL(v100, v93, v94))
        {
          v101 = objc_msgSend_participantID(v100, v93, v94);
          v103 = objc_msgSend_objectForKeyedSubscript_(v96, v102, v101);

          if (!v103)
          {
            v104 = objc_msgSend_operation(v95, v93, v94);
            v107 = objc_msgSend_container(v104, v105, v106);
            v110 = objc_msgSend_pcsManager(v107, v108, v109);
            v363 = 0;
            v112 = objc_msgSend_generateOONPrivateKeyWithError_(v110, v111, &v363);
            v43 = v363;

            if (v43 || !v112)
            {
              v239 = v112;
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v182 = v330;
              v240 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                v306 = v240;
                objc_msgSend_shareID(selfCopy, v307, v308);
                v310 = v309 = v43;
                *buf = 138412546;
                v373 = v310;
                v374 = 2112;
                v375 = v309;
                _os_log_error_impl(&dword_22506F000, v306, OS_LOG_TYPE_ERROR, "Couldn't configure new one-time URL participant on share %@: %@", buf, 0x16u);

                v43 = v309;
                if (infosCopy)
                {
LABEL_109:
                  v243 = MEMORY[0x277CBC560];
                  v244 = v43;
                  v245 = *MEMORY[0x277CBC120];
                  v246 = objc_msgSend_shareID(selfCopy, v241, v242);
                  v247 = v245;
                  v43 = v244;
                  *infosCopy = objc_msgSend_errorWithDomain_code_error_format_(v243, v248, v247, 5005, v244, @"Couldn't configure new participant on share %@", v246);
                }
              }

              else if (infosCopy)
              {
                goto LABEL_109;
              }

              v177 = v90;
              goto LABEL_133;
            }

            v115 = objc_msgSend_userIdentity(v100, v113, v114);
            objc_msgSend_setOutOfNetworkPrivateKey_(v115, v116, v112);

            v117 = objc_alloc(MEMORY[0x277CBC4E0]);
            v120 = objc_msgSend_share(selfCopy, v118, v119);
            v123 = objc_msgSend_mutableEncryptedPSK(v120, v121, v122);
            v126 = objc_msgSend_data(v123, v124, v125);
            objc_msgSend_oneTimeURLSharingKeySeed(v100, v127, v128);
            v129 = obja = v112;
            v132 = objc_msgSend_participantID(v100, v130, v131);
            v134 = objc_msgSend_initWithSharingKeyBytes_sharingKeySeed_participantID_(v117, v133, v126, v129, v132);

            v6 = MEMORY[0x277CBC830];
            v95 = selfCopy;
            v90 = v328;

            v137 = objc_msgSend_participantID(v100, v135, v136);
            v96 = v330;
            objc_msgSend_setObject_forKeyedSubscript_(v330, v138, v134, v137);

            v98 = v326;
          }
        }
      }

      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v364, v385, 16);
    }

    while (v97);
  }

  if (objc_msgSend_count(v96, v139, v140))
  {
    v143 = objc_msgSend_share(v95, v141, v142);
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v143, v144, v96);
  }

  v361 = 0u;
  v362 = 0u;
  v359 = 0u;
  v360 = 0u;
  v145 = v90;
  v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v146, &v359, v384, 16);
  v325 = v145;
  if (v147)
  {
    v150 = v147;
    v151 = *v360;
    do
    {
      v152 = 0;
      do
      {
        if (*v360 != v151)
        {
          objc_enumerationMutation(v145);
        }

        v153 = *(*(&v359 + 1) + 8 * v152);
        if (objc_msgSend_role(v153, v148, v149) == 3 || objc_msgSend_role(v153, v154, v155) == 2 || objc_msgSend_role(v153, v156, v157) == 1)
        {
          v158 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v158);
          }

          v159 = *v6;
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            v171 = objc_msgSend_shareID(selfCopy, v160, v161);
            *buf = 138412546;
            v373 = v153;
            v374 = 2112;
            v375 = v171;
            _os_log_debug_impl(&dword_22506F000, v159, OS_LOG_TYPE_DEBUG, "Setting up private participant %@ on share %@", buf, 0x16u);
          }

          v163 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(selfCopy, v162, v153, v335);
          if (v163)
          {
            v266 = v163;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v90 = v328;
            v182 = v330;
            v267 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              v311 = v267;
              v314 = objc_msgSend_shareID(selfCopy, v312, v313);
              *buf = 138412546;
              v373 = v314;
              v374 = 2112;
              v375 = v266;
              _os_log_error_impl(&dword_22506F000, v311, OS_LOG_TYPE_ERROR, "Couldn't configure new participant on share %@: %@", buf, 0x16u);

              if (infosCopy)
              {
LABEL_131:
                v268 = v266;
                *infosCopy = v266;
              }
            }

            else if (infosCopy)
            {
              goto LABEL_131;
            }

            v43 = v266;
            v177 = v325;
            goto LABEL_133;
          }

          if (objc_msgSend_isCurrentUser(v153, v164, v165))
          {
            v166 = objc_msgSend_protectionInfo(v153, v148, v149);
            v169 = objc_msgSend_sharePCSData(selfCopy, v167, v168);
            objc_msgSend_setMyParticipantPCSData_(v169, v170, v166);

            v145 = v325;
          }
        }

        ++v152;
      }

      while (v150 != v152);
      v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v148, &v359, v384, 16);
    }

    while (v150);
  }

  v357 = 0u;
  v358 = 0u;
  v355 = 0u;
  v356 = 0u;
  v174 = objc_msgSend_share(selfCopy, v172, v173);
  v177 = objc_msgSend_removedParticipants(v174, v175, v176);

  v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, &v355, v383, 16);
  v182 = v330;
  if (!v179)
  {
    goto LABEL_75;
  }

  v183 = v179;
  v184 = *v356;
  do
  {
    for (j = 0; j != v183; ++j)
    {
      if (*v356 != v184)
      {
        objc_enumerationMutation(v177);
      }

      v186 = *(*(&v355 + 1) + 8 * j);
      if (objc_msgSend_role(v186, v180, v181) == 3 || objc_msgSend_role(v186, v180, v187) == 2)
      {
        v354 = 0;
        objc_msgSend__removePrivateParticipantsFromInvitedPCS_error_(selfCopy, v180, v335, &v354);
        v188 = v354;
        if (v188)
        {
          v291 = v188;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v90 = v328;
          v292 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v319 = v292;
            v322 = objc_msgSend_shareID(selfCopy, v320, v321);
            *buf = 138412546;
            v373 = v322;
            v374 = 2112;
            v375 = v291;
            _os_log_error_impl(&dword_22506F000, v319, OS_LOG_TYPE_ERROR, "Couldn't remove participant participant PCS for share %@: %@", buf, 0x16u);

            if (!infosCopy)
            {
              goto LABEL_172;
            }

LABEL_150:
            v43 = v291;
            v293 = v291;
            *infosCopy = v291;
          }

          else
          {
            if (infosCopy)
            {
              goto LABEL_150;
            }

LABEL_172:
            v43 = v291;
          }

LABEL_133:

LABEL_134:
          v35 = 0;
          goto LABEL_163;
        }
      }
    }

    v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v180, &v355, v383, 16);
  }

  while (v183);
LABEL_75:

  v189 = PCSFPCopyPublicIdentities();
  v190 = objc_opt_new();
  v349 = MEMORY[0x277D85DD0];
  v350 = 3221225472;
  v351 = sub_22521889C;
  v352 = &unk_27854A5B8;
  v327 = v190;
  v353 = v327;
  v323 = v189;
  CKCFArrayForEach();
  v347 = 0u;
  v348 = 0u;
  v345 = 0u;
  v346 = 0u;
  v193 = objc_msgSend_share(selfCopy, v191, v192);
  v196 = objc_msgSend_allParticipants(v193, v194, v195);

  obj = v196;
  v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v196, v197, &v345, v382, 16);
  if (!v198)
  {
    v249 = 0;
    goto LABEL_168;
  }

  v201 = v198;
  v249 = 0;
  v202 = *v346;
  v329 = *v346;
  while (2)
  {
    v203 = 0;
    while (2)
    {
      if (*v346 != v202)
      {
        objc_enumerationMutation(obj);
      }

      v204 = *(*(&v345 + 1) + 8 * v203);
      v205 = objc_msgSend_share(selfCopy, v199, v200);
      v208 = objc_msgSend_addedParticipants(v205, v206, v207);
      if (objc_msgSend_containsObject_(v208, v209, v204))
      {
LABEL_83:

        v6 = MEMORY[0x277CBC830];
LABEL_84:

        goto LABEL_85;
      }

      v212 = objc_msgSend_share(selfCopy, v210, v211);
      v215 = objc_msgSend_removedParticipants(v212, v213, v214);
      if (objc_msgSend_containsObject_(v215, v216, v204))
      {

        goto LABEL_83;
      }

      if (objc_msgSend_role(v204, v217, v218) == 3)
      {

        goto LABEL_91;
      }

      v221 = objc_msgSend_role(v204, v219, v220);

      v54 = v221 == 2;
      v202 = v329;
      if (!v54)
      {
        v6 = MEMORY[0x277CBC830];
        goto LABEL_85;
      }

LABEL_91:
      v222 = *MEMORY[0x277CBC878];
      v6 = MEMORY[0x277CBC830];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v222);
      }

      v223 = *v6;
      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
      {
        v236 = objc_msgSend_shareID(selfCopy, v224, v225);
        *buf = 138412546;
        v373 = v204;
        v374 = 2112;
        v375 = v236;
        _os_log_debug_impl(&dword_22506F000, v223, OS_LOG_TYPE_DEBUG, "Modifying per participant PCS permission for participant %@ on share %@", buf, 0x16u);
      }

      v228 = objc_msgSend_copy(v327, v226, v227);
      v344 = v249;
      v230 = v249;
      v231 = objc_msgSend__modifyRoleForParticipant_invitedPCS_shareeIdentities_error_(selfCopy, v229, v204, v335, v228, &v344);
      v232 = v344;

      if (!v231 || v232)
      {
        v233 = *MEMORY[0x277CBC878];
        v202 = v329;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v233);
        }

        v205 = *v6;
        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          v237 = objc_msgSend_shareID(selfCopy, v234, v235);
          *buf = 138412546;
          v373 = v237;
          v374 = 2112;
          v375 = v232;
          _os_log_error_impl(&dword_22506F000, v205, OS_LOG_TYPE_ERROR, "Couldn't update participant PCS for participant's role on share %@: %@", buf, 0x16u);

          v202 = v329;
        }

        v249 = v232;
        goto LABEL_84;
      }

      v249 = 0;
      v202 = v329;
LABEL_85:
      if (v201 != ++v203)
      {
        continue;
      }

      break;
    }

    v238 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v199, &v345, v382, 16);
    v201 = v238;
    if (v238)
    {
      continue;
    }

    break;
  }

LABEL_168:

LABEL_111:
  v331 = v249;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v250 = selfCopy;
  v251 = objc_msgSend_share(selfCopy, v52, v53);
  v254 = objc_msgSend_invitedKeysToRemove(v251, v252, v253);

  v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v255, &v340, v381, 16);
  if (!v256)
  {

    goto LABEL_136;
  }

  v258 = v256;
  v259 = 0;
  v260 = *v341;
  do
  {
    v261 = 0;
    do
    {
      if (*v341 != v260)
      {
        objc_enumerationMutation(v254);
      }

      v262 = *(*(&v340 + 1) + 8 * v261);
      v263 = objc_msgSend__removePublicKey_fromInvitedPCS_(v250, v257, v262, v335);
      if (v263)
      {
        v264 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v264);
        }

        v265 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v373 = v262;
          v374 = 2112;
          v375 = v263;
          _os_log_impl(&dword_22506F000, v265, OS_LOG_TYPE_INFO, "Error removing public key %{public}@ from the invited PCS blob: %@", buf, 0x16u);
        }

        v250 = selfCopy;
      }

      else
      {
        ++v259;
      }

      ++v261;
    }

    while (v258 != v261);
    v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v257, &v340, v381, 16);
  }

  while (v258);

  v6 = MEMORY[0x277CBC830];
  if (!v259)
  {
LABEL_136:
    v270 = PCSFPCopyPublicIdentities();
    v273 = objc_msgSend_share(v250, v271, v272);
    v276 = objc_msgSend_publicPermission(v273, v274, v275);

    v338 = 0u;
    v339 = 0u;
    v336 = 0u;
    v337 = 0u;
    v279 = objc_msgSend_share(v250, v277, v278);
    v282 = objc_msgSend_participants(v279, v280, v281);

    v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v283, &v336, v380, 16);
    if (v284)
    {
      v287 = v284;
      v288 = 0;
      v289 = *v337;
      do
      {
        for (k = 0; k != v287; ++k)
        {
          if (*v337 != v289)
          {
            objc_enumerationMutation(v282);
          }

          if (objc_msgSend_role(*(*(&v336 + 1) + 8 * k), v285, v286) != 4)
          {
            ++v288;
          }
        }

        v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v285, &v336, v380, 16);
      }

      while (v287);
    }

    else
    {
      v288 = 0;
    }

    if (v276 <= 1)
    {
      v296 = v288;
    }

    else
    {
      v296 = (v288 + 1);
    }

    if (objc_msgSend_count(v270, v294, v295) != v296)
    {
      v297 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v297);
      }

      v298 = *v6;
      if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
      {
        v315 = objc_msgSend_count(v270, v299, v300);
        v318 = objc_msgSend_shareID(selfCopy, v316, v317);
        *buf = 134218754;
        v373 = v315;
        v374 = 2048;
        v375 = v296;
        v376 = 2112;
        v377 = v318;
        v378 = 2112;
        v379 = v270;
        _os_log_error_impl(&dword_22506F000, v298, OS_LOG_TYPE_ERROR, "Unexpected: The invitedPCS has a different number of public identities than expected (%tu vs. %tu) on the share %@: %@", buf, 0x2Au);
      }
    }
  }

  v35 = 1;
  v43 = v331;
LABEL_163:

  return v35;
}

- (BOOL)_modifyRoleForParticipant:(id)participant invitedPCS:(_OpaquePCSShareProtection *)s shareeIdentities:(id)identities error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  identitiesCopy = identities;
  v13 = objc_msgSend_invitedPCSPermissionForParticipant_(self, v12, participantCopy);
  v16 = objc_msgSend_protectionInfo(participantCopy, v14, v15);

  if (!v16)
  {
    v26 = objc_msgSend_protectionInfoPublicKey(participantCopy, v17, v18);

    if (!v26)
    {
      goto LABEL_54;
    }

    errorCopy2 = error;
    v35 = objc_msgSend_pcsManager(self, v33, v34);
    v38 = objc_msgSend_protectionInfoPublicKey(participantCopy, v36, v37);
    v76 = 0;
    v32 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v35, v39, v38, &v76);
    v25 = v76;

    if (v32 && !v25)
    {
      v74 = identitiesCopy;
      v24 = 0;
      v26 = 0;
      goto LABEL_22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v64 = v51;
      v67 = objc_msgSend_protectionInfoPublicKey(participantCopy, v65, v66);
      *buf = 138412802;
      v79 = v67;
      v80 = 2112;
      sCopy = participantCopy;
      v82 = 2112;
      v83 = v25;
      _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Error deserializing protectionInfoPublicKey %@ on participant %@: %@", buf, 0x20u);

      if (!v32)
      {
        goto LABEL_44;
      }
    }

    else if (!v32)
    {
LABEL_44:
      v26 = 0;
LABEL_45:
      error = errorCopy2;
      goto LABEL_51;
    }

    CFRelease(v32);
    goto LABEL_44;
  }

  errorCopy2 = error;
  v19 = objc_msgSend_pcsManager(self, v17, v18);
  v22 = objc_msgSend_protectionInfo(participantCopy, v20, v21);
  v77 = 0;
  v24 = objc_msgSend_createSharePCSFromEncryptedData_error_(v19, v23, v22, &v77);
  v25 = v77;

  if (v24 && !v25)
  {
    v26 = PCSShareProtectionCopyPublicKeys();
    if (objc_msgSend_count(v26, v27, v28) >= 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v79 = v24;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Found more than one public identity on per-participant PCS %@. Which one will be returned is undefined.", buf, 0xCu);
      }

      v25 = 0;
      v32 = 0;
      goto LABEL_47;
    }

    v32 = objc_msgSend_firstObject(v26, v29, v30);

    CFRetain(v32);
    if (!v32)
    {
      v25 = 0;
LABEL_47:
      v41 = 0;
      goto LABEL_48;
    }

    v74 = identitiesCopy;
LABEL_22:
    v43 = PCSPublicIdentityGetPublicID();
    if (v43 && objc_msgSend_containsObject_(v74, v42, v43))
    {
      v46 = objc_msgSend_pcsManager(self, v44, v45);
      v25 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v46, v47, v32, s, v13);

      v48 = *MEMORY[0x277CBC878];
      if (v25)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v48);
        }

        v49 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v79 = v32;
          v80 = 2112;
          sCopy = s;
          _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Cannot add public identity %@ to invitedPCS %@ for per participant PCS permission update", buf, 0x16u);
        }

        v41 = 0;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v48);
        }

        v59 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v68 = v59;
          v70 = CKStringFromSharePermission(v13, v69);
          v73 = objc_msgSend_shareID(self, v71, v72);
          *buf = 138412802;
          v79 = v70;
          v80 = 2112;
          sCopy = participantCopy;
          v82 = 2112;
          v83 = v73;
          _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Successfully modified per participant PCS permission to %@ on invitedPCS for participant %@ on share %@", buf, 0x20u);
        }

        v25 = 0;
        v41 = 1;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v50 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v79 = v32;
        _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Public identity %@ can be found on participant, but invitedPCS is not shared to it", buf, 0xCu);
      }

      v41 = 0;
      v25 = 0;
    }

    identitiesCopy = v74;
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v60 = v40;
    v63 = objc_msgSend_protectionInfo(participantCopy, v61, v62);
    *buf = 138412546;
    v79 = v63;
    v80 = 2112;
    sCopy = v25;
    _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "Error creating PCS from encrypted data %@: %@", buf, 0x16u);
  }

  v41 = 0;
  v26 = 0;
  v32 = 0;
  if (!v24)
  {
LABEL_36:
    if (!v32)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

LABEL_48:
  CFRelease(v24);
  if (v32)
  {
LABEL_37:
    CFRelease(v32);
    if (v41)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_49:
  error = errorCopy2;
  if ((v41 & 1) == 0)
  {
LABEL_51:
    if (v25)
    {
      if (error)
      {
LABEL_53:
        v53 = v25;
        v52 = 0;
        *error = v25;
        goto LABEL_56;
      }

LABEL_55:
      v52 = 0;
      goto LABEL_56;
    }

LABEL_54:
    v54 = MEMORY[0x277CBC560];
    v55 = *MEMORY[0x277CBC120];
    v56 = objc_msgSend_shareID(self, v33, v34);
    v25 = objc_msgSend_errorWithDomain_code_format_(v54, v57, v55, 5005, @"Couldn't change per participant PCS permission on share %@", v56);

    if (error)
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

LABEL_50:
  v52 = 1;
LABEL_56:

  return v52;
}

- (BOOL)_removePrivateParticipantsFromInvitedPCS:(_OpaquePCSShareProtection *)s error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = objc_msgSend_share(self, a2, s, 0);
  v10 = objc_msgSend_removedParticipants(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v38, 16);
  if (!v12)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v15 = v12;
  v16 = 0;
  v17 = *v31;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v31 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v30 + 1) + 8 * i);
      if (objc_msgSend_role(v19, v13, v14) == 3 || objc_msgSend_role(v19, v13, v20) == 2)
      {
        v21 = objc_msgSend__removePrivateParticipant_fromInvitedSharePCS_(self, v13, v19, s);
        if (!v21)
        {
          v16 = 1;
          continue;
        }

        v22 = v21;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          if (!error)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        v26 = v23;
        v29 = objc_msgSend_shareID(self, v27, v28);
        *buf = 138412546;
        v35 = v29;
        v36 = 2112;
        v37 = v22;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Couldn't remove participant from share %@: %@", buf, 0x16u);

        if (error)
        {
LABEL_17:
          v24 = v22;
          v16 = 0;
          *error = v22;
          goto LABEL_20;
        }

LABEL_19:
        v16 = 0;
        goto LABEL_20;
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v30, v38, 16);
    if (v15)
    {
      continue;
    }

    break;
  }

  v22 = 0;
LABEL_20:

  return v16 & 1;
}

- (id)_removePrivateParticipant:(id)participant fromInvitedSharePCS:(_OpaquePCSShareProtection *)s
{
  v109 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v9 = objc_msgSend_operation(self, v7, v8);
  v12 = objc_msgSend_container(v9, v10, v11);
  v15 = objc_msgSend_deviceContext(v12, v13, v14);
  v18 = objc_msgSend_testDeviceReference(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_participantID(participantCopy, v19, v20);
    isEqualToString = objc_msgSend_isEqualToString_(v22, v23, @"DONT-REMOVE-MY-KEY");

    if (isEqualToString)
    {
LABEL_38:
      v68 = 0;
      goto LABEL_39;
    }
  }

  else
  {
  }

  v25 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = MEMORY[0x277CBC830];
  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v81 = v27;
    v84 = objc_msgSend_userIdentity(participantCopy, v82, v83);
    v87 = objc_msgSend_userIdentity(participantCopy, v85, v86);
    v90 = objc_msgSend_publicSharingKey(v87, v88, v89);
    v93 = objc_msgSend_protectionInfoPublicKey(participantCopy, v91, v92);
    *buf = 138412802;
    v104 = v84;
    v105 = 2114;
    v106 = v90;
    v107 = 2114;
    v108 = v93;
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Removing share participant with identity %@ and public key %{public}@, PPPCS public key: %{public}@", buf, 0x20u);
  }

  v30 = objc_msgSend_protectionInfo(participantCopy, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_pcsManager(self, v31, v32);
    v36 = objc_msgSend_protectionInfo(participantCopy, v34, v35);
    v38 = objc_msgSend_removeEncryptedPCS_fromSharePCS_(v33, v37, v36, s);
  }

  else
  {
    v39 = objc_msgSend_protectionInfoPublicKey(participantCopy, v31, v32);

    if (v39)
    {
      v42 = objc_msgSend_pcsManager(self, v40, v41);
      v45 = objc_msgSend_protectionInfoPublicKey(participantCopy, v43, v44);
      v102 = v45;
      v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, &v102, 1);
      v49 = objc_msgSend_removePublicKeys_fromPCS_(v42, v48, v47, s);

      if (v49)
      {
LABEL_30:
        if (*v25 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v74 = *v26;
        if (!os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_36;
        }

        v75 = v74;
        v78 = objc_msgSend_participantID(participantCopy, v76, v77);
        *buf = 138412290;
        v104 = v78;
        _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Removed per-participant PCS from invited PCS for participant %@", buf, 0xCu);

LABEL_34:
        if (*v25 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

LABEL_36:
        v79 = *v26;
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          v94 = v79;
          v97 = objc_msgSend_participantID(participantCopy, v95, v96);
          *buf = 138412290;
          v104 = v97;
          _os_log_debug_impl(&dword_22506F000, v94, OS_LOG_TYPE_DEBUG, "Successfully configured PCS data for removed participant %@", buf, 0xCu);
        }

        goto LABEL_38;
      }

      v52 = MEMORY[0x277CBC560];
      v53 = *MEMORY[0x277CBC120];
      v33 = objc_msgSend_participantID(participantCopy, v50, v51);
      objc_msgSend_errorWithDomain_code_format_(v52, v54, v53, 5001, @"Could not remove PPPCS public key from invited PCS for participant %@", v33);
    }

    else
    {
      if (*v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v55 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v104 = participantCopy;
        _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "No participant PCS nor public key found for participant %@. We can't remove them from the share", buf, 0xCu);
      }

      v58 = MEMORY[0x277CBC560];
      v59 = *MEMORY[0x277CBC120];
      v33 = objc_msgSend_participantID(participantCopy, v56, v57);
      objc_msgSend_errorWithDomain_code_format_(v58, v60, v59, 5001, @"No participant PCS or PPPCS public key exists for participant %@", v33);
    }
    v38 = ;
  }

  if (!v38)
  {
    goto LABEL_30;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v61 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    v98 = v61;
    v101 = objc_msgSend_participantID(participantCopy, v99, v100);
    *buf = 138412546;
    v104 = v101;
    v105 = 2112;
    v106 = v38;
    _os_log_error_impl(&dword_22506F000, v98, OS_LOG_TYPE_ERROR, "Couldn't remove per-participant PCS from invited PCS for participant %@: %@", buf, 0x16u);
  }

  v64 = MEMORY[0x277CBC560];
  v65 = *MEMORY[0x277CBC120];
  v66 = objc_msgSend_participantID(participantCopy, v62, v63);
  v68 = objc_msgSend_errorWithDomain_code_format_(v64, v67, v65, 5005, @"Couldn't remove per-participant PCS from invited PCS for participant %@: %@", v66, v38);

  if (!v68)
  {
    goto LABEL_34;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v69 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    v70 = v69;
    v73 = objc_msgSend_participantID(participantCopy, v71, v72);
    *buf = 138412546;
    v104 = v73;
    v105 = 2112;
    v106 = v68;
    _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Couldn't configure PCS data for removed participant %@: %@", buf, 0x16u);
  }

LABEL_39:

  return v68;
}

- (id)_publicKeyForParticipant:(id)participant error:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if (objc_msgSend_role(participantCopy, v7, v8) != 1 || !objc_msgSend_isCurrentUser(participantCopy, v9, v10))
  {
    v28 = objc_msgSend_userIdentity(participantCopy, v9, v10);
    isOutOfNetwork = objc_msgSend_isOutOfNetwork(v28, v29, v30);

    v34 = objc_msgSend_userIdentity(participantCopy, v32, v33);
    v37 = v34;
    if (!isOutOfNetwork)
    {
      v59 = objc_msgSend_publicSharingKey(v34, v35, v36);

      goto LABEL_19;
    }

    v38 = objc_msgSend_outOfNetworkPrivateKey(v34, v35, v36);

    if (v38)
    {
      v41 = objc_msgSend_pcsManager(self, v39, v40);
      v44 = objc_msgSend_userIdentity(participantCopy, v42, v43);
      v47 = objc_msgSend_outOfNetworkPrivateKey(v44, v45, v46);
      v50 = objc_msgSend_share(self, v48, v49);
      v53 = objc_msgSend_mutableEncryptedPSK(v50, v51, v52);
      v56 = objc_msgSend_data(v53, v54, v55);
      CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity = objc_msgSend_createCombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity_(v41, v57, v47, v56);

      if (CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
      {
        v59 = PCSIdentityCopyExportedPublicKey();
        CFRelease(CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity);
LABEL_19:
        v67 = 0;
        goto LABEL_20;
      }

LABEL_15:
      v59 = 0;
      goto LABEL_19;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = participantCopy;
      _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "No private OON key exists for participant %@. We can't add them to the share", buf, 0xCu);
      if (!error)
      {
        goto LABEL_15;
      }
    }

    else if (!error)
    {
      goto LABEL_15;
    }

    v63 = MEMORY[0x277CBC560];
    v64 = *MEMORY[0x277CBC120];
    v65 = objc_msgSend_participantID(participantCopy, v61, v62);
    *error = objc_msgSend_errorWithDomain_code_format_(v63, v66, v64, 5005, @"No private OON key exists for participant %@", v65);

    goto LABEL_15;
  }

  v11 = objc_msgSend_operation(self, v9, v10);
  v14 = objc_msgSend_container(v11, v12, v13);
  v17 = objc_msgSend_pcsManager(v14, v15, v16);
  IsManatee = objc_msgSend_currentServiceIsManatee(v17, v18, v19);

  v23 = objc_msgSend_pcsManager(self, v21, v22);
  v25 = v23;
  if (IsManatee)
  {
    v81 = 0;
    v26 = &v81;
    v27 = objc_msgSend_copyPublicKeyForService_withError_(v23, v24, 0, &v81);
  }

  else
  {
    v80 = 0;
    v26 = &v80;
    v27 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(v23, v24, 2, &v80);
  }

  v59 = v27;
  v67 = *v26;

  if (!v67 && v59)
  {
    goto LABEL_19;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v69 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v76 = v69;
  v79 = objc_msgSend_shareID(self, v77, v78);
  *buf = 138412546;
  v83 = v79;
  v84 = 2112;
  v85 = v67;
  _os_log_error_impl(&dword_22506F000, v76, OS_LOG_TYPE_ERROR, "Couldn't create a public key for the owner participant on share %@: %@", buf, 0x16u);

  if (error)
  {
LABEL_27:
    v72 = MEMORY[0x277CBC560];
    v73 = *MEMORY[0x277CBC120];
    v74 = objc_msgSend_shareID(self, v70, v71);
    *error = objc_msgSend_errorWithDomain_code_format_(v72, v75, v73, 5000, @"Couldn't create a public key for the owner participant on share %@", v74);
  }

LABEL_20:

  return v59;
}

- (BOOL)_addedPrivateParticipantNeedsAManateeInvitation:(id)invitation
{
  invitationCopy = invitation;
  v7 = objc_msgSend_pcsManager(self, v5, v6);
  if (objc_msgSend_currentServiceIsManatee(v7, v8, v9))
  {
    v12 = objc_msgSend_role(invitationCopy, v10, v11) != 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_PCSPublicIdentityData)createPublicIdentityFromPublicKeyForParticipant:(id)participant error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v36 = 0;
  v8 = objc_msgSend__publicKeyForParticipant_error_(self, v7, participantCopy, &v36);
  v9 = v36;
  v12 = v9;
  if (!v8 || v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = participantCopy;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "No public sharing key exists for participant %@. We can't add them to the share", buf, 0xCu);
      if (v12)
      {
LABEL_10:
        v15 = 0;
        if (!error)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else if (v12)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277CBC560];
    v23 = *MEMORY[0x277CBC120];
    v24 = objc_msgSend_participantID(participantCopy, v17, v18);
    v12 = objc_msgSend_errorWithDomain_code_format_(v22, v25, v23, 5000, @"No public sharing key exists for participant %@", v24);
    v15 = 0;
    goto LABEL_22;
  }

  v13 = objc_msgSend_pcsManager(self, v10, v11);
  v35 = 0;
  v15 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v13, v14, v8, &v35);
  v12 = v35;

  if (!v12 && v15)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v26 = v19;
  v29 = objc_msgSend_participantID(participantCopy, v27, v28);
  *buf = 138412802;
  v38 = v29;
  v39 = 2112;
  v40 = v12;
  v41 = 2114;
  v42 = v8;
  _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Couldn't create an identity from the public sharing key for participant %@: %@ (key was %{public}@)", buf, 0x20u);

  if (!v12)
  {
LABEL_21:
    v30 = MEMORY[0x277CBC560];
    v31 = *MEMORY[0x277CBC120];
    v24 = objc_msgSend_participantID(participantCopy, v20, v21);
    v12 = objc_msgSend_errorWithDomain_code_format_(v30, v32, v31, 5000, @"Couldn't create an identity from the public sharing key for participant %@: %@ (key was %@)", v24, 0, v8);
LABEL_22:

    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_16:
  if (!error)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v12)
  {
    v33 = v12;
    *error = v12;
  }

LABEL_25:

  return v15;
}

- (unint64_t)invitedPCSPermissionForParticipant:(id)participant
{
  participantCopy = participant;
  v8 = objc_msgSend_role(participantCopy, v4, v5) != 1 && objc_msgSend_role(participantCopy, v6, v7) != 2;

  return v8;
}

- (id)_ensurePrivateParticipant:(id)participant isInInvitedSharePCS:(_OpaquePCSShareProtection *)s
{
  v368 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v69 = v6;
    v72 = objc_msgSend_userIdentity(participantCopy, v70, v71);
    if (objc_msgSend_isOutOfNetwork(v72, v73, v74))
    {
      v77 = @"OON ";
    }

    else
    {
      v77 = &stru_28385ED00;
    }

    v78 = objc_msgSend_userIdentity(participantCopy, v75, v76);
    v81 = objc_msgSend_userIdentity(participantCopy, v79, v80);
    v84 = objc_msgSend_publicSharingKey(v81, v82, v83);
    *buf = 138543874;
    v361 = v77;
    v362 = 2112;
    v363 = v78;
    v364 = 2114;
    v365 = v84;
    _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Ensuring %{public}@share participant with identity %@ and public key %{public}@ is in invitedPCS", buf, 0x20u);
  }

  v9 = objc_msgSend_protectionInfo(participantCopy, v7, v8);
  v12 = objc_msgSend_operation(self, v10, v11);
  v347 = objc_msgSend_invitedPCSPermissionForParticipant_(self, v13, participantCopy);
  v16 = objc_msgSend_userIdentity(participantCopy, v14, v15);
  if (objc_msgSend_isOutOfNetwork(v16, v17, v18))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v22 = objc_msgSend_container(v12, v20, v21);
  v25 = objc_msgSend_options(v22, v23, v24);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v25, v26, v27))
  {
    v30 = objc_msgSend_share(self, v28, v29);
    v33 = objc_msgSend_currentUserParticipant(v30, v31, v32);
    if (objc_msgSend_role(v33, v34, v35) == 1)
    {
      v38 = 4 * (objc_msgSend_role(participantCopy, v36, v37) != 1);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v359 = 0;
  v40 = objc_msgSend_createPublicIdentityFromPublicKeyForParticipant_error_(self, v39, participantCopy, &v359);
  v41 = v359;
  if (v41 || !v40)
  {
    v67 = 0;
    v68 = 0;
    if (v40)
    {
      goto LABEL_162;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v349 = v12;
    v42 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v209 = v42;
      v212 = objc_msgSend_participantID(participantCopy, v210, v211);
      *buf = 138412546;
      v361 = v212;
      v362 = 2112;
      v363 = v40;
      _os_log_debug_impl(&dword_22506F000, v209, OS_LOG_TYPE_DEBUG, "Created public identity for participant %@: %@", buf, 0x16u);
    }

    if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_role(participantCopy, v43, v44) == 1)
    {
      v344 = participantCopy;
      v45 = v19;
      v46 = v40;
      v47 = v38;
      v48 = objc_msgSend_container(v12, v43, v44);
      v51 = objc_msgSend_deviceContext(v48, v49, v50);
      v54 = objc_msgSend_testDeviceReference(v51, v52, v53);
      if (v54)
      {
        v57 = v54;
        objc_msgSend_unitTestOverrides(v12, v55, v56);
        v59 = v58 = v9;
        v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"NoOwnerPPPCS");

        v9 = v58;
        v38 = v47;
        v40 = v46;
        v19 = v45;
        participantCopy = v344;
        if (v61)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v12 = v349;
          v62 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v286 = v62;
            v289 = objc_msgSend_shareID(self, v287, v288);
            *buf = 138412290;
            v361 = v289;
            _os_log_debug_impl(&dword_22506F000, v286, OS_LOG_TYPE_DEBUG, "Skipping PPPCS for the owner on share %@ because the unit tests told us to do it.", buf, 0xCu);
          }

          if (objc_msgSend_isCloudDocsContainer(self, v63, v64))
          {
            v41 = 0;
          }

          else
          {
            v213 = objc_msgSend_pcsManager(self, v65, v66);
            v215 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v213, v214, v40, s, v347);

            if (v215)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v216 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                v333 = v216;
                v336 = objc_msgSend_participantID(v344, v334, v335);
                *buf = 138412546;
                v361 = v336;
                v362 = 2112;
                v363 = v215;
                _os_log_error_impl(&dword_22506F000, v333, OS_LOG_TYPE_ERROR, "Couldn't add per-participant PCS to invited PCS for participant %@: %@", buf, 0x16u);
              }

              v219 = MEMORY[0x277CBC560];
              v220 = *MEMORY[0x277CBC120];
              v221 = objc_msgSend_participantID(v344, v217, v218);
              v41 = objc_msgSend_errorWithDomain_code_format_(v219, v222, v220, 5005, @"Couldn't add per-participant PCS to invited PCS for participant %@: %@", v221, v215);

              v12 = v349;
            }

            else
            {
              v41 = 0;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v253 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v300 = v253;
              v303 = objc_msgSend_participantID(v344, v301, v302);
              *buf = 138412290;
              v361 = v303;
              _os_log_debug_impl(&dword_22506F000, v300, OS_LOG_TYPE_DEBUG, "Added owner public key to invited PCS for participant %@", buf, 0xCu);
            }
          }

          v67 = 0;
          v68 = 0;
          goto LABEL_162;
        }
      }

      else
      {

        v40 = v46;
        v19 = v45;
        participantCopy = v344;
      }
    }

    if (v9 && objc_msgSend_isCurrentUser(participantCopy, v43, v44))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v85 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Using the self participant PCS...", buf, 2u);
      }

      selfParticipantPCS = self->_selfParticipantPCS;
      if (selfParticipantPCS)
      {
        CFRetain(self->_selfParticipantPCS);
        v89 = 0;
        v68 = 0;
        v345 = 0;
LABEL_92:
        v162 = objc_msgSend_pcsManager(self, v87, v88);
        v356 = 0;
        v164 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v162, v163, selfParticipantPCS, s, v347, &v356);
        v41 = v356;

        v165 = *MEMORY[0x277CBC878];
        if (v164)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v165);
          }

          v12 = v349;
          v166 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v261 = v166;
            v264 = objc_msgSend_participantID(participantCopy, v262, v263);
            CKStringFromSharePermission(v347, v265);
            v266 = v353 = v9;
            *buf = 138412546;
            v361 = v264;
            v362 = 2114;
            v363 = v266;
            _os_log_debug_impl(&dword_22506F000, v261, OS_LOG_TYPE_DEBUG, "Added per-participant PCS to invited PCS for participant %@ with permission %{public}@", buf, 0x16u);

            v12 = v349;
            v9 = v353;

            if (v89)
            {
              goto LABEL_97;
            }
          }

          else if (v89)
          {
LABEL_97:
            if (objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v167, participantCopy))
            {
              if (!v68)
              {
                v341 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v168, v169);
                objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v341, v342, a2, self, @"CKDModifyShareHandler.m", 1406, @"Should never get here with a nil manateeInvitationData");
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v351 = v9;
              v170 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v320 = v170;
                v348 = objc_msgSend_share(self, v321, v322);
                v325 = objc_msgSend_URL(v348, v323, v324);
                v328 = objc_msgSend_participantID(participantCopy, v326, v327);
                *buf = 138413058;
                v361 = participantCopy;
                v362 = 2112;
                v363 = v68;
                v364 = 2112;
                v365 = v325;
                v366 = 2112;
                v367 = v328;
                _os_log_debug_impl(&dword_22506F000, v320, OS_LOG_TYPE_DEBUG, "Creating invitation token for participant %@. Invitation data: %@, shareURL %@, participantID: %@", buf, 0x2Au);
              }

              v171 = objc_alloc(MEMORY[0x277CBC2C0]);
              v174 = objc_msgSend_share(self, v172, v173);
              v177 = objc_msgSend_URL(v174, v175, v176);
              v180 = objc_msgSend_participantID(participantCopy, v178, v179);
              v182 = objc_msgSend_initWithSharingInvitationData_shareURL_participantID_(v171, v181, v68, v177, v180);
              objc_msgSend_setInvitationToken_(participantCopy, v183, v182);

              v186 = objc_msgSend_pcsManager(self, v184, v185);
              v355 = v41;
              v188 = objc_msgSend_publicKeyDataFromPCS_error_(v186, v187, selfParticipantPCS, &v355);
              v189 = v355;

              objc_msgSend_setProtectionInfoPublicKey_(participantCopy, v190, v188);
              v193 = objc_msgSend_pcsManager(self, v191, v192);
              v195 = objc_msgSend_publicKeyVersionForServiceType_(v193, v194, 0);
              v198 = objc_msgSend_userIdentity(participantCopy, v196, v197);
              objc_msgSend_setPublicKeyVersion_(v198, v199, v195);

              objc_msgSend_setMutableInvitationTokenStatus_(participantCopy, v200, 1);
              v67 = 0;
              v41 = v189;
              v9 = v351;
            }

            else
            {
              v240 = v9;
              v241 = objc_msgSend_pcsManager(self, v168, v169);
              v354 = v41;
              v67 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v241, v242, selfParticipantPCS, 4, &v354);
              v243 = v354;

              if (v243 || !v67)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v254 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  v337 = v254;
                  v340 = objc_msgSend_participantID(participantCopy, v338, v339);
                  *buf = 138412546;
                  v361 = v340;
                  v362 = 2112;
                  v363 = v243;
                  _os_log_error_impl(&dword_22506F000, v337, OS_LOG_TYPE_ERROR, "Couldn't serialize per-participant PCS for participant %@: %@", buf, 0x16u);
                }

                v257 = MEMORY[0x277CBC560];
                v258 = *MEMORY[0x277CBC120];
                v259 = objc_msgSend_participantID(participantCopy, v255, v256);
                v41 = objc_msgSend_errorWithDomain_code_format_(v257, v260, v258, 5005, @"Couldn't serialize per-participant PCS for participant %@: %@", v259, v243);

                v9 = v240;
              }

              else
              {
                objc_msgSend_setProtectionInfo_(participantCopy, v244, v67);
                v9 = v240;
                if (objc_msgSend_isCurrentUser(participantCopy, v245, v246))
                {
                  v247 = self->_selfParticipantPCS;
                  v12 = v349;
                  if (v247)
                  {
                    CFRelease(v247);
                  }

                  self->_selfParticipantPCS = selfParticipantPCS;
                  CFRetain(selfParticipantPCS);
                  v41 = 0;
                  goto LABEL_159;
                }

                v41 = 0;
              }
            }

            v12 = v349;
LABEL_159:
            selfPPPCSOwnerIdentity = v345;
LABEL_160:
            CFRelease(v40);
            v40 = selfParticipantPCS;
            if (selfPPPCSOwnerIdentity)
            {
LABEL_161:
              CFRelease(selfPPPCSOwnerIdentity);
              v40 = selfParticipantPCS;
            }

LABEL_162:
            CFRelease(v40);
            goto LABEL_163;
          }

          v67 = 0;
          goto LABEL_159;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v165);
        }

        selfPPPCSOwnerIdentity = v345;
        v201 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v278 = v201;
          v281 = objc_msgSend_participantID(participantCopy, v279, v280);
          *buf = 138412546;
          v361 = v281;
          v362 = 2112;
          v363 = v41;
          _os_log_error_impl(&dword_22506F000, v278, OS_LOG_TYPE_ERROR, "Couldn't add per-participant PCS to invited PCS for participant %@: %@", buf, 0x16u);
        }

        v204 = MEMORY[0x277CBC560];
        v205 = *MEMORY[0x277CBC120];
        v206 = objc_msgSend_participantID(participantCopy, v202, v203);
        v208 = objc_msgSend_errorWithDomain_code_format_(v204, v207, v205, 5005, @"Couldn't add per-participant PCS to invited PCS for participant %@: %@", v206, v41);

        v67 = 0;
        v41 = v208;
LABEL_110:
        v12 = v349;
        goto LABEL_160;
      }
    }

    v90 = objc_msgSend_pcsManager(self, v43, v44);
    v358 = 0;
    selfParticipantPCS = objc_msgSend_createEmptySharePCSOfType_error_(v90, v91, 4, &v358);
    v92 = v358;

    v93 = *MEMORY[0x277CBC878];
    v94 = *MEMORY[0x277CBC880];
    if (!v92 && selfParticipantPCS)
    {
      if (v94 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v93);
      }

      v95 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v361 = participantCopy;
        v362 = 2112;
        v363 = selfParticipantPCS;
        _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Created a new per-participant PCS blob for participant %@: %@", buf, 0x16u);
      }

      if (objc_msgSend_role(participantCopy, v96, v97) == 1 && (objc_msgSend_pcsManager(self, v98, v99), v100 = objc_claimAutoreleasedReturnValue(), IsManatee = objc_msgSend_currentServiceIsManatee(v100, v101, v102), v100, IsManatee))
      {
        v105 = participantCopy;
        v106 = v19;
        selfPPPCSOwnerIdentity = v40;
        v108 = v38;
        v109 = objc_msgSend_pcsManager(self, v98, v104);
        v111 = objc_msgSend_copyPublicAuthorshipIdentityFromPCS_(v109, v110, s);

        if (!v111)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v12 = v349;
          participantCopy = v105;
          v248 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v329 = v248;
            v332 = objc_msgSend_participantID(v105, v330, v331);
            *buf = 138412290;
            v361 = v332;
            _os_log_debug_impl(&dword_22506F000, v329, OS_LOG_TYPE_DEBUG, "Couldn't get the share authorship identity for participant %@", buf, 0xCu);
          }

          v41 = 0;
          v67 = 0;
          v68 = 0;
          goto LABEL_161;
        }

        v114 = objc_msgSend_pcsManager(self, v112, v113);
        v345 = v111;
        objc_msgSend_setOwnerIdentity_onPCS_(v114, v115, v111, selfParticipantPCS);

        v38 = v108;
        v40 = selfPPPCSOwnerIdentity;
        v19 = v106;
        participantCopy = v105;
        v117 = objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v116, v105);
      }

      else
      {
        v345 = 0;
        v117 = objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v98, participantCopy);
      }

      if (!v117)
      {
        v136 = objc_msgSend_pcsManager(self, v118, v119);
        v138 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v136, v137, v40, selfParticipantPCS, v38 | v19);

        v139 = *MEMORY[0x277CBC878];
        if (v138)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v139);
          }

          selfPPPCSOwnerIdentity = v345;
          v140 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v282 = v140;
            v285 = objc_msgSend_participantID(participantCopy, v283, v284);
            *buf = 138412546;
            v361 = v285;
            v362 = 2112;
            v363 = v138;
            _os_log_error_impl(&dword_22506F000, v282, OS_LOG_TYPE_ERROR, "Couldn't add public identity to per-participant PCS for participant %@: %@", buf, 0x16u);
          }

          v143 = MEMORY[0x277CBC560];
          v144 = *MEMORY[0x277CBC120];
          v145 = objc_msgSend_participantID(participantCopy, v141, v142);
          v41 = objc_msgSend_errorWithDomain_code_format_(v143, v146, v144, 5005, @"Couldn't add public identity to per-participant PCS for participant %@: %@", v145, v138);

          v68 = 0;
          v67 = 0;
          goto LABEL_110;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v139);
        }

        v161 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v294 = v161;
          v297 = objc_msgSend_participantID(participantCopy, v295, v296);
          v299 = CKStringFromSharePermission(v19 | v38, v298);
          *buf = 138412546;
          v361 = v297;
          v362 = 2114;
          v363 = v299;
          _os_log_debug_impl(&dword_22506F000, v294, OS_LOG_TYPE_DEBUG, "Added participant's public identity to their per-participant blob for participant %@ with permission %{public}@", buf, 0x16u);
        }

        v68 = 0;
        goto LABEL_91;
      }

      v127 = objc_msgSend_share(self, v118, v119);
      v130 = objc_msgSend_currentUserParticipant(v127, v128, v129);

      if (objc_msgSend_role(v130, v131, v132) != 2)
      {
        selfPPPCSOwnerIdentity = v345;
        if (!v345)
        {
          v147 = objc_msgSend_pcsManager(self, v133, v134);
          selfPPPCSOwnerIdentity = objc_msgSend_copyPublicAuthorshipIdentityFromPCS_(v147, v148, s);

          v12 = v349;
          if (!selfPPPCSOwnerIdentity)
          {
            goto LABEL_122;
          }
        }

LABEL_78:
        v149 = objc_msgSend_userIdentity(participantCopy, v133, v134);
        v152 = objc_msgSend_publicSharingKey(v149, v150, v151);

        if (!v152)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v223 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v304 = v223;
            v307 = objc_msgSend_participantID(participantCopy, v305, v306);
            *buf = 138412290;
            v361 = v307;
            _os_log_error_impl(&dword_22506F000, v304, OS_LOG_TYPE_ERROR, "Cannot add participant %@ with missing public key to share", buf, 0xCu);
          }

          v226 = MEMORY[0x277CBC560];
          v227 = *MEMORY[0x277CBC120];
          v228 = objc_msgSend_participantID(participantCopy, v224, v225);
          v41 = objc_msgSend_errorWithDomain_code_format_(v226, v229, v227, 8014, @"Cannot add participant %@ with missing public key to share", v228);

          v12 = v349;
          goto LABEL_127;
        }

        v343 = v130;
        v153 = objc_alloc(MEMORY[0x277D42F00]);
        v155 = objc_msgSend_initWithShareProtectionRef_(v153, v154, selfParticipantPCS);
        v357 = 0;
        v68 = objc_msgSend_sharingRequestDataForIdentity_owner_flags_error_(v155, v156, v40, selfPPPCSOwnerIdentity, v38, &v357);
        v157 = v357;
        v158 = *MEMORY[0x277CBC878];
        v159 = *MEMORY[0x277CBC880];
        if (v157 || !v68)
        {
          if (v159 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v158);
          }

          v352 = v155;
          v231 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v312 = v231;
            v315 = objc_msgSend_participantID(participantCopy, v313, v314);
            *buf = 138412546;
            v361 = v315;
            v362 = 2112;
            v363 = v157;
            _os_log_error_impl(&dword_22506F000, v312, OS_LOG_TYPE_ERROR, "Couldn't create manatee sharing invitation data for participant %@: %@", buf, 0x16u);
          }

          v234 = MEMORY[0x277CBC560];
          v235 = *MEMORY[0x277CBC120];
          v236 = objc_msgSend_participantID(participantCopy, v232, v233);
          v238 = objc_msgSend_errorWithDomain_code_format_(v234, v237, v235, 5005, @"Couldn't create a manatee sharing invitation data for participant %@: %@", v236, v157);
          v239 = v157;
          v41 = v238;

          CFRelease(v40);
          v67 = 0;
          v12 = v349;
          goto LABEL_161;
        }

        if (v159 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v158);
        }

        v345 = selfPPPCSOwnerIdentity;
        v160 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v316 = v155;
          v317 = v160;
          v319 = CKStringFromSharePermission(v38, v318);
          *buf = 138412802;
          v361 = participantCopy;
          v362 = 2114;
          v363 = v319;
          v364 = 2112;
          v365 = v68;
          _os_log_debug_impl(&dword_22506F000, v317, OS_LOG_TYPE_DEBUG, "Created a new manatee sharing invitation blob for participant %@ with permission %{public}@: %@", buf, 0x20u);

          v155 = v316;
        }

LABEL_91:
        v89 = 1;
        goto LABEL_92;
      }

      v12 = v349;
      selfPPPCSOwnerIdentity = v345;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v135 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v290 = v135;
        v293 = objc_msgSend_participantID(v130, v291, v292);
        *buf = 138412290;
        v361 = v293;
        _os_log_debug_impl(&dword_22506F000, v290, OS_LOG_TYPE_DEBUG, "Admin %@ using the owner identity of self PPPCS to setup new participant", buf, 0xCu);

        v12 = v349;
        if (v345)
        {
LABEL_68:
          CFRetain(selfPPPCSOwnerIdentity);
          if (!selfPPPCSOwnerIdentity)
          {
LABEL_122:
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v230 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v308 = v230;
              v311 = objc_msgSend_participantID(participantCopy, v309, v310);
              *buf = 138412290;
              v361 = v311;
              _os_log_debug_impl(&dword_22506F000, v308, OS_LOG_TYPE_DEBUG, "Couldn't get the share authorship identity for participant %@", buf, 0xCu);
            }

            selfPPPCSOwnerIdentity = 0;
            v41 = 0;
LABEL_127:

            v68 = 0;
            v67 = 0;
            goto LABEL_160;
          }

          goto LABEL_78;
        }
      }

      else if (v345)
      {
        goto LABEL_68;
      }

      selfPPPCSOwnerIdentity = self->_selfPPPCSOwnerIdentity;
      goto LABEL_68;
    }

    if (v94 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v93);
    }

    v120 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v249 = v120;
      v252 = objc_msgSend_participantID(participantCopy, v250, v251);
      *buf = 138412546;
      v361 = v252;
      v362 = 2112;
      v363 = v92;
      _os_log_error_impl(&dword_22506F000, v249, OS_LOG_TYPE_ERROR, "Couldn't create a per-participant PCS for participant %@: %@", buf, 0x16u);
    }

    v123 = MEMORY[0x277CBC560];
    v124 = *MEMORY[0x277CBC120];
    v125 = objc_msgSend_participantID(participantCopy, v121, v122);
    v41 = objc_msgSend_errorWithDomain_code_format_(v123, v126, v124, 5005, @"Couldn't create a per-participant PCS for participant %@: %@", v125, v92);

    CFRelease(v40);
    v67 = 0;
    v68 = 0;
    v40 = selfParticipantPCS;
    v12 = v349;
    if (selfParticipantPCS)
    {
      goto LABEL_162;
    }
  }

LABEL_163:
  v267 = *MEMORY[0x277CBC878];
  if (v41)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v267);
    }

    v268 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v269 = v268;
      v272 = objc_msgSend_participantID(participantCopy, v270, v271);
      *buf = 138412546;
      v361 = v272;
      v362 = 2112;
      v363 = v41;
      _os_log_error_impl(&dword_22506F000, v269, OS_LOG_TYPE_ERROR, "Couldn't set up PCS data for new participant %@: %@", buf, 0x16u);
LABEL_173:
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v267);
    }

    v273 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v269 = v273;
      v272 = objc_msgSend_participantID(participantCopy, v276, v277);
      *buf = 138412290;
      v361 = v272;
      _os_log_debug_impl(&dword_22506F000, v269, OS_LOG_TYPE_DEBUG, "Successfully set up PCS data for new participant %@", buf, 0xCu);
      goto LABEL_173;
    }
  }

  v274 = v41;

  return v41;
}

- (id)_removePublicKey:(id)key fromInvitedPCS:(_OpaquePCSShareProtection *)s
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = objc_msgSend_pcsManager(self, v7, v8);
  v22 = 0;
  v11 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v9, v10, keyCopy, &v22);
  v12 = v22;

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (!v15)
  {
    v18 = objc_msgSend_pcsManager(self, v13, v14);
    v12 = objc_msgSend_removePublicIdentity_fromSharePCS_(v18, v19, v11, s);

    if (v12)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v24 = keyCopy;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Couldn't remove public key %{public}@ from the invited pcs: %@", buf, 0x16u);
      }
    }

LABEL_19:
    CFRelease(v11);
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v24 = keyCopy;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Couldn't create an identity from the public sharing key %{public}@: %@", buf, 0x16u);
  }

  if (!v12)
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5000, @"Couldn't create an identity from the public sharing key %@", keyCopy);
  }

  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v12;
}

- (void)clearProtectionDataForRecord
{
  v74 = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v71 clearProtectionDataForRecord];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_shareID(self, v7, v8);
    *buf = 138412290;
    v73 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Clearing share protection data for share %@", buf, 0xCu);
  }

  v10 = objc_msgSend_share(self, v4, v5);
  objc_msgSend_setPrivatePCS_(v10, v11, 0);

  v14 = objc_msgSend_share(self, v12, v13);
  objc_msgSend_setInvitedProtectionData_(v14, v15, 0);

  v18 = objc_msgSend_share(self, v16, v17);
  objc_msgSend_setInvitedProtectionEtag_(v18, v19, 0);

  v22 = objc_msgSend_share(self, v20, v21);
  objc_msgSend_setPublicPCS_(v22, v23, 0);

  v26 = objc_msgSend_share(self, v24, v25);
  objc_msgSend_setPublicProtectionData_(v26, v27, 0);

  v30 = objc_msgSend_share(self, v28, v29);
  objc_msgSend_setPublicProtectionEtag_(v30, v31, 0);

  v34 = objc_msgSend_share(self, v32, v33);
  objc_msgSend_setPreviousProtectionEtag_(v34, v35, 0);

  v38 = objc_msgSend_share(self, v36, v37);
  objc_msgSend_setPreviousPublicProtectionEtag_(v38, v39, 0);

  objc_msgSend_setSharePCSData_(self, v40, 0);
  objc_msgSend_setSharedZonePCSData_(self, v41, 0);
  v44 = objc_msgSend_operation(self, v42, v43);
  v47 = objc_msgSend_shareID(self, v45, v46);
  objc_msgSend_setPCSData_forFetchedShareID_(v44, v48, 0, v47);

  v51 = objc_msgSend_share(self, v49, v50);
  v54 = objc_msgSend_participants(v51, v52, v53);
  v56 = objc_msgSend_CKCompactMap_(v54, v55, &unk_28385D700);

  v59 = objc_msgSend_container(v44, v57, v58);
  v62 = objc_msgSend_backgroundPublicIdentityLookupService(v59, v60, v61);

  objc_msgSend_removeCacheForLookupInfos_(v62, v63, v56);
  v66 = objc_msgSend_container(v44, v64, v65);
  v69 = objc_msgSend_foregroundPublicIdentityLookupService(v66, v67, v68);

  objc_msgSend_removeCacheForLookupInfos_(v69, v70, v56);
}

- (void)setServerRecord:(id)record
{
  v174 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v8 = objc_msgSend_operation(self, v6, v7);
  if (!recordCopy)
  {
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v156 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v156, v157, a2, self, @"CKDModifyShareHandler.m", 1507, @"Share handler called back with a CKRecord instead of a CKShare");
  }

  v11 = recordCopy;
  v14 = objc_msgSend_mutableEncryptedPSK(v11, v12, v13);

  if (v14)
  {
    v17 = objc_alloc(MEMORY[0x277CBC2E8]);
    v20 = objc_msgSend_mutableEncryptedPSK(v11, v18, v19);
    v23 = objc_msgSend_data(v20, v21, v22);
    v25 = objc_msgSend_initWithData_(v17, v24, v23);
    v28 = objc_msgSend_share(self, v26, v27);
    objc_msgSend_setMutableEncryptedPSK_(v28, v29, v25);
LABEL_8:

    goto LABEL_9;
  }

  v30 = objc_msgSend_share(self, v15, v16);
  v33 = objc_msgSend_mutableEncryptedPSK(v30, v31, v32);

  if (v33)
  {
    v36 = objc_alloc(MEMORY[0x277CBC2E8]);
    v20 = objc_msgSend_share(self, v37, v38);
    v23 = objc_msgSend_mutableEncryptedPSK(v20, v39, v40);
    v25 = objc_msgSend_data(v23, v41, v42);
    v28 = objc_msgSend_initWithData_(v36, v43, v25);
    objc_msgSend_setMutableEncryptedPSK_(v11, v44, v28);
    goto LABEL_8;
  }

LABEL_9:
  v159 = v8;
  v160 = recordCopy;
  v161 = v11;
  v45 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v11, v34, v35);
  selfCopy = self;
  v48 = objc_msgSend_share(self, v46, v47);
  v51 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v48, v49, v50);

  v52 = MEMORY[0x277CBEB98];
  v55 = objc_msgSend_allKeys(v45, v53, v54);
  v58 = objc_msgSend_allKeys(v51, v56, v57);
  v60 = objc_msgSend_arrayByAddingObjectsFromArray_(v55, v59, v58);
  v62 = objc_msgSend_setWithArray_(v52, v61, v60);

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = v62;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v168, v173, 16);
  if (!v64)
  {
    goto LABEL_26;
  }

  v66 = v64;
  v67 = *v169;
  do
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v169 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v69 = *(*(&v168 + 1) + 8 * i);
      v70 = objc_msgSend_objectForKeyedSubscript_(v45, v65, v69);
      v72 = objc_msgSend_objectForKeyedSubscript_(v51, v71, v69);
      v75 = v72;
      if (v72)
      {
        if (v70)
        {
          v76 = objc_msgSend_encryptedOneTimeFullToken(v70, v73, v74);
          v79 = objc_msgSend_data(v76, v77, v78);

          if (v79)
          {
            v82 = objc_alloc(MEMORY[0x277CBC2E8]);
            v85 = objc_msgSend_encryptedOneTimeFullToken(v70, v83, v84);
            v88 = objc_msgSend_data(v85, v86, v87);
            v90 = objc_msgSend_initWithData_(v82, v89, v88);
            objc_msgSend_setEncryptedOneTimeFullToken_(v75, v91, v90);
          }

          else
          {
            v94 = objc_msgSend_encryptedOneTimeFullToken(v75, v80, v81);
            v97 = objc_msgSend_data(v94, v95, v96);

            if (!v97)
            {
              goto LABEL_24;
            }

            v98 = objc_alloc(MEMORY[0x277CBC2E8]);
            v85 = objc_msgSend_encryptedOneTimeFullToken(v75, v99, v100);
            v88 = objc_msgSend_data(v85, v101, v102);
            v90 = objc_msgSend_initWithData_(v98, v103, v88);
            objc_msgSend_setEncryptedOneTimeFullToken_(v70, v104, v90);
          }
        }

        else
        {
          v85 = objc_msgSend_copy(v72, v73, v74);
          objc_msgSend_setObject_forKeyedSubscript_(v45, v93, v85, v69);
        }
      }

      else
      {
        v85 = objc_msgSend_copy(v70, v73, v74);
        objc_msgSend_setObject_forKeyedSubscript_(v51, v92, v85, v69);
      }

LABEL_24:
    }

    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v168, v173, 16);
  }

  while (v66);
LABEL_26:

  if (objc_msgSend_count(v45, v105, v106))
  {
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v161, v107, v45);
  }

  self = selfCopy;
  if (objc_msgSend_count(v51, v107, v108))
  {
    v111 = objc_msgSend_share(selfCopy, v109, v110);
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v111, v112, v51);
  }

  v113 = objc_msgSend_etag(v161, v109, v110);

  if (v113)
  {
    v116 = objc_msgSend_etag(v161, v114, v115);
    v119 = objc_msgSend_share(selfCopy, v117, v118);
    objc_msgSend_setEtag_(v119, v120, v116);
    goto LABEL_34;
  }

  v121 = objc_msgSend_share(selfCopy, v114, v115);
  v124 = objc_msgSend_etag(v121, v122, v123);

  if (v124)
  {
    v116 = objc_msgSend_share(selfCopy, v125, v126);
    v119 = objc_msgSend_etag(v116, v127, v128);
    objc_msgSend_setEtag_(v161, v129, v119);
LABEL_34:
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v130 = objc_msgSend_participants(v161, v125, v126);
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v164, v172, 16);
  if (v132)
  {
    v135 = v132;
    v136 = *v165;
    do
    {
      for (j = 0; j != v135; ++j)
      {
        if (*v165 != v136)
        {
          objc_enumerationMutation(v130);
        }

        v138 = *(*(&v164 + 1) + 8 * j);
        v139 = objc_msgSend_share(selfCopy, v133, v134);
        v141 = objc_msgSend__knownParticipantEqualToParticipant_(v139, v140, v138);

        v144 = objc_msgSend_invitationToken(v141, v142, v143);

        if (v144)
        {
          v147 = objc_msgSend_invitationToken(v141, v145, v146);
          objc_msgSend_setInvitationToken_(v138, v148, v147);
        }
      }

      v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v164, v172, 16);
    }

    while (v135);
  }

  v8 = v159;
  v151 = objc_msgSend_container(v159, v149, v150);
  v154 = objc_msgSend_databaseScope(v159, v152, v153);
  objc_msgSend__prepPCSDataUsingPreDecryptedPCSOnlyWithContainer_databaseScope_(v161, v155, v151, v154);

  recordCopy = v160;
LABEL_45:
  v163.receiver = self;
  v163.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v163 setServerRecord:recordCopy];
}

- (void)savePCSDataToCache
{
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_etag(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_record(self, v11, v12);
    v16 = objc_msgSend_etag(v13, v14, v15);
    v19 = objc_msgSend_sharePCSData(self, v17, v18);
    objc_msgSend_setShareEtag_(v19, v20, v16);
  }

  v21 = objc_msgSend_sharePCSData(self, v11, v12);
  v24 = objc_msgSend_shareID(self, v22, v23);
  objc_msgSend_setPCSData_forFetchedShareID_(v4, v25, v21, v24);

  v28 = objc_msgSend_sharedZonePCSData(self, v26, v27);

  if (v28)
  {
    v31 = objc_msgSend_sharedZonePCSData(self, v29, v30);
    v34 = objc_msgSend_shareID(self, v32, v33);
    v37 = objc_msgSend_zoneID(v34, v35, v36);
    objc_msgSend_setPCSData_forFetchedZoneID_(v4, v38, v31, v37);
  }

  v39.receiver = self;
  v39.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v39 savePCSDataToCache];
}

- (void)updateParticipantsForFetchedShare:(id)share error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  errorCopy = error;
  v11 = errorCopy;
  if (errorCopy)
  {
    if (objc_msgSend_CKIsObjectNotFoundError(errorCopy, v9, v10))
    {
      objc_msgSend_clearProtectionDataForRecord(self, v12, v13);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = objc_msgSend_share(self, v14, v15, 0);
      v19 = objc_msgSend_addedParticipants(v16, v17, v18);

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v42, 16);
      if (v21)
      {
        v23 = v21;
        v24 = *v39;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(v19);
            }

            objc_msgSend_setProtectionInfo_(*(*(&v38 + 1) + 8 * i), v22, 0);
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v38, v42, 16);
        }

        while (v23);
      }

      objc_msgSend_setState_(self, v26, 1);
      objc_msgSend_setError_(self, v27, 0);
    }

    else
    {
      objc_msgSend_setState_(self, v12, 12);
      objc_msgSend_setError_(self, v35, v11);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, self, @"CKDModifyShareHandler.m", 1592, @"Share handler called back with a CKRecord instead of a CKShare");
    }

    v30 = objc_msgSend_share(self, v28, v29);
    v32 = objc_msgSend_updateFromServerShare_(v30, v31, shareCopy);

    if (v32)
    {
      objc_msgSend_setState_(self, v33, 12);
      objc_msgSend_setError_(self, v34, v32);
    }

    else
    {
      objc_msgSend_setState_(self, v33, 1);
    }
  }
}

- (void)dealloc
{
  selfPPPCSOwnerIdentity = self->_selfPPPCSOwnerIdentity;
  if (selfPPPCSOwnerIdentity)
  {
    CFRelease(selfPPPCSOwnerIdentity);
    self->_selfPPPCSOwnerIdentity = 0;
  }

  selfParticipantPCS = self->_selfParticipantPCS;
  if (selfParticipantPCS)
  {
    CFRelease(selfParticipantPCS);
    self->_selfParticipantPCS = 0;
  }

  v5.receiver = self;
  v5.super_class = CKDModifyShareHandler;
  [(CKDModifyShareHandler *)&v5 dealloc];
}

@end