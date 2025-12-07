@interface TPSContentURLController
+ (id)_boardIDOrProductHash;
+ (id)_platformString;
+ (id)_productHash;
+ (id)_uiTestLocalBaseURL;
+ (id)_uiTestLocalURLForIdentifier:(id)identifier;
+ (id)assetPathFromAssetConfiguration:(id)configuration type:(int64_t)type;
+ (id)contentRequestURLWithContentMapHash:(id)hash;
+ (id)contentRequestURLWithContentMapHash:(id)hash variantIdentifiers:(id)identifiers useLanguageDefault:(BOOL)default;
+ (id)defaultHost;
+ (id)effectiveHost;
+ (id)languageStringWithLanguageDefault:(BOOL)default count:(unint64_t)count;
+ (id)metaRequestURL;
+ (id)modelQueryItem;
+ (id)platformQueryItem;
+ (id)preferredLocalizations;
+ (id)preferredLocalizationsWithCount:(unint64_t)count;
+ (id)requestURLForAPI:(id)i type:(id)type additionalQueryItems:(id)items useLanguageDefault:(BOOL)default apiVersion:(id)version;
+ (id)supportFlowRequestURL;
+ (id)userGuideURLForIdentifier:(id)identifier version:(id)version platformIndependent:(BOOL)independent subPath:(id)path;
+ (int64_t)majorVersionForVersionString:(id)string;
@end

@implementation TPSContentURLController

+ (id)preferredLocalizations
{
  v2 = objc_opt_class();

  return [v2 preferredLocalizationsWithCount:3];
}

+ (id)preferredLocalizationsWithCount:(unint64_t)count
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v5 = MEMORY[0x1E695DF70];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v7 = [v5 arrayWithArray:preferredLanguages];

  v8 = +[TPSDefaultsManager requestLanguage];
  if ([v8 length])
  {
    [v7 insertObject:v8 atIndex:0];
  }

  do
  {
    if ([orderedSet count] >= count || !objc_msgSend(v7, "count"))
    {
      break;
    }

    v9 = [MEMORY[0x1E695DF58] tps_userPreferredLocalizationsForLanguages:v7];
    if ([v9 count])
    {
      [orderedSet addObjectsFromArray:v9];
    }

    [v7 removeObjectAtIndex:0];
    v10 = [orderedSet containsObject:@"en"];
  }

  while (!v10);
  v11 = [orderedSet copy];

  return v11;
}

+ (int64_t)majorVersionForVersionString:(id)string
{
  v3 = [string componentsSeparatedByString:@"."];
  firstObject = [v3 firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

+ (id)metaRequestURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [self requestURLForAPI:@"meta" type:@"tips" additionalQueryItems:0 useLanguageDefault:1 apiVersion:0];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "Meta URL %@", &v5, 0xCu);
  }

  return v2;
}

+ (id)supportFlowRequestURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [self requestURLForAPI:@"config" type:@"support" additionalQueryItems:0 useLanguageDefault:1 apiVersion:@"v1"];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "Support Flow URL %@", &v5, 0xCu);
  }

  return v2;
}

+ (id)userGuideURLForIdentifier:(id)identifier version:(id)version platformIndependent:(BOOL)independent subPath:(id)path
{
  identifierCopy = identifier;
  versionCopy = version;
  pathCopy = path;
  array = [MEMORY[0x1E695DF70] array];
  v13 = MGCopyAnswer();
  v14 = +[TPSCommonDefines isPadUI];
  v15 = @"ios";
  if (v14)
  {
    v15 = @"ipados";
  }

  v16 = v15;
  v37 = pathCopy;
  if ([identifierCopy containsString:@"watch"])
  {

    v17 = versionCopy;
    v16 = @"watchos";
    goto LABEL_8;
  }

  if ([identifierCopy hasPrefix:@"iphone"] & 1) != 0 || (objc_msgSend(identifierCopy, "hasPrefix:", @"ipad"))
  {
    v17 = v13;
LABEL_8:
    if (independent)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([pathCopy length])
  {
    pathCopy = [identifierCopy stringByAppendingFormat:@"-%@", pathCopy];

    identifierCopy = pathCopy;
  }

  if (!independent)
  {
    v33 = +[TPSCommonDefines isPadUI];
    v34 = @"ipad";
    if (!v33)
    {
      v34 = @"iphone";
    }

    v35 = [identifierCopy stringByAppendingFormat:@"-%@", v34];

    identifierCopy = v35;
    v17 = v13;
LABEL_9:
    v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v16];
    [array addObject:v18];
    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"pOSv" value:v17];
    [array addObject:v19];

    goto LABEL_10;
  }

  v17 = v13;
