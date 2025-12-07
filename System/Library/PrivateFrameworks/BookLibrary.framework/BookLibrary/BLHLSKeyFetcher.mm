@interface BLHLSKeyFetcher
+ (BLHLSKeyFetcher)sharedInstance;
- (BLHLSKeyFetcher)init;
- (id)fetchOfflineKeyForMediaItem:(id)item identity:(id)identity completion:(id)completion;
- (id)fetchOnlineKeyForMediaItem:(id)item loadingRequest:(id)request;
@end

@implementation BLHLSKeyFetcher

- (BLHLSKeyFetcher)init
{
  v7.receiver = self;
  v7.super_class = BLHLSKeyFetcher;
  v2 = [(BLHLSKeyFetcher *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_ignoreCache = 1;
    v4 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_INFO, "Ignoring any local cache.", v6, 2u);
    }
  }

  return v3;
}

+ (BLHLSKeyFetcher)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D12570;
  block[3] = &unk_278D15938;
  block[4] = self;
  if (qword_280C4FA90 != -1)
  {
    dispatch_once(&qword_280C4FA90, block);
  }

  v2 = qword_27EC71328;

  return v2;
}

- (id)fetchOnlineKeyForMediaItem:(id)item loadingRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  requestCopy = request;
  objc_opt_class();
  v7 = sub_241D12404();
  v9 = objc_msgSend_valueForProperty_(itemCopy, v8, v7);
  v10 = BUDynamicCast();
  v13 = objc_msgSend_unsignedIntValue(v10, v11, v12);

  v14 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v13;
    _os_log_impl(&dword_241D0D000, v14, OS_LOG_TYPE_DEFAULT, "Fetching online key for %llu.", buf, 0xCu);
  }

  v15 = [BLStreamingKeyRequest alloc];
  v17 = objc_msgSend_initWithMediaItem_loadingRequest_(v15, v16, itemCopy, requestCopy);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_241D12758;
  v20[3] = &unk_278D15958;
  v20[4] = v13;
  objc_msgSend_performRequestWithResponseHandler_(v17, v18, v20);

  return v17;
}

- (id)fetchOfflineKeyForMediaItem:(id)item identity:(id)identity completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identityCopy = identity;
  completionCopy = completion;
  v11 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_title(itemCopy, v12, v13);
    *buf = 138412546;
    v39 = v14;
    v40 = 1024;
    LODWORD(v41) = objc_msgSend_ignoreCache(self, v15, v16);
    _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEFAULT, "Fetching offline key for '%@'. Ignore Cache? %{BOOL}d", buf, 0x12u);
  }

  v18 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(BLMediaItemUtils, v17, itemCopy);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, identityCopy);

  if (v20 && !objc_msgSend_ignoreCache(self, v21, v22))
  {
    v29 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_title(itemCopy, v30, v31);
      *buf = 138412290;
      v39 = v32;
      _os_log_impl(&dword_241D0D000, v29, OS_LOG_TYPE_DEFAULT, "Cache hit of offline key for '%@'", buf, 0xCu);
    }

    v33 = MEMORY[0x245CFEDE0](completionCopy);
    v28 = v33;
    if (v33)
    {
      (*(v33 + 16))(v33, v20, 0);
    }

    v25 = 0;
  }

  else
  {
    v23 = [BLOfflineKeyRequest alloc];
    v25 = objc_msgSend_initWithMediaItem_identity_(v23, v24, itemCopy, identityCopy);
    v26 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v25;
      v40 = 2112;
      v41 = identityCopy;
      _os_log_impl(&dword_241D0D000, v26, OS_LOG_TYPE_DEFAULT, "Created Offline key request (%@) with identity: '%@'", buf, 0x16u);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_241D12B50;
    v35[3] = &unk_278D15980;
    v36 = itemCopy;
    v37 = completionCopy;
    objc_msgSend_performRequestWithResponseHandler_(v25, v27, v35);

    v28 = v36;
  }

  return v25;
}

@end