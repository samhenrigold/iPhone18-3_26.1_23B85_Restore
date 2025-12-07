@interface SCNSceneSource
+ (BOOL)_shouldCacheWithOptions:(id)options;
+ (SCNSceneSource)sceneSourceWithData:(NSData *)data options:(NSDictionary *)options;
+ (SCNSceneSource)sceneSourceWithURL:(NSURL *)url options:(NSDictionary *)options;
+ (id)_cachedSceneSourceForURL:(id)l options:(id)options;
+ (void)_cacheSceneSource:(id)source forURL:(id)l options:(id)options;
+ (void)_removeCachedSceneSourceIfNeededForURL:(id)l;
- (BOOL)_appendToEntries:(id)entries entriesWithType:(unint64_t)type passingTest:(id)test entryObjectConstructor:(id)constructor;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (NSArray)entriesPassingTest:(void *)predicate;
- (NSArray)identifiersOfEntriesWithClass:(Class)entryClass;
- (NSString)description;
- (SCNScene)sceneWithOptions:(NSDictionary *)options error:(NSError *)error;
- (SCNScene)sceneWithOptions:(NSDictionary *)options statusHandler:(SCNSceneSourceStatusHandler)statusHandler;
- (SCNSceneSource)initWithData:(NSData *)data options:(NSDictionary *)options;
- (SCNSceneSource)initWithURL:(NSURL *)url options:(NSDictionary *)options;
- (__C3DLibrary)library;
- (__C3DScene)_createSceneRefWithOptions:(id)options statusHandler:(id)handler;
- (id)_sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler;
- (id)c3dDataRepresentation;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)entryWithIdentifier:(NSString *)uid withClass:(Class)entryClass;
- (id)performConsistencyCheck;
- (id)propertyForKey:(NSString *)key;
- (id)sceneAtIndex:(unint64_t)index options:(id)options;
- (id)sceneAtIndex:(unint64_t)index options:(id)options error:(id *)error;
- (id)sceneWithClass:(Class)class options:(id)options error:(id *)error;
- (id)sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler;
- (void)dealloc;
@end

@implementation SCNSceneSource

- (SCNSceneSource)initWithData:(NSData *)data options:(NSDictionary *)options
{
  v8.receiver = self;
  v8.super_class = SCNSceneSource;
  v6 = [(SCNSceneSource *)&v8 init];
  if (v6)
  {
    v6->_sceneSourceOptions = options;
    v6->_sceneSource = C3DSceneSourceCreateWithData(data);
  }

  return v6;
}

+ (BOOL)_shouldCacheWithOptions:(id)options
{
  v3 = [options objectForKey:@"kSceneSourceCacheScenesByURLKey"];

  return [v3 BOOLValue];
}

+ (id)_cachedSceneSourceForURL:(id)l options:(id)options
{
  objc_sync_enter(self);
  if (l)
  {
    if (![self _shouldCacheWithOptions:options] || (v7 = objc_msgSend(_sceneSourceCache, "objectForKey:", l), (l = v7) == 0) || (v8 = objc_msgSend(v7, "sceneSourceOptions"), v8 != options) && (!options || (objc_msgSend(v8, "isEqualToDictionary:", options) & 1) == 0))
    {
      l = 0;
    }
  }

  objc_sync_exit(self);
  return l;
}

+ (void)_cacheSceneSource:(id)source forURL:(id)l options:(id)options
{
  objc_sync_enter(self);
  if ([self _shouldCacheWithOptions:options])
  {
    v9 = _sceneSourceCache;
    if (!_sceneSourceCache)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0x10000 valueOptions:5 capacity:32];
      _sceneSourceCache = v9;
    }

    [v9 setObject:source forKey:l];
  }

  objc_sync_exit(self);
}

+ (void)_removeCachedSceneSourceIfNeededForURL:(id)l
{
  objc_sync_enter(self);
  if (l)
  {
    [_sceneSourceCache removeObjectForKey:l];
  }

  objc_sync_exit(self);
}

- (SCNSceneSource)initWithURL:(NSURL *)url options:(NSDictionary *)options
{
  v7 = [objc_opt_class() _cachedSceneSourceForURL:url options:options];
  if (v7)
  {
    v10 = v7;

    return v10;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SCNSceneSource;
    v9 = [(SCNSceneSource *)&v11 init];
    if (v9)
    {
      v9->_sceneSourceOptions = options;
      v9->_sceneSource = C3DSceneSourceCreateWithURL(url);
      [objc_opt_class() _cacheSceneSource:v9 forURL:url options:options];
    }

    return v9;
  }
}

- (void)dealloc
{
  if (self->_sceneSource)
  {
    [objc_opt_class() _removeCachedSceneSourceIfNeededForURL:{-[SCNSceneSource url](self, "url")}];
    CFRelease(self->_sceneSource);
  }

  lastLoadedScene = self->_lastLoadedScene;
  if (lastLoadedScene)
  {
    CFRelease(lastLoadedScene);
  }

  v4.receiver = self;
  v4.super_class = SCNSceneSource;
  [(SCNSceneSource *)&v4 dealloc];
}

