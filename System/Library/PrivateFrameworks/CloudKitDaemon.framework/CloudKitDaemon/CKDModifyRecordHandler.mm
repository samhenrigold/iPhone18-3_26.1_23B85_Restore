@interface CKDModifyRecordHandler
+ (id)_stringForState:(unint64_t)state;
+ (id)modifyHandlerForDeleteWithRecordID:(id)d operation:(id)operation;
+ (id)modifyHandlerWithRecord:(id)record operation:(id)operation;
- (BOOL)_canSetPreviousProtectionEtag;
- (BOOL)_createPublicSharingKeyWithError:(id *)error;
- (BOOL)_encryptMergeableDeltasInRecordValueStore:(id)store shareProtection:(_OpaquePCSShareProtection *)protection;
- (BOOL)_needsSigningPCS;
- (BOOL)_prepareAsset:(id)asset recordKey:(id)key mergeableDeltaID:(id)d record:(id)record error:(id *)error;
- (BOOL)_wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s forField:(id)field recordID:(id)d;
- (BOOL)_wrapEncryptedDataForRecordValueStore:(id)store withPCS:(_OpaquePCSShareProtection *)s;
- (BOOL)_wrapEncryptedDataOnRecord:(id)record;
- (BOOL)requiresPCS;
- (CKDModifyRecordsOperation)operation;
- (CKDPCSCache)pcsCache;
- (CKDPCSManager)pcsManager;
- (CKRecordID)recordID;
- (NSString)etag;
- (id)_addParentPCS:(id)s toRecordPCS:(id)cS;
- (id)_initCommonWithOperation:(id)operation;
- (id)_initForDeleteWithRecordID:(id)d operation:(id)operation;
- (id)_initWithRecord:(id)record operation:(id)operation;
- (id)assetsWhichNeedRecordFetch;
- (id)description;
- (id)prepareAssetsForUploadWithError:(id *)error;
- (id)sideEffectRecordIDs;
- (void)_clearRecordProtectionDataForRecord;
- (void)_continueCreateAndSavePCSWithZonePCS:(id)s sharePCS:(id)cS;
- (void)_createAndSavePCS;
- (void)_fetchExistingPCSForProvidedPCSData:(id)data;
- (void)_fetchPCSData;
- (void)_fetchParentPCSForData:(id)data withError:(id)error;
- (void)_fetchParentPCSForID:(id)d withCompletionHandler:(id)handler;
- (void)_fetchSharePCSForID:(id)d withCompletionHandler:(id)handler;
- (void)_fetchSigningPCSForRecordToDelete;
- (void)_handlePCSData:(id)data withError:(id)error;
- (void)_keyRollIfNeededForRecordPCSData:(id)data withError:(id)error;
- (void)_loadPCSData;
- (void)_pretendToWrapEncryptedDataForRecordValueStore:(id)store;
- (void)_reallyAddShareToPCSData:(id)data withError:(id)error;
- (void)_reallyFetchPCSDataWithOptions:(unint64_t)options;
- (void)_setSigningPCSIdentity:(id)identity;
- (void)_unwrapRecordPCSForParent;
- (void)_unwrapRecordPCSForZone;
- (void)_unwrapRecordPCSWithShareID:(id)d;
- (void)fetchRecordPCSData;
- (void)fetchSharePCSData;
- (void)noteSideEffectRecordPendingDelete:(id)delete;
- (void)prepareForSaveWithCompletionHandler:(id)handler;
- (void)prepareStreamingAsset:(id)asset forUploadWithRecord:(id)record;
- (void)savePCSDataToCache;
- (void)setServerRecord:(id)record;
@end

@implementation CKDModifyRecordHandler

- (id)_initCommonWithOperation:(id)operation
{
  operationCopy = operation;
  v10.receiver = self;
  v10.super_class = CKDModifyRecordHandler;
  v5 = [(CKDModifyRecordHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_operation, operationCopy);
    v7 = dispatch_group_create();
    pcsGroup = v6->_pcsGroup;
    v6->_pcsGroup = v7;

    v6->_saveCompletionBlockCalled = 0;
  }

  return v6;
}

- (id)_initWithRecord:(id)record operation:(id)operation
{
  recordCopy = record;
  inited = objc_msgSend__initCommonWithOperation_(self, v8, operation);
  v10 = inited;
  if (inited)
  {
    objc_storeStrong((inited + 32), record);
    *(v10 + 8) = 0;
    *(v10 + 88) = 0;
  }

  return v10;
}

- (id)_initForDeleteWithRecordID:(id)d operation:(id)operation
{
  dCopy = d;
  inited = objc_msgSend__initCommonWithOperation_(self, v8, operation);
  v10 = inited;
  if (inited)
  {
    objc_storeStrong((inited + 40), d);
    *(v10 + 8) = 1;
    v13 = objc_msgSend__needsSigningPCS(v10, v11, v12);
    v14 = 5;
    if (v13)
    {
      v14 = 2;
    }

    *(v10 + 88) = v14;
  }

  return v10;
}

+ (id)modifyHandlerWithRecord:(id)record operation:(id)operation
{
  operationCopy = operation;
  recordCopy = record;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initWithRecord_operation_(v7, v8, recordCopy, operationCopy);

  return v9;
}

+ (id)modifyHandlerForDeleteWithRecordID:(id)d operation:(id)operation
{
  operationCopy = operation;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initForDeleteWithRecordID_operation_(v7, v8, dCopy, operationCopy);

  return v9;
}

- (CKRecordID)recordID
{
  recordID = self->_recordID;
  if (recordID)
  {
    v4 = recordID;
  }

  else
  {
    v5 = objc_msgSend_record(self, a2, v2);
    v4 = objc_msgSend_recordID(v5, v6, v7);
  }

  return v4;
}

- (NSString)etag
{
  etag = self->_etag;
  if (etag)
  {
    v4 = etag;
  }

  else
  {
    v5 = objc_msgSend_record(self, a2, v2);
    v4 = objc_msgSend_etag(v5, v6, v7);
  }

  return v4;
}

- (CKDPCSManager)pcsManager
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsManager(v6, v7, v8);

  return v9;
}

- (CKDPCSCache)pcsCache
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsCache(v6, v7, v8);

  return v9;
}

+ (id)_stringForState:(unint64_t)state
{
  if (state > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_278549E90[state];
  }
}

- (id)description
{
  isShare = objc_msgSend_isShare(self, a2, v2);
  v7 = objc_msgSend_isDelete(self, v5, v6);
  v8 = @"Share";
  if (v7)
  {
    v8 = @"ShareID";
    v9 = @"RecordID";
  }

  else
  {
    v9 = @"Record";
  }

  if (isShare)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16 = objc_msgSend_recordID(self, v14, v15);
  if (objc_msgSend_isDelete(self, v17, v18))
  {
    v21 = @" (isDelete)";
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v22 = objc_msgSend_state(self, v19, v20);
  v24 = objc_msgSend__stringForState_(CKDModifyRecordHandler, v23, v22);
  v26 = objc_msgSend_stringWithFormat_(v11, v25, @"<%@ %p> (%@: %@ %@%@)", v13, self, v10, v16, v21, v24);

  return v26;
}

- (id)sideEffectRecordIDs
{
  if (objc_msgSend_state(self, a2, v2))
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDModifyRecordHandler.m", 184, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler sideEffectRecordIDs]", self, "CKDModifyRecordHandlerStateNeedRecordSideEffects");
  }

  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);

  if (v10)
  {
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_msgSend_record(self, v11, v12);
    v17 = objc_msgSend_share(v14, v15, v16);
    v20 = objc_msgSend_recordID(v17, v18, v19);
    v22 = objc_msgSend_setWithObject_(v13, v21, v20);
  }

  else
  {
    v22 = 0;
  }

  return v22;
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

- (BOOL)requiresPCS
{
  if ((objc_msgSend__needsSigningPCS(self, a2, v2) & 1) == 0)
  {
    if (objc_msgSend_isDelete(self, v4, v5))
    {
      return 0;
    }

    v9 = objc_msgSend_record(self, v7, v8);
    v12 = objc_msgSend_operation(self, v10, v11);
    if (objc_msgSend_savePolicy(v12, v13, v14) == 2 && (objc_msgSend_hasPropertiesRequiringEncryption(v9, v15, v16) & 1) != 0 || (objc_msgSend_hasModifiedPropertiesRequiringEncryption(v9, v15, v16) & 1) != 0)
    {
      goto LABEL_8;
    }

    v19 = objc_msgSend_share(v9, v17, v18);
    if (!v19)
    {
      if ((objc_msgSend_hasUpdatedParent(v9, v20, v21) & 1) == 0)
      {
        v25 = objc_msgSend_parentsByRecordID(v12, v22, v23);
        v28 = objc_msgSend_recordID(self, v26, v27);
        v30 = objc_msgSend_objectForKeyedSubscript_(v25, v29, v28);

        if (v30)
        {
LABEL_8:
          v6 = 1;
LABEL_14:

          return v6;
        }

        v19 = objc_msgSend_protectionData(v9, v31, v32);
        if (v19)
        {
          goto LABEL_12;
        }

        if ((objc_msgSend_wantsChainPCS(v9, v33, v34) & 1) == 0 && (objc_msgSend_wantsPublicSharingKey(v9, v35, v36) & 1) == 0)
        {
          v39 = objc_msgSend_container(v12, v37, v38);
          v42 = objc_msgSend_options(v39, v40, v41);
          if (objc_msgSend_acceptServerSignedRecords(v42, v43, v44))
          {
            v6 = objc_msgSend_needsRollAndCounterSign(v9, v45, v46);
          }

          else
          {
            v6 = 0;
          }

          v19 = 0;
          goto LABEL_13;
        }
      }

      v19 = 0;
    }

LABEL_12:
    v6 = 1;
LABEL_13:

    goto LABEL_14;
  }

  return 1;
}

- (BOOL)_needsSigningPCS
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_options(v6, v7, v8);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v9, v10, v11))
  {
    v14 = objc_msgSend_databaseScope(v3, v12, v13) == 3;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)fetchRecordPCSData
{
  v82 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, v2) != 2)
  {
    v76 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v77, a2, self, @"CKDModifyRecordHandler.m", 241, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler fetchRecordPCSData]", self, "CKDModifyRecordHandlerStateNeedRecordPCSData");
  }

  if (!objc_msgSend_isDelete(self, v5, v6))
  {
    v9 = objc_msgSend_record(self, v7, v8);
    v14 = objc_msgSend_operation(self, v10, v11);
    if (!v9)
    {
      v78 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v78, v79, a2, self, @"CKDModifyRecordHandler.m", 251, @"Lost a record: %@", self);
    }

    if (objc_msgSend_savePolicy(v14, v12, v13) == 2)
    {
      hasPropertiesRequiringEncryption = objc_msgSend_hasPropertiesRequiringEncryption(v9, v15, v16);
    }

    else
    {
      hasPropertiesRequiringEncryption = objc_msgSend_hasModifiedPropertiesRequiringEncryption(v9, v15, v16);
    }

    v20 = hasPropertiesRequiringEncryption;
    v21 = objc_msgSend_share(v9, v18, v19);
    if (!v21)
    {
      if ((objc_msgSend_hasUpdatedParent(v9, v22, v23) & 1) == 0)
      {
        v26 = objc_msgSend_parentsByRecordID(v14, v24, v25);
        v29 = objc_msgSend_recordID(self, v27, v28);
        v31 = objc_msgSend_objectForKeyedSubscript_(v26, v30, v29);
        v32 = v31 != 0;

        if ((v32 | v20))
        {
          goto LABEL_18;
        }

        v21 = objc_msgSend_protectionData(v9, v33, v34);
        if (v21)
        {
          goto LABEL_17;
        }

        if ((objc_msgSend_wantsChainPCS(v9, v35, v36) & 1) == 0 && (objc_msgSend_wantsPublicSharingKey(v9, v54, v55) & 1) == 0 && (objc_msgSend__needsSigningPCS(self, v56, v57) & 1) == 0)
        {
          v60 = objc_msgSend_container(v14, v58, v59);
          v63 = objc_msgSend_options(v60, v61, v62);
          if (objc_msgSend_acceptServerSignedRecords(v63, v64, v65))
          {
            v68 = objc_msgSend_needsRollAndCounterSign(v9, v66, v67);

            if (v68)
            {
LABEL_18:
              objc_msgSend_setRecordPCS_(v9, v33, 0);
              v39 = objc_msgSend_stateTransitionGroup(v14, v37, v38);
              dispatch_group_enter(v39);

              v42 = objc_msgSend_protectionData(v9, v40, v41);

              v43 = *MEMORY[0x277CBC878];
              if (v42)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v43);
                }

                v44 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
                {
                  v47 = v44;
                  v50 = objc_msgSend_recordID(v9, v48, v49);
                  *buf = 138412290;
                  v81 = v50;
                  _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Record %@ already has protection info", buf, 0xCu);
                }

                objc_msgSend__loadPCSData(self, v45, v46);
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v43);
                }

                v51 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
                {
                  v70 = v51;
                  v73 = objc_msgSend_recordID(v9, v71, v72);
                  *buf = 138412290;
                  v81 = v73;
                  _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Fetching protection info for record %@", buf, 0xCu);
                }

                objc_msgSend__fetchPCSData(self, v52, v53);
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          v74 = objc_msgSend_pcsGroup(self, v33, v69);
          dispatch_group_leave(v74);

          objc_msgSend_setState_(self, v75, 3);
LABEL_29:

          return;
        }
      }

      v21 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  MEMORY[0x2821F9670](self, sel__fetchSigningPCSForRecordToDelete, v8);
}

- (void)_fetchSigningPCSForRecordToDelete
{
  if ((objc_msgSend__needsSigningPCS(self, a2, v2) & 1) == 0)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDModifyRecordHandler.m", 285, @"Fetching signing PCS for records to delete when not needed");
  }

  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_recordID(self, v8, v9);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v11 = dispatch_group_create();
  v14 = objc_msgSend_stateTransitionGroup(v7, v12, v13);
  dispatch_group_enter(v14);

  objc_initWeak(&location, self);
  dispatch_group_enter(v11);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Beginning signing PCS fetch. Fetching zone PCS and checking if there is a share PCS on it", buf, 2u);
  }

  v18 = objc_msgSend_pcsCache(self, v16, v17);
  v21 = objc_msgSend_zoneID(v10, v19, v20);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2251ED558;
  v38[3] = &unk_278549C68;
  objc_copyWeak(&v43, &location);
  v22 = v11;
  v39 = v22;
  v23 = v10;
  v40 = v23;
  v42 = v46;
  v24 = v7;
  v41 = v24;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v18, v25, v21, v24, 16, v38);

  v28 = objc_msgSend_modifyRecordsQueue(v24, v26, v27);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251ED918;
  block[3] = &unk_278546AF0;
  v34 = v23;
  selfCopy = self;
  v36 = v24;
  v37 = v46;
  v29 = v24;
  v30 = v23;
  dispatch_group_notify(v22, v28, block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(v46, 8);
}

