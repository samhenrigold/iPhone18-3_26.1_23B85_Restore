@interface CKDFetchShareMetadataOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_currentUserIsOONForShareMetadata:(id)metadata;
- (BOOL)makeStateTransition;
- (CKDFetchShareMetadataOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_decodeProtectedFullToken:(id)token tokenMetadata:(id)metadata;
- (id)activityCreate;
- (void)_continueHandlingFetchedShareMetadata:(id)metadata shareURL:(id)l;
- (void)_continueSharePCSPrepForShareMetadata:(id)metadata shareURL:(id)l;
- (void)_decryptRootRecordsForShareURL:(id)l withMetadata:(id)metadata completionHandler:(id)handler;
- (void)_fetchShortTokenMetadata;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleTokenResolveWithLookupInfo:(id)info shareMetadata:(id)metadata responseCode:(id)code urlByShortTokenLookupInfos:(id)infos tokensToFetchByURL:(id)l;
- (void)_performCallbackForURL:(id)l withMetadata:(id)metadata error:(id)error;
- (void)_prepPPPCSDataForDugongShareMetadata:(id)metadata withInvitationToken:(id)token completionHandler:(id)handler;
- (void)_prepareShortTokens;
- (void)main;
@end

@implementation CKDFetchShareMetadataOperation

- (CKDFetchShareMetadataOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v39.receiver = self;
  v39.super_class = CKDFetchShareMetadataOperation;
  v9 = [(CKDOperation *)&v39 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_shareURLsToFetch(infoCopy, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    shareURLsToFetch = v9->_shareURLsToFetch;
    v9->_shareURLsToFetch = v13;

    v15 = objc_opt_new();
    shareTokenMetadatasToFetchByURL = v9->_shareTokenMetadatasToFetchByURL;
    v9->_shareTokenMetadatasToFetchByURL = v15;

    v19 = objc_msgSend_rootRecordDesiredKeys(infoCopy, v17, v18);

    if (v19)
    {
      v22 = MEMORY[0x277CBEB98];
      v23 = objc_msgSend_rootRecordDesiredKeys(infoCopy, v20, v21);
      v25 = objc_msgSend_setWithArray_(v22, v24, v23);
      rootRecordDesiredKeysSet = v9->_rootRecordDesiredKeysSet;
      v9->_rootRecordDesiredKeysSet = v25;
    }

    v9->_shouldFetchRootRecord = objc_msgSend_shouldFetchRootRecord(infoCopy, v20, v21);
    v9->_overwriteContainerPCSServiceIfManatee = objc_msgSend_overwriteContainerPCSServiceIfManatee(infoCopy, v27, v28);
    v9->_skipShareDecryption = objc_msgSend_skipShareDecryption(infoCopy, v29, v30);
    v33 = objc_msgSend_shareInvitationTokensByShareURL(infoCopy, v31, v32);
    v36 = objc_msgSend_copy(v33, v34, v35);
    shareInvitationTokensByShareURL = v9->_shareInvitationTokensByShareURL;
    v9->_shareInvitationTokensByShareURL = v36;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-share-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v12 = objc_msgSend_error(self, v10, v11);
      objc_msgSend_finishWithError_(self, v13, v12);

      break;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend__fetchShortTokenMetadata(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__prepareShortTokens(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Preparing Short Tokens";
  }

  else if (state == 3)
  {
    v5 = @"Retrieving Share Metadata";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchShareMetadataOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_performCallbackForURL:(id)l withMetadata:(id)metadata error:(id)error
{
  v108 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  errorCopy = error;
  if (!lCopy)
  {
    goto LABEL_29;
  }

  v14 = objc_msgSend_errorOnOON(self, v11, v12);
  if (!errorCopy && v14)
  {
    v17 = objc_msgSend_container(self, v15, v16);
    v20 = objc_msgSend_entitlements(v17, v18, v19);
    if ((objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v20, v21, v22) & 1) == 0 && objc_msgSend_participantPermission(metadataCopy, v23, v24) == 1)
    {
      v27 = objc_msgSend_outOfNetworkMatches(metadataCopy, v25, v26);
      if (objc_msgSend_count(v27, v28, v29))
      {
        v32 = objc_msgSend_share(metadataCopy, v30, v31);
        v35 = objc_msgSend_publicPermission(v32, v33, v34);

        if (v35 <= 1)
        {
          v101 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 8013, @"The user is not able to access this share");

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v36 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v107 = v101;
            _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Third party process requested OON share metadata, returning error %@", buf, 0xCu);
          }

          metadataCopy = 0;
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

LABEL_16:
    v101 = 0;
    goto LABEL_17;
  }

  v101 = errorCopy;
LABEL_17:
  v37 = objc_msgSend_container(self, v15, v16);
  v40 = objc_msgSend_entitlements(v37, v38, v39);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v40, v41, v42);
  v46 = objc_msgSend_share(metadataCopy, v44, v45);
  objc_msgSend_setSerializeProtectionData_(v46, v47, hasProtectionDataEntitlement);

  v50 = objc_msgSend_container(self, v48, v49);
  v53 = objc_msgSend_entitlements(v50, v51, v52);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v53, v54, v55);
  if (hasOutOfProcessUIEntitlement)
  {
    hasParticipantPIIEntitlement = 1;
  }

  else
  {
    v46 = objc_msgSend_container(self, v56, v57);
    v5 = objc_msgSend_entitlements(v46, v60, v61);
    hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v5, v62, v63);
  }

  v64 = objc_msgSend_share(metadataCopy, v56, v57);
  objc_msgSend_setSerializePersonalInfo_(v64, v65, hasParticipantPIIEntitlement);

  if ((hasOutOfProcessUIEntitlement & 1) == 0)
  {
  }

  v68 = objc_msgSend_container(self, v66, v67);
  shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v68, v69, v70);
  v74 = objc_msgSend_share(metadataCopy, v72, v73);
  objc_msgSend_setSerializeOwnerInfo_(v74, v75, shouldSerializeOwnerInfo);

  v78 = objc_msgSend_shareInvitationTokensByShareURL(self, v76, v77);
  v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, lCopy);

  if (metadataCopy && v80 && !v101)
  {
    objc_msgSend_setInvitationToken_(metadataCopy, v81, v80);
  }

  v83 = objc_msgSend_shareURLsToFetch(self, v81, v82);
  objc_sync_enter(v83);
  v86 = objc_msgSend_shareURLsToFetch(self, v84, v85);
  objc_msgSend_removeObject_(v86, v87, lCopy);

  objc_sync_exit(v83);
  v90 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v88, v89);
  objc_sync_enter(v90);
  v93 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v91, v92);
  objc_msgSend_removeObjectForKey_(v93, v94, lCopy);

  objc_sync_exit(v90);
  v97 = objc_msgSend_shareMetadataFetchedBlock(self, v95, v96);

  if (v97)
  {
    v100 = objc_msgSend_callbackQueue(self, v98, v99);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22522DEE0;
    block[3] = &unk_2785463D0;
    block[4] = self;
    v103 = lCopy;
    v104 = metadataCopy;
    v105 = v101;
    dispatch_async(v100, block);
  }

  errorCopy = v101;
