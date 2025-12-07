@interface LSApplicationExtensionRecord
+ (id)_propertyClasses;
+ (id)appexRecordsForUnitIDsWithContext:(LSContext *)context unitIDs:(const void *)ds;
+ (id)applicationExtensionRecordsForUUIDs:(id)ds outContainingBundleRecords:(id *)records error:(id *)error;
+ (id)enumeratorWithExtensionPointRecord:(id)record options:(unint64_t)options;
+ (id)enumeratorWithOptions:(unint64_t)options;
+ (id)redactedAppexRecordWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform error:(id *)error;
- (BOOL)_usesSystemPersona;
- (BOOL)appProtectionHidden;
- (BOOL)appProtectionLocked;
- (BOOL)isUpdating;
- (LSApplicationExtensionRecord)initWithBundleIdentifier:(id)identifier requireValid:(BOOL)valid platform:(unsigned int)platform error:(id *)error;
- (LSApplicationExtensionRecord)initWithURL:(id)l requireValid:(BOOL)valid error:(id *)error;
- (LSBundleRecord)containingBundleRecord;
- (char)developerType;
- (id)_containingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_initWithContext:(LSContext *)context pluginID:(unsigned int)d pluginData:(const LSPluginData *)data error:(id *)error;
- (id)_initWithContext:(LSContext *)context pluginID:(unsigned int)d pluginData:(const LSPluginData *)data extensionPointRecord:(id)record error:(id *)error;
- (id)_initWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context requireValid:(BOOL)valid error:(id *)error;
- (id)_initWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform context:(LSContext *)CurrentContext requireValid:(BOOL)valid allowRedacted:(BOOL)redacted error:(id *)self0;
- (id)_intentsArrayForKey:(id)key;
- (id)_personasWithAttributes;
- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder;
- (id)appProtectionEffectiveContainerWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)associatedPersonas;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectiveBundleIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)extensionPointRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)managedPersonas;
- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error;
- (id)uniqueIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (unint64_t)compatibilityState;
- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
@end

@implementation LSApplicationExtensionRecord

- (LSBundleRecord)containingBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(LSApplicationExtensionRecord *)self _containingBundleRecord];
  }

  return WeakRetained;
}

- (char)developerType
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  v4 = containingBundleRecord;
  if (containingBundleRecord)
  {
    developerType = [containingBundleRecord developerType];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LSApplicationExtensionRecord;
    developerType = [(LSBundleRecord *)&v8 developerType];
  }

  v6 = developerType;

  return v6;
}

+ (id)_propertyClasses
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (BOOL)appProtectionLocked
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  appProtectionLocked = [containingBundleRecord appProtectionLocked];

  return appProtectionLocked;
}

- (id)_personasWithAttributes
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  _personasWithAttributes = [containingBundleRecord _personasWithAttributes];

  return _personasWithAttributes;
}

- (BOOL)_usesSystemPersona
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  _usesSystemPersona = [containingBundleRecord _usesSystemPersona];

  return _usesSystemPersona;
}

- (LSApplicationExtensionRecord)initWithURL:(id)l requireValid:(BOOL)valid error:(id *)error
{
  validCopy = valid;
  v8 = [[FSNode alloc] initWithURL:l flags:32 error:0];
  v9 = [(LSApplicationExtensionRecord *)self _initWithUUID:0 node:v8 bundleIdentifier:0 context:0 requireValid:validCopy error:error];

  return v9;
}

- (LSApplicationExtensionRecord)initWithBundleIdentifier:(id)identifier requireValid:(BOOL)valid platform:(unsigned int)platform error:(id *)error
{
  v7 = *&platform;
  validCopy = valid;
  LOBYTE(v12) = _LSCurrentProcessMayMapDatabase() == 0;
  return [(LSApplicationExtensionRecord *)self _initWithUUID:0 node:0 bundleIdentifier:identifier platform:v7 context:0 requireValid:validCopy allowRedacted:v12 error:error];
}

- (id)effectiveBundleIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    [(_LSDatabase *)context->db store];
    v9 = _CSStringCopyCFString();
  }

  v10 = v9;

  return v10;
}

