@interface MTLCompiler
- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForLibraryRequest:(SEL)request;
- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForStatelessCompilationRequest:(SEL)request;
- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats;
- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats;
- (BOOL)addComputePipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (BOOL)addMeshRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (BOOL)copyShaderCacheToPath:(id)path;
- (BOOL)downgradeRequest:(void *)request frameworkData:(void *)data compilerTask:(id)task error:(id *)error;
- (BOOL)initializeVendorPluginFunctionId:(id)id airScript:(const void *)script driverCompilerOptions:(id)options compiledNextStageVariant:(id)variant vendorPlugin:(id *)plugin;
- (BOOL)validateLanguageAndAIRVersionForFunction:(id)function completionHandler:(id)handler;
- (MTLCompiler)initWithTargetData:(id)data cacheUUID:(id *)d pluginPath:(id)path device:(id)device compilerFlags:(unint64_t)flags;
- (MTLHashKey)getBuiltInFunctionId:(SEL)id;
- (MTLHashKey)getFunctionId:(SEL)id;
- (MTLHashKey)getFunctionId:(SEL)id airScript:(id)script vendorPluginFunctionId:(const void *)functionId;
- (MTLHashKey)getFunctionId:(SEL)id airScript:(id)script vendorPluginFunctionId:(const void *)functionId bitcodeHashList:(id *)list;
- (RequiredFunctionKeys)requiredKeysForFunction:(SEL)function variantKey:(id)key frameworkData:(const VariantKey *)data compilerOptions:(id)options driverCompilerOptions:(int)compilerOptions airScript:(id)script archives:(const void *)archives compiledNextStageVariant:(id)self0;
- (VariantEntry)computeVariantEntryWithDescriptor:(id)descriptor airDescriptor:(id)airDescriptor options:(unint64_t)options serializedComputeDataDescriptor:(id)dataDescriptor asyncCompile:(BOOL)compile pipelineCache:(id)cache destinationBinaryArchive:(id)archive computeProgram:(MTLProgramObject *)self0 kernelDriverCompileTimeData:(id *)self1 compileTimeStatistics:(id)self2 compilerTask:(id)self3;
- (VariantEntry)tileVariantEntryWithDescriptor:(id)descriptor airDescriptor:(id)airDescriptor options:(unint64_t)options serializedTileDataDescriptor:(id)dataDescriptor asyncCompile:(BOOL)compile destinationBinaryArchive:(id)archive tileProgram:(MTLProgramObject *)program kernelDriverCompileTimeData:(id *)self0 compileTimeStatistics:(id)self1 compilerTask:(id)self2;
- (id).cxx_construct;
- (id)compileDynamicLibraryWithDescriptor:(id)descriptor computePipelineDescriptor:(id)pipelineDescriptor compilerTask:(id)task error:(id *)error;
- (id)createErrorMessageWithRequest:(id)request key:(id)key cacheType:(const char *)type itemLookedFor:(const char *)for;
- (id)createMeshStageAndLinkPipelineWithFragment:(void *)fragment fragmentVariant:(id)variant objectFunction:(id)function serializedObjectDescriptor:(id)descriptor meshFunction:(id)meshFunction serializedMeshDescriptor:(id)meshDescriptor descriptor:(id)a9 airDescriptor:(id)self0 destinationArchive:(id)self1 options:(unint64_t)self2 reflection:(id *)self3 compileStatistics:(id)self4 fragmentCompileTimeData:(id)self5 pipelineArchiverId:(id)self6 error:(id *)self7 compilerTask:(id)self8 completionHandler:(id)self9;
- (id)createVertexStageAndLinkPipelineWithFragment:(void *)fragment fragmentVariant:(id)variant vertexFunction:(id)function serializedVertexDescriptor:(id)descriptor descriptor:(id)a7 airDescriptor:(id)airDescriptor destinationArchive:(id)archive options:(unint64_t)self0 reflection:(id *)self1 compileStatistics:(id)self2 fragmentCompileTimeData:(id)self3 pipelineArchiverId:(id)self4 error:(id *)self5 compilerTask:(id)self6 completionHandler:(id)self7;
- (id)downgradeFunctionRequest:(const void *)request targetLLVMVersion:(unsigned int)version frameworkData:(void *)data compilerTask:(id)task error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptorInternal:(id)internal options:(unint64_t)options pipelineCache:(id)cache destinationBinaryArchive:(id)archive reflection:(id *)reflection error:(id *)error compilerTask:(id)task completionHandler:(id)self0;
- (id)newLinkedFunctionsBitcodeFromRequest:(id)request hashKey:(void *)key;
- (id)newRenderPipelineStateWithDescriptorInternal:(id)internal options:(unint64_t)options reflection:(id *)reflection destinationBinaryArchive:(id)archive error:(id *)error compilerTask:(id)task completionHandler:(id)handler;
- (id)newRenderPipelineStateWithTileDescriptorInternal:(id)internal options:(unint64_t)options reflection:(id *)reflection destinationBinaryArchive:(id)archive error:(id *)error compilerTask:(id)task completionHandler:(id)handler;
- (id)pipelineStateWithVariant:(VariantEntry *)variant descriptor:(id)descriptor options:(unint64_t)options computeProgram:(void *)program kernelDriverCompileTimeData:(id)data serializedComputeDataDescriptor:(id)dataDescriptor compileTimeStatistics:(id)statistics reflection:(id *)self0 error:(id *)self1 completionHandler:(id)self2;
- (id)renderPipelineStateWithTileVariant:(VariantEntry *)variant descriptor:(id)descriptor options:(unint64_t)options tileProgram:(void *)program kernelDriverCompileTimeData:(id)data serializedTileDataDescriptor:(id)dataDescriptor compileTimeStatistics:(id)statistics reflection:(id *)self0 error:(id *)self1 compilerTask:(id)self2 completionHandler:(id)self3;
- (void)addFunctionKeys:(RequiredFunctionKeys *)keys function:(id)function driverData:(id)data frameworkData:(id)frameworkData compilerOptions:(int)options;
- (void)addLegacyCompiledOutput:(id)output cachedCompiledOutput:(id)compiledOutput importedSymbols:(id)symbols importedLibraries:(id)libraries hashKey:(id)key type:(char)type functionCache:(shared_ptr<MultiLevelBinaryCache>)cache;
- (void)addLegacyCompiledOutput:(id)output importedSymbols:(id)symbols importedLibraries:(id)libraries hashKey:(id)key type:(char)type functionCache:(shared_ptr<MultiLevelBinaryCache>)cache;
- (void)cacheLegacyCompilerData:(void *)data cachedData:(void *)cachedData hashMap:(void *)map libraryData:(void *)libraryData functionCache:(shared_ptr<MultiLevelBinaryCache>)cache;
- (void)compileDynamicLibraryWithDescriptor:(id)descriptor computePipelineDescriptor:(id)pipelineDescriptor compilerTask:(id)task completionHandler:(id)handler;
- (void)compileFunction:(id)function frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)cache sync:(BOOL)sync completionHandler:(id)handler;
- (void)compileFunction:(id)function serializedData:(id)data stateData:(id)stateData options:(unint64_t)options compilerTask:(id)task completionHandler:(id)handler;
- (void)compileFunction:(id)function serializedData:(id)data stateData:(id)stateData options:(unint64_t)options completionHandler:(id)handler;
- (void)compileFunction:(id)function serializedPipelineData:(id)data stateData:(id)stateData linkDataSize:(unint64_t)size frameworkLinking:(BOOL)linking options:(unsigned int)options pipelineCache:(id)cache sync:(BOOL)self0 compilerTask:(id)self1 completionHandler:(id)self2;
- (void)compileFunction:(id)function visibleFunctions:(id)functions privateVisibleFunctions:(id)visibleFunctions visibleFunctionGroups:(id)groups frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)self0 sync:(BOOL)self1 completionHandler:(id)self2;
- (void)compileFunction:(id)function visibleFunctions:(id)functions visibleFunctionGroups:(id)groups frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)cache sync:(BOOL)self0 completionHandler:(id)self1;
- (void)compileFunctionRequest:(id)request compilerTask:(id)task completionHandler:(id)handler;
- (void)compileFunctionRequestInternal:(id)internal frameworkLinking:(BOOL)linking linkDataSize:(unint64_t)size reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler;
- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)request compilerTask:(id)task completionHandler:(id)handler;
- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)request completionHandler:(id)handler;
- (void)compileRequest:(id)request compilerTask:(id)task completionHandler:(id)handler;
- (void)compileRequestInternal:(id)internal binaryArchives:(id)archives failOnBinaryArchiveMiss:(BOOL)miss pipelineCache:(id)cache sync:(BOOL)sync compilerTask:(id)task completionHandler:(id)handler;
- (void)compileStatelessFunctionRequest:(id)request reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler;
- (void)dealloc;
- (void)generateMachOWithID:(const char *)d binaryEntries:(shared_ptr<std:(const void *)entries :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)data machOType:(unint64_t)type Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)platform bitcodeList:(id)self0 compilerTask:(id)self1 completionHandler:;
- (void)generateMachOWithID:(const char *)d binaryEntries:(shared_ptr<std:(const void *)entries :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)data machOType:(unint64_t)type Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)platform bitcodeList:(id)self0 completionHandler:;
- (void)generateMachOWithID:binaryEntries:machOSpecializedData:machOType:Path:platform:bitcodeList:compilerTask:completionHandler:;
- (void)getDataForScript:(const void *)script device:(id)device function:(id)function functionType:(unint64_t)type compilerOptions:(char *)options compilerOptionsSize:(unint64_t)size compiledNextStageVariant:(id)variant dataSize:(unint64_t *)self0;
- (void)getFunctionKeyWithRenderPipelineDescriptor:(id)descriptor options:(unint64_t)options unfilteredOptions:(unint64_t)unfilteredOptions airScript:(const void *)script function:(id)function functionType:(unint64_t)type compiledNextStageVariant:(id)variant keySize:(unint64_t *)self0 functionDriverData:(void *)self1 functionDriverSize:(unint64_t *)self2;
- (void)getHashForScript:(const void *)script device:(id)device function:(id)function functionType:(unint64_t)type compilerOptions:(char *)options compilerOptionsSize:(unint64_t)size compiledNextStageVariant:(id)variant;
- (void)getProgramObject:(id)object destinationArchive:(id)archive sourceBinaryArchives:(id)archives variantKey:(const VariantKey *)key requiredKeys:(const RequiredFunctionKeys *)keys failOnMiss:(BOOL)miss;
- (void)getProgramObjectForFunction:(id)function variantKey:(const VariantKey *)key requiredKeys:(const RequiredFunctionKeys *)keys sourceBinaryArchives:(id)archives;
- (void)initializeFunctionRequestScriptAndFunctionId:(id)id script:(const void *)script driverCompilerOptions:(id)options compiledNextStageVariant:(id)variant;
- (void)reflectionWithFunction:(id)function options:(unint64_t)options sync:(BOOL)sync pipelineLibrary:(id)library binaryArchives:(id)archives compilerTask:(id)task completionHandler:(id)handler;
- (void)releaseCompilerOutputBlocks:(void *)blocks;
- (void)releaseCompilerOutputBlocks:(void *)blocks hashMap:(void *)map;
- (void)releaseHashMaps:(void *)maps;
- (void)statelessBackendCompileRequestInternal:(void *)internal sync:(BOOL)sync compilerHash:(id *)hash reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler;
- (void)unloadShaderCaches;
@end

@implementation MTLCompiler

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (MTLCompiler)initWithTargetData:(id)data cacheUUID:(id *)d pluginPath:(id)path device:(id)device compilerFlags:(unint64_t)flags
{
  v32 = *MEMORY[0x1E69E9840];
  if (path)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLCompiler *)isKindOfClass initWithTargetData:v15 cacheUUID:v16 pluginPath:v17 device:v18 compilerFlags:v19, v20, v21, v26.__ptr_];
    }
  }

  else
  {
    [(MTLCompiler *)self initWithTargetData:a2 cacheUUID:data pluginPath:d device:0 compilerFlags:device, flags, v7, v26.__ptr_];
  }

  CC_SHA256_Init(&c);
  if ((reuseCacheOnReboot() & 1) == 0)
  {
    CC_SHA256_Update(&c, "Oct 10 2025", 0xBu);
    CC_SHA256_Update(&c, "21:39:00", 8u);
  }

  CC_SHA256_Update(&c, d, 0x20u);
  CC_SHA256_Final(md, &c);
  v22 = [path copy];
  self->_device = device;
  self->_pluginPath = v22;
  self->_compilerFlags = flags;
  self->_compilerQueue = dispatch_queue_create("compiler queue", 0);
  v23 = _MTLGetMTLCompilerLLVMVersionForDevice(device);
  self->_compilerConnectionManager = getCompilerConnectionManager(self->_device, v23);
  self->_compilerId = (*(*self->_compilerConnectionManager + 16))(self->_compilerConnectionManager, [path cStringUsingEncoding:4], data);
  v30 = *md;
  v31 = v29;
  addOrRemoveShaderFunctionCache(0, &v26);
  cntrl = self->_shaderCache.__cntrl_;
  self->_shaderCache = v26;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return self;
}

- (void)unloadShaderCaches
{
  v3 = _MTLGetLibrariesCache(self->_device);
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(v3);
    std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::erase(&v4[2], *&v4[2]._os_unfair_lock_opaque, &v4[4]);
    os_unfair_lock_unlock(v4);
    (*(**&v4[8]._os_unfair_lock_opaque + 24))(*&v4[8]._os_unfair_lock_opaque);
  }

  v5 = *(self->_shaderCache.__ptr_->var0 + 3);

  v5();
}

- (BOOL)copyShaderCacheToPath:(id)path
{
  v5 = _MTLGetLibrariesCache(self->_device);
  if (!v5 || (v6 = *(v5 + 32)) == 0 || (v7 = (*(*v6 + 64))(v6, path)) != 0)
  {
    ptr = self->_shaderCache.__ptr_;
    if (ptr)
    {
      v9 = *(ptr->var0 + 8);

      LOBYTE(v7) = v9();
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats
{
  v2 = *(_MTLGetLibrariesCache(self->_device) + 32);
  if (v2)
  {
    return *(v2 + 12);
  }

  else
  {
    return 0;
  }
}

- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats
{
  ptr = self->_shaderCache.__ptr_;
  if (ptr)
  {
    return *&ptr->var2;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  self->_compilerConnectionManager = 0;
  dispatch_release(self->_compilerQueue);
  self->_compilerQueue = 0;
  [(MTLCompiler *)self unloadShaderCaches];
  cntrl = self->_shaderCache.__cntrl_;
  self->_shaderCache.__ptr_ = 0;
  self->_shaderCache.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  removeShaderFunctionCache();

  v4.receiver = self;
  v4.super_class = MTLCompiler;
  [(MTLCompiler *)&v4 dealloc];
}

- (MTLHashKey)getBuiltInFunctionId:(SEL)id
{
  v10 = *MEMORY[0x1E69E9840];
  if ([MTLCompiler getBuiltInFunctionId:]::onceToken != -1)
  {
    [MTLCompiler getBuiltInFunctionId:];
  }

  v9[0] = [MTLCompiler getBuiltInFunctionId:]::NullHash;
  v9[1] = unk_1ED5B0AA1;
  v6 = *&a4->var0[16];
  v9[2] = *a4->var0;
  v9[3] = v6;
  v8 = 0x40300000000;
  return MTLHashKey::MTLHashKey(retstr, v9, &v8, 2uLL);
}

double __36__MTLCompiler_getBuiltInFunctionId___block_invoke()
{
  result = *&AIR_NULL_HASH;
  [MTLCompiler getBuiltInFunctionId:]::NullHash = AIR_NULL_HASH;
  unk_1ED5B0AA1 = unk_185DE2408;
  return result;
}

- (void)compileRequestInternal:(id)internal binaryArchives:(id)archives failOnBinaryArchiveMiss:(BOOL)miss pipelineCache:(id)cache sync:(BOOL)sync compilerTask:(id)task completionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_retain(internal);
  operator new();
}

void __127__MTLCompiler_compileRequestInternal_binaryArchives_failOnBinaryArchiveMiss_pipelineCache_sync_compilerTask_completionHandler___block_invoke(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 72);
  v15[0] = *(a1 + 56);
  v15[1] = v8;
  *&v9 = MTLHashKey::MTLHashKey(&v14, a1 + 56).n128_u64[0];
  if (!a2 && a3)
  {
    buffer_ptr[0] = 0;
    size_ptr = 0;
    v10 = dispatch_data_create_map(a3, buffer_ptr, &size_ptr);
    (*(**(a1 + 40) + 48))(*(a1 + 40), &v14, buffer_ptr[0], size_ptr);
    dispatch_release(v10);
  }

  if (a4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{a4, v9}];
  }

  else
  {
    v11 = 0;
  }

  buffer_ptr[0] = a2;
  buffer_ptr[1] = v11;
  buffer_ptr[2] = v15;
  buffer_ptr[3] = a3;
  (*(*(a1 + 32) + 16))();
  MTLHashKey::~MTLHashKey(&v14);
}

- (void)compileRequest:(id)request compilerTask:(id)task completionHandler:(id)handler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MTLCompiler_compileRequest_compilerTask_completionHandler___block_invoke;
  v5[3] = &unk_1E6EEC140;
  v5[4] = handler;
  [(MTLCompiler *)self compileRequest:request pipelineCache:0 compilerTask:task completionHandler:v5];
}