- (void)_setSigningPCSIdentity:(id)identity
{
  v88 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if ((objc_msgSend__needsSigningPCS(self, v6, v7) & 1) == 0)
  {
    v82 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v82, v83, a2, self, @"CKDModifyRecordHandler.m", 338, @"Unexpectedly setting signing PCS");
  }

  v10 = objc_msgSend_record(self, v8, v9);
  if (objc_msgSend_signingPCSIdentity(v10, v11, v12))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_share(v10, v13, v14);
  v16 = MEMORY[0x277CBC880];
  v17 = MEMORY[0x277CBC858];
  if (v15)
  {

LABEL_8:
    v22 = objc_msgSend_share(v10, v18, v19);
    if (v22)
    {
      v23 = objc_msgSend_share(v10, v20, v21);
      v26 = objc_msgSend_recordID(v23, v24, v25);
    }

    else
    {
      v26 = objc_msgSend_recordID(v10, v20, v21);
    }

    if (*v16 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v64 = v27;
      v67 = objc_msgSend_recordID(v10, v65, v66);
      v84 = 138412546;
      v85 = v67;
      v86 = 2112;
      v87 = v26;
      _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be the current user's per participant PCS in share: %@", &v84, 0x16u);
    }

    v30 = identityCopy;
LABEL_16:
    v31 = objc_msgSend_sharePCSData(v30, v28, v29);
    v34 = objc_msgSend_myParticipantPCS(v31, v32, v33);

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v46 = objc_msgSend_zonePCSData(identityCopy, v18, v19);
  v49 = objc_msgSend_sharePCSData(v46, v47, v48);

  if (v49)
  {
    if (*v16 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v52 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v68 = v52;
      v71 = objc_msgSend_recordID(v10, v69, v70);
      v84 = 138412290;
      v85 = v71;
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be current user's per participant PCS of zone share", &v84, 0xCu);
    }

    v30 = objc_msgSend_zonePCSData(identityCopy, v53, v54);
    v26 = v30;
    goto LABEL_16;
  }

  v55 = objc_msgSend_parent(v10, v50, v51);

  if (!v55)
  {
    goto LABEL_36;
  }

  if (*v16 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v56 = *v17;
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
  {
    v72 = v56;
    v75 = objc_msgSend_recordID(v10, v73, v74);
    v78 = objc_msgSend_parent(v10, v76, v77);
    v81 = objc_msgSend_recordID(v78, v79, v80);
    v84 = 138412546;
    v85 = v75;
    v86 = 2112;
    v87 = v81;
    _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be that of parent: %@", &v84, 0x16u);
  }

  v26 = objc_msgSend_parentPCSData(identityCopy, v57, v58);
  v34 = objc_msgSend_signingPCS(v26, v59, v60);
LABEL_17:

  if (!v34)
  {
LABEL_36:
    if (*v16 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *v17;
    if (!os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v39 = v61;
    v42 = objc_msgSend_recordID(self, v62, v63);
    v84 = 138412290;
    v85 = v42;
    v43 = "Couldn't fetch signing PCS to create a signature for record %@";
    v44 = v39;
    v45 = 12;
LABEL_40:
    _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, v43, &v84, v45);

    goto LABEL_4;
  }

  v35 = PCSFPCopyCurrentPrivateKey();
  if (v35)
  {
    v37 = v35;
    objc_msgSend_setSigningPCSIdentity_(v10, v36, v35);
    CFRelease(v37);
    goto LABEL_4;
  }

  if (*v16 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v38 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v39 = v38;
    v42 = objc_msgSend_recordID(self, v40, v41);
    v84 = 138412546;
    v85 = v34;
    v86 = 2112;
    v87 = v42;
    v43 = "Couldn't get a private identity from the signing PCS %@ for record %@";
    v44 = v39;
    v45 = 22;
    goto LABEL_40;
  }

LABEL_4:
}

- (BOOL)_canSetPreviousProtectionEtag
{
  v3 = objc_msgSend_operation(self, a2, v2);
  canSetPreviousProtectionEtag = objc_msgSend_canSetPreviousProtectionEtag(v3, v4, v5);

  return canSetPreviousProtectionEtag;
}

- (BOOL)_createPublicSharingKeyWithError:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_record(self, a2, error);
  v6 = MEMORY[0x277CBC880];
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC858];
  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v14 = objc_msgSend_recordID(v5, v12, v13);
    *buf = 138412290;
    v63 = v14;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Creating a new random sharing identity for record %@", buf, 0xCu);
  }

  v15 = objc_msgSend_pcsManager(self, v9, v10);
  v61 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v15, v16, &v61);
  v18 = v61;

  if (v18)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v54 = v19;
      v57 = objc_msgSend_recordID(v5, v55, v56);
      *buf = 138412546;
      v63 = v57;
      v64 = 2112;
      v65 = v18;
      _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Couldn't create a new sharing identity for record %@: %@", buf, 0x16u);
    }
  }

  v60[1] = 0;
  v20 = PCSIdentityCopyExternalForm();
  if (v20)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v25 = objc_msgSend_recordID(v5, v23, v24);
      PublicKey = PCSIdentityGetPublicKey();
      v27 = MEMORY[0x277CCACA8];
      v58 = PublicKey;
      v28 = [v27 alloc];
      v30 = objc_msgSend_initWithData_encoding_(v28, v29, v20, 4);
      *buf = 138412802;
      v63 = v25;
      v64 = 2112;
      v65 = PublicKey;
      v66 = 2112;
      v67 = v30;
      _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Using identity for public PCS on record %@: %@: %@", buf, 0x20u);
    }
  }

  v31 = objc_alloc(MEMORY[0x277CBC2E8]);
  v34 = objc_msgSend_pcsManager(self, v32, v33);
  v60[0] = 0;
  v36 = objc_msgSend_dataFromSharingIdentity_error_(v34, v35, RandomSharingIdentityWithError, v60);
  v37 = v60[0];
  v39 = objc_msgSend_initWithData_(v31, v38, v36);
  objc_msgSend_setMutableEncryptedPSK_(v5, v40, v39);

  if (v37)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v37;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Couldn't create data from our public sharing identity: %@", buf, 0xCu);
    }

    if (errorCopy)
    {
      v44 = MEMORY[0x277CBC560];
      v45 = *MEMORY[0x277CBC120];
      v46 = objc_msgSend_recordID(self, v42, v43);
      *errorCopy = objc_msgSend_errorWithDomain_code_format_(v44, v47, v45, 5005, @"Couldn't create public sharing identity for record %@", v46);
    }

    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v49 = v48;
      v52 = objc_msgSend_recordID(self, v50, v51);
      *buf = 138412546;
      v63 = v52;
      v64 = 2112;
      v65 = v37;
      _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Couldn't create a public sharing identity for record %@: %@", buf, 0x16u);
    }
  }

  if (RandomSharingIdentityWithError)
  {
    CFRelease(RandomSharingIdentityWithError);
  }

  return v37 == 0;
}

- (void)_loadPCSData
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_pcsManager(self, a2, v2);
  v10 = objc_msgSend_operation(self, v6, v7);
  if (!v5)
  {
    v66 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v69 = objc_msgSend_container(v10, v67, v68);
    v72 = objc_msgSend_pcsManager(self, v70, v71);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v66, v73, a2, self, @"CKDModifyRecordHandler.m", 417, @"Need a PCS Manager (%@, %@, %@)", self, v69, v72);
  }

  v11 = objc_msgSend_record(self, v8, v9);
  v14 = objc_msgSend_zoneishKeyID(v11, v12, v13);
  if (v14)
  {

LABEL_6:
    objc_msgSend__unwrapRecordPCSForZone(self, v17, v18);
    goto LABEL_7;
  }

  v19 = objc_msgSend_databaseScope(v10, v15, v16);

  if (v19 == 2)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_databaseScope(v10, v17, v18) == 3)
  {
    v22 = objc_msgSend_record(self, v20, v21);
    v25 = objc_msgSend_share(v22, v23, v24);

    if (v25)
    {
      v26 = objc_msgSend_record(self, v20, v21);
      v29 = objc_msgSend_share(v26, v27, v28);
      v32 = objc_msgSend_recordID(v29, v30, v31);
      objc_msgSend__unwrapRecordPCSWithShareID_(self, v33, v32);

LABEL_16:
      goto LABEL_7;
    }
  }

  if (objc_msgSend_databaseScope(v10, v20, v21) == 3)
  {
    v36 = objc_msgSend_record(self, v34, v35);
    v39 = objc_msgSend_parent(v36, v37, v38);

    if (v39)
    {
      objc_msgSend__unwrapRecordPCSForParent(self, v34, v35);
      goto LABEL_7;
    }
  }

  v40 = objc_msgSend_record(self, v34, v35);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v26 = objc_msgSend_record(self, v42, v43);
    v29 = objc_msgSend_recordID(v26, v44, v45);
    objc_msgSend__unwrapRecordPCSWithShareID_(self, v46, v29);
    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v50 = v47;
    v53 = objc_msgSend_record(self, v51, v52);
    v56 = objc_msgSend_recordID(v53, v54, v55);
    *buf = 138412290;
    v75 = v56;
    _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_INFO, "Warn: Record %@ isn't in the private database, doesn't have a share or parent set and isn't a share", buf, 0xCu);
  }

  v57 = MEMORY[0x277CBC560];
  v58 = *MEMORY[0x277CBC120];
  v59 = objc_msgSend_record(self, v48, v49);
  v62 = objc_msgSend_recordID(v59, v60, v61);
  v64 = objc_msgSend_errorWithDomain_code_format_(v57, v63, v58, 5001, @"Record %@ isn't in the private database, doesn't have a share or parent set and isn't a share", v62);
  objc_msgSend__addShareToPCSData_withError_(self, v65, 0, v64);

LABEL_7:
}

- (void)_reallyFetchPCSDataWithOptions:(unint64_t)options
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_record(self, a2, options);
  objc_initWeak(&location, self);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!objc_msgSend_isZoneWideShare(v5, v6, v7))
  {
    goto LABEL_12;
  }

  v8 = objc_msgSend_sharePCSData(self, v6, v7);
  if (!v8)
  {
    goto LABEL_12;
  }

  v11 = objc_msgSend_sharedZonePCSData(self, v6, v7);
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = objc_msgSend_sharedZonePCSData(self, v9, v10);
  v15 = objc_msgSend_zoneishPCS(v12, v13, v14) == 0;

  if (v15)
  {
LABEL_12:
    if (objc_msgSend__needsSigningPCS(self, v6, v7))
    {
      optionsCopy = (options | 0x10);
    }

    else
    {
      optionsCopy = options;
    }

    v45 = objc_msgSend_pcsCache(self, v42, v43);
    v48 = objc_msgSend_recordID(v5, v46, v47);
    v51 = objc_msgSend_operation(self, v49, v50);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2251EED6C;
    v54[3] = &unk_278549C90;
    objc_copyWeak(v56, &location);
    v56[1] = optionsCopy;
    v55 = v5;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v45, v52, v48, v51, optionsCopy, v54);

    objc_destroyWeak(v56);
    goto LABEL_16;
  }

  v16 = objc_msgSend_sharedZonePCSData(self, v6, v7);
  v19 = objc_msgSend_zoneishPublicKeyID(v16, v17, v18);
  objc_msgSend_setZoneishKeyID_(v5, v20, v19);

  v22 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v21, v5);
  v25 = objc_msgSend_sharedZonePCSData(self, v23, v24);
  v28 = objc_msgSend_zoneishPCS(v25, v26, v27);
  objc_msgSend_setPcs_(v22, v29, v28);

  v32 = objc_msgSend_sharedZonePCSData(self, v30, v31);
  objc_msgSend_setZonePCSData_(v22, v33, v32);

  v36 = objc_msgSend_sharePCSData(self, v34, v35);
  objc_msgSend_setSharePCSData_(v22, v37, v36);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v38 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v53 = objc_msgSend_recordID(v5, v39, v40);
    *buf = 138412290;
    v59 = v53;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Using prepared share pcs and shared zone pcs data for share %@", buf, 0xCu);
  }

  objc_msgSend__addShareToPCSData_withError_(self, v41, v22, 0);
LABEL_16:
  objc_destroyWeak(&location);
}

- (void)_fetchPCSData
{
  v43 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v34 = v3;
    v37 = objc_msgSend_record(self, v35, v36);
    v40 = objc_msgSend_recordID(v37, v38, v39);
    v41 = 138412290;
    v42 = v40;
    _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Getting ready to fetch PCS Data for record %@", &v41, 0xCu);
  }

  v6 = objc_msgSend_operation(self, v4, v5);
  v9 = objc_msgSend_etag(self, v7, v8);
  if (objc_msgSend_length(v9, v10, v11))
  {
    goto LABEL_6;
  }

  v16 = objc_msgSend_record(self, v12, v13);
  isKnownToServer = objc_msgSend_isKnownToServer(v16, v17, v18);

  if (isKnownToServer & 1) != 0 || (objc_msgSend_alwaysFetchPCSFromServer(v6, v14, v15))
  {
    goto LABEL_9;
  }

  v9 = objc_msgSend_record(self, v14, v15);
  if (objc_msgSend_wantsPublicSharingKey(v9, v29, v30))
  {
LABEL_6:

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v33 = objc_msgSend_saveAttempts(self, v31, v32) == 0;

  v20 = 2 * v33;
LABEL_10:
  v21 = objc_msgSend_container(v6, v14, v15);
  v24 = objc_msgSend_options(v21, v22, v23);
  v27 = objc_msgSend_useZoneWidePCS(v24, v25, v26);

  if (v27)
  {
    objc_msgSend__reallyFetchPCSDataWithOptions_(self, v28, v20 | 8);
  }

  else
  {
    objc_msgSend__reallyFetchPCSDataWithOptions_(self, v28, v20);
  }
}

- (void)_fetchParentPCSForID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_parentsByRecordID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, dCopy);

  if (v15)
  {
    v18 = objc_msgSend_pcsGroup(v15, v16, v17);
    v21 = objc_msgSend_modifyRecordsQueue(v10, v19, v20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EF4F8;
    block[3] = &unk_2785488E0;
    v22 = &v33;
    v33 = v15;
    v34 = dCopy;
    selfCopy = self;
    v36 = handlerCopy;
    v23 = handlerCopy;
    dispatch_group_notify(v18, v21, block);

    v24 = v34;
  }

  else
  {
    if (objc_msgSend__needsSigningPCS(self, v16, v17))
    {
      v27 = 20;
    }

    else
    {
      v27 = 4;
    }

    v24 = objc_msgSend_pcsCache(self, v25, v26);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2251EF73C;
    v30[3] = &unk_278549CB8;
    v22 = &v31;
    v31 = handlerCopy;
    v28 = handlerCopy;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v24, v29, dCopy, v10, v27, v30);
  }
}

- (void)_fetchSharePCSForID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_handlersByRecordID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, dCopy);

  v18 = objc_msgSend_sharePCSData(self, v16, v17);

  if (!v18)
  {
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = MEMORY[0x277CBC560];
        v32 = *MEMORY[0x277CBC120];
        v21 = objc_msgSend_recordID(self, v22, v23);
        v34 = objc_msgSend_errorWithDomain_code_format_(v31, v33, v32, 1017, @"Record %@ refers to share %@ but that item is a record, not a share", v21, dCopy);
        handlerCopy[2](handlerCopy, 0, v34);

        goto LABEL_3;
      }

      v24 = objc_msgSend_pcsGroup(v15, v22, v23);
      v27 = objc_msgSend_modifyRecordsQueue(v10, v25, v26);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251EF9F0;
      block[3] = &unk_2785488E0;
      v40 = v15;
      v41 = dCopy;
      selfCopy = self;
      v43 = handlerCopy;
      dispatch_group_notify(v24, v27, block);

      v28 = v40;
    }

    else
    {
      v29 = objc_msgSend_pcsCache(self, v19, v20);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2251EFAE0;
      v35[3] = &unk_278549CE0;
      v36 = dCopy;
      selfCopy2 = self;
      v38 = handlerCopy;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v29, v30, v36, v10, 0, v35);

      v28 = v36;
    }

    goto LABEL_9;
  }

  v21 = objc_msgSend_sharePCSData(self, v19, v20);
  (handlerCopy)[2](handlerCopy, v21, 0);
LABEL_3:

LABEL_9:
}

- (void)_keyRollIfNeededForRecordPCSData:(id)data withError:(id)error
{
  v108 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_record(self, v11, v12);
  v16 = errorCopy;
  v17 = v16;
  if (v16)
  {
LABEL_2:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = v18;
      v23 = objc_msgSend_recordID(self, v21, v22);
      *buf = 138412546;
      v103 = v23;
      v104 = 2112;
      v105 = v17;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error key-rolling for record %@: %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  if (objc_msgSend_pcs(dataCopy, v14, v15))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isZoneWideShare(v13, v24, v25) && objc_msgSend_didAttemptZoneWideShareKeyRoll(self, v26, v27))
    {
      v30 = objc_msgSend_zonePCSData(dataCopy, v28, v29);
      v33 = objc_msgSend_zoneishPublicKeyID(v30, v31, v32);
      if (v33)
      {
      }

      else
      {
        v36 = objc_msgSend_databaseScope(v10, v34, v35);

        if (v36 == 2)
        {
          v39 = objc_msgSend_sharePCSData(self, v37, v38);
          if (v39 && (v42 = v39, objc_msgSend_sharedZonePCSData(self, v40, v41), v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
          {
            v46 = objc_msgSend_pcsManager(self, v44, v45);
            v49 = objc_msgSend_sharedZonePCSData(self, v47, v48);
            v52 = objc_msgSend_sharePCSData(self, v50, v51);
            v17 = objc_msgSend_keyRollForZoneWideShareRecordPCS_sharedZonePCS_sharePCS_forOperation_(v46, v53, dataCopy, v49, v52, v10);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v85 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v92 = v85;
              v95 = objc_msgSend_recordID(v13, v93, v94);
              v98 = objc_msgSend_sharedZonePCSData(self, v96, v97);
              v101 = objc_msgSend_sharePCSData(self, v99, v100);
              *buf = 138412802;
              v103 = v95;
              v104 = 2112;
              v105 = v98;
              v106 = 2112;
              v107 = v101;
              _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Failed to get share or zone PCS data to roll record PCS for zone-wide share record %@, shared zone PCS: %@, share PCS: %@", buf, 0x20u);
            }

            v88 = MEMORY[0x277CBC560];
            v89 = *MEMORY[0x277CBC120];
            v90 = objc_msgSend_recordID(self, v86, v87);
            v17 = objc_msgSend_errorWithDomain_code_format_(v88, v91, v89, 5001, @"Didn't get dependent PCS data to roll record PCS for %@", v90);
          }

LABEL_17:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v56 = objc_msgSend_zonePCSData(dataCopy, v54, v55);
            v59 = objc_msgSend_zoneishPublicKeyID(v56, v57, v58);
            if (v59)
            {
            }

            else
            {
              v62 = objc_msgSend_databaseScope(v10, v60, v61);

              if (v62 == 2)
              {
                buf[0] = 0;
                v65 = objc_msgSend_container(v10, v63, v64);
                v68 = objc_msgSend_options(v65, v66, v67);
                v73 = 0;
                if (objc_msgSend_acceptServerSignedRecords(v68, v69, v70))
                {
                  v73 = objc_msgSend_needsRollAndCounterSign(v13, v71, v72);
                }

                v76 = objc_msgSend_pcsManager(self, v74, v75);
                v78 = objc_msgSend_keyRollIfNeededForPerRecordPCS_needsRollAndCounterSign_forOperation_didRoll_(v76, v77, dataCopy, v73, v10, buf);

                if (buf[0] == 1)
                {
                  objc_msgSend_setRequiresRecordSaveForMergeableDeltas_(v13, v79, 1);
                }

                v17 = v78;
              }
            }
          }

          if (v17)
          {
            goto LABEL_2;
          }

          goto LABEL_27;
        }
      }
    }

    v17 = 0;
    goto LABEL_17;
  }

LABEL_27:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v80 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v81 = v80;
    v84 = objc_msgSend_recordID(self, v82, v83);
    *buf = 138412290;
    v103 = v84;
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Successfully checked key-rolling requirements for record %@. May have rolled keys as well.", buf, 0xCu);
  }

  v17 = 0;
LABEL_32:
  objc_msgSend__reallyAddShareToPCSData_withError_(self, v19, dataCopy, v17);
}

