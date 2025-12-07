@interface PPITunesStoreURLOverrideChecker
- (PPITunesStoreURLOverrideChecker)init;
- (PPITunesStoreURLOverrideChecker)initWithPlistPaths:(id)paths isAppAvailableToOpenURLBlock:(id)block;
- (PPITunesStoreURLOverrideChecker)initWithPropertyList:(id)list isAppAvailableToOpenURLBlock:(id)block;
- (id)_compiledPattern:(uint64_t)pattern;
- (id)overrideForURL:(id)l;
@end

@implementation PPITunesStoreURLOverrideChecker

- (PPITunesStoreURLOverrideChecker)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileCoreServices"];
  v4 = [v3 pathForResource:@"iTunesStoreURLPatterns" ofType:@"plist"];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [&unk_284785328 arrayByAddingObject:v4];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = &unk_284785328;
  }

  v7 = [(PPITunesStoreURLOverrideChecker *)self initWithPlistPaths:v6 isAppAvailableToOpenURLBlock:&__block_literal_global_11518];

  return v7;
}

- (id)overrideForURL:(id)l
{
  v87 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  failedHosts = self->_failedHosts;
  host = [v8 host];
  LOBYTE(failedHosts) = [(NSMutableSet *)failedHosts containsObject:host];

  if (failedHosts)
  {
    v11 = 0;
    goto LABEL_108;
  }

  v12 = [(NSDictionary *)self->_propertyList objectForKeyedSubscript:@"p2-url-resolution"];
  objc_opt_class();
  v82 = v12;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_106;
  }

  context = objc_autoreleasePoolPush();
  v78 = objc_opt_new();
  v83 = objc_opt_new();
  v73 = objc_opt_new();
  v76 = objc_opt_new();
  scheme = [v8 scheme];
  v14 = scheme;
  if (scheme)
  {
    v15 = scheme;
  }

  else
  {
    v15 = &stru_284759D38;
  }

  v84 = v15;

  host2 = [v8 host];
  v17 = host2;
  if (host2)
  {
    v18 = host2;
  }

  else
  {
    v18 = &stru_284759D38;
  }

  v79 = v18;

  v19 = v8;
  location = [v19 rangeOfPath];
  length = v21;
  v71 = v8;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CCA890] currentHandler];
    selfCopy = self;
    v61 = v19;
    v63 = v62 = lCopy;
    v90.location = 0x7FFFFFFFFFFFFFFFLL;
    v90.length = length;
    v64 = NSStringFromRange(v90);
    [v63 handleFailureInMethod:sel__pathAndQueryForURLComponents_ object:selfCopy file:@"PPITunesStoreURLOverrideChecker.m" lineNumber:122 description:{@"-[NSURLComponents pathRange] should never return an NSNotFound range, but got %@", v64}];

    lCopy = v62;
    v19 = v61;
    self = selfCopy;
  }

  rangeOfQuery = [v19 rangeOfQuery];
  if (rangeOfQuery != 0x7FFFFFFFFFFFFFFFLL)
  {
    v91.location = rangeOfQuery;
    v91.length = v24;
    v89.location = location;
    v89.length = length;
    v25 = NSUnionRange(v89, v91);
    location = v25.location;
    length = v25.length;
  }

  string = [v19 string];
  v27 = [string substringWithRange:{location, length}];

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_284759D38;
  }

  v72 = v28;

  v29 = v82;
  v30 = [v82 count];
  if (!v30)
  {
    goto LABEL_101;
  }

  v31 = v30;
  v67 = v19;
  selfCopy2 = self;
  v32 = 0;
  v33 = 1;
  v75 = 1;
  v81 = v30;
  while (1)
  {
    v34 = [v29 objectAtIndexedSubscript:v32];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = pp_default_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v86 = v34;
        _os_log_fault_impl(&dword_23224A000, v35, OS_LOG_TYPE_FAULT, "expected NSDictionary, got %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v35 = [v34 objectForKeyedSubscript:@"scheme-mapping"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = pp_default_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v86 = v35;
        _os_log_fault_impl(&dword_23224A000, v37, OS_LOG_TYPE_FAULT, "expected NSDictionary, got %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v36 = [v35 objectForKeyedSubscript:v84];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v36)
      {
        v38 = pp_default_log_handle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v86 = v36;
          _os_log_fault_impl(&dword_23224A000, v38, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
        }
      }

      goto LABEL_36;
    }

    if (([(NSMutableSet *)selfCopy2->_failedSchemes containsObject:v36]& 1) == 0)
    {
      break;
    }

    v75 = 0;
LABEL_36:

LABEL_37:
LABEL_38:
    v33 = ++v32 < v31;
    if (v32 == v31)
    {
      if ((v75 & 1) == 0)
      {
LABEL_104:
        v33 = 0;
        goto LABEL_105;
      }

      self = selfCopy2;
LABEL_101:
      if ([(NSMutableSet *)self->_failedHosts count]>= 0x40)
      {
        [(NSMutableSet *)self->_failedHosts removeAllObjects];
      }

      [(NSMutableSet *)self->_failedHosts addObject:v79];
      goto LABEL_104;
    }
  }

  v39 = [v34 objectForKeyedSubscript:@"host-patterns"];
  objc_opt_class();
  v74 = v36;
  v77 = v39;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = pp_default_log_handle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v86 = v77;
      _os_log_fault_impl(&dword_23224A000, v47, OS_LOG_TYPE_FAULT, "expected NSArray, got %@", buf, 0xCu);
    }

    v48 = 1;
    goto LABEL_96;
  }

  v40 = [v39 count];
  if (!v40)
  {
    v48 = 1;
    goto LABEL_97;
  }

  v41 = v39;
  v42 = v40;
  v43 = 0;
  v68 = lCopy;
  while (2)
  {
    v44 = [v41 objectAtIndexedSubscript:v43];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = pp_default_log_handle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v86 = v44;
        _os_log_fault_impl(&dword_23224A000, v45, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (![v44 length])
    {
      goto LABEL_63;
    }

    if ([v83 containsObject:v44])
    {
      goto LABEL_57;
    }

    if ([v78 containsObject:v44])
    {
      goto LABEL_63;
    }

    v45 = [(PPITunesStoreURLOverrideChecker *)selfCopy2 _compiledPattern:v44];
    if (!v45)
    {
      v46 = pp_default_log_handle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v86 = v44;
        _os_log_fault_impl(&dword_23224A000, v46, OS_LOG_TYPE_FAULT, "failed to compile pattern: %@", buf, 0xCu);
      }

      lCopy = v68;
      goto LABEL_55;
    }

    v41 = v77;
    if ([v45 rangeOfFirstMatchInString:v79 options:0 range:0, [(__CFString *)v79 length]]== 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_55:
      [v83 addObject:v44];
LABEL_56:

      v31 = v81;
LABEL_57:

      if (v42 == ++v43)
      {
        v48 = 1;
        v29 = v82;
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  [v78 addObject:v44];

  v75 = 0;
  v31 = v81;
LABEL_63:

  v47 = [v34 objectForKeyedSubscript:@"path-patterns"];
  objc_opt_class();
  v29 = v82;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v54 = pp_default_log_handle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v86 = v47;
      _os_log_fault_impl(&dword_23224A000, v54, OS_LOG_TYPE_FAULT, "expected NSArray, got %@", buf, 0xCu);
    }

    v48 = 1;
    goto LABEL_95;
  }

  v65 = [v47 count];
  if (!v65)
  {
    v48 = 1;
    goto LABEL_96;
  }

  v66 = 0;
  v49 = 0;
  v50 = v65;
  while (2)
  {
    v51 = [v47 objectAtIndexedSubscript:v49];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = pp_default_log_handle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v86 = v51;
        _os_log_fault_impl(&dword_23224A000, v52, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (![v51 length])
    {
      goto LABEL_70;
    }

    if (([v76 containsObject:v51] & 1) == 0)
    {
      if ([v73 containsObject:v51])
      {
LABEL_70:
        v66 = 1;
        goto LABEL_74;
      }

      v52 = [(PPITunesStoreURLOverrideChecker *)selfCopy2 _compiledPattern:v51];
      if (v52)
      {
        v50 = v65;
        if ([v52 rangeOfFirstMatchInString:v72 options:0 range:0, [(__CFString *)v72 length]]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v73 addObject:v51];
          v66 = 1;
          goto LABEL_73;
        }
      }

      else
      {
        v53 = pp_default_log_handle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v86 = v51;
          _os_log_fault_impl(&dword_23224A000, v53, OS_LOG_TYPE_FAULT, "failed to compile pattern: %@", buf, 0xCu);
        }

        lCopy = v68;
      }

      [v76 addObject:v51];
LABEL_73:

      v29 = v82;
    }

LABEL_74:

    if (v50 != ++v49)
    {
      continue;
    }

    break;
  }

  if (v66)
  {
    v55 = v74;
    if (([(NSMutableSet *)selfCopy2->_supportedSchemes containsObject:v74]& 1) != 0)
    {
      goto LABEL_90;
    }

    v54 = objc_opt_new();
    [v54 setScheme:v74];
    isAppAvailableToOpenURLBlock = selfCopy2->_isAppAvailableToOpenURLBlock;
    v57 = [v54 URL];
    LODWORD(isAppAvailableToOpenURLBlock) = isAppAvailableToOpenURLBlock[2](isAppAvailableToOpenURLBlock, v57);

    if (isAppAvailableToOpenURLBlock)
    {
      v55 = v74;
      [(NSMutableSet *)selfCopy2->_supportedSchemes addObject:v74];

      v29 = v82;
LABEL_90:
      v54 = [v67 copy];
      v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v55];
      [v54 setScheme:v58];

      v69 = [v54 URL];
      v48 = 0;
    }

    else
    {
      [(NSMutableSet *)selfCopy2->_failedSchemes addObject:v74];
      v48 = 1;
      v29 = v82;
    }

    v31 = v81;
