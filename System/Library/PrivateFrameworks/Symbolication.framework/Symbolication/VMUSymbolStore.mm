@interface VMUSymbolStore
- (BOOL)_readContentsOfDsymFile:(id)file error:(id *)error;
- (BOOL)resymbolicateWithDsymPath:(id)path libraryNames:(id)names all:(BOOL)all progress:(id)progress showDebugInfo:(BOOL)info error:(id *)error;
- (VMUProcessObjectGraph)graph;
- (VMUSymbolStore)initWithCoder:(id)coder;
- (VMUSymbolStore)initWithSymbolicator:(_CSTypeRef)symbolicator debugTimer:(id)timer;
- (_CSTypeRef)symbolicator;
- (id).cxx_construct;
- (id)_createResymbolicatedSignature;
- (id)_createSymbolicatorSignature;
- (void)_flagSymbolOwnersForResymbolication;
- (void)_groupAddressTrackerByUuid;
- (void)addAddress:(unint64_t)address origin:(int)origin;
- (void)addBacktrace:(id)backtrace origin:(int)origin;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMUSymbolStore

- (VMUSymbolStore)initWithSymbolicator:(_CSTypeRef)symbolicator debugTimer:(id)timer
{
  timerCopy = timer;
  v10.receiver = self;
  v10.super_class = VMUSymbolStore;
  v7 = [(VMUSymbolStore *)&v10 init];
  if (v7)
  {
    v7->_symbolicator._opaque_1 = CSRetain();
    v7->_symbolicator._opaque_2 = v8;
    objc_storeStrong(&v7->_debugTimer, timer);
    v7->_debugStore = 0;
  }

  return v7;
}

- (void)dealloc
{
  CSRelease();
  v3.receiver = self;
  v3.super_class = VMUSymbolStore;
  [(VMUSymbolStore *)&v3 dealloc];
}

- (VMUSymbolStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VMUSymbolStore;
  v5 = [(VMUSymbolStore *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = v5->_signature;
    if (v8)
    {
      v5->_symbolicator._opaque_1 = MEMORY[0x1C695DC00](v8, 0);
      v5->_symbolicator._opaque_2 = v9;
      if (CSIsNull() && v5->_debugStore)
      {
        v10 = *MEMORY[0x1E69E9848];
        v11 = "VMUSymbolStore failed to create the symbolicator from signature.\n";
        v12 = 65;
LABEL_8:
        fwrite(v11, v12, 1uLL, v10);
      }
    }

    else if (v5->_debugStore)
    {
      v10 = *MEMORY[0x1E69E9848];
      v11 = "VMUSymbolStore failed to decode symbolicator signature or it is missing.\n";
      v12 = 73;
      goto LABEL_8;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_resymbolicatedSuccessfully && self->_signature)
  {
    _createResymbolicatedSignature = [(VMUSymbolStore *)self _createResymbolicatedSignature];
    signature = self->_signature;
    self->_signature = _createResymbolicatedSignature;
  }

  v7 = self->_signature;
  if (!v7)
  {
    debugTimer = self->_debugTimer;
    if (debugTimer)
    {
      signpostID = [(VMUDebugTimer *)debugTimer signpostID];
      debugTimer = self->_debugTimer;
      if (signpostID)
      {
        logHandle = [(VMUDebugTimer *)debugTimer logHandle];
        signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "VMUSymbolStore", "", buf, 2u);
        }

        debugTimer = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)debugTimer endEvent:"VMUSymbolStore"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUSymbolStore" message:"creating symbolicator signature"];
    v12 = self->_debugTimer;
    if (v12)
    {
      logHandle2 = [(VMUDebugTimer *)v12 logHandle];
      signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
      {
        *v22 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "VMUSymbolStore", "creating symbolicator signature", v22, 2u);
      }
    }

    _createSymbolicatorSignature = [(VMUSymbolStore *)self _createSymbolicatorSignature];
    v16 = self->_signature;
    self->_signature = _createSymbolicatorSignature;

    v17 = self->_debugTimer;
    if (v17)
    {
      signpostID4 = [(VMUDebugTimer *)v17 signpostID];
      v17 = self->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v17 logHandle];
        signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID5, "VMUSymbolStore", "", v21, 2u);
        }

        v17 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v17 endEvent:"VMUSymbolStore"];
    v7 = self->_signature;
  }

  [coderCopy encodeObject:v7 forKey:@"signature"];
}

- (void)addAddress:(unint64_t)address origin:(int)origin
{
  addressCopy = address;
  if (address)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(&self->_addressesTracker, &addressCopy, &addressCopy);
    if (origin <= 4 && self->_debugStore)
    {
      ++*(&self->backtraceSample + (8 * origin));
    }
  }
}