- (void)generateMachOWithID:(const char *)d binaryEntries:(shared_ptr<std:(const void *)entries :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)data machOType:(unint64_t)type Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)platform bitcodeList:(id)self0 compilerTask:(id)self1 completionHandler:
{
  entriesCopy = entries;
  var1 = a4.var1;
  v63 = *MEMORY[0x1E69E9840];
  var0 = a4.var0;
  v16 = **a4.var0;
  v15 = *(*a4.var0 + 8);
  memset(v61, 0, sizeof(v61));
  *c.count = v61;
  LOBYTE(c.hash[0]) = 0;
  v54 = v16;
  v55 = v15;
  v17 = 0x8E38E38E38E38E39 * ((v15 - v16) >> 3);
  if (v15 != v16)
  {
    if (v17 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v18 = malloc_type_malloc(0xC71C71C71C71C728 * ((v15 - v16) >> 3) + 136, 0x1000040C2CE426DuLL);
  bzero(v18, 104 * v17 + 136);
  *v18 = data;
  *(v18 + 31) = dyld_get_active_platform();
  v18[1] = v17;
  *(v18 + 128) = entriesCopy;
  versionCombined = [(MTLTargetDeviceArchitecture *)[(_MTLDevice *)self->_device targetDeviceArchitecture] versionCombined];
  *(v18 + 30) = versionCombined;
  v18[5] = 104 * v17 + 136;
  v21 = [MTLGetGPUArchiverCachePath(versionCombined v20)];
  v22 = strlen(v21) + 1;
  *(v18 + 23) = v22;
  v23 = 104 * v17 + v22 + 143;
  v24 = v23 & 0xFFFFFFFFFFFFFFF8;
  if (d)
  {
    v25 = strlen(d) + 1;
    *(v18 + 22) = v25;
    v18[4] = v24;
    v24 = ((v23 | 7) + v25) & 0xFFFFFFFFFFFFFFF8;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  if (entriesCopy)
  {
    if (entriesCopy == 1)
    {
      v18[8] = v24;
      v26 = strlen(*var1) + 1;
      *(v18 + 28) = v26;
      v24 = (v26 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = *(var1 + 1);
    if (v27)
    {
      v18[7] = v24;
      v28 = (v27 << 6);
      *(v18 + 25) = v28;
      v24 += v28;
    }

    v29 = *(var1 + 2);
    if (v29 && dispatch_data_create_map(v29, &buffer_ptr, &size_ptr))
    {
      v57 = 0;
      v18[9] = v24;
      v30 = size_ptr;
      *(v18 + 29) = size_ptr;
      v24 = (v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }
  }

  v57 = 0;
LABEL_15:
  v31 = *type;
  if (*type)
  {
    v18[10] = v24;
    v32 = *(v31 + 24);
    *(v18 + 26) = 0;
    *(v18 + 27) = v32;
    operator new();
  }

  if (v55 != v54)
  {
    v33 = 0;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v34 = v18 + 29;
    v35 = 56;
    do
    {
      v36 = v61[0];
      *(v34 - 10) = v24;
      v37 = **var0;
      v38 = *(v37 + v35 - 40);
      if (v38)
      {
        *(v36 + v33) = dispatch_data_create_map(v38, (v36 + v33 + 56), v34 - 9);
        v24 = (v24 + *(v34 - 9) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v34 - 8) = v24;
      v39 = *(v37 + v35 - 32);
      if (v39)
      {
        v40 = v34 - 7;
        *(v36 + v33 + 8) = dispatch_data_create_map(v39, (v36 + v33 + 64), v34 - 7);
        v41 = *(v36 + v33 + 64);
        if (*v41 == 248563483)
        {
          v42 = v41[2];
          *v40 = v42;
        }

        else
        {
          v42 = *v40;
        }

        v24 = (v24 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v34 - 6) = v24;
      v43 = v37 + v35;
      v44 = *(v37 + v35 - 24);
      if (v44)
      {
        *(v36 + v33 + 16) = dispatch_data_create_map(v44, (v36 + v33 + 72), v34 - 5);
        v24 = (v24 + *(v34 - 5) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v45 = *(v43 - 48);
      if (v45)
      {
        v45 = (*(v45 + 64) - *(v45 + 56)) >> 5;
        v46 = v24 + 4 * v45 + 7;
        v47 = v46 & 0xFFFFFFFFFFFFFFF8;
        v48 = (v46 + 32 * v45) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v47 = v24;
        v48 = v24;
      }

      *(v34 - 24) = v45;
      *(v34 - 4) = v24;
      *(v34 - 3) = v47;
      *(v34 - 2) = v48;
      v49 = v57;
      if (!*(v43 - 48))
      {
        v49 = 1;
      }

      if ((v49 & 1) == 0)
      {
        *(v36 + v33 + 24) = dispatch_data_create_map(*(v37 + v35 - 16), (v36 + v33 + 80), v34 - 1);
        v48 = (v48 + *(v34 - 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v50 = *(v37 + v35 - 8);
      v51 = *(v37 + v35);
      v52 = v51 - v50;
      if (v51 != v50)
      {
        v53 = (v36 + v33 + 32);
        if ((v37 + v35 - 8) != v53)
        {
          std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(v53, v50, v51, v52 >> 5);
          v52 = *(v37 + v35) - *(v37 + v35 - 8);
        }

        *(v34 - 22) = v52 >> 5;
        *v34 = v48;
        v48 = (v48 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v34 += 13;
      v35 += 72;
      v33 += 88;
      v24 = v48;
      --v17;
    }

    while (v17);
  }

  operator new();
}

uint64_t __137__MTLCompiler_generateMachOWithID_binaryEntries_machOSpecializedData_machOType_Path_platform_bitcodeList_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = a2;
  v9[1] = v7;
  v9[2] = a1 + 40;
  v9[3] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v9, a3, a4);
}

- (void)generateMachOWithID:(const char *)d binaryEntries:(shared_ptr<std:(const void *)entries :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)data machOType:(unint64_t)type Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)platform bitcodeList:(id)self0 completionHandler:
{
  v10 = *(a4.var0 + 1);
  v14 = *a4.var0;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(type + 8);
  v12 = *type;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(MTLCompiler *)self generateMachOWithID:d binaryEntries:&v14 machOSpecializedData:a4.var1 machOType:entries Path:*&a6 platform:data bitcodeList:&v12 compilerTask:0 completionHandler:platform.__ptr_];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

uint64_t __83__MTLCompiler_createBinaryArchiveAsRecompileTarget_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = a2;
  v9[1] = v7;
  v9[2] = a1 + 40;
  v9[3] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v9, a3, a4);
}

- (BOOL)validateLanguageAndAIRVersionForFunction:(id)function completionHandler:(id)handler
{
  functionData = [function functionData];
  v8 = _MTLGetMTLCompilerLLVMVersionForDevice(self->_device);
  if ((v8 - 32023) >= 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = 131080;
  }

  if (validateLanguageVersion(functionData[27] | (functionData[26] << 16), ((v8 - 32023) < 2) << 18))
  {
    if (validateAIRVersion(functionData[25] | (functionData[24] << 16), v9))
    {
      return 1;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ has a deployment target (0x%08X) which is incompatible with this OS (0x%08X).", objc_msgSend(function, "name"), functionData[25] | (functionData[24] << 16), v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ is using language version %u.%u which is incompatible with this OS.", objc_msgSend(function, "name"), functionData[26], functionData[27]];
  }

  v12[0] = 2;
  v12[1] = v11;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  (*(handler + 2))(handler, v12);
  return 0;
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForLibraryRequest:(SEL)request
{
  CC_SHA256_Init(&c);
  var3 = a4->var3;
  if (var3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v7 = dispatch_data_create_map(var3, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v7);
  }

  var4 = a4->var4;
  if (var4)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(var4, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v9);
  }

  buffer_ptr = (a4->var2 & 0xE);
  CC_SHA256_Update(&c, &buffer_ptr, 8u);
  return CC_SHA256_Final(retstr->var0, &c);
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForStatelessCompilationRequest:(SEL)request
{
  CC_SHA256_Init(&c);
  frameworkData = [a4 frameworkData];
  if (frameworkData)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v7 = dispatch_data_create_map(frameworkData, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v7);
  }

  driverKeyData = [a4 driverKeyData];
  if (driverKeyData)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(driverKeyData, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v9);
  }

  return CC_SHA256_Final(retstr->var0, &c);
}

- (void)addLegacyCompiledOutput:(id)output cachedCompiledOutput:(id)compiledOutput importedSymbols:(id)symbols importedLibraries:(id)libraries hashKey:(id)key type:(char)type functionCache:(shared_ptr<MultiLevelBinaryCache>)cache
{
  if (output && output != compiledOutput)
  {
    v10 = [[MTLBinaryEntry alloc] initWithData:output importedSymbols:symbols importedLibraries:libraries];
    (*(**cache.var0 + 144))(*cache.var0, key, v10);
  }
}

- (void)addLegacyCompiledOutput:(id)output importedSymbols:(id)symbols importedLibraries:(id)libraries hashKey:(id)key type:(char)type functionCache:(shared_ptr<MultiLevelBinaryCache>)cache
{
  v9 = v8[1];
  v10 = *v8;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(MTLCompiler *)self addLegacyCompiledOutput:output cachedCompiledOutput:0 importedSymbols:symbols importedLibraries:libraries hashKey:key type:type functionCache:&v10];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

- (void)releaseCompilerOutputBlocks:(void *)blocks
{
  for (i = *(blocks + 2); i; i = *i)
  {
    v5 = i[3];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(blocks);
}

- (void)releaseHashMaps:(void *)maps
{
  for (i = *(maps + 2); i; i = *i)
  {
    v5 = i[3];
    if (v5)
    {
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(maps);
}

- (void)releaseCompilerOutputBlocks:(void *)blocks hashMap:(void *)map
{
  [(MTLCompiler *)self releaseHashMaps:map];

  [(MTLCompiler *)self releaseCompilerOutputBlocks:blocks];
}

- (void)cacheLegacyCompilerData:(void *)data cachedData:(void *)cachedData hashMap:(void *)map libraryData:(void *)libraryData functionCache:(shared_ptr<MultiLevelBinaryCache>)cache
{
  v7 = *(data + 2);
  if (v7)
  {
    var0 = cache.var0;
    while (1)
    {
      v23 = *(v7 + 16);
      if (v23 > 7u || ((1 << v23) & 0xB0) == 0)
      {
        break;
      }

LABEL_7:
      v7 = *v7;
      if (!v7)
      {
        return;
      }
    }

    v12 = v7[3];
    if (cachedData)
    {
      v24 = &v23;
      v13 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(cachedData, &v23, &std::piecewise_construct, &v24)[3];
      if (v23)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if (v23)
      {
        goto LABEL_11;
      }
    }

    v14 = (*(*libraryData + 64))(libraryData);
    if (!v23)
    {
      v15 = (*(*libraryData + 72))(libraryData);
      goto LABEL_15;
    }

LABEL_14:
    v15 = 0;
LABEL_15:
    v24 = &v23;
    v16 = std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(map, &v23, &std::piecewise_construct, &v24)[3];
    v17 = v23;
    v18 = *(var0 + 1);
    v21 = *var0;
    v22 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(MTLCompiler *)self addLegacyCompiledOutput:v12 cachedCompiledOutput:v13 importedSymbols:v14 importedLibraries:v15 hashKey:v16 type:v17 functionCache:&v21];
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    goto LABEL_7;
  }
}

- (MTLHashKey)getFunctionId:(SEL)id airScript:(id)script vendorPluginFunctionId:(const void *)functionId bitcodeHashList:(id *)list
{
  v38 = *MEMORY[0x1E69E9840];
  functionType = [script functionType];
  v14 = [(_MTLDevice *)self->_device featureProfile]< 8;
  if (!strncmp(functionId + 4, "AIRP", 4uLL))
  {
    PipelineFrameworkHash = _getPipelineFrameworkHash((functionId + *functionId), functionType, v14);
  }

  else
  {
    if (strncmp(functionId + 4, "AIRF", 4uLL))
    {
      v15 = 0;
      goto LABEL_7;
    }

    PipelineFrameworkHash = _getFunctionHash((functionId + *functionId), v14);
  }

  v15 = PipelineFrameworkHash;
LABEL_7:
  if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0))
  {
    CC_SHA256(v15, 0x20u, md);
    v17 = *&md[16];
    *v15 = *md;
    *(v15 + 1) = v17;
  }

  v18 = *(v15 + 1);
  v36 = *v15;
  v37 = v18;
  bitCodeHash = [script bitCodeHash];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<MTLUINT256_t const*>::__init_with_size[abi:ne200100]<MTLUINT256_t const**,MTLUINT256_t const**>(&v22, *a7, *(a7 + 1), (*(a7 + 1) - *a7) >> 3);
  getGPUCompilerHashForScript(functionId, functionType, v28);
  *&md[4] = v28[0];
  *&md[20] = v28[1];
  v19 = *&list->var0[16];
  v31 = *list->var0;
  *md = 1026;
  v32 = v19;
  v30 = 1027;
  v33 = 1032;
  v34 = v36;
  v35 = v37;
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,MTLUINT256_t const> const*,std::pair<unsigned int,MTLUINT256_t const> const*>(&__p, md, &v36, 3uLL);
  free(v15);
  MTLHashKey::MTLHashKey(retstr, &bitCodeHash);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  result = v22;
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return result;
}

- (MTLHashKey)getFunctionId:(SEL)id airScript:(id)script vendorPluginFunctionId:(const void *)functionId
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (self)
  {
    [(MTLHashKey *)self getFunctionId:script airScript:functionId vendorPluginFunctionId:a6 bitcodeHashList:&__p];
    self = __p;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *&retstr->var1.var0[24] = 0u;
    *&retstr->var2.var1 = 0u;
    *&retstr->var0.var2 = 0u;
    *&retstr->var1.var0[8] = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return self;
}

- (MTLHashKey)getFunctionId:(SEL)id
{
  v35 = *MEMORY[0x1E69E9840];
  if ([a4 airScript])
  {
    v33 = 0uLL;
    v34 = 0uLL;
    if (a4)
    {
      objc_msgSend_vendorPluginFunctionId(a4);
    }

    buffer_ptr = 0;
    if ([a4 airScript])
    {
      size_ptr = 0;
      v7 = dispatch_data_create_map([a4 airScript], &buffer_ptr, &size_ptr);
    }

    else
    {
      v7 = 0;
    }

    size_ptr = 0;
    v28 = 0;
    v29 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    visibleFunctions = [a4 visibleFunctions];
    v10 = [visibleFunctions countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(visibleFunctions);
          }

          bitCodeHash = [*(*(&v23 + 1) + 8 * i) bitCodeHash];
          std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&size_ptr, &bitCodeHash);
        }

        v10 = [visibleFunctions countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v10);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    privateVisibleFunctions = [a4 privateVisibleFunctions];
    v14 = [privateVisibleFunctions countByEnumeratingWithState:&v18 objects:v31 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(privateVisibleFunctions);
          }

          bitCodeHash = [*(*(&v18 + 1) + 8 * j) bitCodeHash];
          std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&size_ptr, &bitCodeHash);
        }

        v14 = [privateVisibleFunctions countByEnumeratingWithState:&v18 objects:v31 count:16];
      }

      while (v14);
    }

    function = [a4 function];
    if (self)
    {
      [(MTLCompiler *)self getFunctionId:function airScript:buffer_ptr vendorPluginFunctionId:&v33 bitcodeHashList:&size_ptr];
    }

    else
    {
      *&retstr->var1.var0[24] = 0u;
      *&retstr->var2.var1 = 0u;
      *&retstr->var0.var2 = 0u;
      *&retstr->var1.var0[8] = 0u;
      *&retstr->var0.var0 = 0u;
    }

    dispatch_release(v7);
    result = size_ptr;
    if (size_ptr)
    {
      v28 = size_ptr;
      operator delete(size_ptr);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    MTLHashKey::MTLHashKey(retstr, &v33);
  }

  return result;
}

- (BOOL)initializeVendorPluginFunctionId:(id)id airScript:(const void *)script driverCompilerOptions:(id)options compiledNextStageVariant:(id)variant vendorPlugin:(id *)plugin
{
  if (script)
  {
    v18 = 0;
    v12 = [(_MTLDevice *)self->_device newTranslatedDriverCompilerOptions:options compilerOptionsSize:&v18];
    device = self->_device;
    functionType = [id functionType];
    v15 = [(MTLCompiler *)self getHashForScript:script device:device function:id functionType:functionType compilerOptions:v12 compilerOptionsSize:v18 compiledNextStageVariant:variant];
    if (v15)
    {
      v16 = v15[1];
      *plugin->var0 = *v15;
      *&plugin->var0[16] = v16;
      free(v15);
    }

    [(_MTLDevice *)self->_device freeTranslatedDriverCompilerOptions:v12 compilerOptionsSize:v18];
  }

  return script != 0;
}

- (void)initializeFunctionRequestScriptAndFunctionId:(id)id script:(const void *)script driverCompilerOptions:(id)options compiledNextStageVariant:(id)variant
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  -[MTLCompiler initializeVendorPluginFunctionId:airScript:driverCompilerOptions:compiledNextStageVariant:vendorPlugin:](self, "initializeVendorPluginFunctionId:airScript:driverCompilerOptions:compiledNextStageVariant:vendorPlugin:", [id function], script, options, variant, &v8);
  v7[0] = v8;
  v7[1] = v9;
  [id setVendorPluginFunctionId:v7];
}

- (void)getHashForScript:(const void *)script device:(id)device function:(id)function functionType:(unint64_t)type compilerOptions:(char *)options compilerOptionsSize:(unint64_t)size compiledNextStageVariant:(id)variant
{
  if (!script)
  {
    return 0;
  }

  if (!strncmp(script + 4, "AIRP", 4uLL) || !strncmp(script + 4, "AIRF", 4uLL))
  {
    v15 = script + *script;
  }

  else
  {
    v15 = 0;
  }

  if (type <= 4)
  {
    switch(type)
    {
      case 1uLL:

        return [device getVertexFunctionId:v15 function:function compilerOptions:options compilerOptionsSize:size compiledFragmentVariant:variant];
      case 2uLL:

        return [device getFragmentFunctionId:v15 compilerOptions:options compilerOptionsSize:size];
      case 3uLL:

        return [device getComputeFunctionId:v15 function:function compilerOptions:options compilerOptionsSize:size];
      default:
        return 0;
    }
  }

  else
  {
    if (type <= 6)
    {
      if (type == 5)
      {

        return [device getVisibleFunctionId:v15 compilerOptions:options compilerOptionsSize:size];
      }

      else
      {

        return [device getIntersectionFunctionId:v15 compilerOptions:options compilerOptionsSize:size];
      }
    }

    if (type != 7)
    {
      if (type == 8)
      {

        return [device getObjectFunctionId:v15 compilerOptions:options compilerOptionsSize:size];
      }

      return 0;
    }

    return [device getMeshFunctionId:v15 compilerOptions:options compilerOptionsSize:size];
  }
}

- (void)getDataForScript:(const void *)script device:(id)device function:(id)function functionType:(unint64_t)type compilerOptions:(char *)options compilerOptionsSize:(unint64_t)size compiledNextStageVariant:(id)variant dataSize:(unint64_t *)self0
{
  if (!script)
  {
    return 0;
  }

  if (!strncmp(script + 4, "AIRP", 4uLL))
  {
    v15 = script + *script;
  }

  else
  {
    v15 = 0;
  }

  switch(type)
  {
    case 8uLL:

      return [device getObjectFunctionDriverData:v15 function:function compilerOptions:options nextStageVariant:variant driverDataSize:dataSize];
    case 7uLL:

      return [device getMeshFunctionDriverData:v15 function:function compilerOptions:options nextStageVariant:variant driverDataSize:dataSize];
    case 1uLL:

      return [device getVertexFunctionDriverData:v15 function:function compilerOptions:options nextStageVariant:variant driverDataSize:dataSize];
    default:
      if (dataSize)
      {
        *dataSize = 0;
      }

      return 0;
  }
}

- (void)getFunctionKeyWithRenderPipelineDescriptor:(id)descriptor options:(unint64_t)options unfilteredOptions:(unint64_t)unfilteredOptions airScript:(const void *)script function:(id)function functionType:(unint64_t)type compiledNextStageVariant:(id)variant keySize:(unint64_t *)self0 functionDriverData:(void *)self1 functionDriverSize:(unint64_t *)self2
{
  if (type > 6)
  {
    if (type != 7)
    {
      if (type == 8)
      {
        return [(_MTLDevice *)self->_device objectFunctionKeyWithRenderPipelineDescriptor:descriptor options:options nextStageVariant:variant objectKeySize:size, function];
      }

      return 0;
    }

    return [(_MTLDevice *)self->_device meshFunctionKeyWithRenderPipelineDescriptor:descriptor options:options nextStageVariant:variant meshKeySize:size, function];
  }

  else
  {
    if (type != 1)
    {
      if (type == 2)
      {
        return [(_MTLDevice *)self->_device fragmentFunctionKeyWithRenderPipelineDescriptor:descriptor options:options previousStateVariant:0 fragmentKeySize:size, function];
      }

      return 0;
    }

    return [(_MTLDevice *)self->_device vertexFunctionKeyWithRenderPipelineDescriptor:descriptor options:options nextStageVariant:variant vertexKeySize:size, function];
  }
}

- (id)newLinkedFunctionsBitcodeFromRequest:(id)request hashKey:(void *)key
{
  v31 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(request "visibleFunctions")] || objc_msgSend(objc_msgSend(request, "privateVisibleFunctions"), "count"))
  {
    [objc_msgSend(request "visibleFunctions")];
    [objc_msgSend(request "privateVisibleFunctions")];
    memset(v26, 0, sizeof(v26));
    v27 = 1065353216;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    visibleFunctions = [request visibleFunctions];
    v6 = [visibleFunctions countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(visibleFunctions);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          bitcodeDataInternal = [v9 bitcodeDataInternal];
          bitCodeHash = [v9 bitCodeHash];
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(v26, bitCodeHash, &std::piecewise_construct, &bitCodeHash)[6] = bitcodeDataInternal;
        }

        v6 = [visibleFunctions countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v6);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    privateVisibleFunctions = [request privateVisibleFunctions];
    v12 = [privateVisibleFunctions countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(privateVisibleFunctions);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          bitcodeDataInternal2 = [v15 bitcodeDataInternal];
          bitCodeHash = [v15 bitCodeHash];
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(v26, bitCodeHash, &std::piecewise_construct, &bitCodeHash)[6] = bitcodeDataInternal2;
        }

        v12 = [privateVisibleFunctions countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v12);
    }

    operator new[]();
  }

  return 0;
}

