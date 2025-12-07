@interface BLOfflineKeyRequest
- (BLOfflineKeyRequest)initWithMediaItem:(id)item identity:(id)identity;
- (void)_performOfflineKeyRequest;
- (void)dealloc;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLOfflineKeyRequest

- (BLOfflineKeyRequest)initWithMediaItem:(id)item identity:(id)identity
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identityCopy = identity;
  v11 = objc_msgSend_init(self, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 336), item);
    objc_storeStrong(&v12->_identity, identity);
    v13 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_msgSend_title(v12->_mediaItem, v14, v15);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_241D0D000, v13, OS_LOG_TYPE_DEFAULT, "Creating Offline key request for '%@'.", &v18, 0xCu);
    }
  }

  return v12;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_title(self->_mediaItem, v4, v5);
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Removing Offline key request for '%@'.", buf, 0xCu);
  }

  mediaItem = self->_mediaItem;
  self->_mediaItem = 0;

  v8.receiver = self;
  v8.super_class = BLOfflineKeyRequest;
  [(BLOfflineKeyRequest *)&v8 dealloc];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D17228;
  v10[3] = &unk_278D158A0;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v9, v7, v10);
}

- (void)finishWithError:(id)error
{
  v3.receiver = self;
  v3.super_class = BLOfflineKeyRequest;
  [(ICRequestOperation *)&v3 finishWithError:error];
}

- (void)execute
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5);
  requestContext = self->_requestContext;
  self->_requestContext = active;

  v8 = [BLStoreItemMetadataRequest alloc];
  v10 = objc_msgSend_initWithRequestContext_mediaItem_(v8, v9, self->_requestContext, self->_mediaItem);
  metadataRequest = self->_metadataRequest;
  self->_metadataRequest = v10;

  v12 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_title(self->_mediaItem, v13, v14);
    *buf = 138412290;
    v20 = v15;
    _os_log_impl(&dword_241D0D000, v12, OS_LOG_TYPE_DEFAULT, "Setting up metadata request for '%@'.", buf, 0xCu);
  }

  v16 = self->_metadataRequest;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D17498;
  v18[3] = &unk_278D15B00;
  v18[4] = self;
  objc_msgSend_performRequestWithResponseHandler_(v16, v17, v18);
}

- (void)_performOfflineKeyRequest
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_keyServerURL(self->_assetInfo, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_keyCertificateURL(self->_assetInfo, v5, v6);
    if (v8)
    {
      v11 = v8;
      v12 = objc_msgSend_length(self->_identity, v9, v10);

      if (v12)
      {
        v13 = [BLSecureOfflineKeyDeliveryRequest alloc];
        v15 = objc_msgSend_initWithRequestContext_(v13, v14, self->_requestContext);
        secureKeyRequest = self->_secureKeyRequest;
        self->_secureKeyRequest = v15;

        v17 = self->_secureKeyRequest;
        v20 = objc_msgSend_keyCertificateURL(self->_assetInfo, v18, v19);
        objc_msgSend_setKeyCertificateURL_(v17, v21, v20);

        v22 = self->_secureKeyRequest;
        v25 = objc_msgSend_keyServerURL(self->_assetInfo, v23, v24);
        objc_msgSend_setKeyServerURL_(v22, v26, v25);

        objc_msgSend_setIdentity_(self->_secureKeyRequest, v27, self->_identity);
        objc_msgSend_setMediaItem_(self->_secureKeyRequest, v28, self->_mediaItem);
        v29 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_msgSend_title(self->_mediaItem, v30, v31);
          v35 = objc_msgSend_keyServerURL(self->_assetInfo, v33, v34);
          v38 = objc_msgSend_keyCertificateURL(self->_assetInfo, v36, v37);
          *buf = 138412802;
          v50 = v32;
          v51 = 2112;
          v52 = v35;
          v53 = 2112;
          v54 = v38;
          _os_log_impl(&dword_241D0D000, v29, OS_LOG_TYPE_DEFAULT, "Setting secure offline key request for '%@' (%@, %@).", buf, 0x20u);
        }

        v39 = self->_secureKeyRequest;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = sub_241D179B0;
        v48[3] = &unk_278D15BC8;
        v48[4] = self;
        objc_msgSend_performRequestWithResponseHandler_(v39, v40, v48);
        return;
      }
    }

    else
    {
    }
  }

  if (objc_msgSend_length(self->_identity, v5, v6))
  {
    v43 = objc_msgSend_keyServerURL(self->_assetInfo, v41, v42);

    if (v43)
    {
      objc_msgSend_keyCertificateURL(self->_assetInfo, v44, v45);
    }
  }

  v47 = BLError();
  objc_msgSend_finishWithError_(self, v46, v47);
}

@end