LABEL_10:
  v36 = identifierCopy;
  v20 = [objc_opt_class() languageStringWithLanguageDefault:1 count:3];
  v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"locale" value:v20];
  [array addObject:v21];
  if (versionCopy)
  {
    v22 = versionCopy;
  }

  else
  {
    v22 = @"1000";
  }

  v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"productVersion" value:v22];
  [array addObject:v23];
  v24 = [MEMORY[0x1E696AF60] queryItemWithName:@"product" value:identifierCopy];
  [array addObject:v24];
  v25 = objc_alloc(MEMORY[0x1E696AF20]);
  [MEMORY[0x1E695DFF8] URLWithString:@"https://cds.apple.com"];
  v26 = versionCopy;
  v28 = v27 = v17;
  v29 = [v25 initWithURL:v28 resolvingAgainstBaseURL:0];

  [v29 setPath:@"/content/services/book"];
  [v29 setQueryItems:array];
  v30 = [v29 URL];

  return v30;
}

+ (id)contentRequestURLWithContentMapHash:(id)hash
{
  hashCopy = hash;
  v4 = [objc_opt_class() contentRequestURLWithContentMapHash:hashCopy variantIdentifiers:0 useLanguageDefault:1];

  return v4;
}

+ (id)modelQueryItem
{
  v2 = MGCopyAnswer();
  v3 = +[TPSDefaultsManager requestModel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  if (v6 && ([MEMORY[0x1E696AF60] queryItemWithName:@"model" value:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v9 = MGCopyAnswer();
    if (!v9 || (v10 = v9, [MEMORY[0x1E696AF60] queryItemWithName:@"deviceClass" value:v9], v8 = objc_claimAutoreleasedReturnValue(), v10, !v8))
    {
      v11 = MEMORY[0x1E696AF60];
      v12 = +[TPSCommonDefines deviceFamily];
      v8 = [v11 queryItemWithName:@"deviceFamily" value:v12];
    }
  }

  return v8;
}

+ (id)platformQueryItem
{
  _platformString = [self _platformString];
  v3 = +[TPSDefaultsManager requestPlatform];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _platformString;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)languageStringWithLanguageDefault:(BOOL)default count:(unint64_t)count
{
  defaultCopy = default;
  v6 = [objc_opt_class() preferredLocalizationsWithCount:count];
  v7 = [v6 mutableCopy];

  v8 = [v7 count] - count;
  if (defaultCopy)
  {
    defaultCopy = [v7 containsObject:@"en"] ^ 1;
  }

  if (v8 >= 0)
  {
    v9 = defaultCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v8 > 0 || v9 != 0)
  {
    [v7 removeObjectsInRange:{count - v9, v8 + v9}];
  }

  if (defaultCopy)
  {
    [v7 addObject:@"en"];
  }

  array = [v7 array];
  v12 = [array componentsJoinedByString:{@", "}];

  return v12;
}

+ (id)contentRequestURLWithContentMapHash:(id)hash variantIdentifiers:(id)identifiers useLanguageDefault:(BOOL)default
{
  defaultCopy = default;
  v18 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  identifiersCopy = identifiers;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if (hashCopy)
  {
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"contentMapHash" value:hashCopy];
    [v10 addObject:v11];
  }

  if ([identifiersCopy length])
  {
    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"variantId" value:identifiersCopy];
    [v10 addObject:v12];
  }

  v13 = [self requestURLForAPI:@"content/documents" type:@"tips" additionalQueryItems:v10 useLanguageDefault:defaultCopy apiVersion:@"v2"];
  v14 = +[TPSLogger default];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1C00A7000, v14, OS_LOG_TYPE_DEFAULT, "Documents URL %@", &v16, 0xCu);
  }

  return v13;
}