- (id)uniqueIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extensionPointRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  v13 = 0;
  v12 = 0;
  v7 = _LSExtensionPointFindWithStringID(context->db, bytes->var4, bytes->var0.platform, 0, &v13, &v12);
  v8 = 0;
  if (!v7)
  {
    v9 = [LSExtensionPointRecord alloc];
    schema = [(_LSDatabase *)context->db schema];
    v8 = [(LSRecord *)v9 _initWithContext:context tableID:*(schema + 1592) unitID:v13];
  }

  return v8;
}

- (BOOL)appProtectionHidden
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  appProtectionHidden = [containingBundleRecord appProtectionHidden];

  return appProtectionHidden;
}

- (BOOL)isUpdating
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  hasParallelPlaceholder = [containingBundleRecord hasParallelPlaceholder];

  return hasParallelPlaceholder;
}

- (id)_initWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context requireValid:(BOOL)valid error:(id *)error
{
  validCopy = valid;
  LOBYTE(v16) = _LSCurrentProcessMayMapDatabase() == 0;
  return [(LSApplicationExtensionRecord *)self _initWithUUID:d node:node bundleIdentifier:identifier platform:0 context:context requireValid:validCopy allowRedacted:v16 error:error];
}

- (id)_initWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform context:(LSContext *)CurrentContext requireValid:(BOOL)valid allowRedacted:(BOOL)redacted error:(id *)self0
{
  validCopy = valid;
  v12 = *&platform;
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (!MayMapDatabase && redacted)
  {
    v18 = [LSApplicationExtensionRecord redactedAppexRecordWithUUID:d node:node bundleIdentifier:identifier platform:v12 error:error];

    v19 = v18;
    if (!d)
    {
      return v19;
    }

    goto LABEL_20;
  }

  if (!CurrentContext)
  {
    CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
  }

  v32 = CurrentContext;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v20 = +[_LSDServiceDomain defaultServiceDomain];
  v21 = LaunchServices::Database::Context::_get(&v32, v20, 0);

  if (!v21)
  {
    if (error)
    {
      v25 = +[_LSDServiceDomain defaultServiceDomain];
      v26 = LaunchServices::Database::Context::_get(&v32, v25, 0);

      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v35;
      }

      *error = v27;
    }

    goto LABEL_15;
  }

  v31 = 0;
  PluginDataInContext = findPluginDataInContext(v21, d, node, identifier, validCopy, v12, &v31, error);
  if (!v31)
  {
LABEL_15:

    v19 = 0;
    goto LABEL_16;
  }

  v23 = PluginDataInContext;
  schema = [(_LSDatabase *)*v21 schema];
  v19 = [(LSBundleRecord *)self _initWithNode:node bundleIdentifier:identifier context:v21 tableID:*(schema + 1588) unitID:v31 bundleBaseData:v23 error:error];
LABEL_16:
  if (v32 && v34 == 1)
  {
    _LSContextDestroy(&v32->db);
  }

  v28 = v33;
  v32 = 0;
  v33 = 0;

  v34 = 0;
  v29 = v35;
  v35 = 0;

  if (d)
  {
LABEL_20:
    if (v19)
    {
      [v19 _setResolvedPropertyValue:d forGetter:sel_uniqueIdentifier];
    }
  }

  return v19;
}

- (id)_initWithContext:(LSContext *)context pluginID:(unsigned int)d pluginData:(const LSPluginData *)data extensionPointRecord:(id)record error:(id *)error
{
  v8 = [(LSApplicationExtensionRecord *)self _initWithContext:context pluginID:*&d pluginData:data error:error];
  [v8 _setResolvedPropertyValue:record forGetter:sel_extensionPointRecord];
  return v8;
}

