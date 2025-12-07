@interface BMComputePublisherStorage
+ (id)bookmarkStorageForCurrentProcess;
+ (id)currentSession;
- (BMComputePublisherStorage)initWithUseCase:(id)case domain:(unint64_t)domain isClient:(BOOL)client;
- (BOOL)checkActiveSubscriptionMarkerForStream:(id)stream;
- (BOOL)checkExistenceOfBookmarkForSubscriptionWithIdentifier:(id)identifier client:(id)client;
- (id)bookmarkPathForSessionStorageWithIdentifier:(id)identifier client:(id)client;
- (id)currentSessionBookmarkClientOrServerPath;
- (id)currentSessionBookmarkPath;
- (id)currentSessionNonwakingSubscriptionPath;
- (id)currentSessionPath;
- (id)currentSessionSubscriptionsPath;
- (id)newFileManagerWithUseCase:(id)case;
- (id)persistentPath;
- (id)readBookmarkForSubscriptionWithIdentifier:(id)identifier client:(id)client error:(id *)error;
- (id)readNonWakingSubscriptions:(id *)subscriptions;
- (id)readNonwakingSubscriptionWithIdentifier:(id)identifier client:(id)client error:(id *)error;
- (id)sessionsPath;
- (id)subscriptionMarkerPathForSessionStorageWithStream:(id)stream;
- (void)initializeBiomeDSLDirectoryForBootSession;
- (void)removeActiveSubscriptionMarkerForStream:(id)stream;
- (void)removeBookmarkFileForSubscriptionWithIdentifier:(id)identifier client:(id)client;
- (void)removeNonWakingSubscriptionWithIdentifier:(id)identifier client:(id)client;
- (void)writeActiveSubscriptionMarkerForStream:(id)stream;
- (void)writeBookmark:(id)bookmark forSubscriptionWithIdentifier:(id)identifier client:(id)client;
- (void)writeNonWakingSubscription:(id)subscription;
@end

@implementation BMComputePublisherStorage

- (id)currentSessionSubscriptionsPath
{
  currentSessionPath = [(BMComputePublisherStorage *)self currentSessionPath];
  subscriptions = [MEMORY[0x1E698EA08] subscriptions];
  v4 = [currentSessionPath stringByAppendingPathComponent:subscriptions];

  return v4;
}

- (id)currentSessionPath
{
  sessionsPath = [(BMComputePublisherStorage *)self sessionsPath];
  currentSession = [objc_opt_class() currentSession];
  v4 = [sessionsPath stringByAppendingPathComponent:currentSession];

  return v4;
}

- (id)sessionsPath
{
  basePath = [(BMComputePublisherStorage *)self basePath];
  sessions = [MEMORY[0x1E698EA08] sessions];
  v4 = [basePath stringByAppendingPathComponent:sessions];

  return v4;
}

+ (id)currentSession
{
  bm_bootSessionUUID = [MEMORY[0x1E696AFB0] bm_bootSessionUUID];
  uUIDString = [bm_bootSessionUUID UUIDString];

  return uUIDString;
}

- (id)currentSessionBookmarkClientOrServerPath
{
  if ([(BMComputePublisherStorage *)self isClient])
  {
    [MEMORY[0x1E698EA08] client];
  }

  else
  {
    [MEMORY[0x1E698EA08] server];
  }
  v3 = ;
  currentSessionBookmarkPath = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
  v5 = [currentSessionBookmarkPath stringByAppendingPathComponent:v3];

  return v5;
}

- (id)currentSessionBookmarkPath
{
  currentSessionPath = [(BMComputePublisherStorage *)self currentSessionPath];
  bookmarks = [MEMORY[0x1E698EA08] bookmarks];
  v4 = [currentSessionPath stringByAppendingPathComponent:bookmarks];

  return v4;
}

- (id)persistentPath
{
  basePath = [(BMComputePublisherStorage *)self basePath];
  persistent = [MEMORY[0x1E698EA08] persistent];
  v4 = [basePath stringByAppendingPathComponent:persistent];

  return v4;
}

