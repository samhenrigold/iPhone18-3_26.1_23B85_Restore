@interface PKPlugInCore
+ (id)readSDKDictionary:(id)dictionary forPlatform:(unsigned int)platform externalProviders:(id)providers;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isAppExtension;
- (BOOL)isData;
- (BOOL)isDedicated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHybrid;
- (BOOL)oldStyle;
- (BOOL)setDictionaries:(id)dictionaries;
- (BOOL)setupWithForm:(id)form;
- (BOOL)setupWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache;
- (BOOL)shouldTerminateOnHold;
- (BOOL)usesHostPersona;
- (NSDate)timestamp;
- (NSDictionary)attributes;
- (NSDictionary)localizedFileProviderActionNames;
- (NSString)bootInstance;
- (NSString)containingPath;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSString)path;
- (NSString)principalSpec;
- (NSString)sdkSpec;
- (NSString)version;
- (PKPlugInCore)init;
- (PKPlugInCore)initWithExternalProviders:(id)providers;
- (PKPlugInCore)initWithForm:(id)form externalProviders:(id)providers;
- (PKPlugInCore)initWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache externalProviders:(id)self0;
- (id)_localizedFileProviderActionNamesForPKDict:(id)dict fromBundle:(id)bundle;
- (id)attribute:(id)attribute;
- (id)debugDescription;
- (id)description;
- (id)diagnose;
- (id)embeddedProtocolSpec;
- (id)export:(id *)export;
- (id)infoKey:(id)key;
- (id)mergeSDKDictionary:(id)dictionary intoExtensionDictionary:(id)extensionDictionary;
- (id)mergeSharedResources:(id)resources into:(id)into;
- (id)pluginKey:(id)key;
- (id)protocolSpec;
- (id)resolveSDKWithInfoPlist:(id)plist extensionPointCache:(id)cache;
- (id)sdkOnlyKeyPaths;
- (id)valueForEntitlement:(id)entitlement;
- (unint64_t)hash;
- (void)_loadLocalizedFileProviderActionNames;
- (void)_loadLocalizedNames;
- (void)canonicalize;
- (void)localizedInfoDictionaryForKeys:(id)keys completion:(id)completion;
- (void)setAnnotation:(id)annotation value:(id)value;
- (void)updateFromForm:(id)form;
@end

@implementation PKPlugInCore

- (NSString)version
{
  v2 = [(PKPlugInCore *)self attribute:@"NSExtensionVersion"];

  return v2;
}

- (NSDictionary)attributes
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionAttributes"];

  return v2;
}

- (unint64_t)hash
{
  uuid = [(PKPlugInCore *)self uuid];
  if (!uuid)
  {
    sub_1C68B5A78();
  }

  uuid2 = [(PKPlugInCore *)self uuid];
  v5 = [uuid2 hash];

  return v5;
}

- (NSString)containingPath
{
  containingUrl = [(PKPlugInCore *)self containingUrl];
  path = [containingUrl path];

  return path;
}

- (BOOL)isDedicated
{
  v2 = [(PKPlugInCore *)self pluginKey:@"Dedicated"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)path
{
  v2 = [(PKPlugInCore *)self url];
  path = [v2 path];

  return path;
}

- (BOOL)isAppExtension
{
  v2 = [(PKPlugInCore *)self url];
  path = [v2 path];
  v4 = [path hasSuffix:@".appex"];

  return v4;
}

- (BOOL)isData
{
  protocolSpec = [(PKPlugInCore *)self protocolSpec];
  v3 = [@"#Data" isEqual:protocolSpec];

  return v3;
}

- (id)protocolSpec
{
  v3 = [(PKPlugInCore *)self pluginKey:@"NSExtensionProtocol"];
  if (!v3)
  {
    if ([(PKPlugInCore *)self isAppExtension])
    {
      v3 = @"NSObject";
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)localizedName
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedName)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedNames];
  }

  objc_sync_exit(selfCopy);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(PKPlugInCore *)selfCopy uuid];
    identifier = [(PKPlugInCore *)selfCopy identifier];
    version = [(PKPlugInCore *)selfCopy version];
    localizedName = selfCopy->_localizedName;
    v10 = 138544130;
    v11 = uuid;
    v12 = 2112;
    v13 = identifier;
    v14 = 2112;
    v15 = version;
    v16 = 2112;
    v17 = localizedName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized name: %@", &v10, 0x2Au);
  }

  v8 = selfCopy->_localizedName;

  return v8;
}

- (NSString)localizedShortName
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedShortName)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedNames];
  }

  objc_sync_exit(selfCopy);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(PKPlugInCore *)selfCopy uuid];
    identifier = [(PKPlugInCore *)selfCopy identifier];
    version = [(PKPlugInCore *)selfCopy version];
    localizedShortName = selfCopy->_localizedShortName;
    v10 = 138544130;
    v11 = uuid;
    v12 = 2112;
    v13 = identifier;
    v14 = 2112;
    v15 = version;
    v16 = 2112;
    v17 = localizedShortName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized short name: %@", &v10, 0x2Au);
  }

  v8 = selfCopy->_localizedShortName;

  return v8;
}