- (id)_initWithContext:(LSContext *)context pluginID:(unsigned int)d pluginData:(const LSPluginData *)data error:(id *)error
{
  dataCopy = data;
  v8 = *&d;
  v14[1] = *MEMORY[0x1E69E9840];
  if (data || (dataCopy = _LSGetPlugin(context->db, *&d)) != 0)
  {
    if (self)
    {
      return [(LSBundleRecord *)self _initWithNode:0 bundleIdentifier:0 context:context tableID:*([(_LSDatabase *)context->db schema]+ 1588) unitID:v8 bundleBaseData:dataCopy error:error];
    }
  }

  else
  {
    if (error)
    {
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"Unable to find this application extension record in the Launch Services database.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v12, "[LSApplicationExtensionRecord _initWithContext:pluginID:pluginData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationExtensionRecord.mm", 248);
    }
  }

  return 0;
}

+ (id)applicationExtensionRecordsForUUIDs:(id)ds outContainingBundleRecords:(id *)records error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v81, v6, 0);

  if (v7)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v8 = objc_autoreleasePoolPush();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    dsCopy = ds;
    v10 = 0;
    v11 = [dsCopy countByEnumeratingWithState:&v74 objects:v90 count:16];
    if (v11)
    {
      v12 = *v75;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v75 != v12)
          {
            objc_enumerationMutation(dsCopy);
          }

          v14 = *(*(&v74 + 1) + 8 * i);
          *buf = 0;
          v73 = v10;
          PluginDataInContext = findPluginDataInContext(v7, v14, 0, 0, 0, 0, buf, &v73);
          v16 = v73;

          v10 = v16;
          if (PluginDataInContext)
          {
            v17 = *buf == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            LODWORD(v70) = *buf;
            *(&v70 + 1) = v14;
            std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::push_back[abi:nn200100](&v78, &v70);
          }
        }

        v11 = [dsCopy countByEnumeratingWithState:&v74 objects:v90 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v8);
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v18 = v78;
    v61 = v79;
    if (v78 != v79)
    {
      v56 = *MEMORY[0x1E696A768];
      v57 = *MEMORY[0x1E696A278];
      do
      {
        v62 = *v18;
        v19 = _LSGetPlugin(*v7, v62);
        v20 = v19;
        if (v19)
        {
          v69 = *(v19 + 224);
          if (v69)
          {
            v21 = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(&v70, &v69);
            v59 = v20;
            if (v21)
            {
              v22 = v21[3];
              if (!v22)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationExtensionRecord.mm" lineNumber:320 description:@"why don't we have a container in the map?"];

                v22 = 0;
              }
            }

            else
            {
              v29 = [LSApplicationRecord alloc];
              v68 = v10;
              v30 = [(LSApplicationRecord *)v29 _initWithContext:v7 bundleID:v69 bundleData:0 error:&v68];
              v31 = v68;

              if (v30)
              {
                *buf = v69;
                v32 = v30;
                *&v89[4] = v32;
                std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSApplicationRecord * {__strong}>>(&v70, buf, buf);

                v10 = v31;
                v22 = v32;
              }

              else
              {
                v22 = 0;
                v10 = v31;
              }
            }

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v60 = v22;
            applicationExtensionRecords = [v22 applicationExtensionRecords];
            v34 = [applicationExtensionRecords countByEnumeratingWithState:&v64 objects:v87 count:16];
            if (v34)
            {
              v35 = *v65;
LABEL_29:
              v36 = 0;
              while (1)
              {
                if (*v65 != v35)
                {
                  objc_enumerationMutation(applicationExtensionRecords);
                }

                v37 = *(*(&v64 + 1) + 8 * v36);
                uniqueIdentifier = [v37 uniqueIdentifier];
                v39 = [uniqueIdentifier isEqual:*(v18 + 1)];

                if (v39)
                {
                  break;
                }

                if (v34 == ++v36)
                {
                  v34 = [applicationExtensionRecords countByEnumeratingWithState:&v64 objects:v87 count:16];
                  if (v34)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_35;
                }
              }

              v28 = v37;

              v20 = v59;
              if (v28)
              {
                goto LABEL_38;
              }
            }

            else
            {
LABEL_35:

              v20 = v59;
            }
          }

          v40 = [LSApplicationExtensionRecord alloc];
          v63 = v10;
          v28 = [(LSApplicationExtensionRecord *)v40 _initWithContext:v7 pluginID:v62 pluginData:v20 error:&v63];
          v41 = v63;

          v10 = v41;
          if (v28)
          {
LABEL_38:
            [v58 addObject:v28];
          }
        }

        else
        {
          v24 = _LSDefaultLog(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *v89 = v62;
            _os_log_error_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "unexpected error finding plugin with unit %lu", buf, 0xCu);
          }

          v85 = v57;
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find plugin for unit %lu", v62];
          v86 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v27 = _LSMakeNSErrorImpl(v56, -10810, v26, "+[LSApplicationExtensionRecord applicationExtensionRecordsForUUIDs:outContainingBundleRecords:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationExtensionRecord.mm", 345);

          v28 = 0;
          v10 = v27;
        }

        v18 += 4;
      }

      while (v18 != v61);
    }

    if ([v58 count])
    {
      v42 = v58;
      if (records)
      {
        v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (j = v71; j; j = *j)
        {
          [v43 addObject:j[3]];
        }

        v45 = *records;
        *records = v43;
      }
    }

    else
    {
      v42 = 0;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(&v70);

    *&v70 = &v78;
    std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v70);
  }

  else
  {
    v46 = +[_LSDServiceDomain defaultServiceDomain];
    v47 = LaunchServices::Database::Context::_get(&v81, v46, 0);

    if (v47)
    {
      v10 = 0;
    }

    else
    {
      v10 = v84;
    }

    v42 = 0;
  }

  if (error && !v42)
  {
    v48 = v10;
    *error = v10;
  }

  if (v81 && v83 == 1)
  {
    _LSContextDestroy(v81);
  }

  v49 = v82;
  v81 = 0;
  v82 = 0;

  v83 = 0;
  v50 = v84;
  v84 = 0;

  return v42;
}