- (id)currentSessionNonwakingSubscriptionPath
{
  currentSessionPath = [(BMComputePublisherStorage *)self currentSessionPath];
  nonwaking = [MEMORY[0x1E698EA08] nonwaking];
  v4 = [currentSessionPath stringByAppendingPathComponent:nonwaking];

  return v4;
}

- (id)newFileManagerWithUseCase:(id)case
{
  caseCopy = case;
  v5 = MEMORY[0x1E698E9C8];
  basePath = [(BMComputePublisherStorage *)self basePath];
  if (([v5 pathIsManaged:basePath domain:0] & 1) == 0)
  {

    goto LABEL_5;
  }

  current = [MEMORY[0x1E698E9D8] current];
  v8 = [current reliesOnDirectAccessForDomain:{-[BMComputePublisherStorage domain](self, "domain")}];

  if (v8)
  {
LABEL_5:
    v12 = MEMORY[0x1E698E9B8];
    basePath2 = [(BMComputePublisherStorage *)self basePath];
    v11 = [v12 fileManagerWithDirectAccessToDirectory:basePath2 cachingOptions:3];
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E698E9B8];
  basePath2 = [(BMComputePublisherStorage *)self basePath];
  v11 = [v9 fileManagerWithMediatedAccessToDirectory:basePath2 useCase:caseCopy domain:-[BMComputePublisherStorage domain](self user:{"domain"), geteuid()}];
LABEL_6:
  v13 = v11;

  return v13;
}

