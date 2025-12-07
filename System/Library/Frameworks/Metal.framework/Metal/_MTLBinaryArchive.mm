@interface _MTLBinaryArchive
+ (BOOL)deserializeBinaryArchiveDescriptorMachO:(DeserializedBinaryArchiveLayout *)o fileData:(id)data;
+ (BOOL)deserializeBinaryArchiveHeader:(DeserializedBinaryArchiveLayout *)header fileData:(id)data device:(id)device;
+ (MTLLoaderSliceIdentifier)sliceIDForSpecializedFunctionsForLLVMVersion:(int)version;
+ (id)descriptorDataForArchive:(id)archive;
+ (unsigned)archiveTypeAtURL:(id)l device:(id)device error:(id *)error;
+ (unsigned)archiveVersionCompatible:(MachOToolsVersion *)compatible isMatchingSlice:(BOOL)slice device:(id)device;
+ (void)deserializeBinaryArchiveHeader:(float *)header fileData:(unint64_t *)data device:;
- ($2772B1D07D29A72E8557B2574C0AE5C1)reflectionHashWithFunctionId:(SEL)id binaryPos:(const void *)pos;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error;
- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)airntSerializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)archiveSkipsAIRValidation;
- (BOOL)enumerateArchivesFromBackingFileFromSlice:(const MTLLoaderSliceIdentifier *)slice version:(unint64_t)version verifyKey:(id *)key offset:(unint64_t)offset bytes:(unint64_t)bytes enumerator:(id)enumerator;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection;
- (BOOL)getScriptsWithAIRNTObject:(void *)object;
- (BOOL)getSpecializedFunctionArchivesToSerialize:(void *)serialize;
- (BOOL)legacySerializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)loadAirSliceAtOffset:(unint64_t)offset sliceLength:(unint64_t)length;
- (BOOL)loadAirntBlocksForSlice:(const MTLLoaderSliceIdentifier *)slice sliceOffset:(unint64_t)offset skipAIRValidation:(BOOL)validation;
- (BOOL)loadFileIndex:(void *)index expectedSliceId:(const MTLLoaderSliceIdentifier *)id expectedVersion:(unint64_t)version sliceOffset:(unint64_t)offset;
- (BOOL)loadFromURL:(id)l error:(id *)error;
- (BOOL)recompilePipelinesToArchive:(id)archive error:(id *)error;
- (BOOL)recompileStatelessToArchive:(id)archive error:(id *)error;
- (BOOL)recompileToArchive:(id)archive error:(id *)error;
- (BOOL)recompileToArchiveWithURL:(id)l error:(id *)error;
- (BOOL)remoteInsertionBegin;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)storeComputePipelineDescriptor:(id)descriptor;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor;
- (BOOL)updateReflectionForEntry:(id)entry binaryKey:(id)key requiredReflection:(char)reflection;
- (NSArray)keys;
- (_MTLBinaryArchive)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error;
- (_MTLBinaryArchive)initWithOptions:(unint64_t)options device:(id)device url:(id)url error:(id *)error;
- (id).cxx_construct;
- (id)archiveFunctionIds;
- (id)flatBufferFromJSON:(id)n schema:(const char *)schema schemaSize:(unint64_t)size;
- (id)formattedDescription:(unint64_t)description;
- (id)getArchiveIDWithErrorInternal:(id *)internal;
- (id)getBinaryDataForKey:(id)key reflectionType:(char)type;
- (id)getFunctionNameFromAirDescriptor:(const stitchedAirDescriptor *)descriptor;
- (id)getLibraryDescriptorWithAirScrpt:(const StitchingScript *)scrpt;
- (id)localStitchedFunctionLookupWithDescriptor:(const stitchedAirDescriptor *)descriptor;
- (id)materializeAIRNTBlockForKey:(id)key reflectionType:(char)type;
- (id)materializeAirScript:(void *)script;
- (id)materializeBitCode:(void *)code atIndex:(unsigned int)index;
- (id)materializeEntryForKey:(id *)key fileIndex:(void *)index containsEntry:(id)entry addEntry:(id)addEntry;
- (id)materializeFromFileOffset:(unint64_t)offset hash:(id *)hash;
- (id)materializeFromHash:(id *)hash fileIndex:(void *)index;
- (id)materializeReflectionBlock:(void *)block;
- (id)newArchiveDataForKeyInternal:(id *)internal;
- (id)newArchiverIdWithBinaryKey:(id)key entry:(id)entry srcArchiverId:(id)id functionType:(unint64_t)type;
- (id)newComputePipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error;
- (id)newFunctionDescriptorWithAirScript:(const ConstantsSpecializationScript *)script;
- (id)newLibraryInArchiveAtPos:(void *)pos atIndex:(unsigned int)index error:(id *)error;
- (id)newLibraryInArchiveWithRange:(_NSRange)range error:(id *)error;
- (id)newMeshRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error;
- (id)newRecompiledFunctionWithAIRNTObject:(void *)object index:(unint64_t)index destinationArchive:(id)archive error:(id *)error;
- (id)newRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error;
- (id)newSpecializedFunctionWithHash:(id *)hash libraryPath:(id)path;
- (id)newStitchedLibraryWithKey:(id *)key descriptors:(const void *)descriptors;
- (id)newTileRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error;
- (id)recompileFunction:(id)function inLibrary:(id)library toArchive:(id)archive toBinary:(BOOL)binary error:(id *)error;
- (void)addArchiveEntryInternal:(id)internal forKey:(id *)key;
- (void)addBinaryEntryImpl:(id)impl forKey:(id)key;
- (void)addBinaryEntryInternal:(id)internal forKey:(id)key;
- (void)addStitchedLibraryWithKey:(id *)key descriptors:(const void *)descriptors inputFunctions:(id)functions library:(id)library;
- (void)addStitchingInputsFunction:(id)function toEntry:(id)entry;
- (void)clearLibCache;
- (void)dealloc;
- (void)deallocContainers;
- (void)findProgramObjectForFunction:(id *)function;
- (void)initMetalScriptWithArchive:(id)archive;
- (void)materializeAirNTAllForSlice:(const MTLLoaderSliceIdentifier *)slice entryList:(shared_ptr<std::vector<machOEntry>>)list;
- (void)materializeAirNTFromOnlineForSlice:(const MTLLoaderSliceIdentifier *)slice entryList:(shared_ptr<std::vector<machOEntry>>)list;
- (void)materializeAirNTSpecializedFunctions:(shared_ptr<std::vector<machOEntry>>)functions;
- (void)materializeAirNTStitchedFunctions:(shared_ptr<std::vector<machOEntry>>)functions;
- (void)materializeAll;
- (void)materializeAllAIRNTLegacy;
- (void)materializeLinkedBitcodes:(void *)bitcodes hashList:(void *)list;
- (void)preloadLibrariesInAirntObject:(void *)object error:(id *)error;
- (void)programObjectForFunction:(id *)function;
- (void)setMTLLinkedFunctions:(id)functions LFS:(const LinkedFunctions *)s obj:(void *)obj destinationArchive:(id)archive error:(id *)error;
- (void)setRecompilationTarget:(BOOL)target;
- (void)updatePipelineWithPipelineArchiverId:(id)id key:(id)key functionType:(unint64_t)type;
@end

@implementation _MTLBinaryArchive

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  *(self + 38) = 0;
  *(self + 37) = 0;
  *(self + 36) = self + 296;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 92) = 1065353216;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 108) = 1065353216;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 118) = 1065353216;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 128) = 1065353216;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 138) = 1065353216;
  *(self + 35) = 0u;
  *(self + 36) = 0u;
  *(self + 148) = 1065353216;
  *(self + 600) = 0u;
  *(self + 616) = 0u;
  *(self + 158) = 1065353216;
  *(self + 648) = 0u;
  *(self + 664) = 0u;
  *(self + 170) = 1065353216;
  *(self + 86) = 0;
  *(self + 87) = 0;
  *(self + 88) = 0;
  *(self + 89) = 0;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 190) = 1065353216;
  *(self + 98) = 0;
  *(self + 97) = 0;
  *(self + 96) = self + 776;
  *(self + 103) = 0;
  *(self + 102) = 0;
  *(self + 101) = self + 816;
  *(self + 53) = 0u;
  *(self + 54) = 0u;
  *(self + 220) = 1065353216;
  return self;
}

- (BOOL)archiveSkipsAIRValidation
{
  if ((self->_options & 0x20) != 0)
  {
    LOBYTE(MainBundle) = 1;
  }

  else
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      MainBundle = CFBundleGetIdentifier(MainBundle);
      if (MainBundle)
      {
        LOBYTE(MainBundle) = CFStringHasPrefix(MainBundle, @"com.apple.") == 1;
      }
    }
  }

  return MainBundle;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  serializeQueue = self->_serializeQueue;
  if (serializeQueue)
  {
    dispatch_release(serializeQueue);
  }

  [(_MTLBinaryArchive *)self deallocContainers];
  metalScript = self->_metalScript;
  if (metalScript)
  {
    dispatch_release(metalScript);
  }

  self->_metalScript = 0;
  for (i = self->_variantMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[6];
    if (v7)
    {
      MTLProgramObject::~MTLProgramObject(v7);
      MEMORY[0x1865FF210]();
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_variantMap.__table_.__bucket_list_.__ptr_);

  v8.receiver = self;
  v8.super_class = _MTLBinaryArchive;
  [(_MTLObjectWithLabel *)&v8 dealloc];
}

- (void)deallocContainers
{
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::clear(&self->_executableFileIndex);
  for (i = self->_legacySpecializedFunctions.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[6];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_legacySpecializedFunctions.__table_.__bucket_list_.__ptr_);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(&self->_legacyPipelineFileIndex, self->_legacyPipelineFileIndex.__tree_.__end_node_.__left_);
  self->_legacyPipelineFileIndex.__tree_.__begin_node_ = &self->_legacyPipelineFileIndex.__tree_.__end_node_;
  self->_legacyPipelineFileIndex.__tree_.__size_ = 0;
  self->_legacyPipelineFileIndex.__tree_.__end_node_.__left_ = 0;
  fileMapping = self->_fileMapping;
  if (fileMapping)
  {
    [(MTLLoader *)*(self->_device + 61) releaseLoadedFile:?];
  }

  self->_fileMapping = 0;

  self->_fileData = 0;
  entries = self->_entries;
  if (entries)
  {
  }

  asynEntries = self->_asynEntries;
  if (asynEntries)
  {
  }

  self->_entries = 0;
  self->_asynEntries = 0;
  begin = self->_airntObjectList.__begin_;
  end = self->_airntObjectList.__end_;
  if (end != begin)
  {
    v10 = 0;
    do
    {
      v11 = begin[v10];
      if (v11)
      {
        MTLAirNTObject::~MTLAirNTObject(v11);
        MEMORY[0x1865FF210]();
        begin = self->_airntObjectList.__begin_;
        end = self->_airntObjectList.__end_;
      }

      ++v10;
    }

    while (v10 < end - begin);
  }

  v13 = self->_airntExtraBinaryEntries.__begin_;
  v12 = self->_airntExtraBinaryEntries.__end_;
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v13 + v14);
      if (v16)
      {
        MTLHashKey::~MTLHashKey(v16);
        MEMORY[0x1865FF210]();
        v13 = self->_airntExtraBinaryEntries.__begin_;
        v12 = self->_airntExtraBinaryEntries.__end_;
      }

      ++v15;
      v14 += 16;
    }

    while (v15 < (v12 - v13) >> 4);
  }

  for (j = self->_stitchedFunctionByHash.__table_.__first_node_.__next_; j; j = *j)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_);
  self->_airntExtraBinaryEntries.__end_ = self->_airntExtraBinaryEntries.__begin_;
  self->_airntObjectList.__end_ = self->_airntObjectList.__begin_;
  self->_airntFromDescriptorFunctionList.__end_ = self->_airntFromDescriptorFunctionList.__begin_;
  v18 = self->_airntPipelineList.__begin_;
  v19 = self->_airntPipelineList.__end_;
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[v20];
      if (v21)
      {
        if (*(v21 + 63) < 0)
        {
          operator delete(*(v21 + 5));
        }

        MEMORY[0x1865FF210](v21, 0x1032C40B82182A8);
        v18 = self->_airntPipelineList.__begin_;
        v19 = self->_airntPipelineList.__end_;
      }

      ++v20;
    }

    while (v20 < v19 - v18);
  }

  self->_airntPipelineList.__end_ = v18;
  archiveIDInt = self->_archiveIDInt;
  if (archiveIDInt)
  {
    free(archiveIDInt);
  }

  ptr = self->_uniqueBitcodeList.__ptr_;
  if (ptr)
  {
    v24 = ptr[2];
    if (v24)
    {
      do
      {

        v24 = *v24;
      }

      while (v24);
      ptr = self->_uniqueBitcodeList.__ptr_;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(ptr);
  }

  [(_MTLBinaryArchive *)self clearLibCache];
}

- (void)clearLibCache
{
  p_libCache = &self->_libCache;
  for (i = self->_libCache.__table_.__first_node_.__next_; i; i = *i)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(p_libCache);
  for (j = self->_extLibCache.__table_.__first_node_.__next_; j; j = *j)
  {
    if (j[39] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(j + 2), *(j + 3));
    }

    else
    {
      __p = *(j + 16);
    }

    v7 = *(j + 5);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(&self->_extLibCache);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_);
}

- (_MTLBinaryArchive)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {
    options = [descriptor options];
    v10 = [descriptor url];

    return [(_MTLBinaryArchive *)self initWithOptions:options device:device url:v10 error:error];
  }

  else
  {
    if (error)
    {
      *error = newErrorWithMessage(&cfstr_Mtlbinaryarchi_0.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (_MTLBinaryArchive)initWithOptions:(unint64_t)options device:(id)device url:(id)url error:(id *)error
{
  v11.receiver = self;
  v11.super_class = _MTLBinaryArchive;
  v9 = [(_MTLObjectWithLabel *)&v11 init];
  if (v9)
  {
    if (error)
    {
      *error = 0;
      if (!options)
      {
        *error = newErrorWithMessage(&cfstr_AtLeastOneOpti.isa, MTLBinaryArchiveErrorUnexpectedElement);
LABEL_7:

        return 0;
      }
    }

    else if (!options)
    {
      goto LABEL_7;
    }

    v9->_device = device;
    v9->_options = options;
    v9->_internalArchiverId = 0;
    v9->_newBinary = 0;
    atomic_store(0, &v9->_serializing);
    v9->_archiveIDInt = 0;
    v9->_absoluteOpenPath = 0;
    v9->_metalScript = 0;
    v9->_alwaysReturnDriverReflection = [objc_msgSend(device "targetDeviceArchitecture")] == 16777235;
    v9->_hasBuiltins = 0;
    operator new();
  }

  return v9;
}

+ (BOOL)deserializeBinaryArchiveHeader:(DeserializedBinaryArchiveLayout *)header fileData:(id)data device:(id)device
{
  if (device)
  {
    v8 = [MTLLoader sliceIDForDevice:device andDriverVersion:0];
    v9 = v8;
    v10 = HIDWORD(v8);
    v11 = +[MTLLoader sliceIDForDescriptors];
    v12 = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(device)];
    var0 = v12.var0;
    v14 = HIDWORD(*&v12);
  }

  else
  {
    v11 = +[MTLLoader sliceIDForDescriptors];
    v9 = 0;
    LODWORD(v10) = 0;
    LODWORD(v14) = 0;
    var0 = 0;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke;
  v48[3] = &unk_1E6EEA990;
  v48[4] = data;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x5812000000;
  v37 = __Block_byref_object_copy__148;
  v38 = __Block_byref_object_dispose__149;
  v39 = &unk_185DF1D43;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  *v31 = 0;
  if (device)
  {
    MaxSupportedLLVMVersion = _MTLGetMTLCompilerLLVMVersionForDevice(device);
  }

  else
  {
    MaxSupportedLLVMVersion = getMaxSupportedLLVMVersion(0);
  }

  _MTLGetMaxAIRAndLanguageVersions(MaxSupportedLLVMVersion, &v31[1], v31);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_151;
  v24[3] = &unk_1E6EEA9E0;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = var0;
  v29 = v14;
  v30 = v31[1];
  v24[4] = data;
  v24[5] = v32;
  v24[6] = &v42;
  v24[7] = &v34;
  v24[8] = header;
  v16 = +[MTLLoader deserializeUniversalBinaryHeaderWithHandler:reader:bytes:](MTLLoader, v24, v48, [data length]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_3;
  v23[3] = &unk_1E6EEA9B8;
  v23[4] = data;
  v23[5] = header;
  header->var12 = [MTLLoader machOConformsToAIRNTFormat:v23 type:0];
  if (header->var1)
  {
    if (header->var0)
    {
      header->var13.var0 = v9;
      header->var13.var1 = v10;
    }

    else
    {
      v17 = [device getMostCompatibleArchitecture:v43[5]];
      if ([v17 cpuType])
      {
        header->var13.var0 = [v17 cpuType];
        header->var13.var1 = [v17 cpuSubtype];
        v18 = v35;
        cpuType = [v17 cpuType];
        v22 = [v17 cpuSubtype] | (cpuType << 32);
        *&header->var2 = *std::unordered_map<unsigned long long,+[_MTLBinaryArchive deserializeBinaryArchiveHeader:fileData:device:]::archSliceId>::operator[](v18 + 12, &v22);
      }
    }
  }

  v20 = objc_alloc(MEMORY[0x1E695DEC8]);
  header->var14 = [v20 initWithArray:v43[5]];
  [v43[5] removeAllObjects];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v40);
  _Block_object_dispose(&v42, 8);
  return v16;
}

+ (void)deserializeBinaryArchiveHeader:(float *)header fileData:(unint64_t *)data device:
{
  v2 = *data;
  v3 = *(header + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *data;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*header + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

+ (BOOL)deserializeBinaryArchiveDescriptorMachO:(DeserializedBinaryArchiveLayout *)o fileData:(id)data
{
  o->var7 = 0;
  o->var8 = 0;
  if (!o->var4)
  {
    return 0;
  }

  v11[11] = v4;
  v11[12] = v5;
  v8 = +[MTLLoader sliceIDForDescriptors];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke;
  v11[3] = &unk_1E6EEAA58;
  v11[5] = o;
  v11[6] = v8;
  v11[4] = data;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_4;
  v10[3] = &unk_1E6EEA9B8;
  v10[4] = data;
  v10[5] = o;
  return [MTLLoader deserializeMachOContainerWithHandler:v11 reader:v10];
}

+ (unsigned)archiveVersionCompatible:(MachOToolsVersion *)compatible isMatchingSlice:(BOOL)slice device:(id)device
{
  sliceCopy = slice;
  active_platform = dyld_get_active_platform();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  if (processInfo)
  {
    objc_msgSend_operatingSystemVersion(processInfo);
  }

  if (active_platform != compatible->var1)
  {
    return 5;
  }

  if (compatible->var0)
  {
    return 6;
  }

  if (([device isVendorSliceCompatibleWithDeploymentTarget:? platform:? sdkVersion:? compilerPluginVersion:?] & sliceCopy) != 0)
  {
    return 2;
  }

  return 3;
}

+ (unsigned)archiveTypeAtURL:(id)l device:(id)device error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [(MTLLoader *)v9 loadFileWithURL:l error:error errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v13 = v10;
    v14 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)v10 contents]];
    *&v27.var0 = 0;
    v27.var14 = 0;
    v27.var13.var0 = 0;
    v27.var13.var1 = 0;
    memset(&v27.var2, 0, 17);
    memset(&v27.var5, 0, 33);
    memset(&v27.var10, 0, 17);
    if ([_MTLBinaryArchive deserializeBinaryArchiveHeader:&v27 fileData:v14 device:device])
    {
      v26 = 0;
      v25 = 0;
      v24 = [MTLLoader sliceIDForDevice:device legacyDriverVersion:&v26 airntDriverVersion:&v25];
      if (!v27.var12)
      {
        v12 = !v27.var12;
        goto LABEL_20;
      }

      if (!v27.var0 && !v27.var13.var0)
      {
        v12 = 4;
LABEL_20:

        [(MTLLoader *)v9 releaseLoadedFile:v13];
        DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v27);
        goto LABEL_21;
      }

      v22 = 0uLL;
      v23 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51___MTLBinaryArchive_archiveTypeAtURL_device_error___block_invoke;
      v21[3] = &unk_1E6EEA9B8;
      v21[4] = v14;
      v21[5] = v27.var2;
      v16 = [MTLLoader deserializeAIRNTToolsVersionForSlice:v27.var2 sliceOffset:&v22 version:v21 reader:?];

      if (v16)
      {
        v19 = v22;
        v20 = v23;
        v12 = [_MTLBinaryArchive archiveVersionCompatible:&v19 isMatchingSlice:v27.var0 device:device];
        goto LABEL_20;
      }

      if (error)
      {
        v12 = 0;
        *error = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"The file %@ has an invalid format.", l], MTLBinaryArchiveErrorInvalidFile);
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_21:

  if (error && *error)
  {
    v17 = *error;
  }

  objc_autoreleasePoolPop(v8);
  return v12;
}

- (BOOL)loadAirSliceAtOffset:(unint64_t)offset sliceLength:(unint64_t)length
{
  v43[16] = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], offset, length);
  v12 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, subrange, 0, v8, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    v14 = [(NSArray *)[(_MTLLibrary *)v12 specializedFunctionHashes] count];
    v15 = [(NSArray *)[(_MTLLibrary *)v13 stitchingFunctionHashes] count];
    v16 = [(NSArray *)[(_MTLLibrary *)v13 functionHashes] count];
    if ((self->_options & 0x10) != 0 || (!v15 ? (v17 = v14 == 1) : (v17 = 0), !v17 ? (v18 = v15 == 1) : (v18 = 1), !v18 ? (v19 = v16 >= 0xA) : (v19 = 0), v19))
    {
      v20 = v13;
      v43[0] = &offsetCopy;
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_libCache.__table_.__bucket_list_.__ptr_, &offsetCopy, &std::piecewise_construct, v43)[3] = v20;
    }

    v35 = v13;
    specializedFunctionHashes = [(_MTLLibrary *)v13 specializedFunctionHashes];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [(NSArray *)specializedFunctionHashes countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(specializedFunctionHashes);
          }

          [*(*(&v37 + 1) + 8 * i) getValue:v42];
          v41 = v42;
          v26 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, v42, &std::piecewise_construct, &v41);
          v26[6] = offset;
          v26[7] = length;
        }

        v23 = [(NSArray *)specializedFunctionHashes countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v23);
    }

    stitchingFunctionHashes = [(_MTLLibrary *)v35 stitchingFunctionHashes];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [(NSArray *)stitchingFunctionHashes countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(stitchingFunctionHashes);
          }

          [*(*(&v37 + 1) + 8 * j) getValue:v42];
          v41 = v42;
          v32 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_, v42, &std::piecewise_construct, &v41);
          v32[6] = offset;
          v32[7] = length;
        }

        v29 = [(NSArray *)stitchingFunctionHashes countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v29);
    }

    v13 = v35;

    v33 = subrange;
  }

  else
  {
    v33 = subrange;
  }

  dispatch_release(v33);
  return v13 != 0;
}