LABEL_29:
}

- (id)_decodeProtectedFullToken:(id)token tokenMetadata:(id)metadata
{
  v84 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  metadataCopy = metadata;
  v9 = metadataCopy;
  v10 = MEMORY[0x277CBC880];
  if (tokenCopy)
  {
    v11 = MEMORY[0x277CBC680];
    v12 = objc_msgSend_shortSharingTokenData(metadataCopy, v7, v8);
    v14 = objc_msgSend_decryptFullToken_shortSharingTokenData_(v11, v13, tokenCopy, v12);

    if (!v14)
    {
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = tokenCopy;
        _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt the protected full token: %@", buf, 0xCu);
      }

      v31 = 0;
      goto LABEL_42;
    }

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_bytes(v14, v16, v17);
    v21 = objc_msgSend_length(v14, v19, v20);
    v23 = objc_msgSend_initWithBytes_length_encoding_(v15, v22, v18, v21, 4);
    v26 = objc_msgSend_length(v23, v24, v25);
    v27 = MEMORY[0x277CBC878];
    v28 = *MEMORY[0x277CBC878];
    v29 = *v10;
    if (v26 <= 4)
    {
      if (v29 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v23;
        _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Warn: Invalid full token length: %@", buf, 0xCu);
      }

      v31 = 0;
      goto LABEL_41;
    }

    if (v29 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v28);
    }

    v34 = MEMORY[0x277CBC830];
    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v79 = v23;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Got a full token of %@", buf, 0xCu);
    }

    v37 = MEMORY[0x277CBEA90];
    v38 = objc_msgSend_substringToIndex_(v23, v36, 4);
    v40 = objc_msgSend_CKDataFromBase64URLSafeString_(v37, v39, v38);

    if (v40)
    {
      v45 = *objc_msgSend_bytes(v40, v41, v42);
      switch(v45)
      {
        case 32:
          v59 = objc_msgSend_substringFromIndex_(v23, v43, 4);
          v62 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v61, v59);
          v63 = objc_alloc(MEMORY[0x277CBC260]);
          v65 = objc_msgSend_initWithData_(v63, v64, v62);
          v58 = objc_msgSend_sharingKeyBytes(v65, v66, v67);

          break;
        case 16:
          v59 = objc_msgSend_substringFromIndex_(v23, v43, 4);
          v58 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v60, v59);
          break;
        case 3:
          v46 = *(objc_msgSend_bytes(v40, v43, v44) + 1);
          v47 = __rev16(v46);
          if (objc_msgSend_length(v23, v48, v49) <= (v47 + 4))
          {
            if (*v10 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *v27);
            }

            v71 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v72 = v71;
              v75 = objc_msgSend_length(v23, v73, v74);
              *buf = 134218496;
              v79 = v75;
              v80 = 1024;
              v81 = 3;
              v82 = 2048;
              v83 = v47;
              _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Warn: Invalid token header, fullTokenLength:%lu, schemeByte:0x%0x, locatorLength:%lu", buf, 0x1Cu);
            }

            v31 = 0;
            goto LABEL_40;
          }

          if (v46)
          {
            v51 = v47 + 4;
            v52 = objc_msgSend_substringWithRange_(v23, v50, 4, v47);
            v54 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v53, v52);

            objc_msgSend_substringFromIndex_(v23, v55, v51);
          }

          else
          {
            v54 = 0;
            objc_msgSend_substringFromIndex_(v23, v50, v47 + 4);
          }
          v76 = ;
          v58 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v77, v76);

