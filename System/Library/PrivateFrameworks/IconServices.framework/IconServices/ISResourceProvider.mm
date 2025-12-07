@interface ISResourceProvider
+ (ISResourceProvider)resourceProviderWithRecord:(id)record options:(unint64_t)options;
+ (id)defaultAppIconResourceProvider;
+ (id)placeholderIconResourceProvider;
+ (id)resourceWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options;
+ (id)resourceWithRecord:(id)record options:(unint64_t)options;
- (BOOL)_findBackgroundResourceWithIconDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)_findBadgeResourceWithIconDictionary:(id)dictionary bundle:(id)bundle record:(id)record;
- (BOOL)_findCustomRecipeWithIconDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary;
- (BOOL)isPrecomposed;
- (ISResourceProvider)init;
- (ISResourceProvider)initWithResource:(id)resource templateResource:(id)templateResource;
- (ISResourceProvider)initWithResources:(id)resources;
- (NSData)validationToken;
- (void)configureProviderFromDescriptor:(id)descriptor;
- (void)resolveIconResource;
- (void)setPlatformWithBundle:(id)bundle;
@end

@implementation ISResourceProvider

+ (id)defaultAppIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  genericAppIconResource = [v2 genericAppIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:genericAppIconResource templateResource:0];
  [(ISResourceProvider *)v4 setResourceType:1];
  [(ISResourceProvider *)v4 setIsGenericProvider:1];
  [(ISResourceProvider *)v4 setAllowNonDefaultAppearances:1];
  [(ISResourceProvider *)v4 setAllowAlterationsToResourceArt:1];

  return v4;
}

- (ISResourceProvider)init
{
  v7.receiver = self;
  v7.super_class = ISResourceProvider;
  v2 = [(ISResourceProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resourcesByResourceKey = v2->_resourcesByResourceKey;
    v2->_resourcesByResourceKey = v3;

    v2->_resourceType = 0;
    v2->_isGenericProvider = 0;
    v5 = +[ISPlatformInfo sharedInstance];
    v2->_platform = [v5 nativePlatform];

    *&v2->_allowNonDefaultAppearances = 256;
  }

  return v2;
}

- (void)resolveIconResource
{
  v8 = *MEMORY[0x1E69E9840];
  iconResource = [(ISResourceProvider *)self iconResource];

  if (!iconResource)
  {
    v5 = _ISDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_INFO, "Failed to resolve an icon resource for %@", &v6, 0xCu);
    }
  }
}

+ (ISResourceProvider)resourceProviderWithRecord:(id)record options:(unint64_t)options
{
  recordCopy = record;
  v6 = [[ISRecordResourceProvider alloc] initWithRecord:recordCopy options:options];

  return v6;
}

- (ISResourceProvider)initWithResource:(id)resource templateResource:(id)templateResource
{
  resourceCopy = resource;
  templateResourceCopy = templateResource;
  v8 = [(ISResourceProvider *)self init];
  v9 = v8;
  if (v8)
  {
    [(ISResourceProvider *)v8 setIconResource:resourceCopy];
    objc_storeStrong(&v9->_templateIconResource, templateResource);
    resourceToken = v9->_resourceToken;
    v9->_resourceToken = 0;
  }

  return v9;
}

- (ISResourceProvider)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v5 = [(ISResourceProvider *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_resourcesByResourceKey addEntriesFromDictionary:resourcesCopy];
    resourceToken = v6->_resourceToken;
    v6->_resourceToken = 0;
  }

  return v6;
}

- (NSData)validationToken
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_resourceToken)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    [(NSUUID *)self->_lsDatabaseUUID getUUIDBytes:&v6];
    *&v7 = self->_lsDatabaseSequenceNumber;
    v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:self->_resourceToken];
    [v3 getUUIDBytes:&v7 + 8];
    _is_validToken = [MEMORY[0x1E695DEF0] dataWithBytes:&v6 length:40];
  }

  else
  {
    _is_validToken = [MEMORY[0x1E695DEF0] _is_validToken];
  }

  return _is_validToken;
}

- (BOOL)_findBadgeResourceWithIconDictionary:(id)dictionary bundle:(id)bundle record:(id)record
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  recordCopy = record;
  v11 = [[ISFolderIconConfiguration alloc] initWithIconDictionary:dictionaryCopy];
  symbolName = [(ISFolderIconConfiguration *)v11 symbolName];

  if (symbolName)
  {
    v13 = objc_alloc(MEMORY[0x1E69A89B0]);
    symbolName2 = [(ISFolderIconConfiguration *)v11 symbolName];
    v15 = [v13 initWithSymbolName:symbolName2 bundleURL:0];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:v15 forKeyedSubscript:@"kISBadgeResourceKey"];