- (void)initializeBiomeDSLDirectoryForBootSession
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    basePath = [(BMComputePublisherStorage *)self basePath];
    currentSession = [objc_opt_class() currentSession];
    *buf = 138412546;
    v80 = basePath;
    v81 = 2112;
    v82 = currentSession;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "Initializing DSL directory %@ with session %@", buf, 0x16u);
  }

  v6 = [(BMComputePublisherStorage *)self newFileManagerWithUseCase:*MEMORY[0x1E698E948]];
  currentSessionBookmarkPath = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
  v76 = 0;
  v8 = [v6 createDirectoryAtPath:currentSessionBookmarkPath error:&v76];
  v9 = v76;

  if (v8)
  {
    currentSessionBookmarkPath2 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
    client = [MEMORY[0x1E698EA08] client];
    v12 = [currentSessionBookmarkPath2 stringByAppendingPathComponent:client];
    v75 = v9;
    v13 = [v6 createDirectoryAtPath:v12 error:&v75];
    v14 = v75;

    if ((v13 & 1) == 0)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
      }

      goto LABEL_26;
    }

    currentSessionBookmarkPath3 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
    server = [MEMORY[0x1E698EA08] server];
    v17 = [currentSessionBookmarkPath3 stringByAppendingPathComponent:server];
    v74 = v14;
    v18 = [v6 createDirectoryAtPath:v17 error:&v74];
    v9 = v74;

    if (v18)
    {
      currentSessionSubscriptionsPath = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
      v73 = v9;
      v20 = [v6 createDirectoryAtPath:currentSessionSubscriptionsPath error:&v73];
      v14 = v73;

      selfCopy2 = self;
      if (v20)
      {
        v22 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:self->_domain];
        currentSessionSubscriptionsPath2 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
        v24 = [currentSessionSubscriptionsPath2 hasPrefix:v22];

        v60 = v22;
        if (v24)
        {
          currentSessionSubscriptionsPath3 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
          v26 = [currentSessionSubscriptionsPath3 substringFromIndex:{-[NSObject length](v22, "length") + 1}];

          v27 = [v22 mutableCopy];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v59 = v26;
          pathComponents = [v26 pathComponents];
          v29 = [pathComponents countByEnumeratingWithState:&v69 objects:v78 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v70;
            do
            {
              v32 = 0;
              v33 = v14;
              do
              {
                if (*v70 != v31)
                {
                  objc_enumerationMutation(pathComponents);
                }

                v34 = *(*(&v69 + 1) + 8 * v32);
                [v27 appendString:@"/"];
                [v27 appendString:v34];
                v35 = __biome_log_for_category();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v80 = v27;
                  _os_log_debug_impl(&dword_1848EE000, v35, OS_LOG_TYPE_DEBUG, "Adjusting permission of %@", buf, 0xCu);
                }

                v68 = v33;
                v36 = [v6 changePermissionsOfFileAtPath:v27 mode:457 error:&v68];
                v14 = v68;

                if ((v36 & 1) == 0)
                {
                  v37 = __biome_log_for_category();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v80 = v14;
                    _os_log_error_impl(&dword_1848EE000, v37, OS_LOG_TYPE_ERROR, "Failed to set mode with error %@", buf, 0xCu);
                  }
                }

                ++v32;
                v33 = v14;
              }

              while (v30 != v32);
              v30 = [pathComponents countByEnumeratingWithState:&v69 objects:v78 count:16];
            }

            while (v30);
          }

          selfCopy2 = self;
          v38 = v59;
        }

        else
        {
          v38 = __biome_log_for_category();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
          }
        }

        persistentPath = [(BMComputePublisherStorage *)selfCopy2 persistentPath];
        v67 = v14;
        v41 = [v6 createDirectoryAtPath:persistentPath error:&v67];
        v42 = v67;

        if (v41)
        {
          sessionsPath = [(BMComputePublisherStorage *)selfCopy2 sessionsPath];
          v66 = v42;
          v44 = [v6 contentsOfDirectoryAtPath:sessionsPath error:&v66];
          v9 = v66;

          if (v44)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v44 = v44;
            v45 = [v44 countByEnumeratingWithState:&v62 objects:v77 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v63;
              do
              {
                v48 = 0;
                do
                {
                  if (*v63 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v62 + 1) + 8 * v48);
                  currentSession2 = [objc_opt_class() currentSession];
                  v51 = [v49 isEqual:currentSession2];

                  if ((v51 & 1) == 0)
                  {
                    sessionsPath2 = [(BMComputePublisherStorage *)selfCopy2 sessionsPath];
                    v53 = [sessionsPath2 stringByAppendingPathComponent:v49];

                    v54 = __biome_log_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v80 = v53;
                      _os_log_impl(&dword_1848EE000, v54, OS_LOG_TYPE_INFO, "Removing old DSL session directory: %@", buf, 0xCu);
                    }

                    v61 = v9;
                    v55 = [v6 removeDirectoryAtPath:v53 error:&v61];
                    v56 = v61;

                    if ((v55 & 1) == 0)
                    {
                      v57 = __biome_log_for_category();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v80 = v53;
                        v81 = 2112;
                        v82 = v56;
                        _os_log_error_impl(&dword_1848EE000, v57, OS_LOG_TYPE_ERROR, "Error removing old DSL session directory %@. %@", buf, 0x16u);
                      }
                    }

                    v9 = v56;
                  }

                  ++v48;
                }

                while (v46 != v48);
                v46 = [v44 countByEnumeratingWithState:&v62 objects:v77 count:16];
              }

              while (v46);
            }
          }

          else
          {
            v58 = __biome_log_for_category();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              [(BMComputePublisherStorage *)selfCopy2 initializeBiomeDSLDirectoryForBootSession];
            }
          }
        }

        else
        {
          v44 = __biome_log_for_category();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
          }

          v9 = v42;
        }

        v39 = v60;

        goto LABEL_58;
      }

      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
      }

LABEL_26:
      v9 = v14;
      goto LABEL_58;
    }

    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
    }
  }

  else
  {
    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
    }
  }

LABEL_58:
}

