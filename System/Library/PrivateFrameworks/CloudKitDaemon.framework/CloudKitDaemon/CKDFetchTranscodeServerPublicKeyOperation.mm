@interface CKDFetchTranscodeServerPublicKeyOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDFetchTranscodeServerPublicKeyOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)determineTranscodeServerPublicKeyURL;
- (void)fetchCachedTranscodePublicKey;
- (void)fetchRemoteTranscodePublicKey;
- (void)main;
@end

@implementation CKDFetchTranscodeServerPublicKeyOperation

- (CKDFetchTranscodeServerPublicKeyOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = CKDFetchTranscodeServerPublicKeyOperation;
  v9 = [(CKDOperation *)&v15 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_transcodeServerHostname(infoCopy, v7, v8);
    transcodeServerHostname = v9->_transcodeServerHostname;
    v9->_transcodeServerHostname = v10;

    v9->_type = objc_msgSend_type(infoCopy, v12, v13);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-public-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
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
    *buf = 138544130;
    v25 = v13;
    v26 = 2048;
    selfCopy = self;
    v28 = 2114;
    v29 = v18;
    v30 = 2112;
    v31 = v23;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Starting  <%{public}@: %p; %{public}@, %@>", buf, 0x2Au);
  }

  if (!objc_msgSend_type(self, v4, v5))
  {
    v8 = objc_msgSend_transcodeServerHostname(self, v6, v7);

    if (!v8)
    {
      v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1017, @"Operation %@ was not provided a transcode server hostname", self);
      objc_msgSend_setError_(self, v10, v9);
    }
  }

  objc_msgSend_makeStateTransition_(self, v6, 0);
}

- (void)determineTranscodeServerPublicKeyURL
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v5;
    v22 = objc_msgSend_transcodeServerHostname(self, v20, v21);
    *buf = 138543362;
    v25 = v22;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Determining transcode server public key URL for hostname: %{public}@", buf, 0xCu);
  }

  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v8, v9, @"TranscodeServerPublicKeyURL"), v10 = objc_claimAutoreleasedReturnValue(), v8, v10))
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Overriding transcode server public key URL to %@", buf, 0xCu);
    }

    v13 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v12, v10);
    objc_msgSend_setTranscodeServerPublicKeyURL_(self, v14, v13);
  }

  else
  {
    v15 = objc_msgSend_stateTransitionGroup(self, v6, v7);
    dispatch_group_enter(v15);

    v10 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v16, v17);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2251A39D0;
    v23[3] = &unk_278548770;
    v23[4] = self;
    objc_msgSend_configurationForOperation_completionHandler_(v10, v18, self, v23);
  }
}

- (void)fetchCachedTranscodePublicKey
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v35 = v5;
    v38 = objc_msgSend_transcodeServerPublicKeyURL(self, v36, v37);
    v43 = 138543362;
    v44 = v38;
    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Checking for cached transcode server public key for public key URL %{public}@", &v43, 0xCu);
  }

  v8 = objc_msgSend_transcodeServerPublicKeyURL(self, v6, v7);
  v11 = objc_msgSend_absoluteString(v8, v9, v10);

  v14 = objc_msgSend_deviceContext(self, v12, v13);
  v17 = objc_msgSend_metadataCache(v14, v15, v16);
  v19 = objc_msgSend_publicKeyOfType_withIdentifier_(v17, v18, @"transcodeServerPublicKey", v11);

  if (v19)
  {
    hasExpired = objc_msgSend_hasExpired(v19, v20, v21);
    v23 = *MEMORY[0x277CBC878];
    if (hasExpired)
    {
      if (*v3 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v24 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v39 = v24;
        v42 = objc_msgSend_expiration(v19, v40, v41);
        v43 = 138543362;
        v44 = v42;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Found a cached transcode key, but it has expired on %{public}@. Clearing cached value and continuing with server fetch.", &v43, 0xCu);
      }

      v27 = objc_msgSend_deviceContext(self, v25, v26);
      v30 = objc_msgSend_metadataCache(v27, v28, v29);
      objc_msgSend_setPublicKey_ofType_withIdentifier_(v30, v31, 0, @"transcodeServerPublicKey", v11);
    }

    else
    {
      if (*v3 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v33 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v43 = 138412290;
        v44 = v19;
        _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Found a transcode public key %@", &v43, 0xCu);
      }

      objc_msgSend_setTranscodeServerPublicKey_(self, v34, v19);
    }
  }

  else
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v43) = 0;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Couldn't find cached transcode public key", &v43, 2u);
    }
  }
}

- (void)fetchRemoteTranscodePublicKey
{
  location[3] = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v31 = v3;
    v34 = objc_msgSend_transcodeServerPublicKeyURL(self, v32, v33);
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v34;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Fetching transcode server public key from URL %{public}@", location, 0xCu);
  }

  v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
  dispatch_group_enter(v6);

  v7 = objc_opt_class();
  TranscodeServerTrustPolicy = objc_msgSend_createTranscodeServerTrustPolicy(v7, v8, v9);
  v11 = [CKDSignedServerPublicKeyURLRequest alloc];
  v14 = objc_msgSend_transcodeServerPublicKeyURL(self, v12, v13);
  v16 = objc_msgSend_initWithOperation_plistURL_verifyWithPolicy_(v11, v15, self, v14, TranscodeServerTrustPolicy);

  if (objc_msgSend_type(self, v17, v18) == 1)
  {
    objc_msgSend_setRequiresProtectionSource_(v16, v19, 1);
    objc_msgSend_setVerifyFullIntegers_(v16, v20, 1);
    v23 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v21, v22, 3600.0);
    objc_msgSend_setExpirationDateOverride_(v16, v24, v23);
  }

  if (TranscodeServerTrustPolicy)
  {
    CFRelease(TranscodeServerTrustPolicy);
  }

  objc_initWeak(location, v16);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_2251A4394;
  v38 = &unk_2785476F0;
  objc_copyWeak(&v40, location);
  selfCopy = self;
  objc_msgSend_setCompletionBlock_(v16, v25, &v35);
  objc_msgSend_setRequest_(self, v26, v16, v35, v36, v37, v38);
  v29 = objc_msgSend_container(self, v27, v28);
  objc_msgSend_performRequest_(v29, v30, v16);

  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v11 = objc_msgSend_transcodeServerPublicKey(self, v5, v6);

      if (!v11)
      {
        objc_msgSend_setState_(self, v5, 4);
        objc_msgSend_fetchRemoteTranscodePublicKey(self, v17, v18);
        return 1;
      }
    }

    else if (v4 != 4)
    {
      return 1;
    }

    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v14 = objc_msgSend_error(self, v12, v13);
    objc_msgSend_finishWithError_(self, v15, v14);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend_determineTranscodeServerPublicKeyURL(self, v9, v10);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend_fetchCachedTranscodePublicKey(self, v7, v8);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchTranscodeServerPublicKeyOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548790[state - 2];
  }

  return v5;
}

@end