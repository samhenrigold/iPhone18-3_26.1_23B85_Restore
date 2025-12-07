@interface ISIconFactory
+ (id)_iconForURL:(id)l options:(unint64_t)options;
- (ISIconFactory)initWithApplicationBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithApplicationExtensionBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithApplicationIdentity:(id)identity;
- (ISIconFactory)initWithBundleIdentifier:(id)identifier;
- (ISIconFactory)initWithBundleURL:(id)l fileExtension:(id)extension;
- (ISIconFactory)initWithBundleURL:(id)l type:(id)type;
- (ISIconFactory)initWithFileExtension:(id)extension;
- (ISIconFactory)initWithImages:(id)images;
- (ISIconFactory)initWithMIMEType:(id)type;
- (ISIconFactory)initWithModelCode:(id)code;
- (ISIconFactory)initWithResourceProxy:(id)proxy;
- (ISIconFactory)initWithSymbolName:(id)name;
- (ISIconFactory)initWithSymbolName:(id)name configuration:(id)configuration;
- (ISIconFactory)initWithType:(id)type iconConfiguration:(id)configuration;
- (ISIconFactory)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups;
- (ISIconFactory)initWithURL:(id)l;
- (ISIconFactory)initWithURL:(id)l options:(unint64_t)options;
- (id)_init;
@end

@implementation ISIconFactory

+ (id)_iconForURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  v129[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v5 iconInitWithURLProperties];
  v120 = 0;
  v7 = [lCopy __is_resourceValuesForKeys:iconInitWithURLProperties error:&v120];
  v8 = v120;

  v10 = MEMORY[0x1E695DC40];
  if (v7)
  {
    v11 = *MEMORY[0x1E695DC40];
  }

  else
  {
    v12 = _ISDefaultLog(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v122 = lCopy;
      v123 = 2112;
      v124 = v8;
      _os_log_impl(&dword_1A77B8000, v12, OS_LOG_TYPE_DEFAULT, "Could not get resource properties for URL: %@ with error: %@", buf, 0x16u);
    }

    v14 = _ISURLCacheLog(v13);
    v15 = os_signpost_id_make_with_pointer(v14, lCopy);

    if (v15)
    {
      v17 = _ISURLCacheLog(v16);
      v18 = os_signpost_enabled(v17);

      if (v18)
      {
        v20 = _ISURLCacheLog(v19);
        v21 = v20;
        if (v15 != -1 && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v21, OS_SIGNPOST_EVENT, v15, "path", "resource property values are nil", buf, 2u);
        }
      }
    }

    v11 = *v10;
    v128[0] = *v10;
    path = [lCopy path];
    v23 = path;
    v24 = &stru_1F1A4DB80;
    if (path)
    {
      v24 = path;
    }

    v128[1] = *MEMORY[0x1E695DBB8];
    v129[0] = v24;
    v129[1] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
  }

  path2 = [v7 _IF_objectOfClass:objc_opt_class() forKey:v11];
  if (!path2)
  {
    v26 = _ISURLCacheLog(0);
    v27 = os_signpost_id_make_with_pointer(v26, lCopy);

    if (v27)
    {
      v29 = _ISURLCacheLog(v28);
      v30 = os_signpost_enabled(v29);

      if (v30)
      {
        v32 = _ISURLCacheLog(v31);
        v33 = v32;
        if (v27 != -1 && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v33, OS_SIGNPOST_EVENT, v27, "path", "NSURLPathKey is nil", buf, 2u);
        }
      }
    }

    path2 = [lCopy path];
  }

  v119 = v8;
  v34 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DB78]];
  v35 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DBA0]];
  pathExtension = [path2 pathExtension];
  v37 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DB68]];
  if ((v37 & 1) != 0 || (v37 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DBC8]], v37))
  {
    v38 = _ISDefaultLog(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v39 = [[ISAliasIcon alloc] initWithAliasURL:lCopy];
    goto LABEL_27;
  }

  if ([v7 _IF_BOOLForKey:*MEMORY[0x1E695DB70]])
  {
LABEL_33:
    v44 = _ISGenerateInProcess(lCopy);
    v45 = v44;
    v46 = _ISDefaultLog(v44);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
    if (v45)
    {
      if (v47)
      {
        +[ISIconFactory _iconForURL:options:];
      }

      v48 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
      iconDictionary = [v48 iconDictionary];
      v50 = [iconDictionary _IF_arrayForKey:@"CFBundleIconFiles"];

      if (![v50 count])
      {
        iconDictionary2 = [v48 iconDictionary];
        v52 = [iconDictionary2 _IF_stringForKey:@"CFBundleIconFile"];

        if (v52)
        {
          v127 = v52;
          v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];

          v50 = v53;
        }
      }

      defaultAppIconAssetsBag = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v50 fromBundle:v48];
      if (!defaultAppIconAssetsBag)
      {
        defaultAppIconAssetsBag = [MEMORY[0x1E69A8990] defaultAppIconAssetsBag];
      }

      v40 = [[ISImageBagIcon alloc] initWithImageBag:defaultAppIconAssetsBag];
    }

    else
    {
      if (v47)
      {
        +[ISIconFactory _iconForURL:options:];
      }

      v40 = [[ISBundleIcon alloc] initWithBundleURL:lCopy];
      v68 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:lCopy allowPlaceholder:0 error:0];
      v48 = v68;
      if (!v68 || [v68 developerType] != 1)
      {
        goto LABEL_75;
      }

      bundleIdentifier = [v48 bundleIdentifier];
      v50 = _aliasedIcon(bundleIdentifier, v40);

      if (v50)
      {
        v71 = _ISDefaultLog(v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          [v48 bundleIdentifier];
          v115 = log = v71;
          *buf = 138412802;
          v122 = v115;
          v123 = 2112;
          v124 = lCopy;
          v125 = 2112;
          v126 = v40;

          v71 = log;
        }

        v72 = v50;
        v40 = v72;
      }
    }

