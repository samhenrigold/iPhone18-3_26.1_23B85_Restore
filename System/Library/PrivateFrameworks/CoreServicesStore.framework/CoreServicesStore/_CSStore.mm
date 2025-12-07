@interface _CSStore
+ (void)initialize;
- (BOOL)isReadOnly;
- (_CSStore)initWithCoder:(id)coder;
- (_CSStore)initWithContentsOfURL:(id)l error:(id *)error;
- (_CSStore)initWithError:(id *)error;
- (id).cxx_construct;
- (id)description;
- (id)initByMovingStore:(void *)store;
- (id)mutableCopyWithZone:(_NSZone *)zone error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessContext:(id)context;
- (void)setReadOnly:(BOOL)only;
- (void)setUnitIdentifierExhaustionHandler:(id)handler;
@end

@implementation _CSStore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = getenv("CS_ENABLE_IO_LOGGING");
    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
      bOOLValue = [v3 BOOLValue];

      if (bOOLValue)
      {
        CSStore2::Writer::logIO = 1;
      }
    }
  }
}

- (BOOL)isReadOnly
{
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
      if (performConstantAssertions)
      {
        v4 = self->_accessContext;
        if (v4)
        {
          (*(*v4->_impl.__ptr_ + 8))(v4->_impl.__ptr_);
        }
      }
    }
  }

  return *&self->_store.flags & 1;
}

- (id).cxx_construct
{
  *(self + 320) = 0;
  *(self + 324) = 0;
  *(self + 41) = 0;
  *(self + 1) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(self + 1) = v2;
  *(self + 2) = v2;
  *(self + 3) = v2;
  *(self + 4) = v2;
  *(self + 5) = v2;
  *(self + 6) = v2;
  *(self + 7) = v2;
  *(self + 8) = v2;
  *(self + 9) = v2;
  *(self + 10) = v2;
  *(self + 11) = v2;
  *(self + 12) = v2;
  *(self + 13) = v2;
  *(self + 14) = v2;
  *(self + 15) = v2;
  *(self + 16) = v2;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 36) = 0;
  atomic_store(0, self + 37);
  atomic_store(0, self + 38);
  *(self + 39) = atomic_fetch_add(&CSStore2::Store::Store(void)::nextFamily, 1uLL);
  *(self + 320) = 0;
  *(self + 321) = v5;
  *(self + 323) = v6;
  *(self + 324) = 0;
  *(self + 325) = v3;
  *(self + 327) = v4;
  *(self + 336) = 0;
  return self;
}

- (_CSStore)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSStore.mm" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"[aDecoder isKindOfClass:[NSXPCCoder class]]"}];

  if (!self)
  {
    goto LABEL_16;
  }

LABEL_3:
  v21 = 0;
  v6 = coderCopy;
  v7 = @"XPCRepresentation";
  v22 = 0;
  if (!v6)
  {
    v14 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A278];
    v23[1] = @"Line";
    v24[0] = @"paramErr";
    v24[1] = &unk_1F37D7AD8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v11 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
LABEL_9:

    v10 = 0;
    v13 = 1;
LABEL_10:
    v16 = v11;
    v21 = v11;
    v12 = v11;
    goto LABEL_11;
  }

  v8 = [v6 decodeXPCObjectOfType:MEMORY[0x1E69E9E70] forKey:@"XPCRepresentation"];
  if (!v8)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
    v15 = 0;
    goto LABEL_9;
  }

  CSStore2::Store::CreateWithXPCObject(v24, v8, &v21);
  v9 = v24[0];
  v24[0] = 0;
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v22, v9);
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](v24, 0);
  v10 = v22;

  v11 = 0;
  v12 = 0;
  v13 = v10 == 0;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_11:

  v17 = v21;
  if (v13)
  {
    [v6 failWithError:v17];

    v18 = 0;
  }

  else
  {
    v18 = [(_CSStore *)self initByMovingStore:v10];
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v22);

LABEL_17:
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSStore.mm" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"[aCoder isKindOfClass:[NSXPCCoder class]]"}];
  }

  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_);
    }
  }

  v13 = coderCopy;
  v7 = @"XPCRepresentation";
  if (v13)
  {
    v14 = 0;
    v8 = CSStore2::Store::encodeAsXPCObject(self->_store.dataContainer, &v14);
    v9 = v14;
    v10 = v9;
    if (v8)
    {
      [v13 encodeXPCObject:v8 forKey:@"XPCRepresentation"];
    }

    else
    {
      v11 = CSStore2::GetLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_fault_impl(&dword_1B9D5B000, v11, OS_LOG_TYPE_FAULT, "Unexpectedly could not encode store: %@", buf, 0xCu);
      }
    }
  }
}