LABEL_95:
  }

  else
  {
    v48 = 1;
    v31 = v81;
  }

LABEL_96:

LABEL_97:
  if (v48)
  {
    goto LABEL_38;
  }

LABEL_105:

  objc_autoreleasePoolPop(context);
  v8 = v71;
  v11 = v69;
  if (!v33)
  {
LABEL_106:
    v11 = 0;
  }

LABEL_108:

  return v11;
}

- (id)_compiledPattern:(uint64_t)pattern
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (pattern)
  {
    v4 = [*(pattern + 24) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v8 = 0;
      v4 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v3 options:1 error:&v8];
      v5 = v8;
      if (v4)
      {
        if ([*(pattern + 24) count] >= 0x10)
        {
          [*(pattern + 24) removeAllObjects];
        }

        [*(pattern + 24) setObject:v4 forKeyedSubscript:v3];
      }

      else
      {
        v6 = pp_default_log_handle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v10 = v3;
          v11 = 2112;
          v12 = v5;
          _os_log_fault_impl(&dword_23224A000, v6, OS_LOG_TYPE_FAULT, "failed to compile pattern %@: %@", buf, 0x16u);
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PPITunesStoreURLOverrideChecker)initWithPropertyList:(id)list isAppAvailableToOpenURLBlock:(id)block
{
  listCopy = list;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = PPITunesStoreURLOverrideChecker;
  v9 = [(PPITunesStoreURLOverrideChecker *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyList, list);
    v11 = [blockCopy copy];
    isAppAvailableToOpenURLBlock = v10->_isAppAvailableToOpenURLBlock;
    v10->_isAppAvailableToOpenURLBlock = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    compiledPatterns = v10->_compiledPatterns;
    v10->_compiledPatterns = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    supportedSchemes = v10->_supportedSchemes;
    v10->_supportedSchemes = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    failedSchemes = v10->_failedSchemes;
    v10->_failedSchemes = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:64];
    failedHosts = v10->_failedHosts;
    v10->_failedHosts = v19;
  }

  return v10;
}

