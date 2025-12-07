@interface AnalyticsStoreDescriptor
+ (id)applicationSupportDirectoryPath;
+ (id)defaultModel;
+ (id)defaultModelURL;
+ (id)defaultPersistentStoreURL;
+ (id)optionDescription:(unint64_t)description;
+ (id)storeDescriptor;
- (AnalyticsStoreDescriptor)initWithStoreURL:(id)l modelURL:(id)rL;
@end

@implementation AnalyticsStoreDescriptor

+ (id)defaultModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AnalyticsStoreDescriptor_defaultModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EDE5CA78 != -1)
  {
    dispatch_once(&qword_1EDE5CA78, block);
  }

  v2 = qword_1EDE5CA80;

  return v2;
}

void __40__AnalyticsStoreDescriptor_defaultModel__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695D638]);
  v5 = [*(a1 + 32) defaultModelURL];
  v3 = [v2 initWithContentsOfURL:v5];
  v4 = qword_1EDE5CA80;
  qword_1EDE5CA80 = v3;
}

void __53__AnalyticsStoreDescriptor_defaultPersistentStoreURL__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() applicationSupportDirectoryPath];
  if (!v1)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v13 = 136446466;
    v14 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v15 = 1024;
    v16 = 202;
    v9 = "%{public}s::%d:applicationSupportDirectoryPath is nil";
    v10 = v8;
    v11 = OS_LOG_TYPE_FAULT;
    v12 = 18;
    goto LABEL_6;
  }

  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];
  v3 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v2;

  if (!qword_1EDE5CA60)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v13 = 136446722;
    v14 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v15 = 1024;
    v16 = 205;
    v17 = 2112;
    v18 = v1;
    v9 = "%{public}s::%d:defaultPersistentStoreURL is nil with path %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_FAULT;
    goto LABEL_5;
  }

  v4 = [qword_1EDE5CA60 URLByAppendingPathComponent:@"DeviceAnalyticsModel"];
  v5 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v4;

  v6 = [qword_1EDE5CA60 URLByAppendingPathExtension:@"sqlite"];
  v7 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v6;

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 136446722;
    v14 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v15 = 1024;
    v16 = 209;
    v17 = 2112;
    v18 = qword_1EDE5CA60;
    v9 = "%{public}s::%d:defaultPersistentStoreURL is %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
LABEL_5:
    v12 = 28;
LABEL_6:
    _os_log_impl(&dword_1C8460000, v10, v11, v9, &v13, v12);
  }

LABEL_7:
}

+ (id)applicationSupportDirectoryPath
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = v2;
  if (!v2)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
      v31 = 1024;
      v32 = 163;
LABEL_19:
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:NSCachesDirectory paths nil", buf, 0x12u);
    }

LABEL_20:

LABEL_8:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__AnalyticsStoreDescriptor_applicationSupportDirectoryPath__block_invoke;
    v21[3] = &unk_1E830D818;
    v21[4] = &v23;
    [WAUtil getLazyNSNumberPreference:@"applicationSupportDirectoryPathNil" domain:@"com.apple.wifi.analytics" exists:v21];
    v16 = v24[5];
    goto LABEL_12;
  }

  firstObject = [v2 firstObject];
  v5 = v24[5];
  v24[5] = firstObject;

  v6 = v24[5];
  if (!v6)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
      v31 = 1024;
      v32 = 166;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v7 = [v6 stringByAppendingPathComponent:@"com.apple.wifianalyticsd"];
  v8 = v24[5];
  v24[5] = v7;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v24[5]];

  if (v10)
  {
    goto LABEL_8;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = v24[5];
  v22 = 0;
  v13 = [defaultManager2 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v22];
  v14 = v22;

  v15 = v14 ? 0 : v13;
  if (v15)
  {
    goto LABEL_8;
  }

  v17 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v18 = v24[5];
    *buf = 136446978;
    v30 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
    v31 = 1024;
    v32 = 176;
    v33 = 2112;
    v34 = v18;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create directory at %@: %@", buf, 0x26u);
  }

  v16 = 0;