- (id)createErrorMessageWithRequest:(id)request key:(id)key cacheType:(const char *)type itemLookedFor:(const char *)for
{
  function = [request function];
  airScript = [request airScript];
  v12 = MEMORY[0x1E696AEC0];
  name = [function name];
  if (for)
  {
    v14 = [v12 stringWithFormat:@"Unable to find %s for function %@", for, name];
  }

  else
  {
    v14 = [v12 stringWithFormat:@"Unable to find function %@", name, v26];
  }

  v15 = v14;
  if (airScript)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v16 = dispatch_data_create_map(airScript, &buffer_ptr, &size_ptr);
    v17 = buffer_ptr;
    if (!strncmp(buffer_ptr + 4, "AIRP", 4uLL))
    {
      v18 = (v17 + *v17);
      v19 = objc_msgSend(v15, "stringByAppendingFormat:", @" (");
      v20 = (v18 - *v18);
      if (*v20 >= 9u && (v21 = v20[4]) != 0 && (v22 = *(v18 + v21) - 1, v22 <= 3u))
      {
        v23 = off_1E6EEC668[v22];
      }

      else
      {
        v23 = @"unknown pipeline type");
      }

      v15 = [v19 stringByAppendingFormat:v23];
    }

    dispatch_release(v16);
  }

  if (for)
  {
    v24 = @" in (legacy) %s.\n Expected ";
  }

  else
  {
    v24 = @" in %s. \n Expected ";
  }

  return [objc_msgSend(v15 stringByAppendingFormat:v24, type), "stringByAppendingFormat:", @"%@", objc_msgSend(key, "description")];
}

- (void)compileFunctionRequestInternal:(id)internal frameworkLinking:(BOOL)linking linkDataSize:(unint64_t)size reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler
{
  onlyCopy = only;
  linkingCopy = linking;
  v39 = *MEMORY[0x1E69E9840];
  function = [internal function];
  if (function)
  {
    v14 = function;
    if ([(MTLCompiler *)self validateLanguageAndAIRVersionForFunction:function completionHandler:handler])
    {
      pipelineOptions = [internal pipelineOptions];
      function2 = [internal function];
      v32 = linkingCopy;
      v18 = function2 && (v17 = function2, [function2 functionData]) && *(objc_msgSend(v17, "functionData") + 88) != 0;
      airScript = [internal airScript];
      v21 = (pipelineOptions & 0xC1280000) != 0 || airScript == 0;
      device = [(_MTLFunction *)v14 device];
      pipelineOptions2 = [internal pipelineOptions];
      compilerFlags = self->_compilerFlags;
      v25 = MTLCompileTypeForFunction(v14);
      [(_MTLFunction *)v14 functionData];
      v26 = MTLGetCompilerOptions(device, pipelineOptions2, compilerFlags, v25, onlyCopy);
      v27 = v26;
      if ((v26 & 0x4000) != 0)
      {
        if (_MTLDebugIgnoreFailOnMissFlag(v26))
        {
          v28 = 0;
        }

        else
        {
          v28 = 2;
        }
      }

      else
      {
        v28 = 0;
      }

      [objc_msgSend(internal "gpuCompilerSPIOptions")];
      [internal binaryArchives];
      v29 = [internal pipelineOptions] >> 32;
      if ((v27 & 2) == 0 && v32 && (self->_compilerFlags & 0x20) == 0)
      {
        [(_MTLFunction *)v14 functionType];
      }

      if ([internal destinationBinaryArchive])
      {
        [objc_msgSend(internal "destinationBinaryArchive")];
      }

      v30 = v21 || v18;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      if ((v27 & 2) != 0 || ![internal destinationBinaryArchive])
      {
        LOBYTE(v31) = 0;
      }

      else
      {
        v31 = [objc_msgSend(internal "destinationBinaryArchive")] & (v30 ^ 1);
      }

      v34 = v31;
      if ([internal pipelineOptions])
      {
        [internal pipelineOptions];
      }

      [(_MTLDevice *)self->_device featureProfile];
      MultiLevelCacheFactory::createBinaryCache([internal binaryArchives], objc_msgSend(internal, "destinationBinaryArchive"), objc_msgSend(internal, "pipelineCache"), self->_shaderCache.__ptr_, v29 & 4 | v28);
    }
  }

  else
  {
    v35[0] = 2;
    v35[1] = @"function is nil";
    v36 = 0u;
    v37 = 0u;
    memset(v38, 0, 64);
    (*(handler + 2))(handler, v35);
  }
}

void __122__MTLCompiler_compileFunctionRequestInternal_frameworkLinking_linkDataSize_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v46 = a3;
  if ([*(a1 + 32) destinationBinaryArchive])
  {
    [objc_msgSend(*(a1 + 32) "destinationBinaryArchive")];
  }

  if (!a2)
  {
    for (i = *(*(a1 + 88) + 16); i; i = *i)
    {
      v9 = *(i + 3);
      if (v9)
      {
        v10 = *(a1 + 104);
        v40[0] = i + 16;
        std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(v10, i + 16, &std::piecewise_construct, v40)[3] = v9;
        dispatch_retain(*(i + 3));
      }
    }

    v11 = *(a1 + 152);
    if ((v11 & 2) != 0)
    {
      v13 = *(a1 + 104);
      LOBYTE(v40[0]) = 2;
    }

    else
    {
      if (v11)
      {
        v40[0] = 0;
        size_ptr = 0;
        buffer_ptr = 0;
        v12 = dispatch_data_create_map(v46, &buffer_ptr, &size_ptr);
        deserializeCompilerOutputData(buffer_ptr, size_ptr, v40, *(a1 + 88), *(a1 + 104));
        dispatch_release(v12);
LABEL_16:
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v14 = *(a1 + 104);
          LOBYTE(size_ptr) = 0;
          v40[0] = &size_ptr;
          v15 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v14, &size_ptr, &std::piecewise_construct, v40)[3];
          if (v15)
          {
            v16 = *(a1 + 104);
            v43 = 2;
            v40[0] = &v43;
            LOBYTE(v15) = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v16, &v43, &std::piecewise_construct, v40)[3] != 0;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }

        *(*(*(a1 + 72) + 8) + 24) = v15;
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v17 = [MTLBinaryEntry alloc];
          v18 = *(a1 + 104);
          LOBYTE(size_ptr) = 0;
          v40[0] = &size_ptr;
          v19 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v18, &size_ptr, &std::piecewise_construct, v40)[3];
          v20 = *(a1 + 104);
          v43 = 2;
          v40[0] = &v43;
          v21 = [(MTLBinaryEntry *)v17 initWithData:v19 reflectionBlock:std::__hash_table<std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::__unordered_map_hasher<CompilerOutputType, std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::hash<CompilerOutputType>, std::equal_to<CompilerOutputType>, true>, std::__unordered_map_equal<CompilerOutputType, std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::equal_to<CompilerOutputType>, std::hash<CompilerOutputType>, true>, std::allocator<std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType, std::piecewise_construct_t const&, std::tuple<CompilerOutputType&&>, std::tuple<>>(v20, &v43, &std::piecewise_construct, v40)[3]];
          if ((*(a1 + 152) & 2) != 0)
          {
            v22 = [*(a1 + 32) function];
            -[MTLBinaryEntry setAirScript:](v21, "setAirScript:", [*(a1 + 32) airScript]);
            v23 = [v22 bitcodeDataInternal];
            [(MTLBinaryEntry *)v21 setBitcode:v23];
            -[MTLBinaryEntry setLinkedBitcodes:](v21, "setLinkedBitcodes:", [*(a1 + 40) newLinkedFunctionsBitcodeFromRequest:*(a1 + 32) hashKey:*(*(a1 + 80) + 8) + 48]);
            dispatch_release(v23);
          }

          if (*(a1 + 156) != 1 || (*(a1 + 152) & 2) != 0)
          {
            v30 = (*(**(a1 + 120) + 128))(*(a1 + 120), *(a1 + 48), v21, [*(a1 + 32) archiverId], objc_msgSend(*(a1 + 56), "functionType"));
            v31 = *(a1 + 104);
            LOBYTE(size_ptr) = 7;
            v40[0] = &size_ptr;
            std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v31, &size_ptr, &std::piecewise_construct, v40)[3] = v30;
          }

          else
          {
            (*(**(a1 + 120) + 144))(*(a1 + 120), *(a1 + 48), v21);
          }

          v32 = *(a1 + 120);
          v33 = *(a1 + 104);
          LOBYTE(size_ptr) = 7;
          v40[0] = &size_ptr;
          v34 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v33, &size_ptr, &std::piecewise_construct, v40)[3];
          (*(*v32 + 136))(v32, v34, *(a1 + 48), [*(a1 + 56) functionType]);
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a1 + 104);
          v26 = *(a1 + 88);
          v27 = *(a1 + 136);
          v28 = [*(a1 + 56) libraryData];
          v29 = *(a1 + 128);
          v41 = *(a1 + 120);
          v42 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [v24 cacheLegacyCompilerData:v25 cachedData:v26 hashMap:v27 libraryData:v28 functionCache:&v41];
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }
        }

        if (*(a1 + 157) == 1)
        {
          v35 = *(a1 + 104);
          LOBYTE(size_ptr) = 3;
          v40[0] = &size_ptr;
          if (!std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v35, &size_ptr, &std::piecewise_construct, v40)[3])
          {
            v36 = *(a1 + 88);
            v43 = 3;
            v40[0] = &v43;
            if (!std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v36, &v43, &std::piecewise_construct, v40)[3])
            {
              LOBYTE(size_ptr) = 0;
              v37 = *(a1 + 120);
              v38 = *(a1 + 136);
              v43 = 3;
              v40[0] = &v43;
              v39 = std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v38, &v43, &std::piecewise_construct, v40);
              (*(*v37 + 56))(v37, v39[3], &size_ptr, 1);
            }
          }
        }

        goto LABEL_36;
      }

      v13 = *(a1 + 104);
      LOBYTE(v40[0]) = 0;
    }

    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(v13, v40, v40, &v46);
    dispatch_retain(v46);
    goto LABEL_16;
  }

  if (!a4)
  {
LABEL_36:
    v7 = 0;
    goto LABEL_37;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
LABEL_37:
  FunctionReplyParameters::FunctionReplyParameters(v40, a2, v7, *(a1 + 104), *(a1 + 136));
  (*(*(a1 + 64) + 16))();

  [*(a1 + 40) releaseCompilerOutputBlocks:*(a1 + 88) hashMap:*(a1 + 136)];
  [*(a1 + 40) releaseCompilerOutputBlocks:*(a1 + 104)];
}

- (void)compileFunctionRequest:(id)request compilerTask:(id)task completionHandler:(id)handler
{
  function = [request function];
  if ([function functionType] == 5 || objc_msgSend(function, "functionType") == 6)
  {

    [(MTLCompiler *)self compileStatelessFunctionRequest:request reflectionOnly:0 compilerTask:task completionHandler:handler];
  }

  else
  {

    [(MTLCompiler *)self compileFunctionRequestInternal:request frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:task completionHandler:handler];
  }
}

- (void)compileStatelessFunctionRequest:(id)request reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler
{
  if (([request pipelineOptions] & 4) != 0)
  {
    v7 = ~([request pipelineOptions] >> 28) & 2;
  }

  else
  {
    v7 = 0;
  }

  MultiLevelCacheFactory::createBinaryCache([request binaryArchives], objc_msgSend(request, "destinationBinaryArchive"), objc_msgSend(request, "pipelineCache"), self->_shaderCache.__ptr_, (objc_msgSend(request, "pipelineOptions") >> 32) & 4 | v7);
}

uint64_t __93__MTLCompiler_compileStatelessFunctionRequest_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) "destinationBinaryArchive")];
  if (!*a2)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 1065353216;
    v4 = a2[5];
    if (!v4)
    {
      v5 = *(a1 + 80);
      v21 = 2;
      v24 = &v21;
      v4 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v5, &v21, &std::piecewise_construct, &v24)[3];
    }

    v20 = 2;
    v24 = &v20;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v22, &v20, &std::piecewise_construct, &v24)[3] = v4;
    v6 = a2[3];
    if (!v6)
    {
      v7 = *(a1 + 80);
      v21 = 0;
      v24 = &v21;
      v6 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v7, &v21, &std::piecewise_construct, &v24)[3];
    }

    v20 = 0;
    v24 = &v20;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v22, &v20, &std::piecewise_construct, &v24)[3] = v6;
    if (*(a1 + 128) != 1)
    {
      goto LABEL_11;
    }

    v8 = [[MTLBinaryEntry alloc] initWithData:a2[3] reflectionBlock:a2[5]];
    v9 = v8;
    if (*(a1 + 129))
    {
      (*(**(a1 + 96) + 144))(*(a1 + 96), *(a1 + 56), v8);
    }

    else
    {
      [(MTLBinaryEntry *)v8 setAirScript:*(a1 + 40)];
      v10 = _MTLNSDataToDispatchData([*(a1 + 48) bitcodeData], 0);
      [(MTLBinaryEntry *)v9 setBitcode:v10];
      dispatch_release(v10);
      (*(**(a1 + 96) + 128))(*(a1 + 96), *(a1 + 56), v9, 0, [*(a1 + 48) functionType]);
    }

    if ((*(a1 + 128) & 1) == 0)
    {
LABEL_11:
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      v13 = *(a1 + 112);
      v14 = [*(a1 + 48) libraryData];
      v15 = *(a1 + 104);
      v18 = *(a1 + 96);
      v19 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v11 cacheLegacyCompilerData:v22 cachedData:v12 hashMap:v13 libraryData:v14 functionCache:&v18];
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v22);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    dispatch_release(v16);
  }

  (*(*(a1 + 72) + 16))();
  return [*(a1 + 64) releaseHashMaps:*(a1 + 112)];
}

- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)request compilerTask:(id)task completionHandler:(id)handler
{
  var1 = request->var1;
  v8 = [objc_msgSend(var1 "device")];
  if (v8)
  {
    v9 = MTLSerializePluginDataDictionary([objc_msgSend(var1 "device")], 0) + 44;
    v10 = 44;
  }

  else
  {
    v10 = 0;
    v9 = 44;
  }

  v11 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  cacheEntry = [var1 cacheEntry];
  v13 = *(cacheEntry + 28);
  *(v11 + 8) = *(cacheEntry + 12);
  *(v11 + 24) = v13;
  *v11 = v10;
  if (v8)
  {
    MTLSerializePluginDataDictionary([objc_msgSend(var1 "device")], &v11[v10]);
  }

  if ([var1 shaderValidationEnabled])
  {
    v11[40] = 1;
  }

  request->var3 = dispatch_data_create(v11, v9, 0, *MEMORY[0x1E69E9648]);
  Options = MTLPipelineOptionsFromDynamicLibraryLoadOptions(request->var2);
  if ([var1 shaderValidationEnabled])
  {
    Options |= 0x1000000uLL;
  }

  MTLGetCompilerOptions([var1 device], Options, self->_compilerFlags, 2uLL, 0);
  operator new();
}

- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)request completionHandler:(id)handler
{
  v4 = *&request->var2;
  v5[0] = *&request->var0;
  v5[1] = v4;
  v5[2] = *&request->var4;
  [(MTLCompiler *)self compileLibraryRequest:v5 compilerTask:0 completionHandler:handler];
}

- (id)downgradeFunctionRequest:(const void *)request targetLLVMVersion:(unsigned int)version frameworkData:(void *)data compilerTask:(id)task error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  MTLCompilerFunctionRequest::function(request);
  if ((MTLCompilerFunctionRequest::shouldRunFrameworkPasses(request) & 1) == 0)
  {
    MTLCompilerFunctionRequest::getOptions(request);
  }

  object = 0;
  downgradeRequestHashAndData(&v12, &object, request, version);
  _MTLGetLibrariesCache(self->_device);
  MultiLevelCacheFactory::createAirCache();
}

void __91__MTLCompiler_downgradeFunctionRequest_targetLLVMVersion_frameworkData_compilerTask_error___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a1 + 64))
    {
      if (a4)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
        if (!v6)
        {
          v6 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
        }
      }

      else
      {
        v6 = @"empty error message";
      }

      v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:*MEMORY[0x1E696A578]];
      **(a1 + 64) = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v13];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v16[0] = *(a1 + 48);
    v16[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MTLHashKey::MTLHashKey(&v17, a1 + 84);
    v12 = processCompiledLibrary(a3, v10, 7, v16, &v17, 1, 0, v8, v9, 0, *(a1 + 64), *(a1 + 72), *(a1 + 80));
    MTLHashKey::~MTLHashKey(&v17);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      if ((*(a1 + 80) & 2) != 0)
      {
        v14 = *(a1 + 72);
        if (v14)
        {
          v15 = 2;
          v17.var0.var0 = &v15;
          std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v14, &v15, &std::piecewise_construct, &v17);
        }
      }

      else if ([v8 count] == 1)
      {
        *(*(*(a1 + 40) + 8) + 40) = [v8 objectForKey:{objc_msgSend(objc_msgSend(v8, "allKeys"), "objectAtIndexedSubscript:", 0)}];
      }
    }
  }
}

- (BOOL)downgradeRequest:(void *)request frameworkData:(void *)data compilerTask:(id)task error:(id *)error
{
  LLVMVersion = MTLCompilerConnectionManager::getLLVMVersion(self->_compilerConnectionManager);
  if (LLVMVersion >= 32023)
  {
    if (error)
    {
      *error = 0;
    }

    return 1;
  }

  else
  {
    v12 = LLVMVersion;
    if (MTLCompilerFunctionRequest::function(request))
    {
      v13 = [(MTLCompiler *)self downgradeFunctionRequest:request targetLLVMVersion:v12 frameworkData:data compilerTask:task error:error];
      Options = MTLCompilerFunctionRequest::getOptions(request);
      if (data && (Options & 2) != 0)
      {
        v18 = 2;
        v19 = &v18;
        v15 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(data, &v18, &std::piecewise_construct, &v19)[3];
      }

      else
      {
        MTLCompilerFunctionRequest::setFunction(request, v13);
        v15 = v13;
      }
    }

    else
    {
      device = [MTLCompilerFunctionRequest::library(request) device];
      v15 = MTLLibraryBuilder::newDowngradedLibrary(*(device + 440), request, v12, task, error);
      MTLCompilerFunctionRequest::setLibrary(request, v15);
    }

    return v15 != 0;
  }
}