LABEL_39:
          objc_msgSend_setPrivateTokenData_(v9, v57, v58);
          objc_msgSend_setPublicTokenData_(v9, v68, v54);
          v31 = v9;

LABEL_40:
LABEL_41:

LABEL_42:
          goto LABEL_43;
        default:
          if (*v10 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v27);
          }

          v70 = *v34;
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v79) = v45;
            _os_log_impl(&dword_22506F000, v70, OS_LOG_TYPE_INFO, "Warn: Unknown scheme byte: 0x%0x", buf, 8u);
          }

          goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v27);
    }

    v56 = *v34;
    if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v79 = v23;
      _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "Couldn't decode full token header: %@", buf, 0xCu);
    }

LABEL_34:
    v58 = 0;
LABEL_38:
    v54 = 0;
    goto LABEL_39;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v32 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: No protected full token.", buf, 2u);
  }

  v31 = 0;
LABEL_43:

  return v31;
}

- (void)_fetchShortTokenMetadata
{
  v101 = *MEMORY[0x277D85DE8];
  v82 = objc_opt_new();
  v5 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v3, v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  if (objc_msgSend_count(v8, v9, v10))
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v13 = objc_msgSend_allKeys(v8, v11, v12);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v93, v100, 16);
    if (v16)
    {
      v17 = *v94;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v94 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v93 + 1) + 8 * i);
          v20 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v19);
          v21 = objc_opt_new();
          v24 = objc_msgSend_routingKey(v20, v22, v23);
          objc_msgSend_setRoutingKey_(v21, v25, v24);

          v28 = objc_msgSend_shortSharingTokenHashData(v20, v26, v27);
          objc_msgSend_setShortSharingTokenHashData_(v21, v29, v28);

          RootRecord = objc_msgSend_shouldFetchRootRecord(self, v30, v31);
          objc_msgSend_setShouldFetchRootRecord_(v21, v33, RootRecord);
          v36 = objc_msgSend_forceDSRefetch(v20, v34, v35);
          objc_msgSend_setForceDSRefetch_(v21, v37, v36);
          v40 = objc_msgSend_participantID(v20, v38, v39);

          if (v40)
          {
            v43 = objc_msgSend_participantID(v20, v41, v42);
            objc_msgSend_setParticipantID_(v21, v44, v43);
          }

          objc_msgSend_setObject_forKeyedSubscript_(v82, v41, v19, v21);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v93, v100, 16);
      }

      while (v16);
    }

    v47 = objc_msgSend_stateTransitionGroup(self, v45, v46);
    dispatch_group_enter(v47);

    v48 = [CKDRecordResolveTokenURLRequest alloc];
    v51 = objc_msgSend_allKeys(v82, v49, v50);
    v53 = objc_msgSend_initWithOperation_shortTokenLookupInfos_(v48, v52, self, v51);

    v56 = objc_msgSend_shouldFetchRootRecord(self, v54, v55);
    objc_msgSend_setShouldFetchRootRecord_(v53, v57, v56);
    v58 = MEMORY[0x277CBEB98];
    v99 = *MEMORY[0x277CBC030];
    v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, &v99, 1);
    v62 = objc_msgSend_setWithArray_(v58, v61, v60);

    if (objc_msgSend_shouldFetchRootRecord(self, v63, v64))
    {
      v67 = objc_msgSend_rootRecordDesiredKeysSet(self, v65, v66);

      v62 = v67;
    }

    objc_msgSend_setRootRecordDesiredKeySet_(v53, v65, v62);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v53);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_22522EB8C;
    v87[3] = &unk_27854A8F8;
    objc_copyWeak(&v90, &location);
    v88 = v82;
    v68 = v8;
    v89 = v68;
    objc_msgSend_setTokenResolveBlock_(v53, v69, v87);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_22522EC1C;
    v83[3] = &unk_27854A920;
    objc_copyWeak(&v85, &location);
    objc_copyWeak(&v86, &from);
    v83[4] = self;
    v70 = v68;
    v84 = v70;
    objc_msgSend_setCompletionBlock_(v53, v71, v83);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v75 = objc_msgSend_count(v70, v73, v74);
      *buf = 134217984;
      v98 = v75;
      _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Fetching short share token metadata from the server for %ld URLs", buf, 0xCu);
    }

    objc_msgSend_setRequest_(self, v76, v53);
    v79 = objc_msgSend_container(self, v77, v78);
    objc_msgSend_performRequest_(v79, v80, v53);

    objc_destroyWeak(&v86);
    objc_destroyWeak(&v85);

    objc_destroyWeak(&v90);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v81 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v81, OS_LOG_TYPE_INFO, "We have no tokens to fetch short token metadata for. Giving up now", buf, 2u);
    }
  }
}