- (void)_reallyAddShareToPCSData:(id)data withError:(id)error
{
  v67 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_record(self, v8, v9);
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_225074050;
  v61[4] = sub_2250735B4;
  v11 = errorCopy;
  v62 = v11;
  v14 = dispatch_group_create();
  if (!v11 && objc_msgSend_pcs(dataCopy, v12, v13))
  {
    if (objc_msgSend_hasUpdatedShare(v10, v12, v13))
    {
      v17 = objc_msgSend_share(v10, v15, v16);
      v20 = objc_msgSend_recordID(v17, v18, v19);

      v23 = objc_msgSend_previousShare(v10, v21, v22);
      v26 = objc_msgSend_recordID(v23, v24, v25);
    }

    else
    {
      v26 = 0;
      v20 = 0;
    }

    if (v20 | v26)
    {
      objc_initWeak(&location, self);
      if (v20)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v27 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v41 = objc_msgSend_recordID(v10, v28, v29);
          *buf = 138412546;
          v64 = v20;
          v65 = 2112;
          v66 = v41;
          _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Adding share with ID %@ to record %@", buf, 0x16u);
        }

        dispatch_group_enter(v14);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = sub_2251F07F0;
        v53[3] = &unk_278549D08;
        objc_copyWeak(&v59, &location);
        v54 = dataCopy;
        v58 = v61;
        v55 = v20;
        selfCopy = self;
        v57 = v14;
        objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v30, v55, v53);

        objc_destroyWeak(&v59);
      }

      if (v26)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v31 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v42 = objc_msgSend_recordID(v10, v32, v33);
          *buf = 138412546;
          v64 = v26;
          v65 = 2112;
          v66 = v42;
          _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Removing share with ID %@ from record %@", buf, 0x16u);
        }

        dispatch_group_enter(v14);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = sub_2251F0B04;
        v46[3] = &unk_278549D08;
        objc_copyWeak(&v52, &location);
        v47 = dataCopy;
        v51 = v61;
        v48 = v10;
        v49 = v26;
        v50 = v14;
        objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v34, v49, v46);

        objc_destroyWeak(&v52);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Waiting on share fetches so we can update the record PCS", buf, 2u);
      }

      objc_destroyWeak(&location);
    }
  }

  v36 = objc_msgSend_operation(self, v12, v13);
  v39 = objc_msgSend_modifyRecordsQueue(v36, v37, v38);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2251F0EAC;
  v43[3] = &unk_278546420;
  v44 = dataCopy;
  v45 = v61;
  v43[4] = self;
  v40 = dataCopy;
  dispatch_group_notify(v14, v39, v43);

  _Block_object_dispose(v61, 8);
}

- (void)_fetchParentPCSForData:(id)data withError:(id)error
{
  v176 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v162 = 0;
  v163 = &v162;
  v164 = 0x3032000000;
  v165 = sub_225074050;
  v166 = sub_2250735B4;
  errorCopy = error;
  v167 = errorCopy;
  v9 = dispatch_group_create();
  v14 = objc_msgSend_operation(self, v10, v11);
  if (!errorCopy)
  {
    if (objc_msgSend_pcs(dataCopy, v12, v13))
    {
      v17 = objc_msgSend_record(self, v12, v13);
      hasUpdatedParent = objc_msgSend_hasUpdatedParent(v17, v18, v19);

      if (hasUpdatedParent)
      {
        v21 = objc_msgSend_record(self, v12, v13);
        v24 = objc_msgSend_previousParent(v21, v22, v23);
        v142 = objc_msgSend_recordID(v24, v25, v26);

        if (!v142)
        {
          v29 = objc_msgSend_parentID(dataCopy, v27, v28);
          if (v29 && (objc_msgSend_parentID(dataCopy, v27, v28), v143 = objc_claimAutoreleasedReturnValue(), objc_msgSend_record(self, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_parent(v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordID(v35, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), groupa = objc_msgSend_isEqual_(v143, v39, v38), v38, v35, v32, v143, v29, (groupa & 1) == 0))
          {
            v142 = objc_msgSend_parentID(dataCopy, v27, v28);
          }

          else
          {
            v142 = 0;
          }
        }

        v40 = objc_msgSend_record(self, v27, v28);
        v43 = objc_msgSend_parent(v40, v41, v42);
        v46 = objc_msgSend_recordID(v43, v44, v45);
        isEqual = objc_msgSend_isEqual_(v46, v47, v142);

        if (isEqual)
        {
          v133 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v49, v50);
          v136 = objc_msgSend_recordID(self, v134, v135);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v133, v137, a2, self, @"CKDModifyRecordHandler.m", 714, @"Got the same parent and previous parent on record %@", v136);
        }

        if (v142)
        {
          v51 = objc_msgSend_record(self, v49, v50);
          v54 = objc_msgSend_chainParentPublicKeyID(v51, v52, v53);

          if (!v54)
          {
            v57 = objc_msgSend_parentID(dataCopy, v55, v56);
            v59 = objc_msgSend_isEqual_(v57, v58, v142);

            if (v59)
            {
              v54 = objc_msgSend_chainParentPublicKeyID(dataCopy, v60, v61);
            }

            else
            {
              v54 = 0;
            }
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v62 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v123 = objc_msgSend_recordID(self, v63, v64);
            *buf = 138412802;
            *&buf[4] = v142;
            *&buf[12] = 2114;
            *&buf[14] = v54;
            *&buf[22] = 2112;
            v173 = v123;
            _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Removing previous parent %@ with public key ID %{public}@ from record PCS for %@", buf, 0x20u);
          }

          v67 = objc_msgSend_pcsManager(self, v65, v66);
          v70 = objc_msgSend_pcs(dataCopy, v68, v69);
          v72 = objc_msgSend_removePublicKeyID_fromPCS_(v67, v71, v54, v70);

          if (v72 && !v163[5])
          {
            v74 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v73, *MEMORY[0x277CBC120], 5001, v72, @"Couldn't remove previous parent PCS data for previous parent %@", v142);
            v75 = v163[5];
            v163[5] = v74;
          }
        }

        v76 = objc_msgSend_record(self, v49, v50);
        v79 = objc_msgSend_parent(v76, v77, v78);

        if (v79)
        {
          group = dispatch_group_create();
          dispatch_group_enter(v9);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v173 = sub_225074050;
          v174 = sub_2250735B4;
          v175 = 0;
          v82 = objc_msgSend_parentsByRecordID(v14, v80, v81);
          v85 = objc_msgSend_record(self, v83, v84);
          v88 = objc_msgSend_parent(v85, v86, v87);
          v91 = objc_msgSend_recordID(v88, v89, v90);
          v93 = objc_msgSend_objectForKeyedSubscript_(v82, v92, v91);

          if (v93)
          {
            dispatch_group_enter(group);
            v96 = objc_msgSend_pcsGroup(v93, v94, v95);
            v99 = objc_msgSend_modifyRecordsQueue(v14, v97, v98);
            v156[0] = MEMORY[0x277D85DD0];
            v156[1] = 3221225472;
            v156[2] = sub_2251F19A4;
            v156[3] = &unk_278549D58;
            v160 = buf;
            v157 = v93;
            selfCopy = self;
            v161 = &v162;
            v159 = group;
            dispatch_group_notify(v96, v99, v156);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v102 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              v139 = objc_msgSend_record(self, v103, v104);
              v126 = objc_msgSend_parent(v139, v124, v125);
              v129 = objc_msgSend_recordID(v126, v127, v128);
              v132 = objc_msgSend_recordID(self, v130, v131);
              *v168 = 138412546;
              v169 = v129;
              v170 = 2112;
              v171 = v132;
              _os_log_debug_impl(&dword_22506F000, v102, OS_LOG_TYPE_DEBUG, "Fetching parent PCS data with record ID %@ for record %@", v168, 0x16u);
            }

            dispatch_group_enter(group);
            v107 = objc_msgSend__needsSigningPCS(self, v105, v106);
            v110 = 4;
            if (v107)
            {
              v110 = 20;
            }

            v138 = v110;
            v111 = objc_msgSend_pcsCache(self, v108, v109);
            v114 = objc_msgSend_record(self, v112, v113);
            v117 = objc_msgSend_parent(v114, v115, v116);
            v120 = objc_msgSend_recordID(v117, v118, v119);
            v152[0] = MEMORY[0x277D85DD0];
            v152[1] = 3221225472;
            v152[2] = sub_2251F1BF4;
            v152[3] = &unk_278549D30;
            v152[4] = self;
            v154 = buf;
            v155 = &v162;
            v153 = group;
            objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v111, v121, v120, v14, v138, v152);
          }

          v122 = objc_msgSend_modifyRecordsQueue(v14, v100, v101);
          v147[0] = MEMORY[0x277D85DD0];
          v147[1] = 3221225472;
          v147[2] = sub_2251F1E70;
          v147[3] = &unk_278549D58;
          v150 = buf;
          v151 = &v162;
          v147[4] = self;
          v148 = dataCopy;
          v149 = v9;
          dispatch_group_notify(group, v122, v147);

          _Block_object_dispose(buf, 8);
        }
      }
    }
  }

  v15 = objc_msgSend_modifyRecordsQueue(v14, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251F1FF0;
  block[3] = &unk_278546420;
  v145 = dataCopy;
  v146 = &v162;
  block[4] = self;
  v16 = dataCopy;
  dispatch_group_notify(v9, v15, block);

  _Block_object_dispose(&v162, 8);
}

- (id)_addParentPCS:(id)s toRecordPCS:(id)cS
{
  v109 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  v8 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = MEMORY[0x277CBC830];
  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v75 = v10;
    v78 = objc_msgSend_recordID(self, v76, v77);
    *buf = 138412546;
    v104 = sCopy;
    v105 = 2112;
    v106 = v78;
    _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Adding parent PCS data %@ to PCS for record %@", buf, 0x16u);
  }

  v13 = objc_msgSend_pcsManager(self, v11, v12);
  v15 = objc_msgSend_decryptChainPCSForRecordPCS_(v13, v14, sCopy);

  if (v15 || (objc_msgSend_chainPCSData(sCopy, v16, v17), v31 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend_pcs(v31, v32, v33), v31, !v34))
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v79 = v18;
      v82 = objc_msgSend_record(self, v80, v81);
      v85 = objc_msgSend_parent(v82, v83, v84);
      v88 = objc_msgSend_recordID(v85, v86, v87);
      *buf = 138412546;
      v104 = v88;
      v105 = 2112;
      v106 = v15;
      _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Couldn't decrypt the chain PCS blob on parent record %@: %@", buf, 0x16u);

      if (v15)
      {
        goto LABEL_24;
      }
    }

    else if (v15)
    {
      goto LABEL_24;
    }

    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_record(self, v19, v20);
    v26 = objc_msgSend_parent(v23, v24, v25);
    v29 = objc_msgSend_recordID(v26, v27, v28);
    v15 = objc_msgSend_errorWithDomain_code_format_(v21, v30, v22, 5004, @"Couldn't decrypt the chain PCS blob on parent record %@", v29);

LABEL_23:
    goto LABEL_24;
  }

  v37 = objc_msgSend_pcsManager(self, v35, v36);
  v40 = objc_msgSend_chainPCSData(sCopy, v38, v39);
  v43 = objc_msgSend_pcs(v40, v41, v42);
  v46 = objc_msgSend_pcs(cSCopy, v44, v45);
  v102 = 0;
  v48 = objc_msgSend_addSharePCS_toRecordPCS_error_(v37, v47, v43, v46, &v102);
  v15 = v102;

  if (v48)
  {
    v51 = objc_msgSend_chainPCSData(sCopy, v49, v50);
    v54 = objc_msgSend_pcs(v51, v52, v53);
    v23 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v55, v54);

    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v89 = v56;
      v92 = objc_msgSend_record(self, v90, v91);
      v95 = objc_msgSend_parent(v92, v93, v94);
      v98 = objc_msgSend_recordID(v95, v96, v97);
      v101 = objc_msgSend_recordID(self, v99, v100);
      *buf = 138412802;
      v104 = v98;
      v105 = 2112;
      v106 = v101;
      v107 = 2114;
      v108 = v23;
      _os_log_debug_impl(&dword_22506F000, v89, OS_LOG_TYPE_DEBUG, "Successfully added parent PCS data from record %@ to record %@. Public key ID is %{public}@", buf, 0x20u);
    }

    v26 = objc_msgSend_record(self, v57, v58);
    objc_msgSend_setChainParentPublicKeyID_(v26, v59, v23);
    goto LABEL_23;
  }

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v60 = *v9;
  if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  *buf = 138412802;
  v104 = sCopy;
  v105 = 2112;
  v106 = cSCopy;
  v107 = 2112;
  v108 = v15;
  _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "Error adding parent PCS %@ to record PCS %@: %@", buf, 0x20u);
  if (!v15)
  {
LABEL_22:
    v63 = MEMORY[0x277CBC560];
    v64 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_record(self, v61, v62);
    v26 = objc_msgSend_parent(v23, v65, v66);
    v69 = objc_msgSend_recordID(v26, v67, v68);
    v72 = objc_msgSend_recordID(self, v70, v71);
    v15 = objc_msgSend_errorWithDomain_code_format_(v63, v73, v64, 5005, @"Couldn't add parent PCS data from record %@ to record %@", v69, v72);

    goto LABEL_23;
  }

LABEL_24:

  return v15;
}

- (void)_createAndSavePCS
{
  v97 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v5 = objc_msgSend_operation(self, a2, v2);
    v8 = objc_msgSend_unitTestOverrides(v5, v6, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"DisallowRecordPCSToBeCreated");

    if (v10)
    {
      v67 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v67, v68, a2, self, @"CKDModifyRecordHandler.m", 818, @"Record PCS creation not allowed by unit test");
    }
  }

  v11 = objc_msgSend_record(self, a2, v2);
  v14 = objc_msgSend_operation(self, v12, v13);
  v15 = dispatch_group_create();
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = sub_225074050;
  v91[4] = sub_2250735B4;
  v92 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = sub_225074050;
  v89[4] = sub_2250735B4;
  v90 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = sub_225074050;
  v87[4] = sub_2250735B4;
  v88 = 0;
  v18 = objc_msgSend_share(v11, v16, v17);
  v21 = objc_msgSend_recordID(v18, v19, v20);

  dispatch_group_enter(v15);
  v24 = objc_msgSend_container(v14, v22, v23);
  v27 = objc_msgSend_options(v24, v25, v26);
  v30 = objc_msgSend_useZoneWidePCS(v27, v28, v29);

  v33 = objc_msgSend__needsSigningPCS(self, v31, v32);
  v34 = 8;
  if (!v30)
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v34 | 0x10;
  }

  else
  {
    v35 = v34;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v36 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    if (v30)
    {
      v62 = @"zoneish ";
    }

    else
    {
      v62 = &stru_28385ED00;
    }

    v63 = objc_msgSend_recordID(v11, v37, v38);
    v66 = objc_msgSend_zoneID(v63, v64, v65);
    *buf = 138543618;
    v94 = v62;
    v95 = 2112;
    v96 = v66;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Fetching %{public}@PCS data for zone %@", buf, 0x16u);
  }

  v41 = objc_msgSend_pcsCache(self, v39, v40);
  v44 = objc_msgSend_recordID(v11, v42, v43);
  v47 = objc_msgSend_zoneID(v44, v45, v46);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_2251F2D74;
  v81[3] = &unk_278549D80;
  v48 = v14;
  v82 = v48;
  v85 = v91;
  v49 = v11;
  v83 = v49;
  v86 = v87;
  v50 = v15;
  v84 = v50;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v41, v51, v47, v48, v35, v81);

  if (v21 || (objc_msgSend_record(self, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v54, (isKindOfClass & 1) != 0))
  {
    dispatch_group_enter(v50);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v94 = v21;
      _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Fetching PCS data for share %@", buf, 0xCu);
    }

    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_2251F2F30;
    v76[3] = &unk_278549DA8;
    v79 = v89;
    v77 = v21;
    v80 = v87;
    v78 = v50;
    objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v59, v77, v76);
  }

  v60 = objc_msgSend_modifyRecordsQueue(v48, v56, v57);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251F3080;
  block[3] = &unk_278549DD0;
  v70 = v49;
  selfCopy = self;
  v72 = v87;
  v73 = v91;
  v74 = v89;
  v75 = v21 != 0;
  v61 = v49;
  dispatch_group_notify(v50, v60, block);

  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(v91, 8);
}

- (void)_continueCreateAndSavePCSWithZonePCS:(id)s sharePCS:(id)cS
{
  v196 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  v10 = objc_msgSend_record(self, v8, v9);
  selfCopy = self;
  v13 = objc_msgSend_operation(self, v11, v12);
  v14 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v18 = v15;
    v21 = objc_msgSend_recordID(v10, v19, v20);
    *buf = 138412290;
    v193 = v21;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Creating new PCS object for record %@", buf, 0xCu);
  }

  if (objc_msgSend_zoneishPCS(sCopy, v16, v17))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v141 = v24;
      v144 = objc_msgSend_zoneishPublicKeyID(sCopy, v142, v143);
      v147 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v144, v145, v146);
      v150 = objc_msgSend_recordID(v10, v148, v149);
      *buf = 138543618;
      v193 = v147;
      v194 = 2112;
      v195 = v150;
      _os_log_debug_impl(&dword_22506F000, v141, OS_LOG_TYPE_DEBUG, "Using zoneish PCS with key %{public}@ for record %@", buf, 0x16u);
    }

    v27 = objc_msgSend_zoneishPCS(sCopy, v25, v26);
    v30 = objc_msgSend_zoneishPublicKeyID(sCopy, v28, v29);
    objc_msgSend_setZoneishKeyID_(v10, v31, v30);

    if (*MEMORY[0x277CBC810] != 1)
    {
      goto LABEL_23;
    }

    v34 = objc_msgSend_unitTestOverrides(v13, v32, v33);
    v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"TwoByteZoneishKeyIDs");

    if (v36)
    {
      v39 = objc_msgSend_zoneishKeyID(v10, v37, v38);
      v41 = objc_msgSend_subdataWithRange_(v39, v40, 0, 2);
      objc_msgSend_setZoneishKeyID_(v10, v42, v41);
    }

    else
    {
      v100 = objc_msgSend_unitTestOverrides(v13, v37, v38);
      v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"ZoneishKeyIDWithOnlyTwoValidBytes");

      if (v102)
      {
        v105 = objc_msgSend_zoneishKeyID(v10, v103, v104);
        v107 = objc_msgSend_subdataWithRange_(v105, v106, 0, 2);
        v110 = objc_msgSend_mutableCopy(v107, v108, v109);

        *buf = -21846;
        objc_msgSend_appendBytes_length_(v110, v111, buf, 2);
        objc_msgSend_setZoneishKeyID_(v10, v112, v110);

        goto LABEL_23;
      }

      v136 = objc_msgSend_unitTestOverrides(v13, v103, v104);
      v138 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"RandomZoneishKeyID");

      if (!v138)
      {
        goto LABEL_23;
      }

      *buf = -1515870811;
      v39 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v139, buf, 4);
      objc_msgSend_setZoneishKeyID_(v10, v140, v39);
    }

