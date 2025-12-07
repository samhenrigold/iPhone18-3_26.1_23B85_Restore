@interface _LSSharedWebCredentialsAppLinkPlugIn
- (_LSSharedWebCredentialsAppLinkPlugIn)init;
- (id)appLinksWithContext:(LSContext *)context error:(id *)error;
- (id)appLinksWithContext:(LSContext *)context forSWCResults:(id)results;
- (id)callingBundleIdentifier;
- (optional<LSBinding>)bindingWithContext:(SEL)context forServiceDetails:(LSContext *)details callingBundleIdentifier:(id)identifier;
- (void)enumerateBindingsWithContext:(LSContext *)context forSWCResults:(id)results block:(id)block;
@end

@implementation _LSSharedWebCredentialsAppLinkPlugIn

- (_LSSharedWebCredentialsAppLinkPlugIn)init
{
  v4.receiver = self;
  v4.super_class = _LSSharedWebCredentialsAppLinkPlugIn;
  v2 = [(_LSSharedWebCredentialsAppLinkPlugIn *)&v4 init];
  if (v2 && !_LSIsSWCAvailable())
  {

    return 0;
  }

  return v2;
}

- (optional<LSBinding>)bindingWithContext:(SEL)context forServiceDetails:(LSContext *)details callingBundleIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = a6;
  retstr->var0.var0 = 0;
  retstr->var1 = 0;
  if (details)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:context object:self file:@"LSAppLinkPlugIn.mm" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:context object:self file:@"LSAppLinkPlugIn.mm" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"serviceDetails != nil"}];

LABEL_3:
  if ([identifierCopy isApproved])
  {
    serviceSpecifier = [identifierCopy serviceSpecifier];
    applicationIdentifier = [serviceSpecifier applicationIdentifier];

    serviceSpecifier2 = [identifierCopy serviceSpecifier];
    applicationIdentifierPrefix = [serviceSpecifier2 applicationIdentifierPrefix];

    serviceSpecifier3 = [identifierCopy serviceSpecifier];
    bundleIdentifier = [serviceSpecifier3 bundleIdentifier];

    if (bundleIdentifier && (!v12 || [bundleIdentifier caseInsensitiveCompare:v12]))
    {
      if ([identifierCopy isSystemPlaceholder])
      {
        v19 = _LSFindBundleWithInfo(details, 7uLL, bundleIdentifier, 0, 0, 0, 0);
        v20 = v19;
        v21 = _LSBundleGet(details->db, v19);
        if (v21)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0u;
          v36 = 0u;
          std::optional<LSBinding>::operator=[abi:nn200100]<LSBinding,void>(retstr, &v32);

          retstr->var0.var1.bundle = v20;
          retstr->var0.var1.bundleData = v21;
        }
      }

      else
      {
        memset(v28, 0, sizeof(v28));
        LaunchServices::BindingEvaluator::CreateWithBundleInfo(bundleIdentifier, 0, 0, 1, v28, &v32);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __101___LSSharedWebCredentialsAppLinkPlugIn_bindingWithContext_forServiceDetails_callingBundleIdentifier___block_invoke;
        v25[3] = &unk_1E6A1A5E8;
        v26 = applicationIdentifierPrefix;
        v27 = applicationIdentifier;
        LaunchServices::BindingEvaluator::setFilter_NoIO(&v32, @"universal links", v25);
        LaunchServices::BindingEvaluator::getBestBinding(&v32, details, 0, v28);
        std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(retstr, v28);
        if (v31 == 1)
        {
        }

        LaunchServices::BindingEvaluator::~BindingEvaluator(&v32);
      }
    }
  }

  return result;
}

- (void)enumerateBindingsWithContext:(LSContext *)context forSWCResults:(id)results block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  blockCopy = block;
  if (!resultsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLinkPlugIn.mm" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"swcResults != nil", 0}];
  }

  state = [(_LSAppLinkPlugIn *)self state];
  includeLinksForCallingApplication = [state includeLinksForCallingApplication];

  if (includeLinksForCallingApplication)
  {
    callingBundleIdentifier = 0;
  }

  else
  {
    callingBundleIdentifier = [(_LSSharedWebCredentialsAppLinkPlugIn *)self callingBundleIdentifier];
  }

  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = resultsCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        objc_msgSend_bindingWithContext_forServiceDetails_callingBundleIdentifier_(self);
        if (v25 == 1)
        {
          if (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(v30, v22))
          {
            v19 = 0;
            goto LABEL_17;
          }

          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(v30, v22, v22);
          if ((v25 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          blockCopy[2](blockCopy, v22, v17);
          ++v14;
        }

        v19 = 1;
LABEL_17:
        if (v25 == 1)
        {
        }

        objc_autoreleasePoolPop(v18);
        if (!v19 || v14 >= [(_LSAppLinkPlugIn *)self limit])
        {
          goto LABEL_23;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);
  }

LABEL_23:

  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v30);
}