- (BMComputePublisherStorage)initWithUseCase:(id)case domain:(unint64_t)domain isClient:(BOOL)client
{
  caseCopy = case;
  v14.receiver = self;
  v14.super_class = BMComputePublisherStorage;
  v9 = [(BMComputePublisherStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_domain = domain;
    v9->_isClient = client;
    v11 = [(BMComputePublisherStorage *)v9 newFileManagerWithUseCase:caseCopy];
    fileManager = v10->_fileManager;
    v10->_fileManager = v11;
  }

  return v10;
}

- (id)bookmarkPathForSessionStorageWithIdentifier:(id)identifier client:(id)client
{
  clientCopy = client;
  identifierCopy = identifier;
  currentSessionBookmarkClientOrServerPath = [(BMComputePublisherStorage *)self currentSessionBookmarkClientOrServerPath];
  v9 = [currentSessionBookmarkClientOrServerPath stringByAppendingPathComponent:clientCopy];

  v10 = [v9 stringByAppendingPathComponent:identifierCopy];

  return v10;
}

- (id)subscriptionMarkerPathForSessionStorageWithStream:(id)stream
{
  streamCopy = stream;
  currentSessionSubscriptionsPath = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
  v6 = [currentSessionSubscriptionsPath stringByAppendingPathComponent:streamCopy];

  return v6;
}

- (BOOL)checkExistenceOfBookmarkForSubscriptionWithIdentifier:(id)identifier client:(id)client
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:identifierCopy client:client];
  stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];

  v9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:identifierCopy];
  v10 = [(BMFileManager *)self->_fileManager fileExistsAtPath:v9 error:0];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v13 = BMStringForServiceDomain();
    v15 = 138413058;
    v16 = v12;
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = stringByDeletingLastPathComponent;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Bookmark file exists: %@ for subscription %@ domain: %@ path: %@", &v15, 0x2Au);
  }

  return v10;
}

- (id)readBookmarkForSubscriptionWithIdentifier:(id)identifier client:(id)client error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  if ([identifierCopy length])
  {
    v10 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:identifierCopy client:clientCopy];
    fileManager = self->_fileManager;
    v33 = 0;
    v12 = [(BMFileManager *)fileManager dataWithContentsOfFileAtPath:v10 error:&v33];
    v13 = v33;
    if (v13)
    {
      v14 = v13;
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (error)
      {
        v16 = v14;
        v17 = 0;
        *error = v14;
LABEL_30:

        goto LABEL_31;
      }

LABEL_19:
      v17 = 0;
      goto LABEL_30;
    }

    if (![v12 length])
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        [(BMComputePublisherStorage *)self domain];
        v24 = BMStringForServiceDomain();
        *buf = 138412802;
        v37 = identifierCopy;
        v38 = 2112;
        v39 = v24;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_1848EE000, v23, OS_LOG_TYPE_INFO, "Empty bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
      }

      v14 = 0;
      goto LABEL_19;
    }

    v18 = MEMORY[0x1E696ACD0];
    bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
    v32 = 0;
    v20 = [v18 unarchivedObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark fromData:v12 error:&v32];
    v14 = v32;

    if (v14)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (error)
      {
        v22 = v14;
        v17 = 0;
        *error = v14;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if ([v20 conformsToProtocol:&unk_1EF326390])
      {
        v25 = __biome_log_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          [(BMComputePublisherStorage *)self domain];
          v26 = BMStringForServiceDomain();
          *buf = 138412802;
          v37 = identifierCopy;
          v38 = 2112;
          v39 = v26;
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_1848EE000, v25, OS_LOG_TYPE_INFO, "Read bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
        }

        v17 = v20;
        goto LABEL_29;
      }

      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (error)
      {
        v28 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E698E908];
        v34 = *MEMORY[0x1E696A578];
        v35 = @"Not a bookmark";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *error = [v28 errorWithDomain:v29 code:0 userInfo:v30];
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
  }

  v17 = 0;
LABEL_31:

  return v17;
}