- (void)_handleTokenResolveWithLookupInfo:(id)info shareMetadata:(id)metadata responseCode:(id)code urlByShortTokenLookupInfos:(id)infos tokensToFetchByURL:(id)l
{
  v125 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  metadataCopy = metadata;
  codeCopy = code;
  infosCopy = infos;
  v107 = infoCopy;
  lCopy = l;
  v106 = infosCopy;
  v18 = objc_msgSend_objectForKeyedSubscript_(infosCopy, v15, infoCopy);
  if (!metadataCopy || !objc_msgSend_accessRequestsEnabled(metadataCopy, v16, v17))
  {
    goto LABEL_6;
  }

  v21 = objc_msgSend_share(metadataCopy, v16, v17);
  if (v21 || (objc_msgSend_outOfNetworkMatches(metadataCopy, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_count(v21, v22, v23)))
  {

    goto LABEL_6;
  }

  v102 = objc_msgSend_callingParticipant(metadataCopy, v24, v25);

  if (v102)
  {
LABEL_6:
    v26 = objc_msgSend_share(metadataCopy, v16, v17);
    objc_msgSend_setMutableURL_(v26, v27, v18);

    v30 = objc_msgSend_host(v18, v28, v29);
    v33 = objc_msgSend_share(metadataCopy, v31, v32);
    objc_msgSend_setDisplayedHostname_(v33, v34, v30);

    v38 = objc_msgSend_objectForKeyedSubscript_(lCopy, v35, v18);
    if (!v38)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v45 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v122 = v18;
        v123 = 2112;
        v124 = infoCopy;
        _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Warn: Couldn't get token metadata for URL %@ and token lookup info %@", buf, 0x16u);
      }

      v47 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v46, *MEMORY[0x277CBC120], 1000, @"Internal error when fetching short token metadata for %@", v18);
      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v48, v18, 0, v47);

      goto LABEL_36;
    }

    if (objc_msgSend_code(codeCopy, v36, v37) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v122 = codeCopy;
        v123 = 2112;
        v124 = v18;
        _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Error %@ when fetching short token metadata for %@", buf, 0x16u);
      }

      v50 = MEMORY[0x277CBC560];
      v51 = sub_2253962A4(codeCopy);
      v54 = objc_msgSend_request(self, v52, v53);
      v55 = sub_225395734(v54, codeCopy);
      v58 = objc_msgSend_error(codeCopy, v56, v57);
      v61 = objc_msgSend_errorDescription(v58, v59, v60);
      v63 = objc_msgSend_errorWithDomain_code_userInfo_format_(v50, v62, *MEMORY[0x277CBC120], v51, v55, @"Error %@ when fetching short token metadata for %@: %@", codeCopy, v18, v61);

      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v64, v18, 0, v63);
      goto LABEL_36;
    }

    if (objc_msgSend_skipShareDecryption(self, v39, v40))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v122 = v18;
        _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Skipping share decryption after getting share metadata for shareURL %@", buf, 0xCu);
      }

      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v44, v18, metadataCopy, 0);
      goto LABEL_36;
    }

    v65 = objc_msgSend_protectedFullToken(metadataCopy, v41, v42);
    v67 = objc_msgSend__decodeProtectedFullToken_tokenMetadata_(self, v66, v65, v38);

    if (!v67)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v98 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v98, OS_LOG_TYPE_INFO, "Warn: Couldn't decode the protected full token", buf, 2u);
      }

      v100 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, *MEMORY[0x277CBC120], 5004, @"Couldn't decode the protected full token for %@", v18);
      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v101, v18, 0, v100);

      goto LABEL_36;
    }

    v70 = objc_msgSend_shareInvitationTokensByShareURL(self, v68, v69);
    v72 = objc_msgSend_objectForKeyedSubscript_(v70, v71, v18);

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22522F754;
    aBlock[3] = &unk_27854A970;
    objc_copyWeak(&v120, buf);
    v73 = metadataCopy;
    v116 = v73;
    v117 = v38;
    v74 = v72;
    v118 = v74;
    v105 = v18;
    v119 = v105;
    v75 = _Block_copy(aBlock);
    v78 = objc_msgSend_container(self, v76, v77);
    v81 = objc_msgSend_options(v78, v79, v80);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v81, v82, v83))
    {
      v86 = objc_msgSend_callingParticipant(v73, v84, v85);
      v87 = v86 == 0;

      if (v87)
      {
        v90 = objc_msgSend_stateTransitionGroup(self, v88, v89);
        dispatch_group_enter(v90);

        v93 = objc_msgSend_container(self, v91, v92);
        v96 = objc_msgSend_pcsManager(v93, v94, v95);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_22522FE38;
        v110[3] = &unk_27854A998;
        objc_copyWeak(&v114, buf);
        v111 = v105;
        v112 = v73;
        v113 = v75;
        objc_msgSend_findSelfParticipantOnShareMetadata_invitationToken_completionHandler_(v96, v97, v112, v74, v110);

        objc_destroyWeak(&v114);
LABEL_35:

        objc_destroyWeak(&v120);
        objc_destroyWeak(buf);

LABEL_36:
        goto LABEL_37;
      }
    }

    else
    {
    }

    v75[2](v75);
    goto LABEL_35;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v103 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v122 = v18;
    _os_log_debug_impl(&dword_22506F000, v103, OS_LOG_TYPE_DEBUG, "Detected minimal resolve (request access). Returning empty share metadata for %@", buf, 0xCu);
  }

  objc_msgSend__performCallbackForURL_withMetadata_error_(self, v104, v18, metadataCopy, 0);
