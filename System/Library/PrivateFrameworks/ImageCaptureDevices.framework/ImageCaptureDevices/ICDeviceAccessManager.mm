@interface ICDeviceAccessManager
+ (id)sharedAccessManager;
- (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification;
- (BOOL)captureUserIntentForControlWithBundleIdentifier:(id)identifier withNotification:(id)notification;
- (BOOL)validateBundleIdentifierInstalled:(id)installed;
- (ICDeviceAccessManager)init;
- (NSArray)allBundleIdentifiers;
- (NSArray)bundleIdentifiersAccessingExternalCameras;
- (NSArray)bundleIdentifiersAccessingExternalCamerasWithStatus;
- (id)bundleIdentifiersWithAccessType:(id)type;
- (int)openDB:(id)b;
- (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(id)type;
- (unint64_t)connection:(id)connection stateForAccessType:(id)type;
- (void)addBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)displayAlertForApplication:(id)application withNotification:(id)notification completionBlock:(id)block;
- (void)displayAlertForControlWithNotification:(id)notification completionBlock:(id)block;
- (void)revokeBundleIdentifier:(id)identifier;
- (void)updateApplicationWithBundleIdentifier:(id)identifier withStatus:(BOOL)status;
- (void)updateBundleIdentifier:(id)identifier accessType:(id)type withState:(unint64_t)state;
@end

@implementation ICDeviceAccessManager

- (ICDeviceAccessManager)init
{
  v18.receiver = self;
  v18.super_class = ICDeviceAccessManager;
  v2 = [(ICDeviceAccessManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ICDeviceAccessManagerQueue", 0);
    deviceAccessQueue = v2->_deviceAccessQueue;
    v2->_deviceAccessQueue = v3;

    v5 = dispatch_semaphore_create(0);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    deviceAccessQueue = [(ICDeviceAccessManager *)v2 deviceAccessQueue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __29__ICDeviceAccessManager_init__block_invoke;
    block[3] = &unk_29F380F70;
    v2 = v2;
    v11 = v2;
    v13 = &v14;
    v7 = v5;
    v12 = v7;
    dispatch_async(deviceAccessQueue, block);

    v8 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v7, v8);
    if ((v15[3] & 1) == 0)
    {

      v2 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v2;
}

void __29__ICDeviceAccessManager_init__block_invoke(uint64_t a1)
{
  v2 = [@"/var/mobile/Library/com.apple.imagecapture" stringByAppendingPathComponent:@"externalDeviceAccess.db"];
  v3 = [MEMORY[0x29EDB9FB8] defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/com.apple.imagecapture"];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x29EDB9FB8] defaultManager];
    v15 = 0;
    [v5 createDirectoryAtPath:@"/var/mobile/Library/com.apple.imagecapture" withIntermediateDirectories:0 attributes:0 error:&v15];
  }

  v6 = [*(a1 + 32) openDB:v2];
  if (v6)
  {
    __ICOSLogCreate(v6, v7);
    v8 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v9 = [@"icaccess" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to open/create database"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  else
  {
    errmsg = 0;
    v11 = sqlite3_exec([*(a1 + 32) externalMediaAccessDB], "CREATE TABLE IF NOT EXISTS external_device_access (ID INTEGER PRIMARY KEY AUTOINCREMENT, bundle_id TEXT, date_added INTEGER, read_access INTEGER, write_access INTEGER, control_informed INTEGER)", 0, 0, &errmsg);
    if (!v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_14;
    }

    __ICOSLogCreate(v11, v12);
    v8 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v13 = [@"icaccess" substringWithRange:{0, 18}];
      v8 = [v13 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to create table: external_device_access - %s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (int)openDB:(id)b
{
  bCopy = b;
  uTF8String = [b UTF8String];

  return sqlite3_open(uTF8String, &self->_externalMediaAccessDB);
}

- (void)dealloc
{
  v3 = sqlite3_close(self->_externalMediaAccessDB);
  if (v3)
  {
    __ICOSLogCreate(v3, v4);
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to close database"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  v8.receiver = self;
  v8.super_class = ICDeviceAccessManager;
  [(ICDeviceAccessManager *)&v8 dealloc];
}

+ (id)sharedAccessManager
{
  if (sharedAccessManager_onceToken != -1)
  {
    +[ICDeviceAccessManager sharedAccessManager];
  }

  v3 = sharedAccessManager_mgr;

  return v3;
}

uint64_t __44__ICDeviceAccessManager_sharedAccessManager__block_invoke()
{
  v0 = objc_alloc_init(ICDeviceAccessManager);
  v1 = sharedAccessManager_mgr;
  sharedAccessManager_mgr = v0;

  return MEMORY[0x2A1C71028](v0, v1);
}

- (NSArray)bundleIdentifiersAccessingExternalCameras
{
  v43 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    __ICOSLogCreate(v3, v4);
    if ([@"☀️ TCC" length] < 0x15)
    {
      v6 = @"☀️ TCC";
    }

    else
    {
      v5 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v6 = [v5 stringByAppendingString:@".."];
    }

    v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v15 = _gICOSLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v6;
      uTF8String = [(__CFString *)v6 UTF8String];
      *buf = 136446466;
      v40 = uTF8String;
      v41 = 2114;
      v42 = v14;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v18 = dispatch_semaphore_create(0);
    v7 = tcc_server_create();
    v19 = tcc_service_singleton_for_CF_name();
    v26 = MEMORY[0x29EDCA5F8];
    v27 = 3221225472;
    v28 = __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke;
    v29 = &unk_29F380F98;
    v31 = &v32;
    v13 = v18;
    v30 = v13;
    tcc_server_message_get_authorization_records_by_service();

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"read_access"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v7 = v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = v33[5];
          v12 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:{@"bundle_id", v22}];
          [v11 addObject:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v38 count:16];
      }

      while (v8);
    }

    v13 = v7;
  }

  v20 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v20;
}

void __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_18:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_19;
    }
  }

  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_subject_attributed_entity();
  if (v7)
  {
    path = tcc_attributed_entity_get_path();
    __ICOSLogCreate(path, v9);
    v10 = @"entity";
    if ([@"entity" length] >= 0x15)
    {
      v11 = [@"entity" substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", path];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v10;
      v15 = v13;
      *buf = 136446466;
      v31 = [(__CFString *)v10 UTF8String];
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v16 = tcc_authorization_record_get_subject_identity();
  identifier = tcc_identity_get_identifier();
  if (identifier)
  {
    v18 = identifier;
    authorization_value = tcc_authorization_record_get_authorization_value();
    __ICOSLogCreate(authorization_value, v20);
    v21 = @"value";
    if ([@"value" length] >= 0x15)
    {
      v22 = [@"value" substringWithRange:{0, 18}];
      v21 = [v22 stringByAppendingString:@".."];
    }

    v23 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle:%s -- value: %llu", v18, authorization_value];
    v24 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v21;
      v26 = v24;
      v27 = [(__CFString *)v21 UTF8String];
      *buf = 136446466;
      v31 = v27;
      v32 = 2114;
      v33 = v23;
      _os_log_impl(&dword_29EB58000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v28 = *(*(*(a1 + 40) + 8) + 40);
    v29 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v18];
    [v28 addObject:v29];
  }

LABEL_19:
}

- (void)updateApplicationWithBundleIdentifier:(id)identifier withStatus:(BOOL)status
{
  statusCopy = status;
  v58 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v7 = _os_feature_enabled_impl();
  if (v7)
  {
    __ICOSLogCreate(v7, v8);
    v9 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v10 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v9 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v15 = dispatch_semaphore_create(0);
    statusCopy3 = tcc_server_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v57 = 1;
    v17 = identifierCopy;
    [identifierCopy UTF8String];
    v18 = tcc_identity_create();
    v19 = v15;
    tcc_server_message_get_authorization_records_by_identity();
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    v20 = *(*&buf[8] + 24);
    if (v20 <= 4 && ((1 << v20) & 0x15) != 0)
    {
      v21 = tcc_service_singleton_for_CF_name();
      tcc_server_message_set_authorization_value();
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_41;
  }

  v22 = [(ICDeviceAccessManager *)self bundleIdentifier:identifierCopy stateForAccessType:@"write_access"];
  v23 = [(ICDeviceAccessManager *)self bundleIdentifier:identifierCopy stateForAccessType:@"read_access"];
  v25 = v23;
  if (v22)
  {
    if (statusCopy)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = [(ICDeviceAccessManager *)self updateBundleIdentifier:identifierCopy accessType:@"write_access" withState:v26];
    __ICOSLogCreate(v27, v28);
    v29 = @"PrivacySettings";
    if ([@"PrivacySettings" length] >= 0x15)
    {
      v30 = [@"PrivacySettings" substringWithRange:{0, 18}];
      v29 = [v30 stringByAppendingString:@".."];
    }

    statusCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ Setting (write) Access State %d", identifierCopy, statusCopy];
    v32 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:
      v34 = v29;
      v35 = v32;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v29 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = statusCopy;
      _os_log_impl(&dword_29EB58000, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    __ICOSLogCreate(v23, v24);
    v29 = @"PrivacySettings";
    if ([@"PrivacySettings" length] >= 0x15)
    {
      v33 = [@"PrivacySettings" substringWithRange:{0, 18}];
      v29 = [v33 stringByAppendingString:@".."];
    }

    statusCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ (write) Access State Unknown, not updating", identifierCopy];
    v32 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  if (v25)
  {
    if (statusCopy)
    {
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }

    v39 = [(ICDeviceAccessManager *)self updateBundleIdentifier:identifierCopy accessType:@"read_access" withState:v38];
    __ICOSLogCreate(v39, v40);
    if ([@"PrivacySettings" length] < 0x15)
    {
      v42 = @"PrivacySettings";
    }

    else
    {
      v41 = [@"PrivacySettings" substringWithRange:{0, 18}];
      v42 = [v41 stringByAppendingString:@".."];
    }

    statusCopy2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ Setting (read) Access State %d", identifierCopy, statusCopy];
    v45 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_35:
      v46 = v42;
      v47 = v45;
      uTF8String = [(__CFString *)v42 UTF8String];
      *buf = 136446466;
      *&buf[4] = uTF8String;
      *&buf[12] = 2114;
      *&buf[14] = statusCopy2;
      _os_log_impl(&dword_29EB58000, v47, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    __ICOSLogCreate(v36, v37);
    if ([@"PrivacySettings" length] < 0x15)
    {
      v42 = @"PrivacySettings";
    }

    else
    {
      v43 = [@"PrivacySettings" substringWithRange:{0, 18}];
      v42 = [v43 stringByAppendingString:@".."];
    }

    statusCopy2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ (read) Access State Unknown, not updating", identifierCopy];
    v45 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  __ICOSLogCreate(v49, v50);
  if ([@"DEPRECATED" length] < 0x15)
  {
    v19 = @"DEPRECATED";
  }

  else
  {
    v51 = [@"DEPRECATED" substringWithRange:{0, 18}];
    v19 = [v51 stringByAppendingString:@".."];
  }

  statusCopy3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"updateApplicationWithBundleIdentifier:%@ withStatus:%d", identifierCopy, statusCopy];
  v52 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v19;
    v54 = v52;
    uTF8String2 = [v19 UTF8String];
    *buf = 136446466;
    *&buf[4] = uTF8String2;
    *&buf[12] = 2114;
    *&buf[14] = statusCopy3;
    _os_log_impl(&dword_29EB58000, v54, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_41:
}

void __74__ICDeviceAccessManager_updateApplicationWithBundleIdentifier_withStatus___block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_service();
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:tcc_service_get_name()];
  v9 = [v8 isEqualToString:*MEMORY[0x29EDC6F20]];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_value();
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_9:
}

- (NSArray)bundleIdentifiersAccessingExternalCamerasWithStatus
{
  v105 = *MEMORY[0x29EDCA608];
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__0;
  v97 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    __ICOSLogCreate(v2, v3);
    if ([@"☀️ TCC" length] < 0x15)
    {
      v5 = @"☀️ TCC";
    }

    else
    {
      v4 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];
    }

    v63 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v64 = _gICOSLog;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v5;
      uTF8String = [(__CFString *)v5 UTF8String];
      *buf = 136446466;
      v102 = uTF8String;
      v103 = 2114;
      v104 = v63;
      _os_log_impl(&dword_29EB58000, v64, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v67 = dispatch_semaphore_create(0);
    v78 = tcc_server_create();
    v68 = tcc_service_singleton_for_CF_name();
    v87 = MEMORY[0x29EDCA5F8];
    v88 = 3221225472;
    v89 = __76__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCamerasWithStatus__block_invoke;
    v90 = &unk_29F380F98;
    v92 = &v93;
    obj = v67;
    v91 = obj;
    tcc_server_message_get_authorization_records_by_service();

    dispatch_semaphore_wait(obj, 0xFFFFFFFFFFFFFFFFLL);
    v62 = obj;
    goto LABEL_54;
  }

  [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"read_access"];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  obj = v84 = 0u;
  v6 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v6)
  {
    v77 = *v84;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v84 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v83 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"read_access"];
        intValue = [v9 intValue];

        if (intValue == 1)
        {
          v13 = 0;
          goto LABEL_13;
        }

        if (intValue == 2)
        {
          v13 = 1;
LABEL_13:
          dictionary = [MEMORY[0x29EDB8E00] dictionary];
          v15 = [MEMORY[0x29EDBA070] numberWithBool:v13];
          [(__CFString *)dictionary setObject:v15 forKeyedSubscript:@"whitelisted"];

          v16 = [v8 objectForKeyedSubscript:@"bundle_id"];
          [(__CFString *)dictionary setObject:v16 forKeyedSubscript:@"bundle_id"];

          v17 = [v94[5] addObject:dictionary];
          __ICOSLogCreate(v17, v18);
          v19 = @"PrivacySettings";
          if ([@"PrivacySettings" length] >= 0x15)
          {
            v20 = [@"PrivacySettings" substringWithRange:{0, 18}];
            v19 = [v20 stringByAppendingString:@".."];
          }

          v21 = MEMORY[0x29EDBA0F8];
          v22 = [v8 objectForKeyedSubscript:@"bundle_id"];
          v23 = [v21 stringWithFormat:@"%@ (read) Access State %d, adding", v22, v13];

          v24 = _gICOSLog;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v19;
            uTF8String2 = [(__CFString *)v19 UTF8String];
            *buf = 136446466;
            v102 = uTF8String2;
            v103 = 2114;
            v104 = v23;
            _os_log_impl(&dword_29EB58000, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          goto LABEL_22;
        }

        __ICOSLogCreate(v11, v12);
        dictionary = @"PrivacySettings";
        if ([@"PrivacySettings" length] >= 0x15)
        {
          v27 = [@"PrivacySettings" substringWithRange:{0, 18}];
          dictionary = [v27 stringByAppendingString:@".."];
        }

        v28 = MEMORY[0x29EDBA0F8];
        v29 = [v8 objectForKeyedSubscript:@"bundle_id"];
        v19 = [v28 stringWithFormat:@"%@ (read) Access State Unknown, not adding", v29];

        v23 = _gICOSLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = dictionary;
          uTF8String3 = [(__CFString *)dictionary UTF8String];
          *buf = 136446466;
          v102 = uTF8String3;
          v103 = 2114;
          v104 = v19;
          _os_log_impl(&dword_29EB58000, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v6);
  }

  [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"write_access"];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v78 = v80 = 0u;
  v32 = [v78 countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (!v32)
  {
    goto LABEL_44;
  }

  v33 = *v80;
  do
  {
    for (j = 0; j != v32; ++j)
    {
      if (*v80 != v33)
      {
        objc_enumerationMutation(v78);
      }

      v35 = *(*(&v79 + 1) + 8 * j);
      v36 = [v35 objectForKeyedSubscript:@"write_access"];
      intValue2 = [v36 intValue];

      if (intValue2 == 1)
      {
        v40 = 0;
        goto LABEL_33;
      }

      if (intValue2 == 2)
      {
        v40 = 1;
LABEL_33:
        dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
        v42 = [MEMORY[0x29EDBA070] numberWithBool:v40];
        [(__CFString *)dictionary2 setObject:v42 forKeyedSubscript:@"whitelisted"];

        v43 = [v35 objectForKeyedSubscript:@"bundle_id"];
        [(__CFString *)dictionary2 setObject:v43 forKeyedSubscript:@"bundle_id"];

        v44 = [v94[5] addObject:dictionary2];
        __ICOSLogCreate(v44, v45);
        v46 = @"PrivacySettings";
        if ([@"PrivacySettings" length] >= 0x15)
        {
          v47 = [@"PrivacySettings" substringWithRange:{0, 18}];
          v46 = [v47 stringByAppendingString:@".."];
        }

        v48 = MEMORY[0x29EDBA0F8];
        v49 = [v35 objectForKeyedSubscript:@"bundle_id"];
        v50 = [v48 stringWithFormat:@"%@ (write) Access State %d, adding", v49, v40];

        v51 = _gICOSLog;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v46;
          uTF8String4 = [(__CFString *)v46 UTF8String];
          *buf = 136446466;
          v102 = uTF8String4;
          v103 = 2114;
          v104 = v50;
          _os_log_impl(&dword_29EB58000, v51, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        goto LABEL_42;
      }

      __ICOSLogCreate(v38, v39);
      dictionary2 = @"PrivacySettings";
      if ([@"PrivacySettings" length] >= 0x15)
      {
        v54 = [@"PrivacySettings" substringWithRange:{0, 18}];
        dictionary2 = [v54 stringByAppendingString:@".."];
      }

      v55 = MEMORY[0x29EDBA0F8];
      v56 = [v35 objectForKeyedSubscript:@"bundle_id"];
      v46 = [v55 stringWithFormat:@"%@ (write) Access State Unknown, not adding", v56];

      v50 = _gICOSLog;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v57 = dictionary2;
        uTF8String5 = [(__CFString *)dictionary2 UTF8String];
        *buf = 136446466;
        v102 = uTF8String5;
        v103 = 2114;
        v104 = v46;
        _os_log_impl(&dword_29EB58000, v50, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

LABEL_42:
    }

    v32 = [v78 countByEnumeratingWithState:&v79 objects:v99 count:16];
  }

  while (v32);
LABEL_44:

  __ICOSLogCreate(v59, v60);
  if ([@"DEPRECATED" length] < 0x15)
  {
    v62 = @"DEPRECATED";
  }

  else
  {
    v61 = [@"DEPRECATED" substringWithRange:{0, 18}];
    v62 = [v61 stringByAppendingString:@".."];
  }

  v69 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"bundleIdentifiersAccessingExternalCamerasWithStatus: %@", v94[5]];
  v70 = _gICOSLog;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = v62;
    uTF8String6 = [(__CFString *)v62 UTF8String];
    *buf = 136446466;
    v102 = uTF8String6;
    v103 = 2114;
    v104 = v69;
    _os_log_impl(&dword_29EB58000, v70, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_54:
  v73 = v94[5];
  _Block_object_dispose(&v93, 8);

  return v73;
}

void __76__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCamerasWithStatus__block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v38 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_26:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_27;
    }
  }

  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_subject_attributed_entity();
  if (v7)
  {
    path = tcc_attributed_entity_get_path();
    __ICOSLogCreate(path, v9);
    v10 = @"entity";
    if ([@"entity" length] >= 0x15)
    {
      v11 = [@"entity" substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", path];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v10;
      v15 = v13;
      *buf = 136446466;
      v35 = [(__CFString *)v10 UTF8String];
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v16 = tcc_authorization_record_get_subject_identity();
  identifier = tcc_identity_get_identifier();
  if (identifier)
  {
    v18 = identifier;
    authorization_value = tcc_authorization_record_get_authorization_value();
    if (authorization_value <= 4)
    {
      v21 = authorization_value;
      if (((1 << authorization_value) & 0x15) != 0)
      {
        v23 = authorization_value == 4 || authorization_value == 2;
        __ICOSLogCreate(authorization_value, v20);
        v24 = @"value";
        if ([@"value" length] >= 0x15)
        {
          v25 = [@"value" substringWithRange:{0, 18}];
          v24 = [v25 stringByAppendingString:@".."];
        }

        v26 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle:%s -- value: %llu", v18, v21];
        v27 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v24;
          v29 = v27;
          v30 = [(__CFString *)v24 UTF8String];
          *buf = 136446466;
          v35 = v30;
          v36 = 2114;
          v37 = v26;
          _os_log_impl(&dword_29EB58000, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v31 = [MEMORY[0x29EDB8E00] dictionary];
        v32 = [MEMORY[0x29EDBA070] numberWithBool:v23];
        [v31 setObject:v32 forKeyedSubscript:@"whitelisted"];

        v33 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v18];
        [v31 setObject:v33 forKeyedSubscript:@"bundle_id"];

        [*(*(*(a1 + 40) + 8) + 40) addObject:v31];
      }
    }
  }

LABEL_27:
}

- (NSArray)allBundleIdentifiers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v3 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__ICDeviceAccessManager_allBundleIdentifiers__block_invoke;
  block[3] = &unk_29F380F70;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_async(deviceAccessQueue, block);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __45__ICDeviceAccessManager_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  errmsg = 0;
  v3 = sqlite3_exec([*(a1 + 32) externalMediaAccessDB], objc_msgSend(@"SELECT bundle_id FROM external_device_access;", "UTF8String"), ICAcessQuery, v2, &errmsg);
  if (v3)
  {
    __ICOSLogCreate(v3, v4);
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)addBundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v5 = _os_feature_enabled_impl();
  if (!v5)
  {
    allBundleIdentifiers = [(ICDeviceAccessManager *)self allBundleIdentifiers];
    v13 = [(__CFString *)allBundleIdentifiers containsObject:identifierCopy];
    if (v13)
    {
      __ICOSLogCreate(v13, v14);
      v9 = @"icaccess";
      if ([@"icaccess" length] >= 0x15)
      {
        v15 = [@"icaccess" substringWithRange:{0, 18}];
        v9 = [v15 stringByAppendingString:@".."];
      }

      identifierCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ is already in the database, will not be added again", identifierCopy];
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        __29__ICDeviceAccessManager_init__block_invoke_cold_1();
      }
    }

    else
    {
      v16 = dispatch_semaphore_create(0);
      deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __45__ICDeviceAccessManager_addBundleIdentifier___block_invoke;
      block[3] = &unk_29F380FE0;
      v20 = identifierCopy;
      selfCopy = self;
      v22 = v16;
      v9 = v16;
      dispatch_async(deviceAccessQueue, block);

      v18 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v9, v18);

      identifierCopy = v20;
    }

    goto LABEL_12;
  }

  __ICOSLogCreate(v5, v6);
  allBundleIdentifiers = @"☀️ TCC";
  if ([@"☀️ TCC" length] >= 0x15)
  {
    v8 = [@"☀️ TCC" substringWithRange:{0, 18}];
    allBundleIdentifiers = [v8 stringByAppendingString:@".."];
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No work performed in new TCC path"];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = allBundleIdentifiers;
    identifierCopy = v10;
    *buf = 136446466;
    uTF8String = [(__CFString *)allBundleIdentifiers UTF8String];
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_29EB58000, identifierCopy, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
LABEL_12:
  }
}

void __45__ICDeviceAccessManager_addBundleIdentifier___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x29EDB8DB0] date];
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  [v6 timeIntervalSince1970];
  v5 = [v2 stringWithFormat:@"INSERT INTO external_device_access(bundle_id, date_added, read_access, write_access, control_informed) VALUES ('%@', %lu, %lu, %lu, %lu)", v3, v4, 0, 0, 0];;
  sqlite3_exec([*(a1 + 40) externalMediaAccessDB], objc_msgSend(v5, "UTF8String"), 0, 0, 0);
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)updateBundleIdentifier:(id)identifier accessType:(id)type withState:(unint64_t)state
{
  v42 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  typeCopy = type;
  v10 = _os_feature_enabled_impl();
  if (typeCopy == @"control_informed" || !v10)
  {
    v25 = dispatch_semaphore_create(0);
    deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke_2;
    block[3] = &unk_29F381008;
    v29 = typeCopy;
    stateCopy = state;
    v30 = identifierCopy;
    selfCopy = self;
    v32 = v25;
    v22 = v25;
    dispatch_async(deviceAccessQueue, block);

    v27 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v22, v27);

    v19 = v29;
  }

  else
  {
    __ICOSLogCreate(v10, v11);
    v12 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v13 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v12 = [v13 stringByAppendingString:@".."];
    }

    v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12;
      v17 = v15;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v12 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_29EB58000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v18 = dispatch_semaphore_create(0);
    v19 = tcc_server_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 1;
    v20 = identifierCopy;
    [identifierCopy UTF8String];
    v21 = tcc_identity_create();
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 3221225472;
    v36 = __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke;
    v37 = &unk_29F380F98;
    v39 = buf;
    v22 = v18;
    v38 = v22;
    tcc_server_message_get_authorization_records_by_identity();
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    v23 = *(*&buf[8] + 24);
    if (v23 <= 4 && ((1 << v23) & 0x15) != 0)
    {
      v24 = tcc_service_singleton_for_CF_name();
      tcc_server_message_set_authorization_value();
    }

    _Block_object_dispose(buf, 8);
  }
}

void __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_service();
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:tcc_service_get_name()];
  v9 = [v8 isEqualToString:*MEMORY[0x29EDC6F20]];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_value();
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_9:
}

