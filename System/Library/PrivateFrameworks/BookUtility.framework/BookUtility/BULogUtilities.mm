@interface BULogUtilities
+ (id)shared;
- (BOOL)verboseLoggingEnabled;
- (BULogUtilities)init;
- (BULogUtilities)initWithUserDefaults:(id)defaults keyPath:(id)path;
- (void)dealloc;
- (void)observeDefaults;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BULogUtilities

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DA98F4;
  block[3] = &unk_278D1CD30;
  block[4] = self;
  if (qword_280BC5DA8 != -1)
  {
    dispatch_once(&qword_280BC5DA8, block);
  }

  v2 = qword_280BC5DB0;

  return v2;
}

- (BULogUtilities)init
{
  v4 = objc_msgSend_books(BUAppGroup, a2, v2);
  v7 = objc_msgSend_userDefaults(v4, v5, v6);

  v9 = objc_msgSend_initWithUserDefaults_keyPath_(self, v8, v7, @"buVerboseLoggingEnabled");
  return v9;
}

- (void)observeDefaults
{
  v8 = objc_msgSend_defaults(self, a2, v2);
  v6 = objc_msgSend_keyPath(self, v4, v5);
  objc_msgSend_addObserver_forKeyPath_options_context_(v8, v7, self, v6, 5, 0);
}

- (BOOL)verboseLoggingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DA9C40;
  v5[3] = &unk_278D1CE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BULogUtilities)initWithUserDefaults:(id)defaults keyPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = BULogUtilities;
  v8 = [(BULogUtilities *)&v31 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setDefaults_(v8, v9, defaultsCopy);
    objc_msgSend_setKeyPath_(v10, v11, pathCopy);
    v14 = objc_msgSend_defaults(v10, v12, v13);
    v16 = objc_msgSend_BOOLForKey_(v14, v15, pathCopy);
    objc_msgSend_setBuVerboseLoggingEnabled_(v10, v17, v16);

    v18 = dispatch_queue_create("BULogUtilities.access", MEMORY[0x277D85CD8]);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v18;

    v22 = objc_msgSend_observeDefaults(v10, v20, v21);
    v23 = BookUtilityLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_msgSend_keyPath(v10, v24, v25);
      v29 = objc_msgSend_buVerboseLoggingEnabled(v10, v27, v28);
      *buf = 138412546;
      v33 = v26;
      v34 = 1024;
      v35 = v29;
      _os_log_impl(&dword_241DA6000, v23, OS_LOG_TYPE_DEFAULT, "BULogUtilities: Init with %@:%{BOOL}d", buf, 0x12u);
    }
  }

  return v10;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaults(self, a2, v2);
  v7 = objc_msgSend_keyPath(self, v5, v6);
  objc_msgSend_removeObserver_forKeyPath_(v4, v8, self, v7);

  v9.receiver = self;
  v9.super_class = BULogUtilities;
  [(BULogUtilities *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v34 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  pathCopy = path;
  v10 = objc_opt_class();
  v12 = objc_msgSend_objectForKeyedSubscript_(changeCopy, v11, *MEMORY[0x277CCA2F0]);

  v13 = BUDynamicCast(v10, v12);
  v16 = objc_msgSend_BOOLValue(v13, v14, v15);

  v18 = BookUtilityLog(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_keyPath(self, v19, v20);
    *buf = 138412546;
    v31 = v21;
    v32 = 1024;
    v33 = v16;
    _os_log_impl(&dword_241DA6000, v18, OS_LOG_TYPE_DEFAULT, "BULogUtilities: Received change for keypath %@:%{BOOL}d", buf, 0x12u);
  }

  v24 = objc_msgSend_keyPath(self, v22, v23);
  isEqualToString = objc_msgSend_isEqualToString_(pathCopy, v25, v24);

  if (isEqualToString)
  {
    accessQueue = self->_accessQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_241DB5574;
    v28[3] = &unk_278D1D280;
    v28[4] = self;
    v29 = v16;
    dispatch_barrier_sync(accessQueue, v28);
  }
}

@end