LABEL_12:

  _Block_object_dispose(&v23, 8);

  return v16;
}

+ (id)defaultModelURL
{
  if (qword_1EDE5CA68 != -1)
  {
    dispatch_once(&qword_1EDE5CA68, &__block_literal_global);
  }

  v3 = qword_1EDE5CA70;

  return v3;
}

void __43__AnalyticsStoreDescriptor_defaultModelURL__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = +[WAUtil resourcePath];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0];
  v2 = qword_1EDE5CA70;
  qword_1EDE5CA70 = v1;

  if (qword_1EDE5CA70)
  {
    v3 = [qword_1EDE5CA70 URLByAppendingPathComponent:@"DeviceAnalyticsModel"];
    v4 = qword_1EDE5CA70;
    qword_1EDE5CA70 = v3;

    v5 = [qword_1EDE5CA70 URLByAppendingPathExtension:@"momd"];
    v6 = qword_1EDE5CA70;
    qword_1EDE5CA70 = v5;

    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136446722;
      v12 = "+[AnalyticsStoreDescriptor defaultModelURL]_block_invoke";
      v13 = 1024;
      v14 = 227;
      v15 = 2112;
      v16 = qword_1EDE5CA70;
      v8 = "%{public}s::%d:defaultModelURL is %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1C8460000, v9, v10, v8, &v11, 0x1Cu);
    }
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "+[AnalyticsStoreDescriptor defaultModelURL]_block_invoke";
      v13 = 1024;
      v14 = 229;
      v15 = 2112;
      v16 = v0;
      v8 = "%{public}s::%d:ERROR defaultModelURL is nil with path %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

+ (id)storeDescriptor
{
  v2 = [AnalyticsStoreDescriptor alloc];
  v3 = +[AnalyticsStoreDescriptor defaultPersistentStoreURL];
  v4 = +[AnalyticsStoreDescriptor defaultModelURL];
  v5 = [(AnalyticsStoreDescriptor *)v2 initWithStoreURL:v3 modelURL:v4];

  return v5;
}

+ (id)defaultPersistentStoreURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AnalyticsStoreDescriptor_defaultPersistentStoreURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, block);
  }

  v2 = qword_1EDE5CA60;

  return v2;
}

+ (id)optionDescription:(unint64_t)description
{
  descriptionCopy = description;
  v4 = objc_opt_new();
  v5 = v4;
  if (descriptionCopy)
  {
    [v4 appendFormat:@"SetupXPCStore "];
  }

  if ((descriptionCopy & 2) != 0)
  {
    [v5 appendFormat:@"AllowMigration "];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithString:v5];

  return v6;
}

- (AnalyticsStoreDescriptor)initWithStoreURL:(id)l modelURL:(id)rL
{
  v61 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v9 = +[WAUtil customMigrationOnProcess];
  v10 = v9;
  v11 = @"wifianalyticsd";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = +[WAUtil customXPCStoreOnProcess];
  v14 = v13;
  v15 = @"NONE";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v50.receiver = self;
  v50.super_class = AnalyticsStoreDescriptor;
  v17 = [(AnalyticsStoreDescriptor *)&v50 init];
  v18 = v17;
  if (!lCopy)
  {
    v46 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v52 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
      v53 = 1024;
      v54 = 74;
      v47 = "%{public}s::%d:storeURL is nil";
LABEL_28:
      _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_FAULT, v47, buf, 0x12u);
    }