- (void)_loadLocalizedNames
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  external = [(PKPlugInCore *)self external];
  v5 = [external ls];
  hasLSDatabaseAccess = [v5 hasLSDatabaseAccess];

  if (!hasLSDatabaseAccess)
  {
    goto LABEL_7;
  }

  external2 = [(PKPlugInCore *)self external];
  v8 = [external2 ls];
  uuid = [(PKPlugInCore *)self uuid];
  v10 = [v8 plugInRecordForUUID:uuid];

  if (v10)
  {
    localizedName = [v10 localizedName];
    localizedName = self->_localizedName;
    self->_localizedName = localizedName;

    localizedShortName = [v10 localizedShortName];
    localizedShortName = self->_localizedShortName;
    self->_localizedShortName = localizedShortName;
  }

  else
  {
    localizedShortName = pklog_handle_for_category(3);
    if (os_log_type_enabled(localizedShortName, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6068();
    }
  }

  if (!v10)
  {
LABEL_7:
    v32 = 0;
    v15 = [(PKPlugInCore *)self useBundle:@"." error:&v32];
    v16 = v32;
    if (v15)
    {
      external3 = [(PKPlugInCore *)self external];
      filesystem = [external3 filesystem];
      bundleInfoDictionary = [(PKPlugInCore *)self url];
      v20 = [filesystem bundleWithURL:bundleInfoDictionary];

      localizedInfoDictionary = [v20 localizedInfoDictionary];
      v22 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
      v23 = v22;
      if (!v22)
      {
        bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
        v23 = [bundleInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
      }

      objc_storeStrong(&self->_localizedName, v23);
      if (!v22)
      {
      }

      v24 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleName"];
      v25 = v24;
      if (!v24)
      {
        bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
        v25 = [bundleInfoDictionary objectForKeyedSubscript:@"CFBundleName"];
      }

      objc_storeStrong(&self->_localizedShortName, v25);
      if (!v24)
      {
      }

      v26 = pklog_handle_for_category(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        uuid2 = [(PKPlugInCore *)self uuid];
        identifier = [(PKPlugInCore *)self identifier];
        version = [(PKPlugInCore *)self version];
        v30 = self->_localizedName;
        v31 = self->_localizedShortName;
        *buf = 138544386;
        v34 = uuid2;
        v35 = 2112;
        v36 = identifier;
        v37 = 2112;
        v38 = version;
        v39 = 2112;
        v40 = v30;
        v41 = 2112;
        v42 = v31;
        _os_log_debug_impl(&dword_1C6892000, v26, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] BundleInfo[BundleDisplayName] is [%@], BundleInfo[BundleName] is [%@]", buf, 0x34u);
      }
    }

    else
    {
      v20 = pklog_handle_for_category(4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1C68B611C();
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = [(PKPlugInCore *)self uuid];
  identifier = [(PKPlugInCore *)self identifier];
  version = [(PKPlugInCore *)self version];
  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
  path = [(PKPlugInCore *)self path];
  v9 = [v3 initWithFormat:@"<[u %@] [%@(%@)], [d %@] [%@]>", uuid, identifier, version, discoveryInstanceUUID, path];

  return v9;
}

- (void)canonicalize
{
  v3 = MEMORY[0x1E695DF90];
  attributes = [(PKPlugInCore *)self attributes];
  v11 = [v3 dictionaryWithDictionary:attributes];

  v5 = MEMORY[0x1E695DF90];
  plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
  v7 = [v5 dictionaryWithDictionary:plugInDictionary];

  [v7 setObject:v11 forKeyedSubscript:@"NSExtensionAttributes"];
  [(PKPlugInCore *)self setPlugInDictionary:v7];
  v8 = [(PKPlugInCore *)self attribute:@"NSExtensionVersion"];

  if (!v8)
  {
    v9 = [(PKPlugInCore *)self infoKey:@"CFBundleShortVersionString"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"1";
    }

    [v11 setObject:v10 forKeyedSubscript:@"NSExtensionVersion"];
  }
}

- (id)sdkOnlyKeyPaths
{
  if (qword_1ED6EF090 != -1)
  {
    sub_1C6896BD4();
  }

  v3 = qword_1ED6EF080;

  return v3;
}

- (NSString)principalSpec
{
  v3 = [(PKPlugInCore *)self pluginKey:@"PrincipalClass"];
  if (!v3)
  {
    if ([(PKPlugInCore *)self isAppExtension])
    {
      v3 = @"NSObject";
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)usesHostPersona
{
  v2 = [(PKPlugInCore *)self valueForEntitlement:@"com.apple.private.pluginkit.persona"];
  if (!v2)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5F20(v2);
    }

    goto LABEL_7;
  }

  v3 = [v2 isEqualToString:@"host"];
LABEL_8:

  return v3;
}

- (id)diagnose
{
  identifier = [(PKPlugInCore *)self identifier];

  if (!identifier)
  {
    v29 = @"missing identifier (no NSExtensionIdentifier, nor even CFBundleIdentifier)";
LABEL_21:
    pkErrorf(12, v29, v5, v6, v7, v8, v9, v10, v36);
    goto LABEL_22;
  }

  protocolSpec = [(PKPlugInCore *)self protocolSpec];

  if (!protocolSpec)
  {
    v30 = PKProtocolInfoKey;
LABEL_10:
    pkErrorf(12, @"missing %@ key in Info.plist or SDK", v12, v13, v14, v15, v16, v17, *v30);
    v34 = LABEL_22:;
    goto LABEL_23;
  }

  attributes = [(PKPlugInCore *)self attributes];

  if (!attributes)
  {
    v30 = PKAttributesInfoKey;
    goto LABEL_10;
  }

  isAppExtension = [(PKPlugInCore *)self isAppExtension];
  if (!isAppExtension)
  {
    v28 = 0;
    goto LABEL_17;
  }

  principalSpec = [(PKPlugInCore *)self principalSpec];
  v26 = [principalSpec isEqualToString:@"NSObject"];
  if (v26)
  {
    v28 = 0;
    goto LABEL_17;
  }

  if (!pkUseInternalDiagnostics(v26, v27))
  {
    v28 = 1;
LABEL_17:
    if (isAppExtension)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v31 = [(PKPlugInCore *)self url];
  path = [v31 path];
  v28 = [path hasPrefix:@"/AppleInternal/"] ^ 1;

  if (!isAppExtension)
  {
    goto LABEL_13;
  }

LABEL_18:

  if (v28)
  {
LABEL_14:
    pkErrorf(12, @"Application Extensions may not use the %@ key", v19, v20, v21, v22, v23, v24, @"PrincipalClass");
    goto LABEL_22;
  }

LABEL_19:
  v33 = [(PKPlugInCore *)self pluginKey:@"PassProxy"];

  if (v33)
  {
    v36 = @"PassProxy";
    v29 = @"the %@ key is not supported on this platform";
    goto LABEL_21;
  }

  if ([(PKPlugInCore *)self isHybrid])
  {
    v34 = pkError(12, @"hybrid plug-ins are not supported on this platform");
  }

  else
  {
    v34 = 0;
  }

LABEL_23:

  return v34;
}

- (BOOL)isHybrid
{
  v2 = [(PKPlugInCore *)self pluginKey:@"EmbeddedCode"];
  v3 = v2 != 0;

  return v3;
}

- (PKPlugInCore)init
{
  v3 = objc_opt_new();
  v4 = [(PKPlugInCore *)self initWithExternalProviders:v3];

  return v4;
}

- (PKPlugInCore)initWithExternalProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = PKPlugInCore;
  v6 = [(PKPlugInCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, providers);
  }

  return v7;
}

- (PKPlugInCore)initWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache externalProviders:(id)self0
{
  v14 = *&platform;
  nameCopy = name;
  urlCopy = url;
  infoCopy = info;
  uuidCopy = uuid;
  dCopy = d;
  cacheCopy = cache;
  v22 = [(PKPlugInCore *)self initWithExternalProviders:providers];
  v23 = v22;
  if (v22 && ![(PKPlugInCore *)v22 setupWithName:nameCopy extensionPointPlatform:v14 url:urlCopy bundleInfo:infoCopy uuid:uuidCopy discoveryInstanceUUID:dCopy extensionPointCache:cacheCopy])
  {

    v23 = 0;
  }

  return v23;
}

- (PKPlugInCore)initWithForm:(id)form externalProviders:(id)providers
{
  formCopy = form;
  v7 = [(PKPlugInCore *)self initWithExternalProviders:providers];
  v8 = v7;
  if (v7 && ![(PKPlugInCore *)v7 setupWithForm:formCopy])
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  uuid = [(PKPlugInCore *)self uuid];
  if (!uuid)
  {
    sub_1C68B5A4C();
  }

  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid2 = [(PKPlugInCore *)self uuid];
      uuid3 = [(PKPlugInCore *)equalCopy uuid];
      v8 = [uuid2 isEqual:uuid3];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)setupWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  urlCopy = url;
  infoCopy = info;
  uuidCopy = uuid;
  dCopy = d;
  cacheCopy = cache;
  v22 = cacheCopy;
  if (!urlCopy)
  {
    goto LABEL_22;
  }

  if (nameCopy)
  {
    self->_extensionPointPlatform = platform;
    if (!infoCopy)
    {
      goto LABEL_16;
    }

    if (cacheCopy)
    {
      v32 = dCopy;
      v23 = [(PKPlugInCore *)self normalizeInfoDictionary:infoCopy];
      v24 = [(PKPlugInCore *)self resolveSDKWithInfoPlist:v23 extensionPointCache:v22];

      v33 = v24;
      v25 = [(PKPlugInCore *)self setDictionaries:v24];
      if (v25)
      {
        [(PKPlugInCore *)self canonicalize];
        dCopy = v32;
      }

      else
      {
        log = pklog_handle_for_category(6);
        dCopy = v32;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v35 = v32;
          v36 = 2114;
          v37 = nameCopy;
          v38 = 2114;
          v39 = urlCopy;
          v40 = 2114;
          v41 = infoCopy;
          _os_log_error_impl(&dword_1C6892000, log, OS_LOG_TYPE_ERROR, "[d %@] malformed plugin dictionary in plugin [%{public}@] at [%{public}@]: %{public}@", buf, 0x2Au);
        }
      }

      if (v25)
      {
        goto LABEL_16;
      }

LABEL_22:
      v27 = 0;
      goto LABEL_23;
    }

    if ([(PKPlugInCore *)self setDictionaries:infoCopy])
    {
LABEL_16:
      objc_storeStrong(&self->_identifier, name);
      objc_storeStrong(&self->_url, url);
      uUID = uuidCopy;
      if (!uuidCopy)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      objc_storeStrong(&self->_uuid, uUID);
      if (!uuidCopy)
      {
      }

      v29 = dCopy;
      p_super = &self->_discoveryInstanceUUID->super;
      self->_discoveryInstanceUUID = v29;
      v27 = 1;
      goto LABEL_21;
    }

    p_super = pklog_handle_for_category(6);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v35 = dCopy;
      v36 = 2114;
      v37 = nameCopy;
      v38 = 2114;
      v39 = urlCopy;
      v40 = 2114;
      v41 = infoCopy;
      _os_log_error_impl(&dword_1C6892000, p_super, OS_LOG_TYPE_ERROR, "[d %@] malformed plugin dictionary in plugin [%{public}@] at [%{public}@]: %{public}@", buf, 0x2Au);
      v27 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    p_super = pklog_handle_for_category(6);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5AA4(dCopy, urlCopy);
      v27 = 0;
      goto LABEL_21;
    }
  }

  v27 = 0;
LABEL_21:

LABEL_23:
  return v27;
}

- (BOOL)setDictionaries:(id)dictionaries
{
  v26 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleInfoDictionary, dictionaries);
    v6 = [dictionariesCopy objectForKeyedSubscript:@"NSExtension"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_plugInDictionary, v6);
      v7 = [v6 objectForKeyedSubscript:@"Multiple"];
      if (v7)
      {
        v8 = pklog_handle_for_category(6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
          uuid = [(PKPlugInCore *)self uuid];
          identifier = [(PKPlugInCore *)self identifier];
          [(PKPlugInCore *)self version];
          *buf = 138413314;
          v17 = discoveryInstanceUUID;
          v18 = 2114;
          v19 = uuid;
          v20 = 2112;
          v21 = identifier;
          v23 = v22 = 2112;
          v11 = v23;
          v24 = 2114;
          v25 = @"Multiple";
          _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] multiplexed plug-ins (%{public}@ key) obsolete and ignored", buf, 0x34u);
        }
      }

      plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)setupWithForm:(id)form
{
  v49 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  v6 = [formCopy objectForKeyedSubscript:@"path"];
  v44 = [v5 initFileURLWithPath:v6];

  v7 = [formCopy objectForKeyedSubscript:@"discoveryInstanceUUID"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [formCopy objectForKeyedSubscript:@"epPlatform"];
  unsignedIntValue = [v9 unsignedIntValue];
  v10 = [formCopy objectForKeyedSubscript:@"identifier"];
  v11 = [formCopy objectForKeyedSubscript:@"bundleInfo"];
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = [formCopy objectForKeyedSubscript:@"uuid"];
  v14 = [v12 initWithUUIDString:v13];
  LODWORD(unsignedIntValue) = [(PKPlugInCore *)self setupWithName:v10 extensionPointPlatform:unsignedIntValue url:v44 bundleInfo:v11 uuid:v14 discoveryInstanceUUID:v8 extensionPointCache:0];

  if (unsignedIntValue)
  {
    v16 = [formCopy objectForKeyedSubscript:@"hubProtocolVersion"];
    -[PKPlugInCore setHubProtocolVersion:](self, "setHubProtocolVersion:", [v16 unsignedIntegerValue]);

    v17 = [formCopy objectForKeyedSubscript:@"hubProtocolVersion"];
    if (!v17)
    {
      [(PKPlugInCore *)self setHubProtocolVersion:1];
    }

    v18 = [formCopy objectForKeyedSubscript:@"original-identifier"];
    [(PKPlugInCore *)self setOriginalIdentifier:v18];

    v19 = [formCopy objectForKeyedSubscript:@"hash"];
    [(PKPlugInCore *)self setCdhash:v19];

    v20 = [formCopy objectForKeyedSubscript:@"requirement"];
    [(PKPlugInCore *)self setRequirement:v20];

    v21 = [formCopy objectForKeyedSubscript:@"lastmodified"];
    -[PKPlugInCore setLastModified:](self, "setLastModified:", [v21 longValue]);

    v22 = [formCopy objectForKeyedSubscript:@"entitlements"];
    [(PKPlugInCore *)self setEntitlements:v22];

    v23 = [formCopy objectForKeyedSubscript:@"containingPath"];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v23];
      [(PKPlugInCore *)self setContainingUrl:v24];
    }

    v25 = [formCopy objectForKeyedSubscript:@"containingBundleIdentifier"];
    [(PKPlugInCore *)self setContainingBundleIdentifier:v25];

    v26 = [formCopy objectForKeyedSubscript:@"systemResident"];
    -[PKPlugInCore setOnSystemVolume:](self, "setOnSystemVolume:", [v26 BOOLValue]);

    v27 = [formCopy objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v27];

    v28 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      identifier = [(PKPlugInCore *)self identifier];
      [(PKPlugInCore *)self annotations];
      v43 = v7;
      v30 = v23;
      v31 = unsignedIntValue;
      unsignedIntValue = v9;
      v32 = v8;
      v34 = v33 = v17;
      *buf = 138412546;
      v46 = identifier;
      v47 = 2112;
      v48 = v34;
      _os_log_impl(&dword_1C6892000, v28, OS_LOG_TYPE_INFO, "%@: annotations = %@", buf, 0x16u);

      v17 = v33;
      v8 = v32;
      v9 = unsignedIntValue;
      LOBYTE(unsignedIntValue) = v31;
      v23 = v30;
      v7 = v43;
    }

    v35 = [formCopy objectForKeyedSubscript:@"localizedContainingDisplayName"];
    [(PKPlugInCore *)self setLocalizedContainingName:v35];

    v36 = [formCopy objectForKeyedSubscript:@"isRBManaged"];
    -[PKPlugInCore setIsRBManaged:](self, "setIsRBManaged:", [v36 BOOLValue]);

    v37 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      identifier2 = [(PKPlugInCore *)self identifier];
      isRBManaged = [(PKPlugInCore *)self isRBManaged];
      v40 = "will not";
      if (isRBManaged)
      {
        v40 = "will";
      }

      *buf = 138412546;
      v46 = identifier2;
      v47 = 2080;
      v48 = v40;
      _os_log_impl(&dword_1C6892000, v37, OS_LOG_TYPE_INFO, "%@: %s be managed by runningboard", buf, 0x16u);
    }

    v41 = [formCopy objectForKeyedSubscript:@"launchPersonas"];
    [(PKPlugInCore *)self setLaunchPersonas:v41];
  }

  return unsignedIntValue;
}

