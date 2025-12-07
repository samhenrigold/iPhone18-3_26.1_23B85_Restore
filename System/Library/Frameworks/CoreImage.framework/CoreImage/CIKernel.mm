@interface CIKernel
+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data error:(NSError *)error;
+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data outputPixelFormat:(CIFormat)format error:(NSError *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data constants:(id)constants error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data outputGroupSize:(CGSize)size error:(id *)error;
+ (CIKernel)kernelWithInternalRepresentation:(const void *)representation;
+ (CIKernel)kernelWithString:(NSString *)string;
+ (CIKernel)kernelWithString:(id)string fromMetalLibraryData:(id)data;
+ (NSArray)kernelNamesFromMetalLibraryData:(NSData *)data;
+ (NSArray)kernelsWithMetalString:(NSString *)source error:(NSError *)error;
+ (NSArray)kernelsWithString:(NSString *)string;
+ (id)SDOFV2MetalKernelNamed:(id)named;
+ (id)SDOFV3MetalKernelNamed:(id)named;
+ (id)cache;
+ (id)cacheKeyForFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options;
+ (id)cachedKernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error;
+ (id)cachedKernelWithString:(id)string;
+ (id)colorMatrixBiasKernel;
+ (id)internalCachedKernelWithString:(id)string;
+ (id)kernelNamesFromMetalLibrary:(id)library;
+ (id)kernelsWithString:(id)string andCIKernelLibrary:(id)library messageLog:(id)log;
+ (id)kernelsWithString:(id)string fromMetalLibraryData:(id)data;
+ (id)kernelsWithString:(id)string messageLog:(id)log;
+ (void)clearCache;
- (BOOL)_isValidOutputPixelFormat:(int)format;
- (BOOL)canReduceOutputChannels;
- (BOOL)perservesAlpha;
- (BOOL)preservesOpacity;
- (BOOL)preservesRange;
- (CGSize)outputGroupSize;
- (CIKernel)init;
- (CIKernel)initWithString:(id)string;
- (NSString)name;
- (SEL)ROISelector;
- (id)_initInternalWithString:(id)string;
- (id)_initWithInternalRepresentation:(void *)representation;
- (id)_initWithReflection:(CIKernelReflection *)reflection;
- (id)_initWithString:(id)string andCIKernelLibrary:(id)library usingCruftCompatibility:(BOOL)compatibility isInternal:(BOOL)internal;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options;
- (id)debugDescription;
- (id)parameters;
- (int)_outputFormatUsingDictionary:(id)dictionary andKernel:(void *)kernel;
- (void)dealloc;
- (void)init;
- (void)setCanReduceOutputChannels:(BOOL)channels;
- (void)setPerservesAlpha:(BOOL)alpha;
- (void)setPreservesRange:(BOOL)range;
- (void)setROISelector:(SEL)method;
@end

@implementation CIKernel

- (id)_initWithInternalRepresentation:(void *)representation
{
  if (representation)
  {
    representationCopy = representation;
    v6.receiver = self;
    v6.super_class = CIKernel;
    v4 = [(CIKernel *)&v6 init];
    if (v4)
    {
      if (*(representationCopy + 12) == 1)
      {
        representationCopy = CI::Object::ref(representationCopy);
      }

      v4->_priv = representationCopy;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

+ (CIKernel)kernelWithInternalRepresentation:(const void *)representation
{
  if ((*(*representation + 16))(representation, a2) == 72)
  {
    v5 = 1;
  }

  else if ((*(*representation + 16))(representation) == 70)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = [KernelKindAlloc(v5 v4)];

  return v6;
}

+ (id)cache
{
  if (+[CIKernel cache]::onceToken != -1)
  {
    +[CIKernel cache];
  }

  return +[CIKernel cache]::cache;
}

id __17__CIKernel_cache__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  +[CIKernel cache]::cache = result;
  return result;
}

+ (void)clearCache
{
  cache = [self cache];
  objc_sync_enter(cache);
  [cache removeAllObjects];
  objc_sync_exit(cache);

  +[CIKernelLibrary clearCache];
}

+ (id)cachedKernelWithString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v18 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString", "%{public}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __35__CIKernel_cachedKernelWithString___block_invoke;
  v15 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  objc_sync_enter(cache);
  v7 = [cache objectForKey:string];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = [[self alloc] initWithString:string];
    null = v8;
    if (!v8)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:string];
  }

  objc_sync_exit(cache);
  if (v8 == [MEMORY[0x1E695DFB0] null])
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  (v14)(v13);
  return v11;
}

void __35__CIKernel_cachedKernelWithString___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString", "%{public}@", &v5, 0xCu);
  }
}

+ (id)internalCachedKernelWithString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v16 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "internalCachedKernelWithString", "%{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __43__CIKernel_internalCachedKernelWithString___block_invoke;
  v13 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  objc_sync_enter(cache);
  v7 = [cache objectForKey:string];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = [[self alloc] _initInternalWithString:string];
    [cache setObject:v8 forKey:string];
  }

  objc_sync_exit(cache);
  (v12)(v11);
  return v8;
}

void __43__CIKernel_internalCachedKernelWithString___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "internalCachedKernelWithString", "%{public}@", &v5, 0xCu);
  }
}

+ (id)cacheKeyForFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  XXH64_reset(v21, 0);
  CI::XXHashHelper::addstr(v21, [name UTF8String]);
  __src = [library digest];
  XXH64_update(v21, &__src, 8uLL);
  v8 = [options objectForKeyedSubscript:@"kCIKernelFunctionConstants"];
  v9 = [objc_msgSend(v8 "allKeys")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        CI::XXHashHelper::add(v21, v13);
        v14 = [v8 valueForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v21, v14);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CI::XXHashHelper::add(v21, v14);
          }
        }

        v15 = [v8 valueForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v21, v15);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  __src = [objc_msgSend(options objectForKeyedSubscript:{@"kCIKernelOutputFormat", "longLongValue"}];
  XXH64_update(v21, &__src, 8uLL);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%016llX", XXH64_digest(v21)];
}

+ (id)cachedKernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v11))
  {
    *buf = 138543362;
    *&buf[4] = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithFunctionName", "%{public}@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __75__CIKernel_cachedKernelWithFunctionName_fromCIKernelLibrary_options_error___block_invoke;
  v21 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  v13 = [self cacheKeyForFunctionName:name fromCIKernelLibrary:library options:options];
  objc_sync_enter(cache);
  v14 = [cache objectForKey:v13];
  null = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    *buf = 0;
    v17 = [self kernelWithFunctionName:name fromCIKernelLibrary:library options:options error:buf];
    if (v17)
    {
      null = v17;
    }

    else
    {
      null = *buf;
    }

    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:v13];
  }

  objc_sync_exit(cache);
  if (null == [MEMORY[0x1E695DFB0] null])
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (!((error == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      *error = null;
    }

LABEL_15:
    null = 0;
  }

  (v20)(v19);
  return null;
}

void __75__CIKernel_cachedKernelWithFunctionName_fromCIKernelLibrary_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithFunctionName", "%{public}@", &v5, 0xCu);
  }
}

- (CIKernel)init
{
  v3 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIKernel *)v3 init:v4];
  }

  return [(CIKernel *)self _initWithInternalRepresentation:0];
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv[12] == 1)
    {
      CI::Object::unref(priv);
    }

    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIKernel;
  [(CIKernel *)&v4 dealloc];
}