LABEL_3:

    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
LABEL_4:
    LOBYTE(isEnterprisePersona) = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconConfig = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iconConfig2 = [(ISResourceProvider *)self iconConfig];
      symbolName2 = [iconConfig2 symbolName];

      v15 = recordCopy;
      if (symbolName2)
      {
        identifier = [*MEMORY[0x1E6982DC8] identifier];
        if ([v15 conformsToTypeIdentifier:identifier])
        {
LABEL_23:

          goto LABEL_24;
        }

        v24 = [v15 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.embossable"];

        if (v24)
        {
LABEL_24:
          v27 = objc_alloc(MEMORY[0x1E69A89B0]);
          v28 = symbolName2;
          goto LABEL_25;
        }
      }
    }

    else
    {
      symbolName2 = 0;
      v15 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [dictionaryCopy _IF_dictionaryForKey:@"ISDocumentIconConfiguration"];
    if (v25)
    {
      symbolName2 = v25;
      v26 = [v25 _IF_stringForKey:@"ISSymbolName"];
      if (v26)
      {
        v15 = v26;
        v27 = objc_alloc(MEMORY[0x1E69A89B0]);
        v28 = v15;
LABEL_25:
        resourcesByResourceKey = [v27 initWithSymbolName:v28 bundleURL:0];
        resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey2 setObject:resourcesByResourceKey forKeyedSubscript:@"kISBadgeResourceKey"];

        goto LABEL_3;
      }
    }
  }

  symbolName2 = [(ISResourceProvider *)self iconConfig];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      goto LABEL_29;
    }

    iconConfig3 = [(ISResourceProvider *)self iconConfig];
    symbolName2 = [iconConfig3 symbolName];

    v15 = recordCopy;
    if (symbolName2)
    {
      identifier = [*MEMORY[0x1E6982DC8] identifier];
      if ([v15 conformsToTypeIdentifier:identifier])
      {
        goto LABEL_23;
      }

      v32 = [v15 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.embossable"];

      if (v32)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_29:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = recordCopy;
    assetCatalogImageName = [(ISFolderIconConfiguration *)v11 assetCatalogImageName];
    if (assetCatalogImageName)
    {
      identifier2 = [*MEMORY[0x1E6982DC8] identifier];
      v36 = [v33 conformsToTypeIdentifier:identifier2];

      if (v36)
      {
        assetCatalogURL = [bundleCopy assetCatalogURL];
        v59 = 0;
        v38 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL, assetCatalogImageName, [bundleCopy platform], &v59);
        v56 = v59;

        LOBYTE(v36) = v38 != 0;
        if (v38)
        {
          resourcesByResourceKey3 = [(ISResourceProvider *)self resourcesByResourceKey];
          [resourcesByResourceKey3 setObject:v38 forKeyedSubscript:@"kISBadgeResourceKey"];
        }

        else
        {
          resourcesByResourceKey3 = _ISDefaultLog(v39);
          if (os_log_type_enabled(resourcesByResourceKey3, OS_LOG_TYPE_ERROR))
          {
            identifier3 = [v33 identifier];
            *buf = 138412802;
            v62 = assetCatalogImageName;
            v63 = 2112;
            v64 = identifier3;
            v65 = 2112;
            v66 = v56;
            _os_log_error_impl(&dword_1A77B8000, resourcesByResourceKey3, OS_LOG_TYPE_ERROR, "Couldn't find image resource %@ for %@: %@", buf, 0x20u);
          }
        }
      }
    }

    else
    {
      LOBYTE(v36) = 0;
    }

    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
    if (v36)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v17)
    {
      v41 = [v17 count];
      if (bundleCopy)
      {
        if (v41)
        {
          v42 = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v17 fromBundle:bundleCopy];
          if (v42)
          {
            resourcesByResourceKey4 = [(ISResourceProvider *)self resourcesByResourceKey];
            [resourcesByResourceKey4 setObject:v42 forKeyedSubscript:@"kISBadgeResourceKey"];
          }
        }
      }
    }
  }

  v60[0] = @"UTTypeIconBadgeName";
  v60[1] = @"UTTypeGlyphName";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:{2, identifier3}];
  v45 = [dictionaryCopy _IF_stringForKeys:v44];

  if (v45)
  {
    assetCatalogURL2 = [bundleCopy assetCatalogURL];
    v58 = 0;
    v47 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL2, v45, [bundleCopy platform], &v58);
    v57 = v58;

    LOBYTE(isEnterprisePersona) = v47 != 0;
    if (v47)
    {
      resourcesByResourceKey5 = [(ISResourceProvider *)self resourcesByResourceKey];
      [resourcesByResourceKey5 setObject:v47 forKeyedSubscript:@"kISBadgeResourceKey"];
    }

    else
    {
      resourcesByResourceKey5 = _ISDefaultLog(v48);
      if (os_log_type_enabled(resourcesByResourceKey5, OS_LOG_TYPE_DEBUG))
      {
        bundleURL = [bundleCopy bundleURL];
        *buf = 138412802;
        v62 = bundleURL;
        v63 = 2112;
        v64 = v45;
        v65 = 2112;
        v66 = v57;
        _os_log_debug_impl(&dword_1A77B8000, resourcesByResourceKey5, OS_LOG_TYPE_DEBUG, "Failed to find badge resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    LOBYTE(isEnterprisePersona) = 0;
  }

  if (recordCopy && !isEnterprisePersona)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[ISPersona alloc] initWithRecord:recordCopy];
      isEnterprisePersona = [(ISPersona *)v50 isEnterprisePersona];
      if (isEnterprisePersona)
      {
        resourceBadge = [(ISPersona *)v50 resourceBadge];
        resourcesByResourceKey6 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey6 setObject:resourceBadge forKeyedSubscript:@"kISBadgeResourceKey"];

        v53 = objc_opt_new();
        [(ISResourceProvider *)self setSuggestedRecipe:v53];
      }
    }

    else
    {
      LOBYTE(isEnterprisePersona) = 0;
    }
  }