- (void)writeBookmark:(id)bookmark forSubscriptionWithIdentifier:(id)identifier client:(id)client
{
  v31 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  clientCopy = client;
  if ([identifierCopy length])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v12 = v11;
    if (bookmarkCopy)
    {
      v22 = 0;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:bookmarkCopy requiringSecureCoding:1 error:&v22];
      v14 = v22;

      if (v14)
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v24 = bookmarkCopy;
          v25 = 2112;
          v26 = identifierCopy;
          v27 = 2112;
          v28 = v14;
          _os_log_error_impl(&dword_1848EE000, v15, OS_LOG_TYPE_ERROR, "Error archiving bookmark %@ for subscription %@. %@", buf, 0x20u);
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v13 = v11;
    }

    v15 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:identifierCopy client:clientCopy];
    fileManager = self->_fileManager;
    v21 = 0;
    v17 = [(BMFileManager *)fileManager replaceFileAtPath:v15 withData:v13 protection:0xFFFFFFFFLL flags:0 error:&v21];
    v14 = v21;
    if ((v17 & 1) == 0)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v24 = bookmarkCopy;
        v25 = 2112;
        v26 = identifierCopy;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v14;
        _os_log_error_impl(&dword_1848EE000, v18, OS_LOG_TYPE_ERROR, "Error writing bookmark %@ for subscription %@ to %@. %@", buf, 0x2Au);
      }
    }

    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [(BMComputePublisherStorage *)self domain];
      v20 = BMStringForServiceDomain();
      *buf = 138412802;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1848EE000, v19, OS_LOG_TYPE_INFO, "Wrote bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [BMComputePublisherStorage writeBookmark:forSubscriptionWithIdentifier:client:];
  }

LABEL_17:
}

- (void)removeBookmarkFileForSubscriptionWithIdentifier:(id)identifier client:(id)client
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  if ([identifierCopy length])
  {
    v8 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:identifierCopy client:clientCopy];
    fileManager = self->_fileManager;
    v15 = 0;
    v10 = [(BMFileManager *)fileManager removeFileAtPath:v8 error:&v15];
    v11 = v15;
    v12 = __biome_log_for_category();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [(BMComputePublisherStorage *)self domain];
        v14 = BMStringForServiceDomain();
        *buf = 138412802;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_INFO, "Removed bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_1848EE000, v13, OS_LOG_TYPE_ERROR, "Error removing bookmark file for subscription %@ at path %@ error %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeBookmarkFileForSubscriptionWithIdentifier:client:];
    }
  }
}

- (void)writeNonWakingSubscription:(id)subscription
{
  v25 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    identifier = __biome_log_for_category();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage writeNonWakingSubscription:];
    }
  }

  else
  {
    identifier = [subscriptionCopy identifier];
    client = [subscriptionCopy client];
    if (([subscriptionCopy waking] & 1) == 0 && identifier && client)
    {
      v18 = 0;
      v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:subscriptionCopy requiringSecureCoding:1 error:&v18];
      v8 = v18;
      if (v8)
      {
        v9 = v8;
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherStorage writeNonWakingSubscription:];
        }
      }

      else
      {
        currentSessionNonwakingSubscriptionPath = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
        v12 = [currentSessionNonwakingSubscriptionPath stringByAppendingPathComponent:client];
        v10 = [v12 stringByAppendingPathComponent:identifier];

        fileManager = self->_fileManager;
        v17 = 0;
        v14 = [(BMFileManager *)fileManager replaceFileAtPath:v10 withData:v7 protection:4 flags:0 error:&v17];
        v9 = v17;
        if ((v14 & 1) == 0)
        {
          v15 = __biome_log_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v20 = subscriptionCopy;
            v21 = 2112;
            v22 = v10;
            v23 = 2112;
            v24 = v9;
            _os_log_error_impl(&dword_1848EE000, v15, OS_LOG_TYPE_ERROR, "Error writing subscription %@ to %@. %@", buf, 0x20u);
          }
        }

        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v20 = subscriptionCopy;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&dword_1848EE000, v16, OS_LOG_TYPE_INFO, "Wrote subscription %@ to %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage writeNonWakingSubscription:];
      }
    }
  }
}