- (BOOL)loadFromURL:(id)l error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (!l || ![l isFileURL] || (objc_msgSend(l, "checkResourceIsReachableAndReturnError:", error) & 1) == 0)
  {
    if (error)
    {
      v11 = 1;
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
      *error = v12;
      v13 = v12;
      LOBYTE(v14) = 0;
    }

    else
    {
      LOBYTE(v14) = 0;
      v11 = 1;
    }

    goto LABEL_10;
  }

  if ([(_MTLBinaryArchive *)self archiveSkipsAIRValidation]|| (v8 = [(MTLDevice *)self->_device lookupRecompiledBinaryArchive:l]) == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = v8;
    [(MTLDevice *)self->_device recordBinaryArchiveUsage:l];
    l = v9;
    v10 = 1;
  }

  v16 = [(MTLLoader *)*(self->_device + 61) loadFileWithURL:l error:error errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  self->_fileMapping = v16;
  if (v16)
  {
    v17 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)self->_fileMapping contents]];
    self->_fileData = v17;
    self->_internalArchiverId = 0;
    if (v17)
    {
      errorCopy = error;
      v50 = v7;
      v63 = 0;
      v62 = 0;
      *&v61.var0 = 0;
      v61.var14 = 0;
      v61.var13.var1 = 0;
      v61.var13.var0 = 0;
      memset(&v61.var2, 0, 17);
      memset(&v61.var5, 0, 33);
      memset(&v61.var10, 0, 17);
      LOBYTE(v14) = [_MTLBinaryArchive deserializeBinaryArchiveHeader:&v61 fileData:self->_fileData device:self->_device];
      v60 = 0;
      v60 = [MTLLoader sliceIDForDevice:&v63 legacyDriverVersion:&v62 airntDriverVersion:?];
      v18 = ~v61.var12;
      self->_isLegacy = !v61.var12;
      if (v18)
      {
        options = self->_options;
        LOBYTE(v22) = options & 0xCF;
        self->_options = options & 0xFFFFFFFFFFFFFFCFLL;
        if (!v61.var1 && !v61.var4)
        {
          LOBYTE(v14) = v61.var9 & v14;
        }

        if ((options & 2) != 0 && v61.var0)
        {
          if (v14)
          {
            LOBYTE(v14) = [(_MTLBinaryArchive *)self loadFileIndex:&self->_legacyPipelineFileIndex expectedSliceId:&v60 expectedVersion:v63 sliceOffset:v61.var2];
            v22 = self->_options;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          v61.var0 = v14;
        }

        if (v22)
        {
          if (v61.var4)
          {
            v30 = (v14 & 1) != 0 && [_MTLBinaryArchive deserializeBinaryArchiveDescriptorMachO:&v61 fileData:self->_fileData];
            v61.var4 = v30;
          }

          if (v61.var7)
          {
            [(MTLLoadedFileContentsWrapper *)self->_fileData bytes];
          }
        }

        if ((self->_options & 4) != 0 && v61.var9)
        {
          var11 = v61.var11;
          self->_specializedFunctionArchiveOffset = v61.var10;
          self->_specializedFunctionArchiveBytes = var11;
          if (v14)
          {
            v64.__r_.__value_.__r.__words[0] = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(self->_device)];
            LOBYTE(v14) = [(_MTLBinaryArchive *)self loadFileIndex:&self->_legacySpecializedFunctionArchiveFileIndex expectedSliceId:&v64 expectedVersion:1 sliceOffset:self->_specializedFunctionArchiveOffset];
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        goto LABEL_102;
      }

      archiveSkipsAIRValidation = [(_MTLBinaryArchive *)self archiveSkipsAIRValidation];
      if (!v61.var0 && !v61.var13.var0)
      {
        v20 = 1;
        LOBYTE(v14) = 1;
LABEL_68:
        if (v20 && (v14 & 1) != 0)
        {
          memset(__p, 0, sizeof(__p));
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          var14 = v61.var14;
          v34 = [v61.var14 countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v34)
          {
            v35 = *v55;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v55 != v35)
                {
                  objc_enumerationMutation(var14);
                }

                std::string::basic_string[abi:ne200100]<0>(&v53, [objc_msgSend(*(*(&v54 + 1) + 8 * i) "name")]);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v37 = __p;
                }

                else
                {
                  v37 = __p[0];
                }

                if (SHIBYTE(__p[2]) >= 0)
                {
                  v38 = HIBYTE(__p[2]);
                }

                else
                {
                  v38 = __p[1];
                }

                v39 = std::string::insert(&v53, 0, v37, v38);
                v40 = *&v39->__r_.__value_.__l.__data_;
                v64.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                *&v64.__r_.__value_.__l.__data_ = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                std::string::basic_string[abi:ne200100]<0>(v51, ", ");
                if ((v52 & 0x80u) == 0)
                {
                  v41 = v51;
                }

                else
                {
                  v41 = v51[0];
                }

                if ((v52 & 0x80u) == 0)
                {
                  v42 = v52;
                }

                else
                {
                  v42 = v51[1];
                }

                v43 = std::string::append(&v64, v41, v42);
                v44 = v43->__r_.__value_.__r.__words[0];
                v65[0] = v43->__r_.__value_.__l.__size_;
                *(v65 + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
                v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
                v43->__r_.__value_.__l.__size_ = 0;
                v43->__r_.__value_.__r.__words[2] = 0;
                v43->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                __p[0] = v44;
                __p[1] = v65[0];
                *(&__p[1] + 7) = *(v65 + 7);
                HIBYTE(__p[2]) = v45;
                if (v52 < 0)
                {
                  operator delete(v51[0]);
                }

                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v64.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v53.__r_.__value_.__l.__data_);
                }
              }

              v34 = [var14 countByEnumeratingWithState:&v54 objects:v66 count:16];
            }

            while (v34);
          }

          error = errorCopy;
          v7 = v50;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            public_arch_name_from_id = air_macho_get_public_arch_name_from_id(v60, SHIDWORD(v60));
            -[_MTLBinaryArchive loadFromURL:error:].cold.1([objc_msgSend(l "absoluteString")], __p, &v64, public_arch_name_from_id);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v14) = 1;
        }

LABEL_102:
        DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v61);
        goto LABEL_103;
      }

      memset(&v64, 0, 20);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __39___MTLBinaryArchive_loadFromURL_error___block_invoke;
      v59[3] = &unk_1E6EEA9B8;
      v59[4] = self;
      v59[5] = v61.var2;
      v23 = [MTLLoader deserializeAIRNTToolsVersionForSlice:v61.var2 sliceOffset:&v64 version:v59 reader:?];

      if (v23)
      {
        *__p = *&v64.__r_.__value_.__l.__data_;
        LODWORD(__p[2]) = v64.__r_.__value_.__r.__words[2];
        v24 = [_MTLBinaryArchive archiveVersionCompatible:__p isMatchingSlice:v61.var0 device:self->_device];
        if (v24 == 2)
        {
          p_var13 = &v60;
          v26 = archiveSkipsAIRValidation;
          goto LABEL_43;
        }
      }

      else
      {
        v24 = 0;
      }

      v28 = (self->_options & 0x10) == 0 || v61.var13.var0 == 0 || v24 == 0;
      v20 = v28;
      if (v28)
      {
        v29 = v20;
LABEL_61:
        v32 = !v61.var9;
        v14 = v32 && v29;
        if (!v32 && v29)
        {
          v14 = [(_MTLBinaryArchive *)self loadAirSliceAtOffset:v61.var10 sliceLength:v61.var11];
        }

        if (!(v10 | archiveSkipsAIRValidation) && !self->_hasBuiltins && ((v14 ^ 1) & 1) == 0)
        {
          [(MTLDevice *)self->_device recordBinaryArchiveUsage:l];
        }

        goto LABEL_68;
      }

      v29 = v20;
      if ((v23 ^ 1))
      {
        goto LABEL_61;
      }

      v26 = 0;
      p_var13 = &v61.var13;
LABEL_43:
      v29 = [(_MTLBinaryArchive *)self loadAirntBlocksForSlice:p_var13 sliceOffset:v61.var2 skipAIRValidation:v26];
      v20 = 0;
      goto LABEL_61;
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    LOBYTE(v14) = 0;
    self->_fileData = 0;
    self->_internalArchiverId = 0;
  }

LABEL_103:
  v11 = v14;
  if (error && (v14 & 1) == 0)
  {
    v47 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"The file %@ has an invalid format.", l], MTLBinaryArchiveErrorInvalidFile);
    *error = v47;
    v48 = v47;
    LOBYTE(v14) = 0;
    v11 = 0;
  }

LABEL_10:
  objc_autoreleasePoolPop(v7);
  return v14 & v11 & 1;
}

- (id)materializeFromFileOffset:(unint64_t)offset hash:(id *)hash
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke;
  v12[3] = &unk_1E6EEAA80;
  v12[4] = &v29;
  v12[5] = &v25;
  v12[8] = offset;
  v12[9] = hash;
  v12[6] = &v19;
  v12[7] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke_2;
  v11[3] = &unk_1E6EEA9B8;
  v11[4] = self;
  v11[5] = offset;
  if ([MTLLoader deserializeMachOWrapperWithType:v12 payloadHandler:v11 reader:?]&& (v5 = v26[3]) != 0 && (subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v30[3], v5)) != 0)
  {
    v7 = subrange;
    v8 = [MTLBinaryEntry alloc];
    v9 = [(MTLBinaryEntry *)v8 initWithData:v7 importedSymbols:v14[5] importedLibraries:v20[5]];
    dispatch_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v9;
}

- (void)materializeAllAIRNTLegacy
{
  v9 = *MEMORY[0x1E69E9840];
  for (i = self->_executableFileIndex.__table_.__first_node_.__next_; i; i = *i)
  {
    MTLHashKey::MTLHashKey(&v6, (i + 16));
    v4 = *(i + 7);
    v7 = *(i + 6);
    v8 = v4;
    v5 = [[MTLBinaryKey alloc] initWithHash:&v6];
    if (![(NSMutableDictionary *)self->_entries objectForKey:v5])
    {
      [(_MTLBinaryArchive *)self materializeAIRNTBlockForKey:v5 reflectionType:0];
    }

    MTLHashKey::~MTLHashKey(&v6);
  }
}

- (void)materializeAll
{
  v13 = *MEMORY[0x1E69E9840];
  p_legacyPipelineFileIndex = &self->_legacyPipelineFileIndex;
  p_end_node = &self->_legacyPipelineFileIndex.__tree_.__end_node_;
  begin_node = self->_legacyPipelineFileIndex.__tree_.__begin_node_;
  if (begin_node != &self->_legacyPipelineFileIndex.__tree_.__end_node_)
  {
    do
    {
      v6 = [(_MTLBinaryArchive *)self materializeFromFileOffset:begin_node[9].__left_ hash:v12];
      if (v6)
      {
        MTLHashKey::MTLHashKey(&v11, v12);
        v7 = [[MTLBinaryKey alloc] initWithHash:&v11];
        if (![(NSMutableDictionary *)self->_entries objectForKey:v7])
        {
          [(NSMutableDictionary *)self->_entries setObject:v6 forKey:v7];
        }

        MTLHashKey::~MTLHashKey(&v11);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }

  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(p_legacyPipelineFileIndex, p_legacyPipelineFileIndex->__tree_.__end_node_.__left_);
  p_legacyPipelineFileIndex->__tree_.__end_node_.__left_ = 0;
  p_legacyPipelineFileIndex->__tree_.__size_ = 0;
  p_legacyPipelineFileIndex->__tree_.__begin_node_ = p_end_node;
}

- (id)materializeFromHash:(id *)hash fileIndex:(void *)index
{
  v7 = std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::lower_bound[abi:ne200100]<MTLUINT256_t>(index, hash->var0);
  if (index + 8 == v7)
  {
    return 0;
  }

  v8 = v7;
  if (memcmp(v7 + 8, hash, v7[16]))
  {
    return 0;
  }

  v10 = [(_MTLBinaryArchive *)self materializeFromFileOffset:v8[9] hash:hash];
  std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer(index, v8);
  operator delete(v8);
  return v10;
}

- (id)formattedDescription:(unint64_t)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___MTLBinaryArchive_formattedDescription___block_invoke;
  block[3] = &unk_1E6EEAAA8;
  block[5] = &v7;
  block[6] = description;
  block[4] = self;
  queue = self->_queue;
  if (queue)
  {
    dispatch_sync(queue, block);
  }

  else
  {
    __42___MTLBinaryArchive_formattedDescription___block_invoke(block);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)storeComputePipelineDescriptor:(id)descriptor
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || descriptor && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addComputePipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, descriptor), self->_isLegacy))
  {
    if (self->_options)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      preloadedLibraries = [descriptor preloadedLibraries];
      v6 = [preloadedLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(preloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v12 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [preloadedLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      v10 = [objc_msgSend(descriptor "computeFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v10);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor computeFunction], v10, 0);
      MTLPipelineCollection::addComputePipeline(self->_pipelineCollection.__ptr_, descriptor);
    }
  }

  return 1;
}

- (BOOL)storeRenderPipelineDescriptor:(id)descriptor
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || descriptor && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, descriptor), self->_isLegacy))
  {
    if (self->_options)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      vertexPreloadedLibraries = [descriptor vertexPreloadedLibraries];
      v6 = [vertexPreloadedLibraries countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v43;
        do
        {
          v9 = 0;
          do
          {
            if (*v43 != v8)
            {
              objc_enumerationMutation(vertexPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v42 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [vertexPreloadedLibraries countByEnumeratingWithState:&v42 objects:v49 count:16];
        }

        while (v7);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v11 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v39;
        do
        {
          v14 = 0;
          do
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v38 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v12);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      objectPreloadedLibraries = [descriptor objectPreloadedLibraries];
      v16 = [objectPreloadedLibraries countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          v19 = 0;
          do
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(objectPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v34 + 1) + 8 * v19++));
          }

          while (v17 != v19);
          v17 = [objectPreloadedLibraries countByEnumeratingWithState:&v34 objects:v47 count:16];
        }

        while (v17);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      meshPreloadedLibraries = [descriptor meshPreloadedLibraries];
      v21 = [meshPreloadedLibraries countByEnumeratingWithState:&v30 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          v24 = 0;
          do
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(meshPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v30 + 1) + 8 * v24++));
          }

          while (v22 != v24);
          v22 = [meshPreloadedLibraries countByEnumeratingWithState:&v30 objects:v46 count:16];
        }

        while (v22);
      }

      v25 = [objc_msgSend(descriptor "vertexFunction")];
      v26 = [objc_msgSend(descriptor "fragmentFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v25);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v26);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor vertexFunction], v25, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor fragmentFunction], v26, 0);
      v27 = [objc_msgSend(descriptor "objectFunction")];
      v28 = [objc_msgSend(descriptor "meshFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v27);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v28);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor objectFunction], v27, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor meshFunction], v28, 0);
      MTLPipelineCollection::addRenderPipeline(self->_pipelineCollection.__ptr_, descriptor);
    }
  }

  return 1;
}

- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || descriptor && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addTileRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, descriptor), self->_isLegacy))
  {
    if (self->_options)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      preloadedLibraries = [descriptor preloadedLibraries];
      v6 = [preloadedLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(preloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v12 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [preloadedLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      v10 = [objc_msgSend(descriptor "tileFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v10);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor tileFunction], v10, 0);
      MTLPipelineCollection::addTileRenderPipeline(self->_pipelineCollection.__ptr_, descriptor);
    }
  }

  return 1;
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || descriptor && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addMeshRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, descriptor), self->_isLegacy))
  {
    if (self->_options)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      objectPreloadedLibraries = [descriptor objectPreloadedLibraries];
      v6 = [objectPreloadedLibraries countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v33;
        do
        {
          v9 = 0;
          do
          {
            if (*v33 != v8)
            {
              objc_enumerationMutation(objectPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v32 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [objectPreloadedLibraries countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v7);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      meshPreloadedLibraries = [descriptor meshPreloadedLibraries];
      v11 = [meshPreloadedLibraries countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          v14 = 0;
          do
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(meshPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v28 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [meshPreloadedLibraries countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v12);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v16 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v24 + 1) + 8 * v19++));
          }

          while (v17 != v19);
          v17 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v24 objects:v36 count:16];
        }

        while (v17);
      }

      v20 = [objc_msgSend(descriptor "objectFunction")];
      v21 = [objc_msgSend(descriptor "meshFunction")];
      v22 = [objc_msgSend(descriptor "fragmentFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v20);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v21);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v22);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor objectFunction], v20, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor meshFunction], v21, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [descriptor fragmentFunction], v22, 0);
      MTLPipelineCollection::addMeshRenderPipeline(self->_pipelineCollection.__ptr_, descriptor);
    }
  }

  return 1;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {

    return [_MTLBinaryArchive addComputePipelineFunctionsWithDescriptor:"addComputePipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (error)
    {
      *error = newErrorWithMessage(&cfstr_ComputePipelin.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  [(_MTLBinaryArchive *)self storeComputePipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  compiler = [(MTLDevice *)self->_device compiler];

  return [compiler addComputePipelineStateWithDescriptor:descriptor destinationBinaryArchive:self options:options error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {

    return [_MTLBinaryArchive addRenderPipelineFunctionsWithDescriptor:"addRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (error)
    {
      *error = newErrorWithMessage(&cfstr_RenderPipeline.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  [(_MTLBinaryArchive *)self storeRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  compiler = [(MTLDevice *)self->_device compiler];

  return [compiler addRenderPipelineStateWithDescriptor:descriptor destinationBinaryArchive:self options:options error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {

    return [_MTLBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:"addTileRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (error)
    {
      *error = newErrorWithMessage(&cfstr_TilePipelineDe.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  [(_MTLBinaryArchive *)self storeTileRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  compiler = [(MTLDevice *)self->_device compiler];

  return [compiler addTileRenderPipelineStateWithDescriptor:descriptor destinationBinaryArchive:self options:options error:error];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  if (descriptor)
  {

    return [_MTLBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:"addMeshRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (error)
    {
      *error = newErrorWithMessage(&cfstr_MeshPipelineDe.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  [(_MTLBinaryArchive *)self storeMeshRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  compiler = [(MTLDevice *)self->_device compiler];

  return [compiler addMeshRenderPipelineStateWithDescriptor:descriptor destinationBinaryArchive:self options:options error:error];
}

- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error
{
  if (self->_isLegacy && (options = self->_options, (options & 6) == 0))
  {
    if ((options & 1) == 0)
    {
      return 1;
    }

    v10 = [library newFunctionWithDescriptor:descriptor error:error];
  }

  else
  {
    v10 = [library newFunctionWithDescriptor:descriptor destinationArchive:self error:error];
  }

  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  if (self->_isLegacy || (v14 = 1, descriptor) && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addFunctionWithDescriptor(self->_mtlScriptBuilder.__ptr_, v10, library, descriptor), self->_isLegacy))
  {
    if (self->_options)
    {
      v12 = [library newFunctionWithName:{objc_msgSend(descriptor, "name")}];
      if (!v12)
      {
        v14 = 0;
        if (error)
        {
          *error = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"library does not contain base function '%@'", objc_msgSend(descriptor, "name")], MTLBinaryArchiveErrorUnexpectedElement);
        }

        goto LABEL_10;
      }

      v13 = v12;
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, [v12 libraryData]);
      MTLPipelineCollection::addSpecializedFunction(self->_pipelineCollection.__ptr_, v13, v11, library, descriptor);
    }

    v14 = 1;
  }

LABEL_10:

  return v14;
}

- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  if (!self->_isLegacy || (self->_options & 4) != 0)
  {
    v6 = [(MTLDevice *)self->_device newLibraryWithStitchedDescriptor:descriptor destinationBinaryArchive:self error:error];
    if (v6)
    {
      v7 = v6;
      if (!self->_isLegacy && descriptor && (self->_options & 0xC0) == 0)
      {
        MTLMetalScriptBuilder::addLibraryWithDescriptor(self->_mtlScriptBuilder.__ptr_, v6, descriptor);
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)getSpecializedFunctionArchivesToSerialize:(void *)serialize
{
  v14 = *MEMORY[0x1E69E9840];
  next = self->_legacySpecializedFunctions.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 1;
    do
    {
      v7 = *(next + 2);
      v12[0] = *(next + 1);
      v12[1] = v7;
      object = *(next + 6);
      if (object)
      {
        std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,NSObject  {objcproto16OS_dispatch_data}*> const&>(serialize, v12, v12);
        v9 = v8;
        if (v8)
        {
          dispatch_retain(object);
        }

        v6 &= v9;
      }

      next = *next;
    }

    while (next);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___MTLBinaryArchive_getSpecializedFunctionArchivesToSerialize___block_invoke;
  v11[3] = &__block_descriptor_40_e49_B24__0r_____32C__8__NSObject_OS_dispatch_data__16l;
  v11[4] = serialize;
  return [(_MTLBinaryArchive *)self enumerateSpecializedFunctionArchivesFromBackingFile:v11];
}

- (id)flatBufferFromJSON:(id)n schema:(const char *)schema schemaSize:(unint64_t)size
{
  size_ptr = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(n, &buffer_ptr, &size_ptr);
  if (size_ptr)
  {
    flatbuffers::IDLOptions::IDLOptions(&v7);
    flatbuffers::Parser::Parser(v8, &v7);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_MTLBinaryArchive flatBufferFromJSON:schema:schemaSize:];
    if (!v5)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    dispatch_release(v5);
  }

  return 0;
}

- (id)materializeAirScript:(void *)script
{
  v5 = *(script + 4);
  if (!v5)
  {
    v10 = mapFileToMemory(*(script + 11), 1);
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    v12 = *(script + 11);
    if (hasFileExtension(v12, ".airp-json"))
    {
      v13 = &Air::PipelineScriptBinarySchema::data(void)::bfbsData;
      selfCopy3 = self;
      v15 = v11;
      v16 = 37264;
    }

    else if (hasFileExtension(v12, ".aird-json"))
    {
      v13 = &Air::DylibScriptBinarySchema::data(void)::bfbsData;
      selfCopy3 = self;
      v15 = v11;
      v16 = 712;
    }

    else
    {
      if (!hasFileExtension(v12, ".airf-json"))
      {
        v17 = 0;
        goto LABEL_14;
      }

      v13 = &Air::ConstantsSpecializationScriptBinarySchema::data(void)::bfbsData;
      selfCopy3 = self;
      v15 = v11;
      v16 = 12584;
    }

    v17 = [(_MTLBinaryArchive *)selfCopy3 flatBufferFromJSON:v15 schema:v13 schemaSize:v16];
LABEL_14:
    dispatch_release(v11);
    return v17;
  }

  v6 = *(script + 3);
  v7 = *(script + 7);
  dispatchData = [(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData];

  return dispatch_data_create_subrange(dispatchData, v7 + v6, v5);
}

- (id)newLibraryInArchiveWithRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  v16 = range.location;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v16);
  if (v8)
  {
    return v8[3];
  }

  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], location, length);
  v9 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, subrange, error, v11, v12, v13, v14);
  dispatch_release(subrange);
  return v9;
}

- (id)newLibraryInArchiveAtPos:(void *)pos atIndex:(unsigned int)index error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = *(*pos + 8 * index);
  if (!*(v9 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *(v9 + 16));
    v11 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(&self->_extLibCache.__table_.__bucket_list_.__ptr_, __p);
    if (v11)
    {
      v45 = v11[5];
    }

    else
    {
      v40 = mapFileToMemory(*(*(*pos + 8 * index) + 16), (self->_options & 0x20) == 0);
      if (!v40)
      {
        if (!error || (self->_options & 0x20) != 0)
        {
          v42 = 0;
          v45 = 0;
        }

        else
        {
          v42 = 0;
          v45 = 0;
          *error = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to map library at path: %s", *(*(*pos + 8 * index) + 16)], MTLBinaryArchiveErrorInvalidFile);
        }

LABEL_41:
        if (v54 < 0)
        {
          operator delete(__p[0]);
          if (v42)
          {
            return v45;
          }
        }

        else if (v42)
        {
          return v45;
        }

        return 0;
      }

      v45 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, v40, error, v36, v37, v38, v39);
      if ([(_MTLLibrary *)v45 isStub])
      {
        self->_bitcodeStripped = 1;
      }

      v41 = v45;
      *&v47 = __p;
      std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>(&self->_extLibCache.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v47, v52)[5] = v41;
      dispatch_release(v40);
    }

    v42 = 1;
    goto LABEL_41;
  }

  v46 = *(pos + 7) + *v9;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v46);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(*pos + 8 * index);
  v13 = v46;
  v14 = *(v12 + 8);
  object = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v46, v14);
  v45 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, object, error, v15, v16, v17, v18);
  if ([(_MTLLibrary *)v45 isStub])
  {
    self->_bitcodeStripped = 1;
  }

  v19 = [(NSArray *)[(_MTLLibrary *)v45 specializedFunctionHashes] count];
  v20 = [(NSArray *)[(_MTLLibrary *)v45 stitchingFunctionHashes] count];
  v21 = [(NSArray *)[(_MTLLibrary *)v45 functionHashes] count];
  if ((self->_options & 0x10) != 0 || (!v20 ? (v22 = v19 == 1) : (v22 = 0), !v22 ? (v23 = v20 == 1) : (v23 = 1), !v23 ? (v24 = v21 >= 0xA) : (v24 = 0), v24))
  {
    v25 = v45;
    __p[0] = &v46;
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v46, &std::piecewise_construct, __p)[3] = v25;
  }

  specializedFunctionHashes = [(_MTLLibrary *)v45 specializedFunctionHashes];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = [(NSArray *)specializedFunctionHashes countByEnumeratingWithState:&v47 objects:__p count:16];
  if (v27)
  {
    v28 = *v48;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(specializedFunctionHashes);
        }

        [*(*(&v47 + 1) + 8 * i) getValue:v52];
        v51 = v52;
        v30 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v51);
        v30[6] = v13;
        v30[7] = v14;
      }

      v27 = [(NSArray *)specializedFunctionHashes countByEnumeratingWithState:&v47 objects:__p count:16];
    }

    while (v27);
  }

  stitchingFunctionHashes = [(_MTLLibrary *)v45 stitchingFunctionHashes];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = [(NSArray *)stitchingFunctionHashes countByEnumeratingWithState:&v47 objects:__p count:16];
  if (v32)
  {
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(stitchingFunctionHashes);
        }

        [*(*(&v47 + 1) + 8 * j) getValue:v52];
        v51 = v52;
        v35 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v51);
        v35[6] = v13;
        v35[7] = v14;
      }

      v32 = [(NSArray *)stitchingFunctionHashes countByEnumeratingWithState:&v47 objects:__p count:16];
    }

    while (v32);
  }

  dispatch_release(object);
  return v45;
}

- (void)preloadLibrariesInAirntObject:(void *)object error:(id *)error
{
  if (*(object + 1) != *object)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v8;
    v19 = v9;
    v13 = 0;
    do
    {

      if (error && *error)
      {
        break;
      }

      v13 = (v13 + 1);
    }

    while (v13 < (*(object + 1) - *object) >> 3);
  }
}

- (id)materializeBitCode:(void *)code atIndex:(unsigned int)index
{
  v10 = 0;
  v6 = [(_MTLBinaryArchive *)self newLibraryInArchiveAtPos:code atIndex:*&index error:&v10];
  v7 = v10;
  if (v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_MTLBinaryArchive materializeBitCode:v7 atIndex:?];
  }

  v8 = [v6 bitCodeWithHash:*(*(*code + 8 * index) + 24)];

  return v8;
}