LABEL_23:
    if (v27)
    {
      CFRetain(v27);
      v114 = 0;
      goto LABEL_30;
    }

    v114 = 0;
LABEL_50:
    v116 = 0;
    v27 = 0;
    v115 = v114 == 0;
    goto LABEL_51;
  }

  if (objc_msgSend_pcs(sCopy, v22, v23))
  {
    v185 = v10;
    v45 = objc_msgSend_container(v13, v43, v44);
    objc_msgSend_pcsManager(v45, v46, v47);
    v49 = v48 = v13;
    v52 = objc_msgSend_pcs(sCopy, v50, v51);
    v184 = cSCopy;
    v55 = objc_msgSend_pcs(cSCopy, v53, v54);
    v58 = objc_msgSend_record(selfCopy, v56, v57);
    v63 = objc_msgSend_useLightweightPCS(v58, v59, v60);
    v64 = v48;
    if (v63)
    {
      v48 = objc_msgSend_container(v48, v61, v62);
      v14 = objc_msgSend_entitlements(v48, v65, v66);
      hasLightweightPCSEntitlement = objc_msgSend_hasLightweightPCSEntitlement(v14, v67, v68);
    }

    else
    {
      hasLightweightPCSEntitlement = 0;
    }

    v191 = 0;
    v27 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v49, v61, v52, v55, hasLightweightPCSEntitlement, &v191);
    v114 = v191;
    if (v63)
    {
    }

    v13 = v64;
    cSCopy = v184;
    v10 = v185;
    goto LABEL_30;
  }

  if (objc_msgSend_databaseScope(v13, v43, v44) != 3)
  {
    v132 = MEMORY[0x277CBC560];
    v133 = *MEMORY[0x277CBC120];
    v134 = objc_msgSend_recordID(v10, v70, v71);
    v114 = objc_msgSend_errorWithDomain_code_format_(v132, v135, v133, 5001, @"We couldn't decrypt the zone PCS and this isn't a share, so we can't create a new record PCS for %@", v134);
LABEL_49:

    goto LABEL_50;
  }

  v72 = cSCopy;
  v73 = objc_msgSend_pcsData(sCopy, v70, v71);

  v182 = v13;
  if (!v73)
  {
    v151 = v10;
    v152 = MEMORY[0x277CBC560];
    v153 = *MEMORY[0x277CBC120];
    v187 = v151;
    v134 = objc_msgSend_recordID(v151, v74, v75);
    v158 = objc_msgSend_pcsData(sCopy, v154, v155);
    if (v158)
    {
      v159 = &stru_28385ED00;
    }

    else
    {
      v159 = @"zone PCS data ";
    }

    v162 = objc_msgSend_pcsData(sCopy, v156, v157);
    v163 = &stru_28385ED00;
    if (!v162)
    {
      if (objc_msgSend_pcs(v72, v160, v161))
      {
        v163 = &stru_28385ED00;
      }

      else
      {
        v163 = @" and no ";
      }
    }

    v164 = objc_msgSend_pcs(v72, v160, v161);
    v166 = @"share PCS";
    if (v164)
    {
      v166 = &stru_28385ED00;
    }

    v180 = v163;
    cSCopy = v72;
    v114 = objc_msgSend_errorWithDomain_code_format_(v152, v165, v153, 5001, @"Can't create a record PCS for %@ because there is no %@%@%@", v134, v159, v180, v166);

    v10 = v187;
    goto LABEL_49;
  }

  v186 = objc_msgSend_container(v13, v74, v75);
  v78 = objc_msgSend_pcsManager(v186, v76, v77);
  v81 = objc_msgSend_pcsData(sCopy, v79, v80);
  v84 = objc_msgSend_pcs(v72, v82, v83);
  v87 = objc_msgSend_record(selfCopy, v85, v86);
  v90 = objc_msgSend_useLightweightPCS(v87, v88, v89);
  v93 = v13;
  v94 = v90;
  if (v90)
  {
    v183 = objc_msgSend_container(v93, v91, v92);
    v181 = objc_msgSend_entitlements(v183, v95, v96);
    v99 = objc_msgSend_hasLightweightPCSEntitlement(v181, v97, v98);
  }

  else
  {
    v99 = 0;
  }

  v190 = 0;
  v179 = v78;
  v27 = objc_msgSend_createRecordPCSWithEncryptedZonePCS_sharePCS_createLite_error_(v78, v91, v81, v84, v99, &v190);
  v114 = v190;
  if (v94)
  {
  }

  cSCopy = v72;
  v13 = v182;
LABEL_30:
  v115 = v114 == 0;
  v116 = v27 != 0;
  if (!v114 && v27)
  {
    v117 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v113, v10);
    if (objc_msgSend_zoneishPCS(sCopy, v118, v119))
    {
      v114 = 0;
    }

    else
    {
      v122 = objc_msgSend_container(v13, v120, v121);
      v125 = objc_msgSend_pcsManager(v122, v123, v124);
      v189 = 0;
      v127 = objc_msgSend_dataFromRecordPCS_error_(v125, v126, v27, &v189);
      v114 = v189;

      objc_msgSend_setPcsData_(v117, v128, v127);
    }

    objc_msgSend_setPcs_(v117, v120, v27);
    objc_msgSend_setZonePCSData_(v117, v129, sCopy);
    objc_msgSend_setSharePCSData_(v117, v130, cSCopy);
    objc_msgSend__addShareToPCSData_withError_(selfCopy, v131, v117, v114);

    goto LABEL_59;
  }

LABEL_51:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v167 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v175 = v167;
    v178 = objc_msgSend_recordID(v10, v176, v177);
    *buf = 138412546;
    v193 = v178;
    v194 = 2112;
    v195 = v114;
    _os_log_error_impl(&dword_22506F000, v175, OS_LOG_TYPE_ERROR, "Couldn't create a new record PCS for %@: %@", buf, 0x16u);

    if (v115)
    {
LABEL_55:
      v170 = MEMORY[0x277CBC560];
      v171 = *MEMORY[0x277CBC120];
      v172 = objc_msgSend_recordID(v10, v168, v169);
      v114 = objc_msgSend_errorWithDomain_code_format_(v170, v173, v171, 5001, @"Couldn't create a new record PCS for %@", v172);

      objc_msgSend__addShareToPCSData_withError_(selfCopy, v174, 0, v114);
      if (!v116)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if (v115)
  {
    goto LABEL_55;
  }

  objc_msgSend__addShareToPCSData_withError_(selfCopy, v168, 0, v114);
  if (v116)
  {
LABEL_59:
    CFRelease(v27);
  }

LABEL_60:
}

- (void)_unwrapRecordPCSForZone
{
  v4 = objc_msgSend_record(self, a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_pcsCache(self, v5, v6);
  v10 = objc_msgSend_recordID(v4, v8, v9);
  v13 = objc_msgSend_zoneID(v10, v11, v12);
  v16 = objc_msgSend_operation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251F3D40;
  v19[3] = &unk_278549DF8;
  objc_copyWeak(&v21, &location);
  v17 = v4;
  v20 = v17;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v7, v18, v13, v16, 0, v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_unwrapRecordPCSWithShareID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_record(self, v5, v6);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251F4354;
  v11[3] = &unk_278549E20;
  objc_copyWeak(&v14, &location);
  v8 = v7;
  v12 = v8;
  v9 = dCopy;
  v13 = v9;
  objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v10, v9, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_unwrapRecordPCSForParent
{
  v4 = objc_msgSend_record(self, a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_parent(v4, v5, v6);
  v10 = objc_msgSend_recordID(v7, v8, v9);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251F492C;
  v14[3] = &unk_278549E48;
  objc_copyWeak(&v17, &location);
  v11 = v4;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  objc_msgSend__fetchParentPCSForID_withCompletionHandler_(self, v13, v12, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_fetchExistingPCSForProvidedPCSData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_record(self, v5, v6);
  objc_initWeak(&location, self);
  v10 = objc_msgSend_pcsCache(self, v8, v9);
  v13 = objc_msgSend_recordID(v7, v11, v12);
  v16 = objc_msgSend_operation(self, v14, v15);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251F4F60;
  v20[3] = &unk_278549E48;
  objc_copyWeak(&v23, &location);
  v17 = dataCopy;
  v21 = v17;
  v18 = v7;
  v22 = v18;
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v10, v19, v13, v16, 0, v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_handlePCSData:(id)data withError:(id)error
{
  v477 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_record(self, v8, v9);
  v15 = objc_msgSend_operation(self, v11, v12);
  v16 = MEMORY[0x277CBC878];
  v17 = MEMORY[0x277CBC880];
  v18 = MEMORY[0x277CBC830];
  if (errorCopy)
  {
    goto LABEL_2;
  }

  if (!objc_msgSend_pcs(dataCopy, v13, v14))
  {
    goto LABEL_167;
  }

  v34 = *v16;
  v35 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v34);
  }

  v36 = *v18;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v134 = objc_msgSend_recordID(v10, v37, v38);
    v137 = objc_msgSend_etag(dataCopy, v135, v136);
    *buf = 138543618;
    v471 = v134;
    v472 = 2114;
    v473 = v137;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Got PCS data for record=%{public}@, protectionInfoTag=%{public}@", buf, 0x16u);

    v35 = MEMORY[0x277CBC880];
  }

  if (!objc_msgSend_wantsChainPCS(v10, v39, v40))
  {
    errorCopy = 0;
    goto LABEL_52;
  }

  v43 = objc_msgSend_chainPCSData(dataCopy, v41, v42);

  if (v43)
  {
    v46 = objc_msgSend_pcsManager(self, v44, v45);
    v48 = objc_msgSend_decryptChainPCSForRecordPCS_(v46, v47, dataCopy);

    if (!v48)
    {
      v51 = objc_msgSend_chainPCSData(dataCopy, v49, v50);
      v48 = objc_msgSend_pcs(v51, v52, v53);

      if (v48)
      {
        v56 = objc_msgSend_chainPCSData(dataCopy, v54, v55);
        ChainPCSWithError = objc_msgSend_pcs(v56, v57, v58);

        if (ChainPCSWithError)
        {
          CFRetain(ChainPCSWithError);
          v48 = 0;
LABEL_25:
          v70 = objc_msgSend_pcsManager(self, v60, v61);
          v72 = objc_msgSend_addIdentityBackToPCS_(v70, v71, ChainPCSWithError);

          if (v72)
          {
            v75 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v75);
            }

            v76 = MEMORY[0x277CBC830];

            v77 = *v76;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v80 = objc_msgSend_recordID(self, v78, v79);
              *buf = 138412546;
              v471 = v80;
              v472 = 2112;
              v473 = v72;
              _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_INFO, "Warn: Couldn't create protection data from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v81 = objc_msgSend_pcsManager(self, v73, v74);
          v468 = 0;
          v83 = objc_msgSend_dataFromZonePCS_error_(v81, v82, ChainPCSWithError, &v468);
          v84 = v468;
          v87 = objc_msgSend_record(self, v85, v86);
          objc_msgSend_setChainProtectionInfo_(v87, v88, v83);

          if (v84)
          {
            v89 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v89);
            }

            v90 = MEMORY[0x277CBC830];

            v91 = *v90;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v94 = objc_msgSend_recordID(self, v92, v93);
              *buf = 138412546;
              v471 = v94;
              v472 = 2112;
              v473 = v84;
              _os_log_impl(&dword_22506F000, v91, OS_LOG_TYPE_INFO, "Warn: Couldn't create protection data from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v95 = objc_alloc(MEMORY[0x277CBC2E8]);
          v98 = objc_msgSend_pcsManager(self, v96, v97);
          v467 = 0;
          v100 = objc_msgSend_sharingIdentityDataFromPCS_error_(v98, v99, ChainPCSWithError, &v467);
          v101 = v467;
          v103 = objc_msgSend_initWithData_(v95, v102, v100);
          v106 = objc_msgSend_record(self, v104, v105);
          objc_msgSend_setChainPrivateKey_(v106, v107, v103);

          if (v101)
          {
            v108 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v108);
            }

            v109 = MEMORY[0x277CBC830];

            v110 = *v109;
            if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
            {
              v113 = objc_msgSend_recordID(self, v111, v112);
              *buf = 138412546;
              v471 = v113;
              v472 = 2112;
              v473 = v101;
              _os_log_impl(&dword_22506F000, v110, OS_LOG_TYPE_INFO, "Warn: Couldn't create private chaining key from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v114 = [CKDChainPCSData alloc];
          v117 = objc_msgSend_record(self, v115, v116);
          v120 = objc_msgSend_chainProtectionInfo(v117, v118, v119);
          v123 = objc_msgSend_record(self, v121, v122);
          v126 = objc_msgSend_chainPrivateKey(v123, v124, v125);
          v128 = objc_msgSend_initWithPCSData_encryptedPrivateKey_(v114, v127, v120, v126);
          objc_msgSend_setChainPCSData_(dataCopy, v129, v128);

          v132 = objc_msgSend_chainPCSData(dataCopy, v130, v131);
          objc_msgSend_setPcs_(v132, v133, ChainPCSWithError);

          CFRelease(ChainPCSWithError);
          errorCopy = 0;
          goto LABEL_52;
        }

        v48 = 0;
      }
    }
  }

  else
  {
    v62 = *MEMORY[0x277CBC878];
    if (*v35 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v62);
    }

    v63 = *v18;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      v438 = objc_msgSend_recordID(self, v64, v65);
      *buf = 138412290;
      v471 = v438;
      _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Record %@ is a parent in this save group but it has no chain PCS data yet. Creating chain PCS data", buf, 0xCu);
    }

    v68 = objc_msgSend_pcsManager(self, v66, v67);
    v469 = 0;
    ChainPCSWithError = objc_msgSend_createChainPCSWithError_(v68, v69, &v469);
    v48 = v469;

    v35 = MEMORY[0x277CBC880];
    if (ChainPCSWithError)
    {
      goto LABEL_25;
    }
  }

  v138 = *MEMORY[0x277CBC878];
  if (*v35 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v138);
  }

  v139 = *v18;
  if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
  {
    v142 = objc_msgSend_recordID(self, v140, v141);
    *buf = 138412546;
    v471 = v142;
    v472 = 2112;
    v473 = v48;
    _os_log_impl(&dword_22506F000, v139, OS_LOG_TYPE_INFO, "Couldn't create a chaining PCS for %@: %@", buf, 0x16u);
  }

  if (!v48)
  {
    v145 = MEMORY[0x277CBC560];
    v146 = *MEMORY[0x277CBC120];
    v147 = objc_msgSend_recordID(self, v143, v144);
    v48 = objc_msgSend_errorWithDomain_code_format_(v145, v148, v146, 5005, @"Couldn't create a parent PCS for record %@", v147);
  }

  errorCopy = v48;