LABEL_37:
}

- (void)_continueSharePCSPrepForShareMetadata:(id)metadata shareURL:(id)l
{
  v65 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  lCopy = l;
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_share(metadataCopy, v9, v10);
    v14 = objc_msgSend_recordID(v11, v12, v13);
    v17 = objc_msgSend_container(self, v15, v16);
    *buf = 138412546;
    v62 = v14;
    v63 = 2112;
    v64 = v17;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Attempting to prep PCS data for share %@ with container %@", buf, 0x16u);
  }

  v20 = objc_msgSend_stateTransitionGroup(self, v18, v19);
  dispatch_group_enter(v20);

  v23 = objc_msgSend_participantRole(metadataCopy, v21, v22);
  v26 = 2;
  if (v23 != 1)
  {
    v26 = 3;
  }

  v53 = v26;
  v55 = objc_msgSend_share(metadataCopy, v24, v25);
  v54 = objc_msgSend_container(self, v27, v28);
  v31 = objc_msgSend_privateToken(metadataCopy, v29, v30);
  v34 = objc_msgSend_callingParticipant(metadataCopy, v32, v33);
  v37 = objc_msgSend_userIdentity(v34, v35, v36);
  v40 = objc_msgSend_outOfNetworkPrivateKey(v37, v38, v39);
  v43 = objc_msgSend_sharedZone(metadataCopy, v41, v42);
  v46 = objc_msgSend_topmostParentOperation(self, v44, v45);
  v49 = objc_msgSend_operationID(v46, v47, v48);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_225230300;
  v56[3] = &unk_27854A9C0;
  objc_copyWeak(&v59, &location);
  v50 = metadataCopy;
  v57 = v50;
  v51 = lCopy;
  v58 = v51;
  objc_msgSend__prepPCSDataWithContainer_databaseScope_publicSharingKey_oonPrivateKey_removeServerSpecifiedKeys_sharedRecordZone_requestorOperationID_completionHandler_(v55, v52, v54, v53, v31, v40, 0, v43, v49, v56);

  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);
}

- (void)_prepPPPCSDataForDugongShareMetadata:(id)metadata withInvitationToken:(id)token completionHandler:(id)handler
{
  metadataCopy = metadata;
  tokenCopy = token;
  handlerCopy = handler;
  if (tokenCopy || (v30 = MEMORY[0x277CBC560], v31 = *MEMORY[0x277CBC120], objc_msgSend_share(metadataCopy, v9, v10), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_URL(v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_errorWithDomain_code_format_(v30, v36, v31, 1017, @"No sharing invitation token provided for device-to-device encrypted share %@", v35), v29 = objc_claimAutoreleasedReturnValue(), v35, v32, !v29))
  {
    v12 = objc_msgSend_share(metadataCopy, v9, v10);
    v15 = objc_msgSend_share(metadataCopy, v13, v14);
    v18 = objc_msgSend_modificationDate(v15, v16, v17);
    v21 = objc_msgSend_container(self, v19, v20);
    v24 = objc_msgSend_topmostParentOperation(self, v22, v23);
    v27 = objc_msgSend_operationID(v24, v25, v26);
    objc_msgSend__ingestAndExportPPPCSFromShareInvitationToken_shareModificationDate_container_requestorOperationID_completionHandler_(v12, v28, tokenCopy, v18, v21, v27, handlerCopy);

    v29 = 0;
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v29);
  }
}