- (id)materializeReflectionBlock:(void *)block
{
  if ((*(block + 80) & 0x20) != 0)
  {

    return MTLNewReflectionBlock(0, 0, 0);
  }

  else
  {
    v6 = *(block + 12);
    if (v6)
    {
      subrange = mapFileToMemory(v6, 1);
    }

    else
    {
      subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(block + 7) + *(block + 16), *(block + 17));
    }

    v9 = subrange;
    v10 = *(block + 13);
    if (v10)
    {
      v11 = mapFileToMemory(v10, 1);
    }

    else
    {
      v11 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(block + 7) + *(block + 18), *(block + 19));
    }

    v12 = v11;
    v13 = MTLNewReflectionBlock(0, v9, v11);

    return v13;
  }
}

- (void)materializeAirNTFromOnlineForSlice:(const MTLLoaderSliceIdentifier *)slice entryList:(shared_ptr<std::vector<machOEntry>>)list
{
  var0 = list.var0;
  v89 = *MEMORY[0x1E69E9840];
  p_airntExtraBinaryEntries = &self->_airntExtraBinaryEntries;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<functionIdExtended>::__init_with_size[abi:ne200100]<functionIdExtended*,functionIdExtended*>(&v83, self->_airntExtraBinaryEntries.__begin_, self->_airntExtraBinaryEntries.__end_, (self->_airntExtraBinaryEntries.__end_ - self->_airntExtraBinaryEntries.__begin_) >> 4);
  std::unordered_map<MTLUINT256_t,MTLAirEntry *,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLAirEntry *>>>::unordered_map(v81, &self->_specializedFunctionByHash);
  std::unordered_map<MTLUINT256_t,MTLAirEntry *,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLAirEntry *>>>::unordered_map(v79, &self->_stitchedFunctionByHash);
  p_airntExtraBinaryEntries->__end_ = p_airntExtraBinaryEntries->__begin_;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_specializedFunctionByHash.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_);
  selfCopy = self;
  if (v84 != v83)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [MTLBinaryKey alloc];
      v9 = [(MTLBinaryKey *)v8 initWithHash:*(v83 + 2 * v6)];
      v10 = [(NSMutableDictionary *)self->_entries objectForKey:v9];
      if (v10)
      {
        v11 = *var0;
        v12 = (*var0)[1];
        if (v12 >= (*var0)[2])
        {
          v13 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
        }

        else
        {
          *(v12 + 64) = 0;
          *(v12 + 32) = 0u;
          *(v12 + 48) = 0u;
          v13 = v12 + 72;
          *v12 = 0u;
          *(v12 + 16) = 0u;
        }

        v11[1] = v13;
        *(v13 - 72) = slice->var1 | (slice->var0 << 32);
        data = [v10 data];
        *(v13 - 40) = data;
        dispatch_retain(data);
        operator new();
      }

      v6 = ++v7;
    }

    while (v7 < ((v84 - v83) >> 4));
  }

  for (i = v82; i; i = *i)
  {
    v16 = *(i + 1);
    v17 = *(i + 2);
    v88 = i[6];
    v87[0] = v16;
    v87[1] = v17;
    v18 = *var0;
    v19 = (*var0)[1];
    if (v19 >= (*var0)[2])
    {
      v20 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v19 + 64) = 0;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0u;
      v20 = v19 + 72;
      *v19 = 0u;
      *(v19 + 16) = 0u;
    }

    v18[1] = v20;
    *(v20 - 72) = slice->var1 | (slice->var0 << 32);
    v21 = v88;
    device = selfCopy->_device;
    libraryBuilder = device->_libraryBuilder;
    data2 = [v88 data];
    v29 = MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, data2, 0, v25, v26, v27, v28);
    v30 = [(_MTLLibrary *)v29 newSpecializedFunctionWithHash:v87];
    if (!v30)
    {
      v30 = [(_MTLLibrary *)v29 newFunctionWithName:[(NSArray *)[(_MTLLibrary *)v29 functionNames] objectAtIndex:0]];
    }

    *(v20 - 48) = [v21 bitcode];
    *(v20 - 40) = [v30 bitcodeDataInternal];
    airScript = [v21 airScript];
    *(v20 - 56) = airScript;
    dispatch_retain(airScript);
    dispatch_retain(*(v20 - 48));
  }

  for (j = v80; j; j = *j)
  {
    v33 = *var0;
    v34 = (*var0)[1];
    if (v34 >= (*var0)[2])
    {
      v35 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v34 + 64) = 0;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0u;
      v35 = v34 + 72;
      *v34 = 0u;
      *(v34 + 16) = 0u;
    }

    v33[1] = v35;
    *(v35 - 72) = 0;
    v36 = j[6];
    airScript2 = [v36 airScript];
    *(v35 - 56) = airScript2;
    dispatch_retain(airScript2);
    v38 = selfCopy->_device;
    v39 = v38->_libraryBuilder;
    data3 = [v36 data];
    v45 = MTLLibraryBuilder::newLibraryWithData(v39, v38, data3, 0, v41, v42, v43, v44);
    size_ptr = 0;
    buffer_ptr = 0;
    v46 = dispatch_data_create_map([v36 airScript], &buffer_ptr, &size_ptr);
    v47 = (buffer_ptr + *buffer_ptr);
    v48 = (v47 - *v47);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = (v47 + v49 + *(v47 + v49));
    }

    else
    {
      v50 = 0;
    }

    v51 = (v50 - *v50);
    if (*v51 >= 7u && (v52 = v51[3]) != 0)
    {
      v53 = (v50 + v52 + *(v50 + v52));
    }

    else
    {
      v53 = 0;
    }

    v54 = (v53 - *v53);
    if (*v54 >= 5u && (v55 = v54[2]) != 0)
    {
      v56 = (v53 + v55 + *(v53 + v55));
    }

    else
    {
      v56 = 0;
    }

    flatbuffers::String::str(__p, v56);
    v57 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v76 >= 0)
    {
      v58 = __p;
    }

    else
    {
      v58 = __p[0];
    }

    v59 = [v57 initWithUTF8String:v58];
    v60 = v45;
    v61 = [(_MTLLibrary *)v45 newFunctionWithName:v59];
    *(v35 - 40) = [v61 bitcodeDataInternal];
    dispatch_release(v46);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    linkedBitcodes = [v36 linkedBitcodes];
    v63 = [linkedBitcodes countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v63)
    {
      v64 = *v72;
      v65 = v35 - 24;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v72 != v64)
          {
            objc_enumerationMutation(linkedBitcodes);
          }

          [*(*(&v71 + 1) + 8 * k) getValue:v87];
          std::vector<MTLUINT256_t>::push_back[abi:ne200100](v65, v87);
        }

        v63 = [linkedBitcodes countByEnumeratingWithState:&v71 objects:v86 count:16];
      }

      while (v63);
    }

    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v79);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v81);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

- (void)materializeAirNTStitchedFunctions:(shared_ptr<std::vector<machOEntry>>)functions
{
  var0 = functions.var0;
  v25 = *MEMORY[0x1E69E9840];
  for (i = self->_stitchedLibraryCache.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = i[1];
    v6 = i[3];
    v23[1] = i[2];
    v24 = v6;
    v23[0] = v5;
    v7 = *var0;
    v8 = (*var0)[1];
    if (v8 >= (*var0)[2])
    {
      v9 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v8 + 64) = 0;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      v9 = v8 + 72;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    v7[1] = v9;
    *(v9 - 72) = 0;
    var0 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v24 error:0, var0];
    v11 = [var0 newStitchedFunctionWithHash:v23];
    *(v9 - 40) = [v11 bitcodeDataInternal];
    (*(*[v11 libraryData] + 320))(&__p);
    *(v9 - 56) = [v11 stitchingAirScript];
    if ((v9 - 24) != &__p)
    {
      std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>((v9 - 24), __p, v20, (v20 - __p) >> 5);
    }

    v13 = __p;
    v12 = v20;
    if (__p != v20)
    {
      do
      {
        v14 = *(v13 + 1);
        v22[0] = *v13;
        v22[1] = v14;
        if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, v22))
        {
          v15 = [var0 newFunctionWithHash:v22];
          bitcodeDataInternal = [v15 bitcodeDataInternal];
          ptr = self->_uniqueBitcodeList.__ptr_;
          v21 = v22;
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(ptr, v22, &std::piecewise_construct, &v21)[6] = bitcodeDataInternal;
        }

        v13 += 32;
      }

      while (v13 != v12);
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }
}

- (void)materializeAirNTSpecializedFunctions:(shared_ptr<std::vector<machOEntry>>)functions
{
  v21 = *MEMORY[0x1E69E9840];
  next = self->_specializedLibraryCache.__table_.__first_node_.__next_;
  if (next)
  {
    var0 = functions.var0;
    do
    {
      v6 = next[1];
      v7 = next[3];
      v19 = next[2];
      v20 = v7;
      v18 = v6;
      v8 = *var0;
      v9 = (*var0)[1];
      if (v9 >= (*var0)[2])
      {
        v10 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
      }

      else
      {
        *(v9 + 64) = 0;
        *(v9 + 32) = 0u;
        *(v9 + 48) = 0u;
        v10 = v9 + 72;
        *v9 = 0u;
        *(v9 + 16) = 0u;
      }

      v8[1] = v10;
      *(v10 - 72) = 0;
      v11 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v20 error:0, v16, v17];
      v12 = [v11 newSpecializedFunctionWithHash:&v18];
      v13 = v12;
      v16 = 0u;
      v17 = 0u;
      if (v12)
      {
        objc_msgSend_baseFunctionHash(v12, v16, v17, v18, v19);
      }

      v14 = [v11 newFunctionWithHash:&v16];
      *(v10 - 48) = [v14 bitcodeDataInternal];
      *(v10 - 40) = [v13 bitcodeDataInternal];
      specializationAirScript = [v13 specializationAirScript];
      *(v10 - 56) = specializationAirScript;
      dispatch_retain(specializationAirScript);

      next = *next;
    }

    while (next);
  }
}

- (void)materializeLinkedBitcodes:(void *)bitcodes hashList:(void *)list
{
  v6 = *bitcodes;
  if (*(bitcodes + 1) - *bitcodes >= 9uLL)
  {
    v15[11] = v4;
    v15[12] = v5;
    v10 = 1;
    do
    {
      v11 = *(v6 + 8 * v10);
      if (*(v11 + 32))
      {
        break;
      }

      v12 = *(v11 + 24);
      std::vector<MTLUINT256_t>::push_back[abi:ne200100](list, v12);
      if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, v12))
      {
        v13 = [(_MTLBinaryArchive *)self materializeBitCode:bitcodes atIndex:v10];
        ptr = self->_uniqueBitcodeList.__ptr_;
        v15[0] = v12;
        std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(ptr, v12, &std::piecewise_construct, v15)[6] = v13;
      }

      v10 = (v10 + 1);
      v6 = *bitcodes;
    }

    while (v10 < (*(bitcodes + 1) - *bitcodes) >> 3);
  }
}

- (void)materializeAirNTAllForSlice:(const MTLLoaderSliceIdentifier *)slice entryList:(shared_ptr<std::vector<machOEntry>>)list
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(list.var0 + 1);
  v40 = *list.var0;
  v41 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(_MTLBinaryArchive *)self materializeAirNTSpecializedFunctions:&v40, list.var0];
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v7 = v31[1];
  v38 = *v31;
  v39 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(_MTLBinaryArchive *)self materializeAirNTStitchedFunctions:&v38];
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  p_airntObjectList = &self->_airntObjectList;
  begin = self->_airntObjectList.__begin_;
  if (self->_airntObjectList.__end_ != begin)
  {
    v10 = 0;
    do
    {
      v11 = *v31;
      v12 = (*v31)[1];
      if (v12 >= (*v31)[2])
      {
        v13 = std::vector<machOEntry>::__emplace_back_slow_path<>(*v31);
      }

      else
      {
        *(v12 + 64) = 0;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        v13 = v12 + 72;
        *v12 = 0u;
        *(v12 + 16) = 0u;
      }

      v11[1] = v13;
      *(v13 - 72) = slice->var1 | (slice->var0 << 32);
      *(v13 - 56) = [(_MTLBinaryArchive *)self materializeAirScript:p_airntObjectList->__begin_[v10]];
      *(v13 - 48) = [(_MTLBinaryArchive *)self materializeBitCode:p_airntObjectList->__begin_[v10] atIndex:0];
      [(_MTLBinaryArchive *)self materializeLinkedBitcodes:p_airntObjectList->__begin_[v10] hashList:v13 - 24];
      *(v13 - 32) = [(_MTLBinaryArchive *)self materializeReflectionBlock:p_airntObjectList->__begin_[v10]];
      v14 = p_airntObjectList->__begin_[v10];
      *(v13 - 40) = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(v14 + 7) + *(v14 + 5), *(v14 + 6));
      v42.var0.var0 = *(p_airntObjectList->__begin_[v10] + 7) + *(p_airntObjectList->__begin_[v10] + 5);
      v15 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_airntBinaryList.__table_.__bucket_list_.__ptr_, &v42.var0.var0);
      v16 = v15;
      if (v15)
      {
        v17 = v15[3];
        v18 = v15[4] - v17;
        if (v18)
        {
          v19 = 0x2E8BA2E8BA2E8BA3 * (v18 >> 3);
          for (i = v19 - 1; ; --i)
          {
            if (v19 <= i)
            {
              std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            MTLHashKey::MTLHashKey(&v42, (v17 + 88 * i));
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v21 = *p_airntObjectList->__begin_[v10];
            if ((*(p_airntObjectList->__begin_[v10] + 1) - v21) < 9)
            {
              v26 = 0;
              v25 = 0;
            }

            else
            {
              v22 = 2;
              v23 = 1;
              do
              {
                v24 = *(v21 + 8 * v23);
                if (*(v24 + 32))
                {
                  break;
                }

                std::vector<MTLUINT256_t>::push_back[abi:ne200100](&v35, *(v24 + 24));
                v23 = v22;
                v21 = *p_airntObjectList->__begin_[v10];
                ++v22;
              }

              while (v23 < (*(p_airntObjectList->__begin_[v10] + 1) - v21) >> 3);
              v25 = v35;
              v26 = v36;
            }

            v27 = *(*v21 + 24);
            v33 = 0;
            v34 = 0;
            __p = 0;
            std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&__p, v25, v26, (v26 - v25) >> 5);
            v29 = MTLHashKey::areBitcodesEqual(&v42, v27, &__p, v28);
            if (__p)
            {
              v33 = __p;
              operator delete(__p);
            }

            if (v29)
            {
              operator new();
            }

            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }

            MTLHashKey::~MTLHashKey(&v42);
            if (!i)
            {
              break;
            }

            v17 = v16[3];
            v19 = 0x2E8BA2E8BA2E8BA3 * ((v16[4] - v17) >> 3);
          }
        }
      }

      begin = p_airntObjectList->__begin_;
      v30 = p_airntObjectList->__begin_[v10];
      if (v30)
      {
        MTLAirNTObject::~MTLAirNTObject(v30);
        MEMORY[0x1865FF210]();
        begin = p_airntObjectList->__begin_;
      }

      ++v10;
    }

    while (v10 < self->_airntObjectList.__end_ - begin);
  }

  self->_airntObjectList.__end_ = begin;
  self->_airntFromDescriptorFunctionList.__end_ = self->_airntFromDescriptorFunctionList.__begin_;
}

- (BOOL)airntSerializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (error)
  {
    *error = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v17[5] = 0;
  if (![l path] || !objc_msgSend(lCopy, "filePathURL"))
  {
    if (error)
    {
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
LABEL_14:
      LOBYTE(lCopy) = 0;
      *error = v12;
      goto LABEL_24;
    }

LABEL_17:
    LOBYTE(lCopy) = 0;
    goto LABEL_24;
  }

  if (stat([objc_msgSend(objc_msgSend(lCopy "URLByDeletingLastPathComponent")], &v16) == -1)
  {
    if (error)
    {
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_serializing);
  serializeQueue = self->_serializeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke;
  block[3] = &unk_1E6EEAB18;
  block[4] = self;
  block[5] = lCopy;
  block[6] = v17;
  block[7] = &v24;
  block[8] = &v18;
  dispatch_sync(serializeQueue, block);
  atomic_store(0, &self->_serializing);
  v10 = v19[5];
  if (v10)
  {
    if (error)
    {
      *error = v10;
    }

    if ((v25[3] & 1) == 0 && *error)
    {
      v11 = *error;
    }
  }

  else
  {
    LOBYTE(lCopy) = *(v25 + 24);
  }

  objc_autoreleasePoolPop(v8);
  if (v10)
  {
    if (error && *error)
    {
      v13 = *error;
    }

    LOBYTE(lCopy) = *(v25 + 24);
  }

LABEL_24:
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return lCopy & 1;
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  if (self->_isLegacy)
  {
    return [(_MTLBinaryArchive *)self legacySerializeToURL:l options:options error:error];
  }

  else
  {
    return [(_MTLBinaryArchive *)self airntSerializeToURL:l options:options error:error];
  }
}

- (void)setMTLLinkedFunctions:(id)functions LFS:(const LinkedFunctions *)s obj:(void *)obj destinationArchive:(id)archive error:(id *)error
{
  if (s)
  {
    memset(v105, 0, sizeof(v105));
    v106 = 1065353216;
    memset(v103, 0, sizeof(v103));
    v104 = 1065353216;
    memset(v101, 0, sizeof(v101));
    v102 = 1065353216;
    v7 = *s->var0;
    v8 = -v7;
    v9 = &s[-v7];
    if (*v9->var0 >= 5u)
    {
      v10 = *v9[4].var0;
      if (v10)
      {
        v11 = &s[v10 + *s[v10].var0];
        v12 = *v11->var0;
        if (v12)
        {
          sCopy = s;
          v95 = &v11[4 * v12];
          do
          {
            v13 = *v11[4].var0;
            v11 += 4;
            flatbuffers::String::str(&__p, &v11[v13]);
            v14 = v100;
            v15 = __p;
            if (v100 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v100 >= 0)
            {
              v17 = v100;
            }

            else
            {
              v17 = v99;
            }

            if (v17 >= 18)
            {
              v18 = &p_p[v17];
              v19 = v17;
              v20 = p_p;
              do
              {
                v21 = memchr(v20, 95, v19 - 17);
                if (!v21)
                {
                  break;
                }

                if (*v21 == 0x65725F7269615F5FLL && *(v21 + 1) == 0x5F5F6465766C6F73 && *(v21 + 8) == 14906)
                {
                  if (v21 == p_p)
                  {
                    v24 = 0;
                    v25 = p_p - 1;
                    while (v17 != v24)
                    {
                      v26 = v25[v17];
                      ++v24;
                      --v25;
                      if (v26 == 95)
                      {
                        v27 = v17 - v24 - 18;
                        v28 = &__p;
                        if (v14 < 0)
                        {
                          v28 = v15;
                        }

                        v29 = v28 + 18;
                        if (v17 - 18 < v27)
                        {
                          v27 = v17 - 18;
                        }

                        if (v17 + 1 != v24)
                        {
                          p_p = v29;
                          v17 = v27;
                        }

                        break;
                      }
                    }

                    MEMORY[0x1865FEFD0](&__p, p_p, v17);
                  }

                  break;
                }

                v20 = v21 + 1;
                v19 = v18 - v20;
              }

              while (v18 - v20 >= 18);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v105, &__p, &__p);
            if (v100 < 0)
            {
              operator delete(__p);
            }
          }

          while (v11 != v95);
          s = sCopy;
          v8 = -*sCopy->var0;
        }
      }
    }

    if (*s[v8].var0 >= 7u)
    {
      if (*s[v8 + 6].var0)
      {
        v30 = &s[*s[v8 + 6].var0];
        v31 = &v30[*v30->var0];
        v32 = *v31->var0;
        if (v32)
        {
          sCopy2 = s;
          var0 = v31[4 * v32].var0;
          do
          {
            v33 = *v31[4].var0;
            v31 += 4;
            flatbuffers::String::str(&__p, &v31[v33]);
            v34 = v100;
            v35 = __p;
            if (v100 >= 0)
            {
              v36 = &__p;
            }

            else
            {
              v36 = __p;
            }

            if (v100 >= 0)
            {
              v37 = v100;
            }

            else
            {
              v37 = v99;
            }

            if (v37 >= 18)
            {
              v38 = &v36[v37];
              v39 = v37;
              v40 = v36;
              do
              {
                v41 = memchr(v40, 95, v39 - 17);
                if (!v41)
                {
                  break;
                }

                if (*v41 == 0x65725F7269615F5FLL && *(v41 + 1) == 0x5F5F6465766C6F73 && *(v41 + 8) == 14906)
                {
                  if (v41 == v36)
                  {
                    v44 = 0;
                    v45 = v36 - 1;
                    while (v37 != v44)
                    {
                      v46 = v45[v37];
                      ++v44;
                      --v45;
                      if (v46 == 95)
                      {
                        v47 = v37 - v44 - 18;
                        v48 = &__p;
                        if (v34 < 0)
                        {
                          v48 = v35;
                        }

                        v49 = v48 + 18;
                        if (v37 - 18 < v47)
                        {
                          v47 = v37 - 18;
                        }

                        if (v37 + 1 != v44)
                        {
                          v36 = v49;
                          v37 = v47;
                        }

                        break;
                      }
                    }

                    MEMORY[0x1865FEFD0](&__p, v36, v37);
                  }

                  break;
                }

                v40 = v41 + 1;
                v39 = v38 - v40;
              }

              while (v38 - v40 >= 18);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v103, &__p, &__p);
            if (v100 < 0)
            {
              operator delete(__p);
            }
          }

          while (v31 != var0);
          s = sCopy2;
          v8 = -*sCopy2->var0;
        }
      }
    }

    v50 = &s[v8];
    if (*v50->var0 >= 9u)
    {
      v51 = *v50[8].var0;
      if (v51)
      {
        v52 = &s[v51 + *s[v51].var0];
        v53 = *v52->var0;
        if (v53)
        {
          v87 = &v52[4 * v53];
          do
          {
            v93 = v52 + 4;
            v54 = &v52[*v52[4].var0 + 4];
            v55 = &v54[-*v54->var0];
            v56 = *v55->var0;
            v97 = *v54[*v55[4].var0 + *v54[*v55[4].var0].var0].var0;
            if (v56 >= 7)
            {
              v57 = *v55[6].var0;
              if (v57)
              {
                v58 = &v54[v57 + *v54[v57].var0];
                if (*v58->var0)
                {
                  flatbuffers::String::str(&__p, &v58[*v58[4].var0 + 4]);
                  v59 = v100;
                  v60 = __p;
                  if (v100 >= 0)
                  {
                    v61 = &__p;
                  }

                  else
                  {
                    v61 = __p;
                  }

                  if (v100 >= 0)
                  {
                    v62 = v100;
                  }

                  else
                  {
                    v62 = v99;
                  }

                  if (v62 >= 18)
                  {
                    v63 = &v61[v62];
                    v64 = v62;
                    v65 = v61;
                    while (1)
                    {
                      v66 = memchr(v65, 95, v64 - 17);
                      if (!v66)
                      {
                        goto LABEL_112;
                      }

                      v67 = *v66 == 0x65725F7269615F5FLL && *(v66 + 1) == 0x5F5F6465766C6F73;
                      if (v67 && *(v66 + 8) == 14906)
                      {
                        break;
                      }

                      v65 = v66 + 1;
                      v64 = v63 - v65;
                      if (v63 - v65 < 18)
                      {
                        goto LABEL_112;
                      }
                    }

                    if (v66 == v61)
                    {
                      v69 = 0;
                      v70 = v61 - 1;
                      do
                      {
                        if (v62 == v69)
                        {
                          goto LABEL_111;
                        }

                        v71 = v70[v62];
                        ++v69;
                        --v70;
                      }

                      while (v71 != 95);
                      v72 = v62 - v69 - 18;
                      v73 = &__p;
                      if (v59 < 0)
                      {
                        v73 = v60;
                      }

                      v74 = v73 + 18;
                      if (v62 - 18 < v72)
                      {
                        v72 = v62 - 18;
                      }

                      if (v62 + 1 != v69)
                      {
                        v61 = v74;
                        v62 = v72;
                      }

LABEL_111:
                      MEMORY[0x1865FEFD0](&__p, v61, v62);
                    }
                  }

LABEL_112:
                  std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__emplace_multi<std::string&,std::string_view&>(v101);
                }
              }
            }

            v52 = v93;
          }

          while (v93 != v87);
        }
      }
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v78 = *obj;
    if (*(obj + 1) - *obj >= 9uLL)
    {
      v79 = 1;
      do
      {
        if (*(*(v78 + 8 * v79) + 32))
        {
          break;
        }

        v80 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:obj index:v79 destinationArchive:archive error:error];
        std::string::basic_string[abi:ne200100]<0>(&__p, [objc_msgSend(v80 "name")]);
        if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v105, &__p))
        {
          [v75 addObject:v80];
        }

        if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v103, &__p))
        {
          [v76 addObject:v80];
        }

        v81 = std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__equal_range_multi<std::string>(v101, &__p);
        v83 = v82;
        while (v81 != v83)
        {
          v84 = v81 + 2;
          if (*(v81 + 39) < 0)
          {
            v84 = *v84;
          }

          v85 = [MEMORY[0x1E696AEC0] stringWithCString:v84 encoding:4];
          if (![v77 objectForKeyedSubscript:v85])
          {
            [v77 setObject:objc_alloc_init(MEMORY[0x1E695DF70]) forKeyedSubscript:v85];
          }

          [objc_msgSend(v77 objectForKeyedSubscript:{v85), "addObject:", v80}];
          v81 = *v81;
        }

        if (v100 < 0)
        {
          operator delete(__p);
        }

        ++v79;
        v78 = *obj;
      }

      while (v79 < (*(obj + 1) - *obj) >> 3);
    }

    [functions setFunctions:v75];
    [functions setPrivateFunctions:v76];
    [functions setGroups:v77];
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v101);
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v103);
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v105);
  }
}