LABEL_75:
    goto LABEL_28;
  }

  if (v35)
  {
    v64 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DB88]];
    if (v64)
    {
      v64 = [lCopy __is_hasFileExtension:@"appex"];
      if (v64)
      {
        goto LABEL_33;
      }
    }

    v65 = _ISDefaultLog(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v66 = [ISTagIcon alloc];
    v67 = MEMORY[0x1E6963868];
LABEL_86:
    v39 = [(ISTagIcon *)v66 initWithFileExtension:pathExtension baseType:*v67];
LABEL_27:
    v40 = v39;
    goto LABEL_28;
  }

  v73 = [pathExtension length];
  v74 = *MEMORY[0x1E695DBB8];
  if (!v73)
  {
    if ([v7 _IF_BOOLForKey:*MEMORY[0x1E695DBB8]])
    {
      v75 = [v7 _IF_BOOLForKey:*MEMORY[0x1E695DB88]];
      if (v75)
      {
        v76 = _ISDefaultLog(v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          +[ISIconFactory _iconForURL:options:];
        }

        v77 = [ISTypeIcon alloc];
        v39 = [(ISTypeIcon *)v77 initWithType:*MEMORY[0x1E69638D0]];
        goto LABEL_27;
      }
    }
  }

  v78 = [v7 _IF_BOOLForKey:v74];
  if (v78)
  {
    v79 = _ISDefaultLog(v78);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v66 = [ISTagIcon alloc];
    v67 = MEMORY[0x1E6963800];
    goto LABEL_86;
  }

  if (!v34)
  {
    v40 = 0;
    goto LABEL_28;
  }

  v80 = _ISURLCacheLog(v78);
  v81 = os_signpost_id_make_with_pointer(v80, lCopy);

  if (v81)
  {
    v83 = _ISURLCacheLog(v82);
    v84 = os_signpost_enabled(v83);

    if (v84)
    {
      v86 = _ISURLCacheLog(v85);
      v87 = v86;
      if (v81 != -1 && os_signpost_enabled(v86))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v87, OS_SIGNPOST_EVENT, v81, "isFileReferenceURL", "checking for file ref url", buf, 2u);
      }
    }
  }

  isFileReferenceURL = [lCopy isFileReferenceURL];
  if (isFileReferenceURL)
  {
    v89 = _ISURLCacheLog(isFileReferenceURL);
    v90 = os_signpost_id_make_with_pointer(v89, lCopy);

    if (v90)
    {
      v92 = _ISURLCacheLog(v91);
      v93 = os_signpost_enabled(v92);

      if (v93)
      {
        v94 = _ISURLCacheLog(v91);
        v95 = v94;
        if (v90 != -1 && os_signpost_enabled(v94))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v95, OS_SIGNPOST_EVENT, v90, "filePathURL", "getting file path URL for debug level logging", buf, 2u);
        }
      }
    }

    v96 = _ISDefaultLog(v91);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      [ISIconFactory _iconForURL:lCopy options:v96];
    }
  }

  else
  {
    v96 = _ISDefaultLog(isFileReferenceURL);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }
  }

  v97 = +[ISCustomIconManager sharedInstance];
  v98 = [v97 specialFolderTypeForURL:lCopy];

  if (v98)
  {
    v100 = _ISDefaultLog(v99);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v40 = [[ISTypeIcon alloc] initWithType:v98];
    goto LABEL_117;
  }

  v101 = +[ISDefaults sharedInstance];
  forceSymbolEmbossment = [v101 forceSymbolEmbossment];
  if (forceSymbolEmbossment)
  {

LABEL_113:
    v105 = [ISFolderIconConfiguration alloc];
    v116 = +[ISDefaults sharedInstance];
    forceSymbolEmbossment2 = [v116 forceSymbolEmbossment];
    v107 = +[ISDefaults sharedInstance];
    tintColor = [v107 tintColor];
    v109 = [(ISFolderIconConfiguration *)v105 initWithSymbolName:forceSymbolEmbossment2 tintColor:tintColor];

    v110 = v109;
    v112 = _ISDefaultLog(v111);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v113 = [ISTypeIcon alloc];
    identifier = [*MEMORY[0x1E6982DC8] identifier];
    v40 = [(ISTypeIcon *)v113 initWithType:identifier iconConfiguration:v109];

    goto LABEL_116;
  }

  v103 = +[ISDefaults sharedInstance];
  tintColor2 = [v103 tintColor];

  if (tintColor2)
  {
    goto LABEL_113;
  }

  v40 = +[ISGenericFolderIcon sharedInstance];
