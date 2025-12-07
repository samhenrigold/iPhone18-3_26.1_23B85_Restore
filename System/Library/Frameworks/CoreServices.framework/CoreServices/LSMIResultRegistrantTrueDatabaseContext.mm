@interface LSMIResultRegistrantTrueDatabaseContext
- (BOOL)containerizedBundleExistsForIdentifier:(id)identifier;
- (BOOL)fullBundleExistsForIdentifier:(id)identifier matchingNode:(id)node;
- (BOOL)registerNonBundledExtensionPointWithIdentifier:(id)identifier platform:(unsigned int)platform SDKDict:(id)dict url:(id)url error:(id *)error;
- (BOOL)registerPluginNodeReinitializingContext:(id)context installDictionary:(id)dictionary existingPlugin:(unsigned int)plugin error:(id *)error;
- (BOOL)unregisterNonBundledExtensionPointWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)unregisterPluginBundleByUnit:(unsigned int)unit error:(id *)error;
- (LSMIResultRegistrantTrueDatabaseContext)initWithDatabase:(id)database;
- (const)pluginDataForPlugin:(unsigned int)plugin;
- (id)findContainerizedRecordForBundleUnit:(unsigned int)unit error:(id *)error;
- (id)unregisterApplicationBundleByUnit:(unsigned int)unit error:(id *)error;
- (id)unregisterApplicationWithBundleIdentifier:(id)identifier type:(unsigned int)type error:(id *)error;
- (unsigned)findApplicationBundleAtNode:(id)node error:(id *)error;
- (unsigned)findPluginAtNode:(id)node error:(id *)error;
- (unsigned)registerBundleNodeReinitializingContext:(id)context inBundleContainer:(BOOL)container installDictionary:(id)dictionary personasWithAttributes:(id)attributes error:(id *)error;
- (void)enumerateExtensionPointRecords:(id)records;
@end

@implementation LSMIResultRegistrantTrueDatabaseContext

- (LSMIResultRegistrantTrueDatabaseContext)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = LSMIResultRegistrantTrueDatabaseContext;
  v6 = [(LSMIResultRegistrantTrueDatabaseContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context.db, database);
  }

  return v7;
}

