@interface CDXPrepareStoreOperation
- (BOOL)checkForExtensionsStuckLoading:(id *)loading;
- (BOOL)disableAllExtensionsWithError:(id *)error;
- (BOOL)performWithError:(id *)error;
- (BOOL)synchronizeExtensionsWithError:(id *)error;
- (CDXPrepareStoreOperation)initWithFirstUnlockStatus:(BOOL)status;
@end

@implementation CDXPrepareStoreOperation

- (CDXPrepareStoreOperation)initWithFirstUnlockStatus:(BOOL)status
{
  v5.receiver = self;
  v5.super_class = CDXPrepareStoreOperation;
  result = [(CDXPrepareStoreOperation *)&v5 init];
  if (result)
  {
    result->_afterFirstUnlock = status;
  }

  return result;
}

- (BOOL)performWithError:(id *)error
{
  v47 = 0;
  v5 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v47];
  v6 = v47;
  isCorrupt = [v5 isCorrupt];
  v8 = [v5 url];

  if (!isCorrupt)
  {
    v16 = objc_alloc_init(CXCallDirectoryStoreMigrator);
    v43 = v6;
    v25 = [v16 performMigrationsWithError:&v43];
    v13 = v43;

    if (!v25)
    {
      v32 = sub_100005CC4(v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100023314();
      }

      goto LABEL_44;
    }

    if ([v25 requiresExtensionDisablement])
    {
      v42 = v13;
      v27 = [(CDXPrepareStoreOperation *)self disableAllExtensionsWithError:&v42];
      v28 = v42;

      v30 = sub_100005CC4(v29);
      v31 = v30;
      if (v27)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Disabled all extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100023244();
      }

      if (v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = v13;
      if (v13)
      {
LABEL_41:
        v40 = v28;
        v36 = [(CDXPrepareStoreOperation *)self checkForExtensionsStuckLoading:&v40];
        v13 = v40;

        if (v36)
        {
LABEL_45:

          goto LABEL_46;
        }

        v32 = sub_100005CC4(v37);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000232AC();
        }

LABEL_44:

        goto LABEL_45;
      }
    }

    if ([v25 requiresExtensionSynchronization])
    {
      v41 = 0;
      v33 = [(CDXPrepareStoreOperation *)self synchronizeExtensionsWithError:&v41];
      v28 = v41;
      v34 = sub_100005CC4(v28);
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Synchronized extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100021FE0();
      }
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_41;
  }

  v10 = sub_100005CC4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10002337C(v10);
  }

  v11 = +[NSFileManager defaultManager];
  v46 = v6;
  v12 = [v11 removeItemAtURL:v8 error:&v46];
  v13 = v46;

  v15 = sub_100005CC4(v14);
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully removed DB at URL '%@'", buf, 0xCu);
    }

    v45 = v13;
    v16 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v45];
    v17 = v45;

    v19 = sub_100005CC4(v18);
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Created new store successfully", buf, 2u);
      }

      v44 = v17;
      v21 = [(CDXPrepareStoreOperation *)self synchronizeExtensionsWithError:&v44];
      v13 = v44;

      v23 = sub_100005CC4(v22);
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Synchronized extensions successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100021FE0();
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100023434();
      }

      v16 = v20;
      v13 = v17;
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000233C0();
  }

LABEL_46:

  if (error && v13)
  {
    v38 = v13;
    *error = v13;
  }

  return v13 == 0;
}

- (BOOL)disableAllExtensionsWithError:(id *)error
{
  v4 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:error];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 setStateForAllExtensions:1 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)synchronizeExtensionsWithError:(id *)error
{
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = sub_100013B90;
  v27[3] = sub_100013BA0;
  v28 = 0;
  v5 = [CXCallDirectoryStore alloc];
  v6 = (v27[0] + 40);
  obj = *(v27[0] + 40);
  v7 = [v5 initForReadingAndWritingWithError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v9 = [[CDXSynchronizeExtensionsOperation alloc] initWithStore:v7 firstUnlockStatus:[(CDXPrepareStoreOperation *)self afterFirstUnlock]];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100013BA8;
    v22[3] = &unk_1000350C0;
    v24 = &v26;
    v10 = dispatch_semaphore_create(0);
    v23 = v10;
    [(CDXSynchronizeExtensionsOperation *)v9 performWithCompletionHandler:v22];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v11 = sub_100005CC4(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002349C(v27, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    v9 = *(v27[0] + 40);
    *(v27[0] + 40) = v18;
  }

  v19 = *(v27[0] + 40);
  if (error && v19)
  {
    *error = v19;
    v19 = *(v27[0] + 40);
  }

  v20 = v19 == 0;

  _Block_object_dispose(&v26, 8);
  return v20;
}

- (BOOL)checkForExtensionsStuckLoading:(id *)loading
{
  v41 = 0;
  v4 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v41];
  v5 = v41;
  v6 = v5;
  if (v4)
  {
    v40 = v5;
    v7 = [v4 prioritizedExtensionsWithError:&v40];
    v8 = v40;

    if (v7)
    {
      v31 = v7;
      loadingCopy = loading;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        v13 = &_s14IdentityLookup04LiveB11DBExtensionCMa_ptr;
        v33 = *v37;
        v34 = v9;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v36 + 1) + 8 * i);
            date = [v13[287] date];
            stateLastModified = [v15 stateLastModified];
            [date timeIntervalSinceDate:stateLastModified];
            v19 = v18;
            if ([v15 state] == 3)
            {
              v20 = [stateLastModified compare:date];
              if (v20 != 1 && v19 > 3600.0)
              {
                v21 = v13;
                v22 = v8;
                v23 = sub_100005CC4(v20);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v43 = v15;
                  v44 = 2048;
                  v45 = 0x40AC200000000000;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Store extension %@ has Loading state but time interval since state last modified is %f. Assuming state is stuck and resetting to Enabled", buf, 0x16u);
                }

                primaryKey = [v15 primaryKey];
                v35 = v22;
                v25 = v4;
                v26 = [v4 setState:4 forExtensionWithID:primaryKey error:&v35];
                v8 = v35;

                if ((v26 & 1) == 0)
                {
                  v28 = sub_100005CC4(v27);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    sub_100023510();
                  }

                  v4 = v25;
                  v9 = v34;
                  goto LABEL_21;
                }

                v4 = v25;
                v13 = v21;
                v12 = v33;
                v9 = v34;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v7 = v31;
      loading = loadingCopy;
    }

    v6 = v8;
  }

  if (loading && v6)
  {
    v29 = v6;
    *loading = v6;
  }

  return v6 == 0;
}

@end