- (id)_initWithString:(id)string andCIKernelLibrary:(id)library usingCruftCompatibility:(BOOL)compatibility isInternal:(BOOL)internal
{
  internalCopy = internal;
  compatibilityCopy = compatibility;
  v82 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  memset(v76, 0, sizeof(v76));
  v75 = 0u;
  memset(&v74[8], 0, 32);
  v77 = vdupq_n_s64(1uLL);
  v78 = 0;
  memset(&v73.var2, 0, 88);
  *&v73.var10 = v77;
  *&v73.var12 = 0;
  memset(&v72.var2, 0, 88);
  *&v72.var10 = v77;
  *&v72.var12 = 0;
  v11 = CI_USE_MTL_DAG_FOR_CIKL_SRC();
  v13 = 0;
  if (!library && v11 && !internalCopy)
  {
    v13 = can_use_metal(v11, v12);
  }

  v14 = newlocale(63, 0, 0);
  v15 = uselocale(v14);
  Pool = fosl_filter_kernelpool_createPool();
  fosl_filter_kernelpool_addLibrary(Pool, aCopyright2022A);
  if ((dyld_program_sdk_at_least() & 1) == 0 && (dyld_program_sdk_at_least() & 1) == 0 && !CI_DISABLE_CRUFT_COMPATABILITY() && compatibilityCopy)
  {
    string = [string stringByReplacingOccurrencesOfString:@"__sampler" withString:@"sampler"];
  }

  fosl_filter_kernelpool_addString(Pool, [string UTF8String]);
  v17 = check_and_emit_compile_errors(string, Pool, 0);
  if (v17)
  {
    v19 = ci_logger_compile(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      [CIKernel _initWithString:v20 andCIKernelLibrary:&buf usingCruftCompatibility:? isInternal:?];
    }

    goto LABEL_22;
  }

  NumKernels = fosl_filter_kernelpool_getNumKernels(Pool);
  if (!NumKernels)
  {
    v27 = ci_logger_compile(NumKernels, v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_opt_class() description];
      [CIKernel _initWithString:v28 andCIKernelLibrary:&buf usingCruftCompatibility:? isInternal:?];
    }

LABEL_22:
    v29 = 0;
    if (!Pool)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!CIKernelReflection::reflect(&v73, Pool, 0, 0))
  {
    goto LABEL_22;
  }

  if ((dyld_program_sdk_at_least() & 1) != 0 || dyld_program_sdk_at_least())
  {
    var0 = v73.var0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & (var0 != 3)) == 1)
    {
      v26 = ci_logger_compile(isKindOfClass, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    if ((v32 & (var0 != 2)) == 1)
    {
      v34 = ci_logger_compile(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }
  }

  if (!v13)
  {
    if (!library)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  CIKLLibraryMaker::CIKLLibraryMaker(&buf, Pool);
  library = *&buf.var0;
  if (!*&buf.var0)
  {
    v50 = ci_logger_compile(v35, v36);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [objc_opt_class() description];
      [CIKernel _initWithString:v51 andCIKernelLibrary:v81 usingCruftCompatibility:? isInternal:?];
    }

    CIKLLibraryMaker::~CIKLLibraryMaker(&buf);
    goto LABEL_22;
  }

  CIKLLibraryMaker::~CIKLLibraryMaker(v35);
LABEL_40:
  if (CIKernelReflection::reflect(&v72, library, v73.var2, 0))
  {
    v37 = v72.var0;
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();
    if ((v38 & (v37 != 2)) == 1)
    {
      v40 = ci_logger_api(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    objc_opt_class();
    v52 = objc_opt_isKindOfClass();
    if ((v52 & (v37 != 3)) == 1)
    {
      v54 = ci_logger_api(v52, v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    CIKernelReflection::consolidate(&v73, &v72, &buf);
    CIKernelReflection::operator=(v74, &buf);
    CIKernelReflection::~CIKernelReflection(&buf);
    goto LABEL_45;
  }

LABEL_44:
  *v74 = *&v73.var0;
  *&v74[16] = *&v73.var3;
  std::vector<CI::KernelArgumentType>::__assign_with_size[abi:nn200100]<CI::KernelArgumentType*,CI::KernelArgumentType*>(&v74[32], v73.var5.var0, v73.var5.var1, v73.var5.var1 - v73.var5.var0);
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v76, v73.var6.var0, v73.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v73.var6.var1 - v73.var6.var0) >> 3));
  *&v76[24] = *&v73.var7;
  v77 = *&v73.var10;
  v78 = *&v73.var12;
LABEL_45:
  v43 = *v73.var2;
  if (internalCopy)
  {
    if (v43 != 95)
    {
      v44 = ci_logger_api(v41, v42);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }
    }
  }

  else if (v43 == 95)
  {
    v45 = ci_logger_api(v41, v42);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      buf.var0 = 136446210;
      *&buf.var1 = v73.var2;
      _os_log_impl(&dword_19CC36000, v45, OS_LOG_TYPE_INFO, "WARNING: Client CIKL function name %{public}s must not start with '_'\n", &buf, 0xCu);
    }
  }

  v46 = *v74;
  if (*v74 == 1)
  {
    goto LABEL_58;
  }

  if (*v74 == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_58;
    }

    v46 = *v74;
  }

  if (v46 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_58:
      v64[0] = *v74;
      v64[1] = *&v74[16];
      __dst = 0;
      v67 = 0;
      v65 = 0;
      if (v75 != *&v74[32])
      {
        std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v65, (v75 - *&v74[32]) >> 2);
      }

      memset(v68, 0, sizeof(v68));
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v68, *v76, *&v76[8], 0xAAAAAAAAAAAAAAABLL * ((*&v76[8] - *v76) >> 3));
      v69 = *&v76[24];
      v70 = v77;
      v71 = v78;
      self = [(CIKernel *)self _initWithReflection:v64];
      *&buf.var0 = v68;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
      v47 = v65;
      if (v65)
      {
        __dst = v65;
LABEL_66:
        operator delete(v47);
        goto LABEL_67;
      }

      goto LABEL_67;
    }
  }

  v49 = KernelKindAlloc(*v74, v48);
  v56[0] = *v74;
  v56[1] = *&v74[16];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  if (v75 != *&v74[32])
  {
    std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v57, (v75 - *&v74[32]) >> 2);
  }

  memset(v60, 0, sizeof(v60));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v60, *v76, *&v76[8], 0xAAAAAAAAAAAAAAABLL * ((*&v76[8] - *v76) >> 3));
  v61 = *&v76[24];
  v62 = v77;
  v63 = v78;
  self = [v49 _initWithReflection:v56];
  *&buf.var0 = v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&buf);
  v47 = v57;
  if (v57)
  {
    v58 = v57;
    goto LABEL_66;
  }

LABEL_67:
  v29 = 1;
  if (Pool)
  {
LABEL_23:
    fosl_filter_kernelpool_destroyPool(Pool);
  }

LABEL_24:
  v30 = uselocale(v15);
  freelocale(v30);
  if ((v29 & 1) == 0)
  {

    self = 0;
  }

  p_var6 = &v72.var6;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
  if (v72.var5.var0)
  {
    v72.var5.var1 = v72.var5.var0;
    operator delete(v72.var5.var0);
  }

  *&v72.var0 = &v73.var6;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v72);
  if (v73.var5.var0)
  {
    v73.var5.var1 = v73.var5.var0;
    operator delete(v73.var5.var0);
  }

  *&v73.var0 = v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v73);
  if (*&v74[32])
  {
    *&v75 = *&v74[32];
    operator delete(*&v74[32]);
  }

  objc_autoreleasePoolPop(context);
  return self;
}