LABEL_52:
  v149 = objc_msgSend_tombstonedPublicKeyIDs(v10, v41, v42);
  v152 = objc_msgSend_count(v149, v150, v151);

  v456 = errorCopy;
  if (v152)
  {
    v155 = *MEMORY[0x277CBC878];
    v156 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v155);
    }

    v157 = *v156;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
    {
      v160 = objc_msgSend_tombstonedPublicKeyIDs(v10, v158, v159);
      v163 = objc_msgSend_count(v160, v161, v162);
      v166 = objc_msgSend_recordID(self, v164, v165);
      *buf = 134218242;
      v471 = v163;
      v472 = 2112;
      v473 = v166;
      _os_log_impl(&dword_22506F000, v157, OS_LOG_TYPE_INFO, "Found %lu tombstoned key(s) on record %@", buf, 0x16u);
    }

    v454 = v15;

    v457 = objc_opt_new();
    v463 = 0u;
    v464 = 0u;
    v465 = 0u;
    v466 = 0u;
    v169 = objc_msgSend_record(self, v167, v168);
    v172 = objc_msgSend_tombstonedPublicKeyIDs(v169, v170, v171);

    v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v173, &v463, v476, 16);
    if (v174)
    {
      v177 = v174;
      v453 = v10;
      v178 = 0;
      v179 = *v464;
      do
      {
        for (i = 0; i != v177; ++i)
        {
          if (*v464 != v179)
          {
            objc_enumerationMutation(v172);
          }

          v181 = *(*(&v463 + 1) + 8 * i);
          v182 = objc_msgSend_pcsManager(self, v175, v176);
          v185 = objc_msgSend_pcs(dataCopy, v183, v184);
          v187 = objc_msgSend_removePublicKeyID_fromPCS_(v182, v186, v181, v185);

          if (v187)
          {
            objc_msgSend_addObject_(v457, v188, v181);
          }

          else
          {
            v178 = 1;
          }
        }

        v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v175, &v463, v476, 16);
      }

      while (v177);
      v189 = v178 ^ 1;
      v10 = v453;
    }

    else
    {
      v189 = 1;
    }

    objc_msgSend_setTombstonedPublicKeyIDs_(v10, v190, v457);
    errorCopy = v456;
    if ((objc_msgSend_didRollRecordPCSMasterKey(self, v191, v192) & 1) == 0)
    {
      errorCopy = v456;
      if ((v189 & 1) == 0)
      {
        v195 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v193, v194);
        v198 = objc_msgSend_rollRecordMasterKeysOnUnshare(v195, v196, v197);

        errorCopy = v456;
        if (v198)
        {
          v199 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v199);
          }

          v200 = MEMORY[0x277CBC830];

          v201 = *v200;
          if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
          {
            v446 = objc_msgSend_recordID(self, v202, v203);
            *buf = 138412290;
            v471 = v446;
            _os_log_debug_impl(&dword_22506F000, v201, OS_LOG_TYPE_DEBUG, "Rolling record PCS master key since we cleaned up tombstoned key(s) on record %@", buf, 0xCu);
          }

          v206 = objc_msgSend_pcsManager(self, v204, v205);
          v209 = objc_msgSend_pcs(dataCopy, v207, v208);
          errorCopy = objc_msgSend_rollMasterKeyForRecordPCS_forOperation_(v206, v210, v209, v454);

          objc_msgSend_setDidRollRecordPCSMasterKey_(self, v211, 1);
        }
      }
    }

    v15 = v454;
  }

  v212 = objc_msgSend_record(self, v153, v154);
  v215 = objc_msgSend_share(v212, v213, v214);
  v218 = objc_msgSend_recordID(v215, v216, v217);

  v458 = dataCopy;
  if (v218)
  {
    v221 = objc_msgSend_handlersByRecordID(v15, v219, v220);
    v224 = objc_msgSend_record(self, v222, v223);
    v227 = objc_msgSend_share(v224, v225, v226);
    v230 = objc_msgSend_recordID(v227, v228, v229);
    v232 = objc_msgSend_objectForKeyedSubscript_(v221, v231, v230);
    v235 = objc_msgSend_record(v232, v233, v234);

    v236 = v235;
    if (v235)
    {
      objc_msgSend_setWantsPublicSharingKey_(v10, v219, 1);
    }

    dataCopy = v458;
  }

  else
  {
    v236 = 0;
  }

  v237 = objc_msgSend_mutableEncryptedPSK(v10, v219, v220);
  if (v237)
  {
    v240 = v237;
  }

  else
  {
    if (!objc_msgSend_wantsPublicSharingKey(v10, v238, v239))
    {
      goto LABEL_106;
    }

    v243 = objc_msgSend_mutableEncryptedPSK(v236, v241, v242);

    if (v243)
    {
      v246 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v246);
      }

      v247 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
      {
        v448 = objc_msgSend_recordID(v236, v248, v249);
        v451 = objc_msgSend_recordID(self, v449, v450);
        *buf = 138412546;
        v471 = v448;
        v472 = 2112;
        v473 = v451;
        _os_log_debug_impl(&dword_22506F000, v247, OS_LOG_TYPE_DEBUG, "Using publicSharingIdentity from share %@ for record %@", buf, 0x16u);
      }

      v250 = objc_alloc(MEMORY[0x277CBC2E8]);
      v253 = objc_msgSend_mutableEncryptedPSK(v236, v251, v252);
      v256 = objc_msgSend_data(v253, v254, v255);
      v258 = objc_msgSend_initWithData_(v250, v257, v256);
      objc_msgSend_setMutableEncryptedPSK_(v10, v259, v258);
    }

    v260 = objc_msgSend_mutableEncryptedPSK(v10, v244, v245);

    if (!v260)
    {
      v263 = objc_msgSend_encryptedPublicSharingKey(dataCopy, v261, v262);
      objc_msgSend_setMutableEncryptedPSK_(v10, v264, v263);
    }

    v265 = objc_msgSend_mutableEncryptedPSK(v10, v261, v262);

    if (!v265)
    {
      v462 = v456;
      PublicSharingKeyWithError = objc_msgSend__createPublicSharingKeyWithError_(self, v266, &v462);
      v269 = v462;

      if (PublicSharingKeyWithError)
      {
        v456 = v269;
      }

      else
      {
        v270 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v270);
        }

        v271 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
        {
          v452 = objc_msgSend_recordID(v10, v272, v273);
          *buf = 138412546;
          v471 = v452;
          v472 = 2112;
          v473 = v269;
          _os_log_error_impl(&dword_22506F000, v271, OS_LOG_TYPE_ERROR, "Failed to prepare public sharing key for record %@: %@", buf, 0x16u);
        }

        if (!v269)
        {
          v276 = MEMORY[0x277CBC560];
          v277 = *MEMORY[0x277CBC120];
          objc_msgSend_recordID(self, v274, v275);
          v279 = v278 = v236;
          v269 = objc_msgSend_errorWithDomain_code_format_(v276, v280, v277, 5005, @"Couldn't create a public sharing key for record %@", v279);

          v236 = v278;
          dataCopy = v458;
        }

        v281 = v269;

        v456 = v281;
        errorCopy = v281;
      }
    }

    v240 = objc_msgSend_mutableEncryptedPSK(v10, v266, v267);
    objc_msgSend_setEncryptedPublicSharingKey_(dataCopy, v282, v240);
  }

LABEL_106:
  v285 = objc_msgSend_baseToken(v10, v241, v242);
  if (v285)
  {
LABEL_107:

    goto LABEL_111;
  }

  if (objc_msgSend_wantsPublicSharingKey(v10, v283, v284))
  {
    v288 = objc_msgSend_baseToken(v236, v286, v287);

    if (v288)
    {
      v285 = objc_msgSend_baseToken(v236, v286, v287);
      objc_msgSend_setBaseToken_(v10, v289, v285);
      goto LABEL_107;
    }
  }

LABEL_111:
  v290 = objc_msgSend__needsSigningPCS(self, v286, v287);
  v16 = MEMORY[0x277CBC878];
  if (v290)
  {
    v293 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v293);
    }

    v294 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
    {
      v422 = objc_msgSend_recordID(v10, v295, v296);
      *buf = 138412290;
      v471 = v422;
      _os_log_debug_impl(&dword_22506F000, v294, OS_LOG_TYPE_DEBUG, "Should set signing PCS for record %@", buf, 0xCu);

      v16 = MEMORY[0x277CBC878];
    }

    objc_msgSend__setSigningPCSIdentity_(self, v297, dataCopy);
  }

  if (errorCopy)
  {

    v18 = MEMORY[0x277CBC830];
    v17 = MEMORY[0x277CBC880];
    goto LABEL_2;
  }

  v455 = v236;
  v298 = objc_msgSend_container(v15, v291, v292);
  v301 = objc_msgSend_pcsManager(v298, v299, v300);
  v304 = objc_msgSend_pcsKeysToRemove(dataCopy, v302, v303);
  v307 = objc_msgSend_pcs(dataCopy, v305, v306);
  v310 = objc_msgSend_protectionEtag(v10, v308, v309);
  v312 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v301, v311, v304, v307, v310, v15);

  if (v312)
  {
    v461[0] = MEMORY[0x277D85DD0];
    v461[1] = 3221225472;
    v461[2] = sub_2251F70C8;
    v461[3] = &unk_2785498A0;
    v461[4] = v312;
    objc_msgSend_updateCloudKitMetrics_(v15, v313, v461);
  }

  v315 = objc_msgSend_pcs(v458, v313, v314);
  objc_msgSend_setRecordPCS_(v10, v316, v315);
  v319 = objc_msgSend_container(v15, v317, v318);
  v322 = objc_msgSend_pcsManager(v319, v320, v321);
  v325 = objc_msgSend_pcs(v458, v323, v324);
  v460 = v456;
  v327 = objc_msgSend_dataFromRecordPCS_error_(v322, v326, v325, &v460);
  v328 = v460;

  if (!v327)
  {
    v359 = *MEMORY[0x277CBC878];
    v360 = v455;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v359);
    }

    dataCopy = v458;

    v361 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v361, OS_LOG_TYPE_ERROR))
    {
      v447 = objc_msgSend_recordID(v10, v362, v363);
      *buf = 138412546;
      v471 = v447;
      v472 = 2112;
      v473 = v328;
      _os_log_error_impl(&dword_22506F000, v361, OS_LOG_TYPE_ERROR, "Couldn't create PCS data for record %@: %@", buf, 0x16u);
    }

    goto LABEL_166;
  }

  objc_msgSend_setProtectionData_(v10, v329, v327);
  v331 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v330, v327);
  objc_msgSend_setProtectionEtag_(v10, v332, v331);

  if (!objc_msgSend__canSetPreviousProtectionEtag(self, v333, v334) || (objc_msgSend_previousProtectionEtag(v10, v335, v336), v337 = objc_claimAutoreleasedReturnValue(), v337, !v337))
  {
    v338 = objc_msgSend_etag(v458, v335, v336);
    objc_msgSend_setPreviousProtectionEtag_(v10, v339, v338);
  }

  v340 = objc_msgSend_previousProtectionEtagFromUnitTest(v10, v335, v336);

  if (v340)
  {
    v343 = objc_msgSend_previousProtectionEtagFromUnitTest(v10, v341, v342);
    objc_msgSend_setPreviousProtectionEtag_(v10, v344, v343);

    objc_msgSend_setPreviousProtectionEtagFromUnitTest_(v10, v345, 0);
  }

  v346 = objc_msgSend_container(v15, v341, v342);
  v349 = objc_msgSend_deviceContext(v346, v347, v348);
  v352 = objc_msgSend_testDeviceReference(v349, v350, v351);
  if (v352)
  {
    v355 = v352;
    v356 = objc_msgSend_zoneProtectionEtag(v10, v353, v354);

    if (v356)
    {
      goto LABEL_137;
    }
  }

  else
  {
  }

  v364 = objc_msgSend_zonePCSData(v458, v357, v358);
  v367 = objc_msgSend_etag(v364, v365, v366);
  objc_msgSend_setZoneProtectionEtag_(v10, v368, v367);

LABEL_137:
  v369 = objc_msgSend_container(v15, v357, v358);
  v372 = objc_msgSend_deviceContext(v369, v370, v371);
  v375 = objc_msgSend_testDeviceReference(v372, v373, v374);
  if (!v375)
  {

    dataCopy = v458;
LABEL_141:
    v382 = objc_msgSend_sharePCSData(dataCopy, v380, v381);
    v385 = objc_msgSend_shareEtag(v382, v383, v384);
    objc_msgSend_setShareEtag_(v10, v386, v385);

    goto LABEL_142;
  }

  v378 = v375;
  v379 = objc_msgSend_shareEtag(v10, v376, v377);

  dataCopy = v458;
  if (!v379)
  {
    goto LABEL_141;
  }

LABEL_142:
  v387 = objc_msgSend_zonePCSData(dataCopy, v380, v381);
  v390 = objc_msgSend_zoneishPublicKeyID(v387, v388, v389);

  v360 = v455;
  if (!v390)
  {
    goto LABEL_165;
  }

  v392 = *MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v392);
  }

  v393 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v393, OS_LOG_TYPE_INFO))
  {
    v396 = objc_msgSend_recordID(v10, v394, v395);
    v399 = objc_msgSend_zoneishKeyID(v10, v397, v398);
    v402 = objc_msgSend_zoneishPublicKeyID(v458, v400, v401);
    *buf = 138412802;
    v471 = v396;
    v472 = 2112;
    v473 = v399;
    v474 = 2112;
    v475 = v402;
    _os_log_impl(&dword_22506F000, v393, OS_LOG_TYPE_INFO, "Setting zoneishKeyID on record %@ from %@ to %@", buf, 0x20u);

    v360 = v455;
  }

  dataCopy = v458;
  v405 = objc_msgSend_zoneishPublicKeyID(v458, v403, v404);
  objc_msgSend_setZoneishKeyID_(v10, v406, v405);

  if (*MEMORY[0x277CBC810] != 1)
  {
    goto LABEL_165;
  }

  v408 = objc_msgSend_unitTestOverrides(v15, v391, v407);
  v410 = objc_msgSend_objectForKeyedSubscript_(v408, v409, @"TwoByteZoneishKeyIDs");

  if (v410)
  {
    v413 = objc_msgSend_zoneishKeyID(v10, v411, v412);
    v415 = objc_msgSend_subdataWithRange_(v413, v414, 0, 2);

    objc_msgSend_setZoneishKeyID_(v10, v416, v415);
    v417 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v417);
    }

    v418 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v418, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

    v421 = objc_msgSend_recordID(v10, v419, v420);
    *buf = 138412546;
    v471 = v421;
    v472 = 2112;
    v473 = v415;
LABEL_163:
    _os_log_impl(&dword_22506F000, v418, OS_LOG_TYPE_INFO, "Setting zoneishKeyID on record %@ to %@", buf, 0x16u);

LABEL_164:
    v360 = v455;
    dataCopy = v458;
    goto LABEL_165;
  }

  v423 = objc_msgSend_unitTestOverrides(v15, v411, v412);
  v425 = objc_msgSend_objectForKeyedSubscript_(v423, v424, @"ZoneishKeyIDWithOnlyTwoValidBytes");

  if (v425)
  {
    v428 = objc_msgSend_zoneishKeyID(v10, v426, v427);
    v430 = objc_msgSend_subdataWithRange_(v428, v429, 0, 2);
    v415 = objc_msgSend_mutableCopy(v430, v431, v432);

    LOWORD(v459) = -21846;
    objc_msgSend_appendBytes_length_(v415, v433, &v459, 2);
    objc_msgSend_setZoneishKeyID_(v10, v434, v415);
    v435 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v435);
    }

    v418 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v418, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

    goto LABEL_162;
  }

  v439 = objc_msgSend_unitTestOverrides(v15, v426, v427);
  v441 = objc_msgSend_objectForKeyedSubscript_(v439, v440, @"RandomZoneishKeyID");

  dataCopy = v458;
  if (v441)
  {
    v459 = -1515870811;
    v415 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v391, &v459, 4);
    objc_msgSend_setZoneishKeyID_(v10, v442, v415);
    v443 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v443);
    }

    v418 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v418, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

LABEL_162:
    v421 = objc_msgSend_recordID(v10, v436, v437);
    *buf = 138412546;
    v471 = v421;
    v472 = 2112;
    v473 = v415;
    goto LABEL_163;
  }

LABEL_165:
  objc_msgSend_setRecordPCSData_(self, v391, dataCopy);
LABEL_166:

  v18 = MEMORY[0x277CBC830];
LABEL_167:
  v444 = objc_msgSend_protectionData(v10, v32, v33);

  if (v444)
  {
    objc_msgSend_setState_(self, v445, 3);
    goto LABEL_7;
  }

  errorCopy = 0;
  v17 = MEMORY[0x277CBC880];
  v16 = MEMORY[0x277CBC878];
LABEL_2:
  v19 = *v16;
  if (*v17 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v19);
  }

  v20 = *v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v23 = objc_msgSend_recordID(v10, v21, v22);
    *buf = 138412546;
    v471 = v23;
    v472 = 2112;
    v473 = errorCopy;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Warn: Couldn't get PCS data for record %@: %@", buf, 0x16u);
  }

  objc_msgSend_setState_(self, v24, 12);
  objc_msgSend_setError_(self, v25, errorCopy);

LABEL_7:
  v28 = objc_msgSend_pcsGroup(self, v26, v27);
  dispatch_group_leave(v28);

  v31 = objc_msgSend_stateTransitionGroup(v15, v29, v30);
  dispatch_group_leave(v31);
}

- (void)fetchSharePCSData
{
  if (objc_msgSend_state(self, a2, v2) != 1)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDModifyRecordHandler.m", 1355, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler fetchSharePCSData]", self, "CKDModifyRecordHandlerStateNeedSharePCSData");
  }

  objc_msgSend_setState_(self, v5, 3);
}

- (id)assetsWhichNeedRecordFetch
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_record(self, a2, v2);
  if (v4 && (v7 = v4, objc_msgSend_record(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordID(v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v8, v7, v11))
  {
    v74 = objc_opt_new();
    v14 = objc_msgSend_record(self, v12, v13);
    v66 = objc_msgSend_operation(self, v15, v16);
    selfCopy = self;
    if (objc_msgSend_savePolicy(v66, v17, v18) == 2)
    {
      objc_msgSend_allKeys(v14, v19, v20);
    }

    else
    {
      objc_msgSend_changedKeys(v14, v19, v20);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v22 = v80 = 0u;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v79, v84, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v80;
      v70 = v14;
      v67 = *v80;
      v68 = v22;
      do
      {
        v28 = 0;
        v72 = v26;
        do
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v79 + 1) + 8 * v28);
          v30 = objc_msgSend_objectForKey_(v14, v25, v29);
          objc_opt_class();
          v31 = v30;
          if (objc_opt_isKindOfClass())
          {
            v32 = v30;
            v33 = v28;
            v34 = v32;
            if (objc_msgSend_isReference(v34, v35, v36))
            {
              v39 = objc_msgSend_assetRereferenceInfo(v34, v37, v38);
              objc_msgSend_setDestinationFieldName_(v39, v40, v29);

              v26 = v72;
              objc_msgSend_addObject_(v74, v41, v34);
            }

            v28 = v33;
            v30 = v31;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_addObject_(v74, v42, v30);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = v22;
                v71 = v28;
                v44 = v30;
                v47 = objc_msgSend_firstObject(v44, v45, v46);
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v77 = 0u;
                  v78 = 0u;
                  v75 = 0u;
                  v76 = 0u;
                  v69 = v44;
                  v49 = v44;
                  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v75, v83, 16);
                  if (v51)
                  {
                    v52 = v51;
                    v53 = *v76;
                    do
                    {
                      for (i = 0; i != v52; ++i)
                      {
                        if (*v76 != v53)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v55 = *(*(&v75 + 1) + 8 * i);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v56, v57);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, selfCopy, @"CKDModifyRecordHandler.m", 1386, @"first element of asset array is not a CKAsset");

                          v30 = v31;
                        }

                        if (objc_msgSend_isReference(v55, v56, v57))
                        {
                          v62 = objc_msgSend_assetRereferenceInfo(v55, v60, v61);
                          objc_msgSend_setDestinationFieldName_(v62, v63, v29);

                          v30 = v31;
                          objc_msgSend_addObject_(v74, v64, v55);
                        }
                      }

                      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v60, &v75, v83, 16);
                    }

                    while (v52);
                  }

                  v27 = v67;
                  v43 = v68;
                  v44 = v69;
                }

                v28 = v71;
                v26 = v72;
                v22 = v43;
                v14 = v70;
              }
            }
          }

          ++v28;
        }

        while (v28 != v26);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v79, v84, 16);
      }

      while (v26);
    }
  }

  else
  {
    v74 = 0;
  }

  return v74;
}