- (void)statelessBackendCompileRequestInternal:(void *)internal sync:(BOOL)sync compilerHash:(id *)hash reflectionOnly:(BOOL)only compilerTask:(id)task completionHandler:(id)handler
{
  syncCopy = sync;
  v40 = *MEMORY[0x1E69E9840];
  MTLCompilerRequest::setRequestType(internal, 10);
  MTLCompilerFunctionRequest::setTargetLLVMBitcodeVersion(internal, [(_MTLDevice *)self->_device llvmVersion]);
  v31 = 0;
  if (only)
  {
    shouldRunFrameworkPasses = MTLCompilerFunctionRequest::shouldRunFrameworkPasses(internal);
    v16 = shouldRunFrameworkPasses ^ 1;
    v28 = 0u;
    v29 = 0u;
    if (shouldRunFrameworkPasses)
    {
      v17 = 0;
    }

    else
    {
      v17 = &v28;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v30 = 1065353216;
  v18 = [(MTLCompiler *)self downgradeRequest:internal frameworkData:v17 compilerTask:task error:&v31];
  if (v18)
  {
    if (v16)
    {
      LOBYTE(v32) = 2;
      v20 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(&v28, &v32);
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      *(&v34 + 1) = v20[3];
      (*(handler + 2))(handler, &v32);
    }

    else
    {
      if (_MTLCompilePerformanceStatisticsEnabled(v18, v19))
      {
        Options = MTLCompilerFunctionRequest::getOptions(internal);
        MTLCompilerFunctionRequest::setOptions(internal, Options | 0x200);
      }

      *&v32 = 0;
      *(&v32 + 1) = &v32;
      *&v33 = 0x5012000000;
      *(&v33 + 1) = __Block_byref_object_copy__1378;
      *&v34 = __Block_byref_object_dispose__1379;
      *(&v34 + 1) = &unk_185DF1D43;
      v23 = *&hash->var0[16];
      v35 = *hash->var0;
      v36 = v23;
      compilerConnectionManager = self->_compilerConnectionManager;
      compilerId = self->_compilerId;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __118__MTLCompiler_statelessBackendCompileRequestInternal_sync_compilerHash_reflectionOnly_compilerTask_completionHandler___block_invoke;
      v26[3] = &unk_1E6EEC190;
      onlyCopy = only;
      v26[6] = &v32;
      v26[7] = internal;
      v26[4] = self;
      v26[5] = handler;
      (*(*compilerConnectionManager + 32))(compilerConnectionManager, compilerId, internal, syncCopy, task, v26);
      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Downgrade failed with error: %@", objc_msgSend(v31, "localizedDescription")];
    *&v32 = 2;
    *(&v32 + 1) = v21;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    (*(handler + 2))(handler, &v32);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v28);
}

uint64_t __118__MTLCompiler_statelessBackendCompileRequestInternal_sync_compilerHash_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v36 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v27 = a2;
  v28 = v7;
  v29 = *(*(a1 + 48) + 8) + 48;
  v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  if (a2)
  {
    v8 = 0;
    v9 = 0;
  }

  else if (*(a1 + 64) == 1)
  {
    LOBYTE(v19[0]) = 2;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(&v24, v19, v19, &v36);
    dispatch_retain(v36);
    v8 = 0;
    v9 = 0;
    *&v31 = v36;
  }

  else
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v10 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
    v21 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    deserializeCompilerOutputData(buffer_ptr, size_ptr, &v21, v19, &v24);
    v18 = 0;
    v37 = &v18;
    *&v30 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    v18 = 3;
    v37 = &v18;
    *&v33 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    v18 = 6;
    v37 = &v18;
    *&v35 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    v18 = 4;
    v37 = &v18;
    v8 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    *(&v33 + 1) = v8;
    v18 = 4;
    v37 = &v18;
    v9 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    *&v34 = v9;
    v18 = 2;
    v37 = &v18;
    *&v31 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18, &std::piecewise_construct, &v37)[3];
    dispatch_release(v10);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v19);
  }

  if ((MTLCompilerFunctionRequest::getOptions(*(a1 + 56)) & 0x200) != 0)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v11;
    if (v9)
    {
      _MTLAddCompilerServiceCompileTimeStats(v11, v9);
    }

    if (v8)
    {
      [*(*(a1 + 32) + 8) deserializeCompileTimeStats:v8 addToDictionary:v12];
    }

    v13 = MTLCompilerFunctionRequest::function(*(a1 + 56));
    v14 = *(a1 + 56);
    if (v13)
    {
      -[NSDictionary setObject:forKey:](v12, "setObject:forKey:", [MTLCompilerFunctionRequest::function(v14) name], MTLBinaryFunctionPerformanceKeyFunctionName);
      _MTLAddCompileBinaryFunctionPerformanceStatistics(v12);
    }

    else if (MTLCompilerFunctionRequest::library(v14))
    {
      -[NSDictionary setObject:forKey:](v12, "setObject:forKey:", [MTLCompilerFunctionRequest::library(*(a1 + 56)) installName], MTLDynamicLibraryPerformanceKeyInstallName);
      _MTLAddCompileDynamicLibraryPerformanceStatistics(v12);
    }
  }

  (*(*(a1 + 40) + 16))();
  for (i = v25; i; i = *i)
  {
    v16 = i[3];
    if (v16)
    {
      dispatch_release(v16);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v24);
}

- (void)compileFunction:(id)function serializedPipelineData:(id)data stateData:(id)stateData linkDataSize:(unint64_t)size frameworkLinking:(BOOL)linking options:(unsigned int)options pipelineCache:(id)cache sync:(BOOL)self0 compilerTask:(id)self1 completionHandler:(id)self2
{
  linkingCopy = linking;
  v17 = objc_opt_new();
  [v17 setSync:sync];
  [v17 setFunction:function];
  [v17 setPipelineOptions:options];
  [v17 setFrameworkData:data];
  [v17 setDriverKeyData:stateData];
  [v17 setPipelineCache:cache];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __152__MTLCompiler_compileFunction_serializedPipelineData_stateData_linkDataSize_frameworkLinking_options_pipelineCache_sync_compilerTask_completionHandler___block_invoke;
  v20[3] = &unk_1E6EEC1B8;
  v20[4] = handler;
  [(MTLCompiler *)self compileFunctionRequestInternal:v17 frameworkLinking:linkingCopy linkDataSize:size reflectionOnly:0 compilerTask:task completionHandler:v20];
}

- (void)compileFunction:(id)function frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)cache sync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  v16 = objc_opt_new();
  [v16 setSync:syncCopy];
  [v16 setFunction:function];
  [v16 setPipelineOptions:options];
  [v16 setFrameworkData:data];
  [v16 setDriverKeyData:keyData];
  [v16 setPipelineCache:cache];
  [(MTLCompiler *)self compileFunctionRequestInternal:v16 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:0 completionHandler:handler];
}

- (void)compileFunction:(id)function visibleFunctions:(id)functions privateVisibleFunctions:(id)visibleFunctions visibleFunctionGroups:(id)groups frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)self0 sync:(BOOL)self1 completionHandler:(id)self2
{
  v19 = objc_opt_new();
  [v19 setSync:sync];
  [v19 setFunction:function];
  [v19 setPipelineOptions:options];
  [v19 setFrameworkData:data];
  [v19 setDriverKeyData:keyData];
  [v19 setPipelineCache:cache];
  [v19 setVisibleFunctions:functions];
  [v19 setVisibleFunctionGroups:groups];
  [v19 setPrivateVisibleFunctions:visibleFunctions];
  [(MTLCompiler *)self compileFunctionRequestInternal:v19 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:0 completionHandler:handler];
}

- (void)compileFunction:(id)function visibleFunctions:(id)functions visibleFunctionGroups:(id)groups frameworkData:(id)data driverKeyData:(id)keyData options:(unint64_t)options pipelineCache:(id)cache sync:(BOOL)self0 completionHandler:(id)self1
{
  v18 = objc_opt_new();
  [v18 setSync:sync];
  [v18 setFunction:function];
  [v18 setPipelineOptions:options];
  [v18 setFrameworkData:data];
  [v18 setDriverKeyData:keyData];
  [v18 setPipelineCache:cache];
  [v18 setVisibleFunctions:functions];
  [v18 setVisibleFunctionGroups:groups];
  [(MTLCompiler *)self compileFunctionRequestInternal:v18 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:0 completionHandler:handler];
}

- (void)compileDynamicLibraryWithDescriptor:(id)descriptor computePipelineDescriptor:(id)pipelineDescriptor compilerTask:(id)task completionHandler:(id)handler
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiling dynamic libraries is not supported!" forKey:{*MEMORY[0x1E696A578], task}];
  v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLDynamicLibraryDomain" code:2 userInfo:v7];
  (*(handler + 2))(handler, 0, v8);
}

- (id)compileDynamicLibraryWithDescriptor:(id)descriptor computePipelineDescriptor:(id)pipelineDescriptor compilerTask:(id)task error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__MTLCompiler_compileDynamicLibraryWithDescriptor_computePipelineDescriptor_compilerTask_error___block_invoke;
  v9[3] = &unk_1E6EEC1E0;
  v9[4] = &v16;
  v9[5] = &v10;
  [(MTLCompiler *)self compileDynamicLibraryWithDescriptor:descriptor computePipelineDescriptor:pipelineDescriptor completionHandler:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

id __96__MTLCompiler_compileDynamicLibraryWithDescriptor_computePipelineDescriptor_compilerTask_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    dispatch_retain(*(a2 + 24));
    *(*(*(a1 + 32) + 8) + 40) = *(a2 + 24);
  }

  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)addComputePipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  v9 = 0;
  [(MTLCompiler *)self newComputePipelineStateWithDescriptorInternal:descriptor options:options | 3 pipelineCache:0 destinationBinaryArchive:archive reflection:0 error:&v9 compilerTask:0 completionHandler:0];
  v7 = v9;
  if (error)
  {
    *error = v9;
  }

  return v7 == 0;
}

- (BOOL)addRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  v9 = 0;
  [(MTLCompiler *)self newRenderPipelineStateWithDescriptorInternal:descriptor options:options | 3 reflection:0 destinationBinaryArchive:archive error:&v9 completionHandler:0];
  v7 = v9;
  if (error)
  {
    *error = v9;
  }

  return v7 == 0;
}

- (BOOL)addTileRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  v9 = 0;
  [(MTLCompiler *)self newRenderPipelineStateWithTileDescriptorInternal:descriptor options:options | 3 reflection:0 destinationBinaryArchive:archive error:&v9 compilerTask:0 completionHandler:0];
  v7 = v9;
  if (error)
  {
    *error = v9;
  }

  return v7 == 0;
}

- (BOOL)addMeshRenderPipelineStateWithDescriptor:(id)descriptor destinationBinaryArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiling mesh pipelines for binary archives is not supported!" forKey:{*MEMORY[0x1E696A578], options}];
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLBinaryArchiveDomain" code:3 userInfo:v7];
  }

  return 0;
}

- (void)compileFunction:(id)function serializedData:(id)data stateData:(id)stateData options:(unint64_t)options compilerTask:(id)task completionHandler:(id)handler
{
  device = [function device];
  compilerFlags = self->_compilerFlags;
  v17 = MTLCompileTypeForFunction(function);
  LOBYTE(v18) = 0;
  [(MTLCompiler *)self compileFunction:function serializedPipelineData:data stateData:stateData linkDataSize:0 frameworkLinking:0 options:MTLGetCompilerOptions(device pipelineCache:options sync:compilerFlags compilerTask:v17 completionHandler:0), 0, v18, task, handler];
}

- (void)compileFunction:(id)function serializedData:(id)data stateData:(id)stateData options:(unint64_t)options completionHandler:(id)handler
{
  device = [function device];
  compilerFlags = self->_compilerFlags;
  v15 = MTLCompileTypeForFunction(function);
  v16 = MTLGetCompilerOptions(device, options, compilerFlags, v15, 0);

  [(MTLCompiler *)self compileFunction:function serializedData:data stateData:stateData options:v16 compilerTask:0 completionHandler:handler];
}

- (void)reflectionWithFunction:(id)function options:(unint64_t)options sync:(BOOL)sync pipelineLibrary:(id)library binaryArchives:(id)archives compilerTask:(id)task completionHandler:(id)handler
{
  syncCopy = sync;
  optionsCopy = options;
  v25 = *MEMORY[0x1E69E9840];
  pipelineCache = [library pipelineCache];
  v16 = objc_opt_new();
  [v16 setSync:syncCopy];
  [v16 setFunction:function];
  [v16 setPipelineOptions:optionsCopy & 0x20200000 | 0x10003];
  [v16 setPipelineCache:pipelineCache];
  [v16 setBinaryArchives:archives];
  bitCodeHash = [function bitCodeHash];
  if (bitCodeHash)
  {
    v18 = bitCodeHash[1];
    v23 = *bitCodeHash;
    v24 = v18;
    v21 = v23;
    v22 = v18;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  [v16 setArchiveHashKey:&v21];
  if ([function functionType] == 6 || objc_msgSend(function, "functionType") == 5)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __113__MTLCompiler_reflectionWithFunction_options_sync_pipelineLibrary_binaryArchives_compilerTask_completionHandler___block_invoke;
    v20[3] = &unk_1E6EEC1B8;
    v20[4] = handler;
    [(MTLCompiler *)self compileStatelessFunctionRequest:v16 reflectionOnly:1 compilerTask:task completionHandler:v20];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __113__MTLCompiler_reflectionWithFunction_options_sync_pipelineLibrary_binaryArchives_compilerTask_completionHandler___block_invoke_2;
    v19[3] = &unk_1E6EEC1B8;
    v19[4] = handler;
    [(MTLCompiler *)self compileFunctionRequestInternal:v16 frameworkLinking:0 linkDataSize:0 reflectionOnly:1 compilerTask:task completionHandler:v19];
  }
}

- (RequiredFunctionKeys)requiredKeysForFunction:(SEL)function variantKey:(id)key frameworkData:(const VariantKey *)data compilerOptions:(id)options driverCompilerOptions:(int)compilerOptions airScript:(id)script archives:(const void *)archives compiledNextStageVariant:(id)self0
{
  result = variant;
  v26 = *MEMORY[0x1E69E9840];
  *&retstr->var1[4] = 0u;
  *&retstr->var1[6] = 0u;
  *retstr->var1 = 0u;
  *&retstr->var1[2] = 0u;
  *&retstr->var0[4] = 0u;
  *&retstr->var0[6] = 0u;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  if (variant)
  {
    v16 = *&compilerOptions;
    result = [variant count];
    if (result)
    {
      if (archives)
      {
        memset(v25, 0, sizeof(v25));
        [(MTLCompiler *)self initializeVendorPluginFunctionId:key airScript:archives driverCompilerOptions:script compiledNextStageVariant:a11 vendorPlugin:v25];
        if (self)
        {
          objc_msgSend_getFunctionId_airScript_vendorPluginFunctionId_(self);
        }

        else
        {
          memset(&buffer, 0, sizeof(buffer));
        }

        retstr->var1[0] = [[MTLBinaryKey alloc] initWithHash:&buffer];
        MTLHashKey::~MTLHashKey(&buffer);
      }

      memset(&buffer, 0, 36);
      memset(&buffer.var5, 0, 40);
      var2 = data->var2;
      var3 = data->var3;
      var6 = data->var6;
      buffer.var0 = malloc_type_malloc(var6 + var3 + var2, 0x100004077774924uLL);
      memcpy(buffer.var0, data->var0, var2);
      memcpy(&buffer.var0[var2], data->var1, var3);
      memcpy(&buffer.var0[var2 + var3], data->var5, var6);
      buffer.var1 = var2;
      buffer.var2 = var3;
      buffer.var3 = var6 + var3;
      buffer.var5 = dispatch_group_create();
      dispatch_group_enter(buffer.var5);
      v23 = dispatch_data_create(buffer.var0, buffer.var2 + buffer.var1, 0, 0);
      [(MTLCompiler *)self addFunctionKeys:retstr function:key driverData:v23 frameworkData:options compilerOptions:v16];
      dispatch_release(v23);
      os_unfair_lock_lock(&buffer.var4);
      if (!buffer.var7)
      {

        buffer.var8 = [0 copy];
      }

      dispatch_group_leave(buffer.var5);
      os_unfair_lock_unlock(&buffer.var4);
      VariantEntry::~VariantEntry(&buffer);
    }
  }

  return result;
}

