@interface XPCStreamEventRegister
+ (XPCStreamEventRegister)registerWithRegistrations:(id)registrations;
+ (XPCStreamEventRegister)registerWithRegistrations:(id)registrations withActivityServicesMap:(id)map;
+ (id)emptyRegister;
+ (id)registerFromDagServiceNames:(id)names;
- (BOOL)handleXPCActivity:(id)activity fromIdentifier:(id)identifier withAssetCollection:(id)collection withSelfMetadata:(id)metadata;
- (BOOL)handleXPCEvent:(id)event fromStream:(id)stream currentConfig:(id)config withSelfMetadata:(id)metadata;
- (id)_initWithRegistrationsMap:(id)map withActivityServicesMap:(id)servicesMap;
- (id)handleableXPCActivities;
- (id)handleableXPCEventStreams;
@end

@implementation XPCStreamEventRegister

- (id)_initWithRegistrationsMap:(id)map withActivityServicesMap:(id)servicesMap
{
  v19 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  servicesMapCopy = servicesMap;
  v12.receiver = self;
  v12.super_class = XPCStreamEventRegister;
  v9 = [(XPCStreamEventRegister *)&v12 init];
  objc_storeStrong(&v9->_registrationsMap, map);
  objc_storeStrong(&v9->_activityServicesMap, servicesMap);
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[XPCStreamEventRegister _initWithRegistrationsMap:withActivityServicesMap:]";
    v15 = 2112;
    v16 = mapCopy;
    v17 = 2112;
    v18 = servicesMapCopy;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Registered with xpc events:\n%@\n and activities\n%@", buf, 0x20u);
  }

  return v9;
}

- (BOOL)handleXPCActivity:(id)activity fromIdentifier:(id)identifier withAssetCollection:(id)collection withSelfMetadata:(id)metadata
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  collectionCopy = collection;
  metadataCopy = metadata;
  v11 = identifierCopy;
  v12 = [(NSDictionary *)self->_activityServicesMap objectForKeyedSubscript:identifierCopy];
  v13 = v12;
  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = objc_opt_respondsToSelector();
          v20 = CDMOSLoggerForCategory(0);
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v23 = NSStringFromClass(v18);
              *buf = 136315394;
              v33 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
              v34 = 2112;
              v35 = v23;
              _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Calling handleXPCActivity on service %@", buf, 0x16u);
            }

            [(objc_class *)v18 handleXPCActivity:v11 withAssets:collectionCopy withSelfMetadata:metadataCopy];
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v22 = NSStringFromClass(v18);
              *buf = 136315394;
              v33 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
              v34 = 2112;
              v35 = v22;
              _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: Found service [%@] that does not support handleXPCActivity yet is registered for an activity?", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v33 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
      v34 = 2112;
      v35 = identifierCopy;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s There were no services found supporting xpc activity: %@. Doing nothing.", buf, 0x16u);
    }
  }

  return v13 != 0;
}

