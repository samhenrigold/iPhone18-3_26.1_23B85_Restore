@interface APOdmlCoreDataStorage
- (APOdmlCoreDataStorage)init;
- (id)storePrecheck;
- (void)createContainer;
- (void)initializeCoreDataStackForClient;
- (void)initializeCoreDataStackForDaemon;
- (void)launchContainer;
- (void)makeApplicationSupportDirectory;
- (void)setContainerDescriptionClient;
- (void)setContainerDescriptionDaemon:(id)daemon;
@end

@implementation APOdmlCoreDataStorage

- (APOdmlCoreDataStorage)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = APOdmlCoreDataStorage;
  v2 = [(APOdmlCoreDataStorage *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_numLaunchesAttempted = 0;
    v2->_coreDataIsInitialized = 0;
    v4 = +[APOdmlDatabaseConfiguration sharedInstance];
    isDaemonProcess = [v4 isDaemonProcess];

    v6 = OdmlLogForCategory(4uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isDaemonProcess)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        *buf = 138477827;
        v15 = v8;
        v9 = v8;
        _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing CoreData for daemon.", buf, 0xCu);
      }

      [(APOdmlCoreDataStorage *)v3 initializeCoreDataStackForDaemon];
    }

    else
    {
      if (v7)
      {
        v10 = objc_opt_class();
        *buf = 138477827;
        v15 = v10;
        v11 = v10;
        _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing CoreData for client.", buf, 0xCu);
      }

      [(APOdmlCoreDataStorage *)v3 initializeCoreDataStackForClient];
    }
  }

  return v3;
}

- (void)makeApplicationSupportDirectory
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = @"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/";
  v17 = 1;
  if ([v3 fileExistsAtPath:v4 isDirectory:&v17])
  {
    v5 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138477827;
      v19 = v6;
      v7 = v6;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Directory already exists.", buf, 0xCu);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v16 = 0;
    [v3 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
    v9 = v16;
    v5 = v16;
    v10 = OdmlLogForCategory(4uLL);
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        *buf = 138478083;
        v19 = v12;
        v20 = 2112;
        v21 = v5;
        v13 = v12;
        _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to make appropriate directory with error: %@", buf, 0x16u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5001 userInfo:0];
      [APOdmlAnalyticsFeatureStorage sendEvent:v11 additionalDetails:0];
      objc_storeStrong(&self->_coreDataError, v9);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138478083;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      v15 = v14;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_DEFAULT, "[%{private}@] Created directory at %@", buf, 0x16u);
    }
  }
}

- (void)initializeCoreDataStackForDaemon
{
  [(APOdmlCoreDataStorage *)self makeApplicationSupportDirectory];
  [(APOdmlCoreDataStorage *)self createContainer];
  [(APOdmlCoreDataStorage *)self setContainerDescriptionDaemon:*MEMORY[0x277CBE2E8]];

  MEMORY[0x2821F9670](self, sel_launchContainer);
}

- (void)initializeCoreDataStackForClient
{
  [(APOdmlCoreDataStorage *)self createContainer];
  [(APOdmlCoreDataStorage *)self setContainerDescriptionClient];

  MEMORY[0x2821F9670](self, sel_launchContainer);
}

- (void)createContainer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"FeatureModel" withExtension:@"momd"];
  v5 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138478083;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v6 = v11;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Model URL: %@", &v10, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v4];
  v8 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"FeatureModel" managedObjectModel:v7];
  persistentContainer = self->_persistentContainer;
  self->_persistentContainer = v8;
}

- (void)setContainerDescriptionDaemon:(id)daemon
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  daemonCopy = daemon;
  v6 = [v4 fileURLWithPath:@"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite"];
  v7 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v6];
  [v7 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
  [v7 setType:daemonCopy];

  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(NSPersistentContainer *)self->_persistentContainer setPersistentStoreDescriptions:v8];
}

- (void)setContainerDescriptionClient
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE4E0]);
  [v3 setOption:@"com.apple.ap.adprivacyd.store" forKey:*MEMORY[0x277CBE340]];
  v4 = MEMORY[0x277CBEC38];
  [v3 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE328]];
  [v3 setOption:v4 forKey:*MEMORY[0x277CBE210]];
  [v3 setType:*MEMORY[0x277CBE348]];
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(NSPersistentContainer *)self->_persistentContainer setPersistentStoreDescriptions:v5];
}

- (void)launchContainer
{
  v9 = *MEMORY[0x277D85DE8];
  [(APOdmlCoreDataStorage *)self setNumLaunchesAttempted:[(APOdmlCoreDataStorage *)self numLaunchesAttempted]+ 1];
  v3 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_260ECB000, v3, OS_LOG_TYPE_DEFAULT, "[%{private}@] Launching CoreData Container", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ED2C54;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_async(v5, block);
}

- (id)storePrecheck
{
  coreDataError = [(APOdmlCoreDataStorage *)self coreDataError];

  if (coreDataError)
  {
    coreDataError2 = [(APOdmlCoreDataStorage *)self coreDataError];
  }

  else if ([(APOdmlCoreDataStorage *)self coreDataIsInitialized])
  {
    coreDataError2 = 0;
  }

  else
  {
    coreDataError2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5002 userInfo:0];
  }

  return coreDataError2;
}

@end