- (id)_initInternalWithString:(id)string
{
  if (check_cikl_string(string, "[CIKernel _initInternalWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:0 isInternal:1];
  }

  else
  {

    return 0;
  }
}

- (id)_initWithReflection:(CIKernelReflection *)reflection
{
  v5 = *&reflection->var3;
  v9[0] = *&reflection->var0;
  v9[1] = v5;
  std::vector<CI::KernelArgumentType>::vector[abi:nn200100](__p, &reflection->var5.var0);
  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v11, reflection->var6.var0, reflection->var6.var1, 0xAAAAAAAAAAAAAAABLL * ((reflection->var6.var1 - reflection->var6.var0) >> 3));
  v6 = *&reflection->var10;
  v12 = *&reflection->var7;
  v13 = v6;
  v14 = *&reflection->var12;
  v7 = [(CIKernel *)self _initWithReflection:v9 constants:0 constantTypes:0];
  v15 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

+ (id)kernelsWithString:(id)string andCIKernelLibrary:(id)library messageLog:(id)log
{
  v8 = objc_autoreleasePoolPush();
  if (!check_cikl_string(string, "+[CIKernel kernelsWithString:andCIKernelLibrary:messageLog:]"))
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v9 = CI_USE_MTL_DAG_FOR_CIKL_SRC();
  libraryCopy = library;
  v12 = 0;
  v30 = libraryCopy;
  if (!libraryCopy && v9)
  {
    v12 = can_use_metal(v9, v10);
  }

  v13 = newlocale(63, 0, 0);
  v14 = uselocale(v13);
  Pool = fosl_filter_kernelpool_createPool();
  fosl_filter_kernelpool_addLibrary(Pool, aCopyright2022A);
  fosl_filter_kernelpool_addString(Pool, [string UTF8String]);
  check_and_emit_compile_errors(string, Pool, log);
  NumKernels = fosl_filter_kernelpool_getNumKernels(Pool);
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:NumKernels];
  if (!v12)
  {
    goto LABEL_8;
  }

  CIKLLibraryMaker::CIKLLibraryMaker(&v71, Pool);
  if (*&v71.var0)
  {
    v30 = *&v71.var0;
    CIKLLibraryMaker::~CIKLLibraryMaker(v17);
LABEL_8:
    v29 = v14;
    if (NumKernels)
    {
      v19 = 0;
      v32 = vdupq_n_s64(1uLL);
      while (1)
      {
        memset(&v71.var2, 0, 88);
        *&v71.var10 = v32;
        *&v71.var12 = 0;
        if (CIKernelReflection::reflect(&v71, Pool, v19, 0))
        {
          break;
        }

LABEL_41:
        *&v70.var0 = &v71.var6;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v70);
        if (v71.var5.var0)
        {
          v71.var5.var1 = v71.var5.var0;
          operator delete(v71.var5.var0);
        }

        v19 = (v19 + 1);
        if (NumKernels == v19)
        {
          goto LABEL_44;
        }
      }

      memset(&v70.var2, 0, 88);
      *&v70.var10 = vdupq_n_s64(1uLL);
      *&v70.var12 = 0;
      if (v30 && CIKernelReflection::reflect(&v70, v30, v71.var2, 0))
      {
        CIKernelReflection::consolidate(&v71, &v70, v65);
        *&v71.var0 = *v65;
        *&v71.var3 = *&v65[2];
        if (v71.var5.var0)
        {
          v71.var5.var1 = v71.var5.var0;
          operator delete(v71.var5.var0);
        }

        v71.var5 = *&v65[4];
        memset(&v65[4], 0, 24);
        std::vector<std::string>::__vdeallocate(&v71.var6);
        v71.var6 = v66;
        memset(&v66, 0, sizeof(v66));
        *&v71.var7 = v67;
        *&v71.var10 = v68;
        *&v71.var12 = v69;
        v72 = &v66;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v72);
        if (v65[4])
        {
          v65[5] = v65[4];
          operator delete(v65[4]);
        }
      }

      if (v71.var0 > 2)
      {
        if (v71.var0 == 3)
        {
          v24 = [CIWarpKernel alloc];
          v41[0] = *&v71.var0;
          v41[1] = *&v71.var3;
          v43 = 0;
          v44 = 0;
          v42 = 0;
          if (v71.var5.var1 != v71.var5.var0)
          {
            std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v42, v71.var5.var1 - v71.var5.var0);
          }

          memset(v45, 0, sizeof(v45));
          std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v45, v71.var6.var0, v71.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v71.var6.var1 - v71.var6.var0) >> 3));
          v46 = *&v71.var7;
          v47 = *&v71.var10;
          v48 = *&v71.var12;
          [v31 addObject:{-[CIKernel _initWithReflection:](v24, "_initWithReflection:", v41, v29)}];
          v65[0] = v45;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v65);
          v21 = v42;
          if (!v42)
          {
            goto LABEL_39;
          }

          v43 = v42;
        }

        else
        {
          if (v71.var0 != 4)
          {
            goto LABEL_39;
          }

          v22 = [CIBlendKernel alloc];
          v33[0] = *&v71.var0;
          v33[1] = *&v71.var3;
          v35 = 0;
          v36 = 0;
          v34 = 0;
          if (v71.var5.var1 != v71.var5.var0)
          {
            std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v34, v71.var5.var1 - v71.var5.var0);
          }

          memset(v37, 0, sizeof(v37));
          std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v37, v71.var6.var0, v71.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v71.var6.var1 - v71.var6.var0) >> 3));
          v38 = *&v71.var7;
          v39 = *&v71.var10;
          v40 = *&v71.var12;
          [v31 addObject:{-[CIKernel _initWithReflection:](v22, "_initWithReflection:", v33)}];
          v65[0] = v37;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v65);
          v21 = v34;
          if (!v34)
          {
            goto LABEL_39;
          }

          v35 = v34;
        }
      }

      else if (v71.var0 == 1)
      {
        v23 = [CIKernel alloc];
        v57[0] = *&v71.var0;
        v57[1] = *&v71.var3;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        if (v71.var5.var1 != v71.var5.var0)
        {
          std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v58, v71.var5.var1 - v71.var5.var0);
        }

        memset(v61, 0, sizeof(v61));
        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v61, v71.var6.var0, v71.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v71.var6.var1 - v71.var6.var0) >> 3));
        v62 = *&v71.var7;
        v63 = *&v71.var10;
        v64 = *&v71.var12;
        [v31 addObject:{-[CIKernel _initWithReflection:](v23, "_initWithReflection:", v57)}];
        v65[0] = v61;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v65);
        v21 = v58;
        if (!v58)
        {
          goto LABEL_39;
        }

        v59 = v58;
      }

      else
      {
        if (v71.var0 != 2)
        {
          goto LABEL_39;
        }

        v20 = [CIColorKernel alloc];
        v49[0] = *&v71.var0;
        v49[1] = *&v71.var3;
        __dst = 0;
        v52 = 0;
        v50 = 0;
        if (v71.var5.var1 != v71.var5.var0)
        {
          std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v50, v71.var5.var1 - v71.var5.var0);
        }

        memset(v53, 0, sizeof(v53));
        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v53, v71.var6.var0, v71.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v71.var6.var1 - v71.var6.var0) >> 3));
        v54 = *&v71.var7;
        v55 = *&v71.var10;
        v56 = *&v71.var12;
        [v31 addObject:{-[CIKernel _initWithReflection:](v20, "_initWithReflection:", v49)}];
        v65[0] = v53;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v65);
        v21 = v50;
        if (!v50)
        {
          goto LABEL_39;
        }

        __dst = v50;
      }

      operator delete(v21);
LABEL_39:
      v65[0] = &v70.var6;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v65);
      if (v70.var5.var0)
      {
        v70.var5.var1 = v70.var5.var0;
        operator delete(v70.var5.var0);
      }

      goto LABEL_41;
    }

LABEL_44:
    fosl_filter_kernelpool_destroyPool(Pool);
    v25 = uselocale(v29);
    freelocale(v25);
    if (v30)
    {
      v26 = @"kernelsWithString_andMetalLibrary";
    }

    else
    {
      v26 = @"kernelsWithString";
    }

    CoreAnalytics(&cfstr_Cikernel.isa, &v26->isa, NumKernels);
    goto LABEL_49;
  }

  v28 = ci_logger_compile(v17, v18);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    +[CIKernel kernelsWithString:andCIKernelLibrary:messageLog:];
  }

  CIKLLibraryMaker::~CIKLLibraryMaker(&v71);
LABEL_49:
  objc_autoreleasePoolPop(v8);
  return v31;
}