+ (id)readSDKDictionary:(id)dictionary forPlatform:(unsigned int)platform externalProviders:(id)providers
{
  v6 = *&platform;
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  providersCopy = providers;
  v9 = pklog_handle_for_category(3);
  v10 = os_signpost_id_make_with_pointer(v9, dictionaryCopy);

  v11 = pklog_handle_for_category(3);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v22 = 138543362;
    v23 = dictionaryCopy;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LSSDKDictionary", " name=%{public, signpost.description:attribute}@ ", &v22, 0xCu);
  }

  v13 = [providersCopy ls];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v15 = [v13 extensionPointForIdentifier:dictionaryCopy platform:v14];
  sdkEntry = [v15 sdkEntry];

  v17 = pklog_handle_for_category(3);
  v18 = v17;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v18, OS_SIGNPOST_INTERVAL_END, v10, "LSSDKDictionary", &unk_1C68BDED5, &v22, 2u);
  }

  if (sdkEntry)
  {
    v19 = sdkEntry;
  }

  else
  {
    v20 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5B54(dictionaryCopy, v6, v20);
    }

    v19 = 0;
  }

  return v19;
}

- (id)resolveSDKWithInfoPlist:(id)plist extensionPointCache:(id)cache
{
  plistCopy = plist;
  cacheCopy = cache;
  if (!plistCopy)
  {
    sub_1C68B5CD8();
  }

  v8 = [(PKPlugInCore *)self sdkDictionaryWithInfoPlist:plistCopy extensionPointCache:cacheCopy];
  v9 = plistCopy;
  v10 = v9;
  if (v8)
  {
    v10 = [(PKPlugInCore *)self mergeSDKDictionary:v8 intoExtensionDictionary:v9];
  }

  return v10;
}

