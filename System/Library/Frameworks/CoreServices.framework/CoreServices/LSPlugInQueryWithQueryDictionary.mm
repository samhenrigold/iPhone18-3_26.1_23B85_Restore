@interface LSPlugInQueryWithQueryDictionary
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPlugin:(unsigned int)plugin pluginData:(const LSPluginData *)data withDatabase:(id)database;
- (LSPlugInQueryWithQueryDictionary)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)_initWithQueryDictionary:(id)dictionary applyFilter:(id)filter;
- (id)systemMode;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
@end

@implementation LSPlugInQueryWithQueryDictionary

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 16) = 0;
  return self;
}

- (id)systemMode
{
  os_unfair_lock_lock(&self->_systemModeMutex);
  p_cachedSystemMode = &self->_cachedSystemMode;
  if (!self->_cachedSystemMode.__engaged_)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    systemMode = [v4 systemMode];
    if (self->_cachedSystemMode.__engaged_)
    {
      val = p_cachedSystemMode->var0.__val_;
      p_cachedSystemMode->var0.__val_ = systemMode;
    }

    else
    {
      p_cachedSystemMode->var0.__val_ = systemMode;
      self->_cachedSystemMode.__engaged_ = 1;
    }

    if (!self->_cachedSystemMode.__engaged_)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      v10 = v9;

      os_unfair_lock_unlock(&self->_systemModeMutex);
      _Unwind_Resume(v10);
    }
  }

  v7 = p_cachedSystemMode->var0.__val_;
  os_unfair_lock_unlock(&self->_systemModeMutex);

  return v7;
}

- (id)_initWithQueryDictionary:(id)dictionary applyFilter:(id)filter
{
  dictionaryCopy = dictionary;
  filterCopy = filter;
  v23.receiver = self;
  v23.super_class = LSPlugInQueryWithQueryDictionary;
  _init = [(LSPlugInQuery *)&v23 _init];
  if (_init)
  {
    v9 = [dictionaryCopy copy];
    v10 = _init[2];
    _init[2] = v9;

    v11 = [dictionaryCopy ls_parseQueryForIdentifiers:@"NSExtensionIdentifier"];
    v12 = [v11 copy];
    v13 = _init[3];
    _init[3] = v12;

    v14 = [dictionaryCopy ls_parseQueryForIdentifiers:@"NSExtensionPointName"];
    v15 = [v14 copy];
    v16 = _init[4];
    _init[4] = v15;

    v17 = [filterCopy copy];
    v18 = _init[5];
    _init[5] = v17;

    v19 = [dictionaryCopy objectForKey:@"LSShouldORIdentifiers"];

    if (v19)
    {
      v20 = _init[2];
      _init[2] = 0;
    }
  }

  if (_LSEntitledForPluginQuery())
  {
    v21 = _init;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)matchesPlugin:(unsigned int)plugin pluginData:(const LSPluginData *)data withDatabase:(id)database
{
  v6 = *&plugin;
  databaseCopy = database;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  active_platform = dyld_get_active_platform();
  if (_LSPluginIsValid(databaseCopy, v6, data, self->_filterBlock, 0, 0))
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    if (getkMISMinSupportedSignatureVersion_ptr(void)::onceToken != -1)
    {
      [LSPlugInQueryWithQueryDictionary matchesPlugin:pluginData:withDatabase:];
    }

    if (getkMISMinSupportedSignatureVersion_ptr(void)::ptr)
    {
      v10 = *getkMISMinSupportedSignatureVersion_ptr(void)::ptr;
    }

    else
    {
      v10 = 0;
    }

    queryDict = self->_queryDict;
    v12 = objc_opt_class();
    v13 = [(NSDictionary *)queryDict objectForKey:@"LS:IncludeUnsupportedCodeSignatures"];
    v14 = v13;
    if (v12 && v13 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v14 = 0;
    }

    bOOLValue = [v14 BOOLValue];

    v16 = data->var0.signatureVersion >= v10;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke;
    v61[3] = &unk_1E6A1ABC0;
    v61[4] = &v62;
    _LSEnumerateSliceMask(data->var0._sliceMask, v61);
    v17 = v16 | bOOLValue;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__40;
    v59 = __Block_byref_object_dispose__40;
    v60 = 0;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_60;
    v51[3] = &unk_1E6A1D798;
    v53 = &v55;
    v18 = databaseCopy;
    v52 = v18;
    dataCopy = data;
    v19 = MEMORY[0x1865D71B0](v51);
    v20 = self->_queryDict;
    if (!v20 && ((*(v63 + 24) != 0) & v17) == 1 && data->var0.platform == active_platform)
    {
      *(v67 + 24) = 1;
    }

    else if (v17)
    {
      v21 = [(NSDictionary *)v20 objectForKeyedSubscript:@"LS:ExtensionPlatforms"];
      v43 = v21;
      v22 = [v21 count];
      v23 = MEMORY[0x1E695DFD8];
      if (v22)
      {
        v24 = [MEMORY[0x1E695DFD8] setWithArray:v21];
      }

      else
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:active_platform];
        v24 = [v23 setWithObject:v25];
      }

      systemMode = [(LSPlugInQueryWithQueryDictionary *)self systemMode];
      v26 = self->_queryDict;
      v27 = objc_opt_class();
      v28 = [(NSDictionary *)v26 objectForKey:@"LS:IncludeRestricted"];
      v29 = v28;
      if (v27 && v28 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v29 = 0;
      }

      bOOLValue2 = [v29 BOOLValue];

      if (systemMode)
      {
        v31 = bOOLValue2;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v19[2](v19);
        v33 = v56[5];
        v34 = objc_opt_class();
        v35 = [v33 objectForKey:@"LSExtensionRestrictedSystemModes"];
        v36 = v35;
        if (v34 && v35 && (objc_opt_isKindOfClass() & 1) == 0)
        {

          v36 = 0;
        }

        v32 = [v36 containsObject:systemMode];
      }

      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:data->var0.platform];
      v38 = v24;
      v39 = [v24 containsObject:v37];

      if (!(v32 & 1 | ((v39 & 1) == 0)))
      {
        v40 = self->_queryDict;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_2;
        v45[3] = &unk_1E6A1D7E8;
        v48 = &v66;
        dataCopy2 = data;
        v46 = v18;
        v47 = v19;
        v49 = &v55;
        [(NSDictionary *)v40 enumerateKeysAndObjectsUsingBlock:v45];
      }
    }

    else
    {
      *(v67 + 24) = 0;
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v62, 8);
  }

  v41 = *(v67 + 24);
  _Block_object_dispose(&v66, 8);

  return v41;
}

