@interface _LSCanOpenURLManager
+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)scheme;
+ (_LSCanOpenURLManager)sharedManager;
+ (id)queryForApplicationsAvailableForOpeningURL:(id)l;
- (BOOL)canOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes XPCConnection:(id)connection error:(id *)error;
- (BOOL)findApplicationBundleID:(unsigned int *)d bundleData:(const LSBundleData *)data context:(LSContext *)context forXPCConnection:(id)connection;
- (BOOL)internalCanOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes XPCConnection:(id)connection error:(id *)error;
- (BOOL)isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error;
- (BOOL)isXPCConnection:(id)connection allowedToCheckScheme:(id)scheme error:(id *)error;
- (BOOL)legacy_isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error;
- (_LSCanOpenURLManager)init;
- (id)copySchemesMap;
- (int64_t)schemeTypeOfScheme:(id)scheme;
- (void)getIsURL:(id)l alwaysCheckable:(BOOL *)checkable hasHandler:(BOOL *)handler;
- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)identifier;
- (void)writeSchemesMap;
@end

@implementation _LSCanOpenURLManager

+ (_LSCanOpenURLManager)sharedManager
{
  _LSAssertRunningInServer("+[_LSCanOpenURLManager sharedManager]", a2);
  if (+[_LSCanOpenURLManager sharedManager]::once != -1)
  {
    +[_LSCanOpenURLManager sharedManager];
  }

  v2 = +[_LSCanOpenURLManager sharedManager]::result;

  return v2;
}

- (_LSCanOpenURLManager)init
{
  v11.receiver = self;
  v11.super_class = _LSCanOpenURLManager;
  v2 = [(_LSCanOpenURLManager *)&v11 init];
  v4 = v2;
  if (v2)
  {
    if ([__LSDefaultsGetSharedInstance(v2 v3)])
    {
      copySchemesMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      copySchemesMap = [(_LSCanOpenURLManager *)v4 copySchemesMap];
    }

    canOpenURLsMap = v4->_canOpenURLsMap;
    v4->_canOpenURLsMap = copySchemesMap;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.launchservices.canopenurl", v7);
    canOpenURLsMapQueue = v4->_canOpenURLsMapQueue;
    v4->_canOpenURLsMapQueue = v8;
  }

  return v4;
}

- (BOOL)canOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes XPCConnection:(id)connection error:(id *)error
{
  privateSchemesCopy = privateSchemes;
  schemesCopy = schemes;
  lCopy = l;
  connectionCopy = connection;
  _LSAssertRunningInServer("[_LSCanOpenURLManager canOpenURL:publicSchemes:privateSchemes:XPCConnection:error:]", v14);
  LOBYTE(error) = [(_LSCanOpenURLManager *)self internalCanOpenURL:lCopy publicSchemes:schemesCopy privateSchemes:privateSchemesCopy XPCConnection:connectionCopy error:error];

  return error;
}

- (int64_t)schemeTypeOfScheme:(id)scheme
{
  schemeCopy = scheme;
  _LSAssertRunningInServer("[_LSCanOpenURLManager schemeTypeOfScheme:]", v6);
  if (!schemeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
  }

  v7 = _LSGetSchemeType(schemeCopy);

  return v7;
}

- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _LSAssertRunningInServer("[_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:]", v5);
  v8 = [__LSDefaultsGetSharedInstance(v6 v7)];
  if (v8)
  {
    v9 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:];
    }
  }

  else if (identifierCopy)
  {
    MEMORY[0x1865D7C40]();
    canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74___LSCanOpenURLManager_resetSchemeQueryLimitForApplicationWithIdentifier___block_invoke;
    v11[3] = &unk_1E6A1ABE8;
    v11[4] = self;
    v12 = identifierCopy;
    dispatch_barrier_async(canOpenURLsMapQueue, v11);
  }
}

+ (id)queryForApplicationsAvailableForOpeningURL:(id)l
{
  lCopy = l;
  v4 = [[_LSAvailableApplicationsForURLQuery alloc] initWithURL:lCopy];

  return v4;
}