- (BOOL)fullBundleExistsForIdentifier:(id)identifier matchingNode:(id)node
{
  v11 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  if (_LSBundleFindWithInfoAndNo_IOFilter(&self->_context, 0, identifier, 0, v10, 2, 128, 0, 0, &v9, 0, 0))
  {
    if (nodeCopy)
    {
      *&v10[0] = 0;
      if (_LSBundleCopyNode(self->_context.db, v9, 0, 0, v10))
      {
        v7 = 0;
      }

      else
      {
        v7 = [*&v10[0] isEqual:nodeCopy];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containerizedBundleExistsForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = 0;
  v10 = kLSVersionNumberNull;
  v11 = unk_1817E90C0;
  v5 = _LSBundleFindWithInfoAndNo_IOFilter([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], 0, identifierCopy, 0, &v10, 2, 128, @"app in container", &__block_literal_global_271, &v9, 0, 0);
  selfCopy = self;
  contextPointer = [(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  v10 = kLSVersionNumberNull;
  v11 = unk_1817E90C0;
  LOBYTE(self) = _LSBundleFindWithInfoAndNo_IOFilter(contextPointer, 0, identifierCopy, 0, &v10, 2, 1152, @"app in container", &__block_literal_global_271, &v9, 0, 0);

  return (self | v5) & 1;
}

- (unsigned)registerBundleNodeReinitializingContext:(id)context inBundleContainer:(BOOL)container installDictionary:(id)dictionary personasWithAttributes:(id)attributes error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dictionaryCopy = dictionary;
  attributesCopy = attributes;
  v22 = 0;
  v14 = [(FSNode *)dictionaryCopy mutableCopy];
  v15 = v14;
  if (attributesCopy)
  {
    [v14 setObject:attributesCopy forKeyedSubscript:@"LSPersonaUniqueStrings"];
  }

  v16 = _LSFindOrRegisterBundleNode(&self->_context, contextCopy, 0, 0x2000001u, dictionaryCopy, &v22, 0);
  if (v16)
  {
    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"could not register full bundle unit while registering parallel placeholder";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v16, v17, "[LSMIResultRegistrantTrueDatabaseContext registerBundleNodeReinitializingContext:inBundleContainer:installDictionary:personasWithAttributes:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 996);
  }

  else
  {
    v18 = 0;
  }

  v19 = v22;
  if (error && !v22)
  {
    v20 = v18;
    *error = v18;
    v19 = v22;
  }

  return v19;
}

- (BOOL)registerPluginNodeReinitializingContext:(id)context installDictionary:(id)dictionary existingPlugin:(unsigned int)plugin error:(id *)error
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  LOBYTE(error) = _LSRegisterPluginNode([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], contextCopy, dictionaryCopy, 0x2000000u, 0, error);

  return error;
}

- (unsigned)findApplicationBundleAtNode:(id)node error:(id *)error
{
  nodeCopy = node;
  v10 = 0;
  v7 = _LSBundleFindWithNode([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], nodeCopy, &v10, 0);
  if (error && v7)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v7, 0, "[LSMIResultRegistrantTrueDatabaseContext findApplicationBundleAtNode:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1015);
  }

  v8 = v10;

  return v8;
}

- (unsigned)findPluginAtNode:(id)node error:(id *)error
{
  nodeCopy = node;
  v9 = 0;
  if (_LSPluginFindWithInfo(*[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], 0, 0, 0, nodeCopy, &v9, error))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (const)pluginDataForPlugin:(unsigned int)plugin
{
  v3 = *&plugin;
  v4 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];

  return _LSGetPlugin(v4, v3);
}

- (id)findContainerizedRecordForBundleUnit:(unsigned int)unit error:(id *)error
{
  v4 = [[LSApplicationRecord alloc] _initWithContext:&self->_context bundleID:*&unit bundleData:0 error:error];

  return v4;
}

- (id)unregisterApplicationWithBundleIdentifier:(id)identifier type:(unsigned int)type error:(id *)error
{
  typeCopy = type;
  identifierCopy = identifier;
  v20 = 0;
  if ((typeCopy & 4) != 0)
  {
    v13 = typeCopy & 2 | 5;
  }

  else
  {
    v13 = typeCopy & 3;
  }

  v14 = _LSUnregisterAppWithBundleID(&self->_context, identifierCopy, v13, &v20, v8, v9, v10, v11);
  if (v14)
  {
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "[LSMIResultRegistrantTrueDatabaseContext unregisterApplicationWithBundleIdentifier:type:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1093);
    v16 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationWithBundleIdentifier_type_error___block_invoke;
    v18[3] = &__block_descriptor_36_e8_v16__0_8l;
    v19 = v20;
    v16 = [v18 copy];
    v15 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
    v15 = v15;
    *error = v15;
  }

LABEL_10:

  return v16;
}

void __96__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationWithBundleIdentifier_type_error___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([__LSDefaultsGetSharedInstance(v3 v4)])
  {
    goto LABEL_11;
  }

  v5 = v3;
  v6 = [v5 applicationType];
  v7 = [v6 isEqualToString:@"System"];

  if (v7)
  {
    v8 = *(a1 + 32);
    if ((v8 - 8) < 2)
    {
      v9 = [v5 bundleIdentifier];
      _LSNoteSystemAppInstallOrUninstall(v9, 0);
LABEL_7:

      goto LABEL_8;
    }

    if (v8 == 10)
    {
      v9 = [v5 bundleIdentifier];
      _LSNoteSystemAppInstallOrUninstall(v9, 1u);
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*(a1 + 32) == 8)
  {
    v10 = +[LSApplicationRestrictionsManager sharedInstance];
    [(LSApplicationRestrictionsManager *)v10 schedulePruneObsoleteTrustedSignerIdentities];
  }

  v11 = +[_LSInstallProgressService sharedInstance];
  v12 = *(a1 + 32);
  v14[0] = v5;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v11 sendNotification:v12 forAppProxies:v13 Plugins:0 completion:0];

LABEL_11:
}

- (id)unregisterApplicationBundleByUnit:(unsigned int)unit error:(id *)error
{
  v5 = *&unit;
  v7 = _LSBundleGet(self->_context.db, *&unit);
  if (v7)
  {
    v15 = 0;
    if (_LSUnregisterAppByUnit([(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], v5, v7, &v15, error))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __83__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationBundleByUnit_error___block_invoke;
      v13[3] = &__block_descriptor_36_e8_v16__0_8l;
      v14 = v15;
      v8 = [v13 copy];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = _LSRegistrationLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LSMIResultRegistrantTrueDatabaseContext unregisterApplicationBundleByUnit:v5 error:v9];
    }

    if (error)
    {
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSMIResultRegistrantTrueDatabaseContext unregisterApplicationBundleByUnit:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1118);
      v11 = v10;
      v8 = 0;
      *error = v10;
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

void __83__LSMIResultRegistrantTrueDatabaseContext_unregisterApplicationBundleByUnit_error___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_LSInstallProgressService sharedInstance];
  v5 = *(a1 + 32);
  v7[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 sendNotification:v5 forAppProxies:v6 Plugins:0 completion:0];
}