- (id)mergeSDKDictionary:(id)dictionary intoExtensionDictionary:(id)extensionDictionary
{
  v30[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [extensionDictionary mutableCopy];
  sdkOnlyKeyPaths = [(PKPlugInCore *)self sdkOnlyKeyPaths];
  [v7 pk_removeItemsAtKeyPaths:sdkOnlyKeyPaths];

  v9 = MEMORY[0x1E695DFD8];
  v30[0] = @"NSExtension";
  v30[1] = @"Shared";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v11 = [v9 setWithObjects:{v10, 0}];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1C68A7114;
  v19[3] = &unk_1E827F8E8;
  v19[4] = self;
  [v7 pk_overlayDictionary:dictionaryCopy existingValuesTakePrecedent:1 exceptKeyPaths:v11 exemptionHandler:v19];

  v12 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v17 = [v7 objectForKeyedSubscript:@"NSExtension"];
    v18 = [v7 objectForKeyedSubscript:@"XPCService"];
    *buf = 138544386;
    v21 = uuid;
    v22 = 2112;
    v23 = identifier;
    v24 = 2112;
    v25 = version;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    _os_log_debug_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] Merged plugin dictionary; NSExtension = %@, XPCService = %@", buf, 0x34u);
  }

  return v7;
}

- (id)mergeSharedResources:(id)resources into:(id)into
{
  v5 = MEMORY[0x1E695DFA8];
  resourcesCopy = resources;
  v7 = [v5 setWithArray:into];
  [v7 addObjectsFromArray:resourcesCopy];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)export:(id *)export
{
  v40[11] = *MEMORY[0x1E69E9840];
  bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
  v5 = [bundleInfoDictionary mutableCopy];

  [v5 removeObjectForKey:@"CFBundleInfoPlistURL"];
  v34 = MEMORY[0x1E695DF90];
  v39[0] = @"hubProtocolVersion";
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
  v40[0] = v37;
  v39[1] = @"path";
  path = [(PKPlugInCore *)self path];
  v40[1] = path;
  v39[2] = @"systemResident";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore onSystemVolume](self, "onSystemVolume")}];
  v40[2] = v35;
  v39[3] = @"identifier";
  identifier = [(PKPlugInCore *)self identifier];
  v40[3] = identifier;
  v39[4] = @"original-identifier";
  originalIdentifier = [(PKPlugInCore *)self originalIdentifier];
  v40[4] = originalIdentifier;
  v39[5] = @"version";
  version = [(PKPlugInCore *)self version];
  if (version)
  {
    version2 = [(PKPlugInCore *)self version];
  }

  else
  {
    version2 = @"<none>";
  }

  v40[5] = version2;
  v40[6] = v5;
  v38 = v5;
  v39[6] = @"bundleInfo";
  v39[7] = @"uuid";
  uuid = [(PKPlugInCore *)self uuid];
  uUIDString = [uuid UUIDString];
  v40[7] = uUIDString;
  v39[8] = @"lastmodified";
  v10 = [MEMORY[0x1E696AD98] numberWithLong:{-[PKPlugInCore lastModified](self, "lastModified")}];
  v40[8] = v10;
  v39[9] = @"annotations";
  annotations = [(PKPlugInCore *)self annotations];
  v12 = annotations;
  v13 = MEMORY[0x1E695E0F8];
  if (annotations)
  {
    v13 = annotations;
  }

  v40[9] = v13;
  v39[10] = @"isRBManaged";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore isRBManaged](self, "isRBManaged")}];
  v40[10] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:11];
  v16 = [v34 dictionaryWithDictionary:v15];

  if (version)
  {
  }

  entitlements = [(PKPlugInCore *)self entitlements];

  if (entitlements)
  {
    entitlements2 = [(PKPlugInCore *)self entitlements];
    [v16 setObject:entitlements2 forKeyedSubscript:@"entitlements"];
  }

  containingPath = [(PKPlugInCore *)self containingPath];

  if (containingPath)
  {
    containingPath2 = [(PKPlugInCore *)self containingPath];
    [v16 setObject:containingPath2 forKeyedSubscript:@"containingPath"];
  }

  containingBundleIdentifier = [(PKPlugInCore *)self containingBundleIdentifier];

  if (containingBundleIdentifier)
  {
    containingBundleIdentifier2 = [(PKPlugInCore *)self containingBundleIdentifier];
    [v16 setObject:containingBundleIdentifier2 forKeyedSubscript:@"containingBundleIdentifier"];
  }

  localizedContainingName = [(PKPlugInCore *)self localizedContainingName];

  if (localizedContainingName)
  {
    localizedContainingName2 = [(PKPlugInCore *)self localizedContainingName];
    [v16 setObject:localizedContainingName2 forKeyedSubscript:@"localizedContainingDisplayName"];
  }

  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];

  if (discoveryInstanceUUID)
  {
    discoveryInstanceUUID2 = [(PKPlugInCore *)self discoveryInstanceUUID];
    uUIDString2 = [discoveryInstanceUUID2 UUIDString];
    [v16 setObject:uUIDString2 forKeyedSubscript:@"discoveryInstanceUUID"];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PKPlugInCore extensionPointPlatform](self, "extensionPointPlatform")}];
  [v16 setObject:v28 forKeyedSubscript:@"epPlatform"];

  launchPersonas = [(PKPlugInCore *)self launchPersonas];

  if (launchPersonas)
  {
    launchPersonas2 = [(PKPlugInCore *)self launchPersonas];
    [v16 setObject:launchPersonas2 forKeyedSubscript:@"launchPersonas"];
  }

  return v16;
}