+ (id)kernelsWithString:(id)string fromMetalLibraryData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v15 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString:fromMetalLibraryData", "%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __51__CIKernel_kernelsWithString_fromMetalLibraryData___block_invoke;
  v12 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelsWithString:fromMetalLibraryData:]"))
  {
    v8 = [objc_opt_class() kernelsWithString:string andCIKernelLibrary:+[CIKernelLibrary libraryWithData:error:](CIKernelLibrary messageLog:{"libraryWithData:error:", data, 0), 0}];
  }

  else
  {
    v8 = 0;
  }

  (v11)(v10);
  return v8;
}

void __51__CIKernel_kernelsWithString_fromMetalLibraryData___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString:fromMetalLibraryData", "%{public}@", &v5, 0xCu);
  }
}

+ (id)kernelsWithString:(id)string messageLog:(id)log
{
  if (!check_cikl_string(string, "+[CIKernel kernelsWithString:messageLog:]"))
  {
    return 0;
  }

  v6 = objc_opt_class();

  return [v6 kernelsWithString:string andCIKernelLibrary:0 messageLog:log];
}

+ (NSArray)kernelsWithString:(NSString *)string
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v13 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString", "%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __30__CIKernel_kernelsWithString___block_invoke;
  v10 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelsWithString:]"))
  {
    v6 = [objc_opt_class() kernelsWithString:string andCIKernelLibrary:0 messageLog:0];
  }

  else
  {
    v6 = 0;
  }

  (v9)(v8);
  return v6;
}

void __30__CIKernel_kernelsWithString___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString", "%{public}@", &v5, 0xCu);
  }
}

+ (NSArray)kernelsWithMetalString:(NSString *)source error:(NSError *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v7))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithMetalString", "%{public}@", &buf, 0xCu);
  }

  v27 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __41__CIKernel_kernelsWithMetalString_error___block_invoke;
  v30 = &unk_1E75C2AA0;
  selfCopy = self;
  v8 = [CIKernelLibrary libraryWithSource:source error:&v27];
  v9 = v8;
  if (!v8)
  {
    v17 = @"Cannot initialize a library with the provided Metal source";
    v18 = 13;
    if (!error)
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v27)
    {
      v19 = *MEMORY[0x1E696AA08];
      v33[0] = @"CINonLocalizedDescriptionKey";
      v33[1] = v19;
      *&buf = v17;
      *(&buf + 1) = v27;
      v20 = 2;
    }

    else
    {
      v33[0] = @"CINonLocalizedDescriptionKey";
      *&buf = v17;
      v20 = 1;
    }

    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v33 count:v20];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:v18 userInfo:v21];
    goto LABEL_25;
  }

  functionNames = [(CIKernelLibrary *)v8 functionNames];
  v11 = [functionNames count];
  if (!v11)
  {
    v17 = @"Cannot find a valid stitchable Metal function in the source";
    v18 = 12;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [functionNames countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v13)
  {
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(functionNames);
        }

        v16 = [CIKernel kernelWithFunctionName:*(*(&v23 + 1) + 8 * i) fromCIKernelLibrary:v9 options:0 error:&v27];
        if (v16)
        {
          [(NSArray *)v12 addObject:v16];
        }
      }

      v13 = [functionNames countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v13);
  }

  if (![(NSArray *)v12 count])
  {
    v17 = @"Cannot find a valid Metal function in the source";
    v18 = 14;
    if (error)
    {
      goto LABEL_21;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  CoreAnalytics(&cfstr_Cikernel.isa, &cfstr_Kernelswithmet.isa, v11);
LABEL_26:
  (v29)(v28);
  return v12;
}

void __41__CIKernel_kernelsWithMetalString_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithMetalString", "%{public}@", &v5, 0xCu);
  }
}

- (CIKernel)initWithString:(id)string
{
  if (check_cikl_string(string, "[CIKernel initWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:1 isInternal:0];
  }

  else
  {

    return 0;
  }
}

+ (CIKernel)kernelWithString:(NSString *)string
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v14 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __29__CIKernel_kernelWithString___block_invoke;
  v11 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelWithString:]"))
  {
    v6 = [[self alloc] initWithString:string];
    if (v6)
    {
      v7 = [objc_opt_class() description];
      CoreAnalytics(v7, &cfstr_Kernelwithstri.isa, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  (v10)(v9);
  return v6;
}

void __29__CIKernel_kernelWithString___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", &v5, 0xCu);
  }
}

+ (CIKernel)kernelWithString:(id)string fromMetalLibraryData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v16 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:fromMetalLibraryData", "%{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __50__CIKernel_kernelWithString_fromMetalLibraryData___block_invoke;
  v13 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelWithString:fromMetalLibraryData:]"))
  {
    if (data)
    {
      v8 = [[self alloc] _initWithString:string andCIKernelLibrary:+[CIKernelLibrary libraryWithData:error:](CIKernelLibrary usingCruftCompatibility:"libraryWithData:error:" isInternal:{data, 0), 0, 0}];
    }

    else
    {
      v8 = [self kernelWithString:string];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  (v12)(v11);
  return v9;
}

void __50__CIKernel_kernelWithString_fromMetalLibraryData___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:fromMetalLibraryData", "%{public}@", &v5, 0xCu);
  }
}

+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data error:(NSError *)error
{
  v8 = objc_opt_class();

  return [v8 kernelWithFunctionName:name fromMetalLibraryData:data options:0 error:error];
}

+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data outputPixelFormat:(CIFormat)format error:(NSError *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel kernelWithFunctionName:fromMetalLibraryData:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 kernelWithFunctionName:name fromMetalLibraryData:data options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data outputGroupSize:(CGSize)size error:(id *)error
{
  v6 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CIKernel *)v6 kernelWithFunctionName:v7 fromMetalLibraryData:v8 outputGroupSize:v9 error:v10, v11, v12, v13];
  }

  return 0;
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() kernelWithFunctionName:name fromMetalLibraryData:data options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data options:(id)options error:(id *)error
{
  v36[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibraryData", "%{public}@ %{public}@", buf, 0x16u);
  }

  v29 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __70__CIKernel_kernelWithFunctionName_fromMetalLibraryData_options_error___block_invoke;
  v32 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary libraryWithData:data error:&v29];
  if (v12)
  {
    v14 = [objc_opt_class() kernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
    if (v14)
    {
      v15 = dyld_program_sdk_at_least();
      if (error)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        *error = 0;
      }
    }
  }

  else
  {
    if (error)
    {
      if (v29)
      {
        v17 = *MEMORY[0x1E696AA08];
        v36[0] = @"CINonLocalizedDescriptionKey";
        v36[1] = v17;
        *buf = @"Cannot initialize kernel with given library data.";
        *&buf[8] = v29;
        v18 = 2;
      }

      else
      {
        v36[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library data.";
        v18 = 1;
      }

      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v36 count:v18];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v19];
      *error = v12;
    }

    v20 = ci_logger_api(v12, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v20 kernelWithFunctionName:v21 fromMetalLibraryData:v22 options:v23 error:v24, v25, v26, v27];
    }

    v14 = 0;
  }

  (v31)(v30);
  return v14;
}

void __70__CIKernel_kernelWithFunctionName_fromMetalLibraryData_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibraryData", "%{public}@ %{public}@", &v6, 0x16u);
  }
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error
{
  v8 = objc_opt_class();

  return [v8 kernelWithFunctionName:name fromMetalLibrary:library options:0 error:error];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel kernelWithFunctionName:fromMetalLibrary:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 kernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() kernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", buf, 0x16u);
  }

  v27 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __66__CIKernel_kernelWithFunctionName_fromMetalLibrary_options_error___block_invoke;
  v30 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary libraryWithURL:library error:&v27];
  if (v12)
  {
    v14 = [objc_opt_class() kernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
  }

  else
  {
    if (error)
    {
      if (v27)
      {
        v15 = *MEMORY[0x1E696AA08];
        v34[0] = @"CINonLocalizedDescriptionKey";
        v34[1] = v15;
        *buf = @"Cannot initialize kernel with given library URL.";
        *&buf[8] = v27;
        v16 = 2;
      }

      else
      {
        v34[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library URL.";
        v16 = 1;
      }

      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v34 count:v16];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v17];
      *error = v12;
    }

    v18 = ci_logger_api(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v18 kernelWithFunctionName:v19 fromMetalLibrary:v20 options:v21 error:v22, v23, v24, v25];
    }

    v14 = 0;
  }

  (v29)(v28);
  return v14;
}