- (void)getProgramObjectForFunction:(id)function variantKey:(const VariantKey *)key requiredKeys:(const RequiredFunctionKeys *)keys sourceBinaryArchives:(id)archives
{
  archivesCopy = archives;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [archives countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *v27;
  v24 = *v27;
  v25 = archivesCopy;
  do
  {
    v13 = 0;
    while (2)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(archivesCopy);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      functionCopy = function;
      v16 = [v14 findProgramObjectForFunction:{objc_msgSend(function, "bitCodeHash", v24)}];
      v17 = 0;
      if ([v14 supportsAIRNT])
      {
        v18 = 64;
      }

      else
      {
        v18 = 0;
      }

      keysCopy = keys;
      v20 = keys + v18;
      while (1)
      {
        v21 = *&v20[8 * v17];
        if (!v21)
        {
          goto LABEL_22;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        if (v17)
        {
          break;
        }

        if (!VariantList<4u>::find<VariantKey>(v16, key))
        {
          goto LABEL_21;
        }

LABEL_22:
        if (++v17 == 8)
        {
          if (!v16)
          {
            return [v14 programObjectForFunction:{objc_msgSend(functionCopy, "bitCodeHash")}];
          }

          return v16;
        }
      }

      if (v17 == 6)
      {
        v22 = VariantList<4u>::find<VariantKey>(v16, key);
        if (v22 && v22[9])
        {
          goto LABEL_22;
        }
      }

      else if (v17 == 2 && [v16[54] objectForKey:&stru_1EF478240])
      {
        goto LABEL_22;
      }

LABEL_21:
      if ([v14 getBinaryDataForKey:v21 reflectionType:1])
      {
        goto LABEL_22;
      }

      ++v13;
      keys = keysCopy;
      function = functionCopy;
      v12 = v24;
      archivesCopy = v25;
      if (v13 != v11)
      {
        continue;
      }

      break;
    }

    v11 = [v25 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v16 = 0;
  }

  while (v11);
  return v16;
}

- (void)getProgramObject:(id)object destinationArchive:(id)archive sourceBinaryArchives:(id)archives variantKey:(const VariantKey *)key requiredKeys:(const RequiredFunctionKeys *)keys failOnMiss:(BOOL)miss
{
  if (archive)
  {
    bitCodeHash = [object bitCodeHash];

    return [archive programObjectForFunction:bitCodeHash];
  }

  else
  {
    if (archives)
    {
      result = [(MTLCompiler *)self getProgramObjectForFunction:object variantKey:key requiredKeys:keys sourceBinaryArchives:archives];
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    if (!miss)
    {

      return [object programObject];
    }
  }

  return result;
}

- (id)createMeshStageAndLinkPipelineWithFragment:(void *)fragment fragmentVariant:(id)variant objectFunction:(id)function serializedObjectDescriptor:(id)descriptor meshFunction:(id)meshFunction serializedMeshDescriptor:(id)meshDescriptor descriptor:(id)a9 airDescriptor:(id)self0 destinationArchive:(id)self1 options:(unint64_t)self2 reflection:(id *)self3 compileStatistics:(id)self4 fragmentCompileTimeData:(id)self5 pipelineArchiverId:(id)self6 error:(id *)self7 compilerTask:(id)self8 completionHandler:(id)self9
{
  optionsCopy2 = options;
  airDescriptorCopy = airDescriptor;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__10;
  v56 = __Block_byref_object_dispose__10;
  v57 = 0;
  v50 = 0;
  size_ptr = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3052000000;
  v48[3] = __Block_byref_object_copy__10;
  v48[4] = __Block_byref_object_dispose__10;
  if (airDescriptor)
  {
    airDescriptorCopy = dispatch_data_create_map(airDescriptor, &v50, &size_ptr);
  }

  v48[5] = airDescriptorCopy;
  v28 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 0, 0);
  if (descriptor)
  {
    dispatch_retain(descriptor);
  }

  meshFunctionCopy = meshFunction;
  functionCopy = function;
  dataCopy2 = data;
  if (meshDescriptor)
  {
    dispatch_retain(meshDescriptor);
  }

  taskCopy2 = task;
  handlerCopy2 = handler;
  archiveCopy2 = archive;
  v33 = a9;
  if (data)
  {
    dispatch_retain(data);
    archiveCopy2 = archive;
    optionsCopy2 = options;
    handlerCopy2 = handler;
    taskCopy2 = task;
    dataCopy2 = data;
    v33 = a9;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke;
  v47[3] = &unk_1E6EEC208;
  v47[4] = descriptor;
  v47[5] = meshDescriptor;
  v47[6] = dataCopy2;
  v47[7] = v48;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2;
  v46[3] = &unk_1E6EEC230;
  v46[4] = archiveCopy2;
  v46[5] = variant;
  v46[6] = self;
  v46[7] = v33;
  v46[12] = fragment;
  v46[13] = optionsCopy2;
  v46[8] = statistics;
  v46[9] = dataCopy2;
  v46[10] = handlerCopy2;
  v46[11] = &v52;
  v46[14] = reflection;
  v46[15] = error;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3;
  v42[3] = &unk_1E6EEC320;
  v42[4] = self;
  v42[5] = v33;
  v42[14] = v49;
  v42[15] = optionsCopy2;
  v42[6] = descriptor;
  v42[7] = functionCopy;
  v43 = options & 0x11240000;
  v44 = v28;
  v45 = (options & 4) != 0;
  v42[16] = error;
  v42[8] = archiveCopy2;
  v42[9] = statistics;
  v42[10] = taskCopy2;
  v42[11] = v47;
  v42[12] = handlerCopy2;
  v42[13] = v46;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9;
  v38[3] = &unk_1E6EEC370;
  v38[4] = self;
  v38[5] = v33;
  v38[6] = variant;
  v38[7] = meshDescriptor;
  v39 = options & 0x11240000;
  v40 = v28;
  v38[8] = meshFunctionCopy;
  v38[9] = archiveCopy2;
  v41 = v45;
  v38[18] = optionsCopy2;
  v38[19] = error;
  v38[10] = statistics;
  v38[11] = taskCopy2;
  v38[12] = functionCopy;
  v38[13] = v47;
  v38[14] = handlerCopy2;
  v38[15] = v42;
  v38[16] = v46;
  v38[17] = v49;
  __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9(v38);
  v34 = v53[5];
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v52, 8);
  return v34;
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(*(a1[7] + 8) + 40);
  if (v5)
  {

    dispatch_release(v5);
  }
}

void *__315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (!*(result + 4))
  {
    v10 = result;
    result = newRenderPipeline(*(result + 12), *(result + 5), a2, a3, a8, a9, a10, a5, a6, a7, *(*(result + 6) + 8), 0, *(v10 + 7), *(v10 + 13), *(*(result + 6) + 48), *(v10 + 14), *(v10 + 8), *(v10 + 9), a4, *(v10 + 10), *(v10 + 15));
    *(*(*(v10 + 11) + 8) + 40) = result;
  }

  return result;
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3052000000;
  v63[3] = __Block_byref_object_copy__10;
  v63[4] = __Block_byref_object_dispose__10;
  v63[5] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v8 = [*(a1 + 32) getFunctionKeyWithRenderPipelineDescriptor:*(a1 + 40) options:*(a1 + 136) unfilteredOptions:*(a1 + 120) airScript:*(*(*(a1 + 112) + 8) + 24) function:objc_msgSend(*(a1 + 40) functionType:"objectFunction") compiledNextStageVariant:8 keySize:a3 functionDriverData:&v54 functionDriverSize:{&v53, &v52}];
  v51 = 0;
  v9 = [a3 inputInfoAndSize:&v51];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = v48;
  v11 = *(a1 + 140);
  v72.val[1] = *(a1 + 32);
  v72.val[0] = *(a1 + 48);
  v12 = *(*(a1 + 32) + 24);
  block[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4;
  block[3] = &unk_1E6EEC258;
  v48[8] = v54;
  v48[9] = v9;
  v49 = v11;
  v48[10] = v51;
  v48[11] = 0;
  v48[7] = v8;
  v13 = *(a1 + 64);
  v48[4] = a3;
  v48[5] = v13;
  v48[6] = &v64;
  v50 = *(a1 + 144);
  vst2q_f64(v10, v72);
  dispatch_sync(v12, block);
  v14 = v65[3];
  if (v14)
  {
    v15 = *(v14 + 440);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5;
    v45[3] = &unk_1E6EEC280;
    v45[12] = v54;
    v45[13] = v9;
    v45[8] = &v64;
    v45[9] = &v59;
    v16 = *(a1 + 120);
    v45[14] = v51;
    v45[15] = v16;
    v17 = *(a1 + 72);
    v18 = *(a1 + 40);
    v45[4] = *(a1 + 48);
    v45[5] = v17;
    v45[6] = v18;
    v45[7] = &v68;
    v45[10] = &v55;
    v45[11] = v8;
    v46 = *(a1 + 140);
    dispatch_sync(v15, v45);
    if (*(v60 + 24) == 1)
    {
      v19 = VariantEntry::newSerializedKeyWithAdditionalData(v69[3], v53, v54);
      v20 = v51;
      if ((*(a1 + 141) & 2) != 0)
      {
        v21 = mach_absolute_time();
      }

      else
      {
        v21 = 0;
      }

      v26 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v26 setSync:*(a1 + 96) == 0];
      [(MTLCompileFunctionRequestData *)v26 setFunction:*(a1 + 56)];
      [(MTLCompileFunctionRequestData *)v26 setPipelineOptions:*(a1 + 120)];
      [(MTLCompileFunctionRequestData *)v26 setFrameworkData:*(a1 + 48)];
      [(MTLCompileFunctionRequestData *)v26 setDriverKeyData:v19];
      [(MTLCompileFunctionRequestData *)v26 setDestinationBinaryArchive:*(a1 + 64)];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v26, "setBinaryArchives:", [*(a1 + 40) binaryArchives]);
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v26, "setGpuCompilerSPIOptions:", [*(a1 + 40) gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v26, "setMaxAccelerationStructureTraversalDepth:", [*(a1 + 40) maxAccelerationStructureTraversalDepth]);
      [(MTLCompileFunctionRequestData *)v26 setAirScript:0];
      setLinkedFunctionsForRequest(v26, [*(a1 + 40) objectLinkedFunctions]);
      [*(a1 + 32) initializeFunctionRequestScriptAndFunctionId:v26 script:0 driverCompilerOptions:objc_msgSend(*(a1 + 40) compiledNextStageVariant:{"driverCompilerOptions"), a3}];
      v27 = *(a1 + 32);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_6;
      v43[3] = &unk_1E6EEC2A8;
      v44 = *(a1 + 140);
      v29 = *(a1 + 72);
      v28 = *(a1 + 80);
      v43[4] = v27;
      v43[5] = v29;
      v43[6] = *(a1 + 40);
      v43[7] = &v64;
      v43[8] = v63;
      v43[9] = &v68;
      v43[10] = v21;
      [v27 compileFunctionRequestInternal:v26 frameworkLinking:1 linkDataSize:v20 reflectionOnly:0 compilerTask:v28 completionHandler:v43];

      dispatch_release(v19);
    }

    else if (*(v56 + 24) == 1)
    {
      dispatch_group_enter(*(v69[3] + 40));
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v25 = *(a1 + 120);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_7;
      v42[3] = &unk_1E6EEC2D0;
      v42[4] = v23;
      v42[5] = &v64;
      v42[6] = &v68;
      [v22 reflectionWithFunction:v24 options:v25 completionHandler:v42];
    }

    [*(*(a1 + 32) + 8) freeObjectFunctionDriverData:v53 objectFunctionDriverDataSize:v52];
    [*(*(a1 + 32) + 8) freeObjectFunctionKey:v8 objectKeySize:v54];
    if (a4)
    {
      dispatch_retain(a4);
    }

    v30 = v69[3];
    v31 = *(a1 + 96);
    v32 = [*(*(a1 + 32) + 8) serialQueue];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_8;
    v34[3] = &unk_1E6EEC2F8;
    v35 = *(a1 + 88);
    v33 = *(a1 + 128);
    v36 = *(a1 + 104);
    v37 = &v68;
    v38 = &v64;
    v39 = v63;
    v40 = v33;
    v41 = a2;
    v34[4] = a3;
    v34[5] = a4;
    VariantEntry::waitOrNotify(v30, v31 != 0, v32, v34);
  }

  else
  {
    [*(*(a1 + 32) + 8) freeObjectFunctionDriverData:v53 objectFunctionDriverDataSize:v52];
    [*(*(a1 + 32) + 8) freeObjectFunctionKey:v8 objectKeySize:v54];
    (*(*(a1 + 88) + 16))();
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", *(a1 + 96), *(a1 + 128));
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v3;
  v10[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v12, &v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v11 = v6;
  v7 = *(a1 + 40);
  [*(a1 + 56) driverCompilerOptions];
  v8 = [*(a1 + 56) binaryArchives];
  if (v7)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v7, v8, *(a1 + 64));
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v10 failOnMiss:{&v9, *(a1 + 132)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v9);
  if (v11)
  {
    dispatch_release(v11);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v18[0] = v2;
  v18[1] = v4;
  v18[2] = v3;
  v18[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v20, &v21);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  object = v6;
  *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v18);
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v18);
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if ((*(a1 + 122) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(a1 + 40);
    v9 = [objc_msgSend(*(a1 + 48) "objectFunction")];
    v10 = MTLPipelinePerformanceKeyObjectShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyObjectShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(a1 + 128))
  {
    v14 = *(*(*(a1 + 64) + 8) + 24);
    v15 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_1EF478240;
    }

    v13 = [*(v14 + 432) objectForKey:v16] == 0;
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v13;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v17 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v17 + 424))
    {
      *(v17 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_6(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 89) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) newObjectVariantWithCompilerOutput:a2[3] pipelineStatisticsOutput:a2[9]];
    v5 = v6;
    if ((*(a1 + 89) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:a2[13]];
    }
  }

  v7 = *(a1 + 88);
  if ((v7 & 0x200) != 0)
  {
    v8 = *(a1 + 40);
    v9 = a2[11];
    v10 = MTLPipelinePerformanceKeyObjectShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyObjectShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(a1 + 88);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = a2[5];
    v16 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v17 = *(v14 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v15;
      block[6] = v14;
      block[4] = v16;
      dispatch_sync(v17, block);
    }
  }

  v18 = a2[10];
  if (v18)
  {
    *(*(*(a1 + 64) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 64) + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(*(a1 + 72) + 8) + 24), v5, *a2, a2[1], a2[13]);
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "gpuCompilerSPIOptions")];
  if (a3)
  {
    v10 = *(v8 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v8;
    block[4] = v9;
    dispatch_sync(v10, block);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  os_unfair_lock_lock((v11 + 32));
  if (!*(v11 + 56))
  {
    *(v11 + 56) = a2;

    *(v11 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v11 + 40));
  os_unfair_lock_unlock((v11 + 32));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_8(uint64_t a1)
{
  if (*(*(*(*(a1 + 72) + 8) + 24) + 48))
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v2 = *(*(*(a1 + 72) + 8) + 24);
    reportErrorMessage(*(v2 + 56), *(v2 + 64), *(a1 + 56), *(a1 + 96));
  }

  v3 = *(*(*(a1 + 88) + 8) + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9(uint64_t a1)
{
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3052000000;
  v65[3] = __Block_byref_object_copy__10;
  v65[4] = __Block_byref_object_dispose__10;
  v65[5] = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v2 = [*(a1 + 32) getFunctionKeyWithRenderPipelineDescriptor:*(a1 + 40) options:*(a1 + 160) unfilteredOptions:*(a1 + 144) airScript:*(*(*(a1 + 136) + 8) + 24) function:objc_msgSend(*(a1 + 40) functionType:"meshFunction") compiledNextStageVariant:7 keySize:*(a1 + 48) functionDriverData:&v56 functionDriverSize:{&v55, &v54}];
  v53 = 0;
  v3 = [*(a1 + 48) inputInfoAndSize:&v53];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_10;
  block[3] = &unk_1E6EEC258;
  v47 = v56;
  v48 = v3;
  v49 = v53;
  v6 = *(a1 + 64);
  block[4] = *(a1 + 56);
  block[5] = v4;
  block[6] = v6;
  v51 = *(a1 + 164);
  v50 = 0;
  v43 = *(a1 + 40);
  v7 = *(a1 + 72);
  v45 = &v66;
  v46 = v2;
  v44 = v7;
  v52 = *(a1 + 168);
  dispatch_sync(v5, block);
  v8 = v67[3];
  if (v8)
  {
    v9 = *(v8 + 440);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_11;
    v40[3] = &unk_1E6EEC280;
    v40[12] = v56;
    v40[13] = v3;
    v10 = *(a1 + 56);
    v40[8] = &v66;
    v40[9] = &v61;
    v11 = *(a1 + 144);
    v40[14] = v53;
    v40[15] = v11;
    v12 = *(a1 + 80);
    v40[4] = v10;
    v40[5] = v12;
    v40[6] = *(a1 + 40);
    v40[7] = &v70;
    v40[10] = &v57;
    v40[11] = v2;
    v41 = *(a1 + 164);
    dispatch_sync(v9, v40);
    if (*(v62 + 24) == 1)
    {
      v13 = VariantEntry::newSerializedKeyWithAdditionalData(v71[3], v55, v54);
      v14 = v53;
      if ((*(a1 + 165) & 2) != 0)
      {
        v15 = mach_absolute_time();
      }

      else
      {
        v15 = 0;
      }

      v20 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v20 setSync:*(a1 + 112) == 0];
      [(MTLCompileFunctionRequestData *)v20 setFunction:*(a1 + 64)];
      [(MTLCompileFunctionRequestData *)v20 setPipelineOptions:*(a1 + 144)];
      [(MTLCompileFunctionRequestData *)v20 setFrameworkData:*(a1 + 56)];
      [(MTLCompileFunctionRequestData *)v20 setDriverKeyData:v13];
      [(MTLCompileFunctionRequestData *)v20 setDestinationBinaryArchive:*(a1 + 72)];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v20, "setBinaryArchives:", [*(a1 + 40) binaryArchives]);
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v20, "setGpuCompilerSPIOptions:", [*(a1 + 40) gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v20, "setMaxAccelerationStructureTraversalDepth:", [*(a1 + 40) maxAccelerationStructureTraversalDepth]);
      setLinkedFunctionsForRequest(v20, [*(a1 + 40) meshLinkedFunctions]);
      [*(a1 + 32) initializeFunctionRequestScriptAndFunctionId:v20 script:0 driverCompilerOptions:objc_msgSend(*(a1 + 40) compiledNextStageVariant:{"driverCompilerOptions"), *(a1 + 48)}];
      v21 = *(a1 + 32);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_12;
      v38[3] = &unk_1E6EEC2A8;
      v39 = *(a1 + 164);
      v23 = *(a1 + 80);
      v22 = *(a1 + 88);
      v38[4] = v21;
      v38[5] = v23;
      v38[6] = *(a1 + 40);
      v38[7] = &v66;
      v38[8] = v65;
      v38[9] = &v70;
      v38[10] = v15;
      [v21 compileFunctionRequestInternal:v20 frameworkLinking:1 linkDataSize:v14 reflectionOnly:0 compilerTask:v22 completionHandler:v38];

      dispatch_release(v13);
    }

    else if (*(v58 + 24) == 1)
    {
      dispatch_group_enter(*(v71[3] + 40));
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v19 = *(a1 + 144);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_13;
      v37[3] = &unk_1E6EEC2D0;
      v37[4] = v17;
      v37[5] = &v66;
      v37[6] = &v70;
      [v16 reflectionWithFunction:v18 options:v19 completionHandler:v37];
    }

    [*(*(a1 + 32) + 8) freeMeshFunctionDriverData:v55 meshFunctionDriverDataSize:v54];
    [*(*(a1 + 32) + 8) freeMeshFunctionKey:v2 meshKeySize:v56];
    v24 = v71[3];
    v25 = *(a1 + 112);
    v26 = [*(*(a1 + 32) + 8) serialQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_14;
    v29[3] = &unk_1E6EEC348;
    v27 = *(a1 + 152);
    v28 = *(a1 + 112);
    v30 = *(a1 + 96);
    v31 = v28;
    v33 = &v70;
    v34 = &v66;
    v35 = v65;
    v36 = v27;
    v32 = *(a1 + 128);
    VariantEntry::waitOrNotify(v24, v25 != 0, v26, v29);
  }

  else
  {
    [*(*(a1 + 32) + 8) freeMeshFunctionDriverData:v55 meshFunctionDriverDataSize:v54];
    [*(*(a1 + 32) + 8) freeMeshFunctionKey:v2 meshKeySize:v56];
    (*(*(a1 + 104) + 16))();
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", *(a1 + 112), *(a1 + 152));
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v3;
  v10[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v12, &v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v11 = v6;
  v7 = *(a1 + 40);
  [*(a1 + 56) driverCompilerOptions];
  v8 = [*(a1 + 56) binaryArchives];
  if (v7)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v7, v8, *(a1 + 64));
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v10 failOnMiss:{&v9, *(a1 + 132)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v9);
  if (v11)
  {
    dispatch_release(v11);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v18[0] = v2;
  v18[1] = v4;
  v18[2] = v3;
  v18[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v20, &v21);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  object = v6;
  *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v18);
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v18);
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if ((*(a1 + 122) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(a1 + 40);
    v9 = [objc_msgSend(*(a1 + 48) "meshFunction")];
    v10 = MTLPipelinePerformanceKeyMeshShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyMeshShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(a1 + 128))
  {
    v14 = *(*(*(a1 + 64) + 8) + 24);
    v15 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_1EF478240;
    }

    v13 = [*(v14 + 432) objectForKey:v16] == 0;
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v13;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v17 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v17 + 424))
    {
      *(v17 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_12(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 89) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) newMeshVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    v5 = v6;
    if ((*(a1 + 89) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v7 = *(a1 + 88);
  if ((v7 & 0x200) != 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a2 + 88);
    v10 = MTLPipelinePerformanceKeyMeshShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyMeshShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(a1 + 88);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = *(a2 + 40);
    v16 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v17 = *(v14 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v15;
      block[6] = v14;
      block[4] = v16;
      dispatch_sync(v17, block);
    }
  }

  v18 = *(a2 + 80);
  if (v18)
  {
    *(*(*(a1 + 64) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 64) + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(*(a1 + 72) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "gpuCompilerSPIOptions")];
  if (a3)
  {
    v10 = *(v8 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v8;
    block[4] = v9;
    dispatch_sync(v10, block);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  os_unfair_lock_lock((v11 + 32));
  if (!*(v11 + 56))
  {
    *(v11 + 56) = a2;

    *(v11 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v11 + 40));
  os_unfair_lock_unlock((v11 + 32));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_14(uint64_t a1)
{
  if (*(*(*(*(a1 + 72) + 8) + 24) + 48))
  {
    if (*(a1 + 32))
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), 0);
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v2 = *(*(*(a1 + 72) + 8) + 24);
    reportErrorMessage(*(v2 + 56), *(v2 + 64), *(a1 + 48), *(a1 + 96));
  }

  v3 = *(*(*(a1 + 88) + 8) + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

- (id)createVertexStageAndLinkPipelineWithFragment:(void *)fragment fragmentVariant:(id)variant vertexFunction:(id)function serializedVertexDescriptor:(id)descriptor descriptor:(id)a7 airDescriptor:(id)airDescriptor destinationArchive:(id)archive options:(unint64_t)self0 reflection:(id *)self1 compileStatistics:(id)self2 fragmentCompileTimeData:(id)self3 pipelineArchiverId:(id)self4 error:(id *)self5 compilerTask:(id)self6 completionHandler:(id)self7
{
  v76 = 0;
  v77 = &v76;
  v78 = 0x3052000000;
  v79 = __Block_byref_object_copy__10;
  v80 = __Block_byref_object_dispose__10;
  v81 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3052000000;
  v75[3] = __Block_byref_object_copy__10;
  v75[4] = __Block_byref_object_dispose__10;
  v75[5] = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 0, 0);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  buffer_ptr = 0;
  size_ptr = 0;
  v41 = dispatch_data_create_map(airDescriptor, &buffer_ptr, &size_ptr);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v23 = -[MTLCompiler getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:functionDriverData:functionDriverSize:](self, "getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:functionDriverData:functionDriverSize:", a7, options & 0x11240000, options, buffer_ptr, [a7 vertexFunction], 1, variant, &v52, &v51, &v50);
  fragmentCopy = fragment;
  v49 = 0;
  v24 = [variant inputInfoAndSize:&v49];
  archiveCopy = archive;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC398;
  block[12] = v23;
  block[13] = v52;
  block[14] = v24;
  block[15] = v49;
  block[4] = descriptor;
  block[5] = self;
  block[6] = function;
  block[7] = a7;
  block[16] = buffer_ptr;
  block[10] = &v71;
  block[11] = &v55;
  block[8] = variant;
  block[9] = archive;
  v48 = (options & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v27 = v56[3];
  if (v27)
  {
    v28 = *(v27 + 440);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2;
    v46[3] = &unk_1E6EEC3C0;
    v46[14] = v52;
    v46[15] = v24;
    v46[8] = &v67;
    v46[9] = &v55;
    descriptorCopy = descriptor;
    v46[4] = descriptor;
    v46[5] = archive;
    v46[16] = v49;
    v46[17] = options;
    v46[6] = statistics;
    v46[7] = a7;
    v46[10] = &v63;
    v46[11] = &v59;
    v46[12] = &v71;
    v46[13] = v23;
    dispatch_sync(v28, v46);
    if (*(v64 + 24) == 1)
    {
      object = VariantEntry::newSerializedKeyWithAdditionalData(v68[3], v51, v50);
      v30 = v41;
      v38 = v49;
      if ((*(v72 + 25) & 2) != 0)
      {
        v37 = mach_absolute_time();
        archiveCopy3 = archive;
      }

      else
      {
        archiveCopy3 = archive;
        v37 = 0;
      }

      v33 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v33 setSync:handler == 0];
      [(MTLCompileFunctionRequestData *)v33 setFunction:function];
      [(MTLCompileFunctionRequestData *)v33 setPipelineOptions:options];
      [(MTLCompileFunctionRequestData *)v33 setFrameworkData:descriptorCopy];
      [(MTLCompileFunctionRequestData *)v33 setDriverKeyData:object];
      [(MTLCompileFunctionRequestData *)v33 setDestinationBinaryArchive:archiveCopy3];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v33, "setBinaryArchives:", [a7 binaryArchives]);
      [(MTLCompileFunctionRequestData *)v33 setArchiverId:id];
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v33, "setGpuCompilerSPIOptions:", [a7 gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v33, "setMaxAccelerationStructureTraversalDepth:", [a7 maxAccelerationStructureTraversalDepth]);
      setLinkedFunctionsForRequest(v33, [a7 vertexLinkedFunctions]);
      [(MTLCompileFunctionRequestData *)v33 setAirScript:v41];
      -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v33, buffer_ptr, [a7 driverCompilerOptions], variant);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3;
      v45[3] = &unk_1E6EEC3E8;
      v45[4] = self;
      v45[5] = statistics;
      v45[6] = &v71;
      v45[7] = &v55;
      v45[8] = v75;
      v45[9] = &v67;
      v45[10] = v37;
      [(MTLCompiler *)self compileFunctionRequestInternal:v33 frameworkLinking:1 linkDataSize:v38 reflectionOnly:0 compilerTask:task completionHandler:v45];

      dispatch_release(object);
      archiveCopy = archiveCopy3;
    }

    else
    {
      v30 = v41;
      if (*(v60 + 24) == 1)
      {
        dispatch_group_enter(*(v68[3] + 40));
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4;
        v44[3] = &unk_1E6EEC410;
        v44[4] = &v55;
        v44[5] = &v67;
        [(MTLCompiler *)self reflectionWithFunction:function options:options completionHandler:v44];
      }
    }

    [(_MTLDevice *)self->_device freeVertexFunctionDriverData:v51 vertexFunctionDriverDataSize:v50];
    [(_MTLDevice *)self->_device freeVertexFunctionKey:v23 vertexKeySize:v52];
    dispatch_retain(descriptorCopy);
    v34 = v68[3];
    serialQueue = [(_MTLDevice *)self->_device serialQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5;
    v43[3] = &unk_1E6EEC438;
    v43[4] = archiveCopy;
    v43[5] = variant;
    v43[12] = &v67;
    v43[13] = &v76;
    v43[6] = self;
    v43[7] = descriptorCopy;
    v43[16] = error;
    v43[17] = options;
    v43[8] = a7;
    v43[9] = statistics;
    v43[14] = &v55;
    v43[15] = v75;
    v43[18] = reflection;
    v43[19] = fragmentCopy;
    v43[10] = data;
    v43[11] = handler;
    VariantEntry::waitOrNotify(v34, handler != 0, serialQueue, v43);
    dispatch_release(v30);
    v32 = v77[5];
  }

  else
  {
    [(_MTLDevice *)self->_device freeVertexFunctionDriverData:v51 vertexFunctionDriverDataSize:v50];
    [(_MTLDevice *)self->_device freeVertexFunctionKey:v23 vertexKeySize:v52];
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", handler, error);
    dispatch_release(v41);
    v32 = 0;
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(&v76, 8);
  return v32;
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v3;
  v10[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v12, &v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v11 = v6;
  v7 = *(a1 + 40);
  [*(a1 + 56) driverCompilerOptions];
  v8 = [*(a1 + 56) binaryArchives];
  if (v7)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v7, v8, *(a1 + 64));
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v10 failOnMiss:{&v9, *(a1 + 136)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v9);
  if (v11)
  {
    dispatch_release(v11);
  }
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 32);
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v3;
  v15[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v17, &v18);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  object = v6;
  *(*(*(a1 + 64) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 72) + 8) + 24), v15);
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    *(*(*(a1 + 64) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 72) + 8) + 24), v15);
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 40))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 138) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 80) + 8) + 24);
    v8 = *(a1 + 48);
    v9 = [objc_msgSend(*(a1 + 56) "vertexFunction")];
    v10 = MTLPipelinePerformanceKeyVertexShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  v13 = (*(*(*(a1 + 96) + 8) + 24) & 1) != 0 && [*(*(*(*(a1 + 72) + 8) + 24) + 432) objectForKey:&stru_1EF478240] == 0;
  *(*(*(a1 + 88) + 8) + 24) = v13;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v14 = *(*(*(a1 + 72) + 8) + 24);
    if (!*(v14 + 424))
    {
      *(v14 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if ((*(*(a1[6] + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - a1[10]));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1[4] + 8) newVertexVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    v5 = v6;
    if ((*(*(a1[6] + 8) + 25) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v7 = *(*(a1[6] + 8) + 24);
  if ((v7 & 0x200) != 0)
  {
    v8 = a1[5];
    v9 = *(a2 + 88);
    v10 = MTLPipelinePerformanceKeyVertexShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(*(a1[6] + 8) + 24);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(a2 + 40);
    if (v14)
    {
      v15 = *(*(a1[7] + 8) + 24);
      v16 = *(v15 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v14;
      block[6] = v15;
      block[4] = 0;
      dispatch_sync(v16, block);
    }
  }

  v17 = *(a2 + 80);
  if (v17)
  {
    *(*(a1[8] + 8) + 40) = v17;
    dispatch_retain(*(*(a1[8] + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(a1[9] + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 96) + 8) + 24);
  v3 = *(v2 + 48);
  if (v3)
  {
    if (!*(a1 + 32))
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v5 = newRenderPipeline(*(a1 + 152), v4, *(*(*(a1 + 112) + 8) + 24), v3, 0, 0, 0, 0, 0, 0, *(*(a1 + 48) + 8), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(*(a1 + 48) + 48), *(a1 + 144), *(a1 + 72), *(a1 + 80), *(*(*(a1 + 120) + 8) + 40), *(a1 + 88), *(a1 + 128));
      }

      else
      {
        v5 = newRenderPipeline(0, 0, *(*(*(a1 + 112) + 8) + 24), v3, 0, 0, 0, 0, 0, 0, *(*(a1 + 48) + 8), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(*(a1 + 48) + 48), *(a1 + 144), *(a1 + 72), 0, *(*(*(a1 + 120) + 8) + 40), *(a1 + 88), *(a1 + 128));
      }

      *(*(*(a1 + 104) + 8) + 40) = v5;
    }
  }

  else
  {
    reportErrorMessage(*(v2 + 56), *(v2 + 64), *(a1 + 88), *(a1 + 128));
  }

  v6 = *(*(*(a1 + 120) + 8) + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 56);

  dispatch_release(v8);
}

- (void)addFunctionKeys:(RequiredFunctionKeys *)keys function:(id)function driverData:(id)data frameworkData:(id)frameworkData compilerOptions:(int)options
{
  optionsCopy = options;
  FunctionHashFactory::FunctionHashFactory(&v15, function, [function functionData], options & 0xFFFFBFFF, 0, 0, 0);
  if ((optionsCopy & 2) == 0)
  {
    keys->var0[0] = FunctionHashFactory::createHash(&v15, 0, data, frameworkData);
  }

  if (optionsCopy)
  {
    if ((optionsCopy & 0x1000) != 0)
    {
      dataCopy = data;
    }

    else
    {
      dataCopy = 0;
    }

    if ((optionsCopy & 0x1000) != 0)
    {
      frameworkDataCopy = frameworkData;
    }

    else
    {
      frameworkDataCopy = 0;
    }

    keys->var0[2] = FunctionHashFactory::createHash(&v15, 2, dataCopy, frameworkDataCopy);
  }

  if ((optionsCopy & 0x100) != 0)
  {
    keys->var0[3] = FunctionHashFactory::createHash(&v15, 3, 0, 0, 0, 0);
  }

  if ((optionsCopy & 0x1000) != 0)
  {
    keys->var0[6] = FunctionHashFactory::createHash(&v15, 6, data, frameworkData);
  }

  functionType = [function functionType];
  if ((optionsCopy & 4) != 0 && functionType == 2)
  {
    keys->var0[1] = FunctionHashFactory::createHash(&v15, 1, data, frameworkData);
  }
}

- (id)newRenderPipelineStateWithDescriptorInternal:(id)internal options:(unint64_t)options reflection:(id *)reflection destinationBinaryArchive:(id)archive error:(id *)error compilerTask:(id)task completionHandler:(id)handler
{
  if ((options & 0x400000) != 0)
  {
    if (initTimebaseInfo(void)::onceToken == -1)
    {
      if (handler)
      {
        goto LABEL_4;
      }

LABEL_110:
      v15 = mach_absolute_time();
      if (!error)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    initTimebaseInfo();
    if (!handler)
    {
      goto LABEL_110;
    }
  }

LABEL_4:
  v15 = 0;
  if (error)
  {
LABEL_5:
    *error = 0;
  }

LABEL_6:
  if (!self->_device)
  {
    MTLReportFailure(0, "[MTLCompiler newRenderPipelineStateWithDescriptorInternal:options:reflection:destinationBinaryArchive:error:compilerTask:completionHandler:]", 19829, @"device cannot be null.", reflection, archive, error, task, v54);
    if (!self->_device)
    {
      return 0;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (internal)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(MTLCompiler *)isKindOfClass newRenderPipelineStateWithDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v54];
    if (internal)
    {
      goto LABEL_9;
    }
  }

  [(MTLCompiler *)isKindOfClass newRenderPipelineStateWithDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v54];
LABEL_9:
  v114 = 0;
  if ([internal validateWithDevice:self->_device error:&v114])
  {
    archiveCopy = archive;
    fragmentFunction = [internal fragmentFunction];
    vertexFunction = [internal vertexFunction];
    newPipelineScript = [internal newPipelineScript];
    objectFunction = [internal objectFunction];
    meshFunction = [internal meshFunction];
    if (meshFunction)
    {
      taskCopy2 = task;
      v81[0] = 0;
      v26 = [internal newSerializedMeshDataWithFlags:self->_compilerFlags options:options error:v81];
      v27 = v26;
      if (v26 && objectFunction)
      {
        v28 = [internal newSerializedObjectDataWithFlags:self->_compilerFlags options:options error:v81];
        if (!v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (!v26)
        {
LABEL_30:
          if (handler)
          {
            (*(handler + 2))(handler, 0, 0, v81[0]);
          }

          else if (error)
          {
            *error = v81[0];
          }

          if (newPipelineScript)
          {
            dispatch_release(newPipelineScript);
          }

          if (!v27)
          {
            return 0;
          }

          v52 = v27;
          goto LABEL_102;
        }

        v28 = 0;
      }

      v65 = 0;
LABEL_23:
      v66 = v28;
      if (handler)
      {
        internal = [internal copy];
      }

      if ((options & 0x400000) != 0)
      {
        v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      else
      {
        v71 = 0;
      }

      v110 = 0;
      v111 = &v110;
      v112 = 0x2020000000;
      v113 = 0;
      size_ptr = 0;
      buffer_ptr = 0;
      if (newPipelineScript)
      {
        v67 = dispatch_data_create_map(newPipelineScript, &buffer_ptr, &size_ptr);
      }

      else
      {
        v67 = 0;
      }

      v102 = 0;
      v103 = &v102;
      v104 = 0x3052000000;
      v105 = __Block_byref_object_copy__10;
      v106 = __Block_byref_object_dispose__10;
      v107 = 0;
      if (((fragmentFunction != 0) & [internal isRasterizationEnabled]) != 0)
      {
        v60 = v15;
        v98 = 0;
        v99 = &v98;
        v100 = 0x2020000000;
        v101 = 0;
        v94 = 0;
        v95 = &v94;
        v96 = 0x2020000000;
        v97 = 0;
        if ([vertexFunction renderTargetArrayIndexType])
        {
          v37 = 1;
        }

        else
        {
          v37 = (options & 0x200000) == 0;
        }

        if (v37)
        {
          optionsCopy = options;
        }

        else
        {
          optionsCopy = options | 0x4000000;
        }

        v90 = 0;
        v91 = &v90;
        v92 = 0x2020000000;
        v93 = MTLGetCompilerOptions(self->_device, optionsCopy, self->_compilerFlags, 0, 0);
        data = [internal newSerializedFragmentDataWithFlags:self->_compilerFlags options:optionsCopy];
        v89 = 0;
        v39 = -[MTLCompiler getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:](self, "getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:", internal, options & 0x11240000, optionsCopy, buffer_ptr, [internal fragmentFunction], 2, 0, &v89);
        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x6812000000;
        v81[3] = __Block_byref_object_copy__1412;
        v81[4] = __Block_byref_object_dispose__1413;
        v59 = v39;
        v81[6] = v39;
        v81[7] = 0;
        v81[8] = v89;
        v81[9] = 0;
        v61 = v27;
        if (data)
        {
          v40 = data;
          v41 = dispatch_data_create_map(data, &v83, &v84);
        }

        else
        {
          v41 = 0;
          v83 = 0;
          v84 = 0;
          v40 = 0;
        }

        v82 = v41;
        compilerQueue = self->_compilerQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke;
        block[3] = &unk_1E6EEC460;
        block[4] = self;
        block[5] = fragmentFunction;
        block[6] = v40;
        block[7] = internal;
        block[12] = buffer_ptr;
        block[10] = &v90;
        block[11] = &v110;
        block[9] = v81;
        block[8] = archiveCopy;
        v80 = (optionsCopy & 4) != 0;
        dispatch_sync(compilerQueue, block);
        v45 = v111[3];
        v58 = v45;
        if (v45)
        {
          v46 = *(v45 + 440);
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 3221225472;
          v78[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_2;
          v78[3] = &unk_1E6EEC488;
          v78[8] = &v110;
          v78[9] = v81;
          v78[4] = archiveCopy;
          v78[5] = v71;
          v78[7] = &v94;
          v78[6] = internal;
          v78[10] = &v98;
          v78[11] = &v85;
          v57 = optionsCopy;
          v78[13] = optionsCopy;
          v78[12] = &v90;
          dispatch_sync(v46, v78);
          v77[0] = 0;
          v77[1] = v77;
          v77[2] = 0x3052000000;
          v77[3] = __Block_byref_object_copy__10;
          v77[4] = __Block_byref_object_dispose__10;
          v77[5] = 0;
          v76[0] = 0;
          v76[1] = v76;
          v76[2] = 0x3052000000;
          v76[3] = __Block_byref_object_copy__10;
          v76[4] = __Block_byref_object_dispose__10;
          v76[5] = 0;
          if (*(v99 + 24) == 1)
          {
            object = dispatch_data_create(*v95[3], *(v95[3] + 16) + *(v95[3] + 8), 0, 0);
            v47 = 0;
            v27 = v61;
            v48 = v65;
            if ((*(v91 + 25) & 2) != 0)
            {
              v47 = mach_absolute_time();
            }

            v55 = v47;
            v49 = objc_opt_new();
            [(MTLCompileFunctionRequestData *)v49 setSync:handler == 0];
            [(MTLCompileFunctionRequestData *)v49 setFunction:fragmentFunction];
            [(MTLCompileFunctionRequestData *)v49 setPipelineOptions:v57];
            [(MTLCompileFunctionRequestData *)v49 setFrameworkData:data];
            [(MTLCompileFunctionRequestData *)v49 setDriverKeyData:object];
            [(MTLCompileFunctionRequestData *)v49 setDestinationBinaryArchive:archiveCopy];
            -[MTLCompileFunctionRequestData setBinaryArchives:](v49, "setBinaryArchives:", [internal binaryArchives]);
            [(MTLCompileFunctionRequestData *)v49 setArchiverId:0];
            -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v49, "setGpuCompilerSPIOptions:", [internal gpuCompilerSPIOptions]);
            -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v49, "setMaxAccelerationStructureTraversalDepth:", [internal maxAccelerationStructureTraversalDepth]);
            [(MTLCompileFunctionRequestData *)v49 setAirScript:v67];
            setLinkedFunctionsForRequest(v49, [internal fragmentLinkedFunctions]);
            -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v49, buffer_ptr, [internal driverCompilerOptions], 0);
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_3;
            v75[3] = &unk_1E6EEC4B0;
            v75[6] = &v90;
            v75[7] = v76;
            v75[4] = self;
            v75[5] = v71;
            v75[8] = &v110;
            v75[9] = v77;
            v75[11] = v55;
            v75[10] = &v94;
            [(MTLCompiler *)self compileFunctionRequestInternal:v49 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:taskCopy2 completionHandler:v75];

            dispatch_release(object);
          }

          else
          {
            v27 = v61;
            v48 = v65;
            if (*(v86 + 24) == 1)
            {
              dispatch_group_enter(*(v95[3] + 40));
              v74[0] = MEMORY[0x1E69E9820];
              v74[1] = 3221225472;
              v74[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_4;
              v74[3] = &unk_1E6EEC410;
              v74[4] = &v110;
              v74[5] = &v94;
              [(MTLCompiler *)self reflectionWithFunction:fragmentFunction options:v57 completionHandler:v74];
            }
          }

          dispatch_release(data);
          [(_MTLDevice *)self->_device freeFragmentFunctionKey:v59 fragmentKeySize:v89];
          if (v48)
          {
            dispatch_retain(v48);
          }

          if (v66)
          {
            dispatch_retain(v66);
          }

          if (v27)
          {
            dispatch_retain(v27);
          }

          v50 = v95[3];
          concurrentQueue = [(_MTLDevice *)self->_device concurrentQueue];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_5;
          v73[3] = &unk_1E6EEC4D8;
          v73[16] = handler;
          v73[17] = &v94;
          v73[4] = meshFunction;
          v73[5] = self;
          v73[18] = &v102;
          v73[19] = &v110;
          v73[6] = objectFunction;
          v73[7] = v66;
          v73[8] = v27;
          v73[9] = internal;
          v73[10] = v67;
          v73[11] = archiveCopy;
          v73[22] = error;
          v73[23] = v57;
          v73[24] = reflection;
          v73[20] = v77;
          v73[21] = v76;
          v73[12] = v71;
          v73[13] = taskCopy2;
          v73[14] = vertexFunction;
          v73[15] = v48;
          VariantEntry::waitOrNotify(v50, handler != 0, concurrentQueue, v73);
          _Block_object_dispose(v76, 8);
          _Block_object_dispose(v77, 8);
          v15 = v60;
          v43 = v67;
        }

        else
        {
          [(_MTLDevice *)self->_device freeFragmentFunctionKey:v59 fragmentKeySize:v89];
          v15 = v60;
          v27 = v61;
          v43 = v67;
          if (data)
          {
            dispatch_release(data);
          }

          if (v65)
          {
            dispatch_release(v65);
          }

          if (handler)
          {
          }

          reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", handler, error);
          dispatch_release(v67);
          dispatch_release(newPipelineScript);
        }

        _Block_object_dispose(v81, 8);
        if (v82)
        {
          dispatch_release(v82);
        }

        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v90, 8);
        _Block_object_dispose(&v94, 8);
        _Block_object_dispose(&v98, 8);
        if (!v58)
        {
          v29 = 0;
          goto LABEL_90;
        }
      }

      else
      {
        if (meshFunction)
        {
          v42 = [(MTLCompiler *)self createMeshStageAndLinkPipelineWithFragment:0 fragmentVariant:0 objectFunction:objectFunction serializedObjectDescriptor:v66 meshFunction:meshFunction serializedMeshDescriptor:v27 descriptor:internal airDescriptor:v67 destinationArchive:archiveCopy options:options reflection:reflection compileStatistics:v71 fragmentCompileTimeData:0 pipelineArchiverId:0 error:error compilerTask:taskCopy2 completionHandler:handler];
        }

        else
        {
          v42 = [(MTLCompiler *)self createVertexStageAndLinkPipelineWithFragment:0 fragmentVariant:0 vertexFunction:vertexFunction serializedVertexDescriptor:v65 descriptor:internal airDescriptor:v67 destinationArchive:archiveCopy options:options reflection:reflection compileStatistics:v71 fragmentCompileTimeData:0 pipelineArchiverId:0 error:error compilerTask:taskCopy2 completionHandler:handler];
        }

        v103[5] = v42;
        v43 = v67;
      }

      if (v65)
      {
        dispatch_release(v65);
      }

      if (v66)
      {
        dispatch_release(v66);
      }

      if (v27)
      {
        dispatch_release(v27);
      }

      if (v43)
      {
        dispatch_release(v43);
      }

      if (newPipelineScript)
      {
        dispatch_release(newPipelineScript);
      }

      if (handler)
      {

        if (!v71)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (!v71)
        {
LABEL_89:
          v29 = v103[5];
LABEL_90:
          _Block_object_dispose(&v102, 8);
          _Block_object_dispose(&v110, 8);
          return v29;
        }

        [v71 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", (*&gMachTimeToNS * (mach_absolute_time() - v15))), MTLCompileTimeStatisticsKeyPipelineTotal[0]}];
      }

      _MTLAddCompilePipelinePerformanceStatistics(v71, MTLCompileTimeStatisticsKeyPipelinesRender);
      goto LABEL_89;
    }

    v81[0] = 0;
    v65 = [internal newSerializedVertexDataWithFlags:self->_compilerFlags options:options error:v81];
    if (v65)
    {
      taskCopy2 = task;
      if (vertexFunction)
      {
        v27 = 0;
        v28 = 0;
        goto LABEL_23;
      }

      if ([(MTLCompiler *)newPipelineScript newRenderPipelineStateWithDescriptorInternal:v30 options:v31 reflection:v32 destinationBinaryArchive:v33 error:v34 compilerTask:v35 completionHandler:v36])
      {
        return 0;
      }
    }

    else
    {
      if (handler)
      {
        (*(handler + 2))(handler, 0, 0, v81[0]);
      }

      else if (error)
      {
        *error = v81[0];
      }

      if (!newPipelineScript)
      {
        return 0;
      }
    }

    v52 = newPipelineScript;
LABEL_102:
    dispatch_release(v52);
    return 0;
  }

  if (!error)
  {
    return 0;
  }

  v29 = 0;
  *error = v114;
  return v29;
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 56) driverCompilerOptions];
  v3 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v2, v3, 0);
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v4, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v4);
}

dispatch_queue_t __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
    v4 = *(a1 + 40);
    v5 = [objc_msgSend(*(a1 + 48) "fragmentFunction")];
    v6 = MTLPipelinePerformanceKeyFragmentShader[0];
    v7 = [v4 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v4 setObject:v7 forKey:v6];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3 & 1];
    result = [v7 setObject:v8 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v5)
    {
      result = [v7 setObject:v5 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v9 = result == 0;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v9;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v10 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v10 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v10 + 424) = result;
    }
  }

  return result;
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if ((*(*(a1[6] + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - a1[11]));
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1[4] + 8) newFragmentVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    *(*(a1[7] + 8) + 40) = *(a2 + 112);
    v8 = *(*(a1[7] + 8) + 40);
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *(a2 + 56);
    if (v9)
    {
      v22 = 0;
      buffer_ptr[0] = 0;
      v10 = dispatch_data_create_map(v9, buffer_ptr, &v22);
      if (v22)
      {
        [v7 setInputInfo:buffer_ptr[0] size:?];
      }

      dispatch_release(v10);
    }

    if ((*(*(a1[6] + 8) + 25) & 0x10) != 0)
    {
      [v7 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v11 = *(*(a1[6] + 8) + 24);
  if ((v11 & 0x200) != 0)
  {
    v12 = a1[5];
    v13 = *(a2 + 88);
    v14 = MTLPipelinePerformanceKeyFragmentShader[0];
    v15 = [v12 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]];
    if (v15)
    {
      if (v13)
      {
LABEL_17:
        _MTLAddCompilerServiceCompileTimeStats(v15, v13);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v17 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_20:
        [v15 setObject:v16 forKey:*v17];
        v11 = *(*(a1[6] + 8) + 24);
        goto LABEL_21;
      }
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:v15 forKey:v14];

      if (v13)
      {
        goto LABEL_17;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v17 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_20;
  }

LABEL_21:
  if (v11)
  {
    v18 = *(a2 + 40);
    if (v18)
    {
      v19 = *(*(a1[8] + 8) + 24);
      v20 = v19[53];
      buffer_ptr[0] = MEMORY[0x1E69E9820];
      buffer_ptr[1] = 3221225472;
      buffer_ptr[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      buffer_ptr[3] = &unk_1E6EEAD68;
      buffer_ptr[5] = v18;
      buffer_ptr[6] = v19;
      buffer_ptr[4] = 0;
      dispatch_sync(v20, buffer_ptr);
    }
  }

  v21 = *(a2 + 80);
  if (v21)
  {
    *(*(a1[9] + 8) + 40) = v21;
    dispatch_retain(*(*(a1[9] + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(a1[10] + 8) + 24), v7, v5, v6, *(a2 + 104));
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_5(void *a1)
{
  v2 = *(*(a1[17] + 8) + 24);
  if (*(v2 + 48))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(*(a1[19] + 8) + 24);
    if (v4)
    {
      v6 = [v3 createMeshStageAndLinkPipelineWithFragment:v5 fragmentVariant:a1[9] objectFunction:a1[10] serializedObjectDescriptor:a1[11] meshFunction:a1[23] serializedMeshDescriptor:a1[24] descriptor:a1[12] airDescriptor:*(*(a1[20] + 8) + 40) destinationArchive:*(*(a1[21] + 8) + 40) options:a1[22] reflection:a1[13] compileStatistics:a1[16] fragmentCompileTimeData:? pipelineArchiverId:? error:? compilerTask:? completionHandler:?];
    }

    else
    {
      v6 = [v3 createVertexStageAndLinkPipelineWithFragment:v5 fragmentVariant:a1[11] vertexFunction:a1[23] serializedVertexDescriptor:a1[24] descriptor:a1[12] airDescriptor:*(*(a1[20] + 8) + 40) destinationArchive:*(*(a1[21] + 8) + 40) options:a1[22] reflection:a1[13] compileStatistics:a1[16] fragmentCompileTimeData:? pipelineArchiverId:? error:? compilerTask:? completionHandler:?];
    }

    *(*(a1[18] + 8) + 40) = v6;
  }

  else
  {
    reportErrorMessage(*(v2 + 56), *(v2 + 64), a1[16], a1[22]);
  }

  v7 = *(*(a1[21] + 8) + 40);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = a1[8];
  if (v10)
  {

    dispatch_release(v10);
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error completionHandler:(id)handler
{
  if ([descriptor pipelineLibrary])
  {
    v13 = [objc_msgSend(descriptor "pipelineLibrary")];
  }

  else
  {
    v13 = 0;
  }

  return [(MTLCompiler *)self newComputePipelineStateWithDescriptorInternal:descriptor options:options pipelineCache:v13 destinationBinaryArchive:0 reflection:reflection error:error compilerTask:0 completionHandler:handler];
}

- (VariantEntry)computeVariantEntryWithDescriptor:(id)descriptor airDescriptor:(id)airDescriptor options:(unint64_t)options serializedComputeDataDescriptor:(id)dataDescriptor asyncCompile:(BOOL)compile pipelineCache:(id)cache destinationBinaryArchive:(id)archive computeProgram:(MTLProgramObject *)self0 kernelDriverCompileTimeData:(id *)self1 compileTimeStatistics:(id)self2 compilerTask:(id)self3
{
  compileCopy = compile;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 1uLL, 0);
  computeFunction = [descriptor computeFunction];
  buffer_ptr = 0;
  size_ptr = 0;
  v21 = dispatch_data_create_map(airDescriptor, &buffer_ptr, &size_ptr);
  v54 = 0;
  v22 = [(_MTLDevice *)self->_device computeFunctionKeyWithComputePipelineDescriptor:descriptor options:options keySize:&v54];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x6812000000;
  v50[3] = __Block_byref_object_copy__1412;
  v50[4] = __Block_byref_object_dispose__1413;
  v50[6] = v22;
  v50[7] = 0;
  v50[8] = v54;
  v50[9] = 0;
  v38 = v22;
  v37 = compileCopy;
  if (dataDescriptor)
  {
    v23 = dispatch_data_create_map(dataDescriptor, &v52, &v53);
  }

  else
  {
    v23 = 0;
    v52 = 0;
    v53 = 0;
  }

  object = v23;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke;
  block[3] = &unk_1E6EEC460;
  block[4] = self;
  block[5] = computeFunction;
  block[6] = dataDescriptor;
  block[7] = descriptor;
  block[9] = v50;
  block[10] = &v57;
  block[11] = &v69;
  block[12] = buffer_ptr;
  block[8] = archive;
  v49 = (options & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v25 = v70[3];
  if ((options & 4) == 0 || v25)
  {
    v27 = *(v25 + 440);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2;
    v47[3] = &unk_1E6EEC488;
    v47[8] = &v69;
    v47[9] = v50;
    v47[4] = archive;
    v47[5] = statistics;
    v47[6] = descriptor;
    v47[7] = &v73;
    v47[10] = &v61;
    v47[11] = &v65;
    v47[12] = &v57;
    v47[13] = options;
    dispatch_sync(v27, v47);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__10;
    v45 = __Block_byref_object_dispose__10;
    v46 = 0;
    if (archive || (v28 = 0, (v62[3] & 1) != 0))
    {
      v28 = dispatch_data_create(*v74[3], *(v74[3] + 16) + *(v74[3] + 8), 0, 0);
    }

    v29 = objc_opt_new();
    [v29 setSync:!v37];
    [v29 setFunction:computeFunction];
    [v29 setPipelineOptions:options];
    [v29 setFrameworkData:dataDescriptor];
    [v29 setDriverKeyData:v28];
    [v29 setPipelineCache:cache];
    if ([descriptor linkedFunctions])
    {
      v30 = [objc_msgSend(descriptor "linkedFunctions")];
    }

    else
    {
      v30 = 0;
    }

    [v29 setVisibleFunctions:{v30, statistics}];
    [v29 setDestinationBinaryArchive:archive];
    [v29 setBinaryArchives:{objc_msgSend(descriptor, "binaryArchives")}];
    if ([descriptor linkedFunctions])
    {
      v31 = [objc_msgSend(descriptor "linkedFunctions")];
    }

    else
    {
      v31 = 0;
    }

    [v29 setPrivateVisibleFunctions:v31];
    [v29 setGpuCompilerSPIOptions:{objc_msgSend(descriptor, "gpuCompilerSPIOptions")}];
    [v29 setMaxAccelerationStructureTraversalDepth:{objc_msgSend(descriptor, "maxAccelerationStructureTraversalDepth")}];
    [v29 setAirScript:v21];
    if ([v29 visibleFunctions])
    {
      functionPointers = [objc_msgSend(v29 "visibleFunctions")];
    }

    else
    {
      functionPointers = [descriptor functionPointers];
    }

    [v29 setVisibleFunctions:functionPointers];
    -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v29, buffer_ptr, [descriptor driverCompilerOptions], 0);
    if (*(v62 + 24) == 1)
    {
      if ((*(v58 + 25) & 2) != 0)
      {
        v33 = mach_absolute_time();
      }

      else
      {
        v33 = 0;
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3;
      v40[3] = &unk_1E6EEC500;
      v40[6] = &v57;
      v40[7] = &v69;
      v40[4] = self;
      v40[5] = v36;
      v40[8] = &v73;
      v40[9] = &v41;
      v40[10] = v33;
      [(MTLCompiler *)self compileFunctionRequestInternal:v29 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:task completionHandler:v40];
    }

    else if (*(v66 + 24) == 1)
    {
      dispatch_group_enter(*(v74[3] + 40));
      binaryArchives = [descriptor binaryArchives];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4;
      v39[3] = &unk_1E6EEC410;
      v39[4] = &v69;
      v39[5] = &v73;
      [(MTLCompiler *)self reflectionWithFunction:computeFunction options:options sync:0 binaryArchives:binaryArchives completionHandler:v39];
    }

    if (v28)
    {
      dispatch_release(v28);
    }

    dispatch_release(v21);
    [(_MTLDevice *)self->_device freeComputeFunctionKey:v38 keySize:v54];
    *data = v42[5];
    *program = v70[3];
    v26 = v74[3];
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    [(_MTLDevice *)self->_device freeComputeFunctionKey:v38 keySize:v54];
    dispatch_release(v21);
    v26 = 0;
  }

  _Block_object_dispose(v50, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  return v26;
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 56) driverCompilerOptions];
  v3 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v2, v3, 0);
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v4, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v4);
}

dispatch_queue_t __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(*(*(a1 + 80) + 8) + 24);
    v4 = *(a1 + 40);
    v5 = [objc_msgSend(*(a1 + 48) "computeFunction")];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:(v3 & 1) == 0];
    result = [v4 setObject:v6 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v5)
    {
      result = [v4 setObject:v5 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v7 = result == 0;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v7;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v8 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v8 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v8 + 424) = result;
    }
  }

  return result;
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 8) newComputeVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = *(v7 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v6;
      block[6] = v7;
      block[4] = 0;
      dispatch_sync(v8, block);
    }
  }

  VariantEntry::insertVariant(*(*(*(a1 + 64) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));

  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v9 = *(a1 + 40);
    v10 = *(a2 + 88);
    if (v10)
    {
      _MTLAddCompilerServiceCompileTimeStats(*(a1 + 40), v10);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
      v12 = MTLCompileTimeStatisticsKeyMTLCompilerService;
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v12 = MTLCompileTimeStatisticsKeyCachedFunction;
    }

    [v9 setObject:v11 forKey:*v12];
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    *(*(*(a1 + 72) + 8) + 40) = v13;
    dispatch_retain(*(*(*(a1 + 72) + 8) + 40));
  }
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

- (id)pipelineStateWithVariant:(VariantEntry *)variant descriptor:(id)descriptor options:(unint64_t)options computeProgram:(void *)program kernelDriverCompileTimeData:(id)data serializedComputeDataDescriptor:(id)dataDescriptor compileTimeStatistics:(id)statistics reflection:(id *)self0 error:(id *)self1 completionHandler:(id)self2
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v19 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 1uLL, 0);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3052000000;
  v26[3] = __Block_byref_object_copy__10;
  v26[4] = __Block_byref_object_dispose__10;
  v26[5] = data;
  serialQueue = [(_MTLDevice *)self->_device serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __191__MTLCompiler_pipelineStateWithVariant_descriptor_options_computeProgram_kernelDriverCompileTimeData_serializedComputeDataDescriptor_compileTimeStatistics_reflection_error_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC528;
  block[8] = handler;
  block[9] = &v27;
  block[4] = self;
  block[5] = descriptor;
  block[12] = error;
  block[13] = options;
  v24 = v19;
  block[10] = v26;
  block[11] = variant;
  block[6] = dataDescriptor;
  block[7] = statistics;
  v25 = handler != 0;
  block[14] = program;
  block[15] = reflection;
  VariantEntry::waitOrNotify(variant, handler != 0, serialQueue, block);
  v21 = v28[5];
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  return v21;
}