- (id)newComputePipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error
{
  v11 = objc_opt_new();
  v12 = Air::PipelineScript::pipeline_as_compute(script);
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - *v15);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = *(v15 + v17);
  }

  else
  {
    v18 = 1;
  }

  [v11 setMaxCallStackDepth:v18];
  v19 = (v15 - *v15);
  if (*v19 >= 7u && (v20 = v19[3]) != 0)
  {
    v21 = *(v15 + v20);
  }

  else
  {
    v21 = 0;
  }

  [v11 setMaxTotalThreadsPerThreadgroup:v21];
  v22 = (v15 - *v15);
  if (*v22 < 0x19u)
  {
    goto LABEL_18;
  }

  v23 = v22[12];
  if (!v23)
  {
LABEL_19:
    v26 = 0;
    v27 = 0;
    goto LABEL_20;
  }

  v24 = v15 + v23 + *(v15 + v23);
  v25 = *v24;
  if (!*v24)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v23 = *(v24 + 4);
  if (v25 == 1)
  {
    v26 = 1;
LABEL_102:
    v27 = 1;
    goto LABEL_20;
  }

  v26 = *(v24 + 12);
  if (v25 < 3)
  {
    goto LABEL_102;
  }

  v27 = *(v24 + 20);
LABEL_20:
  v97[0] = v23;
  v97[1] = v26;
  v97[2] = v27;
  [v11 setRequiredThreadsPerThreadgroup:v97];
  v28 = (v15 - *v15);
  v30 = *v28 >= 0x15u && (v29 = v28[10]) != 0 && *(v15 + v29) != 0;
  [v11 setNeedsCustomBorderColorSamplers:v30];
  v31 = (v15 - *v15);
  v33 = *v31 >= 0x11u && (v32 = v31[8]) != 0 && *(v15 + v32) != 0;
  [v11 setSupportAddingBinaryFunctions:v33];
  v34 = (v15 - *v15);
  v36 = *v34 >= 0xFu && (v35 = v34[7]) != 0 && *(v15 + v35) != 0;
  [v11 setSupportIndirectCommandBuffers:v36];
  v37 = (v15 - *v15);
  if (*v37 >= 0x13u && (v38 = v37[9]) != 0)
  {
    v39 = *(v15 + v38);
  }

  else
  {
    v39 = 0;
  }

  [v11 setTextureWriteRoundingMode:v39];
  v40 = (v15 - *v15);
  v42 = *v40 >= 5u && (v41 = v40[2]) != 0 && *(v15 + v41) != 0;
  [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:v42];
  v43 = *v15;
  v44 = -v43;
  v45 = (v15 - v43);
  if (*v45 >= 0xDu)
  {
    v46 = v45[6];
    if (v46)
    {
      v47 = (v15 + v46 + *(v15 + v46));
      v48 = v47 + 1;
      if (*v47)
      {
        v49 = 0;
        do
        {
          v50 = *v48;
          v51 = v50 - *(v48 + v50);
          if (*(v48 + v51) >= 5u && (v52 = *(v48 + v51 + 4)) != 0)
          {
            v53 = *(v48 + v50 + v52);
          }

          else
          {
            v53 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "buffers")];
          ++v48;
        }

        while (v49 < *v47);
      }

      v44 = -*v15;
    }
  }

  v54 = (v15 + v44);
  if (*v54 >= 0xBu && (v55 = v54[5]) != 0)
  {
    v56 = (v15 + v55 + *(v15 + v55));
  }

  else
  {
    v56 = 0;
  }

  linkedFunctions = [v11 linkedFunctions];
  v58 = (v15 - *v15);
  if (*v58 >= 0x17u && (v59 = v58[11]) != 0)
  {
    v60 = v15 + v59 + *(v15 + v59);
  }

  else
  {
    v60 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:linkedFunctions LFS:v60 obj:obj destinationArchive:archive error:error];
  if (v56)
  {
    v61 = (v56 - *v56);
    v62 = *v61;
    if (v62 >= 5)
    {
      if (v61[2])
      {
        v63 = (v56 + v61[2] + *(v56 + v61[2]));
      }

      else
      {
        v63 = 0;
      }

      if (v62 >= 7 && (v64 = v61[3]) != 0)
      {
        v65 = (v56 + v64 + *(v56 + v64));
        if (!v63)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v65 = 0;
        if (!v63)
        {
LABEL_83:
          if (v65 && *v65)
          {
            v81 = 0;
            v82 = 0;
            do
            {
              v83 = &v65[v81];
              v84 = v65[v81 + 1];
              v85 = &v65[v81] + v84 - *(&v65[v81 + 1] + v84);
              if (*(v85 + 2) >= 5u && (v86 = *(v85 + 4)) != 0)
              {
                v87 = *(&v65[v81 + 1] + v84 + v86);
              }

              else
              {
                v87 = 1;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              v88 = v83[1];
              v89 = v88 - *(v83 + v88 + 4);
              if (*(v83 + v89 + 4) >= 7u && (v90 = *(&v65[v81 + 2] + v89 + 2)) != 0)
              {
                v91 = *(&v65[v81 + 1] + v88 + v90);
              }

              else
              {
                v91 = 1;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              v92 = v83[1];
              v93 = &v65[v81] + v92 - *(&v65[v81 + 1] + v92);
              if (*(v93 + 2) >= 9u && (v94 = *(v93 + 6)) != 0)
              {
                v95 = *(&v65[v81 + 1] + v92 + v94);
              }

              else
              {
                v95 = 0;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              ++v81;
            }

            while (v82 < *v65);
          }

          return v11;
        }
      }

      if (*v63)
      {
        v66 = 0;
        v67 = 0;
        do
        {
          v68 = &v63[v66];
          v69 = v63[v66 + 1];
          v70 = &v63[v66] + v69 - *(&v63[v66 + 1] + v69);
          if (*(v70 + 2) >= 9u && (v71 = *(v70 + 6)) != 0)
          {
            v72 = *(&v63[v66 + 1] + v69 + v71);
          }

          else
          {
            v72 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          v73 = v68[1];
          v74 = v73 - *(v68 + v73 + 4);
          if (*(v68 + v74 + 4) >= 7u && (v75 = *(&v63[v66 + 2] + v74 + 2)) != 0)
          {
            v76 = *(&v63[v66 + 1] + v73 + v75);
          }

          else
          {
            v76 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          v77 = v68[1];
          v78 = &v63[v66] + v77 - *(&v63[v66 + 1] + v77);
          if (*(v78 + 2) >= 5u && (v79 = *(v78 + 4)) != 0)
          {
            v80 = *(&v63[v66 + 1] + v77 + v79);
          }

          else
          {
            v80 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          ++v66;
        }

        while (v67 < *v63);
      }

      goto LABEL_83;
    }
  }

  return v11;
}

- (id)newRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error
{
  v8 = objc_opt_new();
  v9 = Air::PipelineScript::pipeline_as_render(script);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 - *v12);
  v15 = *v13 < 9u || (v14 = v13[4]) == 0 || *(v12 + v14) != 0;
  [v8 setRasterizationEnabled:v15];
  v16 = (v12 - *v12);
  if (*v16 >= 0x27u && (v17 = v16[19]) != 0)
  {
    v18 = *(v12 + v17);
  }

  else
  {
    v18 = 255;
  }

  [v8 setClipDistanceEnableMask:v18];
  v19 = (v12 - *v12);
  if (*v19 >= 0x29u && (v20 = v19[20]) != 0)
  {
    v21 = *(v12 + v20);
  }

  else
  {
    v21 = 0;
  }

  [v8 setVertexDepthCompareClampMask:v21];
  v22 = (v12 - *v12);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = *(v12 + v23);
  }

  else
  {
    v24 = 1;
  }

  [v8 setMaxVertexCallStackDepth:v24];
  v25 = (v12 - *v12);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = *(v12 + v26);
  }

  else
  {
    v27 = 16;
  }

  [v8 setMaxTessellationFactor:v27];
  v28 = (v12 - *v12);
  if (*v28 >= 0x1Bu && (v29 = v28[13]) != 0)
  {
    v30 = *(v12 + v29);
  }

  else
  {
    v30 = 1;
  }

  [v8 setMaxVertexAmplificationCount:v30];
  v31 = (v12 - *v12);
  if (*v31 >= 0x1Du && (v32 = v31[14]) != 0)
  {
    v33 = *(v12 + v32);
  }

  else
  {
    v33 = 0;
  }

  [v8 setVertexAmplificationMode:v33];
  v34 = (v12 - *v12);
  v36 = *v34 >= 0x2Bu && (v35 = v34[21]) != 0 && *(v12 + v35) != 0;
  [v8 setNeedsCustomBorderColorSamplers:v36];
  v37 = (v12 - *v12);
  v39 = *v37 >= 0x23u && (v38 = v37[17]) != 0 && *(v12 + v38) != 0;
  [v8 setSupportAddingVertexBinaryFunctions:v39];
  v40 = (v12 - *v12);
  v42 = *v40 >= 0x21u && (v41 = v40[16]) != 0 && *(v12 + v41) != 0;
  [v8 setSupportIndirectCommandBuffers:v42];
  v43 = (v12 - *v12);
  v45 = *v43 >= 0xFu && (v44 = v43[7]) != 0 && *(v12 + v44) != 0;
  [v8 setTessellationFactorScaleEnabled:v45];
  v46 = (v12 - *v12);
  if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
  {
    v48 = *(v12 + v47);
  }

  else
  {
    v48 = 0;
  }

  [v8 setTessellationControlPointIndexType:v48];
  v49 = (v12 - *v12);
  if (*v49 >= 0x11u && (v50 = v49[8]) != 0)
  {
    v51 = *(v12 + v50);
  }

  else
  {
    v51 = 0;
  }

  [v8 setTessellationFactorFormat:v51];
  v52 = (v12 - *v12);
  if (*v52 >= 0x19u && (v53 = v52[12]) != 0)
  {
    v54 = *(v12 + v53);
  }

  else
  {
    v54 = 0;
  }

  [v8 setTessellationPartitionMode:v54];
  v55 = (v12 - *v12);
  if (*v55 >= 0x15u && (v56 = v55[10]) != 0)
  {
    v57 = *(v12 + v56);
  }

  else
  {
    v57 = 0;
  }

  [v8 setTessellationFactorStepFunction:v57];
  v58 = (v12 - *v12);
  if (*v58 >= 0x17u && (v59 = v58[11]) != 0)
  {
    v60 = *(v12 + v59);
  }

  else
  {
    v60 = 0;
  }

  [v8 setTessellationOutputWindingOrder:v60];
  v61 = (v12 - *v12);
  if (*v61 >= 0xBu && (v62 = v61[5]) != 0)
  {
    v63 = *(v12 + v62);
  }

  else
  {
    v63 = 0;
  }

  [v8 setInputPrimitiveTopology:v63];
  v64 = (v12 - *v12);
  if (*v64 >= 0x25u && (v65 = v64[18]) != 0)
  {
    v66 = *(v12 + v65);
  }

  else
  {
    v66 = 0;
  }

  [v8 setTextureWriteRoundingMode:v66];
  v67 = *v12;
  v68 = -v67;
  v69 = (v12 - v67);
  if (*v69 >= 0x1Fu)
  {
    v70 = v69[15];
    if (v70)
    {
      v71 = (v12 + v70 + *(v12 + v70));
      v72 = v71 + 1;
      if (*v71)
      {
        v73 = 0;
        do
        {
          v74 = *v72;
          v75 = v74 - *(v72 + v74);
          if (*(v72 + v75) >= 5u && (v76 = *(v72 + v75 + 4)) != 0)
          {
            v77 = *(v72 + v74 + v76);
          }

          else
          {
            v77 = 0;
          }

          [objc_msgSend(objc_msgSend(v8 "vertexBuffers")];
          ++v72;
        }

        while (v73 < *v71);
      }

      v68 = -*v12;
    }
  }

  v78 = (v12 + v68);
  if (*v78 >= 7u)
  {
    v79 = v78[3];
    if (v79)
    {
      v80 = (v12 + v79 + *(v12 + v79));
      v81 = (v80 - *v80);
      v82 = *v81;
      if (v82 > 4)
      {
        if (v81[2])
        {
          v83 = (v80 + v81[2] + *(v80 + v81[2]));
        }

        else
        {
          v83 = 0;
        }

        if (v82 >= 7 && (v84 = v81[3]) != 0)
        {
          v85 = (v80 + v84 + *(v80 + v84));
        }

        else
        {
          v85 = 0;
        }

        if (v83 && *v83)
        {
          v86 = 0;
          v87 = 0;
          do
          {
            v88 = &v83[v86];
            v89 = v83[v86 + 1];
            v90 = &v83[v86] + v89 - *(&v83[v86 + 1] + v89);
            if (*(v90 + 2) >= 9u && (v91 = *(v90 + 6)) != 0)
            {
              v92 = *(&v83[v86 + 1] + v89 + v91);
            }

            else
            {
              v92 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v93 = v88[1];
            v94 = v93 - *(v88 + v93 + 4);
            if (*(v88 + v94 + 4) >= 7u && (v95 = *(&v83[v86 + 2] + v94 + 2)) != 0)
            {
              v96 = *(&v83[v86 + 1] + v93 + v95);
            }

            else
            {
              v96 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v97 = v88[1];
            v98 = &v83[v86] + v97 - *(&v83[v86 + 1] + v97);
            if (*(v98 + 2) >= 5u && (v99 = *(v98 + 4)) != 0)
            {
              v100 = *(&v83[v86 + 1] + v97 + v99);
            }

            else
            {
              v100 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            ++v86;
          }

          while (v87 < *v83);
        }

        if (v85 && *v85)
        {
          v101 = 0;
          v102 = 0;
          do
          {
            v103 = &v85[v101];
            v104 = v85[v101 + 1];
            v105 = &v85[v101] + v104 - *(&v85[v101 + 1] + v104);
            if (*(v105 + 2) >= 5u && (v106 = *(v105 + 4)) != 0)
            {
              v107 = *(&v85[v101 + 1] + v104 + v106);
            }

            else
            {
              v107 = 1;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v108 = v103[1];
            v109 = v108 - *(v103 + v108 + 4);
            if (*(v103 + v109 + 4) >= 7u && (v110 = *(&v85[v101 + 2] + v109 + 2)) != 0)
            {
              v111 = *(&v85[v101 + 1] + v108 + v110);
            }

            else
            {
              v111 = 1;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v112 = v103[1];
            v113 = &v85[v101] + v112 - *(&v85[v101 + 1] + v112);
            if (*(v113 + 2) >= 9u && (v114 = *(v113 + 6)) != 0)
            {
              v115 = *(&v85[v101 + 1] + v112 + v114);
            }

            else
            {
              v115 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            ++v101;
          }

          while (v102 < *v85);
        }
      }
    }
  }

  vertexLinkedFunctions = [v8 vertexLinkedFunctions];
  v117 = (v12 - *v12);
  if (*v117 >= 0x2Du && (v118 = v117[22]) != 0)
  {
    v119 = v12 + v118 + *(v12 + v118);
  }

  else
  {
    v119 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:vertexLinkedFunctions LFS:v119 obj:obj destinationArchive:archive error:error];
  v120 = Air::PipelineScript::pipeline_as_render(script);
  v121 = (v120 - *v120);
  if (*v121 >= 0xBu && (v122 = v121[5]) != 0)
  {
    v123 = (v120 + v122 + *(v120 + v122));
  }

  else
  {
    v123 = 0;
  }

  v124 = (v123 - *v123);
  v126 = *v124 >= 0x29u && (v125 = v124[20]) != 0 && *(v123 + v125) != 0;
  [v8 setAlphaTestEnabled:v126];
  v127 = (v123 - *v123);
  if (*v127 >= 0x2Bu && (v128 = v127[21]) != 0)
  {
    v129 = *(v123 + v128);
  }

  else
  {
    v129 = 0;
  }

  [v8 setAlphaTestFunction:v129];
  v130 = (v123 - *v123);
  if (*v130 >= 9u && (v131 = v130[4]) != 0)
  {
    v132 = *(v123 + v131);
  }

  else
  {
    v132 = 0;
  }

  [v8 setAlphaToCoverageStateSPI:v132];
  v133 = (v123 - *v123);
  if (*v133 >= 0xBu && (v134 = v133[5]) != 0)
  {
    v135 = *(v123 + v134);
  }

  else
  {
    v135 = 0;
  }

  [v8 setAlphaToOneStateSPI:v135];
  v136 = (v123 - *v123);
  if (*v136 >= 0x39u && (v137 = v136[28]) != 0)
  {
    v138 = *(v123 + v137);
  }

  else
  {
    v138 = 0;
  }

  [v8 setColorAttachmentMappingState:v138];
  v139 = (v123 - *v123);
  if (*v139 >= 0xFu && (v140 = v139[7]) != 0)
  {
    v141 = *(v123 + v140);
  }

  else
  {
    v141 = 0;
  }

  [v8 setColorSampleCount:v141];
  v142 = (v123 - *v123);
  if (*v142 >= 0x19u && (v143 = v142[12]) != 0)
  {
    v144 = *(v123 + v143);
  }

  else
  {
    v144 = 0;
  }

  [v8 setDepthAttachmentPixelFormat:v144];
  v145 = (v123 - *v123);
  if (*v145 >= 0x35u && (v146 = v145[26]) != 0)
  {
    v147 = *(v123 + v146);
  }

  else
  {
    v147 = 0;
  }

  [v8 setVertexDepthCompareClampMask:v147];
  v148 = (v123 - *v123);
  v150 = *v148 >= 0x2Fu && (v149 = v148[23]) != 0 && *(v123 + v149) != 0;
  [v8 setDepthStencilWriteDisabled:v150];
  v151 = (v123 - *v123);
  if (*v151 >= 0x27u && (v152 = v151[19]) != 0)
  {
    v153 = *(v123 + v152);
  }

  else
  {
    v153 = 0;
  }

  [v8 setLogicOperation:v153];
  v154 = (v123 - *v123);
  v156 = *v154 >= 0x25u && (v155 = v154[18]) != 0 && *(v123 + v155) != 0;
  [v8 setLogicOperationEnabled:v156];
  v157 = (v123 - *v123);
  if (*v157 >= 5u && (v158 = v157[2]) != 0)
  {
    v159 = *(v123 + v158);
  }

  else
  {
    v159 = 1;
  }

  [v8 setMaxFragmentCallStackDepth:v159];
  v160 = (v123 - *v123);
  v162 = *v160 >= 0x33u && (v161 = v160[25]) != 0 && *(v123 + v161) != 0;
  [v8 setNeedsCustomBorderColorSamplers:v162];
  v163 = (v123 - *v123);
  v165 = *v163 >= 0x31u && (v164 = v163[24]) != 0 && *(v123 + v164) != 0;
  [v8 setOpenGLModeEnabled:v165];
  v166 = (v123 - *v123);
  v168 = *v166 >= 0x2Du && (v167 = v166[22]) != 0 && *(v123 + v167) != 0;
  [v8 setPointSmoothEnabled:v168];
  v169 = (v123 - *v123);
  if (*v169 >= 0xDu && (v170 = v169[6]) != 0)
  {
    v171 = *(v123 + v170);
  }

  else
  {
    v171 = 1;
  }

  [v8 setRasterSampleCount:v171];
  v172 = (v123 - *v123);
  LODWORD(v173) = 1.0;
  if (*v172 >= 0x13u)
  {
    v174 = v172[9];
    if (v174)
    {
      LODWORD(v173) = *(v123 + v174);
    }
  }

  [v8 setSampleCoverage:v173];
  v175 = (v123 - *v123);
  v177 = *v175 >= 0x15u && (v176 = v175[10]) != 0 && *(v123 + v176) != 0;
  [v8 setSampleCoverageInvert:v177];
  v178 = (v123 - *v123);
  if (*v178 >= 0x11u && (v179 = v178[8]) != 0)
  {
    v180 = *(v123 + v179);
  }

  else
  {
    v180 = -1;
  }

  [v8 setSampleMask:v180];
  v181 = (v123 - *v123);
  if (*v181 >= 0x1Bu && (v182 = v181[13]) != 0)
  {
    v183 = *(v123 + v182);
  }

  else
  {
    v183 = 0;
  }

  [v8 setStencilAttachmentPixelFormat:v183];
  v184 = (v123 - *v123);
  v186 = *v184 >= 0x21u && (v185 = v184[16]) != 0 && *(v123 + v185) != 0;
  [v8 setSupportAddingFragmentBinaryFunctions:v186];
  v187 = (v123 - *v123);
  v188 = *v187;
  if (v188 >= 0x17)
  {
    if (v187[11])
    {
      v189 = (v123 + v187[11] + *(v123 + v187[11]));
    }

    else
    {
      v189 = 0;
    }

    if (v188 >= 0x1D)
    {
      v190 = v187[14];
      if (v190)
      {
        v191 = (v123 + v190 + *(v123 + v190));
        v192 = v191 + 1;
        if (*v191)
        {
          v193 = 0;
          do
          {
            v194 = *v192;
            v195 = v194 - *(v192 + v194);
            if (*(v192 + v195) >= 5u && (v196 = *(v192 + v195 + 4)) != 0)
            {
              v197 = *(v192 + v194 + v196);
            }

            else
            {
              v197 = 0;
            }

            [objc_msgSend(objc_msgSend(v8 "fragmentBuffers")];
            ++v192;
          }

          while (v193 < *v191);
        }
      }
    }

    if (v189 && *v189)
    {
      v198 = 0;
      v199 = 0;
      do
      {
        v200 = &v189[v198];
        v201 = v189[v198 + 1];
        v202 = &v189[v198] + v201 - *(&v189[v198 + 1] + v201);
        if (*(v202 + 2) >= 0xBu && (v203 = *(v202 + 7)) != 0)
        {
          v204 = *(&v189[v198 + 1] + v201 + v203);
        }

        else
        {
          v204 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v205 = v200[1];
        v206 = v205 - *(v200 + v205 + 4);
        if (*(v200 + v206 + 4) >= 9u && (v207 = *(&v189[v198 + 3] + v206)) != 0)
        {
          v208 = *(&v189[v198 + 1] + v205 + v207);
        }

        else
        {
          v208 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v209 = v200[1];
        v210 = &v189[v198];
        v211 = &v189[v198] + v209 - *(&v189[v198 + 1] + v209);
        if (*(v211 + 2) >= 0xFu && (v212 = *(v211 + 9)) != 0)
        {
          v213 = *(&v189[v198 + 1] + v209 + v212);
        }

        else
        {
          v213 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v214 = v200[1];
        v215 = v214 - *(v210 + v214 + 4);
        if (*(v210 + v215 + 4) >= 0x11u && (v216 = *(&v189[v198 + 5] + v215)) != 0)
        {
          v217 = *(&v189[v198 + 1] + v214 + v216);
        }

        else
        {
          v217 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v218 = v200[1];
        v219 = &v189[v198];
        v220 = &v189[v198] + v218 - *(&v189[v198 + 1] + v218);
        if (*(v220 + 2) >= 5u && (v221 = *(v220 + 4)) != 0)
        {
          v222 = *(&v189[v198 + 1] + v218 + v221);
        }

        else
        {
          v222 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v223 = v200[1];
        v224 = v223 - *(v219 + v223 + 4);
        if (*(v219 + v224 + 4) >= 0x15u && (v225 = *(&v189[v198 + 6] + v224)) != 0)
        {
          v226 = *(&v189[v198 + 1] + v223 + v225);
        }

        else
        {
          v226 = 1;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v227 = v200[1];
        v228 = &v189[v198];
        v229 = &v189[v198] + v227 - *(&v189[v198 + 1] + v227);
        if (*(v229 + 2) >= 0x13u && (v230 = *(v229 + 11)) != 0)
        {
          v231 = *(&v189[v198 + 1] + v227 + v230);
        }

        else
        {
          v231 = 1;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v232 = v200[1];
        v233 = v232 - *(v228 + v232 + 4);
        if (*(v228 + v233 + 4) >= 7u && (v234 = *(&v189[v198 + 2] + v233 + 2)) != 0)
        {
          v235 = *(&v189[v198 + 1] + v232 + v234);
        }

        else
        {
          v235 = 15;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        ++v198;
      }

      while (v199 < *v189);
    }
  }

  fragmentLinkedFunctions = [v8 fragmentLinkedFunctions];
  v237 = (v123 - *v123);
  if (*v237 >= 0x37u && (v238 = v237[27]) != 0)
  {
    v239 = v123 + v238 + *(v123 + v238);
  }

  else
  {
    v239 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:fragmentLinkedFunctions LFS:v239 obj:obj destinationArchive:archive error:error];
  return v8;
}

- (id)newTileRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error
{
  v11 = objc_opt_new();
  v12 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(script);
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - *v15);
  if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
  {
    v18 = *(v15 + v17);
  }

  else
  {
    v18 = 0;
  }

  [v11 setColorSampleCount:v18];
  v19 = (v15 - *v15);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = *(v15 + v20);
  }

  else
  {
    v21 = 1;
  }

  [v11 setMaxCallStackDepth:v21];
  v22 = (v15 - *v15);
  if (*v22 >= 7u && (v23 = v22[3]) != 0)
  {
    v24 = *(v15 + v23);
  }

  else
  {
    v24 = 0;
  }

  [v11 setMaxTotalThreadsPerThreadgroup:v24];
  v25 = (v15 - *v15);
  if (*v25 < 0x19u)
  {
    goto LABEL_22;
  }

  v26 = v25[12];
  if (!v26)
  {
LABEL_23:
    v29 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v27 = v15 + v26 + *(v15 + v26);
  v28 = *v27;
  if (!*v27)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v26 = *(v27 + 4);
  if (v28 == 1)
  {
    v29 = 1;
LABEL_66:
    v30 = 1;
    goto LABEL_24;
  }

  v29 = *(v27 + 12);
  if (v28 < 3)
  {
    goto LABEL_66;
  }

  v30 = *(v27 + 20);
LABEL_24:
  v68[0] = v26;
  v68[1] = v29;
  v68[2] = v30;
  [v11 setRequiredThreadsPerThreadgroup:v68];
  v31 = (v15 - *v15);
  if (*v31 >= 0xBu && (v32 = v31[5]) != 0)
  {
    v33 = *(v15 + v32);
  }

  else
  {
    v33 = 1;
  }

  [v11 setRasterSampleCount:v33];
  v34 = (v15 - *v15);
  v36 = *v34 >= 0x13u && (v35 = v34[9]) != 0 && *(v15 + v35) != 0;
  [v11 setSupportAddingBinaryFunctions:v36];
  v37 = (v15 - *v15);
  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
  {
    v39 = *(v15 + v38);
  }

  else
  {
    v39 = 0;
  }

  [v11 setTextureWriteRoundingMode:v39];
  v40 = (v15 - *v15);
  v42 = *v40 >= 5u && (v41 = v40[2]) != 0 && *(v15 + v41) != 0;
  [v11 setThreadgroupSizeMatchesTileSize:v42];
  linkedFunctions = [v11 linkedFunctions];
  v44 = (v15 - *v15);
  if (*v44 >= 0x17u && (v45 = v44[11]) != 0)
  {
    v46 = v15 + v45 + *(v15 + v45);
  }

  else
  {
    v46 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:linkedFunctions LFS:v46 obj:obj destinationArchive:archive error:error];
  v47 = *v15;
  v48 = -v47;
  v49 = (v15 - v47);
  if (*v49 >= 0x11u)
  {
    v50 = v49[8];
    if (v50)
    {
      v51 = (v15 + v50 + *(v15 + v50));
      v52 = v51 + 1;
      if (*v51)
      {
        v53 = 0;
        do
        {
          v54 = *v52;
          v55 = v54 - *(v52 + v54);
          if (*(v52 + v55) >= 5u && (v56 = *(v52 + v55 + 4)) != 0)
          {
            v57 = *(v52 + v54 + v56);
          }

          else
          {
            v57 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "tileBuffers")];
          ++v52;
        }

        while (v53 < *v51);
      }

      v48 = -*v15;
    }
  }

  v58 = (v15 + v48);
  if (*v58 >= 0xFu)
  {
    v59 = v58[7];
    if (v59)
    {
      v60 = (v15 + v59 + *(v15 + v59));
      v61 = v60 + 1;
      if (*v60)
      {
        v62 = 0;
        do
        {
          v63 = *v61;
          v64 = v63 - *(v61 + v63);
          if (*(v61 + v64) >= 5u && (v65 = *(v61 + v64 + 4)) != 0)
          {
            v66 = *(v61 + v63 + v65);
          }

          else
          {
            v66 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
          ++v61;
        }

        while (v62 < *v60);
      }
    }
  }

  return v11;
}

- (id)newMeshRenderPipelineDescriptorWithScript:(const PipelineScript *)script obj:(void *)obj destinationArchive:(id)archive error:(id *)error
{
  v10 = objc_opt_new();
  v11 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(script);
  v12 = *v11;
  v13 = (v11 - v12);
  v14 = *(v11 - v12);
  if (v14 < 5)
  {
    return v10;
  }

  v15 = v11;
  if (v14 < 7)
  {
    if (!v13[2])
    {
      return v10;
    }

    errorCopy2 = error;
    v17 = 0;
    v16 = 1;
    v253 = 1;
LABEL_15:
    v18 = (v17 - *v17);
    if (*v18 >= 7u && (v19 = v18[3]) != 0)
    {
      v20 = *(v17 + v19);
    }

    else
    {
      v20 = 0;
    }

    [v10 setMaxTotalThreadsPerObjectThreadgroup:{v20, errorCopy2}];
    v21 = (v17 - *v17);
    if (*v21 >= 0x1Fu)
    {
      v22 = v21[15];
      if (!v22)
      {
LABEL_25:
        v25 = 0;
        v26 = 0;
        goto LABEL_26;
      }

      v23 = v17 + v22 + *(v17 + v22);
      v24 = *v23;
      if (*v23)
      {
        v22 = *(v23 + 4);
        if (v24 == 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = *(v23 + 12);
          if (v24 >= 3)
          {
            v26 = *(v23 + 20);
            goto LABEL_26;
          }
        }

        v26 = 1;
LABEL_26:
        v256 = v22;
        v257 = v25;
        v258 = v26;
        [v10 setRequiredThreadsPerObjectThreadgroup:&v256];
        v27 = (v17 - *v17);
        if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
        {
          v29 = *(v17 + v28);
        }

        else
        {
          v29 = 1;
        }

        [v10 setMaxObjectCallStackDepth:v29];
        v30 = (v17 - *v17);
        if (*v30 >= 0xBu && (v31 = v30[5]) != 0)
        {
          v32 = *(v17 + v31);
        }

        else
        {
          v32 = 0;
        }

        [v10 setMaxTotalThreadgroupsPerMeshGrid:v32];
        v33 = (v17 - *v17);
        if (*v33 >= 0xFu && (v34 = v33[7]) != 0)
        {
          v35 = *(v17 + v34);
        }

        else
        {
          v35 = 1;
        }

        [v10 setMaxVertexAmplificationCount:v35];
        v36 = (v17 - *v17);
        v38 = *v36 >= 0x1Bu && (v37 = v36[13]) != 0 && *(v17 + v37) != 0;
        [v10 setNeedsCustomBorderColorSamplers:v38];
        v39 = (v17 - *v17);
        if (*v39 >= 9u && (v40 = v39[4]) != 0)
        {
          v41 = *(v17 + v40);
        }

        else
        {
          v41 = 0;
        }

        [v10 setPayloadMemoryLength:v41];
        v42 = (v17 - *v17);
        v44 = *v42 >= 0x17u && (v43 = v42[11]) != 0 && *(v17 + v43) != 0;
        [v10 setSupportAddingObjectBinaryFunctions:v44];
        v45 = (v17 - *v17);
        v47 = *v45 >= 0x15u && (v46 = v45[10]) != 0 && *(v17 + v46) != 0;
        [v10 setSupportIndirectCommandBuffers:v47];
        v48 = (v17 - *v17);
        if (*v48 >= 0x19u && (v49 = v48[12]) != 0)
        {
          v50 = *(v17 + v49);
        }

        else
        {
          v50 = 0;
        }

        [v10 setTextureWriteRoundingMode:v50];
        v51 = (v17 - *v17);
        v53 = *v51 >= 5u && (v52 = v51[2]) != 0 && *(v17 + v52) != 0;
        [v10 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:v53];
        v54 = (v17 - *v17);
        if (*v54 >= 0x11u && (v55 = v54[8]) != 0)
        {
          v56 = *(v17 + v55);
        }

        else
        {
          v56 = 0;
        }

        [v10 setVertexAmplificationMode:v56];
        v57 = (v17 - *v17);
        if (*v57 >= 0x13u)
        {
          v58 = v57[9];
          if (v58)
          {
            v59 = (v17 + v58 + *(v17 + v58));
            v60 = v59 + 1;
            if (*v59)
            {
              v61 = 0;
              do
              {
                v62 = *v60;
                v63 = v62 - *(v60 + v62);
                if (*(v60 + v63) >= 5u && (v64 = *(v60 + v63 + 4)) != 0)
                {
                  v65 = *(v60 + v62 + v64);
                }

                else
                {
                  v65 = 0;
                }

                [objc_msgSend(objc_msgSend(v10 "objectBuffers")];
                ++v60;
              }

              while (v61 < *v59);
            }
          }
        }

        objectLinkedFunctions = [v10 objectLinkedFunctions];
        v67 = (v17 - *v17);
        if (*v67 >= 0x1Du && (v68 = v67[14]) != 0)
        {
          v69 = v17 + v68 + *(v17 + v68);
        }

        else
        {
          v69 = 0;
        }

        error = v252;
        [(_MTLBinaryArchive *)self setMTLLinkedFunctions:objectLinkedFunctions LFS:v69 obj:obj destinationArchive:archive error:v252];
        if (v16)
        {
          goto LABEL_154;
        }

        v12 = *v15;
LABEL_81:
        v70 = (v15 - v12);
        if (*v70 >= 0xDu && (v71 = v70[6]) != 0)
        {
          v72 = (v15 + v71 + *(v15 + v71));
        }

        else
        {
          v72 = 0;
        }

        v73 = (v72 - *v72);
        if (*v73 >= 7u && (v74 = v73[3]) != 0)
        {
          v75 = *(v72 + v74);
        }

        else
        {
          v75 = 0;
        }

        [v10 setMaxTotalThreadgroupsPerMeshGrid:v75];
        v76 = (v72 - *v72);
        if (*v76 >= 0x21u)
        {
          v77 = v76[16];
          if (!v77)
          {
LABEL_95:
            v80 = 0;
            v81 = 0;
            goto LABEL_96;
          }

          v78 = v72 + v77 + *(v72 + v77);
          v79 = *v78;
          if (*v78)
          {
            v77 = *(v78 + 4);
            if (v79 == 1)
            {
              v80 = 1;
            }

            else
            {
              v80 = *(v78 + 12);
              if (v79 >= 3)
              {
                v81 = *(v78 + 20);
                goto LABEL_96;
              }
            }

            v81 = 1;
LABEL_96:
            v256 = v77;
            v257 = v80;
            v258 = v81;
            [v10 setRequiredThreadsPerMeshThreadgroup:&v256];
            v82 = (v72 - *v72);
            if (*v82 >= 0x1Bu && (v83 = v82[13]) != 0)
            {
              v84 = *(v72 + v83);
            }

            else
            {
              v84 = 255;
            }

            [v10 setClipDistanceEnableMask:v84];
            v85 = (v72 - *v72);
            if (*v85 >= 0xBu && (v86 = v85[5]) != 0)
            {
              v87 = *(v72 + v86);
            }

            else
            {
              v87 = 1;
            }

            [v10 setMaxMeshCallStackDepth:v87];
            v88 = (v72 - *v72);
            if (*v88 >= 0xFu && (v89 = v88[7]) != 0)
            {
              v90 = *(v72 + v89);
            }

            else
            {
              v90 = 1;
            }

            [v10 setMaxVertexAmplificationCount:v90];
            v91 = (v72 - *v72);
            v93 = *v91 >= 0x1Du && (v92 = v91[14]) != 0 && *(v72 + v92) != 0;
            [v10 setNeedsCustomBorderColorSamplers:v93];
            v94 = (v72 - *v72);
            if (*v94 >= 9u && (v95 = v94[4]) != 0)
            {
              v96 = *(v72 + v95);
            }

            else
            {
              v96 = 0;
            }

            [v10 setPayloadMemoryLength:v96];
            v97 = (v72 - *v72);
            v99 = *v97 < 0xDu || (v98 = v97[6]) == 0 || *(v72 + v98) != 0;
            [v10 setRasterizationEnabled:v99];
            v100 = (v72 - *v72);
            v102 = *v100 >= 0x17u && (v101 = v100[11]) != 0 && *(v72 + v101) != 0;
            [v10 setSupportAddingMeshBinaryFunctions:v102];
            v103 = (v72 - *v72);
            v105 = *v103 >= 0x15u && (v104 = v103[10]) != 0 && *(v72 + v104) != 0;
            [v10 setSupportIndirectCommandBuffers:v105];
            v106 = (v72 - *v72);
            if (*v106 >= 0x19u && (v107 = v106[12]) != 0)
            {
              v108 = *(v72 + v107);
            }

            else
            {
              v108 = 0;
            }

            [v10 setTextureWriteRoundingMode:v108];
            v109 = (v72 - *v72);
            v111 = *v109 >= 5u && (v110 = v109[2]) != 0 && *(v72 + v110) != 0;
            [v10 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:v111];
            v112 = (v72 - *v72);
            if (*v112 >= 0x11u && (v113 = v112[8]) != 0)
            {
              v114 = *(v72 + v113);
            }

            else
            {
              v114 = 0;
            }

            [v10 setVertexAmplificationMode:v114];
            v115 = (v72 - *v72);
            if (*v115 >= 0x13u)
            {
              v116 = v115[9];
              if (v116)
              {
                v117 = (v72 + v116 + *(v72 + v116));
                v118 = v117 + 1;
                if (*v117)
                {
                  v119 = 0;
                  do
                  {
                    v120 = *v118;
                    v121 = v120 - *(v118 + v120);
                    if (*(v118 + v121) >= 5u && (v122 = *(v118 + v121 + 4)) != 0)
                    {
                      v123 = *(v118 + v120 + v122);
                    }

                    else
                    {
                      v123 = 0;
                    }

                    [objc_msgSend(objc_msgSend(v10 "meshBuffers")];
                    ++v118;
                  }

                  while (v119 < *v117);
                }
              }
            }

            meshLinkedFunctions = [v10 meshLinkedFunctions];
            v125 = (v72 - *v72);
            if (*v125 >= 0x1Fu && (v126 = v125[15]) != 0)
            {
              v127 = v72 + v126 + *(v72 + v126);
            }

            else
            {
              v127 = 0;
            }

            [(_MTLBinaryArchive *)self setMTLLinkedFunctions:meshLinkedFunctions LFS:v127 obj:obj destinationArchive:archive error:error];
            goto LABEL_154;
          }
        }

        v77 = 0;
        goto LABEL_95;
      }
    }

    v22 = 0;
    goto LABEL_25;
  }

  v16 = v13[3] == 0;
  if (v14 > 8 && v13[4])
  {
    v253 = 0;
    if (!v13[2])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v253 = 1;
  if (v13[2])
  {
LABEL_11:
    errorCopy2 = error;
    if (v14 >= 0xB && v13[5])
    {
      v17 = (v11 + v13[5] + *(v11 + v13[5]));
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_15;
  }

LABEL_6:
  if (v13[3])
  {
    goto LABEL_81;
  }

LABEL_154:
  if ((v253 & 1) == 0)
  {
    v128 = (v15 - *v15);
    if (*v128 >= 0xFu && (v129 = v128[7]) != 0)
    {
      v130 = (v15 + v129 + *(v15 + v129));
    }

    else
    {
      v130 = 0;
    }

    v131 = (v130 - *v130);
    v133 = *v131 >= 0x29u && (v132 = v131[20]) != 0 && *(v130 + v132) != 0;
    [v10 setAlphaTestEnabled:v133];
    v134 = (v130 - *v130);
    if (*v134 >= 0x2Bu && (v135 = v134[21]) != 0)
    {
      v136 = *(v130 + v135);
    }

    else
    {
      v136 = 0;
    }

    [v10 setAlphaTestFunction:v136];
    v137 = (v130 - *v130);
    if (*v137 >= 9u && (v138 = v137[4]) != 0)
    {
      v139 = *(v130 + v138);
    }

    else
    {
      v139 = 0;
    }

    [v10 setAlphaToCoverageStateSPI:v139];
    v140 = (v130 - *v130);
    if (*v140 >= 0xBu && (v141 = v140[5]) != 0)
    {
      v142 = *(v130 + v141);
    }

    else
    {
      v142 = 0;
    }

    [v10 setAlphaToOneStateSPI:v142];
    v143 = (v130 - *v130);
    if (*v143 >= 0x39u && (v144 = v143[28]) != 0)
    {
      v145 = *(v130 + v144);
    }

    else
    {
      v145 = 0;
    }

    [v10 setColorAttachmentMappingState:v145];
    v146 = (v130 - *v130);
    if (*v146 >= 0xFu && (v147 = v146[7]) != 0)
    {
      v148 = *(v130 + v147);
    }

    else
    {
      v148 = 0;
    }

    [v10 setColorSampleCount:v148];
    v149 = (v130 - *v130);
    if (*v149 >= 0x19u && (v150 = v149[12]) != 0)
    {
      v151 = *(v130 + v150);
    }

    else
    {
      v151 = 0;
    }

    [v10 setDepthAttachmentPixelFormat:v151];
    v152 = (v130 - *v130);
    if (*v152 >= 0x35u && (v153 = v152[26]) != 0)
    {
      v154 = *(v130 + v153);
    }

    else
    {
      v154 = 0;
    }

    [v10 setFragmentDepthCompareClampMask:v154];
    v155 = (v130 - *v130);
    v157 = *v155 >= 0x2Fu && (v156 = v155[23]) != 0 && *(v130 + v156) != 0;
    [v10 setDepthStencilWriteDisabled:v157];
    v158 = (v130 - *v130);
    if (*v158 >= 0x27u && (v159 = v158[19]) != 0)
    {
      v160 = *(v130 + v159);
    }

    else
    {
      v160 = 0;
    }

    [v10 setLogicOperation:v160];
    v161 = (v130 - *v130);
    v163 = *v161 >= 0x25u && (v162 = v161[18]) != 0 && *(v130 + v162) != 0;
    [v10 setLogicOperationEnabled:v163];
    v164 = (v130 - *v130);
    if (*v164 >= 5u && (v165 = v164[2]) != 0)
    {
      v166 = *(v130 + v165);
    }

    else
    {
      v166 = 1;
    }

    [v10 setMaxFragmentCallStackDepth:v166];
    v167 = (v130 - *v130);
    v169 = *v167 >= 0x33u && (v168 = v167[25]) != 0 && *(v130 + v168) != 0;
    [v10 setNeedsCustomBorderColorSamplers:v169];
    v170 = (v130 - *v130);
    v172 = *v170 >= 0x31u && (v171 = v170[24]) != 0 && *(v130 + v171) != 0;
    [v10 setOpenGLModeEnabled:v172];
    v173 = (v130 - *v130);
    v175 = *v173 >= 0x2Du && (v174 = v173[22]) != 0 && *(v130 + v174) != 0;
    [v10 setPointSmoothEnabled:v175];
    v176 = (v130 - *v130);
    if (*v176 >= 0xDu && (v177 = v176[6]) != 0)
    {
      v178 = *(v130 + v177);
    }

    else
    {
      v178 = 1;
    }

    [v10 setRasterSampleCount:v178];
    v179 = (v130 - *v130);
    LODWORD(v180) = 1.0;
    if (*v179 >= 0x13u)
    {
      v181 = v179[9];
      if (v181)
      {
        LODWORD(v180) = *(v130 + v181);
      }
    }

    [v10 setSampleCoverage:v180];
    v182 = (v130 - *v130);
    v184 = *v182 >= 0x15u && (v183 = v182[10]) != 0 && *(v130 + v183) != 0;
    [v10 setSampleCoverageInvert:v184];
    v185 = (v130 - *v130);
    if (*v185 >= 0x11u && (v186 = v185[8]) != 0)
    {
      v187 = *(v130 + v186);
    }

    else
    {
      v187 = -1;
    }

    [v10 setSampleMask:v187];
    v188 = (v130 - *v130);
    if (*v188 >= 0x1Bu && (v189 = v188[13]) != 0)
    {
      v190 = *(v130 + v189);
    }

    else
    {
      v190 = 0;
    }

    objCopy = obj;
    [v10 setStencilAttachmentPixelFormat:v190];
    v191 = (v130 - *v130);
    archiveCopy = archive;
    if (*v191 >= 0x21u && (v193 = v191[16]) != 0)
    {
      errorCopy4 = error;
      v195 = *(v130 + v193) != 0;
    }

    else
    {
      errorCopy4 = error;
      v195 = 0;
    }

    [v10 setSupportAddingFragmentBinaryFunctions:v195];
    v196 = (v130 - *v130);
    v197 = *v196;
    if (v197 >= 0x17)
    {
      if (v196[11])
      {
        v198 = (v130 + v196[11] + *(v130 + v196[11]));
      }

      else
      {
        v198 = 0;
      }

      if (v197 >= 0x1D)
      {
        v199 = v196[14];
        if (v199)
        {
          v200 = (v130 + v199 + *(v130 + v199));
          v201 = v200 + 1;
          if (*v200)
          {
            v202 = 0;
            do
            {
              v203 = *v201;
              v204 = v203 - *(v201 + v203);
              if (*(v201 + v204) >= 5u && (v205 = *(v201 + v204 + 4)) != 0)
              {
                v206 = *(v201 + v203 + v205);
              }

              else
              {
                v206 = 0;
              }

              [objc_msgSend(objc_msgSend(v10 "fragmentBuffers")];
              ++v201;
            }

            while (v202 < *v200);
          }
        }
      }

      if (v198 && *v198)
      {
        v207 = 0;
        v208 = 0;
        do
        {
          v209 = &v198[v207];
          v210 = v198[v207 + 1];
          v211 = &v198[v207] + v210 - *(&v198[v207 + 1] + v210);
          if (*(v211 + 2) >= 0xBu && (v212 = *(v211 + 7)) != 0)
          {
            v213 = *(&v198[v207 + 1] + v210 + v212);
          }

          else
          {
            v213 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v214 = v209[1];
          v215 = v214 - *(v209 + v214 + 4);
          if (*(v209 + v215 + 4) >= 9u && (v216 = *(&v198[v207 + 3] + v215)) != 0)
          {
            v217 = *(&v198[v207 + 1] + v214 + v216);
          }

          else
          {
            v217 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v218 = v209[1];
          v219 = &v198[v207];
          v220 = &v198[v207] + v218 - *(&v198[v207 + 1] + v218);
          if (*(v220 + 2) >= 0xFu && (v221 = *(v220 + 9)) != 0)
          {
            v222 = *(&v198[v207 + 1] + v218 + v221);
          }

          else
          {
            v222 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v223 = v209[1];
          v224 = v223 - *(v219 + v223 + 4);
          if (*(v219 + v224 + 4) >= 0x11u && (v225 = *(&v198[v207 + 5] + v224)) != 0)
          {
            v226 = *(&v198[v207 + 1] + v223 + v225);
          }

          else
          {
            v226 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v227 = v209[1];
          v228 = &v198[v207];
          v229 = &v198[v207] + v227 - *(&v198[v207 + 1] + v227);
          if (*(v229 + 2) >= 5u && (v230 = *(v229 + 4)) != 0)
          {
            v231 = *(&v198[v207 + 1] + v227 + v230);
          }

          else
          {
            v231 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v232 = v209[1];
          v233 = v232 - *(v228 + v232 + 4);
          if (*(v228 + v233 + 4) >= 0x15u && (v234 = *(&v198[v207 + 6] + v233)) != 0)
          {
            v235 = *(&v198[v207 + 1] + v232 + v234);
          }

          else
          {
            v235 = 1;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v236 = v209[1];
          v237 = &v198[v207];
          v238 = &v198[v207] + v236 - *(&v198[v207 + 1] + v236);
          if (*(v238 + 2) >= 0x13u && (v239 = *(v238 + 11)) != 0)
          {
            v240 = *(&v198[v207 + 1] + v236 + v239);
          }

          else
          {
            v240 = 1;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v241 = v209[1];
          v242 = v241 - *(v237 + v241 + 4);
          if (*(v237 + v242 + 4) >= 7u && (v243 = *(&v198[v207 + 2] + v242 + 2)) != 0)
          {
            v244 = *(&v198[v207 + 1] + v241 + v243);
          }

          else
          {
            v244 = 15;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          ++v207;
        }

        while (v208 < *v198);
      }
    }

    fragmentLinkedFunctions = [v10 fragmentLinkedFunctions];
    v246 = (v130 - *v130);
    if (*v246 < 0x37u)
    {
      v249 = 0;
      v248 = errorCopy4;
    }

    else
    {
      v247 = v246[27];
      v248 = errorCopy4;
      if (v247)
      {
        v249 = v130 + v247 + *(v130 + v247);
      }

      else
      {
        v249 = 0;
      }
    }

    [(_MTLBinaryArchive *)self setMTLLinkedFunctions:fragmentLinkedFunctions LFS:v249 obj:objCopy destinationArchive:archiveCopy error:v248];
  }

  return v10;
}

- (id)archiveFunctionIds
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = self->_airntBinaryList.__table_.__first_node_.__next_; i; i = i->var0.var0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<std::pair<MTLHashKey,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(&v9, *i->var1.var0, *&i->var1.var0[8], 0x2E8BA2E8BA2E8BA3 * ((*&i->var1.var0[8] - *i->var1.var0) >> 3));
    v5 = v9;
    if (v10 != v9)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v5 + v6)}];
        ++v7;
        v5 = v9;
        v6 += 88;
      }

      while (v7 < 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3));
    }

    v12 = &v9;
    std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  return array;
}

- (id)newFunctionDescriptorWithAirScript:(const ConstantsSpecializationScript *)script
{
  v3 = &script[-*script->var0];
  if (*v3->var0 < 9u)
  {
    return 0;
  }

  v4 = *v3[8].var0;
  if (!*v3[8].var0)
  {
    return 0;
  }

  v6 = *script[v4].var0;
  v7 = &script[v4 + v6];
  v8 = objc_alloc_init(MTLFunctionDescriptor);
  v9 = *v7->var0;
  v10 = -v9;
  v11 = &v7[-v9];
  if (*v11->var0 >= 5u)
  {
    v12 = *v11[4].var0;
    if (v12)
    {
      -[MTLFunctionDescriptor setName:](v8, "setName:", [MEMORY[0x1E696AEC0] stringWithUTF8String:&v7[v12 + 4 + *v7[v12].var0]]);
      v10 = -*v7->var0;
    }
  }

  if (*v7[v10].var0 >= 7u && *v7[v10 + 6].var0)
  {
    -[MTLFunctionDescriptor setSpecializedName:](v8, "setSpecializedName:", [MEMORY[0x1E696AEC0] stringWithUTF8String:&v7[*v7[v10 + 6].var0 + 4 + *v7[*v7[v10 + 6].var0].var0]]);
    v10 = -*v7->var0;
  }

  v13 = &v7[v10];
  if (*v7[v10].var0 >= 9u && (v14 = *v13[8].var0, *v13[8].var0))
  {
    v15 = &v7[v14];
    v16 = *v7[v14].var0;
    v17 = objc_opt_new();
    if (*v15[v16].var0)
    {
      v18 = 0;
      v19 = &script[v6 + 12 + v4 + v16 + v14];
      do
      {
        v20 = *v19[-8].var0;
        v21 = v20 - *v19[v20 - 8].var0;
        v22 = *v19[v21 - 8].var0;
        if (v22 >= 5)
        {
          v23 = *v19[v21 - 4].var0 ? *v19[v20 - 8 + *v19[v21 - 4].var0].var0 : 0;
          if (v22 >= 7)
          {
            v24 = *v19[v21 - 2].var0;
            if (*v19[v21 - 2].var0)
            {
              LODWORD(v24) = v19[v20 - 8 + v24].var0[0];
            }

            if (v22 >= 9 && (v25 = *v19[v21].var0) != 0)
            {
              v26 = &v19[v20 - 8 + v25 + *v19[v20 - 8 + v25].var0];
            }

            else
            {
              v26 = 0;
            }

            v27 = v24;
            switch(v24)
            {
              case 3:
                v27 = 3;
                goto LABEL_68;
              case 4:
                v27 = 4;
                goto LABEL_68;
              case 5:
                v27 = 5;
                goto LABEL_68;
              case 6:
                v27 = 6;
                goto LABEL_68;
              case 16:
                v27 = 16;
                goto LABEL_68;
              case 17:
                v27 = 17;
                goto LABEL_68;
              case 18:
                v27 = 18;
                goto LABEL_68;
              case 19:
                v27 = 19;
                goto LABEL_68;
              case 29:
                v27 = 29;
                goto LABEL_68;
              case 30:
                v27 = 30;
                goto LABEL_68;
              case 31:
                v27 = 31;
                goto LABEL_68;
              case 32:
                v27 = 32;
                goto LABEL_68;
              case 33:
                v27 = 33;
                goto LABEL_68;
              case 34:
                v27 = 34;
                goto LABEL_68;
              case 35:
                v27 = 35;
                goto LABEL_68;
              case 36:
                v27 = 36;
                goto LABEL_68;
              case 37:
                v27 = 37;
                goto LABEL_68;
              case 38:
                v27 = 38;
                goto LABEL_68;
              case 39:
                v27 = 39;
                goto LABEL_68;
              case 40:
                v27 = 40;
                goto LABEL_68;
              case 41:
                v27 = 41;
                goto LABEL_68;
              case 42:
                v27 = 42;
                goto LABEL_68;
              case 43:
                v27 = 43;
                goto LABEL_68;
              case 44:
                v27 = 44;
                goto LABEL_68;
              case 45:
                v27 = 45;
                goto LABEL_68;
              case 46:
                v27 = 46;
                goto LABEL_68;
              case 47:
                v27 = 47;
                goto LABEL_68;
              case 48:
                v27 = 48;
                goto LABEL_68;
              case 49:
                v27 = 49;
                goto LABEL_68;
              case 50:
                v27 = 50;
                goto LABEL_68;
              case 51:
                v27 = 51;
                goto LABEL_68;
              case 52:
                v27 = 52;
                goto LABEL_68;
              case 53:
                goto LABEL_68;
              case 54:
                v27 = 54;
                goto LABEL_68;
              case 55:
                v27 = 55;
                goto LABEL_68;
              case 56:
                v27 = 56;
                goto LABEL_68;
              case 81:
                v27 = 81;
                goto LABEL_68;
              case 82:
                v27 = 82;
                goto LABEL_68;
              case 83:
                v27 = 83;
                goto LABEL_68;
              case 84:
                v27 = 84;
                goto LABEL_68;
              case 85:
                v27 = 85;
                goto LABEL_68;
              case 86:
                v27 = 86;
                goto LABEL_68;
              case 87:
                v27 = 87;
                goto LABEL_68;
              case 88:
                v27 = 88;
LABEL_68:
                [v17 setConstantValue:v26 type:v27 atIndex:v23];
                break;
              default:
                break;
            }
          }
        }

        ++v18;
        v19 += 4;
      }

      while (*v15[v16].var0 > v18);
    }
  }

  else
  {
    v17 = objc_opt_new();
  }

  [(MTLFunctionDescriptor *)v8 setConstantValues:v17];

  return v8;
}

- (id)newRecompiledFunctionWithAIRNTObject:(void *)object index:(unint64_t)index destinationArchive:(id)archive error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89___MTLBinaryArchive_newRecompiledFunctionWithAIRNTObject_index_destinationArchive_error___block_invoke;
  v9[3] = &unk_1E6EEAB40;
  v9[8] = index;
  v9[9] = error;
  v9[6] = &v10;
  v9[7] = object;
  v9[4] = self;
  v9[5] = archive;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getLibraryDescriptorWithAirScrpt:(const StitchingScript *)scrpt
{
  v135[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = &scrpt[-*scrpt->var0];
  if (*v5->var0 < 9u)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5[8].var0;
    if (v6)
    {
      v6 = (v6 + scrpt + *(v6 + scrpt));
    }
  }

  v7 = (v6 - *v6);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_new();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = (v9 - *v9);
  if (*v12 >= 5u && (v13 = v12[2]) != 0)
  {
    v14 = (v9 + v13 + *(v9 + v13));
  }

  else
  {
    v14 = 0;
  }

  flatbuffers::String::str(&__p, v14);
  if (v134 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  [v10 setFunctionName:{objc_msgSend(v11, "initWithUTF8String:", p_p)}];
  if (SHIBYTE(v134) < 0)
  {
    operator delete(__p);
  }

  v120 = v4;
  __p = 0;
  v133 = 0;
  v134 = 0;
  v16 = (v9 - *v9);
  if (*v16 >= 0xBu)
  {
    v17 = v16[5];
    if (v17)
    {
      v18 = (v9 + v17 + *(v9 + v17));
      if (*v18)
      {
        v19 = 0;
        v20 = v18 + 1;
        do
        {
          v21 = *v20;
          v22 = v21 - *(v20 + v21);
          if (*(v20 + v22) >= 5u)
          {
            v23 = *(v20 + v22 + 4);
            if (v23)
            {
              v24 = *(v20 + v21 + v23);
              if (v24 == 2)
              {
                v129 = [MTLFunctionStitchingAttributeKernel alloc];
                std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v129);
              }

              else if (v24 == 1)
              {
                v129 = [MTLFunctionStitchingAttributeAlwaysInline alloc];
                std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v129);
              }
            }
          }

          ++v19;
          v25 = *v18;
          ++v20;
        }

        while (v19 < v25);
        if (v25)
        {
          [v10 setAttributes:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];
        }
      }
    }
  }

  v119 = v10;
  v26 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v27 = (v9 + *(v9 - *v9 + 6));
  v28 = (v27 + *v27);
  do
  {
    v29 = &v28[v26 + 1];
    v30 = (v29 + *v29);
    v31 = (v30 - *v30);
    if (*v31 < 5u)
    {
      goto LABEL_152;
    }

    v32 = v31[2];
    if (!v32)
    {
      goto LABEL_152;
    }

    v33 = *(v30 + v32);
    if (v33 <= 5)
    {
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v74 = [MTLFunctionStitchingInputBuffer alloc];
          v75 = AirReflection::Node::node_as_VertexFunction((v29 + *v29));
          v76 = (v75 - *v75);
          if (*v76 >= 7u && (v77 = v76[3]) != 0)
          {
            v78 = *(v75 + v77);
          }

          else
          {
            v78 = 0;
          }

          v126 = [(MTLFunctionStitchingInputBuffer *)v74 initWithBindIndex:v78];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
        }

        else if (v33 == 4)
        {
          v62 = AirReflection::Node::node_as_VisibleFunction(v30);
          v63 = [MTLFunctionStitchingInputBufferAddress alloc];
          v64 = (v62 - *v62);
          v65 = *v64;
          if (v65 < 5)
          {
            v66 = 0;
          }

          else
          {
            v66 = v64[2];
            if (v64[2])
            {
              v66 = (v66 + v62 + *(v66 + v62));
            }
          }

          v86 = (v66 - *v66);
          if (*v86 >= 7u && (v87 = v86[3]) != 0)
          {
            v88 = *(v66 + v87);
          }

          else
          {
            v88 = 0;
          }

          if (v65 >= 7 && (v89 = v64[3]) != 0)
          {
            v90 = *(v62 + v89);
          }

          else
          {
            v90 = 0;
          }

          v126 = [(MTLFunctionStitchingInputBufferAddress *)v63 initWithBindIndex:v88 byteOffset:v90 dereference:0];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
        }

        else
        {
          v39 = AirReflection::Node::node_as_VisibleFunction(v30);
          v40 = [MTLFunctionStitchingInputBufferAddress alloc];
          v41 = (v39 - *v39);
          v42 = *v41;
          if (v42 < 5)
          {
            v43 = 0;
          }

          else
          {
            v43 = v41[2];
            if (v41[2])
            {
              v43 = (v43 + v39 + *(v43 + v39));
            }
          }

          v91 = (v43 - *v43);
          if (*v91 >= 7u && (v92 = v91[3]) != 0)
          {
            v93 = *(v43 + v92);
          }

          else
          {
            v93 = 0;
          }

          if (v42 >= 7 && (v94 = v41[3]) != 0)
          {
            v95 = *(v39 + v94);
          }

          else
          {
            v95 = 0;
          }

          v126 = [(MTLFunctionStitchingInputBufferAddress *)v40 initWithBindIndex:v93 byteOffset:v95 dereference:1];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
        }

        goto LABEL_152;
      }

      if (v33 == 1)
      {
        v57 = [MTLFunctionStitchingInputNode alloc];
        v58 = AirReflection::Node::node_as_FragmentFunction((v29 + *v29));
        v59 = (v58 - *v58);
        if (*v59 >= 5u && (v60 = v59[2]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v126 = [(MTLFunctionStitchingInputNode *)v57 initWithArgumentIndex:v61];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
        goto LABEL_152;
      }

      if (v33 != 2)
      {
        goto LABEL_152;
      }

      v52 = AirReflection::Node::node_as_KernelFunction(v30);
      v53 = v52;
      v54 = (v52 - *v52);
      v55 = *v54;
      if (v55 < 9)
      {
        if (v55 <= 6)
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
          v123 = 0;
          v124 = 0;
          v125 = 0;
LABEL_139:
          v106 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
          v107 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
          v108 = objc_alloc(MEMORY[0x1E696AEC0]);
          v109 = (v53 - *v53);
          if (*v109 >= 5u && (v110 = v109[2]) != 0)
          {
            v111 = (v53 + v110 + *(v53 + v110));
          }

          else
          {
            v111 = 0;
          }

          flatbuffers::String::str(v121, v111);
          if (v122 >= 0)
          {
            v112 = v121;
          }

          else
          {
            v112 = v121[0];
          }

          v113 = [v108 initWithUTF8String:v112];
          if (v122 < 0)
          {
            operator delete(v121[0]);
          }

          v121[0] = [[MTLFunctionStitchingFunctionNode alloc] initWithName:v113 arguments:v107 controlDependencies:v106];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, v121);
          if (v123)
          {
            v124 = v123;
            operator delete(v123);
          }

LABEL_150:
          if (v126)
          {
            v127 = v126;
            operator delete(v126);
          }

          goto LABEL_152;
        }
      }

      else if (v54[4])
      {
        v56 = (v52 + v54[4] + *(v52 + v54[4]));
LABEL_94:
        v84 = v54[3];
        if (v84)
        {
          v85 = (v52 + v84 + *(v52 + v84));
        }

        else
        {
          v85 = 0;
        }

        v126 = 0;
        v127 = 0;
        v128 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        if (v56 && *v56)
        {
          v96 = 1;
          do
          {
            v121[0] = *(v129 + v56[v96]);
            std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v126, v121);
            ++v96;
          }

          while (v96 - 1 < *v56);
        }

        if (v85 && *v85)
        {
          v97 = v124;
          v98 = 1;
          do
          {
            v99 = v85[v98];
            if (v97 >= v125)
            {
              v100 = (v97 - v123) >> 3;
              if ((v100 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v101 = (v125 - v123) >> 2;
              if (v101 <= v100 + 1)
              {
                v101 = v100 + 1;
              }

              if (v125 - v123 >= 0x7FFFFFFFFFFFFFF8)
              {
                v102 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v102 = v101;
              }

              if (v102)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&v123, v102);
              }

              v103 = (8 * v100);
              *v103 = *(v129 + v99);
              v97 = (8 * v100 + 8);
              v104 = v103 - (v124 - v123);
              memcpy(v104, v123, v124 - v123);
              v105 = v123;
              v123 = v104;
              v124 = v97;
              v125 = 0;
              if (v105)
              {
                operator delete(v105);
              }
            }

            else
            {
              *v97 = *(v129 + v99);
              v97 += 8;
            }

            ++v98;
            v124 = v97;
          }

          while (v98 - 1 < *v85);
        }

        goto LABEL_139;
      }

      v56 = 0;
      goto LABEL_94;
    }

    if (v33 <= 8)
    {
      if (v33 == 6)
      {
        v79 = AirReflection::Node::node_as_MeshFunction(v30);
        v35 = [MTLFunctionStitchingInputTexture alloc];
        v80 = (v79 - *v79);
        if (*v80 >= 5u && (v81 = v80[2]) != 0)
        {
          v38 = *(v79 + v81);
        }

        else
        {
          v38 = 0;
        }
      }

      else if (v33 == 7)
      {
        v67 = AirReflection::Node::node_as_ObjectFunction(v30);
        v35 = [MTLFunctionStitchingInputSampler alloc];
        v68 = (v67 - *v67);
        if (*v68 >= 5u && (v69 = v68[2]) != 0)
        {
          v38 = *(v67 + v69);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v34 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(v30);
        v35 = [MTLFunctionStitchingInputThreadgroup alloc];
        v36 = (v34 - *v34);
        if (*v36 >= 5u && (v37 = v36[2]) != 0)
        {
          v38 = *(v34 + v37);
        }

        else
        {
          v38 = 0;
        }
      }

      v126 = [(MTLFunctionStitchingInputTexture *)v35 initWithBindIndex:v38];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
      goto LABEL_152;
    }

    if (v33 == 9)
    {
      v126 = [[MTLFunctionStitchingInputImageblock alloc] initWithBindIndex:0];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
      goto LABEL_152;
    }

    if (v33 != 10)
    {
      if (v33 != 11)
      {
        goto LABEL_152;
      }

      v44 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v30);
      v45 = v44;
      v46 = (v44 - *v44);
      if (*v46 >= 7u && (v47 = v46[3]) != 0)
      {
        v48 = v44 + v47;
        v49 = *(v44 + v47);
        v126 = 0;
        v127 = 0;
        v128 = 0;
        if (*(v44 + v47 + v49))
        {
          v50 = 0;
          v51 = v44 + v47 + v49 + 4;
          do
          {
            v123 = *(v129 + *(v51 + 4 * v50));
            std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v126, &v123);
            ++v50;
          }

          while (v50 < *&v48[v49]);
        }
      }

      else
      {
        v126 = 0;
        v127 = 0;
        v128 = 0;
      }

      v82 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
      v83 = [MTLFunctionStitchingEarlyReturnNode alloc];
      v123 = [(MTLFunctionStitchingEarlyReturnNode *)v83 initWithCondition:*(v129 + *(v45 + *(v45 - *v45 + 4))) controlDependencies:v82];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v123);
      goto LABEL_150;
    }

    v70 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(v30);
    v71 = (v70 - *v70);
    if (*v71 < 5u)
    {
      goto LABEL_74;
    }

    v72 = v71[2];
    if (!v72)
    {
      goto LABEL_74;
    }

    v73 = *(v70 + v72);
    if (v73 != 1)
    {
      if (v73)
      {
        goto LABEL_152;
      }

LABEL_74:
      v126 = objc_alloc_init(MTLFunctionStitchingBuiltinThreadPositionInGrid);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
      goto LABEL_152;
    }

    v126 = objc_alloc_init(MTLFunctionStitchingBuiltinThreadPositionInThreadgroup);
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v129, &v126);
LABEL_152:
    ++v26;
  }

  while (v26 < *v28);
  [v119 setOutputNode:*(v129 + *(v9 + *(v9 - *v9 + 8)))];
  v114 = objc_opt_new();
  v115 = v129;
  v116 = v130;
  while (v115 != v116)
  {
    v117 = *v115;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v114 addObject:v117];
    }

    ++v115;
  }

  [v119 setNodes:v114];
  v135[0] = v119;
  [v120 setFunctionGraphs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v135, 1)}];
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (__p)
  {
    v133 = __p;
    operator delete(__p);
  }

  return v120;
}

- (id)recompileFunction:(id)function inLibrary:(id)library toArchive:(id)archive toBinary:(BOOL)binary error:(id *)error
{
  binaryCopy = binary;
  v62 = *MEMORY[0x1E69E9840];
  airScript = [function airScript];
  if (airScript || binaryCopy)
  {
    if (airScript || !binaryCopy)
    {
      buffer_ptr = 0;
      size_ptr = 0;
      v17 = dispatch_data_create_map(airScript, &buffer_ptr, &size_ptr);
      v18 = buffer_ptr;
      if (!strncmp(buffer_ptr + 4, "AIRC", 4uLL))
      {
        v37 = [(_MTLBinaryArchive *)self newFunctionDescriptorWithAirScript:v18 + *v18];
        v38 = v37;
        if (binaryCopy)
        {
          [v37 setOptions:{objc_msgSend(v37, "options") | 1}];
        }

        dispatch_release(v17);
        v60 = 0u;
        v61 = 0u;
        if (function)
        {
          objc_msgSend_baseFunctionHash(function);
        }

        v39 = [library newFunctionWithHash:&v60];
        v40 = [(_MTLBinaryArchive *)self recompileFunction:v39 inLibrary:library toArchive:archive toBinary:0 error:error];
        v41 = v40;
        if (v40)
        {
          if (v40 == v39)
          {
            v56 = 0;
            __p = 0;
            [library getFunctionAliasAndNameForHash:&v60 functionName:&v56 alias:&__p];
            if (__p)
            {
              v50 = __p;
            }

            else
            {
              v50 = v56;
            }

            [v38 setName:v50];
            v16 = [library newFunctionWithDescriptor:v38 destinationArchive:archive error:error];

            if (v56)
            {
            }

            if (__p)
            {
            }
          }

          else
          {

            libraryData = [v41 libraryData];
            v43 = (*(*libraryData + 128))(libraryData);
            v48 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, v43, 0, v44, v45, v46, v47);
            [v38 setName:{objc_msgSend(v41, "name")}];
            v16 = [(_MTLLibrary *)v48 newFunctionWithDescriptor:v38 destinationArchive:archive error:error];
          }
        }

        else
        {

          return 0;
        }
      }

      else
      {
        [function bitCodeHash];
        (*(*[function libraryData] + 320))(&v56);
        v52 = v17;
        __p = 0;
        v54 = 0;
        v55 = 0;
        v19 = v56;
        v20 = v57;
        if (v56 == v57)
        {
LABEL_28:
          v32 = buffer_ptr;
          v33 = *buffer_ptr;
          v34 = objc_autoreleasePoolPush();
          v35 = [(_MTLBinaryArchive *)self getLibraryDescriptorWithAirScrpt:&v32[v33]];
          dispatch_release(v52);
          [v35 setFunctions:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];
          v16 = [(MTLDevice *)self->_device newLibraryWithStitchedDescriptor:v35 destinationBinaryArchive:archive error:error];
          for (i = __p; i != v54; ++i)
          {
          }

          if (v16)
          {
            v16 = [v16 newFunctionWithName:{objc_msgSend(objc_msgSend(objc_msgSend(v35, "functionGraphs"), "objectAtIndexedSubscript:", 0), "functionName")}];
          }

          objc_autoreleasePoolPop(v34);
        }

        else
        {
          while (1)
          {
            v21 = v19[1];
            v60 = *v19;
            v61 = v21;
            v22 = [library newFunctionWithHash:&v60];
            v23 = [(_MTLBinaryArchive *)self recompileFunction:v22 inLibrary:library toArchive:archive toBinary:0 error:error];
            if (!v23)
            {
              break;
            }

            v24 = v54;
            if (v54 >= v55)
            {
              v26 = (v54 - __p) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v27 = (v55 - __p) >> 2;
              if (v27 <= v26 + 1)
              {
                v27 = v26 + 1;
              }

              if (v55 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v28 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v27;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v28);
              }

              v29 = (8 * v26);
              *v29 = v23;
              v25 = 8 * v26 + 8;
              v30 = v29 - (v54 - __p);
              memcpy(v30, __p, v54 - __p);
              v31 = __p;
              __p = v30;
              v54 = v25;
              v55 = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v54 = v23;
              v25 = (v24 + 8);
            }

            v54 = v25;
            v19 += 2;
            if (v19 == v20)
            {
              goto LABEL_28;
            }
          }

          for (j = __p; j != v54; ++j)
          {
          }

          v16 = 0;
        }

        if (__p)
        {
          v54 = __p;
          operator delete(__p);
        }

        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }
      }
    }

    else
    {
      *&v60 = 0;
      v56 = 0;
      [library getFunctionAliasAndNameForHash:objc_msgSend(function functionName:"bitCodeHash") alias:{&v60, &v56}];
      if (v56)
      {
        v14 = v56;
      }

      else
      {
        v14 = v60;
      }

      v15 = objc_alloc_init(MTLFunctionDescriptor);
      [(MTLFunctionDescriptor *)v15 setName:v14];
      [(MTLFunctionDescriptor *)v15 setOptions:[(MTLFunctionDescriptor *)v15 options]| 1];
      v16 = [library newFunctionWithDescriptor:v15 destinationArchive:archive error:error];
    }

    return v16;
  }

  else
  {

    return function;
  }
}

- (BOOL)recompileStatelessToArchive:(id)archive error:(id *)error
{
  begin = self->_airntFromDescriptorFunctionList.__begin_;
  end = self->_airntFromDescriptorFunctionList.__end_;
  if (begin == end)
  {
    return 1;
  }

  v7 = MEMORY[0x1E69E9820];
  while (1)
  {
    v8 = *begin;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    queue = self->_queue;
    block[0] = v7;
    block[1] = 3221225472;
    block[2] = __55___MTLBinaryArchive_recompileStatelessToArchive_error___block_invoke;
    block[3] = &unk_1E6EEAB68;
    block[4] = self;
    block[5] = &v22;
    block[7] = v8;
    block[8] = error;
    block[6] = &v16;
    dispatch_sync(queue, block);
    v10 = v23[5];
    if (!v10)
    {
      v11 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if ([v10 isStub])
    {
      break;
    }

    v11 = v23[5];
    if (!v11 || !v17[5])
    {
      goto LABEL_10;
    }

    v12 = [_MTLBinaryArchive recompileFunction:"recompileFunction:inLibrary:toArchive:toBinary:error:" inLibrary:? toArchive:? toBinary:? error:?];

    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_11:
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
    if (++begin == end)
    {
      return 1;
    }
  }

LABEL_14:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return 0;
}

- (BOOL)recompilePipelinesToArchive:(id)archive error:(id *)error
{
  begin = self->_airntPipelineList.__begin_;
  end = self->_airntPipelineList.__end_;
  if (begin == end)
  {
    return 1;
  }

  v42 = self->_airntPipelineList.__end_;
  while (1)
  {
    v8 = *begin;
    v9 = (*begin + 8);
    v10 = self->_airntObjectList.__begin_[v9[2 * (**begin == 3)]];
    v11 = [(_MTLBinaryArchive *)self materializeAirScript:v10];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    size_ptr = 0;
    buffer_ptr = 0;
    v13 = dispatch_data_create_map(v11, &buffer_ptr, &size_ptr);
    v14 = *buffer_ptr;
    v15 = *v8;
    if (*v8 > 1)
    {
      if (v15 == 2)
      {
        v16 = v13;
        errorCopy6 = error;
        v18 = [(_MTLBinaryArchive *)self newTileRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:archive error:error];
        v26 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:archive error:error];
        if (!v26)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          if (!error)
          {
            return 0;
          }

          v41 = @"Failed to materialize function bitcode for tile render pipeline";
LABEL_50:
          *errorCopy6 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:v41], MTLBinaryArchiveErrorCompilationFailure);
          return 0;
        }

        v20 = v26;
        [v18 setTileFunction:v26];
        v21 = [archive addTileRenderPipelineFunctionsWithDescriptor:v18 error:error];
LABEL_18:
        v27 = v21;

        goto LABEL_39;
      }

      if (v15 != 3)
      {
LABEL_13:
        dispatch_release(v13);
        dispatch_release(v12);
        goto LABEL_40;
      }

      v16 = v13;
      v18 = [(_MTLBinaryArchive *)self newMeshRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:archive error:error];
      v22 = v8[6];
      if (v22 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = self->_airntObjectList.__begin_[v22];
      }

      v28 = *v9;
      if (v28 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = self->_airntObjectList.__begin_[v28];
      }

      v30 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:archive error:error];
      if (v23)
      {
        v23 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v23 destinationArchive:archive error:error];
      }

      if (v29)
      {
        v31 = v29;
        errorCopy3 = error;
        v33 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v31 destinationArchive:archive error:error];
      }

      else
      {
        v33 = 0;
        errorCopy3 = error;
      }

      [v18 setMeshFunction:v30];
      [v18 setObjectFunction:v33];
      [v18 setFragmentFunction:v23];
      v27 = [archive addMeshRenderPipelineFunctionsWithDescriptor:v18 error:errorCopy3];
    }

    else
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_13;
        }

        v16 = v13;
        errorCopy6 = error;
        v18 = [(_MTLBinaryArchive *)self newComputePipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:archive error:error];
        v19 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:archive error:error];
        if (!v19)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          if (!error)
          {
            return 0;
          }

          v41 = @"Failed to materialize function bitcode for compute pipeline";
          goto LABEL_50;
        }

        v20 = v19;
        [v18 setComputeFunction:v19];
        v21 = [archive addComputePipelineFunctionsWithDescriptor:v18 error:error];
        goto LABEL_18;
      }

      v16 = v13;
      v18 = [(_MTLBinaryArchive *)self newRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:archive error:error];
      v24 = v8[4];
      if (v24 == -1)
      {
        v25 = 0;
      }

      else
      {
        v25 = self->_airntObjectList.__begin_[v24];
      }

      errorCopy7 = error;
      v35 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:archive error:error];
      v36 = v35;
      if (v35)
      {
        v37 = v25 == 0;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        if (!v35)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          errorCopy6 = error;
          if (!error)
          {
            return 0;
          }

          v41 = @"Failed to materialize vertex function bitcode for render pipeline";
          goto LABEL_50;
        }

        v38 = 0;
        errorCopy7 = error;
      }

      else
      {
        v38 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v25 destinationArchive:archive error:error];
      }

      [v18 setVertexFunction:v36];
      [v18 setFragmentFunction:v38];
      v27 = [archive addRenderPipelineFunctionsWithDescriptor:v18 error:errorCopy7];
    }

    end = v42;
