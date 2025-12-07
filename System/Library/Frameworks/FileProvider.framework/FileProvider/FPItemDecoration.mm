@interface FPItemDecoration
+ (id)_decorationCache;
+ (id)_fetchFromCacheWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
+ (id)_loadDecorationsFromPlist:(id)plist bundleIdentifier:(id)identifier bundle:(__CFBundle *)bundle;
+ (id)infoForItem:(id)item parentInfo:(id)info;
+ (void)_invalidateCache;
+ (void)_loadBuiltinDecorationTypes;
+ (void)fetchInfoForItem:(id)item completionHandler:(id)handler;
+ (void)initialize;
- (FPItemDecoration)initWithPlistEntry:(id)entry bundle:(__CFBundle *)bundle bundleIdentifier:(id)identifier;
- (id)labelWithInfo:(id)info error:(id *)error style:(unint64_t)style;
- (id)labelWithItem:(id)item error:(id *)error style:(unint64_t)style;
- (id)labelsWithInfo:(id)info error:(id *)error;
- (id)labelsWithItem:(id)item error:(id *)error;
- (void)folderStatusForItem:(id)item completionHandler:(id)handler;
@end

@implementation FPItemDecoration

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPItemDecoration_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_once != -1)
  {
    dispatch_once(&initialize_once, block);
  }
}

void __30__FPItemDecoration_initialize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadBuiltinDecorationTypes];
  v2 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  v1 = [v2 addChangesHandler:&__block_literal_global_31];
}

+ (void)_loadBuiltinDecorationTypes
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  bundleURL = [v3 bundleURL];
  v5 = CFBundleCreate(0, bundleURL);

  v6 = [v3 objectForInfoDictionaryKey:@"NSFileProviderDecorations"];
  bundleIdentifier = [v3 bundleIdentifier];
  v8 = [self _loadDecorationsFromPlist:v6 bundleIdentifier:bundleIdentifier bundle:v5];

  if (v8)
  {
    _decorationCache = [self _decorationCache];
    bundleIdentifier2 = [v3 bundleIdentifier];
    [_decorationCache setObject:v8 forKey:bundleIdentifier2];
  }

  else
  {
    _decorationCache = fp_current_or_default_log();
    if (os_log_type_enabled(_decorationCache, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AAAE1000, _decorationCache, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to load built-in decorations", v11, 2u);
    }
  }

  CFRelease(v5);
}

+ (id)_decorationCache
{
  if (_decorationCache_once != -1)
  {
    +[FPItemDecoration _decorationCache];
  }

  v3 = _decorationCache_cache;

  return v3;
}

uint64_t __36__FPItemDecoration__decorationCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _decorationCache_cache;
  _decorationCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)_invalidateCache
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _decorationCache = [selfCopy _decorationCache];
  allKeys = [_decorationCache allKeys];
  v5 = [allKeys mutableCopy];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:selfCopy];
  bundleIdentifier = [v6 bundleIdentifier];

  [v5 removeObject:bundleIdentifier];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Invalidating decoration cache for %@", &v9, 0xCu);
  }

  [_decorationCache removeObjectsForKeys:v5];
  objc_sync_exit(selfCopy);

  +[FPItemCollection refreshActiveCollectionsForDecorationChange];
}

+ (id)_loadDecorationsFromPlist:(id)plist bundleIdentifier:(id)identifier bundle:(__CFBundle *)bundle
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke;
  v24[3] = &unk_1E793A830;
  v8 = identifierCopy;
  v25 = v8;
  bundleCopy = bundle;
  v9 = [plist fp_map:v24];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        decorationIdentifier = [v16 decorationIdentifier];
        [dictionary setObject:v16 forKeyedSubscript:decorationIdentifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = [dictionary copy];

  return v18;
}