- (NSString)bootInstance
{
  if (qword_1EC1D1D00 != -1)
  {
    sub_1C68B5D48();
  }

  v3 = qword_1EC1D1CF8;

  return v3;
}

- (void)updateFromForm:(id)form
{
  v30 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1C68B5DA0(self, formCopy, v5, v6, v7, v8, v9, v10, v24, *v26, *&v26[16], *&v26[24], *v27, *&v27[8], *&v27[16], *&v27[24], v28, v29, *(&v29 + 1), v30, v31, v32);
  }

  if (![(PKPlugInCore *)self annotationTimestamp])
  {
    goto LABEL_21;
  }

  v11 = [formCopy objectForKeyedSubscript:@"annotations"];
  v12 = [v11 objectForKeyedSubscript:@"bootuuid"];

  bootInstance = [formCopy objectForKeyedSubscript:@"annotations"];
  v14 = [bootInstance objectForKeyedSubscript:@"timestamp"];

  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v15)
  {
    v18 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  bootInstance = [(PKPlugInCore *)self bootInstance];
  if ([v12 isEqualToString:bootInstance])
  {
    unsignedLongLongValue = [v14 unsignedLongLongValue];
    v18 = unsignedLongLongValue <= [(PKPlugInCore *)self annotationTimestamp];
    if (!v16)
    {
      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = 1;
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v18)
  {

LABEL_21:
    [(PKPlugInCore *)self setAnnotationTimestamp:0];
    v23 = [formCopy objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v23];

    goto LABEL_22;
  }

  v19 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    unsignedLongLongValue2 = [v14 unsignedLongLongValue];
    bootInstance2 = [(PKPlugInCore *)self bootInstance];
    *&v26[8] = 138545154;
    *&v26[12] = *v26;
    *&v26[20] = 2112;
    *&v26[22] = identifier;
    *&v26[30] = 2112;
    *&v26[32] = version;
    *v27 = 2080;
    *&v27[2] = "[PKPlugInCore updateFromForm:]";
    *&v27[10] = 2112;
    *&v27[12] = v12;
    *&v27[20] = 2048;
    *&v27[22] = unsignedLongLongValue2;
    *&v27[30] = 2112;
    v28 = bootInstance2;
    LOWORD(v29) = 2048;
    *(&v29 + 2) = [(PKPlugInCore *)self annotationTimestamp];
    _os_log_impl(&dword_1C6892000, v19, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] %s ignoring annotation update (%@, %llu) vs. (%@, %llu)", &v26[8], 0x52u);
  }

LABEL_22:
}

