@interface RBXPCBundleProperties
- (RBXPCBundleProperties)initWithPID:(int)d;
- (id)bundleInfoValuesForKeys:(id)keys;
- (uint64_t)_bundleMatchesProcessWithExecutablePath:(void *)path bundleExecutablePath:;
@end

@implementation RBXPCBundleProperties

- (RBXPCBundleProperties)initWithPID:(int)d
{
  v4 = [(RBXPCBundleProperties *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = d;
    v6 = RBSExecutablePathForPID();
    executablePath = v5->_executablePath;
    v5->_executablePath = v6;

    v8 = objc_opt_new();
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v8;

    v10 = v5->_executablePath;
    if (v10)
    {
      [(NSString *)v10 UTF8String];
      v11 = xpc_bundle_create();
      executable_path = xpc_bundle_get_executable_path();
      if (executable_path)
      {
        executable_path = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:executable_path];
      }

      if (v11 && ([(RBXPCBundleProperties *)&v5->_executablePath initWithPID:v5, executable_path, v11]& 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
      executable_path = 0;
    }

    v5->_canFetchBundle = 0;
    v13 = RBSBundleIDForPID();
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v5->_preferredJetsamBand = -1;
LABEL_10:
  }

  return v5;
}

- (id)bundleInfoValuesForKeys:(id)keys
{
  v48 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if ([keysCopy count])
  {
    if (self->_canFetchBundle)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!selfCopy->_plistValues)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
        plistValues = selfCopy->_plistValues;
        selfCopy->_plistValues = v5;

        [(NSCache *)selfCopy->_plistValues setCountLimit:20];
      }

      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = [MEMORY[0x277CBEB98] setWithArray:keysCopy];
      v34 = [v7 mutableCopy];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v8)
      {
        v9 = *v41;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v41 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v40 + 1) + 8 * i);
            v12 = [(NSCache *)selfCopy->_plistValues objectForKey:v11];
            if (v12)
            {
              null = [MEMORY[0x277CBEB68] null];
              v14 = v12 == null;

              if (!v14)
              {
                [v35 setObject:v12 forKey:v11];
              }

              [v34 removeObject:v11];
            }
          }

          v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v8);
      }

      if ([v34 count])
      {
        v15 = RBSExecutablePathForPID();
        v31 = v15;
        if (v15 && (v16 = v15, [v31 UTF8String], (v17 = xpc_bundle_create()) != 0))
        {
          v30 = v17;
          v18 = xpc_bundle_get_info_dictionary();
          if (v18)
          {
            v19 = _CFXPCCreateCFObjectFromXPCObject();
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v30 = 0;
          v19 = 0;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = v34;
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v22)
        {
          v23 = *v37;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v36 + 1) + 8 * j);
              v26 = [v19 objectForKey:{v25, v30}];
              v27 = selfCopy->_plistValues;
              if (v26)
              {
                [(NSCache *)selfCopy->_plistValues setObject:v26 forKey:v25];
                [v35 setObject:v26 forKey:v25];
              }

              else
              {
                null2 = [MEMORY[0x277CBEB68] null];
                [(NSCache *)v27 setObject:null2 forKey:v25];
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v22);
        }
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = rbs_general_log();
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_INFO))
      {
        pid = self->_pid;
        *buf = 67109120;
        v47 = pid;
        _os_log_impl(&dword_262485000, &selfCopy->super, OS_LOG_TYPE_INFO, "Bundle info cannot be fetched for process %d", buf, 8u);
      }

      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (uint64_t)_bundleMatchesProcessWithExecutablePath:(void *)path bundleExecutablePath:
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  pathCopy = path;
  stringByStandardizingPath = [a2 stringByStandardizingPath];
  stringByStandardizingPath2 = [pathCopy stringByStandardizingPath];

  if ([stringByStandardizingPath isEqual:stringByStandardizingPath2])
  {
    v7 = 1;
  }

  else
  {
    v7 = realpath_DARWIN_EXTSN([stringByStandardizingPath2 UTF8String], 0);
    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      free(v7);
      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = stringByStandardizingPath;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "_bundleMatchesProcessWithExecutablePath using realpath and comparing %{public}@ and %{public}@", &v11, 0x16u);
      }

      if (stringByStandardizingPath == v8)
      {
        v7 = 1;
      }

      else
      {
        v7 = 0;
        if (stringByStandardizingPath && v8)
        {
          v7 = [stringByStandardizingPath isEqualToString:v8];
        }
      }
    }
  }

  return v7;
}

- (uint64_t)initWithPID:(void *)a3 .cold.1(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = [(RBXPCBundleProperties *)a2 _bundleMatchesProcessWithExecutablePath:a3 bundleExecutablePath:?];
  result = 1;
  if (v5)
  {
    *(a2 + 24) = 1;
    v7 = xpc_bundle_get_info_dictionary();
    if (v7)
    {
      v8 = _CFXPCCreateCFObjectFromXPCObject();
      string = xpc_dictionary_get_string(v7, [*MEMORY[0x277CBED38] UTF8String]);
      if (string)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
        v11 = *(a2 + 48);
        *(a2 + 48) = v10;
      }
    }

    else
    {
      v8 = 0;
    }

    property = xpc_bundle_get_property();
    if (property)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:property];
      v14 = *(a2 + 56);
      *(a2 + 56) = v13;
    }

    v15 = RBSExtensionPointFromBundleDict();
    v16 = *(a2 + 72);
    *(a2 + 72) = v15;

    *(a2 + 32) = *(a2 + 72) != 0;
    v17 = [v8 objectForKeyedSubscript:@"UIBackgroundModes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      if ([v18 containsObject:@"fetch"])
      {
        v19 = 1;
      }

      else
      {
        v19 = [v18 containsObject:@"remote-notification"];
      }

      *(a2 + 26) = v19;
      if ([v18 containsObject:@"voip"])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v18 containsObject:@"push-to-talk"];
      }

      *(a2 + 30) = v20;
      *(a2 + 29) = [v18 containsObject:@"unboundedTaskCompletion"];
      *(a2 + 27) = [v18 containsObject:@"network-authentication"];
      *(a2 + 28) = [v18 containsObject:@"audio"];
      *(a2 + 31) = [v18 containsObject:@"continuous"];
    }

    v21 = [v8 objectForKeyedSubscript:@"SBPreferredPriorityBand"];
    if ([v21 isEqualToString:@"PriorityBandSuspended"])
    {
      *(a2 + 36) = 0;
    }

    else
    {
      if (![v21 isEqualToString:@"PriorityBandMail"])
      {
        v22 = 0;
        *(a2 + 36) = -1;
        goto LABEL_22;
      }

      *(a2 + 36) = 40;
    }

    v22 = 1;
LABEL_22:
    *(a2 + 25) = v22;

    return 0;
  }

  return result;
}

@end