- (id)_containingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);

  if (WeakRetained)
  {
    goto LABEL_2;
  }

  v9 = _LSBundleGet(context->db, bytes->var8);
  if (v9)
  {
    if (v9[42] != 2)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    v9 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:bytes->var8 bundleData:v9 error:0];
  }

LABEL_3:

  return v9;
}

- (unint64_t)compatibilityState
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  v4 = containingBundleRecord;
  if (containingBundleRecord)
  {
    compatibilityState = [containingBundleRecord compatibilityState];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LSApplicationExtensionRecord;
    compatibilityState = [(LSBundleRecord *)&v8 compatibilityState];
  }

  v6 = compatibilityState;

  return v6;
}

- (id)managedPersonas
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  managedPersonas = [containingBundleRecord managedPersonas];

  return managedPersonas;
}

- (id)associatedPersonas
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  associatedPersonas = [containingBundleRecord associatedPersonas];

  return associatedPersonas;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  var3 = data->var3;
  if (var3 != *([(_LSDatabase *)context->db schema]+ 1588))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationExtensionRecord.mm" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"pi->tableID == ctx->db.schema->pluginTable"}];
  }

  v13.receiver = self;
  v13.super_class = LSApplicationExtensionRecord;
  return [(LSBundleRecord *)&v13 _initWithContext:context persistentIdentifierData:data length:length];
}

- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v7 = *&iD;
  v8 = *&d;
  [(LSApplicationExtensionRecord *)self uniqueIdentifier];

  v15.receiver = self;
  v15.super_class = LSApplicationExtensionRecord;
  [(LSBundleRecord *)&v15 _detachFromContext:context tableID:v8 unitID:v7 unitBytes:bytes];
  v11 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__containingBundleRecord];
  v12 = v11;
  if (v11)
  {
    [v11 detach];
  }

  v13 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_extensionPointRecord];
  v14 = v13;
  if (v13)
  {
    [v13 detach];
  }
}

- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder
{
  if (sel__containingBundleRecord == getter)
  {
    valueCopy = value;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LSApplicationExtensionRecord;
    valueCopy = [LSRecord _replacementObjectForResolvedPropertyValue:sel__replacementObjectForResolvedPropertyValue_forGetter_encoder_ forGetter:value encoder:?];
  }

  return valueCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSApplicationExtensionRecord;
  v4 = [(LSBundleRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);
    objc_storeWeak(v4 + 10, WeakRetained);
  }

  return v4;
}

- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  infoDictionary = bytes->var0.infoDictionary;
  if (infoDictionary)
  {
    v7 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:infoDictionary, *&iD];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v9 = [v7 objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = [v9 objectForKey:@"CFBundlePrimaryIcon"];
  if (_NSIsNSDictionary())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 objectForKey:@"ISGraphicIconConfiguration"];

  if (_NSIsNSDictionary())
  {
    [v8 setObject:v13 forKeyedSubscript:@"ISGraphicIconConfiguration"];
  }

  if (v12)
  {
    [v8 addEntriesFromDictionary:v12];
  }

  else
  {
LABEL_12:
    v14 = [v7 objectForKey:@"CFBundleIconFile" ofClass:objc_opt_class()];
    if (v14)
    {
      [v8 setObject:v14 forKeyedSubscript:@"CFBundleIconFile"];
    }

    v15 = [v7 objectForKey:@"CFBundleIconName" ofClass:objc_opt_class()];
    if (v15)
    {
      [v8 setObject:v15 forKeyedSubscript:@"CFBundleIconName"];
    }

    v12 = 0;
  }

  v16 = [v8 copy];

  return v16;
}