- (PPITunesStoreURLOverrideChecker)initWithPlistPaths:(id)paths isAppAvailableToOpenURLBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  blockCopy = block;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = pathsCopy;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = 0x277D42000uLL;
LABEL_3:
    v10 = 0;
    v27 = v7;
    while (1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      stringByExpandingTildeInPath = [v11 stringByExpandingTildeInPath];
      v14 = *(v9 + 1504);
      v29 = 0;
      v15 = [v14 dictionaryWithPath:stringByExpandingTildeInPath error:&v29];
      v16 = v29;
      if (!v15)
      {
        v17 = v8;
        v18 = v9;
        v19 = objc_autoreleasePoolPush();
        v20 = pp_default_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v35 = v16;
          v36 = 2112;
          v37 = stringByExpandingTildeInPath;
          _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "got error %@ while creating lazy plist context for path %@", buf, 0x16u);
        }

        v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:stringByExpandingTildeInPath];
        if (!v15)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = pp_default_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = stringByExpandingTildeInPath;
            _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "failed to load plist at path %@ using Foundation fallback", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v21);
        }

        objc_autoreleasePoolPop(v19);
        v9 = v18;
        v8 = v17;
        v7 = v27;
      }

      objc_autoreleasePoolPop(v12);
      if (v15)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v15 = MEMORY[0x277CBEC10];
  }

  v23 = [(PPITunesStoreURLOverrideChecker *)self initWithPropertyList:v15 isAppAvailableToOpenURLBlock:blockCopy];
  return v23;
}

uint64_t __39__PPITunesStoreURLOverrideChecker_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CC1E80];
  v3 = a2;
  v4 = [v2 defaultWorkspace];
  v5 = [v4 isApplicationAvailableToOpenURL:v3 error:0];

  return v5;
}

@end