- (BOOL)handleXPCEvent:(id)event fromStream:(id)stream currentConfig:(id)config withSelfMetadata:(id)metadata
{
  v42 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  streamCopy = stream;
  configCopy = config;
  metadataCopy = metadata;
  v14 = [XPCStreamEventUtils getXPCEventName:eventCopy];
  if (v14)
  {
    v15 = [objc_opt_class() _registrationKeyFromStreamName:streamCopy eventName:v14];
    v16 = [(NSDictionary *)self->_registrationsMap objectForKeyedSubscript:v15];
    v17 = v16 != 0;
    v18 = CDMOSLoggerForCategory(0);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v19)
      {
        *buf = 136315650;
        v37 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
        v38 = 2112;
        v39 = v14;
        v40 = 2112;
        v41 = streamCopy;
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Found matching registrations for XPC event %@ from stream %@. Calling handlers.", buf, 0x20u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = v16;
      v18 = v16;
      v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        v27 = v17;
        v28 = v15;
        v29 = v14;
        v22 = *v32;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v31 + 1) + 8 * i);
            assetCollection = [configCopy assetCollection];
            [v24 invoke:eventCopy fromStream:streamCopy withAssets:assetCollection withSelfMetadata:metadataCopy];
          }

          v21 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v21);
        v15 = v28;
        v14 = v29;
        v17 = v27;
      }

      v16 = v30;
    }

    else if (v19)
    {
      *buf = 136315650;
      v37 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = streamCopy;
      _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s There was no matching registration for XPC event %@ from stream %@. Doing nothing.", buf, 0x20u);
    }
  }

  else
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
      _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Error extracting XPC event name", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (id)handleableXPCActivities
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [(NSDictionary *)self->_activityServicesMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    key = *MEMORY[0x1E69E9D50];
    v20 = *MEMORY[0x1E69E9CE8];
    v21 = *MEMORY[0x1E69E9C98];
    v8 = *MEMORY[0x1E69E9D88];
    v9 = *MEMORY[0x1E69E9D68];
    v18 = *MEMORY[0x1E69E9DB8];
    string = *MEMORY[0x1E69E9D78];
    v16 = *MEMORY[0x1E69E9DA8];
    v17 = *MEMORY[0x1E69E9C40];
    v25 = *MEMORY[0x1E69E9CC0];
    v26 = *MEMORY[0x1E69E9CB0];
    v23 = *MEMORY[0x1E69E9DC0];
    v24 = *MEMORY[0x1E69E9D70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (v11 == @"com.apple.siri.cdm.xpc_activity.maintenance")
        {
          v12 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_int64(v12, v26, v25);
          xpc_dictionary_set_BOOL(v12, v8, 1);
          xpc_dictionary_set_string(v12, v9, v24);
          v13 = v12;
          v14 = v23;
        }

        else
        {
          if (v11 != @"com.apple.siri.cdm.xpc_activity.post_install")
          {
            continue;
          }

          v12 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v12, key, 1);
          xpc_dictionary_set_int64(v12, v21, v20);
          xpc_dictionary_set_BOOL(v12, v8, 0);
          xpc_dictionary_set_string(v12, v9, string);
          xpc_dictionary_set_BOOL(v12, v18, 1);
          xpc_dictionary_set_BOOL(v12, v17, 1);
          v13 = v12;
          v14 = v16;
        }

        xpc_dictionary_set_BOOL(v13, v14, 1);
        [v3 setObject:v12 forKey:v11];
      }

      v6 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)handleableXPCEventStreams
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_registrationsMap;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_registrationsMap objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
        firstObject = [v9 firstObject];

        streamName = [firstObject streamName];
        [v3 addObject:streamName];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (XPCStreamEventRegister)registerWithRegistrations:(id)registrations withActivityServicesMap:(id)map
{
  mapCopy = map;
  registrationsCopy = registrations;
  v7 = [[XPCStreamEventRegister alloc] _initWithRegistrationsMap:registrationsCopy withActivityServicesMap:mapCopy];

  return v7;
}

+ (XPCStreamEventRegister)registerWithRegistrations:(id)registrations
{
  v3 = MEMORY[0x1E695DF20];
  registrationsCopy = registrations;
  dictionary = [v3 dictionary];
  v6 = [XPCStreamEventRegister registerWithRegistrations:registrationsCopy withActivityServicesMap:dictionary];

  return v6;
}

+ (id)registerFromDagServiceNames:(id)names
{
  v52 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = namesCopy;
  v35 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v35)
  {
    v34 = *v46;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = NSClassFromString(*(*(&v45 + 1) + 8 * i));
        if (objc_opt_respondsToSelector())
        {
          v32 = v7;
          v33 = i;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          xpcEventStreamsSupported = [(objc_class *)v7 xpcEventStreamsSupported];
          v9 = [xpcEventStreamsSupported countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v42;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v42 != v11)
                {
                  objc_enumerationMutation(xpcEventStreamsSupported);
                }

                v13 = *(*(&v41 + 1) + 8 * j);
                streamName = [v13 streamName];
                eventName = [v13 eventName];
                v16 = [self _registrationKeyFromStreamName:streamName eventName:eventName];

                v17 = [dictionary objectForKey:v16];

                if (!v17)
                {
                  array = [MEMORY[0x1E695DF70] array];
                  [dictionary setValue:array forKey:v16];
                }

                v19 = [dictionary objectForKey:v16];
                [v19 addObject:v13];
              }

              v10 = [xpcEventStreamsSupported countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v10);
          }

          v7 = v32;
          i = v33;
        }

        if (objc_opt_respondsToSelector())
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          xpcActivitySupported = [(objc_class *)v7 xpcActivitySupported];
          v21 = [xpcActivitySupported countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v38;
            do
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v38 != v23)
                {
                  objc_enumerationMutation(xpcActivitySupported);
                }

                v25 = *(*(&v37 + 1) + 8 * k);
                v26 = [dictionary2 objectForKey:v25];

                if (!v26)
                {
                  array2 = [MEMORY[0x1E695DF70] array];
                  [dictionary2 setValue:array2 forKey:v25];
                }

                v28 = [dictionary2 objectForKey:v25];
                [v28 addObject:v7];
              }

              v22 = [xpcActivitySupported countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v22);
          }
        }
      }

      v35 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v35);
  }

  v29 = [self registerWithRegistrations:dictionary withActivityServicesMap:dictionary2];

  return v29;
}

+ (id)emptyRegister
{
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  v4 = [self registerWithRegistrations:dictionary];

  return v4;
}

@end