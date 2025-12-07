@interface CIFilterClassCategories
+ (id)cache;
+ (id)classCategoriesForClass:(Class)class;
+ (void)clearCache;
@end

@implementation CIFilterClassCategories

+ (id)cache
{
  if (+[CIFilterClassCategories cache]::onceToken != -1)
  {
    +[CIFilterClassCategories cache];
  }

  return +[CIFilterClassCategories cache]::cache;
}

uint64_t __32__CIFilterClassCategories_cache__block_invoke()
{
  +[CIFilterClassCategories cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassCategories cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassCategories"];
  [+[CIFilterClassCategories cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassCategories cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  cache = [self cache];

  [cache removeAllObjects];
}

+ (id)classCategoriesForClass:(Class)class
{
  v22 = *MEMORY[0x1E69E9840];
  cache = [self cache];
  v5 = objc_opt_class();
  if (![(objc_class *)class isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == class)
  {
    return MEMORY[0x1E695E0F0];
  }

  v7 = [cache objectForKey:class];
  if (!v7)
  {
    v8 = [(NSMutableDictionary *)getCustomAttributes(class valueForKey:"valueForKey:", @"CIAttributeFilterCategories"];
    if (v8)
    {
      v10 = v8;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
        if (v7)
        {
LABEL_16:
          if (((classIsBuiltinFilter(class, v9) & 1) != 0 || classIsSystemFilter(class, v15)) && (([v7 containsObject:@"CICategoryGeometryAdjustment"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"CICategoryDistortionEffect") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"CICategoryTransition") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"CICategoryBlur") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"CICategorySharpen") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"CICategoryTileEffect")))
          {
            v7 = [v7 arrayByAddingObject:@"CICategoryHighDynamicRange"];
          }

          [cache setObject:v7 forKey:class];
          return v7;
        }
      }

      else
      {
        v13 = ci_logger_api(isKindOfClass, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v19 = "+[CIFilterClassCategories classCategoriesForClass:]";
          v20 = 2114;
          v21 = [(objc_class *)class description];
          _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_INFO, "%{public}s kCIAttributeFilterCategories for class %{public}@ is not an array", buf, 0x16u);
        }
      }
    }

    if ((classIsBuiltinFilter(class, v9) & 1) != 0 || classIsSystemFilter(class, v14))
    {
      v17 = @"CICategoryApplePrivate";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_16;
  }

  return v7;
}

@end