uint64_t __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _LSIsCPUTypeSubtypeRunnable(a2, SHIDWORD(a2));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_60(uint64_t a1, uint64_t a2, _LSPlistHint *a3)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = _LSPlistGetDictionary(*(a1 + 32), *(*(a1 + 48) + 136), a3);
    v4 = *(a1 + 32);
    SDKDictionaryDataUnit = _LSPluginGetSDKDictionaryDataUnit(v4, 0, *(a1 + 48));
    v7 = _LSPlistGetDictionary(v4, SDKDictionaryDataUnit, v6);
    v8 = [v12 ls_resolvePlugInKitInfoPlistWithDictionary:v7];
    v9 = [v8 copy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (([v7 hasPrefix:@"ENTITLEMENT:"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"NSUserElection") & 1) != 0 || _NSIsNSString() && (objc_msgSend(v8, "hasPrefix:", @"?CODEREQUIREMENT") & 1) != 0 || (_NSIsNSDictionary() & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"LS:ExtensionPlatforms") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"LS:IncludeUnsupportedArchitectures") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"LS:IncludeRestricted"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_10;
  }

  v9 = getValueForKeyFromPlugin(v7, *(a1 + 64), *(a1 + 32));
  if (!v9)
  {
    (*(*(a1 + 40) + 16))();
    v9 = getValueForKeyFromPlist(v7, *(*(*(a1 + 56) + 8) + 40));
  }

  if ([v8 isEqual:MEMORY[0x1E695E110]])
  {
    if (v9)
    {
      v10 = [v9 isEqual:MEMORY[0x1E695E110]];
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_24;
  }

  if (!v9)
  {
LABEL_27:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_28;
  }

  if (![v8 isEqual:MEMORY[0x1E695E118]])
  {
    if (_NSIsNSString())
    {
      v10 = [v9 ls_matchesForPluginQuery:v8];
LABEL_24:
      *(*(*(a1 + 48) + 8) + 24) = v10;
      goto LABEL_28;
    }

    if (_NSIsNSArray())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_3;
      v11[3] = &unk_1E6A1D7C0;
      v13 = *(a1 + 48);
      v12 = v8;
      [v9 enumerateObjectsUsingBlock:v11];

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(*(*(a1 + 48) + 8) + 24) = [v9 isEqual:MEMORY[0x1E695E110]] ^ 1;
LABEL_28:

LABEL_10:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (_NSIsNSString())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 ls_matchesForPluginQuery:*(a1 + 32)];
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v42 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  v8 = blockCopy;
  if (connectionCopy)
  {
    v9 = _LSDefaultLog(blockCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LSPlugInQueryWithQueryDictionary _enumerateWithXPCConnection:v9 block:?];
    }
  }

  v38 = 0;
  v39 = 0;
  inited = _LSContextInitReturningError(&v39, &v38);
  v11 = v38;
  if (inited)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    if ([(NSArray *)self->_extensionIdentifiers count]|| [(NSArray *)self->_extensionPointIdentifiers count])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3321888768;
      v34[2] = __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke;
      v34[3] = &unk_1EEF63C80;
      v35 = v12;
      selfCopy = self;
      v37 = v39;
      v13 = MEMORY[0x1865D71B0](v34);
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v30 = 0u;
      v14 = self->_extensionIdentifiers;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v15)
      {
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v14);
            }

            StringForCFString = _LSDatabaseGetStringForCFString(v39, *(*(&v30 + 1) + 8 * i), 0);
            _LSDatabaseEnumeratingBindingMap(v39, 9, StringForCFString, v13);
          }

          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v41 count:16];
        }

        while (v15);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v19 = self->_extensionPointIdentifiers;
      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v40 count:16];
      if (v20)
      {
        v21 = *v27;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = _LSDatabaseGetStringForCFString(v39, *(*(&v26 + 1) + 8 * j), 0);
            _LSDatabaseEnumeratingBindingMap(v39, 10, v23, v13);
          }

          v20 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v40 count:16];
        }

        while (v20);
      }
    }

    else
    {
      [(_LSDatabase *)v39 store];
      [(_LSDatabase *)v39 schema];
      v25 = v39;
      v24 = v12;
      _CSStoreEnumerateUnits();
    }

    [(LSPlugInQuery *)self sort:1 pluginIDs:v12 andYield:v8 context:&v39];
    _LSContextDestroy(&v39);
  }

  else
  {
    (v8)[2](v8, 0, v11);
  }
}