- (id)prepareAssetsForUploadWithError:(id *)error
{
  errorCopy = error;
  v285 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, error) != 4)
  {
    v187 = errorCopy;
    v188 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v188, v189, a2, self, @"CKDModifyRecordHandler.m", 1403, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler prepareAssetsForUploadWithError:]", self, "CKDModifyRecordHandlerStateNeedAssetUpload");

    errorCopy = v187;
  }

  if (objc_msgSend_isDelete(self, v6, v7))
  {
    objc_msgSend_setState_(self, v8, 5);
    v9 = 0;
    goto LABEL_141;
  }

  v198 = errorCopy;
  v10 = objc_opt_new();
  selfCopy = self;
  v13 = objc_msgSend_record(self, v11, v12);
  v16 = objc_msgSend_record(selfCopy, v14, v15);

  if (!v16)
  {
    v190 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v190, v191, a2, selfCopy);
  }

  v200 = objc_msgSend_recordID(v13, v17, v18);
  if (!v200)
  {
    v192 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v192, v193, a2, selfCopy, @"CKDModifyRecordHandler.m", 1413, @"Expected non-nil recordID for %@", v13);
  }

  v21 = objc_msgSend_operation(selfCopy, v19, v20);
  v270 = 0;
  v271 = &v270;
  v272 = 0x2020000000;
  v273 = 0;
  v266 = 0;
  v267 = &v266;
  v268 = 0x2020000000;
  v269 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251F85E4;
  aBlock[3] = &unk_278549E70;
  aBlock[4] = selfCopy;
  v208 = v13;
  v261 = v208;
  v201 = v21;
  v262 = v201;
  v264 = &v266;
  v199 = v10;
  v263 = v199;
  v265 = &v270;
  v22 = _Block_copy(aBlock);
  if (objc_msgSend_savePolicy(v201, v23, v24) == 2)
  {
    objc_msgSend_allKeys(v208, v25, v26);
  }

  else
  {
    objc_msgSend_changedKeys(v208, v25, v26);
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  obj = v257 = 0u;
  v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v256, v284, 16);
  if (v203)
  {
    v204 = *v257;
    v197 = *MEMORY[0x277CBC120];
    do
    {
      v205 = 0;
      do
      {
        if (*v257 != v204)
        {
          objc_enumerationMutation(obj);
        }

        v215 = *(*(&v256 + 1) + 8 * v205);
        v29 = objc_msgSend_objectForKey_(v208, v28, v215);
        v32 = v29;
        if (v29)
        {
          v209 = v29;
        }

        else
        {
          v33 = objc_msgSend_encryptedValues(v208, v30, v31);
          v209 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v215);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if ((v22[2](v22, v209, v215, 0) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v209;
            v252 = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v38 = objc_msgSend_assets(v35, v36, v37);
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v252, v283, 16);
            v210 = v38;
            if (v40)
            {
              v41 = *v253;
              while (2)
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v253 != v41)
                  {
                    objc_enumerationMutation(v210);
                  }

                  if ((v22[2](v22, *(*(&v252 + 1) + 8 * i), v215, 0) & 1) == 0)
                  {

                    goto LABEL_126;
                  }
                }

                v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v43, &v252, v283, 16);
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_prepareStreamingAsset_forUploadWithRecord_(selfCopy, v44, v209, v208);
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = v209;
            v248 = 0u;
            v249 = 0u;
            v250 = 0u;
            v251 = 0u;
            v48 = objc_msgSend_deltasToSave(v45, v46, v47);
            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v248, v282, 16);
            if (v52)
            {
              v53 = *v249;
LABEL_40:
              v54 = 0;
              while (1)
              {
                if (*v249 != v53)
                {
                  objc_enumerationMutation(v48);
                }

                v55 = *(*(&v248 + 1) + 8 * v54);
                v56 = objc_msgSend_asset(v55, v50, v51);
                if (v56)
                {
                  v57 = objc_msgSend_asset(v55, v50, v51);
                  v60 = objc_msgSend_deltaID(v55, v58, v59);
                  v61 = (v22)[2](v22, v57, v215, v60);

                  if ((v61 & 1) == 0)
                  {
                    break;
                  }
                }

                if (v52 == ++v54)
                {
                  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v248, v282, 16);
                  if (v52)
                  {
                    goto LABEL_40;
                  }

                  break;
                }
              }
            }

            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            v64 = objc_msgSend_pendingReplacementRequests(v45, v62, v63);
            v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v244, v281, 16);
            v210 = v64;
            if (v66)
            {
              v211 = *v245;
              do
              {
                v213 = v66;
                for (j = 0; j != v213; ++j)
                {
                  if (*v245 != v211)
                  {
                    objc_enumerationMutation(v210);
                  }

                  v70 = *(*(&v244 + 1) + 8 * j);
                  v240 = 0u;
                  v241 = 0u;
                  v242 = 0u;
                  v243 = 0u;
                  v71 = objc_msgSend_replacementDeltas(v70, v67, v68);
                  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v240, v280, 16);
                  if (v75)
                  {
                    v76 = *v241;
LABEL_54:
                    v77 = 0;
                    while (1)
                    {
                      if (*v241 != v76)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v78 = *(*(&v240 + 1) + 8 * v77);
                      v79 = objc_msgSend_asset(v78, v73, v74);
                      if (v79)
                      {
                        v80 = objc_msgSend_asset(v78, v73, v74);
                        v83 = objc_msgSend_deltaID(v78, v81, v82);
                        v84 = (v22)[2](v22, v80, v215, v83);

                        if ((v84 & 1) == 0)
                        {
                          break;
                        }
                      }

                      if (v75 == ++v77)
                      {
                        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v73, &v240, v280, 16);
                        if (v75)
                        {
                          goto LABEL_54;
                        }

                        break;
                      }
                    }
                  }
                }

                v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v67, &v244, v281, 16);
              }

              while (v66);
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = v209;
            v88 = objc_msgSend_firstObject(v85, v86, v87);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v92 = v85;
              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v236, v279, 16);
              if (v94)
              {
                v95 = 0;
                v96 = *v237;
                while (2)
                {
                  for (k = 0; k != v94; ++k)
                  {
                    if (*v237 != v96)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v98 = *(*(&v236 + 1) + 8 * k);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_msgSend_setState_(selfCopy, v99, 12);
                      v154 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v153, v197, 1007, @"Invalid list of heterogenous values for field name %@ in recordID %@", v215, v200);
                      objc_msgSend_setError_(selfCopy, v155, v154);

                      *(v271 + 24) = 1;
                      goto LABEL_121;
                    }

                    objc_msgSend_setArrayIndex_(v98, v99, v95);
                    if (!v22[2](v22, v98, v215, 0))
                    {
                      goto LABEL_121;
                    }

                    ++v95;
                  }

                  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v100, &v236, v279, 16);
                  if (v94)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_121:

              v158 = objc_msgSend_error(selfCopy, v156, v157);

              if (v158)
              {
LABEL_126:

LABEL_127:
                goto LABEL_128;
              }
            }

            else
            {
              v101 = objc_msgSend_firstObject(v85, v90, v91);
              objc_opt_class();
              v102 = objc_opt_isKindOfClass();

              if (v102)
              {
                v234 = 0u;
                v235 = 0u;
                v232 = 0u;
                v233 = 0u;
                v210 = v85;
                v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v105, &v232, v278, 16);
                if (v107)
                {
                  v108 = *v233;
                  do
                  {
                    for (m = 0; m != v107; ++m)
                    {
                      if (*v233 != v108)
                      {
                        objc_enumerationMutation(v210);
                      }

                      objc_msgSend_prepareStreamingAsset_forUploadWithRecord_(selfCopy, v106, *(*(&v232 + 1) + 8 * m), v208);
                    }

                    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v106, &v232, v278, 16);
                  }

                  while (v107);
                }

                goto LABEL_63;
              }

              v110 = objc_msgSend_firstObject(v85, v103, v104);
              objc_opt_class();
              v111 = objc_opt_isKindOfClass();

              if (v111)
              {
                v230 = 0u;
                v231 = 0u;
                v228 = 0u;
                v229 = 0u;
                v210 = v85;
                v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v112, &v228, v277, 16);
                if (v194)
                {
                  v195 = *v229;
                  do
                  {
                    for (n = 0; n != v194; ++n)
                    {
                      if (*v229 != v195)
                      {
                        objc_enumerationMutation(v210);
                      }

                      v115 = *(*(&v228 + 1) + 8 * n);
                      v224 = 0u;
                      v225 = 0u;
                      v226 = 0u;
                      v227 = 0u;
                      v116 = objc_msgSend_deltasToSave(v115, v113, v114);
                      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, &v224, v276, 16);
                      if (v120)
                      {
                        v121 = *v225;
LABEL_94:
                        v122 = 0;
                        while (1)
                        {
                          if (*v225 != v121)
                          {
                            objc_enumerationMutation(v116);
                          }

                          v123 = *(*(&v224 + 1) + 8 * v122);
                          v124 = objc_msgSend_asset(v123, v118, v119);
                          if (v124)
                          {
                            v125 = objc_msgSend_asset(v123, v118, v119);
                            v128 = objc_msgSend_deltaID(v123, v126, v127);
                            v129 = (v22)[2](v22, v125, v215, v128);

                            if ((v129 & 1) == 0)
                            {
                              break;
                            }
                          }

                          if (v120 == ++v122)
                          {
                            v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v118, &v224, v276, 16);
                            if (v120)
                            {
                              goto LABEL_94;
                            }

                            break;
                          }
                        }
                      }

                      v222 = 0u;
                      v223 = 0u;
                      v220 = 0u;
                      v221 = 0u;
                      v132 = objc_msgSend_pendingReplacementRequests(v115, v130, v131);
                      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v220, v275, 16);
                      if (v134)
                      {
                        v212 = *v221;
                        v207 = v132;
                        do
                        {
                          v214 = v134;
                          for (ii = 0; ii != v214; ++ii)
                          {
                            if (*v221 != v212)
                            {
                              objc_enumerationMutation(v207);
                            }

                            v138 = *(*(&v220 + 1) + 8 * ii);
                            v216 = 0u;
                            v217 = 0u;
                            v218 = 0u;
                            v219 = 0u;
                            v139 = objc_msgSend_replacementDeltas(v138, v135, v136);
                            v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v140, &v216, v274, 16);
                            if (v143)
                            {
                              v144 = *v217;
LABEL_108:
                              v145 = 0;
                              while (1)
                              {
                                if (*v217 != v144)
                                {
                                  objc_enumerationMutation(v139);
                                }

                                v146 = *(*(&v216 + 1) + 8 * v145);
                                v147 = objc_msgSend_asset(v146, v141, v142);
                                if (v147)
                                {
                                  v148 = objc_msgSend_asset(v146, v141, v142);
                                  v151 = objc_msgSend_deltaID(v146, v149, v150);
                                  v152 = (v22)[2](v22, v148, v215, v151);

                                  if ((v152 & 1) == 0)
                                  {
                                    break;
                                  }
                                }

                                if (v143 == ++v145)
                                {
                                  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v141, &v216, v274, 16);
                                  if (v143)
                                  {
                                    goto LABEL_108;
                                  }

                                  break;
                                }
                              }
                            }
                          }

                          v132 = v207;
                          v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v135, &v220, v275, 16);
                        }

                        while (v134);
                      }
                    }

                    v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v113, &v228, v277, 16);
                  }

                  while (v194);
                }

LABEL_63:
              }
            }
          }
        }

LABEL_23:

        ++v205;
      }

      while (v205 != v203);
      v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v256, v284, 16);
      v203 = v159;
    }

    while (v159);
  }

LABEL_128:

  if (*(v267 + 24) != 1)
  {
    v183 = objc_msgSend_error(selfCopy, v160, v161);
    v184 = v183 == 0;

    if (v184)
    {
      objc_msgSend_setState_(selfCopy, v167, 5);
    }

    goto LABEL_135;
  }

  v164 = objc_msgSend_progressTracker(selfCopy, v160, v161);
  if (v164)
  {
    goto LABEL_132;
  }

  v165 = objc_msgSend_saveProgressBlock(v201, v162, v163);
  v166 = v165 == 0;

  if (!v166)
  {
    v169 = objc_alloc(MEMORY[0x277CCACA8]);
    v172 = objc_msgSend_recordID(selfCopy, v170, v171);
    v175 = objc_msgSend_recordName(v172, v173, v174);
    v164 = objc_msgSend_initWithFormat_(v169, v176, @"up|%@", v175);

    v177 = [CKDProgressTracker alloc];
    v179 = objc_msgSend_initWithTrackingID_(v177, v178, v164);
    objc_msgSend_setLastItemPercentage_(v179, v180, v181, 0.01);
    objc_msgSend_setProgressTracker_(selfCopy, v182, v179);

LABEL_132:
  }

LABEL_135:
  if (*(v271 + 24) == 1)
  {
    if (v198)
    {
      *v198 = objc_msgSend_error(selfCopy, v167, v168);
    }

    v185 = 0;
  }

  else
  {
    v185 = v199;
  }

  v9 = v185;

  _Block_object_dispose(&v266, 8);
  _Block_object_dispose(&v270, 8);

LABEL_141:

  return v9;
}

- (BOOL)_prepareAsset:(id)asset recordKey:(id)key mergeableDeltaID:(id)d record:(id)record error:(id *)error
{
  v231 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  keyCopy = key;
  dCopy = d;
  recordCopy = record;
  if (assetCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v183 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v183, v184, a2, self, @"CKDModifyRecordHandler.m", 1550, @"Expected non-nil recordKey for %@", 0);

    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  v185 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v185, v186, a2, self, @"CKDModifyRecordHandler.m", 1551, @"Expected non-nil recordKey for %@", assetCopy);

LABEL_3:
  v18 = objc_msgSend_operation(self, v15, v16);
  v21 = objc_msgSend_useEncryption(v18, v19, v20);
  v24 = objc_msgSend_useClearAssetEncryption(v18, v22, v23);
  if (dCopy)
  {
    v27 = objc_msgSend_valueID(dCopy, v25, v26);
    isEncrypted = objc_msgSend_isEncrypted(v27, v28, v29);

    v21 &= isEncrypted;
    v31 = 1;
  }

  else
  {
    v31 = v24;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v33 = assetCopy;
  objc_msgSend_setRecord_(v33, v34, recordCopy);
  objc_msgSend_setRecordKey_(v33, v35, keyCopy);
  if (isKindOfClass)
  {
    if (v21)
    {
      v220 = recordCopy;
      v38 = objc_msgSend_recordPCS(recordCopy, v36, v37);
      v41 = objc_msgSend_assets(v33, v39, v40);
      if (objc_msgSend_count(v41, v42, v43))
      {
        v46 = objc_msgSend_assets(v33, v44, v45);
        v49 = objc_msgSend_firstObject(v46, v47, v48);
      }

      else
      {
        v49 = 0;
      }

      v111 = objc_msgSend_wrappedAssetKey(v49, v109, v110);

      if (v111)
      {
        v218 = dCopy;
        v113 = [CKDWrappingContext alloc];
        v116 = objc_msgSend_recordID(v220, v114, v115);
        objc_msgSend_signature(v49, v117, v118);
        v119 = v18;
        v121 = v120 = v38;
        v124 = objc_msgSend_referenceSignature(v49, v122, v123);
        v126 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v113, v125, v116, keyCopy, 0, v121, v124);

        v129 = objc_msgSend_pcsManager(self, v127, v128);
        v132 = objc_msgSend_wrappedAssetKey(v49, v130, v131);
        v226 = 0;
        v219 = v120;
        v133 = v120;
        v18 = v119;
        v135 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v129, v134, v132, v133, v126, &v226);
        v74 = v226;
        objc_msgSend_setAssetKey_(v49, v136, v135);

        v139 = objc_msgSend_assetKey(v49, v137, v138);

        if (!v139)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v140 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v228 = v49;
            v229 = 2112;
            v230 = v74;
            _os_log_debug_impl(&dword_22506F000, v140, OS_LOG_TYPE_DEBUG, "Couldn't unwrap asset key for the package manifest asset %@: %@", buf, 0x16u);
          }

          objc_msgSend_setAssets_(v33, v141, 0);
        }

        errorCopy3 = error;
        dCopy = v218;
        objc_msgSend_setRecordPCS_(v33, v142, v219);
      }

      else
      {
        v74 = 0;
        errorCopy3 = error;
        objc_msgSend_setRecordPCS_(v33, v112, v38);
      }

      recordCopy = v220;
      if (!errorCopy3)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (v31)
    {
      v74 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1017, @"Packages not supported with clear asset encryption.");
      errorCopy3 = error;
      if (error)
      {
LABEL_46:
        if (v74)
        {
          v143 = v74;
          *errorCopy3 = v74;
        }
      }
    }

    else
    {
      v74 = 0;
    }

LABEL_48:
    v144 = objc_msgSend_assets(v33, v36, v37);
LABEL_73:
    v104 = v144;
    v173 = v144 == 0;
LABEL_74:

LABEL_77:
    return v173;
  }

  objc_msgSend_setMergeableDeltaID_(v33, v36, dCopy);
  if (((v21 | v31) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v87 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v228 = v33;
      _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "Skipping unwrapping of asset key for %@ because encryption is disabled", buf, 0xCu);
    }

LABEL_69:
    v74 = 0;