- (void)setAnnotation:(id)annotation value:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  valueCopy = value;
  [(PKPlugInCore *)self setAnnotationTimestamp:mach_continuous_time()];
  annotations = [(PKPlugInCore *)self annotations];
  v9 = [valueCopy copy];
  v10 = [annotations dictionaryChanging:annotationCopy to:v9];
  [(PKPlugInCore *)self setAnnotations:v10];

  v11 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v15 = 138544642;
    v16 = uuid;
    v17 = 2112;
    v18 = identifier;
    v19 = 2112;
    v21 = 2080;
    v20 = version;
    v22 = "[PKPlugInCore setAnnotation:value:]";
    v23 = 2112;
    v24 = annotationCopy;
    v25 = 2112;
    v26 = valueCopy;
    _os_log_debug_impl(&dword_1C6892000, v11, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] %s set annotation %@ : %@", &v15, 0x3Eu);
  }
}

- (BOOL)oldStyle
{
  v3 = [(PKPlugInCore *)self infoKey:@"NSExtension"];

  if (!v3)
  {
    v4 = [(PKPlugInCore *)self infoKey:@"PlugInKit"];

    if (!v4)
    {
      sub_1C68B5EB0();
    }
  }

  return v3 == 0;
}

- (NSString)sdkSpec
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionPointIdentifier"];

  return v2;
}