LABEL_29:

    v28 = 0;
    p_super = &v18->super;
    v18 = 0;
    goto LABEL_23;
  }

  if (!rLCopy)
  {
    v46 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v52 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
      v53 = 1024;
      v54 = 75;
      v47 = "%{public}s::%d:modelURL is nil";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  objc_storeStrong(&v17->_storeURL, l);
  objc_storeStrong(&v18->_modelURL, rL);
  v18->_analyticsStoreOptions = 0;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v21 = [processName isEqualToString:v12];

  if (v21)
  {
    v18->_analyticsStoreOptions |= 2uLL;
  }

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName2 = [processInfo2 processName];
  v24 = [processName2 isEqualToString:v16];

  if (v24)
  {
    v18->_analyticsStoreOptions |= 1uLL;
  }

  v25 = [objc_opt_class() optionDescription:v18->_analyticsStoreOptions];
  analyticsStoreOptionsDescription = v18->_analyticsStoreOptionsDescription;
  v18->_analyticsStoreOptionsDescription = v25;

  analyticsStoreOptions = v18->_analyticsStoreOptions;
  v28 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v18->_storeURL];
  [v28 setType:*MEMORY[0x1E695D4A8]];
  [v28 setConfiguration:@"Default"];
  [v28 setShouldInferMappingModelAutomatically:(analyticsStoreOptions >> 1) & 1];
  [v28 setShouldMigrateStoreAutomatically:(analyticsStoreOptions >> 1) & 1];
  [v28 setShouldAddStoreAsynchronously:0];
  [v28 setOption:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695D3C0]];
  [v28 setOption:&unk_1F483E158 forKey:*MEMORY[0x1E695D3D0]];
  v48 = v12;
  v49 = rLCopy;
  if (analyticsStoreOptions)
  {
    v31 = *MEMORY[0x1E695D518];
    [v28 setOption:@"com.apple.wifianalyticsd.devicestore" forKey:*MEMORY[0x1E695D518]];
    v32 = *MEMORY[0x1E695D4F8];
    v33 = v16;
    v34 = lCopy;
    v35 = MEMORY[0x1E695E118];
    [v28 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D4F8]];
    v36 = *MEMORY[0x1E695D430];
    [v28 setOption:v35 forKey:*MEMORY[0x1E695D430]];
    objc_storeStrong(&v18->_storeDescription, v28);
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSDictionary *)v37 setObject:@"com.apple.wifianalyticsd.devicestore" forKeyedSubscript:v31];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:*MEMORY[0x1E695D508]];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:v32];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:*MEMORY[0x1E695D428]];
    v38 = v35;
    lCopy = v34;
    v16 = v33;
    [(NSDictionary *)v37 setObject:v38 forKeyedSubscript:v36];
    remoteStoreOptions = v18->_remoteStoreOptions;
    v18->_remoteStoreOptions = v37;
  }

  else
  {
    v29 = v28;
    remoteStoreOptions = v18->_storeDescription;
    v18->_storeDescription = v29;
  }

  p_super = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    processInfo3 = [MEMORY[0x1E696AE30] processInfo];
    processName3 = [processInfo3 processName];
    if (v18->_remoteStoreOptions)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    shouldMigrateStoreAutomatically = [v28 shouldMigrateStoreAutomatically];
    *buf = 136447234;
    v52 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
    if (shouldMigrateStoreAutomatically)
    {
      v44 = @"YES";
    }

    else
    {
      v44 = @"NO";
    }

    v53 = 1024;
    v54 = 150;
    v55 = 2112;
    v56 = processName3;
    v57 = 2112;
    v58 = v42;
    v59 = 2112;
    v60 = v44;
    _os_log_impl(&dword_1C8460000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:processName:%@ setupXPCStore: %@ migrateIfNecessary: %@", buf, 0x30u);
  }

  v12 = v48;
  rLCopy = v49;
LABEL_23:

  return v18;
}

void __59__AnalyticsStoreDescriptor_applicationSupportDirectoryPath__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]_block_invoke";
      v8 = 1024;
      v9 = 188;
      v10 = 2080;
      v11 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]_block_invoke";
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING applicationSupportDirectoryPath to nil", &v6, 0x1Cu);
    }

    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

@end