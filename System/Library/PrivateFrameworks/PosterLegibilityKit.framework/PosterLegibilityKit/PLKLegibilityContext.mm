@interface PLKLegibilityContext
+ (PLKLegibilityContext)contextWithIdentifier:(id)identifier preferredCacheCapacity:(unint64_t)capacity displayScale:(double)scale cacheProvider:(id)provider;
+ (PLKLegibilityContext)defaultContext;
- (PLKLegibilityContext)initWithCacheIdentifier:(id)identifier preferredCacheCapacity:(unint64_t)capacity displayScale:(double)scale cacheProvider:(id)provider;
- (id)imageForKey:(id)key generatingIfNil:(id)nil;
- (void)_memoryWarningDidFire:(id)fire;
- (void)cancel;
@end

@implementation PLKLegibilityContext

+ (PLKLegibilityContext)contextWithIdentifier:(id)identifier preferredCacheCapacity:(unint64_t)capacity displayScale:(double)scale cacheProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  if (contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__onceToken != -1)
  {
    +[PLKLegibilityContext contextWithIdentifier:preferredCacheCapacity:displayScale:cacheProvider:];
  }

  v9 = contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable;
  objc_sync_enter(v9);
  v10 = [contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable objectForKey:?];
  if (!v10)
  {
    v10 = [PLKLegibilityContext initWithCacheIdentifier:"initWithCacheIdentifier:preferredCacheCapacity:displayScale:cacheProvider:" preferredCacheCapacity:? displayScale:? cacheProvider:?];
    [contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable setObject:? forKey:?];
  }

  objc_sync_exit(v9);

  return v10;
}

uint64_t __96__PLKLegibilityContext_contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider___block_invoke()
{
  contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

+ (PLKLegibilityContext)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    +[PLKLegibilityContext defaultContext];
  }

  v3 = defaultContext_defaultContext;

  return v3;
}

void __38__PLKLegibilityContext_defaultContext__block_invoke()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v0 = [PLKLegibilityContext contextWithIdentifier:"contextWithIdentifier:preferredCacheCapacity:displayScale:cacheProvider:" preferredCacheCapacity:? displayScale:? cacheProvider:?];
  v1 = defaultContext_defaultContext;
  defaultContext_defaultContext = v0;
}

- (id)imageForKey:(id)key generatingIfNil:(id)nil
{
  keyCopy = key;
  nilCopy = nil;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(PLKLRUCache *)selfCopy->_LRUCache objectForKey:?];
  if (v9)
  {
    v10 = v9;
LABEL_3:
    v11 = v10;
    goto LABEL_4;
  }

  if ([(NSMutableSet *)selfCopy->_knownMappedImageCacheKeys containsObject:?])
  {
    v13 = [(BSUIMappedImageCache *)selfCopy->_mappedImageCache imageForKey:?];
    if (v13)
    {
      [PLKLRUCache setObject:"setObject:forKey:" forKey:?];
      v10 = v13;
      goto LABEL_3;
    }
  }

  if (!nilCopy)
  {
    goto LABEL_14;
  }

  v14 = objc_autoreleasePoolPush();
  v11 = nilCopy[2](nilCopy, keyCopy);
  if (v11)
  {
    [PLKLRUCache setObject:"setObject:forKey:" forKey:?];
    [BSUIMappedImageCache setImage:"setImage:forKey:" forKey:?];
    [(NSMutableSet *)selfCopy->_knownMappedImageCacheKeys addObject:?];
    v15 = v11;
  }

  objc_autoreleasePoolPop(v14);
  if (!v11)
  {
LABEL_14:
    v11 = 0;
  }

LABEL_4:

  objc_sync_exit(selfCopy);

  return v11;
}

- (PLKLegibilityContext)initWithCacheIdentifier:(id)identifier preferredCacheCapacity:(unint64_t)capacity displayScale:(double)scale cacheProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = PLKLegibilityContext;
  v12 = [(PLKLegibilityContext *)&v26 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    cacheIdentifier = v12->_cacheIdentifier;
    v12->_cacheIdentifier = v13;

    v12->_preferredCacheCapacity = capacity;
    v12->_displayScale = scale;
    v15 = [[PLKLRUCache alloc] initWithCapacity:?];
    LRUCache = v12->_LRUCache;
    v12->_LRUCache = v15;

    if (providerCopy)
    {
      v17 = [MEMORY[0x277CF0D70] optionsWithContainerPathProvider:?];
      objc_storeStrong(&v12->_mappedImageCachePathProvider, provider);
      v18 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:? options:?];
      mappedImageCache = v12->_mappedImageCache;
      v12->_mappedImageCache = v18;

      v20 = MEMORY[0x277CBEB58];
      allKeys = [(BSUIMappedImageCache *)v12->_mappedImageCache allKeys];
      v22 = [v20 setWithArray:?];
      knownMappedImageCacheKeys = v12->_knownMappedImageCacheKeys;
      v12->_knownMappedImageCacheKeys = v22;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:? selector:? name:? object:?];
  }

  return v12;
}

- (void)_memoryWarningDidFire:(id)fire
{
  v11 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = PLKLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    cacheIdentifier = selfCopy->_cacheIdentifier;
    v9 = 138412290;
    v10 = cacheIdentifier;
    _os_log_impl(&dword_21E5D5000, v7, OS_LOG_TYPE_DEFAULT, "Memory warning did fire for legibility context %@", &v9, 0xCu);
  }

  [(PLKLRUCache *)selfCopy->_LRUCache removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  [(PLKLRUCache *)obj->_LRUCache removeAllObjects];
  [(BSUIMappedImageCache *)obj->_mappedImageCache removeAllImagesWithCompletion:?];
  objc_sync_exit(obj);
}

@end