- (id)appLinksWithContext:(LSContext *)context forSWCResults:(id)results
{
  v31 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4812000000;
  v27[3] = __Block_byref_object_copy__5;
  v27[4] = __Block_byref_object_dispose__5;
  v27[5] = &unk_1818533FF;
  memset(v28, 0, sizeof(v28));
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_forSWCResults___block_invoke;
  v23[3] = &unk_1E6A1A610;
  contextCopy = context;
  v23[4] = self;
  v8 = array;
  v24 = v8;
  v25 = v27;
  [(_LSSharedWebCredentialsAppLinkPlugIn *)self enumerateBindingsWithContext:context forSWCResults:resultsCopy block:v23];
  if (-[_LSAppLinkPlugIn limit](self, "limit") != -1 && [v8 count] >= 2)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 isEnabled])
          {
            v16 = array2;
          }

          else
          {
            v16 = array3;
          }

          [v16 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v12);
    }

    [v11 setArray:array2];
    v17 = [array2 count];
    if (v17 < [(_LSAppLinkPlugIn *)self limit])
    {
      [v11 addObjectsFromArray:array3];
    }
  }

  [LSRecord resolveAllPropertiesOfRecords:"resolveAllPropertiesOfRecords:count:andDetachOnQueue:" count:? andDetachOnQueue:?];

  _Block_object_dispose(v27, 8);
  v29 = v28;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v29);

  return v8;
}

- (id)callingBundleIdentifier
{
  state = [(_LSAppLinkPlugIn *)self state];
  v3 = objc_msgSend_auditToken(state);
  v4 = _LSCopyBundleIdentifierForAuditToken(v3, 1);

  return v4;
}

- (id)appLinksWithContext:(LSContext *)context error:(id *)error
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__142;
  v45 = __Block_byref_object_dispose__143;
  v46 = MEMORY[0x1E695E0F0];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(_LSSWCServiceSpecifierClass());
  v9 = _LSSWCServiceTypeAppLinks();
  uRLComponents = [(_LSAppLinkPlugIn *)self URLComponents];
  host = [uRLComponents host];
  v12 = [v8 initWithServiceType:v9 applicationIdentifier:0 domain:host];

  state = [(_LSAppLinkPlugIn *)self state];
  v14 = objc_msgSend_auditToken(state);

  if (v14 && (_LSSWCServiceDetailsClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v15 = _LSSWCServiceDetailsClass();
    uRLComponents2 = [(_LSAppLinkPlugIn *)self URLComponents];
    limit = [(_LSAppLinkPlugIn *)self limit];
    v18 = v14[1];
    v40[0] = *v14;
    v40[1] = v18;
    v39 = 0;
    v19 = [(objc_class *)v15 serviceDetailsWithServiceSpecifier:v12 URLComponents:uRLComponents2 limit:limit auditToken:v40 error:&v39];
    v20 = v39;
  }

  else
  {
    v21 = _LSSWCServiceDetailsClass();
    uRLComponents2 = [(_LSAppLinkPlugIn *)self URLComponents];
    v38 = 0;
    v19 = [(objc_class *)v21 serviceDetailsWithServiceSpecifier:v12 URLComponents:uRLComponents2 limit:[(_LSAppLinkPlugIn *)self limit] error:&v38];
    v20 = v38;
  }

  v22 = v20;

  if ([v19 count])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke;
    v34[3] = &unk_1E6A1A638;
    v36 = &v41;
    contextCopy = context;
    v34[4] = self;
    v35 = v19;
    v23 = MEMORY[0x1865D71B0](v34);
    if ([__LSDefaultsGetSharedInstance(v23 v24)])
    {
      v25 = _LSServer_DatabaseExecutionContext();
      [(LSDBExecutionContext *)v25 assertNotActiveForThisThread];

      v26 = _LSServer_DatabaseExecutionContext();
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke_2;
      v32[3] = &unk_1E6A1A660;
      v33 = v23;
      [(LSDBExecutionContext *)v26 syncRead:v32];
    }

    else
    {
      v23[2](v23);
    }
  }

  else if (v19)
  {
    v27 = v42[5];
    v42[5] = MEMORY[0x1E695E0F0];
  }

  objc_autoreleasePoolPop(v7);
  v28 = v42[5];
  if (error && !v28)
  {
    v29 = v22;
    *error = v22;
    v28 = v42[5];
  }

  v30 = v28;

  _Block_object_dispose(&v41, 8);

  return v30;
}

@end