- (void)_continueHandlingFetchedShareMetadata:(id)metadata shareURL:(id)l
{
  v89 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  lCopy = l;
  v10 = objc_msgSend_share(metadataCopy, v8, v9);
  if (objc_msgSend_publicPCS(v10, v11, v12))
  {
    v15 = objc_msgSend_publicPCS(v10, v13, v14);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    objc_msgSend__encryptDataWithPCSBlob_pcsManager_(metadataCopy, v22, v15, v21);

    v25 = objc_msgSend_container(self, v23, v24);
    v28 = objc_msgSend_pcsManager(v25, v26, v27);
    v31 = objc_msgSend_publicPCS(v10, v29, v30);
    v82 = 0;
    v33 = objc_msgSend_sharingIdentityDataFromPCS_error_(v28, v32, v31, &v82);
    v34 = v82;

    v35 = objc_alloc(MEMORY[0x277CBC2E8]);
    v37 = objc_msgSend_initWithData_(v35, v36, v33);
    objc_msgSend_setMutableEncryptedPSK_(v10, v38, v37);

    v39 = *MEMORY[0x277CBC878];
    if (v34)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v39);
      }

      v40 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v41 = v40;
        v44 = objc_msgSend_recordID(v10, v42, v43);
        *buf = 138412546;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v39);
      }

      v45 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v46 = v45;
        v49 = objc_msgSend_recordID(v10, v47, v48);
        v52 = objc_msgSend_mutableEncryptedPSK(v10, v50, v51);
        v55 = objc_msgSend_data(v52, v53, v54);
        *buf = 138412546;
        *&buf[4] = v49;
        *&buf[12] = 2112;
        *&buf[14] = v55;
        _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v86 = sub_2250740B0;
  v87 = sub_2250735E4;
  v88 = 0;
  v56 = dispatch_group_create();
  if (objc_msgSend_containsAssetValues(v10, v57, v58))
  {
    hasEncryptedData = 1;
  }

  else
  {
    hasEncryptedData = objc_msgSend_hasEncryptedData(v10, v59, v60);
  }

  if (!objc_msgSend_shouldFetchRootRecord(self, v59, v60))
  {
    if (!hasEncryptedData)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v64 = objc_msgSend_rootRecord(metadataCopy, v62, v63);
  if (objc_msgSend_containsAssetValues(v64, v65, v66))
  {
    v69 = 1;
    if (v64)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v69 = objc_msgSend_hasEncryptedData(v64, v67, v68);
    if (v64)
    {
      goto LABEL_26;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v70 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v83 = 138412290;
    v84 = metadataCopy;
    _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "No root record received when fetching share metadata %@", v83, 0xCu);
  }

LABEL_26:

  if ((hasEncryptedData | v69))
  {
LABEL_27:
    dispatch_group_enter(v56);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_225230C24;
    v79[3] = &unk_278548040;
    v81 = buf;
    v80 = v56;
    objc_msgSend__decryptRootRecordsForShareURL_withMetadata_completionHandler_(self, v71, lCopy, metadataCopy, v79);
  }

LABEL_28:
  v72 = objc_msgSend_callbackQueue(self, v62, v63);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225230C90;
  block[3] = &unk_2785492F0;
  block[4] = self;
  v76 = lCopy;
  v77 = metadataCopy;
  v78 = buf;
  v73 = metadataCopy;
  v74 = lCopy;
  dispatch_group_notify(v56, v72, block);

  _Block_object_dispose(buf, 8);
}