void __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  LOBYTE(v5) = [v5 containsObject:?];

  if ((v5 & 1) == 0 && [*(a1 + 40) matchesPlugin:a3 pluginData:_LSGetPlugin(*(a1 + 48) withDatabase:{a3), *(a1 + 48)}])
  {
    v6 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    [v6 addObject:?];
  }
}

void __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke_79(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && [*(a1 + 32) matchesPlugin:a2 pluginData:a3 withDatabase:*(a1 + 48)])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v5 addObject:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithQueryDictionary;
  if (![(LSPlugInQuery *)&v12 isEqual:equalCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  v6 = v5;
  queryDict = self->_queryDict;
  if (!queryDict)
  {
    _queryDictionary = [v5 _queryDictionary];

    if (!_queryDictionary)
    {
      v10 = 1;
      goto LABEL_7;
    }

    queryDict = self->_queryDict;
  }

  _queryDictionary2 = [v6 _queryDictionary];
  v10 = [(NSDictionary *)queryDict isEqual:_queryDictionary2];

LABEL_7:
LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  ls_hashQuery = [(NSDictionary *)self->_queryDict ls_hashQuery];
  v5.receiver = self;
  v5.super_class = LSPlugInQueryWithQueryDictionary;
  return [(LSPlugInQuery *)&v5 hash]^ ls_hashQuery;
}

- (LSPlugInQueryWithQueryDictionary)initWithCoder:(id)coder
{
  v4 = [coder decodePropertyListForKey:@"query"];
  v5 = [(LSPlugInQueryWithQueryDictionary *)self _initWithQueryDictionary:v4 applyFilter:0];

  return v5;
}

@end