- (void)removeNonWakingSubscriptionWithIdentifier:(id)identifier client:(id)client
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeNonWakingSubscriptionWithIdentifier:client:];
    }
  }

  else if (identifierCopy && clientCopy)
  {
    currentSessionNonwakingSubscriptionPath = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    v10 = [currentSessionNonwakingSubscriptionPath stringByAppendingPathComponent:clientCopy];
    v8 = [v10 stringByAppendingPathComponent:identifierCopy];

    fileManager = self->_fileManager;
    v15 = 0;
    LOBYTE(currentSessionNonwakingSubscriptionPath) = [(BMFileManager *)fileManager removeFileAtPath:v8 error:&v15];
    v12 = v15;
    if ((currentSessionNonwakingSubscriptionPath & 1) == 0)
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v17 = clientCopy;
        v18 = 2112;
        v19 = identifierCopy;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v12;
        _os_log_error_impl(&dword_1848EE000, v13, OS_LOG_TYPE_ERROR, "Error removing non-waking subscription %@/%@ at path %@ error %@", buf, 0x2Au);
      }
    }

    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v17 = clientCopy;
      v18 = 2112;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1848EE000, v14, OS_LOG_TYPE_INFO, "Removed non-waking subscription %@/%@ at %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeNonWakingSubscriptionWithIdentifier:client:];
    }
  }
}

- (id)readNonWakingSubscriptions:(id *)subscriptions
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (![(BMComputePublisherStorage *)self isClient])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentSessionNonwakingSubscriptionPath = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    fileManager = self->_fileManager;
    v47 = 0;
    v10 = [(BMFileManager *)fileManager contentsOfDirectoryAtPath:currentSessionNonwakingSubscriptionPath error:&v47];
    v11 = v47;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = v10;
    v32 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v32)
    {
      v13 = *v44;
      v30 = *v44;
      subscriptionsCopy = subscriptions;
      v34 = v12;
      v35 = currentSessionNonwakingSubscriptionPath;
      do
      {
        v14 = 0;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v33 = v14;
          v15 = *(*(&v43 + 1) + 8 * v14);
          v16 = [currentSessionNonwakingSubscriptionPath stringByAppendingPathComponent:{v15, v30}];
          v17 = self->_fileManager;
          v42 = v11;
          v36 = v16;
          v18 = [BMFileManager contentsOfDirectoryAtPath:v17 error:"contentsOfDirectoryAtPath:error:"];
          v19 = v42;

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v39;
            v11 = v19;
            while (2)
            {
              v24 = 0;
              v25 = v11;
              do
              {
                if (*v39 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v38 + 1) + 8 * v24);
                v37 = v25;
                v27 = [(BMComputePublisherStorage *)self readNonwakingSubscriptionWithIdentifier:v26 client:v15 error:&v37];
                v11 = v37;

                if (!v27)
                {
                  if (subscriptionsCopy)
                  {
                    v28 = v11;
                    *subscriptionsCopy = v11;
                  }

                  v12 = v34;
                  v7 = 0;
                  currentSessionNonwakingSubscriptionPath = v35;
                  goto LABEL_25;
                }

                [v6 addObject:v27];

                ++v24;
                v25 = v11;
              }

              while (v22 != v24);
              v22 = [v20 countByEnumeratingWithState:&v38 objects:v48 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v11 = v19;
          }

          v14 = v33 + 1;
          v12 = v34;
          currentSessionNonwakingSubscriptionPath = v35;
          v13 = v30;
        }

        while (v33 + 1 != v32);
        v32 = [v34 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v32);
    }

    v7 = [v6 copy];
LABEL_25:

    goto LABEL_26;
  }

  if (subscriptions)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50 = *MEMORY[0x1E696A578];
    v51[0] = @"Invalid for client to read non-waking subscriptions";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v7 = 0;
    *subscriptions = [v5 initWithDomain:@"BiomeComputeError" code:-1 userInfo:v6];
LABEL_26:

    goto LABEL_27;
  }

  v7 = 0;
