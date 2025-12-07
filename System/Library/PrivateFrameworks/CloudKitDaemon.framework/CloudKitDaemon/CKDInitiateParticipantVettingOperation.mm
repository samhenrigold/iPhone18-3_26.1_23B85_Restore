@interface CKDInitiateParticipantVettingOperation
- (CKDInitiateParticipantVettingOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)s forShareWithURL:(id)l error:(id *)error;
- (id)_encryptedKeyDataWithShareMetadata:(id)metadata error:(id *)error;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleVettingInitiationProgress:(id)progress;
- (void)_sendRequest:(BOOL)request;
- (void)main;
@end

@implementation CKDInitiateParticipantVettingOperation

- (CKDInitiateParticipantVettingOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = CKDInitiateParticipantVettingOperation;
  v9 = [(CKDOperation *)&v21 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_shareMetadata(infoCopy, v7, v8);
    shareMetadata = v9->_shareMetadata;
    v9->_shareMetadata = v10;

    v14 = objc_msgSend_participantID(infoCopy, v12, v13);
    participantID = v9->_participantID;
    v9->_participantID = v14;

    v18 = objc_msgSend_address(infoCopy, v16, v17);
    address = v9->_address;
    v9->_address = v18;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/vetting-initiate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleVettingInitiationProgress:(id)progress
{
  progressCopy = progress;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2252354A4;
  v13 = &unk_278545898;
  selfCopy = self;
  v15 = progressCopy;
  v8 = progressCopy;
  dispatch_async(v7, &v10);

  objc_msgSend_setError_(self, v9, v8, v10, v11, v12, v13, selfCopy);
}

- (id)_encryptedKeyDataWithShareMetadata:(id)metadata error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = v9;
    v15 = objc_msgSend_share(metadataCopy, v13, v14);
    v18 = objc_msgSend_recordID(v15, v16, v17);
    v31 = 138412290;
    v32 = v18;
    _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Preparing encrypted key for vetting: adding ourselves to the public PCS for share %@", &v31, 0xCu);
  }

  v19 = objc_msgSend_share(metadataCopy, v10, v11);
  v22 = objc_msgSend_URL(v19, v20, v21);
  v24 = objc_msgSend__addSelfIdentityToShareMetadataPublicPCS_forShareWithURL_error_(self, v23, metadataCopy, v22, error);

  if (*error)
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v30 = *error;
      v31 = 138412290;
      v32 = v30;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Unable to generate encrypted key to initiate share vetting: %@", &v31, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_publicPCSData(v24, v25, v26);
  }

  return v28;
}

- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)s forShareWithURL:(id)l error:(id *)error
{
  v109 = *MEMORY[0x277D85DE8];
  sCopy = s;
  lCopy = l;
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_share(sCopy, v13, v14);
  v18 = objc_msgSend_publicProtectionData(v15, v16, v17);
  v21 = MEMORY[0x277CBC880];
  v22 = MEMORY[0x277CBC830];
  if (!v18)
  {

    goto LABEL_17;
  }

  v23 = v18;
  v24 = objc_msgSend_privateToken(sCopy, v19, v20);

  if (!v24)
  {
LABEL_17:
    if (*v21 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v59 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = lCopy;
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Share metadata for the share at URL %@ doesn't have protection data on it, skipping", buf, 0xCu);
    }

    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v60, *MEMORY[0x277CBC120], 5001, @"Share metadata for the share at URL %@ doesn't have protection data on it", lCopy);
    goto LABEL_34;
  }

  if (*v21 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v25 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
  {
    v28 = v25;
    v31 = objc_msgSend_privateToken(sCopy, v29, v30);
    *buf = 138412546;
    v106 = lCopy;
    v107 = 2112;
    v108 = v31;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Preparing public PCS metadata for share at URL %@ using public sharing token %@", buf, 0x16u);
  }

  v32 = objc_msgSend_pcsManager(v12, v26, v27);
  v35 = objc_msgSend_privateToken(sCopy, v33, v34);
  v104 = 0;
  v37 = objc_msgSend_createSharingIdentityFromData_error_(v32, v36, v35, &v104);
  v38 = v104;

  if (!v37 || v38)
  {
    if (*v21 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v83 = v61;
      v86 = objc_msgSend_privateToken(sCopy, v84, v85);
      *buf = 138412546;
      v106 = v86;
      v107 = 2112;
      v108 = v38;
      _os_log_error_impl(&dword_22506F000, v83, OS_LOG_TYPE_ERROR, "Couldn't create a sharing public identity from %@: %@", buf, 0x16u);

      if (!v37)
      {
        goto LABEL_34;
      }
    }

    else if (!v37)
    {
LABEL_34:
      v65 = 0;
      v66 = 0;
      goto LABEL_35;
    }

    v62 = v37;
LABEL_33:
    CFRelease(v62);
    goto LABEL_34;
  }

  v41 = objc_msgSend_pcsManager(v12, v39, v40);
  v44 = objc_msgSend_share(sCopy, v42, v43);
  v47 = objc_msgSend_publicProtectionData(v44, v45, v46);
  v103 = 0;
  v49 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v41, v48, v47, v37, &v103);
  v38 = v103;

  if (!v49 || v38)
  {
    v63 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v64 = *v63;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v87 = v64;
      v90 = objc_msgSend_share(sCopy, v88, v89);
      v93 = objc_msgSend_publicProtectionData(v90, v91, v92);
      *buf = 138543618;
      v106 = v93;
      v107 = 2112;
      v108 = v37;
      _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS from the PCS data %{public}@ for identity %@", buf, 0x16u);
    }

    CFRelease(v37);
    if (!v49)
    {
      goto LABEL_34;
    }

    v62 = v49;
    goto LABEL_33;
  }

  v52 = objc_msgSend_pcsManager(v12, v50, v51);
  v38 = objc_msgSend_addIdentityForService_toPCS_(v52, v53, 2, v49);

  v56 = MEMORY[0x277CBC880];
  if (v38)
  {
    v57 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v106 = lCopy;
      v107 = 2112;
      v108 = v38;
      _os_log_error_impl(&dword_22506F000, v58, OS_LOG_TYPE_ERROR, "Couldn't add our self identity to the public PCS for share at URL %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v72 = objc_msgSend_pcsManager(v12, v54, v55);
    v102 = 0;
    v66 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v72, v73, v49, 0, &v102);
    v38 = v102;

    if (v66 && !v38)
    {
      v76 = objc_msgSend_pcsManager(v12, v74, v75);
      v101 = 0;
      v65 = objc_msgSend_etagFromSharePCS_error_(v76, v77, v49, &v101);
      v38 = v101;

      if (!v65 || v38)
      {
        v78 = MEMORY[0x277CBC830];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v79 = *v78;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v94 = v79;
          v100 = objc_msgSend_share(sCopy, v95, v96);
          v99 = objc_msgSend_recordID(v100, v97, v98);
          *buf = 138412290;
          v106 = v99;
          _os_log_error_impl(&dword_22506F000, v94, OS_LOG_TYPE_ERROR, "Couldn't get an etag for public PCS data on share %@", buf, 0xCu);
        }

        v65 = 0;
        v66 = 0;
      }

      v57 = MEMORY[0x277CBC830];
      goto LABEL_59;
    }

    v80 = *v56 == -1;
    v57 = MEMORY[0x277CBC830];
    if (!v80)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v81 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v106 = lCopy;
      v107 = 2112;
      v108 = v38;
      _os_log_error_impl(&dword_22506F000, v81, OS_LOG_TYPE_ERROR, "Couldn't serialize share public PCS for share at URL %@: %@", buf, 0x16u);
    }
  }

  v65 = 0;
  v66 = 0;
LABEL_59:
  CFRelease(v37);
  CFRelease(v49);
  if (v66)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v82 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = lCopy;
      _os_log_impl(&dword_22506F000, v82, OS_LOG_TYPE_INFO, "Successfully added our public identity to the share's public PCS at %@", buf, 0xCu);
    }
  }

