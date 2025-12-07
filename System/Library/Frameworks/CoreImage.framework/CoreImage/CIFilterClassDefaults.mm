@interface CIFilterClassDefaults
+ (id)cache;
+ (id)classDefaultsForClass:(Class)class;
+ (void)clearCache;
@end

@implementation CIFilterClassDefaults

+ (id)cache
{
  if (+[CIFilterClassDefaults cache]::onceToken != -1)
  {
    +[CIFilterClassDefaults cache];
  }

  return +[CIFilterClassDefaults cache]::cache;
}

uint64_t __30__CIFilterClassDefaults_cache__block_invoke()
{
  +[CIFilterClassDefaults cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassDefaults cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassDefaults"];
  [+[CIFilterClassDefaults cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassDefaults cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  cache = [self cache];

  [cache removeAllObjects];
}

+ (id)classDefaultsForClass:(Class)class
{
  v28 = *MEMORY[0x1E69E9840];
  cache = [self cache];
  v5 = objc_opt_class();
  if (![(objc_class *)class isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == class)
  {
    return MEMORY[0x1E695E0F8];
  }

  dictionary = [cache objectForKey:class];
  if (!dictionary)
  {
    v21 = cache;
    CustomAttributes = getCustomAttributes(class, v6);
    classCopy = class;
    v9 = [+[CIFilterClassInfo classInfoForClass:](CIFilterClassInfo classInfoForClass:{class), "inputKeys"}];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          StdAttrsForKey = getStdAttrsForKey(v14);
          if (StdAttrsForKey)
          {
            [dictionary2 addEntriesFromDictionary:StdAttrsForKey];
          }

          v17 = [(NSMutableDictionary *)CustomAttributes valueForKey:v14];
          if (v17)
          {
            v18 = v17;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [dictionary2 addEntriesFromDictionary:v18];
            }
          }

          v19 = [dictionary2 objectForKey:@"CIAttributeDefault"];
          if (!v19)
          {
            v19 = [dictionary2 objectForKey:@"CIAttributeIdentity"];
            if (!v19)
            {
              continue;
            }
          }

          [dictionary setObject:v19 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    [v21 setObject:dictionary forKey:classCopy];
  }

  return dictionary;
}

@end