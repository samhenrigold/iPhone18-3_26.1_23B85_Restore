@interface NFStorageServer
- (void)delete:(id)delete withCompletion:(id)completion;
- (void)fetch:(id)fetch withCompletion:(id)completion;
- (void)runService:(id)service callback:(id)callback;
- (void)update:(id)update params:(id)params withCompletion:(id)completion;
@end

@implementation NFStorageServer

- (void)fetch:(id)fetch withCompletion:(id)completion
{
  fetchCopy = fetch;
  completionCopy = completion;
  if ([fetchCopy isEqualToString:@"Express"])
  {
    v7 = objc_opt_new();
    v14 = 0;
    v8 = [v7 fetchESEExpressEntitiesWithError:&v14];
    v9 = v14;
    if (!v9)
    {
      v19 = @"Reply";
      v20 = v8;
      v10 = &v20;
      v11 = &v19;
LABEL_9:
      v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
      completionCopy[2](completionCopy, v12, 0);

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ([fetchCopy isEqualToString:@"Applets"])
  {
    v7 = objc_opt_new();
    v13 = 0;
    v8 = [v7 fetchAppletEntitiesWithError:&v13];
    v9 = v13;
    if (!v9)
    {
      v17 = @"Reply";
      v18 = v8;
      v10 = &v18;
      v11 = &v17;
      goto LABEL_9;
    }

LABEL_6:
    (completionCopy)[2](completionCopy, 0, v9);
LABEL_10:

    goto LABEL_11;
  }

  v15 = NSLocalizedDescriptionKey;
  v16 = @"Unknown model";
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v8 = [NSError errorWithDomain:@"NFStorageServer" code:3 userInfo:v9];
  (completionCopy)[2](completionCopy, 0, v8);
LABEL_11:
}

- (void)update:(id)update params:(id)params withCompletion:(id)completion
{
  updateCopy = update;
  paramsCopy = params;
  completionCopy = completion;
  if ([updateCopy isEqualToString:@"Express"])
  {
    v10 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = paramsCopy;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v28 = NSLocalizedDescriptionKey;
              v29 = @"Unknown config";
              v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1, v20];
              v19 = [NSError errorWithDomain:@"NFStorageServer" code:4 userInfo:v18];
              completionCopy[2](completionCopy, 0, v19);

              v17 = v11;
              goto LABEL_19;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      [v10 updateESEExpressEntitiesWithConfig:{v11, v20}];
      completionCopy[2](completionCopy, 0, 0);
    }

    else
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Unknown config";
      v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v11 = [NSError errorWithDomain:@"NFStorageServer" code:4 userInfo:v17];
      completionCopy[2](completionCopy, 0, v11);
LABEL_19:

      v11 = v17;
    }
  }

  else if ([updateCopy isEqualToString:@"Applets"])
  {
    v10 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = paramsCopy;
      v11 = [v10 updateAppletEntitiesWithConfig:v16];
      completionCopy[2](completionCopy, 0, v11);
    }

    else
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Unknown config";
      v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v16 = [NSError errorWithDomain:@"NFStorageServer" code:4 userInfo:v11];
      completionCopy[2](completionCopy, 0, v16);
    }
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Unknown model";
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [NSError errorWithDomain:@"NFStorageServer" code:3 userInfo:v10];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)delete:(id)delete withCompletion:(id)completion
{
  deleteCopy = delete;
  completionCopy = completion;
  if ([deleteCopy isEqualToString:@"Express"])
  {
    v7 = objc_opt_new();
    [v7 deleteAllESEExpressEntities];
  }

  else
  {
    if (![deleteCopy isEqualToString:@"Applets"])
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = @"Unknown model";
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [NSError errorWithDomain:@"NFStorageServer" code:3 userInfo:v8];
      completionCopy[2](completionCopy, 0, v9);

      goto LABEL_7;
    }

    v7 = objc_opt_new();
    [v7 deleteAllAppletEntities];
  }

  completionCopy[2](completionCopy, 0, 0);

LABEL_7:
}

- (void)runService:(id)service callback:(id)callback
{
  serviceCopy = service;
  callbackCopy = callback;
  v9 = [serviceCopy objectForKeyedSubscript:@"Operation"];
  v10 = [serviceCopy objectForKeyedSubscript:@"Model"];
  v11 = v10;
  if (!v9 || !v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Invalid parameter";
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = 2;
    goto LABEL_17;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i Got message %@ for model %@", v17, ClassName, Name, 123, v9, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    *buf = 67110402;
    v28 = v20;
    v29 = 2082;
    v30 = object_getClassName(self);
    v31 = 2082;
    v32 = sel_getName(a2);
    v33 = 1024;
    v34 = 123;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got message %@ for model %@", buf, 0x36u);
  }

  if (![v9 isEqualToString:@"Fetch"])
  {
    if ([v9 isEqualToString:@"Update"])
    {
      v21 = [serviceCopy objectForKeyedSubscript:@"Config"];
      [(NFStorageServer *)self update:v11 params:v21 withCompletion:callbackCopy];
      goto LABEL_18;
    }

    if ([v9 isEqualToString:@"DeleteAll"])
    {
      [(NFStorageServer *)self delete:v11 withCompletion:callbackCopy];
      goto LABEL_19;
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"Unknown operation";
    v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = 3;
LABEL_17:
    v23 = [NSError errorWithDomain:@"NFStorageServer" code:v22 userInfo:v21];
    callbackCopy[2](callbackCopy, 0, v23);

LABEL_18:
    goto LABEL_19;
  }

  [(NFStorageServer *)self fetch:v11 withCompletion:callbackCopy];
LABEL_19:
}

@end