- (void)addBacktrace:(id)backtrace origin:(int)origin
{
  v4 = *&origin;
  backtraceCopy = backtrace;
  for (i = 0; i < [backtraceCopy backtraceLength]; ++i)
  {
    -[VMUSymbolStore addAddress:origin:](self, "addAddress:origin:", *([backtraceCopy backtrace] + 8 * i), v4);
  }
}

- (void)_groupAddressTrackerByUuid
{
  for (i = self->_addressesTracker.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[2];
    v9._opaque_1 = CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    _uuidStringForOwner(__p, v9);
    v8 = __p;
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_addressesGroupedByUuid.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v8);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(v4 + 10, &v7, &v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (id)_createSymbolicatorSignature
{
  [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
  if (self->_debugStore)
  {
    fprintf(*MEMORY[0x1E69E9848], "Number of addresses sent to VMUSymbolStore by client classes:\nFor backtrace sample: %zu\nFor binary sections: %zu\nFor global variables: %zu\nFor malloc stack logging: %zu\nFor hex found in node labels: %zu\nTotal unique addresses to be saved to symbolicator signature: %zu\nNumber of UUIDs in the signature: %zu\n", self->backtraceSample, self->binarySection, self->globalVariable, self->mallocStackLogging, self->hexFromLabels, self->_addressesTracker.__table_.__size_, self->_addressesGroupedByUuid.__table_.__size_);
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4812000000;
  v5[3] = __Block_byref_object_copy__1;
  v5[4] = __Block_byref_object_dispose__1;
  v5[5] = &unk_1C6872315;
  v7 = 0;
  v8 = 0;
  __p = 0;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  CSSymbolicatorCreateWithSymbolOwners();
  Signature = CSSymbolicatorCreateSignature();
  CSRelease();
  _Block_object_dispose(v5, 8);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return Signature;
}

void __46__VMUSymbolStore__createSymbolicatorSignature__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  opaque_2 = a2._opaque_2;
  opaque_1 = a2._opaque_1;
  _uuidStringForOwner(v13, a2);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), v13);
  if (v5)
  {
    std::unordered_set<unsigned long long>::unordered_set(v12, (v5 + 5));
    std::unordered_set<unsigned long long>::unordered_set(v10, v12);
    *&v11 = _sparsifySymbolOwner(opaque_1, opaque_2, v10);
    *(&v11 + 1) = v6;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
    if (CSIsNull())
    {
      if (*(*(a1 + 32) + 120) == 1)
      {
        v7 = *MEMORY[0x1E69E9848];
        Name = CSSymbolOwnerGetName();
        v9 = v13;
        if (v14 < 0)
        {
          v9 = v13[0];
        }

        fprintf(v7, "VMUSymbolStore failed to create a sparse version of symbol owner '%s' with UUID: %s \n", Name, v9);
      }
    }

    else
    {
      std::vector<_CSTypeRef>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, &v11);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (id)_createResymbolicatedSignature
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  if (self->_debugStore && (v6[3] & 1) == 0)
  {
    fwrite("VMUSymbolStore failed to sparsify some of resymbolicated symbol owners.\n", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  Signature = CSSymbolicatorCreateSignature();
  _Block_object_dispose(&v5, 8);

  return Signature;
}

void __48__VMUSymbolStore__createResymbolicatedSignature__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  opaque_2 = a2._opaque_2;
  opaque_1 = a2._opaque_1;
  _uuidStringForOwner(v12, a2);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), v12);
  v6 = *(*(a1 + 32) + 112);
  if (v13 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v12[0];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v9 = [v6 objectForKeyedSubscript:v8];
  if (v9)
  {

    if (v5)
    {
      std::unordered_set<unsigned long long>::unordered_set(v11, (v5 + 5));
      std::unordered_set<unsigned long long>::unordered_set(v10, v11);
      _sparsifySymbolOwner(opaque_1, opaque_2, v10);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
      if (CSIsNull())
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11);
    }
  }

  else
  {
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

- (BOOL)resymbolicateWithDsymPath:(id)path libraryNames:(id)names all:(BOOL)all progress:(id)progress showDebugInfo:(BOOL)info error:(id *)error
{
  allCopy = all;
  v52[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  namesCopy = names;
  progressCopy = progress;
  v17 = progressCopy;
  self->_debugStore = info;
  if (pathCopy && progressCopy)
  {

    v17 = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resymbolicationUUIDs = self->_resymbolicationUUIDs;
  self->_resymbolicationUUIDs = dictionary;

  if (self->_signature)
  {
    if (CSSymbolicatorIsKernelSymbolicator())
    {
      WeakRetained = objc_loadWeakRetained(&self->_graph);
      stackLogReader = [WeakRetained stackLogReader];

      if (stackLogReader)
      {
        v22 = objc_loadWeakRetained(&self->_graph);
        stackLogReader2 = [v22 stackLogReader];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke;
        v44[3] = &unk_1E8277EA0;
        v44[4] = self;
        [stackLogReader2 enumerateUniquingTable:v44];

        [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
      }
    }

    [(VMUSymbolStore *)self _extractAddressesFromSymbolicator];
  }

  else
  {
    [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
  }

  if (self->_addressesGroupedByUuid.__table_.__size_)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    if (pathCopy)
    {
      if (![(VMUSymbolStore *)self _readContentsOfDsymFile:pathCopy error:error])
      {
        goto LABEL_31;
      }
    }

    else if (namesCopy)
    {
      v27 = [MEMORY[0x1E695DFD8] setWithArray:namesCopy];
      v28 = dictionary2;
      CSSymbolicatorForeachSymbolOwnerAtTime();
      if (![(__CFString *)v28 count])
      {
        if (error)
        {
          v36 = MEMORY[0x1E696ABC0];
          v49 = *MEMORY[0x1E696A578];
          v50 = @"No matching libraries found in this memgraph";
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *error = [v36 errorWithDomain:@"Memgraph Resymbolication Error" code:3 userInfo:v37];
        }

        LOBYTE(error) = 0;
        dictionary2 = v28;
        goto LABEL_32;
      }
    }

    else if (allCopy)
    {
      v29 = objc_autoreleasePoolPush();
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_3;
      v41 = &unk_1E8277EF0;
      selfCopy = self;
      v43 = dictionary2;
      CSSymbolicatorForeachSymbolOwnerAtTime();

      objc_autoreleasePoolPop(v29);
    }

    if ([(__CFString *)dictionary2 count:v38]&& ![(VMUSymbolStore *)self _getDsymPathsForUUIDs:dictionary2 andReportProgress:v17])
    {
      if (!error)
      {
        goto LABEL_32;
      }

      v33 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"No dSYMs were found";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *error = [v33 errorWithDomain:@"Memgraph Resymbolication Error" code:4 userInfo:v34];
    }

    else
    {
      [(VMUSymbolStore *)self _flagSymbolOwnersForResymbolication];
      if ([(VMUSymbolStore *)self _refillSymbolOwnersWithDataAndReportProgress:v17])
      {
        v30 = objc_loadWeakRetained(&self->_graph);
        [v30 resymbolicatePrivateMaps];

        LOBYTE(error) = 1;
        self->_resymbolicatedSuccessfully = 1;
LABEL_32:

        goto LABEL_33;
      }

      if (!error)
      {
        goto LABEL_32;
      }

      v31 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"CoreSymbolication failed to resymbolicate all symbol owners";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [v31 errorWithDomain:@"Memgraph Resymbolication Error" code:5 userInfo:v32];
    }

LABEL_31:
    LOBYTE(error) = 0;
    goto LABEL_32;
  }

  if (error)
  {
    dictionary2 = @"Nothing to symbolicate. All addresses in the memgraph are already symbolicated.";
    if (os_variant_has_internal_content())
    {
      dictionary2 = [@"Nothing to symbolicate. All addresses in the memgraph are already symbolicated." stringByAppendingString:{@"\n\nIf after processing this memgraph with other cli tools you still see non-symbolicated addresses for some binary images, please file a Radar to 'Symbolication | Xcode' and attach the memgraph and the non-symbolicated output of interest."}];
    }

    v25 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52[0] = dictionary2;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    *error = [v25 errorWithDomain:@"Memgraph Resymbolication Error" code:0 userInfo:v26];

    goto LABEL_31;
  }

LABEL_33:

  return error;
}

void __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_2(void *a1, unint64_t a2, unint64_t a3)
{
  Name = CSSymbolOwnerGetName();
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    v15._opaque_1 = a2;
    v15._opaque_2 = a3;
    _uuidStringForOwner(__p, v15);
    if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((a1[5] + 16), __p))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
      v10 = a1[6];
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      [v10 setObject:v9 forKeyedSubscript:v12];
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_3(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(__p, a2);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), __p))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetName()];
    v4 = *(a1 + 40);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    [v4 setObject:v3 forKeyedSubscript:v6];
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void __51__VMUSymbolStore__extractAddressesFromSymbolicator__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(&v3, a2);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  CSSymbolOwnerForeachSymbol();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void *__51__VMUSymbolStore__extractAddressesFromSymbolicator__block_invoke_2(uint64_t a1, uint64_t a2)
{
  Range = CSSymbolGetRange();
  v3 = *(a1 + 32);
  v8 = a1 + 40;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 16), (a1 + 40), &std::piecewise_construct, &v8, &v7);
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(v4 + 10, &Range, &Range);
}

- (BOOL)_readContentsOfDsymFile:(id)file error:(id *)error
{
  v58[1] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__39;
  v50 = __Block_byref_object_dispose__40;
  v51 = 0;
  fileCopy = file;
  v36 = [fileCopy stringByAppendingString:@"/Contents/Resources/DWARF/"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v45 = 0;
  v33 = [defaultManager subpathsOfDirectoryAtPath:v36 error:&v45];
  v32 = v45;

  if (!v33 || ![v33 count])
  {
    v18 = MEMORY[0x1E696AEC0];
    if (v32)
    {
      localizedDescription = [v32 localizedDescription];
    }

    else
    {
      localizedDescription = &stru_1F461F9C8;
    }

    v5 = [v18 stringWithFormat:@"Failed to find the binary in the dSYM: '%@'. %@\n", fileCopy, localizedDescription];
    if (v32)
    {
    }

    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58[0] = v5;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      *error = [v20 errorWithDomain:@"Memgraph Resymbolication Error" code:1 userInfo:v21];
    }

    goto LABEL_23;
  }

  context = objc_autoreleasePoolPush();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v33;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v6)
  {
    v7 = *v42;
LABEL_5:
    v8 = 0;
    while (1)
    {
      v9 = v5;
      if (*v42 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = [v36 stringByAppendingString:*(*(&v41 + 1) + 8 * v8)];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v11 = v10;
      [v10 UTF8String];
      v12 = v10;
      CSSymbolicatorForeachSymbolicatorWithPath();
      v13 = v38[3];
      if (!v13)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read symbol data from the dSYM: '%@'.", v12];

        v9 = v14;
      }

      v15 = v13 == 0;

      v5 = v9;
      _Block_object_dispose(&v37, 8);

      if (v15)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  if (v5)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55 = v5;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *error = [v16 errorWithDomain:@"Memgraph Resymbolication Error" code:2 userInfo:v17];
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v24 = [(NSMutableDictionary *)self->_resymbolicationUUIDs count];
  v5 = 0;
  if (error && !v24)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nothing to symbolicate. This dSYM does not contain symbols for '%@' binary. For more information, please compare the UUIDs.", v47[5]];
    if (os_variant_has_internal_content())
    {
      v26 = [v25 stringByAppendingFormat:@"\n\nIf after processing this memgraph with other cli tools and verifying the UUIDs you still see non-symbolicated addresses for '%@', please file a Radar to 'Symbolication | Xcode' and attach the memgraph, the dSYM and the non-symbolicated output of interest.", v47[5]];

      v5 = v26;
    }

    else
    {
      v5 = v25;
    }

    v27 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v53 = v5;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    *error = [v27 errorWithDomain:@"Memgraph Resymbolication Error" code:0 userInfo:v28];
  }

  v22 = [(NSMutableDictionary *)self->_resymbolicationUUIDs count]!= 0;
LABEL_24:

  _Block_object_dispose(&v46, 8);
  return v22;
}

void __48__VMUSymbolStore__readContentsOfDsymFile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v3 = v4;
  CSSymbolicatorForeachSymbolOwnerAtTime();
}

void __48__VMUSymbolStore__readContentsOfDsymFile_error___block_invoke_2(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetName()];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  ++*(*(a1[7] + 8) + 24);
  v15._opaque_1 = a2;
  v15._opaque_2 = a3;
  _uuidStringForOwner(__p, v15);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((a1[4] + 16), __p))
  {
    v9 = a1[5];
    v10 = *(a1[4] + 112);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    [v10 setObject:v9 forKeyedSubscript:v12];
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)_flagSymbolOwnersForResymbolication
{
  v2 = objc_autoreleasePoolPush();
  CSSymbolicatorForeachSymbolOwnerAtTime();
  objc_autoreleasePoolPop(v2);
}

void __53__VMUSymbolStore__flagSymbolOwnersForResymbolication__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(__p, a2);
  v3 = *(*(a1 + 32) + 112);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 UTF8String];
    CSSymbolOwnerSetPathForSymbolication();
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (VMUProcessObjectGraph)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);

  return WeakRetained;
}

- (_CSTypeRef)symbolicator
{
  opaque_2 = self->_symbolicator._opaque_2;
  opaque_1 = self->_symbolicator._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end