LABEL_39:

    dispatch_release(v16);
    dispatch_release(v12);
    if ((v27 & 1) == 0)
    {
      return 0;
    }

LABEL_40:
    if (++begin == end)
    {
      return 1;
    }
  }

  if (error)
  {
    v40 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to materialize AirScript for pipeline"], MTLBinaryArchiveErrorInvalidFile);
    result = 0;
    *error = v40;
    return result;
  }

  return 0;
}

- (BOOL)recompileToArchiveWithURL:(id)l error:(id *)error
{
  v7 = objc_opt_new();
  v8 = [(MTLDevice *)self->_device newBinaryArchiveWithDescriptor:v7 error:error];

  if (!v8)
  {
    return 0;
  }

  [v8 setRecompilationTarget:1];
  if ([(_MTLBinaryArchive *)self recompileToArchive:v8 error:error])
  {
    v9 = [v8 serializeToURL:l error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)recompileToArchive:(id)archive error:(id *)error
{
  if (self == archive)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Archive cannot be recompiled in place";
      goto LABEL_10;
    }

    return 0;
  }

  if (self->_isLegacy)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Legacy archive cannot be recompiled";
LABEL_10:
      *error = newErrorWithMessage([v6 stringWithFormat:v7], MTLBinaryArchiveErrorInvalidFile);
      return 0;
    }

    return 0;
  }

  if (self->_hasBuiltins)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Archive containting builtin objects cannot be recompiled";
      goto LABEL_10;
    }

    return 0;
  }

  if (!self->_airntBinaryList.__table_.__size_ && self->_airntObjectList.__begin_ == self->_airntObjectList.__end_ && self->_airntFromDescriptorFunctionList.__begin_ == self->_airntFromDescriptorFunctionList.__end_ && self->_airntPipelineList.__begin_ == self->_airntPipelineList.__end_)
  {
    if (!error)
    {
      return 0;
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = @"No recompilable artifacts found";
    goto LABEL_10;
  }

  [archive initMetalScriptWithArchive:self];
  if (![(_MTLBinaryArchive *)self recompilePipelinesToArchive:archive error:error])
  {
    return 0;
  }

  return [(_MTLBinaryArchive *)self recompileStatelessToArchive:archive error:error];
}

