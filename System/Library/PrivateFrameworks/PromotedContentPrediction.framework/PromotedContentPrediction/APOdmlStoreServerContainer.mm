@interface APOdmlStoreServerContainer
+ (id)sharedInstance;
- (APOdmlStoreServerContainer)init;
- (id)storeServerForModelURL:(id)l;
- (void)_startListening:(id)listening;
- (void)startListening;
@end

@implementation APOdmlStoreServerContainer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF1028;
  block[3] = &unk_279AC5E98;
  block[4] = self;
  if (qword_280CCF560 != -1)
  {
    dispatch_once(&qword_280CCF560, block);
  }

  v2 = qword_280CCF578;

  return v2;
}

- (APOdmlStoreServerContainer)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = APOdmlStoreServerContainer;
  v2 = [(APOdmlStoreServerContainer *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"FeatureModel" withExtension:@"momd"];
    modelURL = v2->_modelURL;
    v2->_modelURL = v4;

    v6 = v2->_modelURL;
    if (!v6)
    {
      v7 = OdmlLogForCategory(4uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138477827;
        v19 = v8;
        v9 = v8;
        _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "[%{private}@] Error: CoreData model not found.", buf, 0xCu);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5010 userInfo:0];
      [APOdmlAnalyticsFeatureStorage sendEvent:v10 additionalDetails:0];

      v6 = v2->_modelURL;
    }

    v11 = [(APOdmlStoreServerContainer *)v2 storeServerForModelURL:v6];
    storeServer = v2->_storeServer;
    v2->_storeServer = v11;

    v2->_isListening = 0;
    listeningError = v2->_listeningError;
    v2->_listeningError = 0;

    v14 = [[APOdmlUnfairLock alloc] initWithOptions:1];
    listeningLock = v2->_listeningLock;
    v2->_listeningLock = v14;
  }

  return v2;
}

- (id)storeServerForModelURL:(id)l
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBE210];
  v13[0] = *MEMORY[0x277CBE338];
  v13[1] = v3;
  v14[0] = MEMORY[0x277CBEC38];
  v14[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CBE340];
  v13[2] = *MEMORY[0x277CBE328];
  v13[3] = v4;
  v14[2] = MEMORY[0x277CBEC38];
  v14[3] = @"com.apple.ap.adprivacyd.store";
  v5 = MEMORY[0x277CBEAC0];
  lCopy = l;
  v7 = [v5 dictionaryWithObjects:v14 forKeys:v13 count:4];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite"];
  v9 = objc_alloc(MEMORY[0x277CBE510]);
  v10 = objc_alloc_init(APOdmlStoreServerPolicy);
  v11 = [v9 initForStoreWithURL:v8 usingModelAtURL:lCopy options:v7 policy:v10];

  return v11;
}

- (void)startListening
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF1454;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startListening:(id)listening
{
  v16[1] = *MEMORY[0x277D85DE8];
  listeningCopy = listening;
  v5 = objc_alloc(MEMORY[0x277CBE450]);
  modelURL = [(APOdmlStoreServerContainer *)self modelURL];
  v7 = [v5 initWithContentsOfURL:modelURL];

  v8 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"FeatureModel" managedObjectModel:v7];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite"];
  v10 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v9];
  [v10 setType:*MEMORY[0x277CBE2E8]];
  [v10 setShouldInferMappingModelAutomatically:1];
  [v10 setShouldMigrateStoreAutomatically:1];
  v11 = MEMORY[0x277CBEC38];
  [v10 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE270]];
  [v10 setOption:v11 forKey:*MEMORY[0x277CBE210]];
  v16[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 setPersistentStoreDescriptions:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_260EF19E8;
  v14[3] = &unk_279AC69C0;
  v14[4] = self;
  v15 = listeningCopy;
  v13 = listeningCopy;
  [v8 loadPersistentStoresWithCompletionHandler:v14];
}

@end