+ (SCNSceneSource)sceneSourceWithURL:(NSURL *)url options:(NSDictionary *)options
{
  if (url)
  {
    v4 = [[self alloc] initWithURL:url options:options];

    return v4;
  }

  else
  {
    NSLog(&cfstr_Scnscenesource_2.isa, a2, 0, options);
    return 0;
  }
}

+ (SCNSceneSource)sceneSourceWithData:(NSData *)data options:(NSDictionary *)options
{
  v4 = [[self alloc] initWithData:data options:options];

  return v4;
}

- (NSString)description
{
  v3 = [(SCNSceneSource *)self url];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    return [v4 stringWithFormat:@"<%@: %p | URL='%@'>", v6, self, -[SCNSceneSource url](self, "url")];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@: %p>", v6, self, v8];
  }
}

- (id)sceneAtIndex:(unint64_t)index options:(id)options
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [(SCNSceneSource *)self sceneWithOptions:v6 error:0];
}

- (id)sceneAtIndex:(unint64_t)index options:(id)options error:(id *)error
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [(SCNSceneSource *)self sceneWithOptions:v8 error:error];
}

- (__C3DScene)_createSceneRefWithOptions:(id)options statusHandler:(id)handler
{
  optionsCopy = options;
  if (options && [options objectForKey:@"kSceneSourceSceneIndexKey"])
  {
    v7 = [-[NSDictionary objectForKey:](optionsCopy objectForKey:{@"kSceneSourceSceneIndexKey", "unsignedIntegerValue"}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SCNSceneSource *)self url];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke;
  v25 = &unk_2782FF578;
  v26 = v8;
  handlerCopy = handler;
  if (v8)
  {
    v9 = v8;
    if (!objc_msgSend_isEqualToString_(-[NSString lowercaseString](-[NSURL pathExtension](v8, "pathExtension", v22, v23, v24, v25, v26, handlerCopy), "lowercaseString")) || [-[NSDictionary valueForKey:](optionsCopy valueForKey:{@"SCNSceneSourceUseModelIOToLoadDAEFiles", "BOOLValue"}])
    {
      if ([MEMORY[0x277CD7AD0] canImportFileExtension:{-[NSURL pathExtension](v9, "pathExtension")}])
      {
        if ([-[NSDictionary valueForKey:](optionsCopy valueForKey:{@"triggerOptionsForRealtimeViewer", "BOOLValue"}])
        {
          if (optionsCopy)
          {
            dictionary = [(NSDictionary *)optionsCopy mutableCopy];
          }

          else
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          optionsCopy = dictionary;
          v11 = MEMORY[0x277CBEC38];
          [(NSDictionary *)dictionary setValue:MEMORY[0x277CBEC38] forKey:@"kSceneSourceCreateCameraIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceCreateNormalsIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceCreateLightIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceAdjustInvalidClippingPlanes"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceFlattenScene"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:0x282DCB518];
          [(NSDictionary *)optionsCopy setValue:@"playUsingSceneTime" forKey:@"kSceneSourceAnimationLoadingMode"];
        }

        +[SCNTransaction begin];
        [SCNTransaction setImmediateMode:1];
        MDLAssetWithURL = loadMDLAssetWithURL(v9, optionsCopy);
        sceneRef = [(SCNScene *)MDLAssetWithURL sceneRef];
        if (sceneRef)
        {
          SceneAtIndex = sceneRef;
          CFRetain(sceneRef);
          [(SCNScene *)MDLAssetWithURL _clearSceneRef];
          +[SCNTransaction commit];
          +[SCNTransaction flush];
          C3DIOFinalizeLoadScene(SceneAtIndex, 0, optionsCopy, 0, -1);
          [(SCNNode *)[(SCNScene *)MDLAssetWithURL rootNode] _syncObjCModelAfterC3DIOSceneLoadingWithNodeRef:C3DSceneGetRootNode(SceneAtIndex, v15)];
          if (v7)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }

        [(SCNScene *)MDLAssetWithURL _clearSceneRef];
        +[SCNTransaction commit];
      }
    }
  }

  SceneAtIndex = C3DSceneSourceCreateSceneAtIndex(self->_sceneSource, v7, optionsCopy, &v22);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (SceneAtIndex)
  {
    self->_sceneLoaded = 1;
  }

LABEL_21:
  lastLoadedScene = self->_lastLoadedScene;
  if (lastLoadedScene != SceneAtIndex)
  {
    if (lastLoadedScene)
    {
      CFRelease(lastLoadedScene);
    }

    self->_lastLoadedScene = SceneAtIndex;
    if (SceneAtIndex)
    {
      v18 = [objc_opt_class() _shouldCacheWithOptions:optionsCopy];
      v19 = self->_lastLoadedScene;
      if (v18)
      {
        self->_lastLoadedScene = C3DSceneCreateCopy(v19, v17);
      }

      else
      {
        CFRetain(v19);
      }
    }
  }

  lastOptions = self->_lastOptions;
  if (lastOptions != optionsCopy)
  {

    self->_lastOptions = optionsCopy;
  }

  return SceneAtIndex;
}

uint64_t __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke(uint64_t a1, int a2, CFErrorRef err, uint64_t a4, float a5)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    goto LABEL_2;
  }

  if (!err)
  {
    v34 = *MEMORY[0x277CCA450];
    v35[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v16 = MEMORY[0x277CCA9B8];
    v17 = @"SCNKitErrorDomain";
    v18 = 0;
LABEL_26:
    v23 = [v16 errorWithDomain:v17 code:v18 userInfo:v15];
    goto LABEL_27;
  }

  Domain = CFErrorGetDomain(err);
  if (CFEqual(Domain, *MEMORY[0x277CBEE48]))
  {
    if (!*(a1 + 32))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_28;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA5B8];
    Code = CFErrorGetCode(err);
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*(a1 + 32) forKey:*MEMORY[0x277CCA760]];
    v16 = v12;
    v17 = v13;
    v18 = Code;
    goto LABEL_26;
  }

  v19 = CFErrorGetDomain(err);
  if (CFEqual(v19, @"SCNKitErrorDomain"))
  {
    v20 = CFErrorCopyRecoverySuggestion(err);
    v21 = CFErrorCopyUserInfo(err);
    if (*(a1 + 32))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "localizedStringForKey:value:table:", @"The document %@ could not be opened.", &stru_282DCC058, 0), objc_msgSend(objc_msgSend(*(a1 + 32), "path"), "lastPathComponent")];
    }

    else
    {
      v22 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    }

    v24 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v22, *MEMORY[0x277CCA450], v20, *MEMORY[0x277CCA498], 0}];
    v26 = v25;
    v27 = *(a1 + 32);
    if (v27)
    {
      [v25 setObject:v27 forKeyedSubscript:*MEMORY[0x277CCA760]];
    }

    v28 = [(__CFDictionary *)v21 objectForKey:@"SCNDetailedErrorsKey"];
    if (v28)
    {
      [v26 setObject:v28 forKey:@"SCNDetailedErrorsKey"];
    }

    v29 = CFErrorGetCode(err);
    v31 = v29;
    if (v29 > -2)
    {
      if (v29 == -1)
      {
        [v26 setObject:-[__CFDictionary objectForKeyedSubscript:](v21 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x277CBEE58]), v24}];
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA050];
        v18 = 260;
        goto LABEL_25;
      }

      if (v29 != 1)
      {
        goto LABEL_31;
      }
    }

    else if ((v29 + 6) >= 2)
    {
      if (v29 == -8)
      {
        [v26 setObject:-[__CFDictionary objectForKeyedSubscript:](v21 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x277CBEE58]), v24}];
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA050];
        v18 = 4864;
