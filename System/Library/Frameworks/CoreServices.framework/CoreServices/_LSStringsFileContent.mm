@interface _LSStringsFileContent
+ (id)IOQueue;
- (id)_queryLoadedPlist:(void *)plist forRawKey:(void *)key locale:;
- (id)debugDescription;
- (id)getStringsFileContentAfterLocTableLoadedInBundle:(void *)bundle forLocale:;
- (id)getStringsFileContentInBundle:(void *)bundle forLocale:(const __CFString *)locale withExtension:;
- (id)initWithStringsFile:(id)file;
- (id)stringForString:(void *)string forLocale:(uint64_t)locale fromBundle:(void *)bundle cacheLocalizations:;
- (id)subscriptLoctableWithLocale:(uint64_t)locale;
- (id)uncheckedObjectsForKeys:(void *)keys forLocaleCode:(uint64_t)code fromBundle:(void *)bundle cacheLocalizations:;
- (void)loadLoctableIfNecessaryFromBundle:(uint64_t)bundle;
- (void)prewarmAllLocalizationsWithBundle:(void *)bundle forLocalizations:;
- (void)stringsFileContentFromBundle:(void *)bundle forLocaleCode:(void *)code cacheLocalizations:;
@end

@implementation _LSStringsFileContent

- (id)initWithStringsFile:(id)file
{
  v3 = a2;
  if (file)
  {
    v10.receiver = file;
    v10.super_class = _LSStringsFileContent;
    file = objc_msgSendSuper2(&v10, sel_init);
    if (file)
    {
      v4 = [v3 copy];
      v5 = *(file + 1);
      *(file + 1) = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = *(file + 2);
      *(file + 2) = v6;

      *(file + 32) = 0;
      if ([v3 isEqualToString:@"InfoPlist"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *(file + 32) = *(file + 32) & 0xFD | v8;
    }
  }

  return file;
}

- (id)uncheckedObjectsForKeys:(void *)keys forLocaleCode:(uint64_t)code fromBundle:(void *)bundle cacheLocalizations:
{
  v64[5] = *MEMORY[0x1E69E9840];
  v42 = a2;
  keysCopy = keys;
  bundleCopy = bundle;
  v39 = bundleCopy;
  v40 = keysCopy;
  if (self)
  {
    v11 = [(_LSStringsFileContent *)self stringsFileContentFromBundle:code forLocaleCode:keysCopy cacheLocalizations:bundleCopy];
    v41 = v11;
    if (v11)
    {
      if (v11 == *(self + 24))
      {
        v12 = [(_LSStringsFileContent *)self subscriptLoctableWithLocale:keysCopy];
        v13 = v12;
        v14 = MEMORY[0x1E695E0F8];
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        if ((*(self + 32) & 2) != 0)
        {
          v16 = v42;
          v46 = v15;
          v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          obj = v16;
          v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (v17)
          {
            v45 = *v58;
            do
            {
              v47 = v17;
              for (i = 0; i != v47; ++i)
              {
                if (*v58 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v57 + 1) + 8 * i);
                v20 = v46;
                v54 = v19;
                if (enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::onceToken != -1)
                {
                  [_LSStringsFileContent uncheckedObjectsForKeys:forLocaleCode:fromBundle:cacheLocalizations:];
                }

                LOBYTE(v55) = 0;
                v56 = 0;
                context = objc_autoreleasePoolPush();
                v51 = [v54 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0>(NSString *, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0 const&)::productThenPlatformSuffix}];
                v52 = [v54 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0>(NSString *, checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *, NSDictionary<NSString *, objc_object *> *)::$_0 const&)::platformThenProductSuffix}];
                v21 = [v54 stringByAppendingString:_LSGetPlatformNameSuffix()];
                v23 = [v54 stringByAppendingString:{_LSGetProductNameSuffix(v21, v22)}];
                v48 = v51;
                v64[0] = v48;
                v24 = v52;
                v64[1] = v24;
                v25 = v21;
                v64[2] = v25;
                v50 = v23;
                v64[3] = v50;
                v26 = 0;
                v53 = v54;
                v64[4] = v53;
                do
                {
                  v27 = v64[v26];
                  v28 = [v20 objectForKey:v27];
                  v29 = v28;
                  if (v28)
                  {
                    v61 = v28;
                    v30 = 1;
                  }

                  else
                  {
                    v30 = 0;
                    LOBYTE(v61) = 0;
                  }

                  v62 = v30;

                  std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v55, &v61);
                  if (v62 == 1)
                  {
                  }

                  v31 = v56;

                  v33 = v26++ == 4;
                }

                while (((v31 | v33) & 1) == 0);
                for (j = 4; j != -1; --j)
                {
                }

                objc_autoreleasePoolPop(context);
                v35 = v56;
                v36 = v55;
                if (!v56)
                {
                  v36 = 0;
                }

                v37 = v36;
                if (v35 == 1)
                {
                }

                if (v37)
                {
                  [v44 setObject:v37 forKey:v53];
                }
              }

              v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
            }

            while (v17);
          }
        }

        else
        {
          v44 = v15;
        }
      }

      else
      {
        if (v42)
        {
          [v11 uncheckedObjectsForKeys:?];
        }

        else
        {
          [(_LSLazyPropertyList *)v11 propertyList];
        }
        v44 = ;
      }
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (id)stringForString:(void *)string forLocale:(uint64_t)locale fromBundle:(void *)bundle cacheLocalizations:
{
  v9 = a2;
  stringCopy = string;
  bundleCopy = bundle;
  if (self)
  {
    v12 = [(_LSStringsFileContent *)self stringsFileContentFromBundle:locale forLocaleCode:stringCopy cacheLocalizations:bundleCopy];
    v14 = v12;
    if (v12)
    {
      if (![__LSDefaultsGetSharedInstance(v12 v13)] || (objc_msgSend(v9, "stringByAppendingString:", @"#CH"), v15 = objc_claimAutoreleasedReturnValue(), -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:](self, v14, v15, stringCopy), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
      {
        v16 = [(_LSStringsFileContent *)self _queryLoadedPlist:v14 forRawKey:v9 locale:stringCopy];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)IOQueue
{
  if (+[_LSStringsFileContent IOQueue]::once != -1)
  {
    +[_LSStringsFileContent IOQueue];
  }

  v3 = +[_LSStringsFileContent IOQueue]::result;

  return v3;
}

- (id)debugDescription
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__48;
  v17 = __Block_byref_object_dispose__48;
  v18 = 0;
  iOQueue = [objc_opt_class() IOQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___LSStringsFileContent_debugDescription__block_invoke;
  block[3] = &unk_1E6A1AE60;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(iOQueue, block);

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v14[5] count];
  allKeys = [v14[5] allKeys];
  v9 = [allKeys componentsJoinedByString:{@", "}];
  v10 = [v4 stringWithFormat:@"<%@ %p> { %lu localizations loaded: %@ }", v6, self, v7, v9];

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)getStringsFileContentInBundle:(void *)bundle forLocale:(const __CFString *)locale withExtension:
{
  v15 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (self)
  {
    v8 = CFBundleCopyResourceURLForLocalization(a2, *(self + 8), locale, 0, bundleCopy);
    v9 = v8;
    if (v8)
    {
      v10 = _LSDefaultLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        lastPathComponent = [(__CFURL *)v9 lastPathComponent];
        [(_LSStringsFileContent *)lastPathComponent getStringsFileContentInBundle:bundleCopy forLocale:v14 withExtension:v10];
      }

      v12 = [_LSLazyPropertyList lazyPropertyListWithPropertyListURL:v9];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getStringsFileContentAfterLocTableLoadedInBundle:(void *)bundle forLocale:
{
  bundleCopy = bundle;
  v6 = bundleCopy;
  if (!self)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (a2)
  {
    if (bundleCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_LSStringsFileContent getStringsFileContentAfterLocTableLoadedInBundle:forLocale:]"];
    [currentHandler handleFailureInFunction:v11 file:@"LSStringLocalizer.mm" lineNumber:1175 description:{@"Invalid parameter not satisfying: %@", @"bundle != NULL"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_LSStringsFileContent getStringsFileContentAfterLocTableLoadedInBundle:forLocale:]"];
  [currentHandler2 handleFailureInFunction:v13 file:@"LSStringLocalizer.mm" lineNumber:1176 description:{@"Invalid parameter not satisfying: %@", @"localeCode != nil"}];

LABEL_4:
  v7 = [(_LSStringsFileContent *)self getStringsFileContentInBundle:a2 forLocale:v6 withExtension:@"strings"];
  if (!v7)
  {
    v8 = *(self + 24);
    if (!v8)
    {
      v8 = _LSLazyPropertyListGetSharedEmptyPropertyList();
    }

    v7 = v8;
  }

LABEL_8:

  return v7;
}

- (void)stringsFileContentFromBundle:(void *)bundle forLocaleCode:(void *)code cacheLocalizations:
{
  bundleCopy = bundle;
  codeCopy = code;
  if (self)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__48;
    v34 = __Block_byref_object_dispose__48;
    v35 = 0;
    iOQueue = [objc_opt_class() IOQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke;
    block[3] = &unk_1E6A1B118;
    v29 = &v30;
    block[4] = self;
    v10 = bundleCopy;
    v28 = v10;
    dispatch_sync(iOQueue, block);

    v11 = v31[5];
    if (!v11)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke_2;
      v23 = &unk_1E6A1E210;
      selfCopy = self;
      v26 = a2;
      v12 = v10;
      v25 = v12;
      v13 = MEMORY[0x1865D71B0](&v20);
      if ([codeCopy containsObject:{v12, v20, v21, v22, v23, selfCopy}])
      {
        v14 = self[2];
        iOQueue2 = [objc_opt_class() IOQueue];
        v16 = _LSLazyLoadObjectForKey(v14, v12, iOQueue2, v13);
        v17 = v31[5];
        v31[5] = v16;
      }

      else
      {
        v18 = v13[2](v13);
        iOQueue2 = v31[5];
        v31[5] = v18;
      }

      v11 = v31[5];
    }

    self = v11;

    _Block_object_dispose(&v30, 8);
  }

  return self;
}

- (void)prewarmAllLocalizationsWithBundle:(void *)bundle forLocalizations:
{
  bundleCopy = bundle;
  if (self && a2)
  {
    [(_LSStringsFileContent *)self loadLoctableIfNecessaryFromBundle:a2];
    iOQueue = [objc_opt_class() IOQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __76___LSStringsFileContent_prewarmAllLocalizationsWithBundle_forLocalizations___block_invoke;
    v15 = &unk_1E6A1E238;
    v7 = bundleCopy;
    v16 = v7;
    selfCopy = self;
    v19 = a2;
    v8 = iOQueue;
    v18 = v8;
    v9 = MEMORY[0x1865D71B0](&v12);
    v10 = *(self + 24);
    if (v10)
    {
      [v10 prewarm];
    }

    else if (_LSContextIsCurrentThreadInitializing() || _LSDatabaseGetNoServerLock())
    {
      for (i = 0; i < [v7 count]; ++i)
      {
        v9[2](v9, i);
      }
    }

    else
    {
      dispatch_apply([v7 count], 0, v9);
    }
  }
}

- (id)subscriptLoctableWithLocale:(uint64_t)locale
{
  v35[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29 = v3;
  if (locale)
  {
    v4 = v3;
    if (enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::onceToken != -1)
    {
      [_LSStringsFileContent subscriptLoctableWithLocale:];
    }

    LOBYTE(v31) = 0;
    v32 = 0;
    v5 = objc_autoreleasePoolPush();
    v25 = [v4 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSDictionary<NSString *, objc_object *> * {__strong}, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix}];
    v26 = [v4 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSDictionary<NSString *, objc_object *> * {__strong}, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *, -[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix}];
    v6 = [v4 stringByAppendingString:_LSGetPlatformNameSuffix()];
    context = v5;
    v8 = [v4 stringByAppendingString:{_LSGetProductNameSuffix(v6, v7), v6}];
    v27 = v25;
    v35[0] = v27;
    v9 = v26;
    v35[1] = v9;
    v10 = v6;
    v35[2] = v10;
    v30 = v8;
    v35[3] = v30;
    v11 = v4;
    v12 = 0;
    v35[4] = v11;
    do
    {
      v13 = v35[v12];
      v14 = [*(locale + 24) objectForKey:v13 ofClass:objc_opt_class()];
      v15 = v14;
      if (v14)
      {
        v33 = v14;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        LOBYTE(v33) = 0;
      }

      v34 = v16;

      std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v31, &v33);
      if (v34 == 1)
      {
      }

      v17 = v32;

      v19 = v12++ == 4;
    }

    while (((v17 | v19) & 1) == 0);
    for (i = 4; i != -1; --i)
    {
    }

    objc_autoreleasePoolPop(context);
    v21 = v32;
    v22 = v31;
    if (!v32)
    {
      v22 = 0;
    }

    v23 = v22;
    if (v21 == 1)
    {
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_queryLoadedPlist:(void *)plist forRawKey:(void *)key locale:
{
  v48[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  plistCopy = plist;
  keyCopy = key;
  if (!self)
  {
    goto LABEL_38;
  }

  if (self[3] != v7)
  {
    self = [v7 objectForKey:plistCopy ofClass:objc_opt_class()];
    goto LABEL_38;
  }

  v42 = keyCopy;
  v10 = [(_LSStringsFileContent *)self subscriptLoctableWithLocale:keyCopy];
  v11 = v10;
  if ((self[4] & 2) == 0)
  {
    v12 = objc_opt_class();
    v13 = [v11 objectForKey:plistCopy];
    self = v13;
    if (v12 && v13 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      self = 0;
    }

    goto LABEL_37;
  }

  v14 = v10;
  v43 = plistCopy;
  if (enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::onceToken != -1)
  {
    [_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:];
  }

  LOBYTE(v44) = 0;
  v45 = 0;
  context = objc_autoreleasePoolPush();
  v40 = v11;
  v33 = [v43 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix}];
  v34 = [v43 stringByAppendingString:{enumerateProductPlatformKeySuffixes<NSString * {__strong}, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *, -[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix}];
  v32 = [v43 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v16 = [v43 stringByAppendingString:{_LSGetProductNameSuffix(v32, v15)}];
  v36 = v33;
  v48[0] = v36;
  v37 = v34;
  v48[1] = v37;
  v38 = v32;
  v48[2] = v38;
  v41 = v16;
  v48[3] = v41;
  v17 = 0;
  v35 = v43;
  v48[4] = v35;
  do
  {
    v18 = v48[v17];
    v19 = objc_opt_class();
    v20 = [v14 objectForKey:v18];
    v21 = v20;
    if (v19)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v24 = v21;
LABEL_21:
        v46 = v21;

        v25 = 1;
        goto LABEL_24;
      }
    }

    v25 = 0;
    LOBYTE(v46) = 0;
LABEL_24:
    v47 = v25;

    std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(&v44, &v46);
    if (v47 == 1)
    {
    }

    v26 = v45;

    v22 = v17++ == 4;
    v27 = v22;
  }

  while (((v26 | v27) & 1) == 0);
  for (i = 4; i != -1; --i)
  {
  }

  objc_autoreleasePoolPop(context);
  v29 = v45;
  v30 = v44;
  if (!v45)
  {
    v30 = 0;
  }

  self = v30;
  if (v29 == 1)
  {
  }

  v11 = v40;
LABEL_37:

  keyCopy = v42;
LABEL_38:

  return self;
}

- (void)loadLoctableIfNecessaryFromBundle:(uint64_t)bundle
{
  if (bundle)
  {
    if ((*(bundle + 32) & 1) == 0)
    {
      v3 = [(_LSStringsFileContent *)bundle getStringsFileContentInBundle:a2 forLocale:0 withExtension:@"loctable"];
      v4 = *(bundle + 24);
      *(bundle + 24) = v3;

      *(bundle + 32) |= 1u;
    }
  }
}

- (void)getStringsFileContentInBundle:(uint8_t *)buf forLocale:(os_log_t)log withExtension:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "reading %@ for %@", buf, 0x16u);
}

@end