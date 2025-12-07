@interface BCCloudAssetManager
+ (id)sharedClientXPCProxy;
+ (id)sharedManager;
- (NSManagedObjectModel)objectModel;
- (id)initClientXPCProxy;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync enableReadingNowSync:(BOOL)nowSync;
@end

@implementation BCCloudAssetManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_sharedClientXPCProxy);
}

+ (id)sharedClientXPCProxy
{
  if (qword_1EE2B0538 != -1)
  {
    sub_1E45E581C();
  }

  v3 = qword_1EE2B0520;

  return v3;
}

- (id)initClientXPCProxy
{
  v23.receiver = self;
  v23.super_class = BCCloudAssetManager;
  v2 = [(BCCloudAssetManager *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v4 = BDSCloudKitLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 0;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "Initializing BCCloudAssetManager - Proxy Build", v22, 2u);
    }

    v5 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v3->_serviceProxy;
    v3->_serviceProxy = v5;

    objc_storeStrong(&v3->_assetDetailManager, v3->_serviceProxy);
    objc_storeStrong(&v3->_readingNowDetailManager, v3->_serviceProxy);
    objc_storeStrong(&v3->_assetReviewManager, v3->_serviceProxy);
    objc_storeStrong(&v3->_storeAssetManager, v3->_serviceProxy);
    v7 = [BCCloudDataSource alloc];
    objectModel = [(BCCloudAssetManager *)v3 objectModel];
    v9 = [(BCCloudDataSource *)v7 initWithManagedObjectModel:objectModel nameOnDisk:@"BCAssetData"];
    assetDataSource = v3->_assetDataSource;
    v3->_assetDataSource = v9;

    v11 = [BCCloudAssetAnnotationManager alloc];
    v12 = v3->_assetDataSource;
    v13 = +[BCCloudKitController sharedInstance];
    v14 = [(BCCloudAssetAnnotationManager *)v11 initWithCloudDataSource:v12 cloudKitController:v13];
    assetAnnotationManager = v3->_assetAnnotationManager;
    v3->_assetAnnotationManager = v14;

    v16 = +[BCCloudKitController sharedInstance];
    v17 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [(BCCloudDataSource *)v3->_assetDataSource managedObjectContext];
    v19 = [(BCCloudChangeTokenController *)v17 initWithMOC:managedObjectContext zoneName:@"AssetZone" cloudKitController:v16];
    changeTokenController = v3->_changeTokenController;
    v3->_changeTokenController = v19;

    v3->_proxyMode = 1;
  }

  return v3;
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCAssetData" ofType:@"momd"];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (void)dealloc
{
  v3 = BDSCloudKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "Dealloc BCCloudAssetManager", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BCCloudAssetManager;
  [(BCCloudAssetManager *)&v4 dealloc];
}

- (void)setEnableCloudSync:(BOOL)sync enableReadingNowSync:(BOOL)nowSync
{
  nowSyncCopy = nowSync;
  syncCopy = sync;
  v16 = *MEMORY[0x1E69E9840];
  v7 = BDSCloudKitLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (syncCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (nowSyncCopy)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BCCloudAssetManager - Proxy build -  #enableCloudSync setEnableCloudSync %@ enableReadingNowSync %@", &v12, 0x16u);
  }

  serviceProxy = [(BCCloudAssetManager *)self serviceProxy];
  [serviceProxy setEnableCloudSync:syncCopy enableReadingNowSync:nowSyncCopy];

  [(BCCloudAssetAnnotationManager *)self->_assetAnnotationManager setEnableCloudSync:syncCopy];
  changeTokenController = [(BCCloudAssetManager *)self changeTokenController];
  [changeTokenController setEnableCloudSync:syncCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  v11[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = BDSCloudKitLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudAssetManager dissociateCloudDataFromSyncWithCompletion - Proxy modee", v10, 2u);
  }

  serviceProxy = [(BCCloudAssetManager *)self serviceProxy];
  v11[0] = serviceProxy;
  assetAnnotationManager = [(BCCloudAssetManager *)self assetAnnotationManager];
  v11[1] = assetAnnotationManager;
  changeTokenController = [(BCCloudAssetManager *)self changeTokenController];
  v11[2] = changeTokenController;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  [v9 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:sel_dissociateCloudDataFromSyncWithCompletion_ completion:completionCopy];
}

@end