- (id)embeddedProtocolSpec
{
  protocolSpec = [(PKPlugInCore *)self pluginKey:@"EmbeddedProtocol"];
  if (!protocolSpec)
  {
    protocolSpec = [(PKPlugInCore *)self protocolSpec];
  }

  return protocolSpec;
}

- (NSDate)timestamp
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[PKPlugInCore lastModified](self, "lastModified")}];

  return v2;
}

- (BOOL)shouldTerminateOnHold
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionShouldTerminateOnHold"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)infoKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
  v6 = [bundleInfoDictionary objectForKeyedSubscript:keyCopy];

  v7 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v12 = 138544386;
    v13 = uuid;
    v14 = 2112;
    v15 = identifier;
    v16 = 2112;
    v17 = version;
    v18 = 2112;
    v19 = keyCopy;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] info [%@] => [%@]", &v12, 0x34u);
  }

  return v6;
}

- (id)pluginKey:(id)key
{
  keyCopy = key;
  plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
  v6 = [plugInDictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)attribute:(id)attribute
{
  attributeCopy = attribute;
  attributes = [(PKPlugInCore *)self attributes];
  v6 = [attributes objectForKeyedSubscript:attributeCopy];

  return v6;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlements = [(PKPlugInCore *)self entitlements];
  v6 = [entitlements objectForKeyedSubscript:entitlementCopy];

  return v6;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(PKPlugInCore *)self valueForEntitlement:entitlement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqual:MEMORY[0x1E695E110]] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)localizedInfoDictionaryForKeys:(id)keys completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = dictionary;
  if (self->_bundleInfoDictionary)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = keysCopy;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v11)
    {
      v27 = completionCopy;
      v28 = keysCopy;
      v30 = 0;
      v12 = *v32;
      v29 = *MEMORY[0x1E696A578];
      while (1)
      {
        v13 = 0;
        if (v11 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * v13);
          if ([v15 isEqualToString:@"CFBundleName"])
          {
            localizedShortName = [(PKPlugInCore *)self localizedShortName];
            if (!localizedShortName)
            {
              goto LABEL_14;
            }
          }

          else if (![v15 isEqualToString:@"CFBundleDisplayName"] || (-[PKPlugInCore localizedName](self, "localizedName"), (localizedShortName = objc_claimAutoreleasedReturnValue()) == 0))
          {
LABEL_14:
            localizedShortName = [(PKPlugInCore *)self infoKey:v15];
            if (!localizedShortName)
            {
              localizedShortName = [(NSDictionary *)self->_bundleInfoDictionary objectForKey:v15];
              if (!localizedShortName)
              {
                goto LABEL_18;
              }
            }
          }

          if (![localizedShortName conformsToProtocol:&unk_1F4649970])
          {

            v17 = MEMORY[0x1E696ABC0];
            v37 = v29;
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value of info dictionary key %@ for plugin %@ does not conform to secure coding!", v15, self->_identifier];
            v38 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            [v17 errorWithDomain:@"PlugInKit" code:-1 userInfo:v19];
            v21 = v20 = v10;

            v30 = v21;
            v10 = v20;
            v9 = 0;

            goto LABEL_24;
          }

          [v9 setObject:localizedShortName forKeyedSubscript:v15];
LABEL_18:

          ++v13;
        }

        while (v14 != v13);
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (!v11)
        {
LABEL_24:
          completionCopy = v27;
          keysCopy = v28;
          v22 = v30;
          goto LABEL_27;
        }
      }
    }

    v22 = 0;
  }

  else
  {

    v23 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve plugin for %@", self->_identifier];
    v36 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = [v23 errorWithDomain:@"PlugInKit" code:-1 userInfo:v25];

    v10 = v24;
    v9 = 0;
  }