- (BOOL)legacySerializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  v80[3] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v9 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = defaultManager;
  lCopy = l;
  if (options)
  {
    v13 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:l create:1 error:error];
    lCopy = [v13 URLByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")}];
  }

  if (!lCopy)
  {
    if (!error)
    {
      objc_autoreleasePoolPop(v9);
      LOBYTE(v15) = 0;
      return v15;
    }

    v16 = newErrorWithMessage(&cfstr_OutputUrlIsInv.isa, MTLBinaryArchiveErrorInvalidFile);
    LOBYTE(v15) = 0;
    *error = v16;
    if (!v16)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  lCopy2 = l;
  v14 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:lCopy error:0];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v15 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:lCopy error:error];
    if (!v15)
    {
      if ((options & 1) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  if ((options & 0xC) != 0)
  {
    if ((self->_options & 2) == 0)
    {
      v17 = 0;
      v18 = (options & 8) == 0;
      goto LABEL_18;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 1;
LABEL_18:
  v59 = v11;
  if ((options & 0x30) != 0)
  {
    if (self->_options)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
      if ((options & 0x20) != 0)
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  if ((options & 0xC0) == 0)
  {
    v20 = 0;
    if (!error)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if ((self->_options & 4) != 0)
  {
    v20 = 1;
    if (!error)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v20 = 0;
  if ((options & 0x80) != 0)
  {
    v18 = 0;
  }

  if (error)
  {
LABEL_34:
    if (!v18)
    {
      *error = newErrorWithMessage(&cfstr_SerializationO.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }
  }

LABEL_36:
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v60 = v9;
  if (self->_legacyPipelineFileIndex.__tree_.__size_)
  {
    v21 = 1;
  }

  else
  {
    v21 = [(NSMutableDictionary *)self->_entries count]!= 0;
  }

  v22 = v21 & v17;
  if (v22)
  {
    *v77 = [MTLLoader sliceIDForDevice:&v76 andDriverVersion:?];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v73, v77);
  }

  if (v19)
  {
    *v77 = +[MTLLoader sliceIDForDescriptors];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v73, v77);
  }

  if (self->_legacySpecializedFunctions.__table_.__size_)
  {
    v23 = 1;
  }

  else
  {
    v23 = self->_legacySpecializedFunctionArchiveFileIndex.__tree_.__size_ != 0;
  }

  v58 = v23 & v20;
  if ((v23 & v20) != 0)
  {
    *v77 = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(self->_device)];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v73, v77);
  }

  v24 = v73 != v74 && v18;
  if (v73 == v74 && error)
  {
    v25 = newErrorWithMessage(&cfstr_TheBinaryArchi.isa, MTLBinaryArchiveErrorInvalidFile);
    v24 = 0;
    *error = v25;
  }

  memset(v80, 0, 24);
  memset(v79, 0, sizeof(v79));
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke;
  v68[3] = &unk_1E6EEAB90;
  v68[4] = v15;
  v68[5] = &v69;
  v68[6] = error;
  if (!v24)
  {
    goto LABEL_116;
  }

  v26 = [MTLLoader serializeUniversalBinaryHeaderWithSlice:v73 offset:0 length:0 count:(v74 - v73) >> 3 writer:v68];
  v27 = v26 ^ 1;
  if (!v22)
  {
    v27 = 1;
  }

  if (v27)
  {
    v56 = 0;
  }

  else
  {
    *v77 = 0;
    *&v77[8] = v77;
    *&v77[16] = 0x4812000000;
    *&v77[24] = __Block_byref_object_copy__283;
    *&v77[32] = __Block_byref_object_dispose__284;
    *&v77[40] = &unk_185DF1D43;
    queue = self->_queue;
    memset(__p, 0, 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke_286;
    block[3] = &unk_1E6EEABE0;
    block[4] = self;
    block[5] = v77;
    block[6] = v76;
    block[7] = options;
    dispatch_sync(queue, block);
    v80[0] = v70[3];
    v29 = v80[0];
    v26 = [MTLLoader serializeMachOContainerWithSlice:*(*&v77[8] + 48) payload:-1227133513 * ((*(*&v77[8] + 56) - *(*&v77[8] + 48)) >> 4) count:v68 writer:?];
    v30 = v70[3];
    v79[0] = v30 - v29;
    if ((v74 - v73) >= 9)
    {
      [MTLLoader serializePaddingForOffset:v30 writer:v68];
    }

    if (error && v26 != 1)
    {
      *error = newErrorWithMessage(&cfstr_SerializationO_0.isa, MTLBinaryArchiveErrorInvalidFile);
    }

    _Block_object_dispose(v77, 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v56 = 1;
  }

  if ((v19 & v26) != 1)
  {
    if (v58)
    {
      goto LABEL_94;
    }

LABEL_107:
    if (!v26)
    {
      goto LABEL_116;
    }

    goto LABEL_113;
  }

  v31 = MTLPipelineCollection::JSONData(self->_pipelineCollection.__ptr_);
  v32 = v31;
  if (v31)
  {
    v33 = _MTLNSDataToDispatchData(v31, 0);
  }

  else
  {
    v33 = 0;
  }

  v64 = 0u;
  v65 = 0u;
  v66 = 1065353216;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  std::vector<MTLLoaderMachOPayload>::reserve(&v61, v33 != 0);
  if (v33)
  {
    memset(&__p[1], 0, 56);
    *v77 = v33;
    __p[0] = 1;
    memset(&v77[8], 0, 32);
    *&v77[40] = (options & 2) != 0;
    std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v61, v77);
  }

  for (i = v65; i; i = *i)
  {
    if (i[6])
    {
      memset(__p, 0, sizeof(__p));
      memset(&v77[16], 0, 32);
      *v77 = 0u;
      *v77 = i[6];
      __p[0] = 1;
      v35 = *(i + 2);
      *&v77[8] = *(i + 1);
      *&v77[24] = v35;
      v77[40] = (options & 2) != 0;
      std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v61, v77);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&v64);
  v36 = v61;
  LODWORD(v37) = -1227133513 * ((v62 - v61) >> 4);
  if (v37)
  {
    v38 = v70[3];
    v80[v56] = v38;
    v26 = [MTLLoader serializeMachOContainerWithSlice:v36 payload:v37 count:v68 writer:?];
    v79[v56] = v70[3] - v38;
    v37 = v37;
    do
    {
      v39 = *v36;
      v36 += 14;
      dispatch_release(v39);
      --v37;
    }

    while (v37);
    v56 = (v56 + 1);
    if (v56 < (v74 - v73) >> 3)
    {
      [MTLLoader serializePaddingForOffset:v68 writer:?];
    }

    if (error && v26 != 1)
    {
      *error = newErrorWithMessage(&cfstr_SerializationO_1.isa, MTLBinaryArchiveErrorInvalidFile);
    }
  }

  else
  {
    v26 = 1;
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v64);
  if (!v58)
  {
    goto LABEL_107;
  }

LABEL_94:
  if (!v26)
  {
    goto LABEL_107;
  }

  v64 = 0u;
  v65 = 0u;
  v66 = 1065353216;
  [(_MTLBinaryArchive *)self getSpecializedFunctionArchivesToSerialize:&v64];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  std::vector<MTLLoaderMachOPayload>::reserve(&v61, *(&v65 + 1));
  for (j = v65; j; j = *j)
  {
    if (j[6])
    {
      memset(__p, 0, sizeof(__p));
      memset(&v77[16], 0, 32);
      *v77 = 0u;
      *v77 = j[6];
      __p[0] = 1;
      v41 = *(j + 2);
      *&v77[8] = *(j + 1);
      *&v77[24] = v41;
      v77[40] = (options & 2) != 0;
      std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v61, v77);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&v64);
  v42 = v61;
  LODWORD(v43) = -1227133513 * ((v62 - v61) >> 4);
  if (v43)
  {
    v44 = v70[3];
    v80[v56] = v44;
    v45 = [MTLLoader serializeMachOContainerWithSlice:v42 payload:v43 count:v68 writer:?];
    v79[v56] = v70[3] - v44;
    v43 = v43;
    do
    {
      v46 = *v42;
      v42 += 14;
      dispatch_release(v46);
      --v43;
    }

    while (v43);
    if ((v56 + 1) < ((v74 - v73) >> 3))
    {
      [MTLLoader serializePaddingForOffset:v68 writer:?];
    }

    if (error && v45 != 1)
    {
      *error = newErrorWithMessage(&cfstr_SerializationO_1.isa, MTLBinaryArchiveErrorInvalidFile);
    }
  }

  else
  {
    LOBYTE(v45) = 1;
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v64);
  if ((v45 & 1) == 0)
  {
    goto LABEL_116;
  }

LABEL_113:
  if ([v15 seekToOffset:0 error:{error, v56}] && +[MTLLoader serializeUniversalBinaryHeaderWithSlice:offset:length:count:writer:](MTLLoader, v73, v80, v79, (v74 - v73) >> 3, v68))
  {
    v47 = v70[3];
    v48 = 1;
    errorCopy = error;
    goto LABEL_117;
  }

LABEL_116:
  v48 = 0;
  errorCopy = 0;
  v47 = 0;
LABEL_117:
  v50 = v48 & [v15 truncateAtOffset:v47 error:{errorCopy, v56}];
  if (v50)
  {
    errorCopy2 = error;
  }

  else
  {
    errorCopy2 = 0;
  }

  v52 = [v15 closeAndReturnError:errorCopy2];
  _Block_object_dispose(&v69, 8);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  LODWORD(v15) = v50 & v52;
  v11 = v59;
  v9 = v60;
  if (options)
  {
    if (v15)
    {
      LODWORD(v15) = [v59 replaceItemAtURL:lCopy2 withItemAtURL:lCopy backupItemName:0 options:0 resultingItemURL:0 error:error];
    }

LABEL_125:
    [v11 removeItemAtURL:lCopy error:0];
  }

LABEL_126:
  if (!error || v15)
  {
    objc_autoreleasePoolPop(v9);
    if (!error)
    {
      return v15;
    }

    goto LABEL_132;
  }

  v16 = *error;
  if (*error)
  {
LABEL_129:
    v53 = v16;
  }

LABEL_130:
  objc_autoreleasePoolPop(v9);
LABEL_132:
  if (*error)
  {
    v54 = *error;
  }

  return v15;
}

- (BOOL)getScriptsWithAIRNTObject:(void *)object
{
  v12 = 0;
  if (self->_reloadingAfterSerialization)
  {
    return 1;
  }

  v5 = [(_MTLBinaryArchive *)self newLibraryInArchiveAtPos:object atIndex:0 error:&v12];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  isStub = [v5 isStub];
  if ((isStub & 1) == 0 && (self->_options & 0x80) == 0)
  {
    newMetalScript = [v6 newMetalScript];
    if (newMetalScript)
    {
      v9 = newMetalScript;
      metalScript = self->_metalScript;
      if (metalScript)
      {
        dispatch_release(metalScript);
      }

      self->_metalScript = v9;
      MTLMetalScriptBuilder::initFromScript(self->_mtlScriptBuilder.__ptr_, v9);
    }
  }

  v3 = isStub ^ 1;

  return v3;
}

- (BOOL)loadAirntBlocksForSlice:(const MTLLoaderSliceIdentifier *)slice sliceOffset:(unint64_t)offset skipAIRValidation:(BOOL)validation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke;
  v13[3] = &unk_1E6EEAC08;
  v13[4] = self;
  v13[5] = slice;
  v13[6] = offset;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_2;
  v11[3] = &unk_1E6EEAC30;
  v11[4] = self;
  v11[5] = offset;
  validationCopy = validation;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_3;
  v10[3] = &unk_1E6EEAC58;
  v10[4] = self;
  v7[5] = offset;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_4;
  v8[3] = &unk_1E6EEAC80;
  validationCopy2 = validation;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_303;
  v7[3] = &unk_1E6EEA9B8;
  v7[4] = self;
  result = [MTLLoader deserializeAirntMachOContainerWithHandler:v13 objectHandler:v11 pipelineHandler:v10 errorHandler:v8 reader:v7];
  ++self->_internalArchiverId;
  return result;
}

- (BOOL)loadFileIndex:(void *)index expectedSliceId:(const MTLLoaderSliceIdentifier *)id expectedVersion:(unint64_t)version sliceOffset:(unint64_t)offset
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke;
  v10[3] = &__block_descriptor_64_e61_B52__0_MTLLoaderSliceIdentifier_ii_8Q16r_____32C__24I32Q36Q44l;
  v10[4] = id;
  v10[5] = version;
  v10[6] = index;
  v10[7] = offset;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke_2;
  v9[3] = &unk_1E6EEA9B8;
  v9[4] = self;
  v9[5] = offset;
  v7 = [MTLLoader deserializeMachOContainerWithHandler:v10 reader:v9];
  if ((v7 & 1) == 0)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(index, *(index + 1));
    *index = index + 8;
    *(index + 2) = 0;
    *(index + 1) = 0;
  }

  return v7;
}

- (BOOL)enumerateArchivesFromBackingFileFromSlice:(const MTLLoaderSliceIdentifier *)slice version:(unint64_t)version verifyKey:(id *)key offset:(unint64_t)offset bytes:(unint64_t)bytes enumerator:(id)enumerator
{
  v8 = 1;
  if (bytes)
  {
    fileData = self->_fileData;
    if (fileData)
    {
      bytes = [(MTLLoadedFileContentsWrapper *)self->_fileData bytes];
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke;
      v20[3] = &unk_1E6EEACC8;
      v20[4] = v21;
      v20[5] = bytes;
      v20[6] = &bytes[offset];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_2;
      v19[3] = &unk_1E6EEACF0;
      v19[8] = version;
      v19[9] = key;
      v19[10] = offset;
      v19[6] = v21;
      v19[7] = slice;
      v19[4] = fileData;
      v19[5] = enumerator;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_3;
      v18[3] = &unk_1E6EEAD18;
      v18[7] = slice;
      v18[8] = version;
      v18[5] = v20;
      v18[6] = v21;
      v18[4] = v19;
      v8 = [MTLLoader deserializeMachOContainerWithHandler:v18 reader:v20];
      _Block_object_dispose(v21, 8);
    }
  }

  return v8;
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection
{
  v3 = 1;
  v8 = 1;
  ptr = self->_pipelineCollection.__ptr_;
  if (ptr)
  {
    v7[0] = &v8;
    v7[1] = collection;
    v5 = *(ptr + 36);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZNK21MTLPipelineCollection14visitLibrariesIZ61___MTLBinaryArchive_enumerateArchivesFromPipelineCollection__E3__5EEvOT__block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = ptr;
    block[5] = v7;
    dispatch_sync(v5, block);
    v3 = v8;
  }

  return v3 & 1;
}

- (id)materializeEntryForKey:(id *)key fileIndex:(void *)index containsEntry:(id)entry addEntry:(id)addEntry
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *&key->var0[16];
  v22 = *key->var0;
  v23 = v9;
  v10 = [(_MTLBinaryArchive *)self materializeFromHash:&v22 fileIndex:index];
  if (v10)
  {
    v11 = v10;
    v12 = *&key->var0[16];
    v20 = *key->var0;
    v21 = v12;
    if (v22 == *key->var0 && *(&v22 + 1) == *&key->var0[8] && v23 == *&key->var0[16] && *(&v23 + 1) == *&key->var0[24])
    {
      v17 = v10;
    }

    else
    {
      v20 = v22;
      v21 = v23;
      v16 = (*(entry + 2))(entry, &v20);
      v17 = 0;
      v18 = 0;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    (*(addEntry + 2))(addEntry, v11, &v20);

    v18 = v17;
LABEL_17:

    return v18;
  }

  return 0;
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)reflectionHashWithFunctionId:(SEL)id binaryPos:(const void *)pos
{
  data = a5;
  MTLHashKey::getHash(pos, 0, 0);
  CC_SHA256_Init(&v9);
  Hash = MTLHashKey::getHash(pos, 0, 0);
  CC_SHA256_Update(&v9, Hash, 0x20u);
  CC_SHA256_Update(&v9, &data, 8u);
  return CC_SHA256_Final(retstr->var0, &v9);
}

- (id)materializeAIRNTBlockForKey:(id)key reflectionType:(char)type
{
  typeCopy = type;
  v29[4] = *MEMORY[0x1E69E9840];
  alwaysReturnDriverReflection = self->_alwaysReturnDriverReflection;
  v8 = std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>(&self->_executableFileIndex.__table_.__bucket_list_.__ptr_, [key getFunctionId]);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = typeCopy | 2;
  if (!alwaysReturnDriverReflection)
  {
    v10 = typeCopy;
  }

  if (typeCopy)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8[12];
  v13 = v8[14];
  offset = v8[15];
  v28 = v8[13];
  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v28, v12);
  if ((v11 & 4) == 0)
  {
    v15 = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_13;
  }

  objc_msgSend_reflectionHashWithFunctionId_binaryPos_(self);
  v17 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v29);
  if (!v17)
  {
LABEL_27:
    v15 = subrange;
    if (!subrange)
    {
      return 0;
    }

LABEL_28:
    dispatch_release(v15);
    return 0;
  }

  v18 = v17[8];
  if (v17[6] != v18)
  {
    v25 = v17[9];
    if (v25)
    {
      v15 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v18, v25);
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v15 = 0;
  v16 = 1;
LABEL_13:
  if ((v11 & 2) == 0)
  {
    v19 = 0;
    goto LABEL_18;
  }

  if (!v13)
  {
    if (subrange)
    {
      dispatch_release(subrange);
    }

    if (!v15)
    {
      return 0;
    }

    goto LABEL_28;
  }

  v20 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], offset, v13);
  v19 = v20;
  if (v16)
  {
    dispatch_retain(v20);
    v15 = v19;
  }