void __66__CIKernel_kernelWithFunctionName_fromMetalLibrary_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", &v6, 0x16u);
  }
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error
{
  v8 = objc_opt_class();

  return [v8 cachedKernelWithFunctionName:name fromMetalLibrary:library options:0 error:error];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel cachedKernelWithFunctionName:fromMetalLibrary:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 cachedKernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() cachedKernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", buf, 0x16u);
  }

  v27 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __72__CIKernel_cachedKernelWithFunctionName_fromMetalLibrary_options_error___block_invoke;
  v30 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary cachedLibraryWithURL:library error:&v27];
  if (v12)
  {
    v14 = [objc_opt_class() cachedKernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
  }

  else
  {
    if (error)
    {
      if (v27)
      {
        v15 = *MEMORY[0x1E696AA08];
        v34[0] = @"CINonLocalizedDescriptionKey";
        v34[1] = v15;
        *buf = @"Cannot initialize kernel with given library URL.";
        *&buf[8] = v27;
        v16 = 2;
      }

      else
      {
        v34[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library URL.";
        v16 = 1;
      }

      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v34 count:v16];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v17];
      *error = v12;
    }

    v18 = ci_logger_api(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v18 cachedKernelWithFunctionName:v19 fromMetalLibrary:v20 options:v21 error:v22, v23, v24, v25];
    }

    v14 = 0;
  }

  (v29)(v28);
  return v14;
}

void __72__CIKernel_cachedKernelWithFunctionName_fromMetalLibrary_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v3))
  {
    v4 = [*(a1 + 32) description];
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", &v6, 0x16u);
  }
}

+ (CIKernel)kernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error
{
  v158 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v137 = [options objectForKeyedSubscript:@"kCIKernelFunctionConstants"];
  memset(&v154.var2, 0, 88);
  *&v154.var10 = vdupq_n_s64(1uLL);
  *&v154.var12 = 0;
  v11 = [options objectForKeyedSubscript:@"kCIKernelOutputFormat"];
  if (!CI_ENABLE_METAL_DAG())
  {
    v12 = CIKernelError(error, 7u, &cfstr_CannotInitiali_2.isa);
    v14 = ci_logger_api(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v14 kernelWithFunctionName:v15 fromCIKernelLibrary:v16 options:v17 error:v18, v19, v20, v21];
    }

    goto LABEL_7;
  }

  if (!CIKernelReflection::reflect(&v154, library, [name UTF8String], error))
  {
LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  if (v137)
  {
    obj = CIKernelReflection::reflectConstants(&v154);
  }

  else
  {
    obj = 0;
  }

  intValue = [v11 intValue];
  v28 = CI::format_modernize(intValue, "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]", v27);
  if (v28)
  {
    v154.var9 = v28;
  }

  if (dyld_program_sdk_at_least())
  {
    v29 = objc_opt_class();
    if (v29 == objc_opt_class() && v154.var0 == 2 && (v154.var5.var1 - v154.var5.var0) == 8)
    {
      if ((v30 = v154.var5.var0[1], *v154.var5.var0 == 8) && v30 == 8 || *v154.var5.var0 == 15 && v30 == 15)
      {
        v154.var0 = 4;
      }
    }

    v31 = objc_opt_class();
    if (v31 == objc_opt_class() && v154.var0 == 2)
    {
      v32 = CIKernelError(error, 0xCu, &cfstr_CannotInitiali_3.isa);
      v34 = ci_logger_api(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v34 kernelWithFunctionName:v35 fromCIKernelLibrary:v36 options:v37 error:v38, v39, v40, v41];
      }

      goto LABEL_7;
    }

    v42 = objc_opt_class();
    if (v42 == objc_opt_class() && v154.var0 == 3)
    {
      v43 = CIKernelError(error, 0xDu, &cfstr_CannotInitiali_4.isa);
      v45 = ci_logger_api(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v45 kernelWithFunctionName:v46 fromCIKernelLibrary:v47 options:v48 error:v49, v50, v51, v52];
      }

      goto LABEL_7;
    }

    v53 = objc_opt_class();
    if (v53 == objc_opt_class() && v154.var0 == 1)
    {
      v54 = CIKernelError(error, 0xEu, &cfstr_CannotInitiali_5.isa);
      v56 = ci_logger_api(v54, v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v56 kernelWithFunctionName:v57 fromCIKernelLibrary:v58 options:v59 error:v60, v61, v62, v63];
      }

      goto LABEL_7;
    }

    v64 = objc_opt_class();
    if (v64 == objc_opt_class() && v154.var0 == 1)
    {
      v65 = CIKernelError(error, 0xFu, &cfstr_CannotInitiali_6.isa);
      v67 = ci_logger_api(v65, v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v67 kernelWithFunctionName:v68 fromCIKernelLibrary:v69 options:v70 error:v71, v72, v73, v74];
      }

      goto LABEL_7;
    }

    v75 = objc_opt_class();
    if (v75 == objc_opt_class() && v154.var0 == 1)
    {
      v76 = CIKernelError(error, 0x10u, &cfstr_CannotInitiali_7.isa);
      v78 = ci_logger_api(v76, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v78 kernelWithFunctionName:v79 fromCIKernelLibrary:v80 options:v81 error:v82, v83, v84, v85];
      }

      goto LABEL_7;
    }

    v86 = objc_opt_class();
    if (v86 == objc_opt_class() && v154.var0 == 2)
    {
      v87 = CIKernelError(error, 0x11u, &cfstr_CannotInitiali_8.isa);
      v89 = ci_logger_api(v87, v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v89 kernelWithFunctionName:v90 fromCIKernelLibrary:v91 options:v92 error:v93, v94, v95, v96];
      }

      goto LABEL_7;
    }

    v97 = objc_opt_class();
    if (v97 == objc_opt_class() && v154.var0 == 3)
    {
      v98 = CIKernelError(error, 0x12u, &cfstr_CannotInitiali_9.isa);
      v100 = ci_logger_api(v98, v99);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v100 kernelWithFunctionName:v101 fromCIKernelLibrary:v102 options:v103 error:v104, v105, v106, v107];
      }

      goto LABEL_7;
    }
  }

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v109 = [obj countByEnumeratingWithState:&v150 objects:v157 count:16];
  if (v109)
  {
    v110 = *v151;
    while (2)
    {
      v111 = 0;
      do
      {
        if (*v151 != v110)
        {
          objc_enumerationMutation(obj);
        }

        v112 = *(*(&v150 + 1) + 8 * v111);
        v113 = [v137 objectForKey:v112];
        v114 = [objc_msgSend(obj objectForKeyedSubscript:{v112), "intValue"}];
        if (v114 > 0x35 || ((1 << v114) & 0x22222220010008) == 0)
        {
          if (v114 - 57 <= 0xFFFFFFC9)
          {
            v131 = CIKernelError(error, 8u, &cfstr_CannotInitiali_10.isa, v114);
            v133 = ci_logger_api(v131, v132);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }

          if (!v113)
          {
LABEL_86:
            v122 = CIKernelError(error, 9u, &cfstr_CannotInitiali_11.isa, v112);
            v124 = ci_logger_api(v122, v123);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_90;
          }

          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v116 = [v113 countByEnumeratingWithState:&v146 objects:v156 count:16];
          if (v116)
          {
            v134 = v110;
            errorCopy = error;
            v117 = *v147;
            v118 = 1;
            do
            {
              for (i = 0; i != v116; ++i)
              {
                if (*v147 != v117)
                {
                  objc_enumerationMutation(v113);
                }

                objc_opt_class();
                v118 &= objc_opt_isKindOfClass();
              }

              v116 = [v113 countByEnumeratingWithState:&v146 objects:v156 count:16];
            }

            while (v116);
            error = errorCopy;
            v110 = v134;
            if ((v118 & 1) == 0)
            {
LABEL_90:
              v128 = CIKernelError(error, 0xBu, &cfstr_CannotInitiali_13.isa, v112);
              v130 = ci_logger_api(v128, v129);
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
              }

              goto LABEL_7;
            }
          }
        }

        else
        {
          if (!v113)
          {
            goto LABEL_86;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v125 = CIKernelError(error, 0xAu, &cfstr_CannotInitiali_12.isa, v112);
            v127 = ci_logger_api(v125, v126);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }
        }

        ++v111;
      }

      while (v111 != v109);
      v120 = [obj countByEnumeratingWithState:&v150 objects:v157 count:16];
      v109 = v120;
      if (v120)
      {
        continue;
      }

      break;
    }
  }

  v121 = KernelKindAlloc(v154.var0, v108);
  v138[0] = *&v154.var0;
  v138[1] = *&v154.var3;
  __dst = 0;
  v141 = 0;
  v139 = 0;
  if (v154.var5.var1 != v154.var5.var0)
  {
    std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v139, v154.var5.var1 - v154.var5.var0);
  }

  memset(v142, 0, sizeof(v142));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v142, v154.var6.var0, v154.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v154.var6.var1 - v154.var6.var0) >> 3));
  v143 = *&v154.var7;
  v144 = *&v154.var10;
  v145 = *&v154.var12;
  v22 = [v121 _initWithReflection:v138 constants:v137 constantTypes:obj];
  p_var6 = v142;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
  if (v139)
  {
    __dst = v139;
    operator delete(v139);
  }

