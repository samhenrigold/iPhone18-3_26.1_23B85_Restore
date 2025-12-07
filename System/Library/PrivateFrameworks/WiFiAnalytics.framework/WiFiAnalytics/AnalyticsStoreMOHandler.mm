@interface AnalyticsStoreMOHandler
+ (id)sharedAnalyticsStoreMOHandlerWithContainer:(id)container;
- (AnalyticsStoreMOHandler)initWithContainer:(id)container;
- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error;
- (BOOL)saveManagedObjectContextWithError:(id *)error;
- (BOOL)setBssManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value;
- (BOOL)setNetworkManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value;
- (id)managedObjectContext;
- (void)contextDidSave:(id)save;
- (void)dealloc;
- (void)performBlockOnManagedObjectContext:(id)context block:(id)block;
- (void)performBlockOnManagedObjectContextForNSData:(id)data withDate:(id)date block:(id)block;
- (void)releaseBackgroundMOC;
- (void)resetManagedObjectContext;
- (void)updateManagedObjectContextWithoutSave;
@end

@implementation AnalyticsStoreMOHandler

+ (id)sharedAnalyticsStoreMOHandlerWithContainer:(id)container
{
  v15 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AnalyticsStoreMOHandler_sharedAnalyticsStoreMOHandlerWithContainer___block_invoke;
  block[3] = &unk_1E830D880;
  v4 = containerCopy;
  v10 = v4;
  if (qword_1EDE5CAF0 != -1)
  {
    dispatch_once(&qword_1EDE5CAF0, block);
  }

  v5 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v12 = "+[AnalyticsStoreMOHandler sharedAnalyticsStoreMOHandlerWithContainer:]";
      v13 = 1024;
      v14 = 45;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:AnalyticsStoreMOHandler failed to init", buf, 0x12u);
    }

    v5 = _MergedGlobals_3;
  }

  v7 = v5;

  return v5;
}

uint64_t __70__AnalyticsStoreMOHandler_sharedAnalyticsStoreMOHandlerWithContainer___block_invoke(uint64_t a1)
{
  _MergedGlobals_3 = [[AnalyticsStoreMOHandler alloc] initWithContainer:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (AnalyticsStoreMOHandler)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = AnalyticsStoreMOHandler;
  v6 = [(AnalyticsStoreMOHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, container);
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AnalyticsStoreMOHandler;
  [(AnalyticsStoreMOHandler *)&v4 dealloc];
}

- (id)managedObjectContext
{
  persistentContainer = [(AnalyticsStoreMOHandler *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

- (void)performBlockOnManagedObjectContext:(id)context block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlock", "", buf, 2u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AnalyticsStoreMOHandler_performBlockOnManagedObjectContext_block___block_invoke;
  v13[3] = &unk_1E830EAF0;
  v14 = contextCopy;
  v15 = blockCopy;
  v10 = contextCopy;
  v11 = blockCopy;
  [managedObjectContext performBlockAndWait:v13];

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlock", "", buf, 2u);
  }
}

- (void)performBlockOnManagedObjectContextForNSData:(id)data withDate:(id)date block:(id)block
{
  dataCopy = data;
  dateCopy = date;
  blockCopy = block;
  v11 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlockNSData", "", buf, 2u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__AnalyticsStoreMOHandler_performBlockOnManagedObjectContextForNSData_withDate_block___block_invoke;
  v17[3] = &unk_1E830EB18;
  v19 = dateCopy;
  v20 = blockCopy;
  v18 = dataCopy;
  v13 = dateCopy;
  v14 = dataCopy;
  v15 = blockCopy;
  [managedObjectContext performBlockAndWait:v17];

  v16 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlockNSData", "", buf, 2u);
  }
}

- (void)updateManagedObjectContextWithoutSave
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave", "", buf, 2u);
  }

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v9 = "[AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave]";
    v10 = 1024;
    v11 = 122;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Attempting Update MOC without save", buf, 0x12u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AnalyticsStoreMOHandler_updateManagedObjectContextWithoutSave__block_invoke;
  v7[3] = &unk_1E830D880;
  v7[4] = self;
  [managedObjectContext performBlockAndWait:v7];

  v6 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave", "", buf, 2u);
  }
}

void __64__AnalyticsStoreMOHandler_updateManagedObjectContextWithoutSave__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave]_block_invoke";
    v6 = 1024;
    v7 = 126;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Update MOC without save, calling processPendingChanges", &v4, 0x12u);
  }

  v3 = [*(a1 + 32) managedObjectContext];
  [v3 processPendingChanges];
}