LABEL_70:
    if (!objc_msgSend_uploaded(v33, v88, v89))
    {
      v173 = 1;
      goto LABEL_77;
    }

    if (!objc_msgSend_paddedFileSize(v33, v178, v179))
    {
      v173 = 0;
      goto LABEL_77;
    }

    v144 = objc_msgSend_uploadReceipt(v33, v180, v181);
    goto LABEL_73;
  }

  if (v21 && (objc_msgSend_wrappedAssetKey(v33, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), v52, v52))
  {
    v53 = objc_msgSend_recordPCS(recordCopy, v50, v51);
    v54 = [CKDWrappingContext alloc];
    v221 = recordCopy;
    v57 = objc_msgSend_recordID(recordCopy, v55, v56);
    v60 = objc_msgSend_signature(v33, v58, v59);
    v63 = objc_msgSend_referenceSignature(v33, v61, v62);
    v65 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v54, v64, v57, keyCopy, dCopy, v60, v63);

    v68 = objc_msgSend_pcsManager(self, v66, v67);
    v71 = objc_msgSend_wrappedAssetKey(v33, v69, v70);
    v225 = 0;
    v73 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v68, v72, v71, v53, v65, &v225);
    v74 = v225;
    objc_msgSend_setAssetKey_(v33, v75, v73);

    v78 = objc_msgSend_assetKey(v33, v76, v77);

    if (!v78)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v79 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v228 = v33;
        v229 = 2112;
        v230 = v74;
        _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Couldn't unwrap asset key for asset %@: %@. Wrapping a new asset key and re-saving the asset.", buf, 0x16u);
      }

      objc_msgSend_setWrappedAssetKey_(v33, v80, 0);
      objc_msgSend_setAssetKey_(v33, v81, 0);
      objc_msgSend_setUploaded_(v33, v82, 0);
      objc_msgSend_setUploadReceipt_(v33, v83, 0);
      objc_msgSend_setUploadReceiptExpiration_(v33, v84, v85, 0.0);
    }

    recordCopy = v221;
  }

  else
  {
    if (v31)
    {
      v90 = objc_msgSend_clearAssetKey(v33, v50, v51);

      if (v90)
      {
        v91 = objc_msgSend_clearAssetKey(v33, v50, v51);
        objc_msgSend_setAssetKey_(v33, v92, v91);
      }
    }

    v74 = 0;
  }

  v93 = objc_msgSend_assetKey(v33, v50, v51);

  if (v93)
  {
    goto LABEL_70;
  }

  v96 = objc_msgSend_assetUUIDToExpectedProperties(self, v94, v95);
  v99 = objc_msgSend_UUID(v33, v97, v98);
  v101 = objc_msgSend_objectForKeyedSubscript_(v96, v100, v99);
  v104 = objc_msgSend_assetKey(v101, v102, v103);

  if (v104)
  {
    objc_msgSend_setAssetKey_(v33, v105, v104);
    v74 = 0;
    goto LABEL_56;
  }

  v145 = objc_msgSend_container(v18, v105, v106);
  v148 = objc_msgSend_options(v145, v146, v147);
  v151 = objc_msgSend_mmcsEncryptionSupport(v148, v149, v150);

  switch(v151)
  {
    case 1:
      goto LABEL_54;
    case 2:
LABEL_53:
      v224 = 0;
      v154 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v152, 1, &v224);
      v155 = v224;
LABEL_55:
      v74 = v155;
      objc_msgSend_setAssetKey_(v33, v156, v154);

LABEL_56:
      v157 = objc_msgSend_assetKey(v33, v107, v108);

      if (!v157 || v74)
      {
        if (error)
        {
          v171 = v74;
          *error = v74;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v172 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v228 = v74;
          _os_log_error_impl(&dword_22506F000, v172, OS_LOG_TYPE_ERROR, "Couldn't create an asset key: %@", buf, 0xCu);
        }

        v173 = 0;
        goto LABEL_74;
      }

      v160 = objc_msgSend_assetUUIDToExpectedProperties(self, v158, v159);
      v163 = objc_msgSend_UUID(v33, v161, v162);
      v165 = objc_msgSend_objectForKeyedSubscript_(v160, v164, v163);
      v168 = objc_msgSend_referenceSignature(v165, v166, v167);

      if (v168)
      {
        objc_msgSend_setReferenceSignature_(v33, v169, v168);
      }

      else
      {
        v174 = objc_msgSend_assetKey(v33, v169, v170);
        v176 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v175, v174);
        objc_msgSend_setReferenceSignature_(v33, v177, v176);
      }

      goto LABEL_69;
    case 3:
      if (objc_msgSend_useMMCSEncryptionV2(v33, v152, v153))
      {
        goto LABEL_53;
      }

LABEL_54:
      v223 = 0;
      v154 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v152, 0, &v223);
      v155 = v223;
      goto LABEL_55;
  }

  v187 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v152, v153);
  v188 = objc_alloc(MEMORY[0x277CBC6B0]);
  v189 = objc_alloc(MEMORY[0x277CBC6C8]);
  v191 = objc_msgSend_initWithFilePath_lineNumber_(v189, v190, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/Records/CKDModifyRecordHandler.m", 1639);
  v194 = objc_msgSend_container(v18, v192, v193);
  v197 = objc_msgSend_options(v194, v195, v196);
  v200 = objc_msgSend_mmcsEncryptionSupport(v197, v198, v199);
  v202 = objc_msgSend_initWithSourceCodeLocation_format_(v188, v201, v191, @"Unexpected MMCSEncryptionSupportValue of 0x%x", v200);
  objc_msgSend_handleSignificantIssue_actions_(v187, v203, v202, 0);

  v204 = MEMORY[0x277CCACA8];
  v207 = objc_msgSend_container(v18, v205, v206);
  v210 = objc_msgSend_options(v207, v208, v209);
  v213 = objc_msgSend_mmcsEncryptionSupport(v210, v211, v212);
  v215 = objc_msgSend_stringWithFormat_(v204, v214, @"Unexpected MMCSEncryptionSupportValue of 0x%x", v213);

  objc_msgSend_UTF8String(v215, v216, v217);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)prepareStreamingAsset:(id)asset forUploadWithRecord:(id)record
{
  v53 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  recordCopy = record;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_recordID(recordCopy, v11, v12);
  v16 = objc_msgSend_zoneID(v13, v14, v15);
  v19 = objc_msgSend_ownerName(v16, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CBBF28]);

  if (isEqualToString)
  {
    v24 = objc_msgSend_container(v10, v22, v23);
    v27 = objc_msgSend_containerScopedUserID(v24, v25, v26);
    objc_msgSend_setOwner_(assetCopy, v28, v27);
  }

  else
  {
    v24 = objc_msgSend_recordID(recordCopy, v22, v23);
    v27 = objc_msgSend_zoneID(v24, v29, v30);
    v33 = objc_msgSend_ownerName(v27, v31, v32);
    objc_msgSend_setOwner_(assetCopy, v34, v33);
  }

  v37 = objc_msgSend_referenceSignature(assetCopy, v35, v36);

  if (!v37)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v51 = 138412290;
      v52 = assetCopy;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Generating new reference signature for streaming asset %@", &v51, 0xCu);
    }

    v43 = objc_msgSend_signatureForStreamingAsset(MEMORY[0x277CBC6A8], v41, v42);
    objc_msgSend_setReferenceSignature_(assetCopy, v44, v43);
  }

  v45 = objc_msgSend_fileSignature(assetCopy, v38, v39);

  if (!v45)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v51 = 138412290;
      v52 = assetCopy;
      _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Generating new file signature for streaming asset %@", &v51, 0xCu);
    }

    v49 = objc_msgSend_signatureForStreamingAsset(MEMORY[0x277CBC6A8], v47, v48);
    objc_msgSend_setFileSignature_(assetCopy, v50, v49);
  }
}

- (void)prepareForSaveWithCompletionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (objc_msgSend_state(self, v6, v7) != 5)
  {
    v60 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v61, a2, self, @"CKDModifyRecordHandler.m", 1683, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler prepareForSaveWithCompletionHandler:]", self, "CKDModifyRecordHandlerStateNeedRecordPrepareForUpload");
  }

  if (objc_msgSend_isDelete(self, v8, v9))
  {
    goto LABEL_21;
  }

  v14 = objc_msgSend_record(self, v10, v11);
  if (!v14)
  {
    v62 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v62, v63, a2, self, @"CKDModifyRecordHandler.m", 1688, @"Lost a record: %@", self);
  }

  v15 = objc_msgSend_operation(self, v12, v13);
  if (objc_msgSend_savePolicy(v15, v16, v17) == 2)
  {
    if ((objc_msgSend_hasEncryptedData(v14, v18, v19) & 1) == 0)
    {
LABEL_8:
      v22 = 1;
      goto LABEL_15;
    }
  }

  else if (!objc_msgSend_hasModifiedEncryptedData(v14, v18, v19))
  {
    goto LABEL_8;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v25 = v23;
    v28 = objc_msgSend_recordID(v14, v26, v27);
    *buf = 138412290;
    v65 = v28;
    _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Record %@ has encrypted data. Wrapping that data now...", buf, 0xCu);
  }

  v22 = objc_msgSend__wrapEncryptedDataOnRecord_(self, v24, v14);
LABEL_15:
  if (objc_msgSend_databaseScope(v15, v20, v21) == 2)
  {
    v31 = objc_msgSend_container(v15, v29, v30);
    v34 = objc_msgSend_entitlements(v31, v32, v33);
    hasNonLegacyShareURLEntitlement = objc_msgSend_hasNonLegacyShareURLEntitlement(v34, v35, v36);

    v40 = objc_msgSend_container(v15, v38, v39);
    v43 = objc_msgSend_account(v40, v41, v42);
    v46 = v43;
    if (hasNonLegacyShareURLEntitlement)
    {
      objc_msgSend_sharingURLHostname(v43, v44, v45);
    }

    else
    {
      objc_msgSend_displayedHostname(v43, v44, v45);
    }
    v47 = ;
    objc_msgSend_setDisplayedHostname_(v14, v48, v47);
  }

  if (!v22)
  {
    objc_msgSend_setState_(self, v10, 12);
    v49 = MEMORY[0x277CBC560];
    v50 = *MEMORY[0x277CBC120];
    v53 = objc_msgSend_record(self, v51, v52);
    v56 = objc_msgSend_recordID(v53, v54, v55);
    v58 = objc_msgSend_errorWithDomain_code_format_(v49, v57, v50, 5001, @"Couldn't encrypt data on record %@", v56);
    objc_msgSend_setError_(self, v59, v58);

    goto LABEL_23;
  }

LABEL_21:
  objc_msgSend_setState_(self, v10, 6);
LABEL_23:
  handlerCopy[2](handlerCopy);
}

- (BOOL)_wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s forField:(id)field recordID:(id)d
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  fieldCopy = field;
  dCopy = d;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v15 = objc_msgSend_operation(self, v12, v13);
    v18 = objc_msgSend_container(v15, v16, v17);
    v21 = objc_msgSend_deviceContext(v18, v19, v20);
    v24 = objc_msgSend_testDeviceReference(v21, v22, v23);
    if (v24)
    {
      v26 = v24;
      isEqualToString = objc_msgSend_isEqualToString_(fieldCopy, v25, @"EEEEEEEEEENCRYPTION_BREAKER");

      if (isEqualToString)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v28 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v45 = 138543362;
          v46 = fieldCopy;
          _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Creating bad encrypted data for the field %{public}@. Let's hope you know what you're doing!", &v45, 0xCu);
        }

        v30 = objc_msgSend_dataUsingEncoding_(@"🐔🐔🐔", v29, 4);
        objc_msgSend_setEncryptedData_(dataCopy, v31, v30);

        v32 = 1;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v33 = objc_msgSend_data(dataCopy, v12, v13);

  if (v33)
  {
    v34 = [CKDWrappingContext alloc];
    v36 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v34, v35, dCopy, fieldCopy, 0, 0, 0);
    v39 = objc_msgSend_pcsManager(self, v37, v38);
    v41 = objc_msgSend_wrapEncryptedData_withPCS_inContext_(v39, v40, dataCopy, s, v36);

    v32 = v41 == 0;
    if (v41)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v45 = 138543618;
        v46 = fieldCopy;
        v47 = 2112;
        v48 = v41;
        _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Warn: Couldn't wrap encrypte data for field %{public}@: %@", &v45, 0x16u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v45 = 138543362;
      v46 = fieldCopy;
      _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Warn: Can't wrap a nil encrypted data for field %{public}@", &v45, 0xCu);
    }

    v32 = 0;
  }

LABEL_22:

  return v32;
}

- (void)_pretendToWrapEncryptedDataForRecordValueStore:(id)store
{
  v46 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = objc_msgSend_allKeys(storeCopy, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v40, v45, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v41;
    v34 = v6;
    v35 = storeCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend_rawValueForKey_(storeCopy, v9, *(*(&v40 + 1) + 8 * i), v34, v35);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_data(v13, v14, v15);
          objc_msgSend_setEncryptedData_(v13, v17, v16);
LABEL_8:

          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_count(v13, v18, v19))
          {
            v22 = objc_msgSend_firstObject(v13, v20, v21);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v16 = v13;
              v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v24, &v36, v44, 16);
              if (v25)
              {
                v28 = v25;
                v29 = *v37;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v37 != v29)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v31 = *(*(&v36 + 1) + 8 * j);
                    v32 = objc_msgSend_data(v31, v26, v27);
                    objc_msgSend_setEncryptedData_(v31, v33, v32);
                  }

                  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, &v36, v44, 16);
                }

                while (v28);
                v6 = v34;
                storeCopy = v35;
              }

              goto LABEL_8;
            }
          }
        }

LABEL_20:
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v40, v45, 16);
    }

    while (v10);
  }
}

- (BOOL)_wrapEncryptedDataForRecordValueStore:(id)store withPCS:(_OpaquePCSShareProtection *)s
{
  v56 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = objc_msgSend_allKeys(storeCopy, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v50, v55, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v51;
    v13 = 1;
    v40 = *v51;
    do
    {
      v14 = 0;
      v41 = v11;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        v16 = objc_msgSend_rawValueForKey_(storeCopy, v10, v15, v40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_msgSend_recordID(storeCopy, v17, v18);
          v21 = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v20, v16, s, v15, v19);

          v13 &= v21;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v16, v22, v23))
          {
            v43 = v14;
            v26 = objc_msgSend_firstObject(v16, v24, v25);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v42 = v16;
              v28 = v16;
              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v46, v54, 16);
              if (v30)
              {
                v33 = v30;
                v34 = *v47;
                do
                {
                  for (i = 0; i != v33; ++i)
                  {
                    if (*v47 != v34)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v36 = *(*(&v46 + 1) + 8 * i);
                    v37 = objc_msgSend_recordID(storeCopy, v31, v32);
                    LODWORD(v36) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v38, v36, s, v15, v37);

                    v13 &= v36;
                  }

                  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v46, v54, 16);
                }

                while (v33);
              }

              v12 = v40;
              v11 = v41;
              v16 = v42;
              v14 = v43;
            }

            else
            {
              v14 = v43;
            }
          }
        }

        ++v14;
      }

      while (v14 != v11);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v50, v55, 16);
    }

    while (v11);
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13 & 1;
}

- (BOOL)_encryptMergeableDeltasInRecordValueStore:(id)store shareProtection:(_OpaquePCSShareProtection *)protection
{
  v121 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v9 = objc_msgSend_operation(self, v7, v8);
  v12 = objc_msgSend_container(v9, v10, v11);
  v15 = objc_msgSend_options(v12, v13, v14);
  objc_msgSend_encryptMergeableValueMetadata(v15, v16, v17);

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = objc_msgSend_allKeys(storeCopy, v18, v19);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v109, v120, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v110;
    v94 = 1;
    v83 = *v110;
    v84 = storeCopy;
    do
    {
      v25 = 0;
      v85 = v23;
      do
      {
        if (*v110 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = objc_msgSend_rawValueForKey_(storeCopy, v22, *(*(&v109 + 1) + 8 * v25));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v87 = v26;
          v88 = v25;
          v27 = v26;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v89 = v27;
          v30 = objc_msgSend_deltasToSave(v27, v28, v29);
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v105, v119, 16);
          if (v32)
          {
            v33 = v32;
            v34 = *v106;
            do
            {
              v35 = 0;
              do
              {
                if (*v106 != v34)
                {
                  objc_enumerationMutation(v30);
                }

                v36 = *(*(&v105 + 1) + 8 * v35);
                v37 = objc_alloc_init(CKDKeyEnvelopeContext);
                objc_msgSend_setShareProtection_(v37, v38, protection);
                objc_msgSend_encryptMetadataTernary(v36, v39, v40);
                v41 = CKBoolFromCKTernaryWithDefault();
                objc_msgSend_setEncryptMergeableValueMetadata_(v37, v42, v41);
                v104 = 0;
                v44 = objc_msgSend_encryptWithContext_error_(v36, v43, v37, &v104);
                v45 = v104;
                if ((v44 & 1) == 0)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v46 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                  {
                    v47 = v46;
                    objc_msgSend_valueID(v36, v48, v49);
                    v51 = v50 = v34;
                    *buf = 138412546;
                    v116 = v51;
                    v117 = 2112;
                    v118 = v45;
                    _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Failed to encrypt mergeable delta %@, with error: %@", buf, 0x16u);

                    v34 = v50;
                  }

                  v94 = 0;
                }

                ++v35;
              }

              while (v33 != v35);
              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v52, &v105, v119, 16);
            }

            while (v33);
          }

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v90 = objc_msgSend_pendingReplacementRequests(v89, v53, v54);
          v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v55, &v100, v114, 16);
          if (v92)
          {
            v91 = *v101;
            do
            {
              v58 = 0;
              do
              {
                if (*v101 != v91)
                {
                  objc_enumerationMutation(v90);
                }

                v93 = v58;
                v59 = *(*(&v100 + 1) + 8 * v58);
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v60 = objc_msgSend_replacementDeltas(v59, v56, v57);
                v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v96, v113, 16);
                if (v62)
                {
                  v63 = v62;
                  v64 = *v97;
                  do
                  {
                    v65 = 0;
                    do
                    {
                      if (*v97 != v64)
                      {
                        objc_enumerationMutation(v60);
                      }

                      v66 = *(*(&v96 + 1) + 8 * v65);
                      v67 = objc_alloc_init(CKDKeyEnvelopeContext);
                      objc_msgSend_setShareProtection_(v67, v68, protection);
                      objc_msgSend_encryptMetadataTernary(v66, v69, v70);
                      v71 = CKBoolFromCKTernaryWithDefault();
                      objc_msgSend_setEncryptMergeableValueMetadata_(v67, v72, v71);
                      v95 = 0;
                      v74 = objc_msgSend_encryptWithContext_error_(v66, v73, v67, &v95);
                      v75 = v95;
                      if ((v74 & 1) == 0)
                      {
                        if (*MEMORY[0x277CBC880] != -1)
                        {
                          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                        }

                        v76 = *MEMORY[0x277CBC830];
                        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                        {
                          v77 = v76;
                          v80 = objc_msgSend_valueID(v66, v78, v79);
                          *buf = 138412546;
                          v116 = v80;
                          v117 = 2112;
                          v118 = v75;
                          _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_INFO, "Failed to encrypt mergeable delta %@, with error: %@", buf, 0x16u);
                        }

                        v94 = 0;
                      }

                      ++v65;
                    }

                    while (v63 != v65);
                    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v81, &v96, v113, 16);
                  }

                  while (v63);
                }

                v58 = v93 + 1;
              }

              while (v93 + 1 != v92);
              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v56, &v100, v114, 16);
            }

            while (v92);
          }

          v24 = v83;
          storeCopy = v84;
          v23 = v85;
          v26 = v87;
          v25 = v88;
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v109, v120, 16);
    }

    while (v23);
  }

  else
  {
    v94 = 1;
  }

  return v94 & 1;
}