LABEL_116:
  v98 = 0;
LABEL_117:

LABEL_28:
  v41 = objc_opt_new();
  if (v35 & 1 | ((v34 & 1) == 0))
  {
    goto LABEL_46;
  }

  __is_accessFlags = [lCopy __is_accessFlags];
  if (__is_accessFlags)
  {
    if (__is_accessFlags != 2)
    {
      goto LABEL_46;
    }

    v43 = kISIconDecorationDropFolderBadgeType;
  }

  else
  {
    v43 = kISIconDecorationPrivateFolderBadgeType;
  }

  v55 = [[ISIconDecoration alloc] initWithType:*v43];
  [v41 addObject:v55];

LABEL_46:
  if ([lCopy __is_locked])
  {
    v56 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.badge.locked"];
    [v41 addObject:v56];
  }

  v57 = [v41 count];
  if (v57)
  {
    if ((optionsCopy & 2) != 0)
    {
      v59 = _ISDefaultLog(v57);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        +[ISIconFactory _iconForURL:options:];
      }
    }

    else
    {
      decorations = [(ISImageBagIcon *)v40 decorations];
      v59 = [decorations arrayByAddingObjectsFromArray:v41];

      v60 = [[ISDecoratedIcon alloc] initWithIcon:v40 decorations:v59];
      v40 = v60;
    }
  }

  if (!v40)
  {
    v62 = _ISDefaultLog(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      +[ISIconFactory _iconForURL:options:];
    }

    v40 = +[ISUnknownIcon sharedInstance];
  }

  return v40;
}

- (id)_init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ISIcon.m" lineNumber:588 description:@"Unexpected call of -[ISIconFactory _init]"];

  return 0;
}