void __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"UPDATE external_device_access SET %@ = %lu WHERE bundle_id = '%@'", *(a1 + 32), *(a1 + 64), *(a1 + 40)];;
  errmsg = 0;
  v3 = sqlite3_exec([*(a1 + 48) externalMediaAccessDB], objc_msgSend(v2, "UTF8String"), 0, 0, &errmsg);
  if (v3)
  {
    __ICOSLogCreate(v3, v4);
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)bundleIdentifiersWithAccessType:(id)type
{
  typeCopy = type;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v5 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __57__ICDeviceAccessManager_bundleIdentifiersWithAccessType___block_invoke;
  v12[3] = &unk_29F381030;
  v13 = typeCopy;
  selfCopy = self;
  v15 = v5;
  v16 = &v17;
  v7 = v5;
  v8 = typeCopy;
  dispatch_async(deviceAccessQueue, v12);

  v9 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v7, v9);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __57__ICDeviceAccessManager_bundleIdentifiersWithAccessType___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"SELECT bundle_id, %@ FROM external_device_access", *(a1 + 32)];;
  v4 = [v3 UTF8String];

  errmsg = 0;
  v5 = sqlite3_exec([*(a1 + 40) externalMediaAccessDB], v4, ICAcessStatusQuery, v2, &errmsg);
  if (v5)
  {
    __ICOSLogCreate(v5, v6);
    v7 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v8 = [@"icaccess" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (unint64_t)connection:(id)connection stateForAccessType:(id)type
{
  connectionCopy = connection;
  typeCopy = type;
  v8 = xpc_connection_copy_entitlement_value();
  v9 = v8;
  if (v8 && xpc_BOOL_get_value(v8))
  {
    v10 = 2;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    xpc_connection_get_audit_token();
    v11 = *MEMORY[0x29EDB8ED8];
    memset(&v16, 0, sizeof(v16));
    v12 = SecTaskCreateWithAuditToken(v11, &v16);
    if (v12)
    {
      v13 = v12;
      *v16.val = 0;
      v14 = SecTaskCopySigningIdentifier(v12, &v16);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    v10 = [(ICDeviceAccessManager *)self bundleIdentifier:v14 stateForAccessType:typeCopy];
  }

  return v10;
}

- (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(id)type
{
  v26 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  typeCopy = type;
  v8 = _os_feature_enabled_impl();
  v20 = typeCopy;
  if (typeCopy == @"control_informed" || (v8 & 1) == 0)
  {
    [(ICDeviceAccessManager *)self validateBundleIdentifierInstalled:identifierCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:typeCopy];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      intValue = 0;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"bundle_id"];
          v17 = [v16 isEqualToString:identifierCopy];

          if (v17)
          {
            v18 = [v15 objectForKeyedSubscript:v20];
            intValue = [v18 intValue];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)revokeBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  __ICOSLogCreate(identifierCopy, v5);
  v6 = @"icaccess";
  if ([@"icaccess" length] >= 0x15)
  {
    v7 = [@"icaccess" substringWithRange:{0, 18}];
    v6 = [v7 stringByAppendingString:@".."];
  }

  identifierCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Revoking Application BundleID %@", identifierCopy];
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
  {
    __29__ICDeviceAccessManager_init__block_invoke_cold_1();
  }

  v9 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __48__ICDeviceAccessManager_revokeBundleIdentifier___block_invoke;
  block[3] = &unk_29F380FE0;
  v15 = identifierCopy;
  selfCopy = self;
  v17 = v9;
  v11 = v9;
  v12 = identifierCopy;
  dispatch_async(deviceAccessQueue, block);

  v13 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v11, v13);
}

void __48__ICDeviceAccessManager_revokeBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"DELETE FROM external_device_access WHERE bundle_id IS '%@'", *(a1 + 32)];;
  errmsg = 0;
  v3 = sqlite3_exec([*(a1 + 40) externalMediaAccessDB], objc_msgSend(v2, "UTF8String"), 0, 0, &errmsg);
  if (v3)
  {
    __ICOSLogCreate(v3, v4);
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)validateBundleIdentifierInstalled:(id)installed
{
  v49 = *MEMORY[0x29EDCA608];
  installedCopy = installed;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __59__ICDeviceAccessManager_validateBundleIdentifierInstalled___block_invoke;
  block[3] = &unk_29F381030;
  v6 = installedCopy;
  v34 = v6;
  selfCopy = self;
  v37 = &v38;
  v7 = v4;
  v36 = v7;
  dispatch_async(deviceAccessQueue, block);

  v8 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v7, v8);
  v32 = 0;
  v9 = [objc_alloc(MEMORY[0x29EDB93F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v32];
  v10 = v32;
  v26 = v10;
  if (v9 && !v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v39[5];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v48 count:{16, v26}];
    if (v13)
    {
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"bundle_id"];
          v17 = [v16 isEqualToString:v6];

          if (v17)
          {

            v24 = 1;
            goto LABEL_19;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v28 objects:v48 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  __ICOSLogCreate(v10, v11);
  if ([@"icaccess" length] < 0x15)
  {
    v19 = @"icaccess";
  }

  else
  {
    v18 = [@"icaccess" substringWithRange:{0, 18}];
    v19 = [v18 stringByAppendingString:@".."];
  }

  v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle was not found to be installed on the device, revoking access defensively to require the user to re-authorize upon install.", v26];
  v21 = _gICOSLog;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v19;
    uTF8String = [(__CFString *)v19 UTF8String];
    *buf = 136446466;
    v45 = uTF8String;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_29EB58000, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(ICDeviceAccessManager *)self revokeBundleIdentifier:v6];
  v24 = 0;
LABEL_19:

  _Block_object_dispose(&v38, 8);
  return v24;
}

void __59__ICDeviceAccessManager_validateBundleIdentifierInstalled___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"SELECT bundle_id FROM external_device_access WHERE bundle_id IS '%@'", *(a1 + 32)];;
  v4 = [v3 UTF8String];

  errmsg = 0;
  v5 = sqlite3_exec([*(a1 + 40) externalMediaAccessDB], v4, ICAcessStatusQuery, *(*(*(a1 + 56) + 8) + 40), &errmsg);
  if (v5)
  {
    __ICOSLogCreate(v5, v6);
    v7 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v8 = [@"icaccess" substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)displayAlertForApplication:(id)application withNotification:(id)notification completionBlock:(id)block
{
  blockCopy = block;
  error = 0;
  v7 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, &error, notification);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    CFUserNotificationReceiveResponse(v7, 0.0, &v9);
    blockCopy[2](blockCopy, 1, v9);
    CFRelease(v8);
  }
}

- (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification
{
  identifierCopy = identifier;
  notificationCopy = notification;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (notificationCopy)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = +[ICDeviceAccessManager sharedAccessManager];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __79__ICDeviceAccessManager_captureUserIntentForBundleIdentifier_withNotification___block_invoke;
    v12[3] = &unk_29F381058;
    v14 = &v15;
    v9 = v7;
    v13 = v9;
    [v8 displayAlertForApplication:identifierCopy withNotification:notificationCopy completionBlock:v12];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

- (void)displayAlertForControlWithNotification:(id)notification completionBlock:(id)block
{
  blockCopy = block;
  error = 0;
  v6 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, &error, notification);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    CFUserNotificationReceiveResponse(v6, 0.0, &v8);
    blockCopy[2](blockCopy, 1, v8);
    CFRelease(v7);
  }
}

- (BOOL)captureUserIntentForControlWithBundleIdentifier:(id)identifier withNotification:(id)notification
{
  identifierCopy = identifier;
  notificationCopy = notification;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (notificationCopy)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = +[ICDeviceAccessManager sharedAccessManager];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __90__ICDeviceAccessManager_captureUserIntentForControlWithBundleIdentifier_withNotification___block_invoke;
    v12[3] = &unk_29F381058;
    v14 = &v15;
    v9 = v7;
    v13 = v9;
    [v8 displayAlertForControlWithNotification:notificationCopy completionBlock:v12];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

void __29__ICDeviceAccessManager_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_29EB58000, v4, v5, "%{public}20s ! %{public}@", v6, v7, v8, v9);
}

void __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_29EB58000, MEMORY[0x29EDCA988], v2, "tcc_server_message_get_authorization_records_by_service error %@", v3, v4, v5, v6);
}

@end