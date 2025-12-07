@interface GEOSiriSyncHandler
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation GEOSiriSyncHandler

- (void)syncDidEnd
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_2334D0000, v2, OS_LOG_TYPE_DEBUG, "syncDidEnd", v3, 2u);
  }
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138477827;
    v17 = anchorCopy;
    _os_log_impl(&dword_2334D0000, v7, OS_LOG_TYPE_DEBUG, "getChangeAfterAnchor:%{private}@", &v16, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277D0ED40]);
  postAnchor = [v8 postAnchor];
  if (objc_opt_class() && ([postAnchor isEqualToString:anchorCopy] & 1) == 0)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138478083;
      v17 = postAnchor;
      v18 = 2113;
      v19 = anchorCopy;
      _os_log_impl(&dword_2334D0000, v10, OS_LOG_TYPE_DEBUG, "postAnchor:%{private}@ differs from preAnchor:%{private}@; will provide new domainObject", &v16, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D474A0]);
    additionalEnabledMarkets = [v8 additionalEnabledMarkets];
    [v11 setAdditionalEnabledTransitMarkets:additionalEnabledMarkets];

    manifestEnvironment = [v8 manifestEnvironment];
    [v11 setEnvironment:manifestEnvironment];

    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"siri-sync://siri-maps-client-info"];
    [v11 setIdentifier:v14];

    clientMetadata = [v8 clientMetadata];
    [v11 setClientMetadata:clientMetadata];

    [infoCopy setObject:v11];
  }

  [infoCopy setPostAnchor:postAnchor];
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  infoCopy = info;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138478083;
    v14 = anchorCopy;
    v15 = 2113;
    v16 = validityCopy;
    _os_log_impl(&dword_2334D0000, v11, OS_LOG_TYPE_DEBUG, "beginSyncWithAnchor:%{private}@ validity:%{private}@", &v13, 0x16u);
  }

  if (([validityCopy isEqualToString:@"20180510"] & 1) == 0)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138478083;
      v14 = @"20180510";
      v15 = 2113;
      v16 = validityCopy;
      _os_log_impl(&dword_2334D0000, v12, OS_LOG_TYPE_DEBUG, "local validity:%{private}@ differs from validity:%{private}@; will reset with local value", &v13, 0x16u);
    }

    [infoCopy resetWithValidity:@"20180510"];
  }
}

@end