- (BOOL)saveManagedObjectContextWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_backgroundStoreMoHandlerMOC)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v5))
  {
    backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
    *buf = 134217984;
    v23 = backgroundStoreMoHandlerMOC;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler save", "(%p)", buf, 0xCu);
  }

  [(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC processPendingChanges];
  if ([(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC hasChanges])
  {
    v7 = self->_backgroundStoreMoHandlerMOC;
    v21 = 0;
    v8 = [(NSManagedObjectContext *)v7 save:&v21];
    v9 = v21;
    v10 = WALogCategoryDeviceStoreHandle();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_backgroundStoreMoHandlerMOC;
        *buf = 136446722;
        v23 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
        v24 = 1024;
        v25 = 151;
        v26 = 2048;
        v27 = v12;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Saved context(%p)", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_backgroundStoreMoHandlerMOC;
      localizedDescription = [v9 localizedDescription];
      userInfo = [v9 userInfo];
      *buf = 136447234;
      v23 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
      v24 = 1024;
      v25 = 149;
      v26 = 2048;
      v27 = v13;
      v28 = 2112;
      v29 = localizedDescription;
      v30 = 2112;
      v31 = userInfo;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error saving context(%p): %@ %@", buf, 0x30u);
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v16))
    {
      v17 = self->_backgroundStoreMoHandlerMOC;
      *buf = 134218240;
      v23 = v17;
      v24 = 1024;
      v25 = v8;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler save", "(%p) success:%d", buf, 0x12u);
    }
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_backgroundStoreMoHandlerMOC;
      *buf = 136446722;
      v23 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
      v24 = 1024;
      v25 = 144;
      v26 = 2048;
      v27 = v20;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No changes to be saved (%p)", buf, 0x1Cu);
    }

    v9 = 0;
    LOBYTE(v8) = 0;
  }

  if (error)
  {
LABEL_13:
    v18 = v9;
    *error = v9;
  }

LABEL_14:

  return v8;
}

- (void)resetManagedObjectContext
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_backgroundStoreMoHandlerMOC)
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
      v7 = 136446722;
      v8 = "[AnalyticsStoreMOHandler resetManagedObjectContext]";
      v9 = 1024;
      v10 = 166;
      v11 = 2048;
      v12 = backgroundStoreMoHandlerMOC;
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc reset (%p)", &v7, 0x1Cu);
    }

    v5 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler resetManagedObjectContext", "", &v7, 2u);
    }

    [(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC reset];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler resetManagedObjectContext", "", &v7, 2u);
    }
  }
}

- (void)releaseBackgroundMOC
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (self->_backgroundStoreMoHandlerMOC)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
      v6 = 136446722;
      v7 = "[AnalyticsStoreMOHandler releaseBackgroundMOC]";
      v8 = 1024;
      v9 = 177;
      v10 = 2048;
      v11 = backgroundStoreMoHandlerMOC;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc release (%p)", &v6, 0x1Cu);
    }

    [(AnalyticsStoreMOHandler *)self setBackgroundStoreMoHandlerMOC:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
  if (backgroundStoreMoHandlerMOC)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__AnalyticsStoreMOHandler_managedObjectContextSave_reset_release_withError___block_invoke;
    v10[3] = &unk_1E830E640;
    saveCopy = save;
    v10[4] = self;
    v10[5] = &v20;
    v10[6] = &v14;
    resetCopy = reset;
    releaseCopy = release;
    [(NSManagedObjectContext *)backgroundStoreMoHandlerMOC performBlockAndWait:v10];
  }

  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __76__AnalyticsStoreMOHandler_managedObjectContextSave_reset_release_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 48) + 8);
    obj = *(v3 + 40);
    v4 = [v2 saveManagedObjectContextWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) resetManagedObjectContext];
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 32) releaseBackgroundMOC];
  }
}

- (void)contextDidSave:(id)save
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136446466;
    v5 = "[AnalyticsStoreMOHandler contextDidSave:]";
    v6 = 1024;
    v7 = 210;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Notification contextDidSave NSManagedObjectContextDidSaveNotification", &v4, 0x12u);
  }
}

- (BOOL)setBssManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value
{
  v30 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  keyCopy = key;
  valueCopy = value;
  v11 = objc_autoreleasePoolPush();
  v12 = [BSSMO setBssManagedObjectPropertyValueForKey:saveCopy forKey:keyCopy withValue:valueCopy];
  if (v12)
  {
    [(AnalyticsStoreMOHandler *)self updateManagedObjectContextWithoutSave];
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      bssid = [saveCopy bssid];
      network = [saveCopy network];
      ssid = [network ssid];
      v18 = 136447490;
      v19 = "[AnalyticsStoreMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v20 = 1024;
      v21 = 223;
      v22 = 2112;
      v23 = keyCopy;
      v24 = 2112;
      v25 = bssid;
      v26 = 2112;
      v27 = ssid;
      v28 = 2112;
      v29 = valueCopy;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated BSSMO unparsedBeacon property for key:%@ for bssid:%@ ssid:%@ value:%@", &v18, 0x3Au);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446466;
      v19 = "[AnalyticsStoreMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v20 = 1024;
      v21 = 219;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed", &v18, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v11);
  return v12;
}

- (BOOL)setNetworkManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value
{
  v26 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  keyCopy = key;
  valueCopy = value;
  v11 = objc_autoreleasePoolPush();
  v12 = [NetworkMO setNetworkManagedObjectPropertyValueForKey:saveCopy forKey:keyCopy withValue:valueCopy];
  if (v12)
  {
    [(AnalyticsStoreMOHandler *)self updateManagedObjectContextWithoutSave];
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ssid = [saveCopy ssid];
      v16 = 136447234;
      v17 = "[AnalyticsStoreMOHandler setNetworkManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v18 = 1024;
      v19 = 237;
      v20 = 2112;
      v21 = keyCopy;
      v22 = 2112;
      v23 = ssid;
      v24 = 2112;
      v25 = valueCopy;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated NetworkMO channels property for key:%@ ssid:%@ value:%@", &v16, 0x30u);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446466;
      v17 = "[AnalyticsStoreMOHandler setNetworkManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v18 = 1024;
      v19 = 233;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed", &v16, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v11);
  return v12;
}

@end