@interface FMDExtConfigurationRegistry
+ (FMDExtConfigurationRegistry)sharedInstance;
- (BOOL)supportsAccessoryType:(id)type;
- (FMDExtConfigurationRegistry)init;
- (FMDExtConfigurationUpdatedListner)listner;
- (id)configForAccessoryType:(id)type;
- (void)_initializeFromDisk;
- (void)_updateDisk;
- (void)fetchConfigForAccessoryTypes:(id)types;
- (void)fetchSupportedAccessoryTypes;
- (void)prepareForAccessoryType:(id)type;
- (void)readDefaultConfigurations;
- (void)updateConfigurations:(id)configurations;
- (void)updateSupportedAccessoryTypes:(id)types;
@end

@implementation FMDExtConfigurationRegistry

+ (FMDExtConfigurationRegistry)sharedInstance
{
  if (qword_100314588 != -1)
  {
    sub_100226B14();
  }

  v3 = qword_100314580;

  return v3;
}

- (FMDExtConfigurationRegistry)init
{
  v20.receiver = self;
  v20.super_class = FMDExtConfigurationRegistry;
  v2 = [(FMDExtConfigurationRegistry *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDExtConfigurationRegistry.serialQueue", 0);
    [(FMDExtConfigurationRegistry *)v2 setSerialQueue:v3];

    v4 = objc_alloc_init(NSSet);
    [(FMDExtConfigurationRegistry *)v2 setSupportedAccessories:v4];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(FMDExtConfigurationRegistry *)v2 setConfigurations:v5];

    v6 = objc_alloc_init(NSDictionary);
    [(FMDExtConfigurationRegistry *)v2 setDefaultConfigurations:v6];

    v7 = objc_alloc_init(FMInternalFileContainer);
    v8 = [v7 url];
    v9 = [v8 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.extensions.configurations"];

    v11 = sub_10000BE38(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initialize configuration from location %@", buf, 0xCu);
    }

    v12 = [[FMDataArchiver alloc] initWithFileURL:v9];
    [(FMDExtConfigurationRegistry *)v2 setDataArchiver:v12];

    dataArchiver = [(FMDExtConfigurationRegistry *)v2 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDExtConfigurationRegistry *)v2 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDExtConfigurationRegistry *)v2 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    [(FMDExtConfigurationRegistry *)v2 setVersion:@"0"];
    serialQueue = [(FMDExtConfigurationRegistry *)v2 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013F8C0;
    block[3] = &unk_1002CD4C8;
    v19 = v2;
    dispatch_async(serialQueue, block);
  }

  return v2;
}

- (void)_updateDisk
{
  serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v22[0] = @"version";
  version = [(FMDExtConfigurationRegistry *)self version];
  v23[0] = version;
  v22[1] = @"supportedAccessories";
  supportedAccessories = [(FMDExtConfigurationRegistry *)self supportedAccessories];
  v23[1] = supportedAccessories;
  v22[2] = @"configurations";
  configurations = [(FMDExtConfigurationRegistry *)self configurations];
  v23[2] = configurations;
  v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v9 = sub_10000BE38(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "saving configurations to disk %@", &v20, 0xCu);
  }

  dataArchiver = [(FMDExtConfigurationRegistry *)self dataArchiver];
  v11 = [dataArchiver saveDictionary:v7];

  if (v11)
  {
    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100226B28(v11, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)_initializeFromDisk
{
  serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = objc_initWeak(&location, self);
  v5 = sub_10000BE38(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reading configurations from disk", buf, 2u);
  }

  dataArchiver = [(FMDExtConfigurationRegistry *)self dataArchiver];
  v7 = [NSSet setWithObjects:objc_opt_class(), 0];
  v25 = 0;
  v8 = [dataArchiver readDictionaryAndClasses:v7 error:&v25];
  v9 = v25;

  v10 = [FMPreferencesUtil BOOLForKey:@"doNotUseDefaultConfigs" inDomain:kFMDNotBackedUpPrefDomain];
  if (v10)
  {
    v11 = sub_10000BE38(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "not using default configs", buf, 2u);
    }
  }

  else
  {
    v13 = sub_10000BE38(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "using default configs", buf, 2u);
    }

    readDefaultConfigurations = [(FMDExtConfigurationRegistry *)self readDefaultConfigurations];
  }

  if (!v8 || v9)
  {
    v22 = sub_10000BE38(readDefaultConfigurations);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100226B94(v9, v8, v22);
    }

    v19 = dispatch_get_global_queue(0, 0);
    v20 = v19;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013FE78;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    v21 = block;
  }

  else
  {
    v14 = [v8 objectForKeyedSubscript:@"version"];
    [(FMDExtConfigurationRegistry *)self setVersion:v14];

    v15 = [v8 objectForKeyedSubscript:@"supportedAccessories"];
    [(FMDExtConfigurationRegistry *)self setSupportedAccessories:v15];

    v16 = [v8 objectForKeyedSubscript:@"configurations"];
    [(FMDExtConfigurationRegistry *)self setConfigurations:v16];

    v18 = sub_10000BE38(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "read from disk successful with result %@", buf, 0xCu);
    }

    v19 = dispatch_get_global_queue(0, 0);
    v20 = v19;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10013FE80;
    v23[3] = &unk_1002CD4C8;
    v23[4] = self;
    v21 = v23;
  }

  dispatch_async(v19, v21);

  objc_destroyWeak(&location);
}