- (id)description
{
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
    }
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  dataContainer = self->_store.dataContainer;
  v8 = [v4 stringWithFormat:@"<%@ %p> { p = %p, gen = %llu, length = %llu/%llu/%llu }", v6, self, *(dataContainer + 1), *(*(dataContainer + 1) + 8), *(dataContainer + 4), *(*(dataContainer + 1) + 12), *(*(dataContainer + 1) + 16)];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone error:(id *)error
{
  v28[3] = *MEMORY[0x1E69E9840];
  if (performConstantAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (*(*accessContext->_impl.__ptr_ + 8))(accessContext->_impl.__ptr_, a2);
    }
  }

  dataContainer = self->_store.dataContainer;
  if (dataContainer)
  {
    v9 = *(dataContainer + 1);
    v10 = *(dataContainer + 4);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  CSStore2::Store::CreateWithBytes(&v19, v9, v10, error);
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__114;
  v25 = __Block_byref_object_dispose__115;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZNK8CSStore25Store4copyEPU15__autoreleasingP7NSError_block_invoke;
  v20[3] = &unk_1E7ED3588;
  v20[4] = &v21;
  CSStore2::Store::enumerateTables(v19, v20);
  v11 = v22[5];
  if (v11)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v27[0] = *MEMORY[0x1E696A278];
      v27[1] = @"Line";
      v28[0] = @"kCSStoreValidationErr";
      v28[1] = &unk_1F37D7AC0;
      v27[2] = @"FullTable";
      v28[2] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
      *error = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-9491 userInfo:v13];
    }

    std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v19, 0);
  }

  _Block_object_dispose(&v21, 8);

  v14 = v19;
  if (v19)
  {
    v15 = *(*(self->_store.dataContainer + 1) + 8);
    v19[38] = self->_store.pedigree.family;
    *(v14 + 78) = v15;
    *(v14 + 316) = 1;
    v16 = [objc_opt_class() allocWithZone:zone];
    v17 = [v16 initByMovingStore:v19];
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v19);
  return v17;
}

- (void)setReadOnly:(BOOL)only
{
  onlyCopy = only;
  v22 = *MEMORY[0x1E69E9840];
  if (performMutatingAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (**accessContext->_impl.__ptr_)(accessContext->_impl.__ptr_, a2);
      if (performMutatingAssertions)
      {
        v6 = self->_accessContext;
        if (v6)
        {
          (**v6->_impl.__ptr_)(v6->_impl.__ptr_);
        }
      }
    }
  }

  if ((*&self->_store.flags & 1) != onlyCopy)
  {
    if (onlyCopy)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    dataContainer = self->_store.dataContainer;
    if (dataContainer)
    {
      v9 = *(dataContainer + 1);
      v10 = *(dataContainer + 4);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = MEMORY[0x1BFAE65B0](*MEMORY[0x1E69E9A60], v9, v10, 0, v7);
    if (v11)
    {
      v12 = v11;
      v13 = CSStore2::GetLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 134218752;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        v18 = 2048;
        v19 = v7;
        v20 = 2048;
        v21 = v12;
        _os_log_error_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_ERROR, "Failed to set protection of region at %p length %zu to %lx: %lx", &v14, 0x2Au);
      }
    }

    *&self->_store.flags = *&self->_store.flags & 0xFE | onlyCopy;
  }
}

- (void)setUnitIdentifierExhaustionHandler:(id)handler
{
  handlerCopy = handler;
  if (performMutatingAssertions == 1)
  {
    accessContext = self->_accessContext;
    if (accessContext)
    {
      (**accessContext->_impl.__ptr_)(accessContext->_impl.__ptr_);
      if (performMutatingAssertions)
      {
        v6 = self->_accessContext;
        if (v6)
        {
          (**v6->_impl.__ptr_)(v6->_impl.__ptr_);
        }
      }
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___CSStore_setUnitIdentifierExhaustionHandler___block_invoke;
  v11[3] = &unk_1E7ED36C0;
  v7 = handlerCopy;
  v12 = v7;
  v8 = v11;
  v9 = [v8 copy];
  unitIdentifierExhaustionHandler = self->_store.unitIdentifierExhaustionHandler;
  self->_store.unitIdentifierExhaustionHandler = v9;
}

- (void)setAccessContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_accessContext, context);
  accessContext = self->_accessContext;
  if (accessContext && (*(*accessContext->_impl.__ptr_ + 40))(accessContext->_impl.__ptr_) && [_CSStore setAccessContext:]::once != -1)
  {
    dispatch_once(&[_CSStore setAccessContext:]::once, &__block_literal_global_165);
  }
}