LABEL_27:

  v26 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1C68B5FB8();
  }

  completionCopy[2](completionCopy, v9, v22);
}

- (NSDictionary)localizedFileProviderActionNames
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedFileProviderActionNames)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedFileProviderActionNames];
  }

  objc_sync_exit(selfCopy);

  localizedFileProviderActionNames = selfCopy->_localizedFileProviderActionNames;

  return localizedFileProviderActionNames;
}

- (void)_loadLocalizedFileProviderActionNames
{
  v3 = objc_autoreleasePoolPush();
  v14 = 0;
  v4 = [(PKPlugInCore *)self useBundle:@"." error:&v14];
  v5 = v14;
  if (v4)
  {
    external = [(PKPlugInCore *)self external];
    filesystem = [external filesystem];
    v8 = [(PKPlugInCore *)self url];
    v9 = [filesystem bundleWithURL:v8];

    plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
    v11 = [(PKPlugInCore *)self _localizedFileProviderActionNamesForPKDict:plugInDictionary fromBundle:v9];
    localizedFileProviderActionNames = self->_localizedFileProviderActionNames;
    self->_localizedFileProviderActionNames = v11;

    v13 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B627C();
    }
  }

  else
  {
    v9 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B61CC();
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_localizedFileProviderActionNamesForPKDict:(id)dict fromBundle:(id)bundle
{
  dictCopy = dict;
  bundleCopy = bundle;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [dictCopy objectForKeyedSubscript:@"NSExtensionFileProviderActions"];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1C68A89B8;
    v14[3] = &unk_1E827F910;
    v15 = v8;
    v16 = bundleCopy;
    selfCopy = self;
    [v10 enumerateObjectsUsingBlock:v14];

    v11 = v15;
  }

  else
  {
    v11 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B6358();
    }
  }

  objc_autoreleasePoolPop(v9);
  v12 = [v8 copy];

  return v12;
}

- (id)debugDescription
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = [(PKPlugInCore *)self uuid];
  identifier = [(PKPlugInCore *)self identifier];
  version = [(PKPlugInCore *)self version];
  isAppExtension = [(PKPlugInCore *)self isAppExtension];
  onSystemVolume = [(PKPlugInCore *)self onSystemVolume];
  containingBundleIdentifier = [(PKPlugInCore *)self containingBundleIdentifier];
  lastModified = [(PKPlugInCore *)self lastModified];
  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
  path = [(PKPlugInCore *)self path];
  v12 = [v14 initWithFormat:@"<PKPlugInCore: %p; uuid = [%@], identifier = [%@(%@)], isAppExtension = %d, onSystemVolume = %d, containingBundle = [%@], lastModified = %ld, discoveryInstanceUUID = [%@], path = [%@]>", self, uuid, identifier, version, isAppExtension, onSystemVolume, containingBundleIdentifier, lastModified, discoveryInstanceUUID, path];

  return v12;
}

@end