LABEL_25:
        v15 = v26;
        goto LABEL_26;
      }

LABEL_31:
      v33 = scn_default_log(v29, v30);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke_cold_1(v31, v33);
      }

      goto LABEL_2;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v18 = 259;
    goto LABEL_25;
  }

  CFRetain(err);
  v23 = err;
LABEL_27:
  v9 = v23;
LABEL_28:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, v9, a4, a5);
  }

  return result;
}

- (id)_sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  if (!options)
  {
    options = [MEMORY[0x277CBEAC0] dictionary];
  }

  if (self->_lastLoadedScene && [options isEqual:self->_lastOptions])
  {
    ObjCWrapper = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:{objc_msgSend(MEMORY[0x277CCAAB0], "archivedDataWithRootObject:requiringSecureCoding:error:", C3DEntityGetObjCWrapper(self->_lastLoadedScene), 0, 0)}];
    [ObjCWrapper setSceneSource:self];
    return ObjCWrapper;
  }

  URL = C3DSceneSourceGetURL(self->_sceneSource);
  Data = C3DSceneSourceGetData(self->_sceneSource);
  isEqualToString = objc_msgSend_isEqualToString_([objc_msgSend(URL "pathExtension")]);
  if ((objc_msgSend_isEqualToString_([options valueForKey:@"kSceneSourceFormat"]) & 1) != 0 || ((objc_msgSend_isEqualToString_(objc_msgSend(objc_msgSend(URL, "pathExtension"), "lowercaseString")) | isEqualToString) & 1) != 0 || objc_msgSend(Data, "length") >= 7 && !strncmp(objc_msgSend(Data, "bytes"), "bplist", 6uLL))
  {
    v36 = 0;
    if (!Data)
    {
      Data = [MEMORY[0x277CBEA90] dataWithContentsOfURL:URL options:0 error:&v36];
      if (!Data)
      {
        if (handler)
        {
          v35 = 1;
          (*(handler + 2))(handler, -1, v36, &v35, 1.0);
        }

        return 0;
      }
    }

    if (isEqualToString)
    {
      Data = [Data scn_uncompressedDataUsingCompressionAlgorithm:517];
      if (!Data)
      {
        return 0;
      }
    }

    v13 = [[SCNKeyedUnarchiver alloc] initForReadingWithData:Data secure:C3DIOShouldActivateSecurityChecks(URL, options)];
    v14 = v13;
    if (v13)
    {
      [v13 setDelegate:self];
      context = objc_autoreleasePoolPush();
      if (URL)
      {
        cf = C3DIOCreateImportContextFromOptions(options, URL);
        [v14 setContext:cf];
        [v14 setAssetCatalog:{+[SCNAssetCatalog assetCatalogForResourceURL:](SCNAssetCatalog, "assetCatalogForResourceURL:", URL)}];
        [v14 setDocumentURL:URL];
      }

      else
      {
        cf = 0;
      }

      if (objc_opt_class() != class)
      {
        v15 = objc_opt_class();
        [v14 setClass:class forClassName:NSStringFromClass(v15)];
      }

      v16 = MEMORY[0x277CBEB98];
      v37[0] = objc_opt_class();
      v37[1] = objc_opt_class();
      v17 = [v16 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v37, 2)}];
      v18 = [v14 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CCA308]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        scene = v18;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          scene = [(objc_class *)class scene];
          [objc_msgSend(scene "rootNode")];
        }

        else
        {
          v22 = scn_default_log(isKindOfClass, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource _sceneWithClass:options:statusHandler:];
          }

          scene = 0;
        }
      }

      v23 = scene;
      [v14 finishDecoding];

      if (cf)
      {
        CFRelease(cf);
      }

      objc_autoreleasePoolPop(context);
      if (scene)
      {
        self->_sceneLoaded = 1;
        lastLoadedScene = self->_lastLoadedScene;
        if (lastLoadedScene)
        {
          CFRelease(lastLoadedScene);
        }

        sceneRef = [scene sceneRef];
        self->_lastLoadedScene = sceneRef;
        if (sceneRef)
        {
          v27 = [objc_opt_class() _shouldCacheWithOptions:options];
          v28 = self->_lastLoadedScene;
          if (v27)
          {
            self->_lastLoadedScene = C3DSceneCreateCopy(v28, v26);
          }

          else
          {
            CFRetain(v28);
          }
        }

        lastOptions = self->_lastOptions;
        if (lastOptions != options)
        {

          self->_lastOptions = options;
        }

        [scene setSceneSource:self];
        return scene;
      }
    }
  }

  v30 = [(SCNSceneSource *)self _createSceneRefWithOptions:options statusHandler:handler];
  v31 = v30;
  if (!v30)
  {
    return 0;
  }

  ObjCWrapper = C3DEntityGetObjCWrapper(v30);
  if (!ObjCWrapper)
  {
    ObjCWrapper = [(objc_class *)class sceneWithSceneRef:v31];
  }

  CFRelease(v31);
  [ObjCWrapper setSceneSource:self];
  return ObjCWrapper;
}