LABEL_35:
  if (error)
  {
    v67 = v38;
    *error = v38;
  }

  if (v66)
  {
    v68 = objc_opt_new();
    objc_msgSend_setPublicPCSData_(v68, v69, v66);
    objc_msgSend_setPublicPCSEtag_(v68, v70, v65);
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

- (void)main
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareMetadata(self, a2, v2);
  if (v4 && (v7 = v4, objc_msgSend_participantID(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_length(v8, v9, v10), v8, v7, v11))
  {
    v13 = objc_msgSend_encryptedKey(self, v5, v12);

    if (!v13)
    {
      v16 = objc_msgSend_shareMetadata(self, v14, v15);
      v49 = 0;
      v18 = objc_msgSend__encryptedKeyDataWithShareMetadata_error_(self, v17, v16, &v49);
      v19 = v49;
      objc_msgSend_setEncryptedKey_(self, v20, v18);

      v23 = objc_msgSend_encryptedKey(self, v21, v22);

      if (!v23)
      {
        v48 = MEMORY[0x277CBC560];
        v25 = *MEMORY[0x277CBC120];
        v50 = *MEMORY[0x277CCA7E8];
        v51[0] = v19;
        v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v51, &v50, 1);
        v29 = objc_msgSend_shareMetadata(self, v27, v28);
        v32 = objc_msgSend_shareMetadata(self, v30, v31);
        v35 = objc_msgSend_privateToken(v32, v33, v34);
        v38 = objc_msgSend_shareMetadata(self, v36, v37);
        v41 = objc_msgSend_share(v38, v39, v40);
        v44 = objc_msgSend_publicProtectionData(v41, v42, v43);
        v46 = objc_msgSend_errorWithDomain_code_userInfo_format_(v48, v45, v25, 5005, v26, @"Unable to create public PCS blob using metadata %@ (private token was: %@, share's public PCS blob was %@)", v29, v35, v44);
        objc_msgSend_finishWithError_(self, v47, v46);

        return;
      }
    }

    objc_msgSend__sendRequest_(self, v14, 0);
  }

  else
  {

    objc_msgSend_finishWithError_(self, v5, 0);
  }
}

- (void)_sendRequest:(BOOL)request
{
  requestCopy = request;
  v49 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = @"first";
    if (requestCopy)
    {
      v37 = @"second";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v37;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Sending initiate vetting request, this is a %{public}@ attempt", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x2020000000;
  v48 = 1;
  v6 = [CKDInitiateParticipantVettingURLRequest alloc];
  v9 = objc_msgSend_shareMetadata(self, v7, v8);
  v12 = objc_msgSend_share(v9, v10, v11);
  v15 = objc_msgSend_recordID(v12, v13, v14);
  v18 = objc_msgSend_encryptedKey(self, v16, v17);
  v21 = objc_msgSend_participantID(self, v19, v20);
  v24 = objc_msgSend_shareMetadata(self, v22, v23);
  v27 = objc_msgSend_baseToken(v24, v25, v26);
  v29 = objc_msgSend_initWithOperation_shareRecordID_encryptedKey_participantID_baseToken_(v6, v28, self, v15, v18, v21, v27);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v29);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_225236574;
  v41[3] = &unk_27854AB00;
  objc_copyWeak(&v42, &location);
  v43 = requestCopy;
  v41[4] = self;
  v41[5] = &buf;
  objc_msgSend_setVettingInitiationRequestCompletionBlock_(v29, v30, v41);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_225236ADC;
  v38[3] = &unk_27854AB28;
  v38[4] = &buf;
  objc_copyWeak(&v39, &location);
  objc_copyWeak(&v40, &from);
  objc_msgSend_setCompletionBlock_(v29, v31, v38);
  objc_msgSend_setRequest_(self, v32, v29);
  v35 = objc_msgSend_container(self, v33, v34);
  objc_msgSend_performRequest_(v35, v36, v29);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setParticipantVettingProgressBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDInitiateParticipantVettingOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end