+ (id)defaultHost
{
  v2 = MEMORY[0x1E695DFF8];
  defaultHostPath = [self defaultHostPath];
  v4 = [v2 URLWithString:defaultHostPath];

  return v4;
}

+ (id)effectiveHost
{
  v3 = +[TPSDefaultsManager requestHostURL];
  v4 = v3;
  if (v3)
  {
    defaultHostPath = v3;
  }

  else
  {
    defaultHostPath = [self defaultHostPath];
  }

  v6 = defaultHostPath;

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

+ (id)requestURLForAPI:(id)i type:(id)type additionalQueryItems:(id)items useLanguageDefault:(BOOL)default apiVersion:(id)version
{
  defaultCopy = default;
  v59 = *MEMORY[0x1E69E9840];
  iCopy = i;
  typeCopy = type;
  itemsCopy = items;
  versionCopy = version;
  v16 = +[TPSDefaultsManager requestURL];
  if ([v16 isAbsolutePath])
  {
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    v18 = +[TPSLogger default];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v17;
      _os_log_impl(&dword_1C00A7000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to load content from: Path %@", buf, 0xCu);
    }

    v19 = [self _uiTestLocalURLForIdentifier:iCopy];
  }

  else
  {
    v56 = iCopy;
    if (!v16)
    {
      goto LABEL_9;
    }

    v54 = defaultCopy;
    v20 = versionCopy;
    v21 = iCopy;
    firstObject = [itemsCopy firstObject];
    name = [firstObject name];
    v24 = [name isEqualToString:@"docId"];

    if (v24)
    {
      firstObject2 = [itemsCopy firstObject];
      value = [firstObject2 value];

      v21 = value;
    }

    versionCopy = v20;
    v27 = [v16 stringByAppendingPathComponent:v21];

    v19 = [MEMORY[0x1E695DFF8] URLWithString:v27];

    v16 = v27;
    defaultCopy = v54;
    if (!v19)
    {
LABEL_9:
      effectiveHost = [objc_opt_class() effectiveHost];
      v29 = [@"/" stringByAppendingPathComponent:@"api"];
      v30 = v29;
      if (versionCopy)
      {
        v31 = versionCopy;
      }

      else
      {
        v31 = @"v2";
      }

      v32 = [v29 stringByAppendingPathComponent:v31];

      v55 = typeCopy;
      v33 = [v32 stringByAppendingPathComponent:typeCopy];

      v52 = [v33 stringByAppendingPathComponent:iCopy];

      if (itemsCopy)
      {
        [MEMORY[0x1E695DF70] arrayWithArray:itemsCopy];
      }

      else
      {
        [MEMORY[0x1E695DF70] array];
      }
      v34 = ;
      v53 = versionCopy;
      modelQueryItem = [objc_opt_class() modelQueryItem];
      v36 = v34;
      if (modelQueryItem)
      {
        [v34 addObject:modelQueryItem];
      }

      v49 = itemsCopy;
      v51 = modelQueryItem;
      platformQueryItem = [objc_opt_class() platformQueryItem];
      if (platformQueryItem)
      {
        [v34 addObject:platformQueryItem];
      }

      v50 = platformQueryItem;
      v38 = [objc_opt_class() languageStringWithLanguageDefault:defaultCopy count:3];
      v39 = [MEMORY[0x1E696AF60] queryItemWithName:@"lang" value:v38];
      [v36 addObject:v39];
      v40 = +[TPSDefaultsManager requestVersion];
      if (!v40)
      {
        v48 = effectiveHost;
        v41 = MGCopyAnswer();
        v42 = [self majorVersionForVersionString:v41];
        if (v42 <= +[TPSCommonDefines maxRequestVersion])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.0-%@", v42, v41];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.0", +[TPSCommonDefines maxRequestVersion](TPSCommonDefines, "maxRequestVersion"), v47];
        }
        v40 = ;

        effectiveHost = v48;
      }

      v43 = [MEMORY[0x1E696AF60] queryItemWithName:@"osVersion" value:v40];
      [v36 addObject:v43];
      v44 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:effectiveHost resolvingAgainstBaseURL:0];
      [v44 setPath:v52];
      [v44 setQueryItems:v36];
      [v44 URL];
      v19 = v45 = effectiveHost;

      versionCopy = v53;
      typeCopy = v55;
      itemsCopy = v49;
      iCopy = v56;
    }
  }

  return v19;
}

