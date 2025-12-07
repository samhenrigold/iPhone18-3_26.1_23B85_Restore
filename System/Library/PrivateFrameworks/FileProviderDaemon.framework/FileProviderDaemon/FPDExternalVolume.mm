@interface FPDExternalVolume
- (BOOL)_storeDomainProperties:(id)properties atURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)writeDomainsProperties:(id)properties underDirectoryAtURL:(id)l error:(id *)error;
- (FPDExternalVolume)initWithStatFS:(const statfs *)s knownRole:(unsigned int)role volumeManager:(id)manager;
- (id)_loadDomainPropertiesAtURL:(id)l error:(id *)error;
- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)l error:(id *)error;
- (void)removeBrokenEbihilLinksFromRoot;
@end

@implementation FPDExternalVolume

- (FPDExternalVolume)initWithStatFS:(const statfs *)s knownRole:(unsigned int)role volumeManager:(id)manager
{
  v17.receiver = self;
  v17.super_class = FPDExternalVolume;
  v5 = [(FPDVolume *)&v17 initWithStatFS:s knownRole:*&role volumeManager:manager];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    domainPlistNames = v5->_domainPlistNames;
    v5->_domainPlistNames = v6;

    v8 = MEMORY[0x1E696AEC0];
    uuid = [(FPDVolume *)v5 uuid];
    uUIDString = [uuid UUIDString];
    v11 = [v8 stringWithFormat:@"volume %@: link queue", uUIDString];

    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    linkQueue = v5->_linkQueue;
    v5->_linkQueue = v14;
  }

  return v5;
}

- (id)_loadDomainPropertiesAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] fp_dataWithContentsOfURL:lCopy enforceSignatureCheck:1 shouldUpdateXattr:&v15 error:error];
  if (v6)
  {
    if (v15 == 1)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] signature update is needed", buf, 2u);
      }

      v13 = 0;
      v8 = [v6 fp_writeToURL:lCopy withSignature:1 options:1 error:&v13];
      v9 = v13;
      if ((v8 & 1) == 0)
      {
        v10 = fp_current_or_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [FPDExternalVolume _loadDomainPropertiesAtURL:v9 error:v10];
        }
      }
    }

    v11 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)l error:(id *)error
{
  v69[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  stringByDeletingPathExtension = [@"Domains.plist" stringByDeletingPathExtension];
  pathExtension = [@"Domains.plist" pathExtension];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *MEMORY[0x1E695DBB8];
  v40 = *MEMORY[0x1E695DC30];
  v69[0] = *MEMORY[0x1E695DC30];
  v69[1] = v8;
  v45 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  v58 = MEMORY[0x1E69E9820];
  v59 = 3221225472;
  v60 = __68__FPDExternalVolume_readDomainsPropertiesUnderDirectoryAtURL_error___block_invoke;
  v61 = &unk_1E83BEDB8;
  v62 = lCopy;
  v34 = v62;
  v10 = [defaultManager enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v10;
  v46 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v46)
  {
    v42 = 0;
    v44 = *v55;
    *&v11 = 138412546;
    v33 = v11;
    v35 = pathExtension;
    v36 = stringByDeletingPathExtension;
    do
    {
      v12 = 0;
      do
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v53 = 0;
        v15 = [v13 getResourceValue:&v53 forKey:v45 error:0];
        v16 = v53;
        v17 = v16;
        if (v15 && [v16 BOOLValue])
        {
          v52 = 0;
          v18 = [v13 getResourceValue:&v52 forKey:v40 error:0];
          v19 = v52;
          v20 = v19;
          if (v18 && [v19 hasPrefix:stringByDeletingPathExtension] && (objc_msgSend(v20, "pathExtension"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", pathExtension), v21, v22))
          {
            v51 = v42;
            v39 = [(FPDExternalVolume *)self _loadDomainPropertiesAtURL:v13 error:&v51];
            v41 = v51;

            if (v39)
            {
              [v37 addEntriesFromDictionary:?];
              selfCopy = self;
              objc_sync_enter(selfCopy);
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v24 = v39;
              v25 = [v24 countByEnumeratingWithState:&v47 objects:v63 count:16];
              if (v25)
              {
                v26 = *v48;
                do
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v48 != v26)
                    {
                      objc_enumerationMutation(v24);
                    }

                    [(NSMutableDictionary *)selfCopy->_domainPlistNames setObject:v20 forKey:*(*(&v47 + 1) + 8 * i), v33];
                  }

                  v25 = [v24 countByEnumeratingWithState:&v47 objects:v63 count:16];
                }

                while (v25);
              }

              pathExtension = v35;
              stringByDeletingPathExtension = v36;
              objc_sync_exit(selfCopy);
            }

            else
            {
              selfCopy = fp_current_or_default_log();
              if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_ERROR))
              {
                fp_shortDescription = [v13 fp_shortDescription];
                fp_prettyDescription = [v41 fp_prettyDescription];
                *buf = v33;
                v65 = fp_shortDescription;
                v66 = 2112;
                v67 = fp_prettyDescription;
                _os_log_error_impl(&dword_1CEFC7000, &selfCopy->super.super, OS_LOG_TYPE_ERROR, "[ERROR] Unable to load domain properties from plist at '%@': %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v41 = v42;
          }

          v42 = v41;
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v12 != v46);
      v30 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
      v46 = v30;
    }

    while (v30);
  }

  else
  {
    v42 = 0;
  }

  v31 = v37;
  return v37;
}

uint64_t __68__FPDExternalVolume_readDomainsPropertiesUnderDirectoryAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) fp_shortDescription];
    v10 = [v5 fp_shortDescription];
    v11 = [v6 fp_prettyDescription];
    v12 = 136315906;
    v13 = "[FPDExternalVolume readDomainsPropertiesUnderDirectoryAtURL:error:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_error_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_ERROR, "[ERROR] %s unable to enumerate dir at '%@' (%@): %@", &v12, 0x2Au);
  }

  return 1;
}