LABEL_5:

  return isEnterprisePersona;
}

- (BOOL)_findBackgroundResourceWithIconDictionary:(id)dictionary bundle:(id)bundle
{
  v32[2] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v32[0] = @"UTTypeIconBackgroundName";
  v32[1] = @"CFBundleIconBackgroundName";
  v7 = MEMORY[0x1E695DEC8];
  dictionaryCopy = dictionary;
  v9 = [v7 arrayWithObjects:v32 count:2];
  v10 = [dictionaryCopy _IF_stringForKeys:v9];

  if (v10)
  {
    v11 = +[ISDefaults sharedInstance];
    isSolariumEnabled = [v11 isSolariumEnabled];

    if (isSolariumEnabled)
    {
      v13 = [v10 stringByAppendingString:@"_16"];
      assetCatalogURL = [bundleCopy assetCatalogURL];
      v25 = 0;
      v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL, v13, [bundleCopy platform], &v25);
      v16 = v25;

      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    assetCatalogURL2 = [bundleCopy assetCatalogURL];
    v24 = v16;
    v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL2, v10, [bundleCopy platform], &v24);
    v16 = v24;

    if (!v15)
    {
      v15 = _ISDefaultLog(v20);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        bundleURL = [bundleCopy bundleURL];
        *buf = 138412802;
        v27 = bundleURL;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v16;
        _os_log_debug_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEBUG, "Failed to find background resource: %@ : %@ with error: %@", buf, 0x20u);
      }

      v17 = 0;
      goto LABEL_12;
    }

LABEL_8:
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:v15 forKeyedSubscript:@"kISBackgroundResourceKey"];

    v17 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (BOOL)_findCustomRecipeWithIconDictionary:(id)dictionary bundle:(id)bundle
{
  v5 = [ISDefaults sharedInstance:dictionary];
  if ([v5 isSolariumEnabled])
  {
    [(ISResourceProvider *)self suggestedRecipe];
  }

  return 0;
}

- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"UTTypeIconText";
  v11[1] = @"CFBundleIconText";
  v4 = MEMORY[0x1E695DEC8];
  dictionaryCopy = dictionary;
  v6 = [v4 arrayWithObjects:v11 count:2];
  v7 = [dictionaryCopy _IF_stringForKeys:v6];

  if (v7)
  {
    uppercaseString = [v7 uppercaseString];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:uppercaseString forKeyedSubscript:@"kISTextResourceKey"];
  }

  return v7 != 0;
}

- (void)setPlatformWithBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy platform])
  {
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [bundleCopy platform]);
  }

  else
  {
    v4 = +[ISPlatformInfo sharedInstance];
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [v4 nativePlatform]);
  }
}