- (ISIconFactory)initWithURL:(id)l options:(unint64_t)options
{
  lCopy = l;
  v7 = _ISURLCacheLog(lCopy);
  v8 = os_signpost_id_make_with_pointer(v7, lCopy);

  if (v8)
  {
    v10 = _ISURLCacheLog(v9);
    v11 = v10;
    if (v8 != -1 && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "accessing URL", "[ISIcon initWithURL:options:]", buf, 2u);
    }
  }

  v12 = [ISIconFactory _iconForURL:lCopy options:options];
  v13 = _ISURLCacheLog(v12);
  v14 = os_signpost_id_make_with_pointer(v13, lCopy);

  if (v14)
  {
    v16 = _ISURLCacheLog(v15);
    v17 = os_signpost_enabled(v16);

    if (v17)
    {
      v19 = _ISURLCacheLog(v18);
      v20 = v19;
      if (v14 != -1 && os_signpost_enabled(v19))
      {
        *v24 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v20, OS_SIGNPOST_INTERVAL_END, v14, "accessing URL", "[ISIcon initWithURL:options:]", v24, 2u);
      }
    }
  }

  v21 = +[ISIconManager sharedInstance];
  v22 = [v21 findOrRegisterIcon:v12];

  return v22;
}

- (ISIconFactory)initWithURL:(id)l
{
  lCopy = l;
  v5 = _ISURLCacheLog(lCopy);
  v6 = os_signpost_id_make_with_pointer(v5, lCopy);

  if (v6)
  {
    v8 = _ISURLCacheLog(v7);
    v9 = v8;
    if (v6 != -1 && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "accessing URL", "[ISIcon initWithURL:]", buf, 2u);
    }
  }

  v10 = [ISIconFactory _iconForURL:lCopy options:0];
  v11 = _ISURLCacheLog(v10);
  v12 = os_signpost_id_make_with_pointer(v11, lCopy);

  if (v12)
  {
    v14 = _ISURLCacheLog(v13);
    v15 = os_signpost_enabled(v14);

    if (v15)
    {
      v17 = _ISURLCacheLog(v16);
      v18 = v17;
      if (v12 != -1 && os_signpost_enabled(v17))
      {
        *v22 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v18, OS_SIGNPOST_INTERVAL_END, v12, "accessing URL", "[ISIcon initWithURL:]", v22, 2u);
      }
    }
  }

  v19 = +[ISIconManager sharedInstance];
  v20 = [v19 findOrRegisterIcon:v10];

  return v20;
}

- (ISIconFactory)initWithApplicationIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[ISApplicationIdentityIcon alloc] initWithApplicationIdentity:identityCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];
  v6 = _aliasedIcon(identifierCopy, v5);
  v7 = v6;
  if (v6)
  {
    v8 = _ISDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ISIconFactory initWithBundleIdentifier:];
    }

    v9 = v7;
    v5 = v9;
  }

  v10 = +[ISIconManager sharedInstance];
  v11 = [v10 findOrRegisterIcon:v5];

  return v11;
}

