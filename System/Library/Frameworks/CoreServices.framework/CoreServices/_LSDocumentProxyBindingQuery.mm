@interface _LSDocumentProxyBindingQuery
+ (id)bindingConfigurationForDocument:(id)document style:(unsigned __int8)style handlerRank:(id)rank;
- (BOOL)isEqual:(id)equal;
- (_LSDocumentProxyBindingQuery)initWithBindingConfiguration:(id)configuration;
- (_LSDocumentProxyBindingQuery)initWithCoder:(id)coder;
- (_LSDocumentProxyBindingQuery)initWithDocumentProxy:(id)proxy style:(unsigned __int8)style handlerRank:(id)rank;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSDocumentProxyBindingQuery

+ (id)bindingConfigurationForDocument:(id)document style:(unsigned __int8)style handlerRank:(id)rank
{
  styleCopy = style;
  documentCopy = document;
  rankCopy = rank;
  v9 = [[LSClaimBindingConfiguration alloc] initWithDocumentProxy:documentCopy bindingStyle:styleCopy];
  v10 = v9;
  if (rankCopy)
  {
    [(LSClaimBindingConfiguration *)v9 setMinimumHandlerRank:rankCopy];
    [(LSClaimBindingConfiguration *)v10 setMaximumHandlerRank:rankCopy];
  }

  return v10;
}

- (_LSDocumentProxyBindingQuery)initWithDocumentProxy:(id)proxy style:(unsigned __int8)style handlerRank:(id)rank
{
  styleCopy = style;
  proxyCopy = proxy;
  rankCopy = rank;
  v10 = [objc_opt_class() bindingConfigurationForDocument:proxyCopy style:styleCopy handlerRank:rankCopy];
  v11 = [(_LSDocumentProxyBindingQuery *)self initWithBindingConfiguration:v10];

  return v11;
}

- (_LSDocumentProxyBindingQuery)initWithBindingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = _LSDocumentProxyBindingQuery;
  _init = [(_LSQuery *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, configuration);
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v68[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  bindingConfiguration = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  documentProxy = [bindingConfiguration documentProxy];

  if (!documentProxy)
  {
    v67 = *MEMORY[0x1E696A278];
    v68[0] = @"documentProxy";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[_LSDocumentProxyBindingQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 784);
    blockCopy[2](blockCopy, 0, v14);

    goto LABEL_36;
  }

  yieldClaimBindings = [(_LSDocumentProxyBindingQuery *)self yieldClaimBindings];
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (LaunchServices::Database::Context::status(&v47))
  {
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v47, v10, 0);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v50;
    }

    blockCopy[2](blockCopy, 0, v12);

    goto LABEL_32;
  }

  v15 = +[_LSDServiceDomain defaultServiceDomain];
  v16 = LaunchServices::Database::Context::_get(&v47, v15, 0);

  v45 = 0u;
  v46 = 0u;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
    v45 = *buf;
    v46 = v63;
    v18 = +[LSApplicationRestrictionsManager sharedInstance];
    isOpenInRestrictionInEffect = [(LSApplicationRestrictionsManager *)v18 isOpenInRestrictionInEffect];

    if (isOpenInRestrictionInEffect)
    {
      v20 = documentProxy;
      v17 = _LSAuditTokensAreEqual([documentProxy sourceAuditToken], &v45);
      if (!v17)
      {
        _xpcConnection = [connectionCopy _xpcConnection];
        v22 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.launchservices.canspecifymanageddocumentsource") == 0;

        if (v22)
        {
          if (@"com.apple.private.launchservices.canspecifymanageddocumentsource")
          {
            v35 = @"com.apple.private.launchservices.canspecifymanageddocumentsource";
          }

          else
          {
            v35 = @"unknown entitlement";
          }

          v65 = *MEMORY[0x1E696A278];
          v66 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v37 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v36, "[_LSDocumentProxyBindingQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 816);
          blockCopy[2](blockCopy, 0, v37);

          goto LABEL_32;
        }
      }
    }
  }

  v23 = _LSDefaultLog(v17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    *&buf[4] = documentProxy;
    _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "Evaluating document proxy binding query for %{private}@", buf, 0xCu);
  }

  bindingConfiguration2 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  v25 = bindingConfiguration2;
  if (bindingConfiguration2)
  {
    objc_msgSend_bindingEvaluatorForAuditToken_(bindingConfiguration2);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
  }

  LaunchServices::BindingEvaluator::BindingEvaluator(buf, &v51);
  v64 = 1;
  LaunchServices::BindingEvaluator::~BindingEvaluator(&v51);

  v44 = 0;
  v41 = 0;
  LaunchServices::BindingEvaluator::evaluateBindings(buf, v16, &v44, &v41, &v42);
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v38 = v26;
  if (v42 == v43)
  {
    if (_LSGetOSStatusFromNSError(v26) != -10814)
    {
      blockCopy[2](blockCopy, 0, v38);
      goto LABEL_30;
    }

    v27 = v42;
    v28 = v43;
  }

  v40 = 0;
  v51 = 0u;
  v52 = 0u;
  LODWORD(v53) = 1065353216;
  if (v27 == v28)
  {
    goto LABEL_29;
  }

  while (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(&v51, v27))
  {
LABEL_28:
    v27 += 14;
    if (v27 == v28)
    {
      goto LABEL_29;
    }
  }

  v29 = objc_autoreleasePoolPush();
  if (yieldClaimBindings)
  {
    v30 = [LSClaimBinding alloc];
    v31 = [(LSClaimBinding *)v30 _initWithContext:v16 binding:v27 coreTypesBundleRecord:&v40 typeRecord:v44 error:0];
  }

  else
  {
    v31 = [LSApplicationProxy applicationProxyWithBundleUnitID:*v27 withContext:v16];
  }

  v32 = v31;
  objc_autoreleasePoolPop(v29);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(&v51, v27, v27);
  if (!v32 || (blockCopy[2])(blockCopy, v32, 0))
  {

    goto LABEL_28;
  }

