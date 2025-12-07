@interface LSPlugInKitProxy
+ (id)containingBundleIdentifiersForPlugInBundleIdentifiers:(id)identifiers error:(id *)error;
+ (id)plugInKitProxyForPlugin:(unsigned int)plugin withContext:(LSContext *)context;
+ (id)plugInKitProxyForPlugin:(unsigned int)plugin withContext:(LSContext *)context applicationExtensionRecord:(id)record resolveAndDetach:(BOOL)detach;
+ (id)plugInKitProxyForUUID:(id)d bundleIdentifier:(id)identifier pluginIdentifier:(id)pluginIdentifier effectiveIdentifier:(id)effectiveIdentifier version:(id)version bundleURL:(id)l;
+ (id)pluginKitProxyForIdentifier:(id)identifier;
+ (id)pluginKitProxyForURL:(id)l;
+ (id)pluginKitProxyForUUID:(id)d;
- (BOOL)_usesSystemPersona;
- (BOOL)pluginCanProvideIcon;
- (LSExtensionPoint)extensionPoint;
- (LSPlugInKitProxy)initWithCoder:(id)coder;
- (NSDictionary)infoPlist;
- (NSDictionary)pluginKitDictionary;
- (NSNumber)platform;
- (NSString)teamID;
- (id)_initWithPlugin:(unsigned int)plugin andContext:(LSContext *)context applicationExtensionRecord:(id)record resolveAndDetach:(BOOL)detach;
- (id)_initWithUUID:(id)d bundleIdentifier:(id)identifier pluginIdentifier:(id)pluginIdentifier effectiveIdentifier:(id)effectiveIdentifier version:(id)version bundleURL:(id)l;
- (id)_localizedNameWithPreferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only;
- (id)_managedPersonas;
- (id)_stringLocalizerForTable:(id)table;
- (id)boundIconsDictionary;
- (id)description;
- (id)iconDataForVariant:(int)variant withOptions:(int)options;
- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class inScope:(unint64_t)scope;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
- (void)extensionPoint;
@end

@implementation LSPlugInKitProxy

- (NSString)teamID
{
  containingBundle = [(LSPlugInKitProxy *)self containingBundle];
  if (containingBundle && (objc_opt_respondsToSelector() & 1) != 0)
  {
    teamID = [containingBundle teamID];
  }

  else
  {
    teamID = 0;
  }

  return teamID;
}

+ (id)plugInKitProxyForPlugin:(unsigned int)plugin withContext:(LSContext *)context
{
  v4 = [[self alloc] _initWithPlugin:*&plugin andContext:context applicationExtensionRecord:0 resolveAndDetach:1];

  return v4;
}

+ (id)plugInKitProxyForPlugin:(unsigned int)plugin withContext:(LSContext *)context applicationExtensionRecord:(id)record resolveAndDetach:(BOOL)detach
{
  detachCopy = detach;
  v8 = *&plugin;
  recordCopy = record;
  v11 = [[self alloc] _initWithPlugin:v8 andContext:context applicationExtensionRecord:recordCopy resolveAndDetach:detachCopy];

  return v11;
}

+ (id)pluginKitProxyForUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  v4 = [LSPlugInQuery pluginQueryWithUUID:dCopy];
  v5 = +[_LSQueryContext defaultContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__LSPlugInKitProxy_pluginKitProxyForUUID___block_invoke;
  v11[3] = &unk_1E6A18F00;
  v11[4] = &v12;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v11];

  v7 = v13[5];
  if (!v7)
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = dCopy;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find plugin with UUID %@", buf, 0xCu);
    }

    v7 = v13[5];
  }

  v9 = v7;

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __42__LSPlugInKitProxy_pluginKitProxyForUUID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

