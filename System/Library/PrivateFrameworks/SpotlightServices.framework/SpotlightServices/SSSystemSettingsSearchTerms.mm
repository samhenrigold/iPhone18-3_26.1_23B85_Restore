@interface SSSystemSettingsSearchTerms
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)event;
- (SSSystemSettingsSearchTerms)init;
- (id)_itemUpdatesForEvent:(id)event bundleToUpdate:(id)update timestamp:(id)timestamp;
- (id)stream;
- (void)handleEvent:(id)event;
@end

@implementation SSSystemSettingsSearchTerms

- (id)stream
{
  v2 = BiomeLibrary();
  systemSettings = [v2 SystemSettings];
  searchTerms = [systemSettings SearchTerms];

  return searchTerms;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SSSystemSettingsSearchTerms sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __45__SSSystemSettingsSearchTerms_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SSSystemSettingsSearchTerms)init
{
  v6.receiver = self;
  v6.super_class = SSSystemSettingsSearchTerms;
  v2 = [(SSBaseConsumer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)filterEvent:(id)event
{
  searchResultsClickedOn = [event searchResultsClickedOn];
  v4 = searchResultsClickedOn == 0;

  return v4;
}

- (void)handleEvent:(id)event
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    if (![(SSSystemSettingsSearchTerms *)self filterEvent:v5])
    {
      searchTerm = [v5 searchTerm];
      v7 = SSRedactString(searchTerm, 1);

      if (v7)
      {
        v8 = SSGeneralLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(SSBaseConsumer *)self identifier];
          v12 = 138412546;
          v13 = identifier;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "%@: processing event system settings search: %@", &v12, 0x16u);
        }
      }

      v10 = objc_opt_new();
      v11 = [(SSSystemSettingsSearchTerms *)self _itemUpdatesForEvent:v5 bundleToUpdate:@"com.apple.Preferences" timestamp:v10];
      if (objc_msgSend_count(v11))
      {
        [(SSBaseConsumer *)self indexItems:v11 protectionClass:@"Priority" bundleID:@"com.apple.Preferences"];
      }
    }
  }
}

- (id)_itemUpdatesForEvent:(id)event bundleToUpdate:(id)update timestamp:(id)timestamp
{
  v33 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  updateCopy = update;
  timestampCopy = timestamp;
  [MEMORY[0x1E695DF70] array];
  v23 = v22 = eventCopy;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [eventCopy searchResultsClickedOn];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v12 = *MEMORY[0x1E6964548];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_alloc_init(MEMORY[0x1E6964E80]);
        bundleIDwithAnchor = [v14 bundleIDwithAnchor];
        stringByRemovingPercentEncoding = [bundleIDwithAnchor stringByRemovingPercentEncoding];

        if (timestampCopy && stringByRemovingPercentEncoding)
        {
          [v15 setUniqueIdentifier:stringByRemovingPercentEncoding];
          [v15 setBundleID:updateCopy];
          [v15 setIsUpdate:1];
          v18 = objc_alloc(MEMORY[0x1E6964E90]);
          v30[0] = @"_kMDItemLastOutOfSpotlightEngagementDate";
          v30[1] = v12;
          v31[0] = timestampCopy;
          v31[1] = timestampCopy;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
          v20 = [v18 initWithAttributes:v19];
          [v15 setAttributeSet:v20];

          [v23 addObject:v15];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  return v23;
}

@end