- (_CSStore)initWithContentsOfURL:(id)l error:(id *)error
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, l, error);
  v6 = v5;
  v7 = v4;
  v81 = *MEMORY[0x1E69E9840];
  v9 = v8;
  v10 = v9;
  v72 = 0;
  if (!v9 || ![v9 isFileURL])
  {
    v17 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    *&buf[8] = @"Line";
    *&__ptr = @"paramErr";
    *(&__ptr + 1) = &unk_1F37D7B80;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__ptr forKeys:buf count:2];
    v13 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    goto LABEL_10;
  }

  v74 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10 options:1 error:&v74];
  v12 = v74;
  v13 = v12;
  if (!v11)
  {
    goto LABEL_10;
  }

  v14 = CSStore2::GetLog(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v54 = [v11 length];
    LODWORD(__ptr) = 134217984;
    *(&__ptr + 4) = v54;
    _os_log_debug_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_DEBUG, "Creating CSStore from file with length %llu", &__ptr, 0xCu);
  }

  if ([v11 length] >> 32)
  {
    v15 = MEMORY[0x1E696ABC0];
    *buf = *MEMORY[0x1E696A278];
    *&buf[8] = @"Line";
    *&__ptr = @"fileBoundsErr";
    *(&__ptr + 1) = &unk_1F37D7B68;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__ptr forKeys:buf count:2];
    v16 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-1309 userInfo:?];

    v13 = v16;
    goto LABEL_8;
  }

  v35 = v11;
  v73 = v13;
  CSStore2::Store::_Create(&__ptr, [v11 bytes], objc_msgSend(v11, "length"), 1, 1, &v73);
  v70 = v73;

  v36 = __ptr;
  *&__ptr = 0;
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&v72, v36);
  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](&__ptr, 0);
  if (v72)
  {
    v18 = 0;
LABEL_27:
    v13 = v70;
    goto LABEL_11;
  }

  userInfo = [v70 userInfo];
  v38 = [userInfo objectForKey:@"ZeroedRanges"];
  v39 = v38 == 0;

  if (v39)
  {
    v18 = 1;
    goto LABEL_27;
  }

  userInfo2 = [v70 userInfo];
  v71 = [userInfo2 mutableCopy];

  v41 = v11;
  bytes = [v11 bytes];
  v42 = [v11 length];
  v68 = v10;
  v43 = v68;
  v44 = fopen([v68 fileSystemRepresentation], "rb");
  if (!v44)
  {
    v55 = CSStore2::GetLog(0);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__ptr) = 138412290;
      *(&__ptr + 4) = v68;
      _os_log_error_impl(&dword_1B9D5B000, v55, OS_LOG_TYPE_ERROR, "verifying map with file: URL %@ could not be opened", &__ptr, 0xCu);
    }

    v56 = 4;
    goto LABEL_59;
  }

  v45 = 0;
  v46 = 0;
  v47 = v42;
  while (!feof(v44) && !ferror(v44))
  {
    v48 = fread(&__ptr, 1uLL, 0x1000uLL, v44);
    v49 = v48;
    if (!v48)
    {
      goto LABEL_43;
    }

    if (v48 <= v47 - v45)
    {
      v51 = memcmp(&__ptr, (bytes + v45), v48);
      if (!v51)
      {
        goto LABEL_43;
      }

      v50 = CSStore2::GetLog(v51);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = v49 + v45;
        _os_log_error_impl(&dword_1B9D5B000, v50, OS_LOG_TYPE_ERROR, "file/map mismatch between offsets %#zx and %#zx", buf, 0x16u);
      }

      v46 = 1;
    }

    else
    {
      v50 = CSStore2::GetLog(v48);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v47;
        _os_log_error_impl(&dword_1B9D5B000, v50, OS_LOG_TYPE_ERROR, "file/map mismatch: file longer than map of length %#zx", buf, 0xCu);
      }

      v46 = 3;
    }

LABEL_43:
    v45 += v49;
  }

  v52 = ferror(v44);
  if (v52)
  {
    v53 = CSStore2::GetLog(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__ptr) = 0;
      _os_log_error_impl(&dword_1B9D5B000, v53, OS_LOG_TYPE_ERROR, "file/map comparison read error", &__ptr, 2u);
    }

    v46 = 4;
    goto LABEL_48;
  }

  if (v47 != v45)
  {
    v57 = feof(v44);
    if (v57)
    {
      v53 = CSStore2::GetLog(v57);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__ptr) = 134217984;
        *(&__ptr + 4) = v47;
        _os_log_error_impl(&dword_1B9D5B000, v53, OS_LOG_TYPE_ERROR, "file/map mismatch: file shorter than map of length %#zx", &__ptr, 0xCu);
      }

      v46 = 2;