LABEL_29:
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&v51);

LABEL_30:
  *&v51 = &v42;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v51);

  if (v64 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(buf);
  }

LABEL_32:
  if (v47 && v49 == 1)
  {
    _LSContextDestroy(v47);
  }

  v33 = v48;
  v47 = 0;
  v48 = 0;

  v49 = 0;
  v34 = v50;
  v50 = 0;

LABEL_36:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _LSDocumentProxyBindingQuery;
  if ([(_LSQuery *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bindingConfiguration = [equalCopy bindingConfiguration];
    bindingConfiguration2 = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
    if ([bindingConfiguration isEqual:bindingConfiguration2])
    {
      yieldClaimBindings = [equalCopy yieldClaimBindings];
      v8 = yieldClaimBindings ^ [(_LSDocumentProxyBindingQuery *)self yieldClaimBindings]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  bindingConfiguration = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  v4 = [bindingConfiguration hash];

  v5 = v4 ^ ([(_LSDocumentProxyBindingQuery *)self yieldClaimBindings]<< 63 >> 63);
  v7.receiver = self;
  v7.super_class = _LSDocumentProxyBindingQuery;
  return v5 ^ [(_LSQuery *)&v7 hash];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bindingConfiguration = [(_LSDocumentProxyBindingQuery *)self bindingConfiguration];
  [coderCopy encodeObject:bindingConfiguration forKey:@"bindingConfiguration"];

  [coderCopy encodeBool:-[_LSDocumentProxyBindingQuery yieldClaimBindings](self forKey:{"yieldClaimBindings"), @"yieldClaimBindings"}];
}

- (_LSDocumentProxyBindingQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bindingConfiguration"];
  v6 = [(_LSDocumentProxyBindingQuery *)self initWithBindingConfiguration:v5];
  if (v6)
  {
    -[_LSDocumentProxyBindingQuery setYieldClaimBindings:](v6, "setYieldClaimBindings:", [coderCopy decodeBoolForKey:@"yieldClaimBindings"]);
  }

  return v6;
}

@end