+ (id)pluginKitProxyForIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38;
  v27 = __Block_byref_object_dispose__38;
  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v4 = [LSPlugInQuery pluginQueryWithIdentifier:identifierCopy];
  v5 = +[_LSQueryContext defaultContext];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__LSPlugInKitProxy_pluginKitProxyForIdentifier___block_invoke;
  v22[3] = &unk_1E6A18F00;
  v22[4] = &v23;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v22];

  v6 = [v24[5] count];
  v7 = v24[5];
  if (v6 == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else if ([v7 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v24[5];
    v8 = 0;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v10)
    {
      v11 = *v19;
LABEL_6:
      v12 = 0;
      v13 = v8;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v8 = *(*(&v18 + 1) + 8 * v12);

        pluginIdentifier = [v8 pluginIdentifier];
        originalIdentifier = [v8 originalIdentifier];
        v16 = [pluginIdentifier isEqualToString:originalIdentifier];

        if ((v16 & 1) == 0)
        {
          break;
        }

        ++v12;
        v13 = v8;
        if (v10 == v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      [v24[5] objectAtIndexedSubscript:0];
      v8 = v9 = v8;
    }
  }

  _Block_object_dispose(&v23, 8);

  return v8;
}

void __48__LSPlugInKitProxy_pluginKitProxyForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    v7 = [v10 pluginIdentifier];
    v8 = [v10 originalIdentifier];
    v9 = [v7 isEqualToString:v8];

    v6 = v10;
    if ((v9 & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

+ (id)pluginKitProxyForURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__38;
  v14 = __Block_byref_object_dispose__38;
  v15 = 0;
  v4 = _LSCreateResolvedURL(lCopy);
  v5 = [LSPlugInQuery pluginQueryWithURL:v4];
  v6 = +[_LSQueryContext defaultContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__LSPlugInKitProxy_pluginKitProxyForURL___block_invoke;
  v9[3] = &unk_1E6A18F00;
  v9[4] = &v10;
  [v6 enumerateResolvedResultsOfQuery:v5 withBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __41__LSPlugInKitProxy_pluginKitProxyForURL___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v14)
  {
    v10 = v14;
    v11 = *(*(a1 + 32) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a2);
      *a4 = 1;
    }
  }

  objc_autoreleasePoolPop(v9);
}

+ (id)plugInKitProxyForUUID:(id)d bundleIdentifier:(id)identifier pluginIdentifier:(id)pluginIdentifier effectiveIdentifier:(id)effectiveIdentifier version:(id)version bundleURL:(id)l
{
  lCopy = l;
  versionCopy = version;
  effectiveIdentifierCopy = effectiveIdentifier;
  pluginIdentifierCopy = pluginIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  v20 = [[self alloc] _initWithUUID:dCopy bundleIdentifier:identifierCopy pluginIdentifier:pluginIdentifierCopy effectiveIdentifier:effectiveIdentifierCopy version:versionCopy bundleURL:lCopy];

  return v20;
}

- (id)_initWithPlugin:(unsigned int)plugin andContext:(LSContext *)context applicationExtensionRecord:(id)record resolveAndDetach:(BOOL)detach
{
  detachCopy = detach;
  v7 = *&plugin;
  v71 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__38;
  v67 = __Block_byref_object_dispose__38;
  v68 = 0;
  v8 = _LSGetPlugin(context->db, v7);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_33;
  }

  v10 = *v8;
  if (v10)
  {
    v11 = _LSAliasCopyResolvedNode(context->db, v10, 0, 0, 0);
    v12 = v11;
    if (v11)
    {
      v54 = [v11 URL];

      goto LABEL_6;
    }

LABEL_33:
    v54 = 0;
    goto LABEL_34;
  }

  v54 = 0;
LABEL_6:
  [(_LSDatabase *)context->db store];
  v13 = _CSStringCopyCFString();
  if (!v13)
  {
LABEL_34:

    v27 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v52 = 0;
    v53 = 0;
    v17 = 0;
    v19 = 0;
    v26 = 0;
    v23 = 0;
    obj = 0;
    v13 = 0;
    goto LABEL_32;
  }

  v42 = *_LSContainerGet(context->db, *(v9 + 4));
  v43 = *(v9 + 168);
  [(_LSDatabase *)context->db store];
  if ((v43 & 4) != 0)
  {
    obj = _CSStringCopyCFString();
    [(_LSDatabase *)context->db store];
    v49 = _CSStringCopyCFString();
  }

  else
  {
    v49 = _CSStringCopyCFString();
    obj = v49;
  }

  [(_LSDatabase *)context->db store];
  v48 = _CSStringCopyCFString();
  [(_LSDatabase *)context->db store];
  v47 = _CSStringCopyCFString();
  v41 = *(v9 + 20);
  v14 = *(v9 + 44);
  *buf = *(v9 + 28);
  *&buf[16] = v14;
  v52 = _LSVersionNumberGetStringRepresentation(buf);
  [(_LSDatabase *)context->db store];
  v15 = _CSStringCopyCFString();
  v53 = v15;
  if (*(v9 + 96) && ([__LSDefaultsGetSharedInstance(v15 v16)] & 1) == 0)
  {
    v18 = _LSAliasCopyResolvedNode(context->db, *(v9 + 96), 0, 0, 0);
    v17 = [v18 URL];
  }

  else
  {
    v17 = 0;
  }

  v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_LSBundleDataGetRegTime(v9)];
  if (*(v9 + 92))
  {
    [(_LSDatabase *)context->db store];
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __91__LSPlugInKitProxy__initWithPlugin_andContext_applicationExtensionRecord_resolveAndDetach___block_invoke;
    v59 = &unk_1E6A1D6C0;
    v61 = &v63;
    contextCopy = context;
    v60 = v13;
    _CSArrayEnumerateAllValues();
  }

  v19 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:*(v9 + 140)];
  v20 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:*(v9 + 136)];
  v21 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:_LSPluginGetSDKDictionaryDataUnit(context->db, v7, v9)];
  if (!v21)
  {
    v22 = _LSDefaultLog(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      propertyList = [(_LSLazyPropertyList *)0 propertyList];
      *buf = 138412802;
      *&buf[4] = obj;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      *&buf[22] = 2112;
      *&buf[24] = propertyList;
      v40 = propertyList;
      _os_log_error_impl(&dword_18162D000, v22, OS_LOG_TYPE_ERROR, "Invalid overlay plist for extension %@ (%@): %@", buf, 0x20u);
    }
  }

  v23 = [[_LSPlugInPropertyList alloc] initWithInfoPlist:v20 SDKPlist:v21];

  v24 = *(v9 + 76);
  *buf = *(v9 + 60);
  *&buf[16] = v24;
  memset(v69, 0, sizeof(v69));
  if (_LSVersionNumberCompare(buf, v69))
  {
    v25 = *(v9 + 76);
    *buf = *(v9 + 60);
    *&buf[16] = v25;
    v26 = _LSVersionNumberGetStringRepresentation(buf);
  }

  else
  {
    v26 = 0;
  }

  v55.receiver = self;
  v55.super_class = LSPlugInKitProxy;
  v27 = [(LSBundleProxy *)&v55 _initWithBundleUnit:0 context:context bundleType:6 bundleID:v13 localizedName:0 bundleContainerURL:0 dataContainerURL:v17 resourcesDirectoryURL:v54 iconsDictionary:0 iconFileNames:0 version:v52];
  if (v27)
  {
    if (recordCopy)
    {
      v28 = recordCopy;
    }

    else
    {
      v28 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:v7 pluginData:v9 error:0];
    }

    v29 = *(v27 + 20);
    *(v27 + 20) = v28;

    containingBundleRecord = [*(v27 + 20) containingBundleRecord];
    compatibilityObject = [containingBundleRecord compatibilityObject];
    v32 = *(v27 + 28);
    *(v27 + 28) = compatibilityObject;

    *(v27 + 39) = v43;
    objc_storeStrong(v27 + 23, obj);
    objc_storeStrong(v27 + 24, v49);
    objc_storeStrong(v27 + 25, v48);
    objc_storeStrong(v27 + 21, v47);
    *(v27 + 38) = v41;
    objc_storeStrong(v27 + 27, v46);
    if (v53)
    {
      v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v53];
      v34 = *(v27 + 26);
      *(v27 + 26) = v33;
    }

    *(v27 + 176) = (v42 & 0x10) != 0;
    [v27 _setInfoDictionary:v23];
    [v27 setMachOUUIDs:v64[5]];
    [v27 setSDKVersion:v26];
    v35 = [v27 _setEntitlements:v19];
    if (detachCopy && _LSDatabaseContextGetDetachProxyObjects(v35))
    {
      [*(v27 + 20) _resolveAllProperties];
      containingBundleRecord2 = [*(v27 + 20) containingBundleRecord];
      [containingBundleRecord2 _resolveAllProperties];

      [*(v27 + 20) detach];
    }
  }