- (id)sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler
{
  v9 = sceneWithClass_options_statusHandler__nestCounter;
  v10 = sceneWithClass_options_statusHandler__nestCounter;
  if (sceneWithClass_options_statusHandler__nestCounter <= 0)
  {
    kdebug_trace();
    v10 = sceneWithClass_options_statusHandler__nestCounter;
  }

  sceneWithClass_options_statusHandler__nestCounter = v10 + 1;
  v11 = [(SCNSceneSource *)self _sceneWithClass:class options:options statusHandler:handler];
  v12 = [(SCNSceneSource *)self url];
  if (v12)
  {
    [v11 _setSourceURL:v12];
  }

  --sceneWithClass_options_statusHandler__nestCounter;
  if (v9 <= 0)
  {
    kdebug_trace();
  }

  return v11;
}

- (SCNScene)sceneWithOptions:(NSDictionary *)options statusHandler:(SCNSceneSourceStatusHandler)statusHandler
{
  v7 = objc_opt_class();

  return [(SCNSceneSource *)self sceneWithClass:v7 options:options statusHandler:statusHandler];
}

- (id)sceneWithClass:(Class)class options:(id)options error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SCNSceneSource_sceneWithClass_options_error___block_invoke;
  v9[3] = &__block_descriptor_40_e27_v36__0f8q12__NSError_20_B28l;
  v9[4] = error;
  v6 = [(SCNSceneSource *)self sceneWithClass:class options:options statusHandler:v9];
  if (error)
  {
    v7 = *error;
  }

  return v6;
}

void *__47__SCNSceneSource_sceneWithClass_options_error___block_invoke(void *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = result;
    if (result[4])
    {
      result = a3;
      *v3[4] = result;
    }
  }

  return result;
}