- (void)writeSchemesMap
{
  _LSAssertRunningInServer("[_LSCanOpenURLManager(PrivateSchemeChecking) writeSchemesMap]", a2);
  v6 = [__LSDefaultsGetSharedInstance(v4 v5)];
  if (v6)
  {
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) writeSchemesMap];
    }
  }

  else
  {
    canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke;
    v9[3] = &unk_1E6A18D78;
    v9[4] = self;
    v9[5] = a2;
    _LSDispatchCoalescedAfterDelay(&self->_saveFlag, canOpenURLsMapQueue, v9, 1.0);
  }
}

- (id)copySchemesMap
{
  _LSAssertRunningInServer("[_LSCanOpenURLManager(PrivateSchemeChecking) copySchemesMap]", a2);
  v6 = [__LSDefaultsGetSharedInstance(v4 v5)];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:203 description:@"Failed to get URL for lsd-schemes file"];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v6];
  if (!v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v6 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      v12 = _LSDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) copySchemesMap];
      }
    }

    else
    {
      v12 = _LSDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Scheme mapping file does not exist, creating file.", v15, 2u);
      }
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v7;
}

- (BOOL)internalCanOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes XPCConnection:(id)connection error:(id *)error
{
  privateSchemesCopy = privateSchemes;
  schemesCopy = schemes;
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  connectionCopy = connection;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (!lowercaseString)
  {
    if (error)
    {
      v26 = *MEMORY[0x1E696A278];
      v27[0] = @"url";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[_LSCanOpenURLManager(PrivateSchemeChecking) internalCanOpenURL:publicSchemes:privateSchemes:XPCConnection:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 282);
    }

    goto LABEL_17;
  }

  v25 = 0;
  [(_LSCanOpenURLManager *)self getIsURL:lCopy alwaysCheckable:&v25 hasHandler:&v25 + 1];
  if ((v25 & 1) == 0)
  {
    LOBYTE(v25) = [(_LSCanOpenURLManager *)self isXPCConnection:connectionCopy allowedToCheckScheme:lowercaseString error:error];
    if ((v25 & 1) == 0)
    {
LABEL_17:
      v19 = 0;
      goto LABEL_24;
    }
  }

  if (HIBYTE(v25) != 1)
  {
    goto LABEL_18;
  }

  if (schemesCopy && privateSchemesCopy)
  {
    goto LABEL_14;
  }

  v16 = _LSGetSchemeType(lowercaseString);
  v17 = v16 != 1 || privateSchemesCopy;
  v18 = !schemesCopy;
  if (v16)
  {
    v18 = 0;
  }

  if (!v18 && (v17 & 1) != 0)
  {
LABEL_14:
    v19 = 1;
  }

  else
  {
LABEL_18:
    v21 = [[_LSURLOverride alloc] initWithOriginalURL:lCopy];
    v22 = v21;
    if (v21)
    {
      overrideURL = [(_LSURLOverride *)v21 overrideURL];
      v19 = [(_LSCanOpenURLManager *)self internalCanOpenURL:overrideURL publicSchemes:schemesCopy privateSchemes:privateSchemesCopy XPCConnection:connectionCopy error:error];
    }

    else if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSCanOpenURLManager(PrivateSchemeChecking) internalCanOpenURL:publicSchemes:privateSchemes:XPCConnection:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 276);
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_24:

  return v19;
}