- (void)_decryptRootRecordsForShareURL:(id)l withMetadata:(id)metadata completionHandler:(id)handler
{
  v126 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  handlerCopy = handler;
  v112 = objc_msgSend_container(self, v9, v10);
  v111 = objc_msgSend_processScopedClientProxy(v112, v11, v12);
  v109 = objc_msgSend_logicalDeviceScopedClientProxy(v112, v13, v14);
  v110 = objc_opt_new();
  v17 = objc_msgSend_share(metadataCopy, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_share(metadataCopy, v18, v19);
    objc_msgSend_addObject_(v110, v21, v20);
  }

  v22 = objc_msgSend_rootRecord(metadataCopy, v18, v19);

  if (v22)
  {
    v25 = objc_msgSend_rootRecord(metadataCopy, v23, v24);
    objc_msgSend_addObject_(v110, v26, v25);
  }

  v27 = objc_opt_new();
  if (objc_msgSend_participantRole(metadataCopy, v28, v29) == 1)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  v103 = v31;
  objc_msgSend_setDatabaseScope_(v27, v30, v31);
  objc_msgSend_setShouldFetchAssetContent_(v27, v32, 1);
  v35 = objc_msgSend_rootRecordDesiredKeysSet(self, v33, v34);
  v38 = objc_msgSend_allObjects(v35, v36, v37);
  objc_msgSend_setDesiredKeys_(v27, v39, v38);

  v40 = [CKDAppContainerTuple alloc];
  v43 = objc_msgSend_applicationID(v112, v41, v42);
  v46 = objc_msgSend_containerID(metadataCopy, v44, v45);
  v49 = objc_msgSend_personaID(v112, v47, v48);
  v108 = objc_msgSend_initWithApplicationID_containerID_personaID_(v40, v50, v43, v46, v49);

  v53 = objc_msgSend_entitlements(v112, v51, v52);
  v56 = objc_msgSend_options(v112, v54, v55);
  v59 = objc_msgSend_clientConnection(v111, v57, v58);
  v62 = objc_msgSend_sharedContainers(v59, v60, v61);
  v64 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v63, v108, v111, v109, v53, v56, v62);

  v67 = objc_msgSend_stateTransitionGroup(self, v65, v66);
  dispatch_group_enter(v67);

  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v68 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v71 = objc_msgSend_share(metadataCopy, v69, v70);
    v74 = objc_msgSend_recordID(v71, v72, v73);
    *buf = 138412546;
    v123 = v74;
    v124 = 2112;
    v125 = v64;
    _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Attempting to prep PCS data for share %@ with container %@", buf, 0x16u);
  }

  v107 = objc_msgSend_share(metadataCopy, v75, v76);
  v106 = objc_msgSend_privateToken(metadataCopy, v77, v78);
  v81 = objc_msgSend_callingParticipant(metadataCopy, v79, v80);
  v84 = objc_msgSend_userIdentity(v81, v82, v83);
  v87 = objc_msgSend_outOfNetworkPrivateKey(v84, v85, v86);
  v90 = objc_msgSend_sharedZone(metadataCopy, v88, v89);
  v93 = objc_msgSend_topmostParentOperation(self, v91, v92);
  v96 = objc_msgSend_operationID(v93, v94, v95);
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = sub_225231218;
  v113[3] = &unk_27854AA60;
  objc_copyWeak(&v120, &location);
  v101 = metadataCopy;
  v114 = v101;
  v97 = v64;
  v115 = v97;
  v105 = handlerCopy;
  v119 = v105;
  v98 = v27;
  v116 = v98;
  v99 = v110;
  v117 = v99;
  selfCopy = self;
  objc_msgSend__prepPCSDataWithContainer_databaseScope_publicSharingKey_oonPrivateKey_removeServerSpecifiedKeys_sharedRecordZone_requestorOperationID_completionHandler_(v107, v100, v97, v103, v106, v87, 0, v90, v96, v113);

  objc_destroyWeak(&v120);
  objc_destroyWeak(&location);
}