- (SCNScene)sceneWithOptions:(NSDictionary *)options error:(NSError *)error
{
  v7 = objc_opt_class();

  return [(SCNSceneSource *)self sceneWithClass:v7 options:options error:error];
}

- (id)propertyForKey:(NSString *)key
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  if (!objc_msgSend_isEqualToString_(key, a2, @"geometryMemory"))
  {
    if (!objc_msgSend_isEqualToString_(key))
    {
      v14 = [(SCNSceneSource *)self copyPropertiesAtIndex:0 options:0];
      v15 = [v14 objectForKey:key];
      v16 = v14;
      return v15;
    }

    Library = C3DSceneSourceGetLibrary(self->_sceneSource);
    if (Library)
    {
      v7 = Library;
      TypeID = C3DImageGetTypeID(Library, v10);
      goto LABEL_9;
    }

LABEL_10:
    MemoryUsageForKind = 0;
    goto LABEL_11;
  }

  v5 = C3DSceneSourceGetLibrary(self->_sceneSource);
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = v5;
  TypeID = C3DGeometryGetTypeID(v5, v6);
LABEL_9:
  MemoryUsageForKind = C3DLibraryGetMemoryUsageForKind(v7, TypeID);
LABEL_11:
  v12 = MEMORY[0x277CCABB0];

  return [v12 numberWithUnsignedInteger:MemoryUsageForKind];
}

- (__C3DLibrary)library
{
  result = self->_sceneSource;
  if (result)
  {
    return C3DSceneSourceGetLibrary(result);
  }

  return result;
}

- (id)c3dDataRepresentation
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  lastLoadedScene = self->_lastLoadedScene;
  library = [(SCNSceneSource *)self library];
  v6 = C3DCreatePropertyListFromScene(lastLoadedScene, library, MEMORY[0x277CBEC10], v5);
  if (v6)
  {
    v7 = v6;
    Data = CFPropertyListCreateData(0, v6, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(v7);
  }

  else
  {
    Data = 0;
  }

  return Data;
}

- (id)entryWithIdentifier:(NSString *)uid withClass:(Class)entryClass
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (!sceneSource)
  {
    return 0;
  }

  Library = C3DSceneSourceGetLibrary(sceneSource);
  if (!Library)
  {
    return 0;
  }

  EntryWithDocumentID = C3DLibraryGetEntryWithDocumentID(Library, uid);
  if (!EntryWithDocumentID)
  {
    return 0;
  }

  v10 = EntryWithDocumentID;
  v11 = CFGetTypeID(EntryWithDocumentID);
  v12 = objc_opt_class();
  if (v12 == entryClass)
  {
    TypeID = C3DGeometryGetTypeID(v12, v13);
    if (v11 != TypeID)
    {
      v44 = scn_default_log(TypeID, v40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [SCNSceneSource entryWithIdentifier:withClass:];
      }

      return 0;
    }

    v38 = C3DEntityGetObjCWrapper(v10) != 0;
    v41 = [SCNGeometry geometryWithGeometryRef:v10];
    goto LABEL_70;
  }

  v14 = objc_opt_class();
  if (v14 == entryClass)
  {
    v42 = C3DMaterialGetTypeID(v14, v15);
    if (v11 != v42)
    {
      v52 = scn_default_log(v42, v43);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [SCNSceneSource entryWithIdentifier:withClass:];
      }

      return 0;
    }

    v38 = C3DEntityGetObjCWrapper(v10) != 0;
    v41 = [SCNMaterial materialWithMaterialRef:v10];
    goto LABEL_70;
  }

  v16 = objc_opt_class();
  if (v16 != entryClass)
  {
    v18 = objc_opt_class();
    if (v18 != entryClass)
    {
      v20 = objc_opt_class();
      if (v20 == entryClass)
      {
        v66 = C3DNodeGetTypeID(v20, v21);
        if (v11 != v66)
        {
          v70 = scn_default_log(v66, v67);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v38 = C3DEntityGetObjCWrapper(v10) != 0;
        v41 = [SCNNode nodeWithNodeRef:v10];
      }

      else
      {
        v22 = objc_opt_class();
        if (v22 == entryClass)
        {
          v68 = C3DLightGetTypeID(v22, v23);
          if (v11 != v68)
          {
            v74 = scn_default_log(v68, v69);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              [SCNSceneSource entryWithIdentifier:withClass:];
            }

            return 0;
          }

          v38 = C3DEntityGetObjCWrapper(v10) != 0;
          v41 = [SCNLight lightWithLightRef:v10];
        }

        else
        {
          v24 = objc_opt_class();
          if (v24 == entryClass)
          {
            v71 = C3DCameraGetTypeID(v24, v25);
            if (v11 != v71)
            {
              v78 = scn_default_log(v71, v72);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                [SCNSceneSource entryWithIdentifier:withClass:];
              }

              return 0;
            }

            v38 = C3DEntityGetObjCWrapper(v10) != 0;
            v41 = [SCNCamera cameraWithCameraRef:v10];
          }

          else
          {
            v26 = objc_opt_class();
            if (v26 == entryClass)
            {
              v75 = C3DSceneGetTypeID(v26, v27);
              if (v11 != v75)
              {
                v81 = scn_default_log(v75, v76);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  [SCNSceneSource entryWithIdentifier:withClass:];
                }

                return 0;
              }

              v38 = C3DEntityGetObjCWrapper(v10) != 0;
              v41 = [SCNScene sceneWithSceneRef:v10];
            }

            else
            {
              v28 = objc_opt_class();
              if (v28 == entryClass)
              {
                v79 = C3DSkinnerGetTypeID(v28, v29);
                if (v11 != v79)
                {
                  v84 = scn_default_log(v79, v80);
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    [SCNSceneSource entryWithIdentifier:withClass:];
                  }

                  return 0;
                }

                v38 = C3DEntityGetObjCWrapper(v10) != 0;
                v41 = [SCNSkinner skinnerWithSkinnerRef:v10];
              }

              else
              {
                v30 = objc_opt_class();
                if (v30 == entryClass)
                {
                  v82 = C3DMorphGetTypeID(v30, v31);
                  if (v11 != v82)
                  {
                    v90 = scn_default_log(v82, v83);
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                    {
                      [SCNSceneSource entryWithIdentifier:withClass:];
                    }

                    return 0;
                  }

                  v38 = C3DEntityGetObjCWrapper(v10) != 0;
                  v41 = [SCNMorpher morpherWithMorphRef:v10];
                }

                else
                {
                  v32 = objc_opt_class();
                  if (v32 != entryClass)
                  {
                    v34 = objc_opt_class();
                    if (v34 == entryClass && v11 == C3DImageGetTypeID(v34, v35))
                    {
                      URL = C3DImageGetURL(v10, v36);
                      v38 = 0;
                      goto LABEL_71;
                    }

                    return 0;
                  }

                  v85 = C3DImageGetTypeID(v32, v33);
                  if (v11 != v85)
                  {
                    v91 = scn_default_log(v85, v86);
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                    {
                      [SCNSceneSource entryWithIdentifier:withClass:];
                    }

                    return 0;
                  }

                  v38 = C3DEntityGetObjCWrapper(v10) != 0;
                  v41 = [SCNMaterialProperty copyImageFromC3DImage:v10];
                }
              }
            }
          }
        }
      }

