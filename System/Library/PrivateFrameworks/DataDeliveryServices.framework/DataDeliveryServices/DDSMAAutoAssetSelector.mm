@interface DDSMAAutoAssetSelector
+ (id)allSupportedLinguisticAssetTypeForAssetType:(id)type;
+ (id)createWithQuery:(id)query supportedAssetSpecifiers:(id)specifiers;
- (BOOL)isEqual:(id)equal;
- (DDSMAAutoAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier;
- (id)description;
- (unint64_t)hash;
@end

@implementation DDSMAAutoAssetSelector

- (DDSMAAutoAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = DDSMAAutoAssetSelector;
  v8 = [(DDSMAAutoAssetSelector *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B1910]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];
    assetSelector = v8->_assetSelector;
    v8->_assetSelector = v9;
  }

  return v8;
}

+ (id)allSupportedLinguisticAssetTypeForAssetType:(id)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = [typeCopy isEqualToString:@"com.apple.MobileAsset.LinguisticDataAuto"];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v10[0] = @"Priority";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [v5 setWithArray:v6];
  }

  else
  {
    v8 = AutoAssetLog(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector allSupportedLinguisticAssetTypeForAssetType:];
    }

    v7 = objc_opt_new();
  }

  return v7;
}

+ (id)createWithQuery:(id)query supportedAssetSpecifiers:(id)specifiers
{
  v73 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  specifiersCopy = specifiers;
  v7 = objc_opt_new();
  assetType = [queryCopy assetType];
  v9 = [DDSMAAutoAssetSelector allSupportedLinguisticAssetTypeForAssetType:assetType];

  v50 = queryCopy;
  filter = [queryCopy filter];
  v11 = [filter allowedValuesForKey:@"LinguisticAssetType"];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v65;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v64 + 1) + 8 * i);
        if ([v9 containsObject:v17])
        {
          [v7 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v14);
  }

  if ([v12 count] && !objc_msgSend(v7, "count"))
  {
    v20 = AutoAssetLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
    }

    allObjects2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (![v7 count])
    {
      v18 = AutoAssetLog(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
      }

      allObjects = [v9 allObjects];
      [v7 addObjectsFromArray:allObjects];
    }

    v42 = v12;
    v43 = v9;
    v20 = objc_opt_new();
    filter2 = [v50 filter];
    v47 = [filter2 allowedValuesForKey:@"AssetLocale"];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v44 = v7;
    obj = v7;
    v48 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v48)
    {
      v46 = *v61;
      v22 = @"fil";
      v23 = 0x1E695D000uLL;
      v24 = 0x1E696A000uLL;
      do
      {
        v25 = 0;
        do
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v49 = v25;
          v53 = *(*(&v60 + 1) + 8 * v25);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v51 = v47;
          v54 = [v51 countByEnumeratingWithState:&v56 objects:v70 count:16];
          if (v54)
          {
            v52 = *v57;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v57 != v52)
                {
                  objc_enumerationMutation(v51);
                }

                v55 = [*(v23 + 3928) localeWithLocaleIdentifier:*(*(&v56 + 1) + 8 * j)];
                languageCode = [v55 languageCode];
                if ([(__CFString *)languageCode isEqualToString:v22])
                {

                  languageCode = @"tl";
                }

                v28 = [*(v24 + 3776) stringWithFormat:@"%@_%@", v53, languageCode];
                v29 = [specifiersCopy containsObject:v28];
                if (v29)
                {
                  v30 = [DDSMAAutoAssetSelector alloc];
                  [v50 assetType];
                  v31 = v24;
                  v32 = v23;
                  v33 = v22;
                  v34 = v20;
                  v36 = v35 = specifiersCopy;
                  v37 = [(DDSMAAutoAssetSelector *)v30 initWithAssetType:v36 assetSpecifier:v28];

                  specifiersCopy = v35;
                  v20 = v34;
                  v22 = v33;
                  v23 = v32;
                  v24 = v31;
                  [v20 addObject:v37];
                }

                else
                {
                  v37 = DefaultLog(v29);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v69 = v28;
                    _os_log_impl(&dword_1DF7C6000, v37, OS_LOG_TYPE_DEFAULT, "Auto asset specifier: %@ is not supported", buf, 0xCu);
                  }
                }
              }

              v54 = [v51 countByEnumeratingWithState:&v56 objects:v70 count:16];
            }

            while (v54);
          }

          v25 = v49 + 1;
        }

        while (v49 + 1 != v48);
        v48 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v48);
    }

    v39 = AutoAssetLog(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
    }

    allObjects2 = [v20 allObjects];

    v9 = v43;
    v7 = v44;
    v12 = v42;
  }

  return allObjects2;
}

- (id)description
{
  assetSelector = [(DDSMAAutoAssetSelector *)self assetSelector];
  v3 = [assetSelector description];

  return v3;
}

- (unint64_t)hash
{
  assetSelector = [(DDSMAAutoAssetSelector *)self assetSelector];
  v3 = [assetSelector description];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetSelector = [(DDSMAAutoAssetSelector *)self assetSelector];
    assetSelector2 = [v5 assetSelector];

    v8 = [assetSelector isEqual:assetSelector2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)createWithQuery:supportedAssetSpecifiers:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "Created DDSMAAutoAssetSelectors: %@ for query: %@", v2, 0x16u);
}

@end