- (BOOL)_storeDomainProperties:(id)properties atURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:properties format:200 options:0 error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 fp_writeToURL:lCopy withSignature:1 options:options error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)writeDomainsProperties:(id)properties underDirectoryAtURL:(id)l error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = propertiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v10)
  {
    v35 = *v43;
    while (2)
    {
      v34 = v10;
      for (i = 0; i != v34; ++i)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        v47 = v12;
        v13 = [v9 objectForKeyedSubscript:v12];
        v48 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

        v15 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKey:v12];

        if (v15)
        {
          v16 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKeyedSubscript:v12];
          v17 = [lCopy URLByAppendingPathComponent:v16];

          LOBYTE(v16) = [(FPDExternalVolume *)selfCopy _storeDomainProperties:v14 atURL:v17 options:1 error:error];
          if ((v16 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          stringByDeletingPathExtension = [@"Domains.plist" stringByDeletingPathExtension];
          pathExtension = [@"Domains.plist" pathExtension];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.%@", stringByDeletingPathExtension, v12, pathExtension];
          v21 = [lCopy URLByAppendingPathComponent:v20 isDirectory:1];
          if (![(FPDExternalVolume *)selfCopy _storeDomainProperties:v14 atURL:v21 options:1 error:error])
          {

LABEL_24:
            objc_sync_exit(selfCopy);
            v32 = 0;
            goto LABEL_25;
          }

          [(NSMutableDictionary *)selfCopy->_domainPlistNames setObject:v20 forKey:v12];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_domainPlistNames allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v23)
  {
    v24 = *v39;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(allKeys);
        }

        v26 = *(*(&v38 + 1) + 8 * j);
        v27 = [v9 objectForKey:v26];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKeyedSubscript:v26];
          v30 = [lCopy URLByAppendingPathComponent:v29];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager removeItemAtURL:v30 error:0];

          [(NSMutableDictionary *)selfCopy->_domainPlistNames removeObjectForKey:v26];
        }
      }

      v23 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v23);
  }

  objc_sync_exit(selfCopy);
  v32 = 1;
LABEL_25:

  return v32;
}

- (void)removeBrokenEbihilLinksFromRoot
{
  if (FPFeatureFlagEbihilIsEnabled())
  {
    fp_dispatch_async_with_logs();
  }
}

void __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MEMORY[0x1E695DFF8];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 root];
  v7 = [v3 fileURLWithPath:v6];
  v26 = 0;
  v8 = [v2 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:&v26];
  v9 = v26;

  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke_cold_1(v4, v9, v10);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          [v15 fileSystemRepresentation];
          if (fpfs_root_exposure_symlink_xattr_exists())
          {
            v16 = [v15 path];
            v17 = [v2 fileExistsAtPath:v16];

            if ((v17 & 1) == 0)
            {

              v21 = 0;
              [v2 removeItemAtURL:v15 error:&v21];
              v9 = v21;
              if (v9)
              {
                v18 = fp_current_or_default_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  v19 = [v15 fp_shortDescription];
                  v20 = [v9 fp_prettyDescription];
                  *buf = 138543618;
                  v28 = v19;
                  v29 = 2114;
                  v30 = v20;
                  _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Failed to remove broken domain link %{public}@ with error: %{public}@", buf, 0x16u);
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }
  }
}

- (void)_loadDomainPropertiesAtURL:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] failed to update to newer signature: %@", &v4, 0xCu);
}

void __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 fp_prettyDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Unable to list root of volume %{public}@ got error: %{public}@", &v6, 0x16u);
}

@end