LABEL_8:
  if (error)
  {
    v23 = *error;
    p_var6 = &v154.var6;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
    if (v154.var5.var0)
    {
      v154.var5.var1 = v154.var5.var0;
      operator delete(v154.var5.var0);
    }

    objc_autoreleasePoolPop(v10);
    v24 = *error;
  }

  else
  {
    p_var6 = &v154.var6;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
    if (v154.var5.var0)
    {
      v154.var5.var1 = v154.var5.var0;
      operator delete(v154.var5.var0);
    }

    objc_autoreleasePoolPop(v10);
  }

  return v22;
}

+ (NSArray)kernelNamesFromMetalLibraryData:(NSData *)data
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_kernel(self, a2);
  isKindOfClass = os_signpost_enabled(v4);
  if (isKindOfClass)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibraryData", &unk_19CFBCBAE, buf, 2u);
  }

  if (!data || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) || (isKindOfClass = [(NSData *)data length]) == 0)
  {
    v12 = ci_logger_api(isKindOfClass, v6);
    functionNames = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (functionNames)
    {
      [(CIKernel *)v12 kernelNamesFromMetalLibraryData:v10, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_10;
  }

  v22 = 0;
  v7 = [CIKernelLibrary libraryWithData:data error:&v22];
  if (!v7)
  {
    v20 = ci_logger_api(0, v8);
    functionNames = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (functionNames)
    {
      if (v22)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@" = %@", v22];
      }

      else
      {
        v21 = &stru_1F1040378;
      }

      [(CIKernel *)v21 kernelNamesFromMetalLibraryData:buf];
    }

LABEL_10:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_11;
  }

  functionNames = [(CIKernelLibrary *)v7 functionNames];
  v11 = functionNames;
LABEL_11:
  __44__CIKernel_kernelNamesFromMetalLibraryData___block_invoke(functionNames, v10);
  return v11;
}

void __44__CIKernel_kernelNamesFromMetalLibraryData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibraryData", &unk_19CFBCBAE, v3, 2u);
  }
}

+ (id)kernelNamesFromMetalLibrary:(id)library
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_kernel(self, a2);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibrary", &unk_19CFBCBAE, buf, 2u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = ci_logger_api(isKindOfClass, v6);
    functionNames = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (functionNames)
    {
      [(CIKernel *)v12 kernelNamesFromMetalLibrary:v10, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_13;
  }

  v22 = 0;
  v7 = [CIKernelLibrary libraryWithURL:library error:&v22];
  if (!v7)
  {
    v19 = ci_logger_api(0, v8);
    functionNames = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (functionNames)
    {
      if (v22)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" = %@", v22];
      }

      else
      {
        v20 = &stru_1F1040378;
      }

      [(CIKernel *)v20 kernelNamesFromMetalLibrary:buf];
    }

LABEL_13:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  functionNames = [(CIKernelLibrary *)v7 functionNames];
  v11 = functionNames;
LABEL_14:
  __40__CIKernel_kernelNamesFromMetalLibrary___block_invoke(functionNames, v10);
  return v11;
}

void __40__CIKernel_kernelNamesFromMetalLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = ci_signpost_log_kernel(a1, a2);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibrary", &unk_19CFBCBAE, v3, 2u);
  }
}

- (BOOL)preservesOpacity
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)perservesAlpha
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPerservesAlpha:(BOOL)alpha
{
  v11 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v5 = *(priv + 4);
  v6 = ci_logger_api(self, a2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 136446210;
      v10 = "[CIKernel setPerservesAlpha:]";
      v8 = "%{public}s is deprecated. Add __attribute__((preserves_opacity)) to the CIKL source instead.";
LABEL_6:
      _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136446210;
    v10 = "[CIKernel setPerservesAlpha:]";
    v8 = "%{public}s is deprecated. Add [[stitchable,user_annotation(kCIPreservesOpacity)]] to the Metal source instead.";
    goto LABEL_6;
  }

  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    CI::Kernel::set_preserves_alpha(priv, alpha);
  }
}

- (BOOL)preservesRange
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 156);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPreservesRange:(BOOL)range
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_preserves_range(priv, range);
  }
}

- (BOOL)canReduceOutputChannels
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 152);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setCanReduceOutputChannels:(BOOL)channels
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_can_reduce_output_channels(priv, channels);
  }
}

- (CGSize)outputGroupSize
{
  priv = self->_priv;
  v3 = priv[15];
  v4 = priv[16];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSString)name
{
  priv = self->_priv;
  if (priv)
  {
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:priv[3]];
  }

  else
  {
    return 0;
  }
}

- (void)setROISelector:(SEL)method
{
  priv = self->_priv;
  v4 = NSStringFromSelector(method);
  if ((atomic_load_explicit(byte_1ED7C44C0, memory_order_acquire) & 1) == 0)
  {
    v5 = v4;
    [CIKernel setROISelector:];
    v4 = v5;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CIKernel_setROISelector___block_invoke;
  block[3] = &unk_1E75C2B18;
  block[4] = v4;
  block[5] = priv;
  dispatch_sync(_MergedGlobals_2, block);
}

- (SEL)ROISelector
{
  result = *(self->_priv + 13);
  if (result)
  {
    return NSSelectorFromString(result);
  }

  return result;
}

- (BOOL)_isValidOutputPixelFormat:(int)format
{
  v17 = *MEMORY[0x1E69E9840];
  if (format)
  {
    v4 = 0;
    while (dword_19CF278D8[v4] != format)
    {
      if (++v4 == 6)
      {
        v5 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F1040378];
        for (i = 0; i != 6; ++i)
        {
          if (i * 4)
          {
            v7 = @", kCIFormat";
          }

          else
          {
            v7 = @"kCIFormat";
          }

          [v5 appendString:v7];
          v8 = [v5 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", CI::name_for_format(dword_19CF278D8[i]))}];
        }

        v10 = ci_logger_api(v8, v9);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v11)
        {
          v13 = 136446466;
          v14 = CI::name_for_format(format);
          v15 = 2112;
          v16 = v5;
          _os_log_impl(&dword_19CC36000, v10, OS_LOG_TYPE_INFO, "kCIKernelOutputFormat value (%{public}s) is not supported.Use one of these formats instead: %@", &v13, 0x16u);
          LOBYTE(v11) = 0;
        }

        return v11;
      }
    }
  }

  LOBYTE(v11) = 1;
  return v11;
}