- (BOOL)unregisterPluginBundleByUnit:(unsigned int)unit error:(id *)error
{
  v5 = _LSPluginUnregister(*[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], *&unit);
  v6 = v5;
  if (error && v5)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "[LSMIResultRegistrantTrueDatabaseContext unregisterPluginBundleByUnit:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1127);
  }

  return v6 == 0;
}

- (void)enumerateExtensionPointRecords:(id)records
{
  recordsCopy = records;
  v5 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  [(_LSDatabase *)v5 store];
  [(_LSDatabase *)v5 schema];
  v6 = v5;
  v7 = recordsCopy;
  _CSStoreEnumerateUnits();
}

void __74__LSMIResultRegistrantTrueDatabaseContext_enumerateExtensionPointRecords___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LSRecord *)[LSExtensionPointRecord alloc] _initWithContext:*(a1 + 48) tableID:*([(_LSDatabase *)*(a1 + 32) schema]+ 1592) unitID:a2];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)registerNonBundledExtensionPointWithIdentifier:(id)identifier platform:(unsigned int)platform SDKDict:(id)dict url:(id)url error:(id *)error
{
  v10 = *&platform;
  identifierCopy = identifier;
  dictCopy = dict;
  urlCopy = url;
  v15 = _LSRegisterExtensionPoint(*[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer], 0, identifierCopy, v10, dictCopy, urlCopy);
  v16 = v15;
  if (error && v15)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, 0, "[LSMIResultRegistrantTrueDatabaseContext registerNonBundledExtensionPointWithIdentifier:platform:SDKDict:url:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 1161);
  }

  return v16 == 0;
}

- (BOOL)unregisterNonBundledExtensionPointWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = __Block_byref_object_copy__286;
  v16 = __Block_byref_object_dispose__287;
  v17 = &unk_1818533FF;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v6 = *[(LSMIResultRegistrantTrueDatabaseContext *)self contextPointer];
  [(_LSDatabase *)v6 store];
  [(_LSDatabase *)v6 schema];
  v7 = v6;
  v8 = identifierCopy;
  _CSStoreEnumerateUnits();
  v9 = v13[6];
  v10 = v13[7];
  while (v9 != v10)
  {
    _LSExtensionPointRemove(v7, *v9++);
  }

  _Block_object_dispose(&v12, 8);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return 1;
}

void __98__LSMIResultRegistrantTrueDatabaseContext_unregisterNonBundledExtensionPointWithIdentifier_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a3 + 56))
  {
    [(_LSDatabase *)*(a1 + 32) store];
    v5 = _CSStringCopyCFString();
    v6 = [v5 isEqual:*(a1 + 40)];

    if (v6)
    {
      v7 = *(*(a1 + 48) + 8);
      v9 = v7[7];
      v8 = v7[8];
      if (v9 >= v8)
      {
        v11 = v7[6];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
        v17 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v14;
        }

        if (v17)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v7 + 6), v17);
        }

        v18 = (v9 - v11) >> 2;
        v19 = (4 * v13);
        v20 = (4 * v13 - 4 * v18);
        *v19 = a2;
        v10 = v19 + 1;
        memcpy(v20, v11, v12);
        v21 = v7[6];
        v7[6] = v20;
        v7[7] = v10;
        v7[8] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = a2;
        v10 = v9 + 4;
      }

      v7[7] = v10;
    }
  }
}

- (void)unregisterApplicationBundleByUnit:(unsigned int)a1 error:(NSObject *)a2 .cold.1(unsigned int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "couldn't find bundle for unit %llx, but we should have it in this flow!", &v2, 0xCu);
}

@end