LABEL_32:
  v37 = v27;

  _Block_object_dispose(&v63, 8);
  return v37;
}

void __91__LSPlugInKitProxy__initWithPlugin_andContext_applicationExtensionRecord_resolveAndDetach___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(_LSDatabase *)**(a1 + 48) store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
      if (v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        if (!v7)
        {
          v8 = [MEMORY[0x1E695DF70] array];
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          v7 = *(*(*(a1 + 40) + 8) + 40);
        }

        [v7 addObject:v6];
      }

      else
      {
        v11 = _LSDefaultLog(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v13 = 138412546;
          v14 = v12;
          v15 = 2112;
          v16 = v5;
          _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Launch Services: Failed to create a UUID for %@ from invalid string %@", &v13, 0x16u);
        }
      }
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (id)_initWithUUID:(id)d bundleIdentifier:(id)identifier pluginIdentifier:(id)pluginIdentifier effectiveIdentifier:(id)effectiveIdentifier version:(id)version bundleURL:(id)l
{
  dCopy = d;
  pluginIdentifierCopy = pluginIdentifier;
  effectiveIdentifierCopy = effectiveIdentifier;
  lCopy = l;
  v32.receiver = self;
  v32.super_class = LSPlugInKitProxy;
  v18 = [(LSBundleProxy *)&v32 _initWithBundleUnit:0 context:0 bundleType:6 bundleID:identifier localizedName:0 bundleContainerURL:0 dataContainerURL:0 resourcesDirectoryURL:lCopy iconsDictionary:0 iconFileNames:0 version:version];
  if (v18)
  {
    v19 = effectiveIdentifierCopy ? effectiveIdentifierCopy : pluginIdentifierCopy;
    v20 = [v19 copy];
    v21 = v18[23];
    v18[23] = v20;

    v22 = [pluginIdentifierCopy copy];
    v23 = v18[24];
    v18[24] = v22;

    v24 = [dCopy copy];
    v25 = v18[26];
    v18[26] = v24;

    *(v18 + 176) = 1;
    if (lCopy)
    {
      v26 = [[FSNode alloc] initWithURL:lCopy flags:0 error:0];
      v27 = v26;
      if (v26)
      {
        v28 = [(FSNode *)v26 volumeNodeWithFlags:0 error:0];
        if (v28)
        {
          v29 = +[FSNode rootVolumeNode];
          v30 = [v28 isEqual:v29];

          if (v30)
          {
            *(v18 + 176) = 1;
          }
        }
      }
    }
  }

  return v18;
}