- (BOOL)_currentUserIsOONForShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = objc_msgSend_callingParticipant(metadataCopy, v4, v5);
  v9 = objc_msgSend_userIdentity(v6, v7, v8);
  if (objc_msgSend_hasiCloudAccount(v9, v10, v11))
  {
    v14 = objc_msgSend_callingParticipant(metadataCopy, v12, v13);
    v17 = objc_msgSend_userIdentity(v14, v15, v16);
    v22 = objc_msgSend_outOfNetworkPrivateKey(v17, v18, v19);
    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = objc_msgSend_share(metadataCopy, v20, v21);
      v29 = objc_msgSend_currentUserParticipant(v24, v25, v26);
      if (v29)
      {
        v23 = 0;
      }

      else
      {
        v30 = objc_msgSend_outOfNetworkMatches(metadataCopy, v27, v28);
        v23 = objc_msgSend_count(v30, v31, v32) != 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_prepareShortTokens
{
  selfCopy = self;
  v106 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareURLsToFetch(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v10 = objc_msgSend_shareURLsToFetch(selfCopy, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v95, v105, 16);
    if (!v15)
    {
      goto LABEL_48;
    }

    v16 = v15;
    v17 = MEMORY[0x277CBC880];
    v92 = *v96;
    v91 = *MEMORY[0x277CBC120];
    v88 = v13;
    v89 = selfCopy;
    while (1)
    {
      v18 = 0;
      v90 = v16;
      do
      {
        if (*v96 != v92)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v95 + 1) + 8 * v18);
        if (*v17 != -1)
        {
          dispatch_once(v17, *MEMORY[0x277CBC878]);
        }

        v20 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v100 = v19;
          _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Extracting short token from URL %@", buf, 0xCu);
        }

        v21 = objc_alloc(MEMORY[0x277CCACE0]);
        v23 = objc_msgSend_initWithURL_resolvingAgainstBaseURL_(v21, v22, v19, 0);
        v26 = objc_msgSend_path(v23, v24, v25);
        v29 = objc_msgSend_lastPathComponent(v26, v27, v28);

        if (objc_msgSend_length(v29, v30, v31) > 3)
        {
          v37 = v17;
          v38 = objc_msgSend_substringWithRange_(v29, v32, 0, 3);
          v93 = objc_msgSend_substringFromIndex_(v29, v39, 3);
          v41 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v40, v93);
          v94 = v38;
          if (v41)
          {
            v44 = v41;
            if (objc_msgSend_length(v41, v42, v43) == 16)
            {
              v45 = objc_opt_new();
              objc_msgSend_setRoutingKey_(v45, v46, v38);
              objc_msgSend_setShortSharingTokenData_(v45, v47, v44);
              v50 = objc_msgSend_forceDSRefetch(selfCopy, v48, v49);
              objc_msgSend_setForceDSRefetch_(v45, v51, v50);
              v54 = objc_msgSend_shareInvitationTokensByShareURL(selfCopy, v52, v53);
              v56 = objc_msgSend_objectForKeyedSubscript_(v54, v55, v19);

              if (v56)
              {
                if (*v37 != -1)
                {
                  dispatch_once(v37, *MEMORY[0x277CBC878]);
                }

                v59 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  v60 = v59;
                  v63 = objc_msgSend_operationID(selfCopy, v61, v62);
                  *buf = 138543618;
                  v100 = v56;
                  v101 = 2114;
                  v102 = v63;
                  _os_log_impl(&dword_22506F000, v60, OS_LOG_TYPE_INFO, "Received invitation token %{public}@ for CKFetchShareMetadatOperation %{public}@", buf, 0x16u);
                }
              }

              v64 = objc_msgSend_participantID(v56, v57, v58);
              v67 = objc_msgSend_length(v64, v65, v66);

              if (v67)
              {
                if (*v37 != -1)
                {
                  dispatch_once(v37, *MEMORY[0x277CBC878]);
                }

                v68 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v100 = v56;
                  _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Found participantID on invitationToken %@", buf, 0xCu);
                }

                v71 = objc_msgSend_participantID(v56, v69, v70);
                objc_msgSend_setParticipantID_(v45, v72, v71);
              }

              if (*v37 != -1)
              {
                dispatch_once(v37, *MEMORY[0x277CBC878]);
              }

              v73 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v100 = v93;
                v101 = 2114;
                v102 = v94;
                v103 = 2112;
                v104 = v19;
                _os_log_impl(&dword_22506F000, v73, OS_LOG_TYPE_INFO, "Extracted short token %@ and routing key %{public}@ from URL %@", buf, 0x20u);
              }

              v76 = objc_msgSend_shareTokenMetadatasToFetchByURL(v89, v74, v75);
              objc_msgSend_setObject_forKeyedSubscript_(v76, v77, v45, v19);

              selfCopy = v89;
              v35 = 0;
              v13 = v88;
              v17 = v37;
              goto LABEL_45;
            }

            if (*v37 != -1)
            {
              dispatch_once(v37, *MEMORY[0x277CBC878]);
            }

            v80 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v83 = v80;
              v86 = objc_msgSend_length(v44, v84, v85);
              *buf = 134218242;
              v100 = v86;
              v101 = 2112;
              v102 = v19;
              _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Invalid shortSharingTokenData length(%lu) for the URL %@", buf, 0x16u);
            }

            v17 = v37;
          }

          else
          {
            if (*v17 != -1)
            {
              dispatch_once(v17, *MEMORY[0x277CBC878]);
            }

            v78 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v100 = v19;
              _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, "Warn: Couldn't decode the short sharing token for the URL %@", buf, 0xCu);
            }
          }

          v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, v91, 1017, @"Couldn't parse iCloud Share URL %@", v19);
          objc_msgSend__performCallbackForURL_withMetadata_error_(selfCopy, v81, v19, 0, v35);
LABEL_45:

          v16 = v90;
          goto LABEL_46;
        }

        if (*v17 != -1)
        {
          dispatch_once(v17, *MEMORY[0x277CBC878]);
        }

        v33 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v100 = v19;
          _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Warn: Couldn't get a short token for the URL %@", buf, 0xCu);
        }

        v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, v91, 1017, @"Couldn't parse iCloud Share URL %@", v19);
        objc_msgSend__performCallbackForURL_withMetadata_error_(selfCopy, v36, v19, 0, v35);
LABEL_46:

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v82, &v95, v105, 16);
      if (!v16)
      {
LABEL_48:

        return;
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v87 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "We have no share URLs to fetch. Giving up.", buf, 2u);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setShareMetadataFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareMetadataOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = v3;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v14, 1, 0, 0);
    v18 = objc_msgSend_CKPropertiesStyleString(v15, v16, v17);
    v20 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v19, 0, 1, 0);
    v23 = objc_msgSend_CKPropertiesStyleString(v20, v21, v22);
    v24 = 138544130;
    v25 = v13;
    v26 = 2048;
    selfCopy = self;
    v28 = 2114;
    v29 = v18;
    v30 = 2112;
    v31 = v23;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Starting fetch share metadata operation <%{public}@: %p; %{public}@, %@>", &v24, 0x2Au);
  }

  v6 = objc_msgSend_shareURLsToFetch(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;

  objc_msgSend_makeStateTransition_(self, v10, v9);
}

@end