LABEL_18:
  if (subrange)
  {
    v21 = MTLNewReflectionBlock(0, v19, v15);
    v22 = [[MTLBinaryEntry alloc] initWithData:subrange reflectionBlock:v21 binaryPosition:v28];
    dispatch_release(subrange);
    if (v21)
    {
      dispatch_release(v21);
    }

    v23 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_airntOffsetToIndexMap.__table_.__bucket_list_.__ptr_, &v28);
    if (v23)
    {
      v24 = v23[3];
    }

    else
    {
      v24 = -1;
    }

    [(MTLBinaryEntry *)v22 setIndex:v24];
    [(NSMutableDictionary *)self->_entries setObject:v22 forKey:key];

    std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove(&self->_executableFileIndex.__table_.__bucket_list_.__ptr_, v9, v29);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](v29);
    if (!v19)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v22 = 0;
  if (v19)
  {
LABEL_32:
    dispatch_release(v19);
  }

LABEL_33:
  if (v15)
  {
    dispatch_release(v15);
  }

  return v22;
}

- (NSArray)keys
{
  if ((self->_options & 2) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25___MTLBinaryArchive_keys__block_invoke;
  v5[3] = &unk_1E6EEAD40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (id)descriptorDataForArchive:(id)archive
{
  v17 = 0;
  v4 = objc_opt_new();
  v5 = [(MTLLoader *)v4 loadFileWithURL:archive error:&v17 errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
  }

  else
  {
    v7 = v5;
    v8 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)v5 contents]];
    *&v16.var0 = 0;
    v16.var14 = 0;
    v16.var13.var0 = 0;
    v16.var13.var1 = 0;
    memset(&v16.var2, 0, 17);
    memset(&v16.var5, 0, 33);
    memset(&v16.var10, 0, 17);
    if (![_MTLBinaryArchive deserializeBinaryArchiveHeader:&v16 fileData:v8 device:0]|| ((v9 = [_MTLBinaryArchive deserializeBinaryArchiveDescriptorMachO:&v16 fileData:v8], v16.var7) ? (v10 = v9) : (v10 = 0), v10 ? (v11 = v16.var8 == 0) : (v11 = 1), v11))
    {
      v13 = 0;
    }

    else
    {
      sourceContents = [(MTLLoadedFileContentsWrapper *)v8 sourceContents];
      v13 = [(NSData *)sourceContents subdataWithRange:v16.var7, v16.var8];
    }

    [(MTLLoader *)v4 releaseLoadedFile:v7];
    DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v16);

    if (v13)
    {
      v14 = [(NSData *)v13 length];
      *&v16.var0 = 0;
      v16.var2 = v14;
      return _MTLNSDataToDispatchData(v13, &v16);
    }
  }

  return 0;
}