- (id)_intentsArrayForKey:(id)key
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v5 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  if (!v5)
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_13;
  }

  v6 = objc_opt_class();
  v7 = [v5 objectForKey:@"NSExtensionAttributes"];
  v8 = v7;
  if (v6 && v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v8;
      v8 = 0;
LABEL_10:

      goto LABEL_11;
    }
  }

  else if (!v7)
  {
LABEL_11:
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v9 = [v8 objectForKeyedSubscript:key];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  if ((_LSIsArrayWithValuesOfClass(v9, v10) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:

LABEL_13:

  return v9;
}

+ (id)redactedAppexRecordWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform error:(id *)error
{
  v8 = *&platform;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __108__LSApplicationExtensionRecord_Redaction__redactedAppexRecordWithUUID_node_bundleIdentifier_platform_error___block_invoke;
  v17[3] = &unk_1E6A18DF0;
  v17[4] = &v24;
  v12 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__LSApplicationExtensionRecord_Redaction__redactedAppexRecordWithUUID_node_bundleIdentifier_platform_error___block_invoke_2;
  v16[3] = &unk_1E6A18E18;
  v16[4] = &v18;
  v16[5] = &v24;
  [v12 getRedactedAppexRecordForSystemAppexWithUUID:d node:node bundleIdentifier:identifier platform:v8 completionHandler:v16];

  v13 = v19[5];
  if (error && !v13)
  {
    *error = v25[5];
    v13 = v19[5];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __108__LSApplicationExtensionRecord_Redaction__redactedAppexRecordWithUUID_node_bundleIdentifier_platform_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error
{
  v7 = [LSApplicationExtensionRecord alloc];
  _node = [(LSBundleRecord *)self _node];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  LOBYTE(v12) = 0;
  v10 = [(LSApplicationExtensionRecord *)v7 _initWithUUID:0 node:_node bundleIdentifier:bundleIdentifier platform:[(LSBundleRecord *)self platform] context:context requireValid:1 allowRedacted:v12 error:error];

  return v10;
}

- (id)appProtectionEffectiveContainerWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  if (bytes->var9)
  {
    [(_LSDatabase *)context->db store];
    bundleIdentifier = _CSStringCopyCFString();
  }

  else
  {
    v7 = [(LSApplicationExtensionRecord *)self containingBundleRecord:context];
    bundleIdentifier = [v7 bundleIdentifier];
  }

  return bundleIdentifier;
}

+ (id)appexRecordsForUnitIDsWithContext:(LSContext *)context unitIDs:(const void *)ds
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(ds + 1) == *ds)
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(ds + 1) - *ds) >> 2];
    v8 = *ds;
    v9 = *(ds + 1);
    if (*ds != v9)
    {
      *&v7 = 134218242;
      v18 = v7;
      do
      {
        v10 = *v8;
        v11 = [LSApplicationExtensionRecord alloc];
        v19 = 0;
        v12 = [(LSApplicationExtensionRecord *)v11 _initWithContext:context pluginID:v10 pluginData:0 error:&v19];
        v13 = v19;
        v14 = v13;
        if (v12)
        {
          [v6 addObject:v12];
        }

        else
        {
          v15 = _LSDefaultLog(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v21 = v10;
            v22 = 2112;
            v23 = v14;
            _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "Unable to create appex record for unit ID 0x%llx: %@", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }

    v16 = [v6 copy];
  }

  return v16;
}

+ (id)enumeratorWithOptions:(unint64_t)options
{
  v3 = [[_LSApplicationExtensionRecordEnumerator alloc] initWithExtensionPointIdentifier:0 options:options];

  return v3;
}

+ (id)enumeratorWithExtensionPointRecord:(id)record options:(unint64_t)options
{
  if (!record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord+Enumeration.mm" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"extensionPointRecord != nil"}];
  }

  v6 = [[_LSApplicationExtensionRecordEnumerator alloc] initWithExtensionPoint:record options:options];

  return v6;
}

@end