FPItemDecoration *__70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[FPItemDecoration alloc] initWithPlistEntry:v3 bundle:*(a1 + 40) bundleIdentifier:*(a1 + 32)];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke_cold_1(a1, v5);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_fetchFromCacheWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _decorationCache = [selfCopy _decorationCache];
  v10 = [_decorationCache objectForKey:bundleIdentifierCopy];
  if (!v10)
  {
    v11 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:bundleIdentifierCopy];
    v12 = v11;
    if (v11)
    {
      bundleURL = [v11 bundleURL];
      Unique = _CFBundleCreateUnique();
    }

    else
    {
      Unique = 0;
    }

    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, @"NSExtension");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [ValueForInfoDictionaryKey objectForKey:@"NSFileProviderDecorations"];
    }

    else
    {
      v16 = 0;
    }

    v10 = MEMORY[0x1E695E0F8];
    if (v12)
    {
      if (Unique)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [selfCopy _loadDecorationsFromPlist:v16 bundleIdentifier:bundleIdentifierCopy bundle:Unique];
        }
      }
    }

    [_decorationCache setObject:v10 forKey:bundleIdentifierCopy];
    if (Unique)
    {
      CFRelease(Unique);
    }
  }

  v17 = [v10 objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v17;
}

- (FPItemDecoration)initWithPlistEntry:(id)entry bundle:(__CFBundle *)bundle bundleIdentifier:(id)identifier
{
  v44[4] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  v35.receiver = self;
  v35.super_class = FPItemDecoration;
  v10 = [(FPItemDecoration *)&v35 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_bundleIdentifier, identifier);
  v12 = objc_opt_new();
  [v12 setCfBundle:bundle];
  [v12 setTableNames:&unk_1F1FC9AE8];
  v13 = [entryCopy objectForKey:@"Identifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  decorationIdentifier = v11->_decorationIdentifier;
  v11->_decorationIdentifier = v13;

  v13 = [entryCopy objectForKey:@"BadgeImageType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v13)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  imageType = v11->_imageType;
  v11->_imageType = v13;

  v13 = [entryCopy objectForKey:@"Category"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  type = v11->_type;
  v11->_type = v13;

  v44[0] = @"Badge";
  v44[1] = @"Sharing";
  v44[2] = @"FolderBadge";
  v44[3] = @"FolderStatus";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  if (([(NSString *)v13 containsObject:v11->_type]& 1) != 0)
  {
    v15 = [entryCopy objectForKey:@"Label"];
    v19 = [FPStringFormat formatForPlistObject:v15 localizationLookup:v12];
    labelTitle = v11->_labelTitle;
    v11->_labelTitle = v19;

    if (v11->_labelTitle)
    {
      parentDependingKeys = [(FPItemDecoration *)v11 parentDependingKeys];
      styleDependingKeys = [(FPItemDecoration *)v11 styleDependingKeys];
      keyPaths = [(FPStringFormat *)v11->_labelTitle keyPaths];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke;
      v33[3] = &unk_1E793A858;
      v34 = parentDependingKeys;
      v30 = parentDependingKeys;
      v24 = [keyPaths fp_filter:v33];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke_2;
      v31[3] = &unk_1E793A858;
      v32 = styleDependingKeys;
      v25 = styleDependingKeys;
      v26 = [keyPaths fp_filter:v31];
      v11->_dependsOnParent = [v24 count] != 0;
      v11->_dependsOnStyle = v26 != 0;

LABEL_14:
      v16 = v11;
      goto LABEL_15;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_22;
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v28 = v11->_type;
    v29 = [(NSString *)v13 componentsJoinedByString:@", "];
    *buf = 138413058;
    v37 = @"NSFileProviderDecorations";
    v38 = 2112;
    v39 = identifierCopy;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v29;
    _os_log_error_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ of bundle %@: type is %@. Valid types are (%@)", buf, 0x2Au);
LABEL_22:
  }

LABEL_9:

  v16 = 0;
LABEL_15:

  return v16;
}

uint64_t __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 hasPrefix:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)labelWithItem:(id)item error:(id *)error style:(unint64_t)style
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = @"item";
  v8 = [_FPItemDecorationValueResolver resolverForItem:item style:style];
  v17[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  if (self->_dependsOnParent)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    decorationIdentifier = [(FPItemDecoration *)self decorationIdentifier];
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_labelWithInfo_error_);
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemDecoration.m" lineNumber:273 description:{@"Label for decoration %@ depends on parent. %@ %@ should be called for folder status.", decorationIdentifier, v12, v13}];
  }

  v14 = [(FPStringFormat *)self->_labelTitle evaluateWithValuesByName:v9 error:error];

  return v14;
}

- (id)labelWithInfo:(id)info error:(id *)error style:(unint64_t)style
{
  v21[3] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if ([infoCopy count])
  {
    v9 = [_FPItemDecorationFallbackLookup alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__FPItemDecoration_labelWithInfo_error_style___block_invoke;
    v19[3] = &__block_descriptor_40_e16__16__0__FPItem_8l;
    v19[4] = style;
    v10 = [infoCopy fp_map:v19];
    v11 = [(_FPItemDecorationFallbackLookup *)v9 initWithItems:v10];

    v20[0] = @"item";
    firstObject = [infoCopy firstObject];
    v13 = [_FPItemDecorationValueResolver resolverForItem:firstObject style:style];
    v21[0] = v13;
    v20[1] = @"rootItem";
    lastObject = [infoCopy lastObject];
    v15 = [_FPItemDecorationValueResolver resolverForItem:lastObject style:style];
    v20[2] = @"parentItem";
    v21[1] = v15;
    v21[2] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

    v17 = [(FPStringFormat *)self->_labelTitle evaluateWithValuesByName:v16 error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)labelsWithInfo:(id)info error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  array = [MEMORY[0x1E695DF70] array];
  dependsOnStyle = self->_dependsOnStyle;
  v17 = 0u;
  v18 = 0u;
  if (dependsOnStyle)
  {
    v9 = &unk_1F1FC9B48;
  }

  else
  {
    v9 = &unk_1F1FC9B30;
  }

  v19 = 0uLL;
  v20 = 0uLL;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = -[FPItemDecoration labelWithInfo:error:style:](self, "labelWithInfo:error:style:", infoCopy, error, [*(*(&v17 + 1) + 8 * i) unsignedIntegerValue]);
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v15 = array;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)labelsWithItem:(id)item error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  dependsOnStyle = self->_dependsOnStyle;
  v22 = 0u;
  v23 = 0u;
  if (dependsOnStyle)
  {
    v9 = &unk_1F1FC9B78;
  }

  else
  {
    v9 = &unk_1F1FC9B60;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v15 = -[FPItemDecoration labelWithItem:error:style:](self, "labelWithItem:error:style:", itemCopy, &v21, [v14 unsignedIntegerValue]);
        v16 = v21;
        v17 = v16;
        if (v15)
        {
          [array addObject:v15];
        }

        else if (error && v16)
        {
          v18 = v16;
          *error = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v19 = array;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)folderStatusForItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__FPItemDecoration_folderStatusForItem_completionHandler___block_invoke;
  v8[3] = &unk_1E793A8A0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [FPItemDecoration fetchInfoForItem:item completionHandler:v8];
}

void __58__FPItemDecoration_folderStatusForItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v8 = 0;
    v6 = [v5 labelWithInfo:a2 error:&v8];
    v7 = v8;
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)fetchInfoForItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v8 = +[FPItemManager defaultManager];
  itemID = [itemCopy itemID];

  [v8 _fetchHierarchyForItemID:itemID recursively:1 completionHandler:handlerCopy];
}

+ (id)infoForItem:(id)item parentInfo:(id)info
{
  v12[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FPItemDecoration infoForItem:a2 parentInfo:self];
  }

  v12[0] = itemCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v9 arrayByAddingObjectsFromArray:infoCopy];

  return v10;
}

void __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = @"NSFileProviderDecorations";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ entry of bundle %@", &v3, 0x16u);
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  objc_opt_class();
  v9 = 138413314;
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, v9);
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  objc_opt_class();
  v9 = 138413314;
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, v9);
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v0 = objc_opt_class();
  objc_opt_class();
  v9 = 138413314;
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, v9);
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_1_5();
  v3 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ of bundle %@", v2, 0x16u);
}

+ (void)infoForItem:(uint64_t)a1 parentInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemDecoration.m" lineNumber:365 description:@"parentInfo has wrong type"];
}

@end