- (void)addBinaryEntryImpl:(id)impl forKey:(id)key
{
  ++self->_newBinary;
  if (![(_MTLBinaryArchive *)self recompilationTarget])
  {
    [impl setIndex:-1];
    [(NSMutableDictionary *)self->_entries setObject:impl forKey:key];
    v7 = atomic_load(&self->_serializing);
    if ((v7 & 1) != 0 && !self->_isLegacy)
    {
      asynEntries = self->_asynEntries;

      [(NSMutableDictionary *)asynEntries setObject:impl forKey:key];
    }
  }
}

- (void)addArchiveEntryInternal:(id)internal forKey:(id *)key
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___MTLBinaryArchive_MTLBinaryArchiveInternal__addArchiveEntryInternal_forKey___block_invoke;
  block[3] = &unk_1E6EEAD68;
  block[5] = internal;
  block[6] = key;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)newArchiveDataForKeyInternal:(id *)internal
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (self->_isLegacy && (self->_options & 4) != 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke;
    block[3] = &unk_1E6EEAAA8;
    block[4] = self;
    block[5] = &v7;
    block[6] = internal;
    dispatch_sync(queue, block);
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)addBinaryEntryInternal:(id)internal forKey:(id)key
{
  if (!self->_isLegacy || (self->_options & 2) != 0)
  {
    internalCopy = internal;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___MTLBinaryArchive_MTLBinaryArchiveInternal__addBinaryEntryInternal_forKey___block_invoke;
    block[3] = &unk_1E6EEADE0;
    block[4] = self;
    block[5] = internal;
    block[6] = key;
    dispatch_async(queue, block);
  }
}

- (id)getArchiveIDWithErrorInternal:(id *)internal
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77___MTLBinaryArchive_MTLBinaryArchiveInternal__getArchiveIDWithErrorInternal___block_invoke;
  v9[3] = &unk_1E6EEAD40;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v6 = v11[5];
  if (internal)
  {
    *internal = v11[5];
  }

  if (self->_archiveIDInt)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)updateReflectionForEntry:(id)entry binaryKey:(id)key requiredReflection:(char)reflection
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (!reflection || (~[entry reflectionFlags] & 6) == 0)
  {
    goto LABEL_14;
  }

  if (self->_alwaysReturnDriverReflection)
  {
    reflectionCopy = reflection | 2;
  }

  else
  {
    reflectionCopy = reflection;
  }

  [key getFunctionId];
  if (([entry reflectionFlags] & 2) == 0 && (reflectionCopy & 2) != 0)
  {
    [entry binaryPosition];
    objc_msgSend_reflectionHashWithFunctionId_binaryPos_(self);
    v10 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v15);
    if (!v10)
    {
      return v10;
    }

    subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v10[6], v10[7]);
    [entry addReflectionWithData:subrange flag:2];
  }

  reflectionFlags = [entry reflectionFlags];
  LOBYTE(v10) = 1;
  if ((reflectionFlags & 4) == 0 && (reflectionCopy & 4) != 0)
  {
    [entry binaryPosition];
    objc_msgSend_reflectionHashWithFunctionId_binaryPos_(self);
    v10 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v15);
    if (v10)
    {
      v13 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v10[8], v10[9]);
      [entry addReflectionWithData:v13 flag:4];

LABEL_14:
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (id)getBinaryDataForKey:(id)key reflectionType:(char)type
{
  v4 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  if ((self->_options & 2) != 0)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke;
    v7[3] = &unk_1E6EEAE30;
    v7[5] = key;
    v7[6] = &v9;
    v7[4] = self;
    typeCopy = type;
    dispatch_sync(queue, v7);
    v4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (void)setRecompilationTarget:(BOOL)target
{
  v3 = 64;
  if (!target)
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)findProgramObjectForFunction:(id *)function
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *&function->var0[16];
  v12 = *function->var0;
  v13 = v3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  queue = self->_queue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__findProgramObjectForFunction___block_invoke;
  block[3] = &unk_1E6EEAE58;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v5 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v5;
}

- (void)programObjectForFunction:(id *)function
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *&function->var0[16];
  v12 = *function->var0;
  v13 = v3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  queue = self->_queue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___MTLBinaryArchive_MTLBinaryArchiveInternal__programObjectForFunction___block_invoke;
  block[3] = &unk_1E6EEAE58;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v5 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v5;
}

- (id)getFunctionNameFromAirDescriptor:(const stitchedAirDescriptor *)descriptor
{
  buffer_ptr = 0;
  size_ptr = 0;
  v3 = dispatch_data_create_map(descriptor->var0, &buffer_ptr, &size_ptr);
  v4 = (buffer_ptr + *buffer_ptr);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 - *v7);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = (v10 - *v10);
  if (*v11 >= 5u && (v12 = v11[2]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
  }

  else
  {
    v13 = 0;
  }

  flatbuffers::String::str(__p, v13);
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = [v14 initWithUTF8String:v15];
  dispatch_release(v3);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

- (id)localStitchedFunctionLookupWithDescriptor:(const stitchedAirDescriptor *)descriptor
{
  result = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_, descriptor->var1.var0);
  if (result)
  {
    v6 = result;
    v7 = [(_MTLBinaryArchive *)self getFunctionNameFromAirDescriptor:descriptor];
    device = self->_device;
    libraryBuilder = device->_libraryBuilder;
    data = [v6[6] data];
    v15 = MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, data, 0, v11, v12, v13, v14);
    v16 = [(_MTLLibrary *)v15 newFunctionWithName:v7];

    return v16;
  }

  return result;
}

- (void)addStitchingInputsFunction:(id)function toEntry:(id)entry
{
  v35 = *MEMORY[0x1E69E9840];
  if (function)
  {
    functionCopy = function;
    __p = 0;
    v31 = 0;
    v32 = 0;
    std::vector<NSValue *>::reserve(&__p, [function count]);
    entryCopy = entry;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [functionCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        v9 = functionCopy;
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v9);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, [v11 bitCodeHash]))
          {
            bitcodeDataInternal = [v11 bitcodeDataInternal];
            ptr = self->_uniqueBitcodeList.__ptr_;
            bitCodeHash = [v11 bitCodeHash];
            std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(ptr, bitCodeHash, &std::piecewise_construct, &bitCodeHash)[6] = bitcodeDataInternal;
          }

          v14 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:objc_msgSend(v11 objCType:{"bitCodeHash"), "{?=[32C]}"}];
          v15 = v31;
          if (v31 >= v32)
          {
            v17 = (v31 - __p) >> 3;
            if ((v17 + 1) >> 61)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v18 = (v32 - __p) >> 2;
            if (v18 <= v17 + 1)
            {
              v18 = v17 + 1;
            }

            if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v19);
            }

            v20 = (8 * v17);
            *v20 = v14;
            v16 = 8 * v17 + 8;
            v21 = v20 - (v31 - __p);
            memcpy(v21, __p, v31 - __p);
            v22 = __p;
            __p = v21;
            v31 = v16;
            v32 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v31 = v14;
            v16 = (v15 + 8);
          }

          v31 = v16;
        }

        functionCopy = v9;
        v7 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v7);
    }

    [entryCopy setLinkedBitcodes:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];

    v23 = __p;
    v24 = v31;
    if (__p != v31)
    {
      do
      {
      }

      while (v23 != v24);
      v23 = __p;
    }

    if (v23)
    {
      v31 = v23;
      operator delete(v23);
    }
  }
}

- (id)newStitchedLibraryWithKey:(id *)key descriptors:(const void *)descriptors
{
  if (!self->_isLegacy)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x4812000000;
    v29 = __Block_byref_object_copy__584;
    v30 = __Block_byref_object_dispose__585;
    v31 = &unk_185DF1D43;
    std::vector<objc_object  {objcproto11MTLFunction}*>::vector[abi:ne200100](__p, 0xCCCCCCCCCCCCCCCDLL * ((*(descriptors + 1) - *descriptors) >> 3));
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___MTLBinaryArchive_MTLBinaryArchiveInternal__newStitchedLibraryWithKey_descriptors___block_invoke;
    block[3] = &unk_1E6EEAE80;
    block[4] = self;
    block[5] = &v26;
    block[6] = &v33;
    block[7] = descriptors;
    dispatch_sync(queue, block);
    if (v34[3])
    {
      v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:?];
      v21 = v27[6];
      v22 = v27[7];
      while (v21 != v22)
      {
      }

      v23 = MTLLibraryBuilder::newLibraryWithFunctionArray(*(self->_device + 55), self->_device, v20, &v24, v16, v17, v18, v19);
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v26, 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    _Block_object_dispose(&v33, 8);
    return v23;
  }

  descriptors = [(_MTLBinaryArchive *)self newArchiveDataForKeyInternal:key, descriptors];
  if (!descriptors)
  {
    return 0;
  }

  v10 = descriptors;
  device = self->_device;
  libraryBuilder = device->_libraryBuilder;

  return MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, v10, 0, v6, v7, v8, v9);
}

- (void)addStitchedLibraryWithKey:(id *)key descriptors:(const void *)descriptors inputFunctions:(id)functions library:(id)library
{
  libraryData = [library libraryData];
  if (self->_isLegacy && (self->_options & 4) != 0)
  {
    v12 = [[MTLAirEntry alloc] initWithData:(*(*libraryData + 128))(libraryData)];
    [(_MTLBinaryArchive *)self addArchiveEntryInternal:v12 forKey:key];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108___MTLBinaryArchive_MTLBinaryArchiveInternal__addStitchedLibraryWithKey_descriptors_inputFunctions_library___block_invoke;
    block[3] = &unk_1E6EEAEA8;
    block[6] = descriptors;
    block[7] = libraryData;
    block[4] = self;
    block[5] = functions;
    dispatch_sync(queue, block);
  }
}

- (id)newSpecializedFunctionWithHash:(id *)hash libraryPath:(id)path
{
  if (self->_isLegacy)
  {
    data = [(_MTLBinaryArchive *)self newArchiveDataForKeyInternal:hash];
    if (!data)
    {
      return 0;
    }

LABEL_8:
    v12 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, data, path, 0, v8, v9, v10);
    v13 = [(_MTLLibrary *)v12 newSpecializedFunctionWithHash:hash libraryPath:path];
    if (!v13)
    {
      v13 = [(_MTLLibrary *)v12 newFunctionWithName:[(NSArray *)[(_MTLLibrary *)v12 functionNames] objectAtIndex:0]];
    }

    goto LABEL_10;
  }

  v11 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, hash->var0);
  if (!v11)
  {
    v14 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_specializedFunctionByHash.__table_.__bucket_list_.__ptr_, hash->var0);
    if (!v14)
    {
      return 0;
    }

    data = [v14[6] data];
    goto LABEL_8;
  }

  v12 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v11[6] error:v11[7], 0];
  v13 = [(_MTLLibrary *)v12 newSpecializedFunctionWithHash:hash libraryPath:path];
LABEL_10:
  v15 = v13;

  return v15;
}

- (id)newArchiverIdWithBinaryKey:(id)key entry:(id)entry srcArchiverId:(id)id functionType:(unint64_t)type
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  getFunctionId = [key getFunctionId];
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map([entry airScript], &buffer_ptr, &size_ptr);
  v13 = buffer_ptr;
  v14 = strncmp(buffer_ptr + 4, "AIRP", 4uLL);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13 + *v13;
  }

  v16 = v14 == 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v18 = v16;
  v21[1] = 3221225472;
  v21[2] = __107___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiverIdWithBinaryKey_entry_srcArchiverId_functionType___block_invoke;
  v21[3] = &unk_1E6EEAED0;
  v21[4] = id;
  v21[5] = self;
  v21[6] = entry;
  v21[7] = key;
  v21[10] = v15;
  v21[11] = getFunctionId;
  v22 = v18;
  v21[8] = v12;
  v21[9] = &v25;
  v21[12] = type;
  dispatch_sync(queue, v21);
  v19 = v26[5];
  _Block_object_dispose(&v25, 8);
  return v19;
}

- (void)updatePipelineWithPipelineArchiverId:(id)id key:(id)key functionType:(unint64_t)type
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101___MTLBinaryArchive_MTLBinaryArchiveInternal__updatePipelineWithPipelineArchiverId_key_functionType___block_invoke;
  v6[3] = &unk_1E6EEAEF8;
  v6[4] = id;
  v6[5] = key;
  v6[6] = self;
  v6[7] = type;
  dispatch_sync(queue, v6);
}

+ (MTLLoaderSliceIdentifier)sliceIDForSpecializedFunctionsForLLVMVersion:(int)version
{
  v5 = 0;
  v4 = 0;
  _MTLGetMaxAIRAndLanguageVersions(*&version, &v5, &v4);
  return [MTLLoader sliceIDForAIRVersion:v5];
}

- (BOOL)remoteInsertionBegin
{
  dispatch_suspend(self->_serializeQueue);
  v3 = atomic_load(&self->_serializing);
  return (v3 & 1) == 0;
}

- (void)initMetalScriptWithArchive:(id)archive
{
  if ((self->_options & 0x80) == 0)
  {
    getMetalScript = [archive getMetalScript];
    if (getMetalScript)
    {
      v5 = getMetalScript;
      ptr = self->_mtlScriptBuilder.__ptr_;

      MTLMetalScriptBuilder::initFromScript(ptr, v5);
    }
  }
}

- (void)initWithOptions:(void *)a1 device:url:error:.cold.2(void *a1)
{
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = [objc_msgSend(a1 "absoluteString")];
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "MTLBinaryArchive - load from URL: '%s'", v2, v3, v4, v5, v6, DWORD2(v6));
}

- (void)loadFromURL:(uint8_t *)buf error:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t *a2, uint8_t *buf, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *buf = 136315650;
  *(buf + 4) = a4;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  *(buf + 11) = 2080;
  *(buf + 3) = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unable to find %s slice or a compatible one in binary archive '%s' \n available slices: %s \n", buf, 0x20u);
}

- (void)flatBufferFromJSON:schema:schemaSize:.cold.1()
{
  OUTLINED_FUNCTION_1_2(*MEMORY[0x1E69E9840]);
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = v0;
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "cannot load schema with error %s", v2, v3, v4, v5, v6, DWORD2(v6));
}

- (void)flatBufferFromJSON:schema:schemaSize:.cold.2()
{
  OUTLINED_FUNCTION_1_2(*MEMORY[0x1E69E9840]);
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = v0;
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "cannot decode flatbuffert with error %s", v2, v3, v4, v5, v6, DWORD2(v6));
}

- (void)materializeBitCode:(void *)a1 atIndex:.cold.1(void *a1)
{
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = [objc_msgSend(a1 "localizedDescription")];
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "Error loading machO library: %s", v2, v3, v4, v5, v6, DWORD2(v6));
}

@end