void __191__MTLCompiler_pipelineStateWithVariant_descriptor_options_computeProgram_kernelDriverCompileTimeData_serializedComputeDataDescriptor_compileTimeStatistics_reflection_error_completionHandler___block_invoke(uint64_t a1)
{
  v32[16] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v3 = v2[6];
  if (v3)
  {
    v27 = 0;
    *(*(*(a1 + 72) + 8) + 40) = [*(*(a1 + 32) + 8) newComputePipelineWithDescriptor:*(a1 + 40) variant:v3 errorMessage:&v27];
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      reportErrorMessage(2, v27, *(a1 + 64), *(a1 + 96));
      return;
    }

    if (!*(a1 + 104))
    {
      if (*(a1 + 132) != 1)
      {
        return;
      }

      v10 = 0;
      goto LABEL_36;
    }

    v4 = [*(*(a1 + 32) + 8) pipelineFlagsWithComputeVariant:v3];
    if (*(a1 + 128))
    {
      v5 = [*(*(a1 + 112) + 432) objectForKey:&stru_1EF478240];
    }

    else
    {
      v5 = 0;
    }

    v10 = [[MTLComputePipelineReflection alloc] initWithSerializedData:v5 serializedStageInputDescriptor:*(a1 + 48) device:*(*(a1 + 32) + 8) options:*(a1 + 104) flags:v4];
    v11 = *(a1 + 104);
    if ((v11 & 0x440000) != 0)
    {
      v12 = [*(*(a1 + 32) + 8) pipelinePerformanceStatisticsWithComputeVariant:v3 compileTimeOutput:*(*(*(a1 + 80) + 8) + 40)];
      v13 = *(*(*(a1 + 80) + 8) + 40);
      if (v13)
      {
        dispatch_release(v13);
        *(*(*(a1 + 80) + 8) + 40) = 0;
      }

      if ((*(a1 + 106) & 0x40) != 0)
      {
        v14 = *(a1 + 56);
        if (([objc_msgSend(v14 objectForKey:{MTLCompileTimeStatisticsKeyCachedFunction[0]), "BOOLValue"}] & 1) == 0)
        {
          v15 = [v12 objectForKey:MTLPipelinePerformanceKeyCompileTimeStatistics[0]];
          *v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = [v15 countByEnumeratingWithState:v28 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [v14 setObject:objc_msgSend(v15 forKey:{"objectForKey:", *(v28[1] + i)), *(v28[1] + i)}];
              }

              v17 = [v15 countByEnumeratingWithState:v28 objects:v32 count:16];
            }

            while (v17);
          }
        }
      }

      [(MTLComputePipelineReflection *)v10 setPerformanceStatistics:v12];
      v11 = *(a1 + 104);
    }

    if ((v11 & 0x200000) != 0)
    {
      v32[0] = 0;
      v28[0] = 0;
      v26 = 0;
      v25 = 0;
      [*(*(a1 + 32) + 8) getConstantSamplersBitmasks:v32 uniqueIdentifiers:v28 constantSamplerCount:&v26 stride:&v25 forComputeVariant:v3];
      if (v26)
      {
        [(MTLComputePipelineReflection *)v10 setConstantSamplerDescriptorsFromBitmasks:v32[0] stride:v25 count:?];
        v20 = objc_alloc(MEMORY[0x1E695DF70]);
        v21 = [v20 initWithCapacity:v26];
        if (v26)
        {
          for (j = 0; j < v26; ++j)
          {
            [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedLongLong:", *(v28[0] + j)), j}];
          }
        }

        [(MTLComputePipelineReflection *)v10 setConstantSamplerUniqueIdentifiers:v21];
      }

      free(v32[0]);
      free(v28[0]);
      v11 = *(a1 + 104);
    }

    if ((v11 & 0x1000000) != 0)
    {
      v23 = [[MTLDebugInstrumentationData alloc] initWithData:*(*(a1 + 88) + 72)];
      [*(*(*(a1 + 72) + 8) + 40) setDebugInstrumentationData:v23];
    }

    if (*(a1 + 132))
    {
LABEL_36:
      (*(*(a1 + 64) + 16))();

      *(*(*(a1 + 72) + 8) + 40) = 0;
LABEL_37:

      return;
    }

    if (v10)
    {
      if (*(a1 + 120))
      {
        v24 = v10;
        **(a1 + 120) = v10;
        return;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(a1 + 64);
    v9 = *(a1 + 96);

    reportErrorMessage(v6, v7, v8, v9);
  }
}

- (id)newComputePipelineStateWithDescriptorInternal:(id)internal options:(unint64_t)options pipelineCache:(id)cache destinationBinaryArchive:(id)archive reflection:(id *)reflection error:(id *)error compilerTask:(id)task completionHandler:(id)self0
{
  v16 = _MTLCompilePerformanceStatisticsEnabled(self, a2);
  if (v16)
  {
    optionsCopy = options | 0x400000;
  }

  else
  {
    optionsCopy = options;
  }

  if ((optionsCopy & 0x400000) != 0)
  {
    if (initTimebaseInfo(void)::onceToken != -1)
    {
      initTimebaseInfo();
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesCompute);
    if (handler)
    {
      v25 = 0;
      if (internal)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = mach_absolute_time();
      v25 = v16;
      if (internal)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    if (internal)
    {
      goto LABEL_11;
    }
  }

  [(MTLCompiler *)v16 newComputePipelineStateWithDescriptorInternal:v17 options:v18 pipelineCache:v19 destinationBinaryArchive:v20 reflection:v21 error:v22 compilerTask:v23 completionHandler:v34];
LABEL_11:
  v42 = 0;
  if ([internal validateWithDevice:self->_device error:&v42])
  {
    reflectionCopy = reflection;
    if (error)
    {
      *error = 0;
    }

    errorCopy = error;
    if (handler)
    {
      internal = [internal copy];
    }

    v27 = [internal newSerializedComputeDataWithFlags:self->_compilerFlags options:optionsCopy];
    v41 = 0;
    v40 = 0;
    object = v27;
    newPipelineScript = [internal newPipelineScript];
    v28 = [MTLCompiler computeVariantEntryWithDescriptor:"computeVariantEntryWithDescriptor:airDescriptor:options:serializedComputeDataDescriptor:asyncCompile:pipelineCache:destinationBinaryArchive:computeProgram:kernelDriverCompileTimeData:compileTimeStatistics:compilerTask:" airDescriptor:internal options:archive serializedComputeDataDescriptor:&v40 asyncCompile:&v41 pipelineCache:v26 destinationBinaryArchive:task computeProgram:? kernelDriverCompileTimeData:? compileTimeStatistics:? compilerTask:?];
    if (v28)
    {
      v29 = v28;
      if (!archive)
      {
        v32 = v27;
        v31 = [(MTLCompiler *)self pipelineStateWithVariant:v28 descriptor:internal options:optionsCopy computeProgram:v40 kernelDriverCompileTimeData:v41 serializedComputeDataDescriptor:v27 compileTimeStatistics:v26 reflection:reflectionCopy error:errorCopy completionHandler:handler];
        if (!object)
        {
LABEL_29:
          if (handler)
          {

            if (!v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!v26)
            {
LABEL_35:
              dispatch_release(newPipelineScript);
              return v31;
            }

            -[NSDictionary setObject:forKey:](v26, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*&gMachTimeToNS * (mach_absolute_time() - v25))], MTLCompileTimeStatisticsKeyPipelineTotal[0]);
          }

          _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesCompute);

          goto LABEL_35;
        }

LABEL_28:
        dispatch_release(v32);
        goto LABEL_29;
      }

      serialQueue = [(_MTLDevice *)self->_device serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __156__MTLCompiler_newComputePipelineStateWithDescriptorInternal_options_pipelineCache_destinationBinaryArchive_reflection_error_compilerTask_completionHandler___block_invoke;
      block[3] = &unk_1E6EEC550;
      block[4] = handler;
      block[5] = v29;
      block[6] = errorCopy;
      VariantEntry::waitOrNotify(v29, handler != 0, serialQueue, block);
    }

    else
    {
      reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", handler, errorCopy);
    }

    v31 = 0;
    v32 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (error)
  {
    *error = v42;
  }

  if (v26)
  {
  }

  return 0;
}

void *__156__MTLCompiler_newComputePipelineStateWithDescriptorInternal_options_pipelineCache_destinationBinaryArchive_reflection_error_compilerTask_completionHandler___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(v1 + 48))
  {
    return reportErrorMessage(*(v1 + 56), *(v1 + 64), result[4], result[6]);
  }

  return result;
}