- (void)configureProviderFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [(ISResourceProvider *)self resolveIconResource];
  iconResource = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = iconResource;
    if ([descriptorCopy layoutDirection] == 4 && -[ISResourceProvider _isAppleResource](self, "_isAppleResource"))
    {
      [v5 setLayoutDirection:4];
    }

    if ([(ISResourceProvider *)self allowNonDefaultAppearances])
    {
      [v5 setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
      [v5 setAppearanceVariant:{objc_msgSend(descriptorCopy, "appearanceVariant")}];
      tintColor = [descriptorCopy tintColor];
      [v5 setTintColor:tintColor];
    }
  }

  v7 = [[ISCompositingDescriptor alloc] initWithImageDescriptor:descriptorCopy];
  iconResource2 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iconResource3 = [(ISResourceProvider *)self iconResource];
    -[ISCompositingDescriptor setPlatform:](v7, "setPlatform:", [iconResource3 platform]);
    [iconResource3 setCompositingDescriptor:v7];
  }

  iconResource4 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    iconResource5 = [(ISResourceProvider *)self iconResource];
    [iconResource5 setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
    [iconResource5 setAppearanceVariant:{objc_msgSend(descriptorCopy, "appearanceVariant")}];
    tintColor2 = [descriptorCopy tintColor];
    [iconResource5 setTintColor:tintColor2];

    [iconResource5 setBackground:{objc_msgSend(descriptorCopy, "background")}];
    [iconResource5 setShouldApplyMask:{objc_msgSend(descriptorCopy, "shouldApplyMask")}];
    [iconResource5 setLanguageDirection:{objc_msgSend(descriptorCopy, "languageDirection")}];
    [iconResource5 setPlatformStyle:{objc_msgSend(descriptorCopy, "platformStyle")}];
    [iconResource5 setShape:{objc_msgSend(descriptorCopy, "shape")}];
  }

  iconResource6 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    iconResource7 = [(ISResourceProvider *)self iconResource];
    [iconResource7 setCompositingDescriptor:v7];
  }
}

+ (id)resourceWithRecord:(id)record options:(unint64_t)options
{
  recordCopy = record;
  if (!recordCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_17;
  }

  iconDictionary = [recordCopy iconDictionary];
  if ([iconDictionary count])
  {
    if (options & 1) != 0 && (objc_opt_respondsToSelector())
    {
      declaringBundleRecord = [recordCopy declaringBundleRecord];
      v8 = [declaringBundleRecord URL];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        iconResourceBundleURL = [recordCopy iconResourceBundleURL];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_15;
        }

        iconResourceBundleURL = [recordCopy URL];
      }

      v8 = iconResourceBundleURL;
    }

LABEL_15:
    v9 = [ISResourceProvider resourceWithBundleURL:v8 iconDictionary:iconDictionary options:options];

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

LABEL_17:

  return v9;
}