- (int)_outputFormatUsingDictionary:(id)dictionary andKernel:(void *)kernel
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(dictionary objectForKey:{@"kCIKernelOutputFormat", "longValue"}];
  v7 = [(CIKernel *)self _isValidOutputPixelFormat:v6];
  v9 = *(kernel + 28);
  if (v7)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!v9 || ![(CIKernel *)self _isValidOutputPixelFormat:*(kernel + 28)])
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      if (v9 != v6)
      {
        v12 = ci_logger_api(v7, v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = CI::name_for_format(v6);
          v14 = CI::name_for_format(*(kernel + 28));
          v15 = 136446466;
          v16 = v13;
          v17 = 2080;
          v18 = v14;
          _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_INFO, "Warning: specified a kernel attribute output format of %{public}s and apply option kCIKernelOutputFormat of %s. The former will be used.", &v15, 0x16u);
        }
      }
    }

    v9 = v6;
  }

  if (v9 == 264)
  {
    return 266;
  }

  else
  {
    return v9;
  }
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(extent))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    priv = self->_priv;
    v11 = [arguments count];
    v12 = CI::Kernel::num_apply_arguments(priv);
    if (v12 == v11)
    {
      callbackCopy = callback;
      if (v11 < 1)
      {
LABEL_24:
        operator new();
      }

      v14 = 0;
      while (1)
      {
        if (priv[12] == 1)
        {
          type = CI::KernelArguments::get_type((priv + 136), v14);
        }

        else if (v14 >= *(priv + 5))
        {
          type = 0;
        }

        else
        {
          type = *(*(priv + 8) + 4 * v14);
        }

        if (*(*priv + 72))(priv) && !*(priv + 4) && (type == 15 || type == 8) && ([arguments objectAtIndexedSubscript:{v14, callbackCopy}], objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          CI::Kernel::set_argument_type(priv, v14, 1);
          CI::Kernel::set_half_color_inputs(priv, type == 15);
        }

        else
        {
          v16 = verify_argument_type([arguments objectAtIndexedSubscript:{v14, callbackCopy}], type, 0);
          if ((v16 & 1) == 0)
          {
            v19 = ci_logger_api(v16, v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = *(priv + 3);
              v21 = expected_argument_type(type);
              [arguments objectAtIndexedSubscript:v14];
              __src = 136447234;
              __src_4 = "[CIKernel applyWithExtent:roiCallback:arguments:options:]";
              v25 = 2082;
              v26 = v20;
              v27 = 1024;
              v28 = v14;
              v29 = 2082;
              v30 = v21;
              v31 = 2114;
              v32 = [objc_opt_class() description];
              _os_log_error_impl(&dword_19CC36000, v19, OS_LOG_TYPE_ERROR, "%{public}s type mismatch for kernel '%{public}s' parameter %d. %{public}sGot %{public}@.", &__src, 0x30u);
            }

            return 0;
          }
        }

        if ((v11 & 0x7FFFFFFF) == ++v14)
        {
          goto LABEL_24;
        }
      }
    }

    v18 = ci_logger_api(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CIKernel applyWithExtent:? roiCallback:? arguments:? options:?];
    }

    return 0;
  }
}

+ (id)colorMatrixBiasKernel
{
  v2 = [(CIKernel *)[CIColorKernel alloc] _initWithInternalRepresentation:&CI::_ci_colormatrix_canonical];

  return v2;
}

