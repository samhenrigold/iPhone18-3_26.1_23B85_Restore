@interface WBSSafariExtensionsConfigurationAdapter
- (BOOL)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error;
- (BOOL)removeCombinedConfigurationForScope:(int64_t)scope error:(id *)error;
- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation WBSSafariExtensionsConfigurationAdapter

- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error
{
  v4 = sub_100000F14(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Getting applied extensions configurations", v11, 2u);
  }

  v5 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5];

  if (v6)
  {
    v7 = [v6 safari_arrayForKey:WBSManagedExtensionsDeclarationKeysKey];
    v8 = [v7 safari_mapAndFilterObjectsUsingBlock:&stru_1000082A0];
    v9 = [NSSet setWithArray:v8];
  }

  else
  {
    v9 = +[NSSet set];
  }

  return v9;
}

- (BOOL)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error
{
  keysCopy = keys;
  configurationCopy = configuration;
  v12 = sub_100000F14(configurationCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Applying extensions configuration", v23, 2u);
  }

  v13 = [configurationCopy serializeWithType:0];

  v14 = &__NSDictionary0__struct;
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:v15 forKeyedSubscript:WBSManagedExtensionSettingsKey];

  allObjects = [keysCopy allObjects];

  v18 = [allObjects safari_mapAndFilterObjectsUsingBlock:&stru_1000082E0];
  [v16 setObject:v18 forKeyedSubscript:WBSManagedExtensionsDeclarationKeysKey];

  v19 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  v20 = [v16 writeToURL:v19 error:error];

  v21 = +[NSDistributedNotificationCenter defaultCenter];
  [v21 postNotificationName:WBSManagedExtensionsConfigurationDidChangeNotification object:0 userInfo:0 deliverImmediately:1];

  return v20;
}

- (BOOL)removeCombinedConfigurationForScope:(int64_t)scope error:(id *)error
{
  v5 = sub_100000F14(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing extensions configuration", buf, 2u);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  path = [v7 path];
  v9 = [v6 fileExistsAtPath:path];

  if (v9)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
    v14 = [v12 removeItemAtURL:v13 error:error];

    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 postNotificationName:WBSManagedExtensionsConfigurationDidChangeNotification object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    v16 = sub_100000F14(v10, v11);
    v14 = 1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Configuration doesn't exist, removal succeeded", v18, 2u);
    }
  }

  return v14;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.SafariExtension" reference:configuration];

  return v3;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  declaration = [configuration declaration];
  v9 = sub_100000F14(declaration, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v47 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Getting extensions configuration UI for: %{public}@", buf, 0xCu);
  }

  +[NSMutableArray array];
  v38 = v37 = declaration;
  payloadManagedExtensions = [declaration payloadManagedExtensions];
  payloadDictionary = [payloadManagedExtensions payloadDictionary];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = payloadDictionary;
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
  v16 = v14;
  if (!v15)
  {
    goto LABEL_19;
  }

  v17 = v15;
  v36 = handlerCopy;
  v18 = 0;
  v19 = *v40;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v39 + 1) + 8 * i);
      v22 = [v14 objectForKeyedSubscript:v21];
      payloadState = [v22 payloadState];
      v24 = sub_1000017FC(payloadState);

      if (v24)
      {
        if ([v21 isEqualToString:@"*"])
        {
          v18 = 1;
        }

        else
        {
          v25 = [v21 componentsSeparatedByString:@" "];
          firstObject = [v25 firstObject];

          v44[0] = firstObject;
          v44[1] = v24;
          v27 = [NSArray arrayWithObjects:v44 count:2];
          [v38 addObject:v27];
        }
      }
    }

    v17 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v17);

  handlerCopy = v36;
  if (v18)
  {
    if ([v38 count])
    {
      WBSManagedExtensionsConfigurationDisplayAllOtherExtensionsText();
    }

    else
    {
      WBSManagedExtensionsConfigurationDisplayAllExtensionsText();
    }
    v16 = ;
    v28 = [v14 objectForKeyedSubscript:@"*"];
    payloadState2 = [v28 payloadState];
    v30 = sub_1000017FC(payloadState2);

    v43[0] = v16;
    v43[1] = v30;
    v31 = [NSArray arrayWithObjects:v43 count:2];
    [v38 addObject:v31];

LABEL_19:
  }

  v32 = WBSManagedExtensionsConfigurationDisplayTitle();
  v33 = WBSManagedExtensionsConfigurationDisplayDescription();
  v34 = [v38 copy];
  v35 = [RMConfigurationUIDetails configurationUIWithTitle:v32 description:v33 details:v34];

  handlerCopy[2](handlerCopy, 1, v35, 0);
}

@end