+ (id)assetPathFromAssetConfiguration:(id)configuration type:(int64_t)type
{
  v26 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = [configurationCopy identifierForType:type];
  if (!v7)
  {
    absoluteString = 0;
    goto LABEL_16;
  }

  v8 = +[TPSDefaultsManager assetURL];
  if (v8)
  {
    v9 = v8;
    baseURL = [configurationCopy cacheIdentifierForType:type];
    v11 = [v9 stringByAppendingPathComponent:@"asset"];

    v12 = [v11 stringByAppendingPathComponent:baseURL];

    v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  }

  else
  {
    assets = [configurationCopy assets];
    baseURL = [assets baseURL];

    v12 = +[TPSDefaultsManager assetRequestHostURL];
    if (v12)
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v12];

      baseURL = v16;
    }

    v17 = +[TPSDefaultsManager requestURL];
    if ([v17 isAbsolutePath])
    {
      _uiTestLocalBaseURL = [self _uiTestLocalBaseURL];
      v19 = [_uiTestLocalBaseURL URLByAppendingPathComponent:v7 isDirectory:0];

      absoluteString = [v19 absoluteString];
      v20 = +[TPSLogger default];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = absoluteString;
        _os_log_impl(&dword_1C00A7000, v20, OS_LOG_TYPE_DEFAULT, "Generated loaded assets URL %@", &v24, 0xCu);
      }

      goto LABEL_15;
    }

    v21 = [@"v2" stringByAppendingPathComponent:@"tips"];
    v22 = [v21 stringByAppendingPathComponent:v7];

    v13 = [baseURL URLByAppendingPathComponent:v22];

    v12 = v22;
  }

  absoluteString = [v13 absoluteString];
  v17 = +[TPSLogger default];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = absoluteString;
    _os_log_impl(&dword_1C00A7000, v17, OS_LOG_TYPE_DEFAULT, "Generated asset URL %@", &v24, 0xCu);
  }

  baseURL = v13;
LABEL_15:

LABEL_16:

  return absoluteString;
}

+ (id)_platformString
{
  v2 = +[TPSDefaultsManager platform];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"ios";
  }

  return v4;
}

+ (id)_boardIDOrProductHash
{
  _boardID = [self _boardID];
  v4 = _boardID;
  if (_boardID)
  {
    _productHash = _boardID;
  }

  else
  {
    _productHash = [self _productHash];
  }

  v6 = _productHash;

  return v6;
}

+ (id)_productHash
{
  v2 = MGCopyAnswer();
  bytes = [v2 bytes];
  if (bytes)
  {
    v4 = [v2 length];
    for (i = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v4];
    {
      v6 = *bytes++;
      [i appendFormat:@"%02lx", v6];
    }

    bytes = [MEMORY[0x1E696AEC0] stringWithString:i];
  }

  return bytes;
}

+ (id)_uiTestLocalBaseURL
{
  if (_uiTestLocalBaseURL_predicate != -1)
  {
    +[TPSContentURLController _uiTestLocalBaseURL];
  }

  v3 = _uiTestLocalBaseURL_gOfflineContentURL;

  return v3;
}

void __46__TPSContentURLController__uiTestLocalBaseURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tips"];

  v1 = MGCopyAnswer();
  v2 = [v6 URLByAppendingPathComponent:@"UITestOfflineContent" isDirectory:1];
  v3 = _uiTestLocalBaseURL_gOfflineContentURL;
  _uiTestLocalBaseURL_gOfflineContentURL = v2;

  v4 = [_uiTestLocalBaseURL_gOfflineContentURL URLByAppendingPathComponent:v1 isDirectory:0];
  v5 = _uiTestLocalBaseURL_gOfflineContentURL;
  _uiTestLocalBaseURL_gOfflineContentURL = v4;
}

+ (id)_uiTestLocalURLForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _uiTestLocalBaseURL = [self _uiTestLocalBaseURL];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.json", identifierCopy];

  v7 = [_uiTestLocalBaseURL URLByAppendingPathComponent:identifierCopy isDirectory:0];

  return v7;
}

@end