- (ISIconFactory)initWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithApplicationExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:identifierCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithBundleURL:(id)l type:(id)type
{
  typeCopy = type;
  lCopy = l;
  v8 = [[ISBundleIcon alloc] initWithBundleURL:lCopy type:typeCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithBundleURL:(id)l fileExtension:(id)extension
{
  extensionCopy = extension;
  lCopy = l;
  v8 = [[ISBundleIcon alloc] initWithBundleURL:lCopy fileExtension:extensionCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithType:(id)type iconConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  v8 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v8 isSolariumEnabled];

  if ((isSolariumEnabled & 1) == 0 && ![typeCopy caseInsensitiveCompare:*MEMORY[0x1E69637D0]])
  {
    v13 = ISGenericFolderIcon;
    goto LABEL_7;
  }

  if (![typeCopy caseInsensitiveCompare:*MEMORY[0x1E6963738]])
  {
    v13 = ISGenericApplicationIcon;
LABEL_7:
    sharedInstance = [(__objc2_class *)v13 sharedInstance];
    goto LABEL_8;
  }

  v10 = [[ISTypeIcon alloc] initWithType:typeCopy iconConfiguration:configurationCopy];
  v11 = +[ISIconManager sharedInstance];
  sharedInstance = [v11 findOrRegisterIcon:v10];

LABEL_8:
  return sharedInstance;
}

- (ISIconFactory)initWithResourceProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];
    v6 = [[ISBundleIdentifierIcon alloc] initWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    bundleIdentifier2 = proxyCopy;
    v11 = [bundleIdentifier2 URL];

    if (v11)
    {
      name3 = [bundleIdentifier2 URL];
      v13 = [ISIconFactory _iconForURL:name3 options:0];
    }

    else
    {
      typeIdentifier = [bundleIdentifier2 typeIdentifier];

      if (!typeIdentifier)
      {
        name = [bundleIdentifier2 name];
        if (name)
        {
          v20 = name;
          name2 = [bundleIdentifier2 name];
          pathExtension = [name2 pathExtension];
          v23 = [pathExtension length];

          if (v23)
          {
            v24 = [ISTagIcon alloc];
            name3 = [bundleIdentifier2 name];
            pathExtension2 = [(ISBundleIdentifierIcon *)name3 pathExtension];
            v10 = [(ISTagIcon *)v24 initWithFileExtension:pathExtension2];

            goto LABEL_13;
          }
        }

        mIMEType = [bundleIdentifier2 MIMEType];

        if (mIMEType)
        {
          v27 = [ISTagIcon alloc];
          name3 = [bundleIdentifier2 MIMEType];
          v13 = [(ISTagIcon *)v27 initWithMIMEType:name3];
          goto LABEL_12;
        }

        typeIdentifier2 = [bundleIdentifier2 typeIdentifier];

        if (!typeIdentifier2)
        {
          v9 = +[(ISIcon *)ISGenericDocumentIcon];
          goto LABEL_6;
        }
      }

      v15 = [ISTypeIcon alloc];
      name3 = [bundleIdentifier2 typeIdentifier];
      v13 = [(ISTypeIcon *)v15 initWithType:name3];
    }

LABEL_12:
    v10 = v13;

LABEL_13:
    v6 = name3;
    goto LABEL_14;
  }

  v7 = [ISBundleIdentifierIcon alloc];
  bundleIdentifier2 = [proxyCopy bundleIdentifier];
  v9 = [(ISBundleIdentifierIcon *)v7 initWithBundleIdentifier:bundleIdentifier2];
LABEL_6:
  v10 = v9;
LABEL_14:

  v6 = v10;
LABEL_15:
  if (v6)
  {
    v16 = +[ISIconManager sharedInstance];
    v17 = [v16 findOrRegisterIcon:v6];
  }

  else
  {
    v17 = +[ISUnknownIcon sharedInstance];
  }

  return v17;
}

- (ISIconFactory)initWithImages:(id)images
{
  imagesCopy = images;
  v5 = [[ISImageBagIcon alloc] initWithImages:imagesCopy];

  return v5;
}

- (ISIconFactory)initWithFileExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [[ISTagIcon alloc] initWithFileExtension:extensionCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithModelCode:(id)code
{
  codeCopy = code;
  v5 = codeCopy;
  if (*MEMORY[0x1E69636E8] == codeCopy || [codeCopy isEqualToString:?])
  {
    v6 = +[ISCurrentDeviceIcon sharedInstance];
  }

  else
  {
    v7 = [[ISTagIcon alloc] initWithModelCode:v5];
    v8 = +[ISIconManager sharedInstance];
    v6 = [v8 findOrRegisterIcon:v7];
  }

  return v6;
}

- (ISIconFactory)initWithMIMEType:(id)type
{
  typeCopy = type;
  v5 = [[ISTagIcon alloc] initWithMIMEType:typeCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithSymbolName:(id)name
{
  nameCopy = name;
  v5 = [[ISSymbolIcon alloc] initWithSymbolName:nameCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (ISIconFactory)initWithSymbolName:(id)name configuration:(id)configuration
{
  configurationCopy = configuration;
  nameCopy = name;
  v8 = [[ISSymbolIcon alloc] initWithSymbolName:nameCopy configuration:configurationCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

- (ISIconFactory)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups
{
  groupsCopy = groups;
  identifierCopy = identifier;
  v8 = [[ISLayeredIcon alloc] initWithTypeIdentifier:identifierCopy layerGroups:groupsCopy];

  v9 = +[ISIconManager sharedInstance];
  v10 = [v9 findOrRegisterIcon:v8];

  return v10;
}

+ (void)_iconForURL:(void *)a1 options:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 filePathURL];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Creating Folder icon for URL: %@ (%@)", &v5, 0x16u);
}

+ (void)_iconForURL:options:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_1A77B8000, v0, v1, "Identified custom folder type %@ for URL: %@");
}

+ (void)_iconForURL:options:.cold.11()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_1A77B8000, v0, v1, "Ignoring decorations %@ for URL: %@");
}

- (void)initWithBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
}

@end