+ (id)resourceWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options
{
  v63[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy _IF_dictionaryForKey:0x1F1A4EC00];
  if (v9)
  {
    v10 = [ISGraphicSymbolResource graphicSymbolResourceWithRecipe:v9 url:lCopy];
    if (v10)
    {
      firstPage = v10;
      v12 = 0;
      goto LABEL_56;
    }
  }

  v63[0] = @"CFBundleIconName";
  v63[1] = @"UTTypeIconName";
  v63[2] = @"UTTypeGlyphName";
  v63[3] = @"CFBundleGlyphName";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];
  v14 = [dictionaryCopy _IF_stringForKeys:v13];

  if (v14)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    assetCatalogURL = [v12 assetCatalogURL];
    v54 = 0;
    firstPage = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", assetCatalogURL, v14, [v12 platform], (options >> 2) & 1, &v54);

    if (firstPage)
    {
      [(ISIconStackCompositeResource *)firstPage isPrecomposed];
LABEL_7:

      goto LABEL_56;
    }
  }

  else
  {
    v12 = 0;
  }

  v62[0] = @"CFBundleIconFile";
  v62[1] = @"UTTypeIconFile";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v17 = [dictionaryCopy _IF_stringForKeys:v16];

  if (v17 && ([v17 pathExtension], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"icns"), v18, (v19 & 1) == 0))
  {
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    }

    assetCatalogURL2 = [v12 assetCatalogURL];
    v53 = 0;
    firstPage = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", assetCatalogURL2, v17, [v12 platform], (options >> 2) & 1, &v53);
    v28 = v53;

    if (firstPage)
    {
      [(ISIconStackCompositeResource *)firstPage isPrecomposed];
    }

    else
    {
      v45 = _ISDefaultLog(v29);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v57 = lCopy;
        v58 = 2112;
        v59 = v17;
        v60 = 2112;
        optionsCopy = v28;
        _os_log_debug_impl(&dword_1A77B8000, v45, OS_LOG_TYPE_DEBUG, "Failed to find resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v55[0] = @"CFBundleIconFile";
  v55[1] = @"UTTypeIconFile";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v21 = [dictionaryCopy _IF_stringForKeys:v20];

  if (!v21)
  {
    goto LABEL_15;
  }

  pathExtension = [v21 pathExtension];
  v23 = [pathExtension length];

  if (v23)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
  }

  v31 = [v12 URLForResource:v21 withExtension:@"pdf"];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_alloc(MEMORY[0x1E69A8998]) initWithURL:v31];
    firstPage = [v33 firstPage];

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_15:
  }

  v24 = [dictionaryCopy _IF_arrayForKey:@"CFBundleIconFiles"];
  if (![v24 count])
  {
    v30 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];

    v24 = v30;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_31:
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ([v24 count] && v12)
  {
    firstPage = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v24 fromBundle:v12];

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v25 = [dictionaryCopy _IF_stringForKey:@"CFBundleIconFile"];
  v26 = v25;
  if (v12)
  {
    if (!v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    if (!v26)
    {
      goto LABEL_39;
    }
  }

  stringByDeletingPathExtension = [v26 stringByDeletingPathExtension];
  firstPage = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:stringByDeletingPathExtension fromBundle:v12];

  if (firstPage)
  {
    goto LABEL_56;
  }

LABEL_39:
  v35 = [dictionaryCopy _IF_stringForKey:@"CFBundleIconFile"];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
  }

  stringByDeletingPathExtension2 = [v35 stringByDeletingPathExtension];
  pathExtension2 = [v35 pathExtension];
  v38 = pathExtension2;
  if (stringByDeletingPathExtension2 && [pathExtension2 length] && (objc_msgSend(v12, "URLForResource:withExtension:", stringByDeletingPathExtension2, v38), (v39 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = v39;
    firstPage = [MEMORY[0x1E69A8988] imageWithContentsOfURL:v39];
  }

  else
  {
    firstPage = 0;
  }

  if (!firstPage)
  {
    if (!v12)
    {
      v41 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
      v12 = v41;
    }

    v42 = MEMORY[0x1E69A8990];
    v43 = legacyResourceNames(v41);
    v14 = [v42 imageBagWithResourcesNames:v43 fromBundle:v12];

    if (v14)
    {
      v44 = v14;
    }

    firstPage = v14;
    goto LABEL_7;
  }

LABEL_56:

  v46 = +[ISDefaults sharedInstance];
  safeBoot = [v46 safeBoot];
  if ((options & 8) != 0 && (safeBoot & 1) == 0)
  {
    if (firstPage)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_67;
          }

          v46 = firstPage;
          firstPage = -[ISIconStackCompositeResource initWithResource:platform:]([ISIconStackCompositeResource alloc], "initWithResource:platform:", firstPage, [v12 platform]);
        }
      }
    }
  }

  if (!firstPage)
  {
    v50 = _ISDefaultLog(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412802;
      v57 = path;
      v58 = 2112;
      v59 = dictionaryCopy;
      v60 = 2048;
      optionsCopy = options;
      _os_log_error_impl(&dword_1A77B8000, v50, OS_LOG_TYPE_ERROR, "Failed to find resource for %@. IconDictionary: %@ - %lu", buf, 0x20u);
    }

    firstPage = 0;
  }

LABEL_67:

  return firstPage;
}

+ (id)placeholderIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  placeholderIconResource = [v2 placeholderIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:placeholderIconResource templateResource:0];
  v5 = objc_alloc_init(ISGenericRecipe);
  [(ISResourceProvider *)v4 setSuggestedRecipe:v5];

  [(ISResourceProvider *)v4 setAllowNonDefaultAppearances:1];

  return v4;
}

- (BOOL)isPrecomposed
{
  iconResource = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isPrecomposed = [iconResource isPrecomposed];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isPrecomposed = 0;
    }

    else
    {
      objc_opt_class();
      isPrecomposed = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return isPrecomposed & 1;
}

@end