- (BOOL)_wrapEncryptedDataOnRecord:(id)record
{
  v124 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_useEncryption(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_recordPCS(recordCopy, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_valueStore(recordCopy, v14, v15);
      v19 = objc_msgSend__wrapEncryptedDataForRecordValueStore_withPCS_(self, v18, v17, v16);

      v22 = objc_msgSend_encryptedValueStore(recordCopy, v20, v21);
      v24 = objc_msgSend__wrapEncryptedDataForRecordValueStore_withPCS_(self, v23, v22, v16);

      v27 = objc_msgSend_encryptedValueStore(recordCopy, v25, v26);
      v29 = objc_msgSend__encryptMergeableDeltasInRecordValueStore_shareProtection_(self, v28, v27, v16);

      v30 = v29 & v24 & v19;
      v33 = objc_msgSend_record(self, v31, v32);
      v36 = objc_msgSend_chainPrivateKey(v33, v34, v35);
      if (v36)
      {
        v39 = v36;
        v40 = objc_msgSend_record(self, v37, v38);
        v43 = objc_msgSend_chainPrivateKey(v40, v41, v42);
        v44 = *MEMORY[0x277CBC8B0];
        v47 = objc_msgSend_recordID(recordCopy, v45, v46);
        LOBYTE(v44) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v48, v43, v16, v44, v47);

        v30 &= v44;
      }

      else
      {
      }

      v65 = objc_msgSend_record(self, v49, v50);
      v68 = objc_msgSend_mutableEncryptedPSK(v65, v66, v67);
      if (v68)
      {
        v71 = v68;
        v72 = objc_msgSend_record(self, v69, v70);
        v75 = objc_msgSend_mutableEncryptedPSK(v72, v73, v74);
        v76 = *MEMORY[0x277CBC900];
        v79 = objc_msgSend_recordID(recordCopy, v77, v78);
        LOBYTE(v76) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v80, v75, v16, v76, v79);

        v30 &= v76;
      }

      else
      {
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v112 = v30;
        v115 = v16;
        v116 = recordCopy;
        selfCopy = self;
        v114 = objc_msgSend_record(self, v81, v82);
        objc_msgSend_oneTimeURLMetadatasByParticipantID(v114, v84, v85);
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v113 = v120 = 0u;
        v88 = objc_msgSend_allValues(v113, v86, v87);
        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v117, v123, 16);
        if (v90)
        {
          v93 = v90;
          v94 = *v118;
          v95 = *MEMORY[0x277CBC8F8];
          while (2)
          {
            for (i = 0; i != v93; ++i)
            {
              if (*v118 != v94)
              {
                objc_enumerationMutation(v88);
              }

              v97 = *(*(&v117 + 1) + 8 * i);
              v98 = objc_msgSend_encryptedOneTimeFullToken(v97, v91, v92);
              if (v98)
              {
                v99 = v98;
                v100 = objc_msgSend_encryptedOneTimeFullToken(v97, v91, v92);
                v103 = objc_msgSend_recordID(v116, v101, v102);
                v105 = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(selfCopy, v104, v100, v115, v95, v103);

                if ((v105 & 1) == 0)
                {

                  goto LABEL_34;
                }
              }
            }

            v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v117, v123, 16);
            if (v93)
            {
              continue;
            }

            break;
          }
        }

        if (v112)
        {
          v108 = v113;
          v110 = v114;
          if (objc_msgSend_count(v113, v106, v107))
          {
            objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v114, v109, v113);
          }

          v30 = 1;
          recordCopy = v116;
        }

        else
        {
LABEL_34:
          v30 = 0;
          recordCopy = v116;
          v108 = v113;
          v110 = v114;
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v60 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v61 = v60;
        v64 = objc_msgSend_recordID(recordCopy, v62, v63);
        *buf = 138412290;
        v122 = v64;
        _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Warn: Couldn't get a record PCS for record %@, but it has encrypted data set on it", buf, 0xCu);
      }

      v30 = 0;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Skipping wrapping of encrypted data because encryption is disabled", buf, 2u);
    }

    v54 = objc_msgSend_valueStore(recordCopy, v52, v53);
    objc_msgSend__pretendToWrapEncryptedDataForRecordValueStore_(self, v55, v54);

    v58 = objc_msgSend_encryptedValueStore(recordCopy, v56, v57);
    objc_msgSend__pretendToWrapEncryptedDataForRecordValueStore_(self, v59, v58);

    v30 = 1;
  }

  return v30 & 1;
}

- (void)savePCSDataToCache
{
  v4 = objc_msgSend_record(self, a2, v2);
  v7 = objc_msgSend_protectionData(v4, v5, v6);
  v10 = objc_msgSend_recordPCSData(self, v8, v9);
  objc_msgSend_setPcsData_(v10, v11, v7);

  v14 = objc_msgSend_record(self, v12, v13);
  v17 = objc_msgSend_protectionEtag(v14, v15, v16);
  v20 = objc_msgSend_recordPCSData(self, v18, v19);
  objc_msgSend_setEtag_(v20, v21, v17);

  v31 = objc_msgSend_operation(self, v22, v23);
  v26 = objc_msgSend_recordPCSData(self, v24, v25);
  v29 = objc_msgSend_recordID(self, v27, v28);
  objc_msgSend_setPCSData_forFetchedRecordID_(v31, v30, v26, v29);
}

- (void)setServerRecord:(id)record
{
  recordCopy = record;
  v7 = objc_msgSend_baseToken(recordCopy, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_baseToken(recordCopy, v8, v9);
    v13 = objc_msgSend_record(self, v11, v12);
    objc_msgSend_setBaseToken_(v13, v14, v10);
  }

  else
  {
    v15 = objc_msgSend_record(self, v8, v9);
    v18 = objc_msgSend_baseToken(v15, v16, v17);

    if (!v18)
    {
      goto LABEL_6;
    }

    v10 = objc_msgSend_record(self, v19, v20);
    v13 = objc_msgSend_baseToken(v10, v21, v22);
    objc_msgSend_setBaseToken_(recordCopy, v23, v13);
  }

LABEL_6:
  v24 = objc_msgSend_routingKey(recordCopy, v19, v20);

  if (v24)
  {
    v27 = objc_msgSend_routingKey(recordCopy, v25, v26);
    v30 = objc_msgSend_record(self, v28, v29);
    objc_msgSend_setRoutingKey_(v30, v31, v27);
  }

  else
  {
    v32 = objc_msgSend_record(self, v25, v26);
    v35 = objc_msgSend_routingKey(v32, v33, v34);

    if (!v35)
    {
      goto LABEL_11;
    }

    v27 = objc_msgSend_record(self, v36, v37);
    v30 = objc_msgSend_routingKey(v27, v38, v39);
    objc_msgSend_setRoutingKey_(recordCopy, v40, v30);
  }

LABEL_11:
  v41 = objc_msgSend_displayedHostname(recordCopy, v36, v37);

  if (v41)
  {
    v44 = objc_msgSend_displayedHostname(recordCopy, v42, v43);
    v47 = objc_msgSend_record(self, v45, v46);
    objc_msgSend_setDisplayedHostname_(v47, v48, v44);
  }

  else
  {
    v49 = objc_msgSend_record(self, v42, v43);
    v52 = objc_msgSend_displayedHostname(v49, v50, v51);

    if (!v52)
    {
      goto LABEL_16;
    }

    v44 = objc_msgSend_record(self, v53, v54);
    v47 = objc_msgSend_displayedHostname(v44, v55, v56);
    objc_msgSend_setDisplayedHostname_(recordCopy, v57, v47);
  }

LABEL_16:
  v58 = objc_msgSend_record(self, v53, v54);
  v61 = objc_msgSend_mutableEncryptedPSK(v58, v59, v60);

  if (v61)
  {
    v64 = objc_msgSend_record(self, v62, v63);
    v67 = objc_msgSend_mutableEncryptedPSK(v64, v65, v66);
    v70 = objc_msgSend_data(v67, v68, v69);

    if (!v70)
    {
      goto LABEL_22;
    }

    v71 = objc_alloc(MEMORY[0x277CBC2E8]);
    v74 = objc_msgSend_record(self, v72, v73);
    v77 = objc_msgSend_mutableEncryptedPSK(v74, v75, v76);
    v80 = objc_msgSend_data(v77, v78, v79);
    v82 = objc_msgSend_initWithData_(v71, v81, v80);
    objc_msgSend_setMutableEncryptedPSK_(recordCopy, v83, v82);
  }

  else
  {
    v84 = objc_msgSend_mutableEncryptedPSK(recordCopy, v62, v63);
    v87 = objc_msgSend_data(v84, v85, v86);

    if (!v87)
    {
      goto LABEL_22;
    }

    v88 = objc_alloc(MEMORY[0x277CBC2E8]);
    v74 = objc_msgSend_mutableEncryptedPSK(recordCopy, v89, v90);
    v77 = objc_msgSend_data(v74, v91, v92);
    v80 = objc_msgSend_initWithData_(v88, v93, v77);
    v82 = objc_msgSend_record(self, v94, v95);
    objc_msgSend_setMutableEncryptedPSK_(v82, v96, v80);
  }

LABEL_22:
  serverRecord = self->_serverRecord;
  self->_serverRecord = recordCopy;
}

- (void)_clearRecordProtectionDataForRecord
{
  v181 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_record(self, a2, v2);
  v151 = objc_msgSend_operation(self, v5, v6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v146 = v7;
    v149 = objc_msgSend_recordID(v4, v147, v148);
    *buf = 138412290;
    v180 = v149;
    _os_log_debug_impl(&dword_22506F000, v146, OS_LOG_TYPE_DEBUG, "Clearing protection data for record %@", buf, 0xCu);
  }

  v10 = objc_msgSend_recordID(v4, v8, v9);
  objc_msgSend_setPCSData_forFetchedRecordID_(v151, v11, 0, v10);

  v14 = objc_msgSend_recordID(v4, v12, v13);
  v17 = objc_msgSend_zoneID(v14, v15, v16);
  objc_msgSend_setPCSData_forFetchedZoneID_(v151, v18, 0, v17);

  v21 = objc_msgSend_share(v4, v19, v20);
  v24 = objc_msgSend_recordID(v21, v22, v23);
  objc_msgSend_setPCSData_forFetchedShareID_(v151, v25, 0, v24);

  v26 = objc_alloc(MEMORY[0x277CBC5D0]);
  v27 = *MEMORY[0x277CBC020];
  v30 = objc_msgSend_recordID(v4, v28, v29);
  v33 = objc_msgSend_zoneID(v30, v31, v32);
  v35 = objc_msgSend_initWithRecordName_zoneID_(v26, v34, v27, v33);

  v150 = v35;
  objc_msgSend_setPCSData_forFetchedShareID_(v151, v36, 0, v35);
  objc_msgSend_setProtectionData_(v4, v37, 0);
  objc_msgSend_setProtectionEtag_(v4, v38, 0);
  objc_msgSend_setPreviousProtectionEtag_(v4, v39, 0);
  objc_msgSend_setZoneProtectionEtag_(v4, v40, 0);
  objc_msgSend_setShareEtag_(v4, v41, 0);
  objc_msgSend_setRecordPCSData_(self, v42, 0);
  objc_msgSend_setRecordPCS_(v4, v43, 0);
  objc_msgSend_setChainParentPublicKeyID_(v4, v44, 0);
  objc_msgSend_setChainPrivateKey_(v4, v45, 0);
  objc_msgSend_setChainProtectionInfo_(v4, v46, 0);
  v49 = objc_msgSend_savePolicy(v151, v47, v48);
  v52 = objc_msgSend_valueStore(v4, v50, v51);
  v55 = v52;
  if (v49 == 2)
  {
    objc_msgSend_allKeys(v52, v53, v54);
  }

  else
  {
    objc_msgSend_changedKeys(v52, v53, v54);
  }
  v56 = ;

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v57 = v56;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v170, v178, 16);
  v153 = v4;
  if (v59)
  {
    v62 = v59;
    v63 = *v171;
    v152 = v57;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v171 != v63)
        {
          objc_enumerationMutation(v57);
        }

        v65 = *(*(&v170 + 1) + 8 * i);
        v66 = objc_msgSend_valueStore(v4, v60, v61);
        v68 = objc_msgSend_rawValueForKey_(v66, v67, v65);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = v68;
          objc_msgSend_setAssetKey_(v69, v70, 0);
          objc_msgSend_setWrappedAssetKey_(v69, v71, 0);
          objc_msgSend_setClearAssetKey_(v69, v72, 0);
          objc_msgSend_setReferenceSignature_(v69, v73, 0);
          objc_msgSend_setUploadReceipt_(v69, v74, 0);
          objc_msgSend_setUploadReceiptExpiration_(v69, v75, v76, 0.0);
          objc_msgSend_setUploaded_(v69, v77, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setEncryptedData_(v68, v78, 0);
            goto LABEL_39;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v69 = v68;
            v81 = objc_msgSend_firstObject(v69, v79, v80);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v85 = v69;
              v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v166, v177, 16);
              if (v87)
              {
                v89 = v87;
                v90 = *v167;
                do
                {
                  for (j = 0; j != v89; ++j)
                  {
                    if (*v167 != v90)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v92 = *(*(&v166 + 1) + 8 * j);
                    objc_msgSend_setAssetKey_(v92, v88, 0);
                    objc_msgSend_setWrappedAssetKey_(v92, v93, 0);
                    objc_msgSend_setClearAssetKey_(v92, v94, 0);
                    objc_msgSend_setReferenceSignature_(v92, v95, 0);
                    objc_msgSend_setUploadReceipt_(v92, v96, 0);
                    objc_msgSend_setUploadReceiptExpiration_(v92, v97, v98, 0.0);
                    objc_msgSend_setUploaded_(v92, v99, 0);
                  }

                  v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v166, v177, 16);
                }

                while (v89);
              }

LABEL_37:

              v57 = v152;
              v4 = v153;
              goto LABEL_38;
            }

            v102 = objc_msgSend_firstObject(v69, v83, v84);
            objc_opt_class();
            v103 = objc_opt_isKindOfClass();

            if (v103)
            {
              v164 = 0u;
              v165 = 0u;
              v162 = 0u;
              v163 = 0u;
              v104 = v69;
              v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v162, v176, 16);
              if (v106)
              {
                v108 = v106;
                v109 = *v163;
                do
                {
                  for (k = 0; k != v108; ++k)
                  {
                    if (*v163 != v109)
                    {
                      objc_enumerationMutation(v104);
                    }

                    objc_msgSend_setEncryptedData_(*(*(&v162 + 1) + 8 * k), v107, 0);
                  }

                  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v107, &v162, v176, 16);
                }

                while (v108);
              }

              goto LABEL_37;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_39;
            }

            v69 = v68;
            objc_msgSend_setRecordPCS_(v69, v100, 0);
            objc_msgSend_setAssets_(v69, v101, 0);
          }
        }

LABEL_38:

LABEL_39:
      }

      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v170, v178, 16);
    }

    while (v62);
  }

  v113 = objc_msgSend_savePolicy(v151, v111, v112);
  v116 = objc_msgSend_encryptedValueStore(v4, v114, v115);
  v119 = v116;
  if (v113 == 2)
  {
    objc_msgSend_allKeys(v116, v117, v118);
  }

  else
  {
    objc_msgSend_changedKeys(v116, v117, v118);
  }
  v120 = ;

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v121 = v120;
  v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, &v158, v175, 16);
  if (v123)
  {
    v126 = v123;
    v127 = *v159;
    do
    {
      for (m = 0; m != v126; ++m)
      {
        if (*v159 != v127)
        {
          objc_enumerationMutation(v121);
        }

        v129 = *(*(&v158 + 1) + 8 * m);
        v130 = objc_msgSend_encryptedValueStore(v4, v124, v125);
        v132 = objc_msgSend_rawValueForKey_(v130, v131, v129);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setEncryptedData_(v132, v133, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v134 = v132;
            v137 = objc_msgSend_firstObject(v134, v135, v136);
            objc_opt_class();
            v138 = objc_opt_isKindOfClass();

            if (v138)
            {
              v156 = 0u;
              v157 = 0u;
              v154 = 0u;
              v155 = 0u;
              v139 = v134;
              v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v140, &v154, v174, 16);
              if (v141)
              {
                v143 = v141;
                v144 = *v155;
                do
                {
                  for (n = 0; n != v143; ++n)
                  {
                    if (*v155 != v144)
                    {
                      objc_enumerationMutation(v139);
                    }

                    objc_msgSend_setEncryptedData_(*(*(&v154 + 1) + 8 * n), v142, 0);
                  }

                  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v142, &v154, v174, 16);
                }

                while (v143);
              }

              v4 = v153;
            }
          }
        }
      }

      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v124, &v158, v175, 16);
    }

    while (v126);
  }
}

- (CKDModifyRecordsOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end