- (void)getIsURL:(id)l alwaysCheckable:(BOOL *)checkable hasHandler:(BOOL *)handler
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  scheme = [lCopy scheme];
  v11 = scheme;
  if (scheme)
  {
    if ([scheme caseInsensitiveCompare:@"com-apple-audiounit"])
    {
      v12 = objc_opt_class();
      if (v12)
      {
        objc_msgSend_bindingEvaluatorForScheme_(v12);
      }

      else
      {
        memset(v29, 0, sizeof(v29));
      }

      Options = LaunchServices::BindingEvaluator::getOptions(v29);
      LaunchServices::BindingEvaluator::setOptions(v29, Options | 4);
      v28 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v16 = +[_LSDServiceDomain defaultServiceDomain];
      v14 = LaunchServices::Database::Context::_get(&v25, v16, 0);

      if (v14)
      {
        LaunchServices::BindingEvaluator::getBestBinding(v29, v14, 0, v20);
        v13 = v24;
        if (v24)
        {
          if (v21)
          {
            LOBYTE(v14) = *(v21 + 164);
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v25 && v27 == 1)
      {
        _LSContextDestroy(v25);
      }

      v17 = v26;
      v25 = 0;
      v26 = 0;

      v27 = 0;
      v18 = v28;
      v28 = 0;

      LaunchServices::BindingEvaluator::~BindingEvaluator(v29);
    }

    else
    {
      v13 = 1;
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    v13 = 0;
    LOBYTE(v14) = 0;
  }

  if (checkable)
  {
    *checkable = v14 & 1;
  }

  if (handler)
  {
    *handler = v13;
  }
}

- (BOOL)isXPCConnection:(id)connection allowedToCheckScheme:(id)scheme error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  schemeCopy = scheme;
  v11 = schemeCopy;
  if (connectionCopy)
  {
    if (!schemeCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v12 = +[_LSDServiceDomain defaultServiceDomain];
    v13 = LaunchServices::Database::Context::_get(&v26, v12, 0);

    if (v13)
    {
      v25 = 0;
      v24 = 0;
      if (![(_LSCanOpenURLManager *)self findApplicationBundleID:&v25 bundleData:&v24 context:v13 forXPCConnection:connectionCopy]|| v24 && (*(v24 + 164) & 1) != 0)
      {
        v16 = 1;
      }

      else
      {
        v14 = *(v24 + 76);
        v31 = *(v24 + 60);
        v32 = v14;
        _LSMakeVersionNumber(9, 0, 0, v30);
        v34[0] = v31;
        v34[1] = v32;
        v33[0] = v30[0];
        v33[1] = v30[1];
        if (_LSVersionNumberCompare(v34, v33) > 1)
        {
          v15 = [(_LSCanOpenURLManager *)self legacy_isBundleID:v25 bundleData:v24 context:v13 allowedToCheckScheme:v11 error:error];
        }

        else
        {
          v15 = [(_LSCanOpenURLManager *)self isBundleID:v25 bundleData:v24 context:v13 allowedToCheckScheme:v11 error:error];
        }

        v16 = v15;
      }
    }

    else if (error)
    {
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(&v26, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v29;
      }

      v16 = 0;
      *error = v19;
    }

    else
    {
      v16 = 0;
    }

    if (v26 && v28 == 1)
    {
      _LSContextDestroy(v26);
    }

    v20 = v27;
    v26 = 0;
    v27 = 0;

    v28 = 0;
    v21 = v29;
    v29 = 0;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)findApplicationBundleID:(unsigned int *)d bundleData:(const LSBundleData *)data context:(LSContext *)context forXPCConnection:(id)connection
{
  connectionCopy = connection;
  v12 = connectionCopy;
  if (context && context->db)
  {
    if (connectionCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v12)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];

LABEL_4:
  _xpcConnection = [v12 _xpcConnection];
  v14 = _LSCopyBundleURLForXPCConnection(_xpcConnection, 0);

  if (v14)
  {
    v15 = [[FSNode alloc] initWithURL:v14 flags:0 error:0];
    if (v15)
    {
      if (_LSBundleFindWithNode(context, v15, d, data))
      {

        path = [v14 path];
        v17 = [path rangeOfString:@".app/" options:4];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
        }

        else
        {
          v20 = [path substringToIndex:v17 + v18];
          v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v20 isDirectory:1];
          v22 = [[FSNode alloc] initWithURL:v21 flags:0 error:0];
          if (v22)
          {
            v19 = _LSBundleFindWithNode(context, v22, d, data) == 0;
          }

          else
          {
            v19 = 0;
          }
        }

        v15 = 0;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  if (d)
  {
    if (data)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (data)
    {
LABEL_3:
      if (!context)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!context)
  {
LABEL_17:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (schemeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_4:
  if (!context->db)
  {
    goto LABEL_17;
  }

  if (schemeCopy)
  {
    goto LABEL_6;
  }

LABEL_18:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

LABEL_6:
  plugins = data->plugins;
  if (plugins)
  {
    v15 = _LSDatabaseGetStringArray(context->db, plugins);
    if (schemeCopy)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v15 = 0;
  if (!schemeCopy)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = [v15 containsObject:schemeCopy];
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v16 & 1) == 0)
  {
    schemeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"This app is not allowed to query for scheme %@", schemeCopy];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = schemeCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -106, v18, "[_LSCanOpenURLManager(PrivateSchemeChecking) isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 448);
  }

LABEL_14:

  return v16;
}

- (BOOL)legacy_isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  v15 = schemeCopy;
  if (d)
  {
    if (data)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (data)
    {
LABEL_3:
      if (!context)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!context)
  {
LABEL_35:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_4:
  if (!context->db)
  {
    goto LABEL_35;
  }

  if (v15)
  {
    goto LABEL_6;
  }

LABEL_36:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

LABEL_6:
  v16 = [__LSDefaultsGetSharedInstance(schemeCopy v14)];
  if (v16)
  {
    v17 = _LSDefaultLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
    }

    goto LABEL_15;
  }

  [(_LSDatabase *)context->db store];
  v18 = _CSStringCopyCFString();
  v17 = v18;
  if (!v18)
  {
LABEL_15:
    v23 = 0;
    goto LABEL_24;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__12;
  v46 = __Block_byref_object_dispose__12;
  v47 = 0;
  canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke;
  block[3] = &unk_1E6A1B118;
  v41 = &v42;
  block[4] = self;
  v17 = v18;
  v40 = v17;
  dispatch_sync(canOpenURLsMapQueue, block);
  v20 = v43[5];
  if (v20)
  {
    v21 = [v20 containsObject:v15];
    if (v21)
    {
      v22 = _LSDefaultLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
      }

      goto LABEL_22;
    }

    v25 = [v43[5] count];
    if (v25 > 0x31)
    {
      v30 = _LSDefaultLog(v25);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
      }

      v23 = 0;
      goto LABEL_23;
    }

    v24 = _LSDefaultLog(v25);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v43[5] count];
      *buf = 138412802;
      v51 = v17;
      v52 = 1024;
      v53 = v31;
      v54 = 2112;
      v55 = v15;
      _os_log_debug_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEBUG, "LSTesting: app %@ has only asked about %d schemes, adding %@ and allowing", buf, 0x1Cu);
    }
  }

  else
  {
    v24 = _LSDefaultLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
    }
  }

  MEMORY[0x1865D7C40]();
  v26 = self->_canOpenURLsMapQueue;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke_74;
  v36[3] = &unk_1E6A1B140;
  v36[4] = self;
  v37 = v17;
  v38 = v15;
  dispatch_barrier_async(v26, v36);

LABEL_22:
  v23 = 1;
LABEL_23:

  _Block_object_dispose(&v42, 8);
LABEL_24:

  if (error)
  {
    v27 = v23;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v48 = *MEMORY[0x1E696A578];
    v49 = @"This app has exceeded the number of allowed scheme queries";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *error = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -107, v28, "[_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 524);
  }

  return v23;
}

+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)scheme
{
  v7[1] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURLScheme(a4, &retstr->var0);
  LaunchServices::BindingEvaluator::setOptions(retstr, 64);
  v7[0] = 0xE00000002;
  std::vector<LSBundleClass>::vector[abi:nn200100](__p, v7, 2uLL);
  LaunchServices::BindingEvaluator::setAllowedBundleClasses(retstr, __p);
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

@end