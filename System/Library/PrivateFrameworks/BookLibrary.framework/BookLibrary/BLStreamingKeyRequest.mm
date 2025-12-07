@interface BLStreamingKeyRequest
- (BLStreamingKeyRequest)initWithMediaItem:(id)item loadingRequest:(id)request;
- (void)_performStreamingKeyRequestForHLSAsset:(id)asset;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLStreamingKeyRequest

- (BLStreamingKeyRequest)initWithMediaItem:(id)item loadingRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  v11 = objc_msgSend_init(self, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 320), item);
    objc_storeStrong(&v12->_loadingRequest, request);
  }

  return v12;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D15D34;
  v7[3] = &unk_278D158A0;
  v7[4] = self;
  v8 = handlerCopy;
  v5 = handlerCopy;
  objc_msgSend_performRequestWithCompletionHandler_(self, v6, v7);
}

- (void)execute
{
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5);
  v7 = [BLStoreItemMetadataRequest alloc];
  v9 = objc_msgSend_initWithRequestContext_mediaItem_(v7, v8, active, self->_mediaItem);
  metadataRequest = self->_metadataRequest;
  self->_metadataRequest = v9;

  v11 = self->_metadataRequest;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D15EA0;
  v13[3] = &unk_278D15B00;
  v13[4] = self;
  objc_msgSend_performRequestWithResponseHandler_(v11, v12, v13);
}

- (void)_performStreamingKeyRequestForHLSAsset:(id)asset
{
  v4 = MEMORY[0x277D7FC30];
  assetCopy = asset;
  v6 = [v4 alloc];
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v6, v7, v8);
  v10 = objc_alloc(MEMORY[0x277D7FBE0]);
  v12 = objc_msgSend_initWithRequestContext_resourceLoadingRequest_(v10, v11, active, self->_loadingRequest);
  secureKeyRequest = self->_secureKeyRequest;
  self->_secureKeyRequest = v12;

  objc_msgSend_setShouldIncludeDeviceGUID_(self->_secureKeyRequest, v14, 1);
  v15 = self->_secureKeyRequest;
  v18 = objc_msgSend_keyCertificateURL(assetCopy, v16, v17);
  objc_msgSend_setCertificateURL_(v15, v19, v18);

  v20 = self->_secureKeyRequest;
  v23 = objc_msgSend_keyServerURL(assetCopy, v21, v22);

  objc_msgSend_setKeyServerURL_(v20, v24, v23);
  objc_msgSend_setITunesStoreRequest_(self->_secureKeyRequest, v25, 1);
  v26 = self->_secureKeyRequest;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_241D160F8;
  v28[3] = &unk_278D15B28;
  v28[4] = self;
  objc_msgSend_performWithResponseHandler_(v26, v27, v28);
}

@end