LABEL_70:
      URL = v41;
      goto LABEL_71;
    }

    v54 = C3DKeyframedAnimationGetTypeID(v18, v19);
    if (v11 == v54 || (v56 = C3DAnimationGroupGetTypeID(v54, v55), v11 == v56) || (v58 = C3DAnimationClusterGetTypeID(v56, v57), v11 == v58))
    {
      ObjCWrapper = C3DEntityGetObjCWrapper(v10);
      v38 = ObjCWrapper != 0;
      v62 = C3DAnimationGroupGetTypeID(ObjCWrapper, v61);
      if (v62 == CFGetTypeID(v10))
      {
        v63 = C3DAnimationClusterCreateWithAnimationGroup(v10);
        if (v63)
        {
          v64 = v63;
          v65 = v63;
          v10 = v64;
        }
      }

      v41 = [SCNAnimation animationWithC3DAnimation:v10];
      goto LABEL_70;
    }

    v77 = scn_default_log(v58, v59);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_51:
    [SCNSceneSource entryWithIdentifier:withClass:];
    return 0;
  }

  v45 = C3DKeyframedAnimationGetTypeID(v16, v17);
  if (v11 != v45)
  {
    v47 = C3DAnimationGroupGetTypeID(v45, v46);
    if (v11 != v47)
    {
      v49 = C3DAnimationClusterGetTypeID(v47, v48);
      if (v11 != v49)
      {
        v73 = scn_default_log(v49, v50);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        goto LABEL_51;
      }
    }
  }

  v38 = C3DEntityGetObjCWrapper(v10) != 0;
  URL = C3DAnimationToCAAnimation(v10);
  if (C3DWasLinkedBeforeMajorOSYear2014(URL, v51))
  {
    [URL setUsesSceneTimeBase:0];
    [URL setRemovedOnCompletion:1];
  }

LABEL_71:
  if (URL && !v38 && self->_lastLoadedScene)
  {
    v87 = [SCNScene sceneWithSceneRef:?];
    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v87 rootNode];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke;
      v96[3] = &unk_2782FF5C0;
      v96[4] = URL;
      v89 = v96;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v87 rootNode];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_2;
      v95[3] = &unk_2782FF5C0;
      v95[4] = URL;
      v89 = v95;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v87 rootNode];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_3;
      v94[3] = &unk_2782FF5C0;
      v94[4] = URL;
      v89 = v94;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v87 rootNode];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_4;
      v93[3] = &unk_2782FF5C0;
      v93[4] = URL;
      v89 = v93;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v87 rootNode];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_5;
      v92[3] = &unk_2782FF5C0;
      v92[4] = URL;
      v89 = v92;