- (VariantEntry)tileVariantEntryWithDescriptor:(id)descriptor airDescriptor:(id)airDescriptor options:(unint64_t)options serializedTileDataDescriptor:(id)dataDescriptor asyncCompile:(BOOL)compile destinationBinaryArchive:(id)archive tileProgram:(MTLProgramObject *)program kernelDriverCompileTimeData:(id *)self0 compileTimeStatistics:(id)self1 compilerTask:(id)self2
{
  compileCopy = compile;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 0, 0);
  tileFunction = [descriptor tileFunction];
  functionType = [tileFunction functionType];
  buffer_ptr = 0;
  size_ptr = 0;
  v20 = dispatch_data_create_map(airDescriptor, &buffer_ptr, &size_ptr);
  v49 = 0;
  v21 = [(_MTLDevice *)self->_device tileFunctionKeyWithTilePipelineDescriptor:descriptor options:options keySize:&v49];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x6812000000;
  v45[3] = __Block_byref_object_copy__1412;
  v45[4] = __Block_byref_object_dispose__1413;
  v45[6] = v21;
  v45[7] = 0;
  v45[8] = v49;
  v45[9] = 0;
  v33 = v21;
  if (dataDescriptor)
  {
    v22 = dispatch_data_create_map(dataDescriptor, &v47, &v48);
  }

  else
  {
    v22 = 0;
    v47 = 0;
    v48 = 0;
  }

  object = v22;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke;
  block[3] = &unk_1E6EEC460;
  block[4] = self;
  block[5] = tileFunction;
  block[6] = dataDescriptor;
  block[7] = descriptor;
  block[9] = v45;
  block[10] = &v52;
  block[11] = &v64;
  block[12] = buffer_ptr;
  block[8] = archive;
  v44 = (options & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v24 = v65[3];
  if ((options & 4) == 0 || v24)
  {
    v26 = *(v24 + 440);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2;
    v42[3] = &unk_1E6EEC578;
    v42[8] = &v64;
    v42[9] = v45;
    v42[4] = archive;
    v42[5] = statistics;
    v42[13] = options;
    v42[14] = functionType;
    v42[6] = descriptor;
    v42[7] = &v68;
    v42[10] = &v56;
    v42[11] = &v60;
    v42[12] = &v52;
    dispatch_sync(v26, v42);
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = __Block_byref_object_copy__10;
    v40 = __Block_byref_object_dispose__10;
    v41 = 0;
    if (archive || (v27 = 0, (v57[3] & 1) != 0))
    {
      v27 = dispatch_data_create(*v69[3], *(v69[3] + 16) + *(v69[3] + 8), 0, 0);
    }

    v28 = objc_opt_new();
    [(MTLCompileFunctionRequestData *)v28 setSync:!compileCopy];
    [(MTLCompileFunctionRequestData *)v28 setFunction:tileFunction];
    [(MTLCompileFunctionRequestData *)v28 setPipelineOptions:options];
    [(MTLCompileFunctionRequestData *)v28 setFrameworkData:dataDescriptor];
    [(MTLCompileFunctionRequestData *)v28 setDriverKeyData:v27];
    [(MTLCompileFunctionRequestData *)v28 setDestinationBinaryArchive:archive];
    -[MTLCompileFunctionRequestData setBinaryArchives:](v28, "setBinaryArchives:", [descriptor binaryArchives]);
    -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v28, "setGpuCompilerSPIOptions:", [descriptor gpuCompilerSPIOptions]);
    -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v28, "setMaxAccelerationStructureTraversalDepth:", [descriptor maxAccelerationStructureTraversalDepth]);
    [(MTLCompileFunctionRequestData *)v28 setAirScript:v20];
    setLinkedFunctionsForRequest(v28, [descriptor linkedFunctions]);
    [(MTLCompiler *)self initializeFunctionRequestScriptAndFunctionId:v28 script:buffer_ptr driverCompilerOptions:0 compiledNextStageVariant:0];
    if (*(v57 + 24) == 1)
    {
      if ((*(v53 + 25) & 2) != 0)
      {
        v29 = mach_absolute_time();
      }

      else
      {
        v29 = 0;
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3;
      v35[3] = &unk_1E6EEC5A0;
      v35[10] = v29;
      v35[11] = functionType;
      v35[6] = &v52;
      v35[7] = &v64;
      v35[4] = self;
      v35[5] = statistics;
      v35[8] = &v68;
      v35[9] = &v36;
      [(MTLCompiler *)self compileFunctionRequestInternal:v28 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:task completionHandler:v35, statistics];
    }

    else if (*(v61 + 24) == 1)
    {
      dispatch_group_enter(*(v69[3] + 40));
      binaryArchives = [descriptor binaryArchives];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4;
      v34[3] = &unk_1E6EEC410;
      v34[4] = &v64;
      v34[5] = &v68;
      [(MTLCompiler *)self reflectionWithFunction:tileFunction options:options sync:0 binaryArchives:binaryArchives completionHandler:v34];
    }

    if (v27)
    {
      dispatch_release(v27);
    }

    dispatch_release(v20);
    [(_MTLDevice *)self->_device freeTileFunctionKey:v33 keySize:v49];
    *data = v37[5];
    *program = v65[3];
    v25 = v69[3];
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    [(_MTLDevice *)self->_device freeTileFunctionKey:v33 keySize:v49];
    dispatch_release(v20);
    v25 = 0;
  }

  _Block_object_dispose(v45, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  return v25;
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    objc_msgSend_requiredKeysForFunction_variantKey_frameworkData_compilerOptions_driverCompilerOptions_airScript_archives_compiledNextStageVariant_(v2, v3, 0);
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v4, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v4);
}