LABEL_27:

  return v7;
}

- (id)readNonwakingSubscriptionWithIdentifier:(id)identifier client:(id)client error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_28;
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @"Invalid for client to read non-waking subscriptions";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v12 = 0;
    *error = [v10 initWithDomain:@"BiomeComputeError" code:-1 userInfo:v11];
  }

  else if ([identifierCopy length] && objc_msgSend(clientCopy, "length"))
  {
    currentSessionNonwakingSubscriptionPath = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    v14 = [currentSessionNonwakingSubscriptionPath stringByAppendingPathComponent:clientCopy];
    v11 = [v14 stringByAppendingPathComponent:identifierCopy];

    fileManager = self->_fileManager;
    v27 = 0;
    v16 = [(BMFileManager *)fileManager dataWithContentsOfFileAtPath:v11 error:&v27];
    v17 = v27;
    if (v17)
    {
      v18 = v17;
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (error)
      {
        v20 = v18;
        v12 = 0;
        *error = v18;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v26 = 0;
      v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v26];
      v18 = v26;
      if (v18)
      {
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherStorage readNonwakingSubscriptionWithIdentifier:client:error:];
        }

        if (error)
        {
          v23 = v18;
          v12 = 0;
          *error = v18;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v29 = v21;
          v30 = 2112;
          v31 = v11;
          _os_log_impl(&dword_1848EE000, v24, OS_LOG_TYPE_INFO, "Read subscription %@ from path: %@", buf, 0x16u);
        }

        v12 = v21;
      }
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage readNonwakingSubscriptionWithIdentifier:client:error:];
    }

    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (BOOL)checkActiveSubscriptionMarkerForStream:(id)stream
{
  v21 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:streamCopy];
  fileManager = self->_fileManager;
  v14 = 0;
  LODWORD(v7) = [(BMFileManager *)fileManager fileExistsAtPath:v5 error:&v14];
  v8 = v14;
  v9 = @"NO";
  if (v7)
  {
    v9 = @"YES";
  }

  v10 = v9;
  if ((v7 & 1) == 0 && v8)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage checkActiveSubscriptionMarkerForStream:];
    }

    LOBYTE(v7) = 1;
    v10 = @"unknown";
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [(BMComputePublisherStorage *)self domain];
    v12 = BMStringForServiceDomain();
    *buf = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = streamCopy;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Subscription marker exists: %{public}@ for stream: %{public}@ using domain: %{public}@", buf, 0x20u);
  }

  return v7;
}

- (void)writeActiveSubscriptionMarkerForStream:(id)stream
{
  v23 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:streamCopy];
  v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  fileManager = self->_fileManager;
  v14 = 0;
  v8 = [(BMFileManager *)fileManager replaceFileAtPath:v5 withData:v6 protection:4 flags:0 error:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage writeActiveSubscriptionMarkerForStream:];
    }
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v13 = BMStringForServiceDomain();
    *buf = 138413058;
    v16 = v12;
    v17 = 2112;
    v18 = streamCopy;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Wrote new active subscription marker with success: %@ for stream: %@ using domain: %@ path: %@", buf, 0x2Au);
  }
}

- (void)removeActiveSubscriptionMarkerForStream:(id)stream
{
  v22 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:streamCopy];
  fileManager = self->_fileManager;
  v13 = 0;
  v7 = [(BMFileManager *)fileManager removeFileAtPath:v5 error:&v13];
  v8 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeActiveSubscriptionMarkerForStream:];
    }
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v7)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v12 = BMStringForServiceDomain();
    *buf = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = streamCopy;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_INFO, "Removed active subscription marker with success: %@ for stream: %@ using domain: %@ path: %@", buf, 0x2Au);
  }
}

+ (id)bookmarkStorageForCurrentProcess
{
  v2 = [BMComputePublisherStorage alloc];
  v3 = [(BMComputePublisherStorage *)v2 initWithUseCase:*MEMORY[0x1E698E928] domain:0 isClient:1];

  return v3;
}

@end