LABEL_84:
      [(SCNNode *)rootNode childNodesPassingTest:v89];
    }
  }

  return URL;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 light] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 camera] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 geometry] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 32) == a2)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_5(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([objc_msgSend(objc_msgSend(a2 "geometry")])
  {
    *a3 = 1;
  }

  return 0;
}

- (NSArray)identifiersOfEntriesWithClass:(Class)entryClass
{
  v58[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_opt_class();
  if (v6 == entryClass)
  {
    v58[0] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DGeometryGetTypeID(v6, v7)}];
    v25 = MEMORY[0x277CBEA60];
    v26 = v58;
LABEL_17:
    v29 = 1;
    goto LABEL_18;
  }

  v8 = objc_opt_class();
  if (v8 == entryClass)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DMaterialGetTypeID(v8, v9)}];
    v25 = MEMORY[0x277CBEA60];
    v26 = &v57;
    goto LABEL_17;
  }

  v10 = objc_opt_class();
  if (v10 != entryClass)
  {
    v10 = objc_opt_class();
    if (v10 != entryClass)
    {
      v12 = objc_opt_class();
      if (v12 == entryClass)
      {
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DNodeGetTypeID(v12, v13)}];
        v25 = MEMORY[0x277CBEA60];
        v26 = &v53;
      }

      else
      {
        v14 = objc_opt_class();
        if (v14 == entryClass)
        {
          v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DLightGetTypeID(v14, v15)}];
          v25 = MEMORY[0x277CBEA60];
          v26 = &v52;
        }

        else
        {
          v16 = objc_opt_class();
          if (v16 == entryClass)
          {
            v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DCameraGetTypeID(v16, v17)}];
            v25 = MEMORY[0x277CBEA60];
            v26 = &v51;
          }

          else
          {
            v18 = objc_opt_class();
            if (v18 == entryClass)
            {
              v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DSceneGetTypeID(v18, v19)}];
              v25 = MEMORY[0x277CBEA60];
              v26 = &v50;
            }

            else
            {
              v20 = objc_opt_class();
              if (v20 == entryClass)
              {
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DMorpherGetTypeID(v20, v21)}];
                v25 = MEMORY[0x277CBEA60];
                v26 = &v49;
              }

              else
              {
                v22 = objc_opt_class();
                if (v22 != entryClass)
                {
                  v24 = scn_default_log(v22, v23);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    [SCNSceneSource identifiersOfEntriesWithClass:];
                  }

                  return MEMORY[0x277CBEBF8];
                }

                v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DSkinnerGetTypeID(v22, v23)}];
                v25 = MEMORY[0x277CBEA60];
                v26 = &v48;
              }
            }
          }
        }
      }

      goto LABEL_17;
    }
  }

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DAnimationGroupGetTypeID(v10, v11)}];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DAnimationClusterGetTypeID(v54, v27)}];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{C3DKeyframedAnimationGetTypeID(v55, v28)}];
  v25 = MEMORY[0x277CBEA60];
  v26 = &v54;
  v29 = 3;
LABEL_18:
  v30 = [v25 arrayWithObjects:v26 count:v29];
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (sceneSource)
  {
    Library = C3DSceneSourceGetLibrary(sceneSource);
    if (Library)
    {
      v33 = Library;
      v46 = 0;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = [v30 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v43;
        do
        {
          v37 = 0;
          do
          {
            if (*v43 != v36)
            {
              objc_enumerationMutation(v30);
            }

            v38 = C3DLibraryCopyIDsWithKind(v33, [*(*(&v42 + 1) + 8 * v37) longValue], &v46);
            if (v46 >= 1)
            {
              for (i = 0; i < v46; ++i)
              {
                v40 = [v38[i] copy];
                [(NSArray *)array addObject:v40];
              }
            }

            free(v38);
            ++v37;
          }

          while (v37 != v35);
          v35 = [v30 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v35);
      }
    }
  }

  return array;
}

- (BOOL)_appendToEntries:(id)entries entriesWithType:(unint64_t)type passingTest:(id)test entryObjectConstructor:(id)constructor
{
  Library = C3DSceneSourceGetLibrary(self->_sceneSource);
  v23 = 0;
  v11 = C3DLibraryCopyIDsWithKind(Library, type, &v23);
  v22 = 0;
  v21 = v11;
  if (v23 < 1)
  {
    v18 = 0;
  }

  else
  {
    v12 = 1;
    v13 = v11;
    do
    {
      v14 = *v13;
      EntryWithDocumentID = C3DLibraryGetEntryWithDocumentID(Library, *v13);
      v16 = [v14 copy];
      v17 = (*(constructor + 2))(constructor, EntryWithDocumentID);
      if ((*(test + 2))(test, v17, v16, &v22))
      {
        [entries addObject:v17];
      }

      v18 = v22;
      if (v22)
      {
        break;
      }

      ++v13;
    }

    while (v12++ < v23);
  }

  free(v21);
  return v18;
}

