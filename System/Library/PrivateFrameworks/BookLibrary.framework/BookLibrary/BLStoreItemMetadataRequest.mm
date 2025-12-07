@interface BLStoreItemMetadataRequest
- (BLStoreItemMetadataRequest)initWithRequestContext:(id)context mediaItem:(id)item;
- (BOOL)_isHLSPlaylistURLStringValid:(id)valid;
- (id)_responseDictionaryForKeyCertificateURL:(id)l keyServerURL:(id)rL;
- (void)_performBuyProductRequest;
- (void)finishWithError:(id)error;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLStoreItemMetadataRequest

- (BLStoreItemMetadataRequest)initWithRequestContext:(id)context mediaItem:(id)item
{
  contextCopy = context;
  itemCopy = item;
  v11 = objc_msgSend_init(self, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 304), context);
    objc_storeStrong(&v12->_mediaItem, item);
  }

  return v12;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D16338;
  v10[3] = &unk_278D15B50;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v9, v7, v10);
}

- (void)finishWithError:(id)error
{
  v3.receiver = self;
  v3.super_class = BLStoreItemMetadataRequest;
  [(ICRequestOperation *)&v3 finishWithError:error];
}

- (void)_performBuyProductRequest
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5);
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_title(self->_mediaItem, v8, v9);
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_INFO, "Starting metadata request for '%@'", buf, 0xCu);
  }

  v13 = objc_msgSend_sharedBagProvider(MEMORY[0x277D7FC68], v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D165DC;
  v16[3] = &unk_278D15BA0;
  v16[4] = self;
  v17 = active;
  v14 = active;
  objc_msgSend_getBagForRequestContext_withCompletionHandler_(v13, v15, v14, v16);
}

- (id)_responseDictionaryForKeyCertificateURL:(id)l keyServerURL:(id)rL
{
  v21[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  mediaItem = self->_mediaItem;
  v9 = sub_241D12124();
  v11 = objc_msgSend_valueForProperty_(mediaItem, v10, v9);

  if (objc_msgSend__isHLSPlaylistURLStringValid_(self, v12, v11))
  {
    v20[0] = @"hls-playlist-url";
    v20[1] = @"hls-key-cert-url";
    v21[0] = v11;
    v21[1] = lCopy;
    v20[2] = @"hls-key-server-url";
    v21[2] = rLCopy;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v21, v20, 3);
  }

  else
  {
    v15 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_mediaItem;
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_241D0D000, v15, OS_LOG_TYPE_ERROR, "No stream URL available for media item %@.", &v18, 0xCu);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

- (BOOL)_isHLSPlaylistURLStringValid:(id)valid
{
  v14 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  if (!validCopy)
  {
    v7 = BLHLSKeyFetchingLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v12) = 0;
    v10 = "playlistURLString is nil";
LABEL_14:
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_ERROR, v10, &v12, 2u);
    goto LABEL_15;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v7 = BLHLSKeyFetchingLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v12) = 0;
    v10 = "playlistURLString is not a string";
    goto LABEL_14;
  }

  if (!objc_msgSend_length(validCopy, v4, v5))
  {
    v7 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v10 = "playlistURLString is empty";
      goto LABEL_14;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v6, validCopy);
  v8 = v7 != 0;
  if (!v7)
  {
    v9 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = 0;
      _os_log_impl(&dword_241D0D000, v9, OS_LOG_TYPE_ERROR, "playlistURLString is not a valid url: %@", &v12, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v8;
}

@end