dispatch_queue_t __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(a1 + 112);
    v4 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
    v5 = *(a1 + 40);
    v6 = [objc_msgSend(*(a1 + 48) "tileFunction")];
    if (v3 <= 8 && ((1 << v3) & 0x186) != 0)
    {
      v7 = MTLPipelinePerformanceKeyVertexShader;
      if (v3 != 1)
      {
        v7 = MTLPipelinePerformanceKeyFragmentShader;
      }

      if (v3 == 8)
      {
        v7 = MTLPipelinePerformanceKeyObjectShader;
      }

      if (v3 == 7)
      {
        v7 = MTLPipelinePerformanceKeyMeshShader;
      }

      v8 = *v7;
      v9 = [v5 objectForKey:*v7];
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v5 setObject:v9 forKey:v8];
      }
    }

    else
    {
      v9 = v5;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    result = [v9 setObject:v10 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v6)
    {
      result = [v9 setObject:v6 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v11 = result == 0;
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v11;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v12 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v12 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v12 + 424) = result;
    }
  }

  return result;
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 8) newTileVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72) functionType:*(a1 + 88)];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = *(v7 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v6;
      block[6] = v7;
      block[4] = 0;
      dispatch_sync(v8, block);
    }
  }

  VariantEntry::insertVariant(*(*(*(a1 + 64) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));

  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v9 = *(a1 + 40);
    v10 = *(a2 + 88);
    v11 = *(a1 + 88);
    if (v11 <= 8 && ((1 << v11) & 0x186) != 0)
    {
      v12 = MTLPipelinePerformanceKeyVertexShader;
      if (v11 != 1)
      {
        v12 = MTLPipelinePerformanceKeyFragmentShader;
      }

      if (v11 == 8)
      {
        v12 = MTLPipelinePerformanceKeyObjectShader;
      }

      if (v11 == 7)
      {
        v13 = MTLPipelinePerformanceKeyMeshShader;
      }

      else
      {
        v13 = v12;
      }

      v14 = *v13;
      v15 = [*(a1 + 40) objectForKey:*v13];
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v9 setObject:v15 forKey:v14];
      }

      if (v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(a1 + 40);
      if (v10)
      {
LABEL_23:
        _MTLAddCompilerServiceCompileTimeStats(v15, v10);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v17 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_26:
        [v15 setObject:v16 forKey:*v17];
        goto LABEL_27;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v17 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_26;
  }

LABEL_27:
  v18 = *(a2 + 80);
  if (v18)
  {
    *(*(*(a1 + 72) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 72) + 8) + 40));
  }
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

- (id)renderPipelineStateWithTileVariant:(VariantEntry *)variant descriptor:(id)descriptor options:(unint64_t)options tileProgram:(void *)program kernelDriverCompileTimeData:(id)data serializedTileDataDescriptor:(id)dataDescriptor compileTimeStatistics:(id)statistics reflection:(id *)self0 error:(id *)self1 compilerTask:(id)self2 completionHandler:(id)self3
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v19 = MTLGetCompilerOptions(self->_device, options, self->_compilerFlags, 0, 0);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = __Block_byref_object_copy__10;
  v27[4] = __Block_byref_object_dispose__10;
  v27[5] = data;
  v20 = [objc_msgSend(descriptor "tileFunction")];
  serialQueue = [(_MTLDevice *)self->_device serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __208__MTLCompiler_renderPipelineStateWithTileVariant_descriptor_options_tileProgram_kernelDriverCompileTimeData_serializedTileDataDescriptor_compileTimeStatistics_reflection_error_compilerTask_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC5C8;
  block[10] = variant;
  block[11] = error;
  block[4] = self;
  block[5] = descriptor;
  v25 = v19;
  block[12] = options;
  block[13] = program;
  block[8] = &v28;
  block[9] = v27;
  block[6] = statistics;
  block[7] = handler;
  v26 = handler != 0;
  block[14] = v20;
  block[15] = reflection;
  VariantEntry::waitOrNotify(variant, handler != 0, serialQueue, block);
  v22 = v29[5];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);
  return v22;
}

void __208__MTLCompiler_renderPipelineStateWithTileVariant_descriptor_options_tileProgram_kernelDriverCompileTimeData_serializedTileDataDescriptor_compileTimeStatistics_reflection_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = v2[6];
  if (v3)
  {
    v23 = 0;
    *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 8) newRenderPipelineWithTileDescriptor:*(a1 + 40) tileVariant:v3 errorMessage:&v23];
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      reportErrorMessage(2, v23, *(a1 + 56), *(a1 + 88));
      return;
    }

    if (!*(a1 + 96))
    {
      if (*(a1 + 132) != 1)
      {
        return;
      }

      v10 = 0;
      goto LABEL_29;
    }

    v4 = [*(*(a1 + 32) + 8) pipelineFlagsWithTileVariant:v3];
    if (*(a1 + 128))
    {
      v5 = [*(*(a1 + 104) + 432) objectForKey:&stru_1EF478240];
    }

    else
    {
      v5 = 0;
    }

    v10 = [[MTLRenderPipelineReflectionInternal alloc] initWithTileData:v5 functionType:*(a1 + 112) device:*(*(a1 + 32) + 8) options:*(a1 + 96) flags:v4];
    v11 = *(a1 + 96);
    if ((v11 & 0x440000) != 0)
    {
      v12 = [*(*(a1 + 32) + 8) pipelinePerformanceStatisticsWithTileVariant:v3 compileTimeOutput:*(*(*(a1 + 72) + 8) + 40)];
      v13 = *(*(*(a1 + 72) + 8) + 40);
      if (v13)
      {
        dispatch_release(v13);
        *(*(*(a1 + 72) + 8) + 40) = 0;
      }

      if ((*(a1 + 98) & 0x40) != 0)
      {
        addDriverCompilerPerformanceData(*(a1 + 48), v12, *(a1 + 112));
      }

      [(MTLRenderPipelineReflectionInternal *)v10 setPerformanceStatistics:v12];
      v11 = *(a1 + 96);
    }

    if ((v11 & 0x200000) != 0)
    {
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v19 = 0;
      [*(*(a1 + 32) + 8) getConstantSamplersBitmasks:&v22 uniqueIdentifiers:&v21 constantSamplerCount:&v20 stride:&v19 forTileVariant:v3];
      if (v20)
      {
        [(MTLRenderPipelineReflectionInternal *)v10 setConstantSamplerDescriptorsFromBitmasks:v22 stride:v19 count:?];
        v14 = objc_alloc(MEMORY[0x1E695DF70]);
        v15 = [v14 initWithCapacity:v20];
        if (v20)
        {
          for (i = 0; i < v20; ++i)
          {
            [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedLongLong:", *(v21 + i)), i}];
          }
        }

        [(MTLRenderPipelineReflectionInternal *)v10 setConstantSamplerUniqueIdentifiers:v15];
      }

      free(v22);
      free(v21);
      v11 = *(a1 + 96);
    }

    if ((v11 & 0x1000000) != 0)
    {
      v17 = [[MTLDebugInstrumentationData alloc] initWithData:*(*(a1 + 80) + 72)];
      [*(*(*(a1 + 64) + 8) + 40) setTileDebugInstrumentationData:v17];
    }

    if (*(a1 + 132))
    {
LABEL_29:
      (*(*(a1 + 56) + 16))();

      *(*(*(a1 + 64) + 8) + 40) = 0;
LABEL_30:

      return;
    }

    if (v10)
    {
      if (*(a1 + 120))
      {
        v18 = v10;
        **(a1 + 120) = v10;
        return;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(a1 + 56);
    v9 = *(a1 + 88);

    reportErrorMessage(v6, v7, v8, v9);
  }
}

- (id)newRenderPipelineStateWithTileDescriptorInternal:(id)internal options:(unint64_t)options reflection:(id *)reflection destinationBinaryArchive:(id)archive error:(id *)error compilerTask:(id)task completionHandler:(id)handler
{
  v16 = _MTLCompilePerformanceStatisticsEnabled(self, a2);
  if (v16)
  {
    optionsCopy = options | 0x400000;
  }

  else
  {
    optionsCopy = options;
  }

  if ((optionsCopy & 0x400000) == 0)
  {
    v25 = 0;
    v26 = 0;
    if (internal)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (initTimebaseInfo(void)::onceToken != -1)
  {
    initTimebaseInfo();
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesRender);
  if (handler)
  {
    v25 = 0;
    if (internal)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v16 = mach_absolute_time();
  v25 = v16;
  if (!internal)
  {
LABEL_18:
    [(MTLCompiler *)v16 newRenderPipelineStateWithTileDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v33];
  }

LABEL_6:
  v40 = 0;
  if ([internal validateWithDevice:self->_device error:&v40])
  {
    if (error)
    {
      *error = 0;
    }

    reflectionCopy = reflection;
    v35 = v25;
    if (handler)
    {
      internal = [internal copy];
    }

    v27 = [internal newSerializedTileDataWithFlags:self->_compilerFlags options:optionsCopy error:error];
    v38 = 0;
    v39 = 0;
    object = [internal newPipelineScript];
    v28 = [MTLCompiler tileVariantEntryWithDescriptor:"tileVariantEntryWithDescriptor:airDescriptor:options:serializedTileDataDescriptor:asyncCompile:destinationBinaryArchive:tileProgram:kernelDriverCompileTimeData:compileTimeStatistics:compilerTask:" airDescriptor:internal options:&v38 serializedTileDataDescriptor:&v39 asyncCompile:v26 destinationBinaryArchive:task tileProgram:? kernelDriverCompileTimeData:? compileTimeStatistics:? compilerTask:?];
    if (v28)
    {
      v29 = v28;
      if (!archive)
      {
        v31 = [(MTLCompiler *)self renderPipelineStateWithTileVariant:v28 descriptor:internal options:optionsCopy tileProgram:v38 kernelDriverCompileTimeData:v39 serializedTileDataDescriptor:v27 compileTimeStatistics:v26 reflection:reflectionCopy error:error compilerTask:task completionHandler:handler];
        if (!v27)
        {
LABEL_27:
          if (handler)
          {

            if (!v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!v26)
            {
LABEL_35:
              dispatch_release(object);
              return v31;
            }

            -[NSDictionary setObject:forKey:](v26, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*&gMachTimeToNS * (mach_absolute_time() - v35))], MTLCompileTimeStatisticsKeyPipelineTotal[0]);
          }

          _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesRender);

          goto LABEL_35;
        }

LABEL_26:
        dispatch_release(v27);
        goto LABEL_27;
      }

      serialQueue = [(_MTLDevice *)self->_device serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __145__MTLCompiler_newRenderPipelineStateWithTileDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke;
      block[3] = &unk_1E6EEC550;
      block[4] = handler;
      block[5] = v29;
      block[6] = error;
      VariantEntry::waitOrNotify(v29, handler != 0, serialQueue, block);
    }

    else
    {
      reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", handler, error);
    }

    v31 = 0;
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (error)
  {
    *error = v40;
  }

  if (v26)
  {
  }

  return 0;
}

void *__145__MTLCompiler_newRenderPipelineStateWithTileDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(v1 + 48))
  {
    return reportErrorMessage(*(v1 + 56), *(v1 + 64), result[4], result[6]);
  }

  return result;
}

- (void)generateMachOWithID:binaryEntries:machOSpecializedData:machOType:Path:platform:bitcodeList:compilerTask:completionHandler:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 11);
        v6 -= 88;
        v7 = v8;
        if (v8)
        {
          dispatch_release(v7);
        }

        v9 = *(v4 - 10);
        if (v9)
        {
          dispatch_release(v9);
        }

        v10 = *(v4 - 9);
        if (v10)
        {
          dispatch_release(v10);
        }

        v11 = *(v4 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v12 = *(v4 - 7);
        if (v12)
        {
          *(v4 - 6) = v12;
          operator delete(v12);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

@end