- (id)parameters
{
  v42[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v3 = CI::Kernel::num_apply_arguments(priv);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    for (i = 0; v3 != i; ++i)
    {
      if (priv[12] == 1)
      {
        type = CI::KernelArguments::get_type((priv + 136), i);
        if (priv[12])
        {
          if (!CI::KernelArguments::get_name((priv + 136), i))
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      else if (i >= *(priv + 5))
      {
        type = 0;
      }

      else
      {
        type = *(*(priv + 8) + 4 * i);
      }

      if (i >= *(priv + 5) || !*(*(priv + 9) + 8 * i))
      {
LABEL_13:
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_arg%d", i];
        goto LABEL_14;
      }

LABEL_12:
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
LABEL_14:
      switch(type)
      {
        case 1:
        case 2:
        case 3:
          v41[0] = @"CIAttributeClass";
          v41[1] = @"CIAttributeName";
          v42[0] = @"CISampler";
          v42[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v42;
          v10 = v41;
          goto LABEL_31;
        case 4:
          v39[0] = @"CIAttributeClass";
          v39[1] = @"CIAttributeName";
          v40[0] = @"Sampler2D";
          v40[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v40;
          v10 = v39;
          goto LABEL_31;
        case 5:
        case 12:
        case 19:
        case 23:
          v37[0] = @"CIAttributeClass";
          v37[1] = @"CIAttributeName";
          v38[0] = @"NSNumber";
          v38[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v38;
          v10 = v37;
          goto LABEL_31;
        case 6:
        case 13:
          v35[0] = @"CIAttributeClass";
          v35[1] = @"CIVectorSize";
          v36[0] = @"CIVector";
          v36[1] = &unk_1F1081E30;
          v35[2] = @"CIAttributeName";
          v36[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v36;
          v10 = v35;
          goto LABEL_29;
        case 7:
        case 14:
          v31[0] = @"CIAttributeClass";
          v31[1] = @"CIVectorSize";
          v32[0] = @"CIVector";
          v32[1] = &unk_1F1081E48;
          v31[2] = @"CIAttributeName";
          v32[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v32;
          v10 = v31;
          goto LABEL_29;
        case 8:
        case 15:
          v27[0] = @"CIAttributeClass";
          v27[1] = @"CIVectorSize";
          v28[0] = @"CIVector";
          v28[1] = &unk_1F1081E60;
          v27[2] = @"CIAttributeName";
          v28[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v28;
          v10 = v27;
          goto LABEL_29;
        case 9:
        case 16:
          v23[0] = @"CIAttributeClass";
          v23[1] = @"CIVectorSize";
          v24[0] = @"CIVector";
          v24[1] = &unk_1F1081E60;
          v23[2] = @"CIAttributeName";
          v24[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v24;
          v10 = v23;
          goto LABEL_29;
        case 10:
        case 17:
          v21[0] = @"CIAttributeClass";
          v21[1] = @"CIVectorSize";
          v22[0] = @"CIVector";
          v22[1] = &unk_1F1081E78;
          v21[2] = @"CIAttributeName";
          v22[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v22;
          v10 = v21;
          goto LABEL_29;
        case 11:
        case 18:
          v19[0] = @"CIAttributeClass";
          v19[1] = @"CIVectorSize";
          v20[0] = @"CIVector";
          v20[1] = &unk_1F1081E90;
          v19[2] = @"CIAttributeName";
          v20[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v20;
          v10 = v19;
          goto LABEL_29;
        case 20:
        case 24:
          v33[0] = @"CIAttributeClass";
          v33[1] = @"NSArrayCount";
          v34[0] = @"NSArray";
          v34[1] = &unk_1F1081E30;
          v33[2] = @"CIAttributeName";
          v34[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v34;
          v10 = v33;
          goto LABEL_29;
        case 21:
        case 25:
          v29[0] = @"CIAttributeClass";
          v29[1] = @"NSArrayCount";
          v30[0] = @"NSArray";
          v30[1] = &unk_1F1081E48;
          v29[2] = @"CIAttributeName";
          v30[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v30;
          v10 = v29;
          goto LABEL_29;
        case 22:
        case 26:
          v25[0] = @"CIAttributeClass";
          v25[1] = @"NSArrayCount";
          v26[0] = @"NSArray";
          v26[1] = &unk_1F1081E60;
          v25[2] = @"CIAttributeName";
          v26[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v26;
          v10 = v25;
          goto LABEL_29;
        case 27:
          v17[0] = @"CIAttributeClass";
          v17[1] = @"CIVectorSize";
          v18[0] = @"CIColor";
          v18[1] = &unk_1F1081E60;
          v17[2] = @"CIAttributeName";
          v18[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v18;
          v10 = v17;
LABEL_29:
          v11 = 3;
          break;
        case 28:
        case 29:
          v15[0] = @"CIAttributeClass";
          v15[1] = @"CIAttributeName";
          v16[0] = @"NSData";
          v16[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v16;
          v10 = v15;
LABEL_31:
          v11 = 2;
          break;
        default:
          v13 = @"CIAttributeName";
          v14 = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = &v14;
          v10 = &v13;
          v11 = 1;
          break;
      }

      [v4 addObject:{objc_msgSend(v8, "dictionaryWithObjects:forKeys:count:", v9, v10, v11)}];
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CIKernel_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __28__CIKernel_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = (*(*v4 + 72))(v4);
  v6 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p>", v6, *(a1 + 32));
  if ([*(a1 + 32) name])
  {
    fprintf(a2, "\n    name: %s", [objc_msgSend(*(a1 + 32) "name")]);
  }

  if (v5)
  {
    fwrite("\n    metal", 0xAuLL, 1uLL, a2);
    if (*(v5 + 48) == 1)
    {
      fwrite(" stitchable", 0xBuLL, 1uLL, a2);
    }
  }

  if (*(v4 + 158) == 1)
  {
    fwrite("\n    positionInvariant", 0x16uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) preservesRange])
  {
    fwrite("\n    preservesRange", 0x13uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) preservesOpacity])
  {
    fwrite("\n    preservesOpacity", 0x15uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) canReduceOutputChannels])
  {
    fwrite("\n    canReduceOutputChannels", 0x1CuLL, 1uLL, a2);
  }

  v7 = [objc_msgSend(*(a1 + 32) "parameters")];
  v25 = v4;
  if (v7)
  {
    fwrite("\n    arguments: (", 0x11uLL, 1uLL, a2);
    if (v7 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [objc_msgSend(*(a1 + 32) "parameters")];
        v10 = [v9 objectForKeyedSubscript:@"CIAttributeName"];
        v11 = [v9 objectForKeyedSubscript:@"CIAttributeClass"];
        v12 = [v9 objectForKeyedSubscript:@"CIVectorSize"];
        [v11 UTF8String];
        if (v12)
        {
          [v12 intValue];
          [v10 UTF8String];
          fprintf(a2, "%s%s len%d %s");
        }

        else
        {
          [v10 UTF8String];
          fprintf(a2, "%s%s %s");
        }

        ++v8;
      }

      while ((v7 & 0x7FFFFFFF) != v8);
    }

    fputc(41, a2);
    v4 = v25;
  }

  v13 = (*(*v4 + 40))(v4);
  if ([v13 count])
  {
    fwrite("\n    constants: (", 0x11uLL, 1uLL, a2);
    v14 = [v13 keysSortedByValueUsingSelector:sel_compare_];
    if ([v13 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        v17 = [v13 objectForKeyedSubscript:v16];
        v18 = a2;
        if (v15)
        {
          v19 = ", ";
        }

        else
        {
          v19 = "";
        }

        v20 = [v16 UTF8String];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = "unknown";
        }

        v24 = v19;
        a2 = v18;
        fprintf(v18, "%s%s = %s", v24, v21, [objc_msgSend(v17 "description")]);
        ++v15;
      }

      while (v15 < [v13 count]);
    }

    fputc(41, a2);
    v4 = v25;
  }

  result = v4[28];
  if (result)
  {
    v23 = CI::name_for_format(result);
    return fprintf(a2, "\n    output: %s", v23);
  }

  return result;
}

+ (id)SDOFV2MetalKernelNamed:(id)named
{
  if (SDOFV2MetalLibURL::onceToken != -1)
  {
    SDOFV2MetalLibURL_cold_1();
  }

  if (!SDOFV2MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

+ (id)SDOFV3MetalKernelNamed:(id)named
{
  if (SDOFV3MetalLibURL::onceToken != -1)
  {
    +[CIKernel(SDOF) SDOFV3MetalKernelNamed:];
  }

  if (!SDOFV3MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

- (void)init
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIKernel init]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s init is not a valid initializer for CIKernel", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  _os_log_debug_impl(&dword_19CC36000, v0, OS_LOG_TYPE_DEBUG, "WARNING: CoreImage internal function name %{public}s must start with '_'\n", v1, 0xCu);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIWarpKernel kernelWithString:fromMetalLibraryData:] Function '%{public}s' does not conform to the calling conventions of a CIWarpKernel.", v2, v3, v4, v5);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIColorKernel kernelWithString:fromMetalLibraryData:] Function '%{public}s' does not conform to the calling conventions of a CIColorKernel.", v2, v3, v4, v5);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.4(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.5()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIColorKernel kernelWithString:] failed because '%{public}s', the first kernel in the string, does not conform to the calling convensions of a CIColorKernel.", v2, v3, v4, v5);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.6()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIWarpKernel kernelWithString:] failed because '%{public}s', the first kernel in the string, does not conform to the calling convensions of a CIWarpKernel.", v2, v3, v4, v5);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.7(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.8(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)kernelsWithString:andCIKernelLibrary:messageLog:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromMetalLibraryData:(uint64_t)a4 outputGroupSize:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromMetalLibraryData:outputGroupSize:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s User-specified output group size not yet supported.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromMetalLibraryData:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromMetalLibraryData:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize kernel with given library data.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromMetalLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromMetalLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize kernel with given library URL.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)cachedKernelWithFunctionName:(uint64_t)a3 fromMetalLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel cachedKernelWithFunctionName:fromMetalLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize kernel with given library URL.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.3()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIBlendKernel because the kernel appears to be a CIWarpKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIBlendKernel because the kernel appears to be a CIColorKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIBlendKernel because the kernel appears to be a CIKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIColorKernel because the kernel appears to be a CIKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIWarpKernel because the kernel appears to be a CIKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIColorKernel because the kernel appears to be a CIWarpKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize CIWarpKernel because the kernel appears to be a CIColorKernel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelWithFunctionName:(uint64_t)a3 fromCIKernelLibrary:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Cannot initialize kernel with Metal DAG compiler disabled.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelNamesFromMetalLibraryData:(uint64_t)a1 .cold.1(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_14(a1, a2, "+[CIKernel kernelNamesFromMetalLibraryData:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)kernelNamesFromMetalLibraryData:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelNamesFromMetalLibraryData:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s [CIKernel kernelNamesFromMetalLibraryData:] passed an incorrect Metal library NSData argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelNamesFromMetalLibrary:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIKernel kernelNamesFromMetalLibrary:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s [CIKernel kernelNamesFromMetalLibrary:] passed an incorrect Metal library URL argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)kernelNamesFromMetalLibrary:(uint64_t)a1 .cold.2(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_14(a1, a2, "+[CIKernel kernelNamesFromMetalLibrary:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setROISelector:.cold.1()
{
  if (__cxa_guard_acquire(byte_1ED7C44C0))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    _MergedGlobals_2 = dispatch_queue_create("CI::SetROISelectorQueue", v0);

    __cxa_guard_release(byte_1ED7C44C0);
  }
}

- (void)applyWithExtent:(CI::Kernel *)a1 roiCallback:arguments:options:.cold.1(CI::Kernel *a1)
{
  CI::Kernel::num_apply_arguments(a1);
  v7 = 136446978;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_0(&dword_19CC36000, v1, v2, "%{public}s argument count mismatch for kernel '%{public}s', expected %d but saw %d.", v3, v4, v5, v6, v7);
}

- (void)applyWithExtent:(uint64_t)a3 roiCallback:(uint64_t)a4 arguments:(uint64_t)a5 options:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIKernel applyWithExtent:roiCallback:arguments:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s no image in arguments array.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end