LABEL_48:
    }
  }

  fclose(v44);
  v56 = v46;
LABEL_59:

  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
  [v71 setObject:v58 forKeyedSubscript:@"filecmp"];

  v59 = v11;
  CSStore2::Store::_Create(buf, [v11 bytes], objc_msgSend(v11, "length"), 1, 0, 0);
  v60 = *buf;
  if (*buf)
  {
    *&__ptr = MEMORY[0x1E69E9820];
    *(&__ptr + 1) = 3221225472;
    v77 = ___ZN8CSStore25Store23CreateWithContentsOfURLEP5NSURLPU15__autoreleasingP7NSError_block_invoke;
    v78 = &unk_1E7ED35B0;
    v80 = *buf;
    v61 = v71;
    v79 = v61;
    CSStore2::Store::enumerateTables(v60, &__ptr);
    v63 = CSStore2::String::GetDebugDescriptionOfCache(v60, v62);
    [v61 setObject:v63 forKeyedSubscript:@"string$"];
  }

  v64 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [v70 domain];
  code = [v70 code];
  v67 = [v71 copy];
  v13 = [v64 initWithDomain:domain code:code userInfo:v67];

  std::unique_ptr<CSStore2::Store>::reset[abi:nn200100](buf, 0);
LABEL_8:

LABEL_10:
  v18 = 1;
LABEL_11:

  v19 = objc_autoreleasePoolPush();
  if (((v10 != 0) & v18) == 1)
  {
    if (v13)
    {
      userInfo3 = [v13 userInfo];
      v21 = *MEMORY[0x1E696A998];
      v22 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
      v23 = v22 == 0;

      if (v23)
      {
        userInfo4 = [v13 userInfo];
        v25 = [userInfo4 mutableCopy];

        [v25 setObject:v10 forKeyedSubscript:v21];
        v26 = MEMORY[0x1E696ABC0];
        domain2 = [v13 domain];
        v28 = [v26 errorWithDomain:domain2 code:objc_msgSend(v13 userInfo:{"code"), v25}];

        v13 = v28;
      }
    }
  }

  objc_autoreleasePoolPop(v19);
  if (v18)
  {
    v29 = v13;
    v30 = v13;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  if (v72)
  {
    v32 = [v7 initByMovingStore:?];
    if (!v6)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (!v32)
    {
      v33 = v31;
      *v6 = v31;
    }
  }

  else
  {

    v32 = 0;
    if (v6)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v72);

  return v32;
}

- (_CSStore)initWithError:(id *)error
{
  v9 = 0;
  CSStore2::Store::_Create(&v10, 0, 0, 0, 0, &v9);
  v5 = v9;
  if (v10)
  {
    v6 = [(_CSStore *)self initByMovingStore:?];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *error = v5;
  }

LABEL_7:
  std::unique_ptr<CSStore2::Store>::~unique_ptr[abi:nn200100](&v10);

  return v6;
}

- (id)initByMovingStore:(void *)store
{
  v21.receiver = self;
  v21.super_class = _CSStore;
  v4 = [(_CSStore *)&v21 init];
  v5 = (v4 + 8);
  if (v4)
  {
    v6 = v5 == store;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_storeStrong(v5, *store);
    v7 = *store;
    *store = 0;

    v8 = *(store + 8);
    v9 = *(store + 24);
    v10 = *(store + 56);
    *(v4 + 3) = *(store + 40);
    *(v4 + 4) = v10;
    *(v4 + 1) = v8;
    *(v4 + 2) = v9;
    v11 = *(store + 72);
    v12 = *(store + 88);
    v13 = *(store + 120);
    *(v4 + 7) = *(store + 104);
    *(v4 + 8) = v13;
    *(v4 + 5) = v11;
    *(v4 + 6) = v12;
    v14 = *(store + 136);
    v15 = *(store + 152);
    v16 = *(store + 184);
    *(v4 + 11) = *(store + 168);
    *(v4 + 12) = v16;
    *(v4 + 9) = v14;
    *(v4 + 10) = v15;
    v17 = *(store + 200);
    v18 = *(store + 216);
    v19 = *(store + 248);
    *(v4 + 15) = *(store + 232);
    *(v4 + 16) = v19;
    *(v4 + 13) = v17;
    *(v4 + 14) = v18;
    *(v4 + 34) = *(store + 33);
    *(v4 + 280) = *(store + 17);
    atomic_store(0, v4 + 37);
    atomic_store(0, v4 + 38);
    *(v4 + 312) = *(store + 19);
  }

  return v4;
}

@end