- (NSArray)entriesPassingTest:(void *)predicate
{
  array = [MEMORY[0x277CBEB18] array];
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (sceneSource)
  {
    Library = C3DSceneSourceGetLibrary(sceneSource);
    if (Library)
    {
      v9 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DGeometryGetTypeID(Library passingTest:v8) entryObjectConstructor:predicate, &__block_literal_global_76];
      if ((v9 & 1) == 0)
      {
        v11 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DMaterialGetTypeID(v9 passingTest:v10) entryObjectConstructor:predicate, &__block_literal_global_226];
        if ((v11 & 1) == 0)
        {
          v13 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DAnimationGroupGetTypeID(v11 passingTest:v12) entryObjectConstructor:predicate, &__block_literal_global_228];
          if ((v13 & 1) == 0)
          {
            v15 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DAnimationClusterGetTypeID(v13 passingTest:v14) entryObjectConstructor:predicate, &__block_literal_global_230_0];
            if ((v15 & 1) == 0)
            {
              v17 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DNodeGetTypeID(v15 passingTest:v16) entryObjectConstructor:predicate, &__block_literal_global_232];
              if ((v17 & 1) == 0)
              {
                v19 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DLightGetTypeID(v17 passingTest:v18) entryObjectConstructor:predicate, &__block_literal_global_234];
                if ((v19 & 1) == 0)
                {
                  v21 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DCameraGetTypeID(v19 passingTest:v20) entryObjectConstructor:predicate, &__block_literal_global_236_0];
                  if ((v21 & 1) == 0)
                  {
                    v23 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DSceneGetTypeID(v21 passingTest:v22) entryObjectConstructor:predicate, &__block_literal_global_238_0];
                    if ((v23 & 1) == 0)
                    {
                      v25 = [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DSkinnerGetTypeID(v23 passingTest:v24) entryObjectConstructor:predicate, &__block_literal_global_240_0];
                      if ((v25 & 1) == 0)
                      {
                        [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DMorphGetTypeID(v25 passingTest:v26) entryObjectConstructor:predicate, &__block_literal_global_242];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return array;
}

- (id)performConsistencyCheck
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  C3DSceneSourcePerformConsistencyCheck();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void *__41__SCNSceneSource_performConsistencyCheck__block_invoke(void *result, int a2, void *cf)
{
  if (cf)
  {
    v4 = result;
    CFRetain(cf);
    result = cf;
    *(*(v4[4] + 8) + 40) = result;
  }

  return result;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = SCNGetSceneKitBundle();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [classes countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v30;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(classes);
      }

      v12 = [v7 classNamed:*(*(&v29 + 1) + 8 * i)];
      if (v12)
      {
        v13 = v12;
        if (![unarchiver requiresSecureCoding])
        {
          return v13;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        allowedClasses = [unarchiver allowedClasses];
        v15 = [allowedClasses countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          v24 = v9;
LABEL_10:
          unarchiverCopy = unarchiver;
          classesCopy = classes;
          v20 = v7;
          v21 = v10;
          v22 = 0;
          while (1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(allowedClasses);
            }

            if (([(objc_class *)v13 isSubclassOfClass:*(*(&v25 + 1) + 8 * v22)]& 1) != 0)
            {
              return v13;
            }

            if (v16 == ++v22)
            {
              v16 = [allowedClasses countByEnumeratingWithState:&v25 objects:v33 count:16];
              v10 = v21;
              v7 = v20;
              classes = classesCopy;
              unarchiver = unarchiverCopy;
              v9 = v24;
              if (v16)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }
    }

    v9 = [classes countByEnumeratingWithState:&v29 objects:v34 count:16];
    v13 = 0;
    if (v9)
    {
      continue;
    }

    return v13;
  }
}

- (id)debugQuickLookObject
{
  v2 = [(SCNSceneSource *)self sceneWithOptions:0 error:0];

  return [(SCNScene *)v2 debugQuickLookObject];
}

- (id)debugQuickLookData
{
  debugQuickLookObject = [(SCNSceneSource *)self debugQuickLookObject];

  return UIImagePNGRepresentation(debugQuickLookObject);
}

void __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unhandled SceneKit error code (%d)", v2, 8u);
}

- (void)_sceneWithClass:options:statusHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive data at %@ (%@)");
}

- (void)_sceneWithClass:options:statusHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive scene at %@ - unknown decoded object class (%@)");
}

- (void)_sceneWithClass:options:statusHandler:.cold.3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive scene at %@ (%@)");
}

@end