- (LSPlugInKitProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = LSPlugInKitProxy;
  v5 = [(LSBundleProxy *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"pluginIdentifier"];
    pluginIdentifier = v5->_pluginIdentifier;
    v5->_pluginIdentifier = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"originalIdentifier"];
    originalIdentifier = v5->_originalIdentifier;
    v5->_originalIdentifier = v8;

    v10 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v10;

    v12 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"extensionPointID"];
    extensionPointID = v5->_extensionPointID;
    v5->_extensionPointID = v12;

    v5->_platform = [coderCopy decodeInt32ForKey:@"platform"];
    v14 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"pluginUUID"];
    pluginUUID = v5->_pluginUUID;
    v5->_pluginUUID = v14;

    v16 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"registrationDate"];
    registrationDate = v5->_registrationDate;
    v5->_registrationDate = v16;

    v18 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"containingBundle"];
    containingBundle = v5->_containingBundle;
    v5->_containingBundle = v18;

    v5->_onSystemPartition = [coderCopy decodeBoolForKey:@"isOnSystemPartition"];
    v20 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"appexRecord"];
    appexRecord = v5->_appexRecord;
    v5->_appexRecord = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LSPlugInKitProxy;
  coderCopy = coder;
  [(LSBundleProxy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pluginIdentifier forKey:{@"pluginIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_originalIdentifier forKey:@"originalIdentifier"];
  [coderCopy encodeObject:self->_protocol forKey:@"protocol"];
  [coderCopy encodeObject:self->_extensionPointID forKey:@"extensionPointID"];
  [coderCopy encodeInt32:self->_platform forKey:@"platform"];
  [coderCopy encodeObject:self->_pluginUUID forKey:@"pluginUUID"];
  [coderCopy encodeObject:self->_registrationDate forKey:@"registrationDate"];
  [coderCopy encodeObject:self->_containingBundle forKey:@"containingBundle"];
  [coderCopy encodeBool:self->_onSystemPartition forKey:@"isOnSystemPartition"];
  [coderCopy encodeObject:self->_appexRecord forKey:@"appexRecord"];
}

- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class inScope:(unint64_t)scope
{
  keyCopy = key;
  v9 = objc_autoreleasePoolPush();
  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  v11 = 0;
  if (scope == 2)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (scope != 1)
  {
    v12 = 0;
    v13 = 0;
    if (scope)
    {
      goto LABEL_13;
    }

    v12 = [_infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];
    v11 = [v12 objectForKeyedSubscript:@"NSExtensionAttributes"];
    v13 = [v11 objectForKey:keyCopy];
    if (v13)
    {
      if (!class)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_12:
    v13 = [_infoDictionary objectForKey:keyCopy ofClass:class];
    goto LABEL_13;
  }

  v12 = [_infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  v13 = [v12 objectForKey:keyCopy];
  v11 = 0;
  if (!class)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
  }

LABEL_13:

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (NSNumber)platform
{
  if (self->_platform)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)pluginKitDictionary
{
  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  v3 = [_infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  return v3;
}

- (NSDictionary)infoPlist
{
  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  propertyList = [(_LSLazyPropertyList *)_infoDictionary propertyList];

  return propertyList;
}

- (BOOL)pluginCanProvideIcon
{
  protocol = [(LSPlugInKitProxy *)self protocol];
  v4 = [protocol isEqualToString:getIMMessagePayloadProviderExtensionPointName()];

  if (v4)
  {
    return 1;
  }

  containingBundle = [(LSPlugInKitProxy *)self containingBundle];
  bundleIdentifier = [containingBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.share"];

  if (v7)
  {
    return 1;
  }

  containingBundle2 = [(LSPlugInKitProxy *)self containingBundle];
  v8 = containingBundle2 == 0;

  return v8;
}

- (LSExtensionPoint)extensionPoint
{
  extensionPointID = self->_extensionPointID;
  if (extensionPointID)
  {
    protocol = extensionPointID;
LABEL_4:
    platform = [(LSPlugInKitProxy *)self platform];
    unsignedLongValue = [platform unsignedLongValue];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedLongValue];
    v8 = [LSExtensionPoint extensionPointForIdentifier:protocol platform:v7];

    goto LABEL_5;
  }

  protocol = [(LSPlugInKitProxy *)self protocol];
  if (protocol)
  {
    goto LABEL_4;
  }

  v10 = _LSDefaultLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(LSPlugInKitProxy *)self extensionPoint];
  }

  protocol = 0;
  v8 = 0;
LABEL_5:

  return v8;
}

- (id)boundIconsDictionary
{
  _infoDictionary = [(LSBundleProxy *)self _infoDictionary];
  v3 = [_infoDictionary objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];

  return v3;
}

- (id)iconDataForVariant:(int)variant withOptions:(int)options
{
  v4 = *&options;
  v5 = *&variant;
  if (IconServicesLibrary_frameworkLibrary_2 || (v7 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_2 = v7) != 0))
  {
    v7 = softLink_ISIconDataForResourceProxy_0(self, v5, v4);
  }

  return v7;
}

- (id)_stringLocalizerForTable:(id)table
{
  v15 = *MEMORY[0x1E69E9840];
  appexRecord = self->_appexRecord;
  tableCopy = table;
  platform = [(LSBundleRecord *)appexRecord platform];
  sDKVersion = [(LSBundleRecord *)self->_appexRecord SDKVersion];
  _LSVersionNumberMakeWithString();
  DYLDVersion = _LSVersionNumberGetDYLDVersion(v14);

  v9 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:platform sdkVersion:DYLDVersion];
  v10 = [_LSStringLocalizer alloc];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  v12 = [(_LSStringLocalizer *)v10 initWithBundleURL:bundleURL stringsFile:tableCopy legacyLocalizationList:v9];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = LSPlugInKitProxy;
  v4 = [(LSPlugInKitProxy *)&v11 description];
  pluginIdentifier = [(LSPlugInKitProxy *)self pluginIdentifier];
  pluginUUID = [(LSPlugInKitProxy *)self pluginUUID];
  uUIDString = [pluginUUID UUIDString];
  bundleVersion = [(LSBundleProxy *)self bundleVersion];
  v9 = [v3 stringWithFormat:@"%@ pluginID=%@ UUID=%@ version=%@", v4, pluginIdentifier, uUIDString, bundleVersion];

  return v9;
}

- (id)_managedPersonas
{
  containingBundle = [(LSPlugInKitProxy *)self containingBundle];
  _managedPersonas = [containingBundle _managedPersonas];

  return _managedPersonas;
}

- (BOOL)_usesSystemPersona
{
  containingBundle = [(LSPlugInKitProxy *)self containingBundle];
  _usesSystemPersona = [containingBundle _usesSystemPersona];

  return _usesSystemPersona;
}

- (void)detach
{
  [(LSRecord *)self->_appexRecord _resolveAllProperties];
  appexRecord = self->_appexRecord;

  [(LSRecord *)appexRecord detach];
}

- (id)_localizedNameWithPreferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only
{
  onlyCopy = only;
  localizationsCopy = localizations;
  appexRecord = self->_appexRecord;
  if (onlyCopy)
  {
    if (localizationsCopy)
    {
      [(LSBundleRecord *)appexRecord localizedShortNameWithPreferredLocalizations:localizationsCopy];
    }

    else
    {
      [(LSBundleRecord *)appexRecord localizedShortName];
    }
  }

  else if (localizationsCopy)
  {
    [(LSBundleRecord *)appexRecord localizedNameWithPreferredLocalizations:localizationsCopy];
  }

  else
  {
    [(LSBundleRecord *)appexRecord localizedName];
  }
  v8 = ;
  v9 = v8;

  return v9;
}

+ (id)containingBundleIdentifiersForPlugInBundleIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__38;
  v22 = __Block_byref_object_dispose__38;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke;
  v11[3] = &unk_1E6A198D0;
  v11[4] = &v12;
  v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke_2;
  v10[3] = &unk_1E6A19B10;
  v10[4] = &v18;
  v10[5] = &v12;
  [v6 mapPlugInBundleIdentifiersToContainingBundleIdentifiers:identifiersCopy completionHandler:v10];
  v7 = v19[5];
  if (error && !v7)
  {
    *error = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)extensionPoint
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Failed to get the extension point ID of plugin %@", &v2, 0xCu);
}

@end