- (void)readDefaultConfigurations
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v4 = [v3 pathForResource:@"findkit-default-configs" ofType:@"json"];

  v6 = sub_100002880(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "read from path %@", buf, 0xCu);
  }

  v7 = [NSData dataWithContentsOfFile:v4];
  selfCopy = self;
  v21 = v7;
  if (v7)
  {
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];
    v9 = sub_10000BE38(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "read from disk successful with result %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = sub_10000BE38(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "file not found at path %@", buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v8;
  v11 = [v8 objectForKeyedSubscript:@"configurations"];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [[FMDExtAccessoryConfiguration alloc] initWithConfigurationInfo:v16];
        v18 = v17;
        if (v17)
        {
          accessoryType = [(FMDExtAccessoryConfiguration *)v17 accessoryType];
          [v10 setObject:v18 forKeyedSubscript:accessoryType];
        }

        else
        {
          accessoryType = sub_10000BE38(0);
          if (os_log_type_enabled(accessoryType, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v16;
            _os_log_error_impl(&_mh_execute_header, accessoryType, OS_LOG_TYPE_ERROR, "Invalid configuration received %@", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  [(FMDExtConfigurationRegistry *)selfCopy setDefaultConfigurations:v10];
}

- (void)fetchSupportedAccessoryTypes
{
  v3 = sub_10000BE38(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fetching supported accessory type from server", v11, 2u);
  }

  v4 = +[FMDServiceProvider activeServiceProvider];
  v5 = [FMDSupportedAccessoryTypesAction alloc];
  account = [v4 account];
  serverInteractionController = [v4 serverInteractionController];
  v8 = [(FMDSupportedAccessoryTypesAction *)v5 initWithAccount:account registry:self serverInteractionController:serverInteractionController];

  v9 = +[ActionManager sharedManager];
  v10 = [v9 enqueueAction:v8];
}

- (void)fetchConfigForAccessoryTypes:(id)types
{
  typesCopy = types;
  v5 = sub_10000BE38(typesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = typesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "fetching config from server for %@", &v13, 0xCu);
  }

  v6 = +[FMDServiceProvider activeServiceProvider];
  v7 = [FMDAccessoryInfoAction alloc];
  account = [v6 account];
  serverInteractionController = [v6 serverInteractionController];
  v10 = [(FMDAccessoryInfoAction *)v7 initWithAccount:account registry:self accessoryTypes:typesCopy serverInteractionController:serverInteractionController];

  v11 = +[ActionManager sharedManager];
  v12 = [v11 enqueueAction:v10];
}

- (void)updateSupportedAccessoryTypes:(id)types
{
  typesCopy = types;
  serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100140554;
  v7[3] = &unk_1002CD478;
  v8 = typesCopy;
  selfCopy = self;
  v6 = typesCopy;
  dispatch_async(serialQueue, v7);
}

- (void)updateConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = [configurationsCopy objectForKeyedSubscript:@"configurations"];
  v6 = sub_10000BE38(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = configurationsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received configuration %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140A58;
    block[3] = &unk_1002CDD98;
    v10 = v5;
    selfCopy = self;
    v12 = v7;
    dispatch_async(serialQueue, block);
  }
}

- (BOOL)supportsAccessoryType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140FAC;
  block[3] = &unk_1002CDA70;
  v9 = typeCopy;
  v10 = &v11;
  block[4] = self;
  v6 = typeCopy;
  dispatch_sync(serialQueue, block);

  LOBYTE(typeCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return typeCopy;
}

- (id)configForAccessoryType:(id)type
{
  typeCopy = type;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A9C4;
  v16 = sub_100002AAC;
  v17 = 0;
  serialQueue = [(FMDExtConfigurationRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141194;
  block[3] = &unk_1002CD450;
  block[4] = self;
  v10 = typeCopy;
  v11 = &v12;
  v6 = typeCopy;
  dispatch_sync(serialQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)prepareForAccessoryType:(id)type
{
  typeCopy = type;
  if ([(FMDExtConfigurationRegistry *)self supportsAccessoryType:typeCopy])
  {
    v5 = [(FMDExtConfigurationRegistry *)self configForAccessoryType:typeCopy];

    if (!v5)
    {
      v7 = typeCopy;
      v6 = [NSArray arrayWithObjects:&v7 count:1];
      [(FMDExtConfigurationRegistry *)self fetchConfigForAccessoryTypes:v6];
    }
  }
}

- (FMDExtConfigurationUpdatedListner)listner
{
  WeakRetained = objc_loadWeakRetained(&self->_listner);

  return WeakRetained;
}

@end