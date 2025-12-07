@interface NLE5Embedding
+ (BOOL)compileEmbeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters;
+ (BOOL)isCompiledEmbeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters error:(id *)error;
+ (id)embeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters;
- (BOOL)_loadFunction:(const char *)function;
- (BOOL)isAdapterLoaded:(id)loaded;
- (BOOL)isBackboneLoaded;
- (BOOL)loadAdapter:(id)adapter;
- (BOOL)loadBackbone;
- (NLE5Embedding)initWithProgramLibrary:()unique_ptr<E5RT:(std:(void *)t :default_delete<E5RT::ProgramLibrary>>)a3 :ProgramLibrary andSubwordVocab:;
- (id).cxx_construct;
- (id)_embeddingDataForString:(id)string sequenceSize:(unint64_t *)size error:(id *)error;
- (id)_embeddingDataForTokenizedBatch:(id)batch withOutputProperties:(id)properties;
- (id)_tokenIDsForText:(id)text addBOS:(BOOL)s;
- (id)embeddingDataForString:(id)string sequenceSize:(unint64_t *)size error:(id *)error;
- (id)embeddingDataForTokenizedBatch:(id)batch withOutputProperties:(id)properties;
- (id)textForTokenIDs:(id)ds;
- (id)tokenIDsForText:(id)text;
- (void)_setInputFragments:(int *)fragments count:(unint64_t)count;
- (void)dealloc;
@end

@implementation NLE5Embedding

- (NLE5Embedding)initWithProgramLibrary:()unique_ptr<E5RT:(std:(void *)t :default_delete<E5RT::ProgramLibrary>>)a3 :ProgramLibrary andSubwordVocab:
{
  v13.receiver = self;
  v13.super_class = NLE5Embedding;
  v6 = [(NLE5Embedding *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_numInputs = 3;
    v6->_subwordVocabRef = t;
    v8 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = v6->_programLibrary.__ptr_;
    v7->_programLibrary.__ptr_ = v8;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    adapters = v7->_adapters;
    v7->_adapters = MEMORY[0x1E695E0F0];

    loadedFunction = v7->_loadedFunction;
    v7->_loadedFunction = 0;
  }

  return v7;
}

- (void)dealloc
{
  subwordVocabRef = self->_subwordVocabRef;
  if (subwordVocabRef)
  {
    CFRelease(subwordVocabRef);
  }

  v4.receiver = self;
  v4.super_class = NLE5Embedding;
  [(NLE5Embedding *)&v4 dealloc];
}

+ (id)embeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters
{
  eCopy = e;
  v51 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  adaptersCopy = adapters;
  if (pathCopy)
  {
    pathExtension = [pathCopy pathExtension];
    v10 = [pathExtension isEqualToString:@"mil"];

    if (v10)
    {
      stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
      v12 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"sp.dat"];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [defaultManager fileExistsAtPath:v12 isDirectory:0];

      if ((v14 & 1) == 0)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = NLGetLogCategory(0);
        internal = [v30 internal];

        if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
        {
          v32 = NLGetLogIdentifier(0);
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing sentence piece model for embedding at: %@", v12];
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v19 = 0;
        goto LABEL_29;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v50 = 0;
      if (getSentencePieceModelLoadQueue(void)::onceToken != -1)
      {
        +[NLE5Embedding embeddingModelWithModelPath:useANE:adapters:];
      }

      v15 = getSentencePieceModelLoadQueue(void)::queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__NLE5Embedding_embeddingModelWithModelPath_useANE_adapters___block_invoke;
      block[3] = &unk_1E76291B0;
      v44 = buf;
      v16 = v12;
      v43 = v16;
      dispatch_sync(v15, block);
      if (*(*&buf[8] + 24))
      {
        v17 = pathCopy;
        std::string::basic_string[abi:ne200100]<0>(__p, [pathCopy UTF8String]);
        compileModel(__p, eCopy, adaptersCopy);
        if (v48 < 0)
        {
          operator delete(*__p);
        }

        v18 = [NLE5Embedding alloc];
        v40 = v41;
        v41 = 0;
        v19 = [(NLE5Embedding *)v18 initWithProgramLibrary:&v40 andSubwordVocab:*(*&buf[8] + 24)];
        v20 = v40;
        v40 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }

        if ([adaptersCopy count])
        {
          v21 = [adaptersCopy copy];
          [(NLE5Embedding *)v19 setAdapters:v21];
        }

        v22 = v41;
        v41 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        if (v19)
        {
          goto LABEL_28;
        }

        v23 = *(*&buf[8] + 24);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = NLGetLogCategory(0);
        internal2 = [v35 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
        {
          v37 = NLGetLogIdentifier(0);
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load sentence piece model for embedding from: %@", v16];
          *__p = 138543618;
          *&__p[4] = v37;
          v46 = 2114;
          v47 = v38;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
      }

      v19 = 0;
LABEL_28:

      _Block_object_dispose(buf, 8);
LABEL_29:

      goto LABEL_30;
    }
  }

  v24 = objc_autoreleasePoolPush();
  v25 = NLGetLogCategory(0);
  internal3 = [v25 internal];

  if (os_log_type_enabled(internal3, OS_LOG_TYPE_ERROR))
  {
    v27 = NLGetLogIdentifier(0);
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path for MIL model: %@", pathCopy];
    *buf = 138543618;
    *&buf[4] = v27;
    *&buf[12] = 2114;
    *&buf[14] = pathCopy;
    _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v19 = 0;
LABEL_30:

  return v19;
}

uint64_t __61__NLE5Embedding_embeddingModelWithModelPath_useANE_adapters___block_invoke(uint64_t a1)
{
  result = NLEmbeddingSubwordVocabCreate();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)isCompiledEmbeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters error:(id *)error
{
  eCopy = e;
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  adaptersCopy = adapters;
  MEMORY[0x19EAFBE50](v23);
  std::string::basic_string[abi:ne200100]<0>(__p, "/private/var/db/com.apple.naturallanguaged");
  E5RT::E5CompilerConfigOptions::SetBundleCacheLocation();
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  E5RT::E5Compiler::MakeCompiler();
  v10 = pathCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [pathCopy UTF8String]);
  createE5CompilerOptions(eCopy, adaptersCopy);
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  v11 = pathCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [pathCopy UTF8String]);
  IsNewCompileRequired = E5RT::E5Compiler::IsNewCompileRequired();
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = IsNewCompileRequired ^ 1;
  v15 = NLGetLogCategory(0);
  internal = [v15 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NLGetLogIdentifier(0);
    v18 = "doesn't require";
    if (IsNewCompileRequired)
    {
      v18 = "requires";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' %s compilation", pathCopy, v18];
    *__p = 138543618;
    *&__p[4] = v17;
    v25 = 2114;
    v26 = v19;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", __p, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  if (v21)
  {
    (*(*v21 + 8))();
  }

  if (v22)
  {
    (*(*v22 + 8))();
  }

  MEMORY[0x19EAFBE60](v23);

  return v14;
}

+ (BOOL)compileEmbeddingModelWithModelPath:(id)path useANE:(BOOL)e adapters:(id)adapters
{
  eCopy = e;
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  adaptersCopy = adapters;
  v9 = objc_autoreleasePoolPush();
  v10 = NLGetLogCategory(0);
  internal = [v10 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NLGetLogIdentifier(0);
    v13 = MEMORY[0x1E696AEC0];
    v14 = [adaptersCopy componentsJoinedByString:@" / "];
    v15 = [v13 stringWithFormat:@"Compiling '%@' with adapters: %@", pathCopy, v14];
    *buf = 138543618;
    *&buf[4] = v12;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = NLContextualEmbeddingSignpostHandle(v16);
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "compileE5", &unk_19D4EF749, buf, 2u);
  }

  v21 = pathCopy;
  std::string::basic_string[abi:ne200100]<0>(buf, [pathCopy UTF8String]);
  compileModel(buf, eCopy, adaptersCopy);
  if (v25)
  {
    (*(*v25 + 8))();
  }

  if (v29 < 0)
  {
    operator delete(*buf);
  }

  v22 = v20;
  v23 = v22;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v23, OS_SIGNPOST_INTERVAL_END, v18, "compileE5", &unk_19D4EF749, buf, 2u);
  }

  return 1;
}

- (BOOL)_loadFunction:(const char *)function
{
  v83[6] = *MEMORY[0x1E69E9840];
  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(self->_programLibrary.__ptr_);
  std::unordered_map<std::string,std::shared_ptr<E5RT::ProgramFunction>>::unordered_map(v83, ExportedFunctions);
  std::string::basic_string[abi:ne200100]<0>(__p, function);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v83, __p);
  v7 = v6;
  if ((v82 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_69:
    v42 = objc_autoreleasePoolPush();
    v43 = NLGetLogCategory(self);
    internal = [v43 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v45 = NLGetLogIdentifier(self);
      function = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loaded mil library is missing %s function", function];
      *__p = 138543618;
      *&__p[4] = v45;
      v80 = 2114;
      v81 = function;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    goto LABEL_94;
  }

  operator delete(*__p);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  std::string::basic_string[abi:ne200100]<0>(__p, function);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v83, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = v8[6];
  v76 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v82 < 0)
  {
    operator delete(*__p);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:function];
  loadedFunction = self->_loadedFunction;
  self->_loadedFunction = v10;

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&self->_main_esop.__ptr_, __p);
  v12 = *__p;
  *__p = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(E5RT::ExecutionStreamOperation::GetInputPorts(self->_main_esop.__ptr_) + 16);
  if (!v13)
  {
LABEL_33:
    std::string::basic_string[abi:ne200100]<0>(__p, "mlm_input");
    v23 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p);
    v24 = v23;
    if (v82 < 0)
    {
      operator delete(*__p);
      if (v24)
      {
LABEL_35:
        for (i = *(E5RT::ExecutionStreamOperation::GetOutputPorts(self->_main_esop.__ptr_) + 16); i; i = *i)
        {
          PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(i[5]);
          v27 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
          E5RT::TensorDescriptor::AllocateMemory();
          v28 = i + 2;
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<E5RT::BufferObject>>(&self->_buffers.__table_.__bucket_list_.__ptr_, i + 2, (i + 2), __p);
          v29 = *__p;
          *__p = 0;
          if (v29)
          {
            (*(*v29 + 8))(v29);
          }

          *__p = i + 2;
          v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, i + 2, &std::piecewise_construct, __p, &v78)[6];
          v74 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          E5RT::IOPort::BindMemoryObject();
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          v31 = *(i + 39);
          if (v31 < 0)
          {
            if (i[3] != 14)
            {
              continue;
            }

            v28 = *v28;
          }

          else if (v31 != 14)
          {
            continue;
          }

          if (*v28 == 0x65626D655F6D6C6DLL && *(v28 + 6) == 0x73676E6964646562)
          {
            TensorShape = E5RT::TensorDescriptor::GetTensorShape(v27);
            if (TensorShape[1] - *TensorShape != 32)
            {
              v47 = objc_autoreleasePoolPush();
              v64 = NLGetLogCategory(self);
              internal2 = [v64 internal];

              if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
              {
                v65 = NLGetLogIdentifier(self);
                v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected output rank"];
                *__p = 138543618;
                *&__p[4] = v65;
                v80 = 2114;
                v81 = v66;
                _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }

            E5RT::TensorDescriptor::GetTensorDataTypeRef(v27);
            if ((E5RT::TensorDataType::IsType<float>() & 1) == 0)
            {
              v47 = objc_autoreleasePoolPush();
              v67 = NLGetLogCategory(self);
              internal2 = [v67 internal];

              if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
              {
                v68 = NLGetLogIdentifier(self);
                v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected output type"];
                *__p = 138543618;
                *&__p[4] = v68;
                v80 = 2114;
                v81 = v69;
                _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }

            v34 = *TensorShape;
            self->_dimension = *(*TensorShape + 24);
            if (self->_maximumSequenceLength != *(v34 + 8))
            {
              v47 = objc_autoreleasePoolPush();
              v70 = NLGetLogCategory(self);
              internal2 = [v70 internal];

              if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
              {
                v71 = NLGetLogIdentifier(self);
                v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Max sequence length not matching in input/output"];
                *__p = 138543618;
                *&__p[4] = v71;
                v80 = 2114;
                v81 = v72;
                _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
              }

              goto LABEL_92;
            }
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "mlm_embeddings");
        v35 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p);
        v36 = v35;
        if (v82 < 0)
        {
          operator delete(*__p);
          if (v36)
          {
LABEL_58:
            E5RT::ExecutionStream::CreateExecutionStream(__p, v35);
            v37 = *__p;
            *__p = 0;
            ptr = self->_stream.__ptr_;
            self->_stream.__ptr_ = v37;
            if (ptr)
            {
              (*(*ptr + 8))(ptr);
              v39 = *__p;
              *__p = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            cntrl = self->_main_esop.__cntrl_;
            v73 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            E5RT::ExecutionStream::EncodeOperation();
            if (v73)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v73);
            }

            if (v77)
            {
              (*(*v77 + 8))();
            }

            std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::~__hash_table(v83);
            return 1;
          }
        }

        else if (v35)
        {
          goto LABEL_58;
        }

        v47 = objc_autoreleasePoolPush();
        v52 = NLGetLogCategory(self);
        internal2 = [v52 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
        {
          v53 = NLGetLogIdentifier(self);
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s output is missing", "mlm_embeddings"];
          *__p = 138543618;
          *&__p[4] = v53;
          v80 = 2114;
          v81 = v54;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
        }

        goto LABEL_92;
      }
    }

    else if (v23)
    {
      goto LABEL_35;
    }

    v47 = objc_autoreleasePoolPush();
    v48 = NLGetLogCategory(self);
    internal2 = [v48 internal];

    if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
    {
      v50 = NLGetLogIdentifier(self);
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s input is missing", "mlm_input"];
      *__p = 138543618;
      *&__p[4] = v50;
      v80 = 2114;
      v81 = v51;
      _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
    }

    goto LABEL_92;
  }

  while (1)
  {
    v14 = E5RT::IOPort::GetPortDescriptorRef(v13[5]);
    v15 = E5RT::OperandDescriptor::TensorDescriptor(v14);
    E5RT::TensorDescriptor::AllocateMemory();
    v16 = v13 + 2;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<E5RT::BufferObject>>(&self->_buffers.__table_.__bucket_list_.__ptr_, v13 + 2, (v13 + 2), __p);
    v17 = *__p;
    *__p = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *__p = v13 + 2;
    v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, v13 + 2, &std::piecewise_construct, __p, &v78)[6];
    v75 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    v19 = *(v13 + 39);
    if (v19 < 0)
    {
      if (v13[3] != 9)
      {
        goto LABEL_32;
      }

      v16 = *v16;
    }

    else if (v19 != 9)
    {
      goto LABEL_32;
    }

    if (*v16 != 0x75706E695F6D6C6DLL || *(v16 + 8) != 116)
    {
      goto LABEL_32;
    }

    v21 = E5RT::TensorDescriptor::GetTensorShape(v15);
    if (v21[1] - *v21 != 32)
    {
      break;
    }

    E5RT::TensorDescriptor::GetTensorDataTypeRef(v15);
    if ((E5RT::TensorDataType::IsType<int>() & 1) == 0)
    {
      v47 = objc_autoreleasePoolPush();
      v58 = NLGetLogCategory(self);
      internal2 = [v58 internal];

      if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
      {
        v59 = NLGetLogIdentifier(self);
        v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input type"];
        *__p = 138543618;
        *&__p[4] = v59;
        v80 = 2114;
        v81 = v60;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
      }

      goto LABEL_92;
    }

    v22 = *v21;
    self->_maximumSequenceLength = *(*v21 + 8);
    if (self->_numInputs != *(v22 + 24))
    {
      v47 = objc_autoreleasePoolPush();
      v61 = NLGetLogCategory(self);
      internal2 = [v61 internal];

      if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
      {
        v62 = NLGetLogIdentifier(self);
        v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input tensor shape"];
        *__p = 138543618;
        *&__p[4] = v62;
        v80 = 2114;
        v81 = v63;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
      }

      goto LABEL_92;
    }

LABEL_32:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v47 = objc_autoreleasePoolPush();
  v55 = NLGetLogCategory(self);
  internal2 = [v55 internal];

  if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
  {
    v56 = NLGetLogIdentifier(self);
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input rank"];
    *__p = 138543618;
    *&__p[4] = v56;
    v80 = 2114;
    v81 = v57;
    _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __p, 0x16u);
  }

LABEL_92:

  objc_autoreleasePoolPop(v47);
  if (v77)
  {
    (*(*v77 + 8))();
  }

LABEL_94:
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::~__hash_table(v83);
  return 0;
}

- (void)_setInputFragments:(int *)fragments count:(unint64_t)count
{
  std::string::basic_string[abi:ne200100]<0>(__p, "mlm_input");
  v16 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v16);
  DataSpan = E5RT::BufferObject::GetDataSpan(v7[5]);
  v10 = v9;
  if (v9 >= 4)
  {
    v11 = DataSpan;
  }

  else
  {
    v11 = 0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  bzero(v11, v10 & 0xFFFFFFFFFFFFFFFCLL);
  maximumSequenceLength = self->_maximumSequenceLength;
  if (maximumSequenceLength >= count)
  {
    maximumSequenceLength = count;
  }

  if (maximumSequenceLength)
  {
    for (i = 0; i != maximumSequenceLength; ++i)
    {
      *(v11 + self->_numInputs * i) = fragments[i];
      *(v11 + self->_numInputs * i + 1) = i;
      *(v11 + self->_numInputs * i + 2) = 0;
    }
  }
}

- (BOOL)isBackboneLoaded
{
  if (!self->_stream.__ptr_)
  {
    return 0;
  }

  loadedFunction = self->_loadedFunction;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"main"];
  v4 = [(NSString *)loadedFunction isEqualToString:v3];

  return v4;
}

- (BOOL)loadBackbone
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(NLE5Embedding *)self isBackboneLoaded])
  {
    return 1;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = NLGetLogCategory(self);
  internal = [v5 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
  {
    v7 = NLGetLogIdentifier(self);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading backbone"];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "%{public}@%{public}@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  ptr = self->_stream.__ptr_;
  if (ptr)
  {
    E5RT::ExecutionStream::ResetStream(ptr);
    ptr = self->_stream.__ptr_;
    self->_stream.__ptr_ = 0;
    if (ptr)
    {
      ptr = (*(*ptr + 8))(ptr);
    }
  }

  v10 = NLContextualEmbeddingSignpostHandle(ptr);
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "loadBackboneE5", &unk_19D4EF749, &v17, 2u);
  }

  v3 = [(NLE5Embedding *)self _loadFunction:"main"];
  v14 = v13;
  v15 = v14;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_19D48F000, v15, OS_SIGNPOST_INTERVAL_END, v11, "loadBackboneE5", &unk_19D4EF749, &v17, 2u);
  }

  return v3;
}

- (BOOL)isAdapterLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = self->_stream.__ptr_ && [(NSString *)self->_loadedFunction isEqualToString:loadedCopy];

  return v5;
}

- (BOOL)loadAdapter:(id)adapter
{
  v32 = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  if ([(NLE5Embedding *)self isAdapterLoaded:adapterCopy])
  {
    v5 = 1;
  }

  else
  {
    adapters = [(NLE5Embedding *)self adapters];
    v7 = [adapters containsObject:adapterCopy];

    v8 = objc_autoreleasePoolPush();
    if (v7)
    {
      v9 = NLGetLogCategory(self);
      internal = [v9 internal];

      if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
      {
        v11 = NLGetLogIdentifier(self);
        adapterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading adapter '%@'", adapterCopy];
        *buf = 138543618;
        v29 = v11;
        v30 = 2114;
        v31 = adapterCopy;
        _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      ptr = self->_stream.__ptr_;
      if (ptr)
      {
        E5RT::ExecutionStream::ResetStream(ptr);
        v14 = self->_stream.__ptr_;
        self->_stream.__ptr_ = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        loadedFunction = self->_loadedFunction;
        self->_loadedFunction = 0;
      }

      v16 = NLContextualEmbeddingSignpostHandle(ptr);
      v17 = os_signpost_id_generate(v16);
      v18 = v16;
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "loadAdapterE5", &unk_19D4EF749, buf, 2u);
      }

      v20 = adapterCopy;
      v5 = -[NLE5Embedding _loadFunction:](self, "_loadFunction:", [adapterCopy UTF8String]);
      v21 = v19;
      v22 = v21;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v22, OS_SIGNPOST_INTERVAL_END, v17, "loadAdapterE5", &unk_19D4EF749, buf, 2u);
      }
    }

    else
    {
      v23 = NLGetLogCategory(self);
      internal2 = [v23 internal];

      if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
      {
        v25 = NLGetLogIdentifier(self);
        adapterCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"E5 bundle is missing requested adapter '%@'", adapterCopy];
        *buf = 138543618;
        v29 = v25;
        v30 = 2114;
        v31 = adapterCopy2;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v5 = 0;
    }
  }

  return v5;
}

- (id)_embeddingDataForTokenizedBatch:(id)batch withOutputProperties:(id)properties
{
  __src[3] = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  propertiesCopy = properties;
  v54 = propertiesCopy;
  if (self->_stream.__ptr_)
  {
    data = [MEMORY[0x1E695DF88] data];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v53 = 0;
    v55 = array2;
    while (v53 < [batchCopy count])
    {
      v8 = [batchCopy objectAtIndex:?];
      array3 = [MEMORY[0x1E695DF70] array];
      memset(__src, 0, 24);
      v10 = [(NLE5Embedding *)self _tokenIDsForText:&stru_1F10C6540 addBOS:1];
      firstObject = [v10 firstObject];
      intValue = [firstObject intValue];

      v13 = __src[1];
      if (__src[1] >= __src[2])
      {
        v15 = __src[0];
        v16 = __src[1] - __src[0];
        v17 = (__src[1] - __src[0]) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v19 = __src[2] - __src[0];
        if ((__src[2] - __src[0]) >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(__src, v21);
        }

        *(4 * v17) = intValue;
        v14 = (4 * v17 + 4);
        memcpy(0, v15, v16);
        v22 = __src[0];
        __src[0] = 0;
        __src[1] = v14;
        __src[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }

        array2 = v55;
      }

      else
      {
        *__src[1] = intValue;
        v14 = v13 + 4;
      }

      v23 = 0;
      __src[1] = v14;
      while ([v8 count] > v23)
      {
        v24 = [v8 objectAtIndex:v23];
        v25 = [(NLE5Embedding *)self _tokenIDsForText:v24 addBOS:0];
        applesauce::CF::ArrayRef::from_ns(&cf, v25);

        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x19EAFBFD0](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::vector<int>,0>(cf, &__p);
        v27 = __src[0];
        v26 = __src[1];
        begin = __p.__begin_;
        end = __p.__end_;
        maximumSequenceLength = [(NLE5Embedding *)self maximumSequenceLength];
        v31 = end - begin + ((v26 - v27) >> 2);
        propertiesCopy = v54;
        array2 = v55;
        if (v31 <= maximumSequenceLength)
        {
          v32 = [MEMORY[0x1E696B098] valueWithRange:{(__src[1] - __src[0]) >> 2, __p.__end_ - __p.__begin_}];
          [array3 addObject:v32];

          std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(__src, __src[1], __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v31 > maximumSequenceLength)
        {
          break;
        }

        ++v23;
      }

      while ([v8 count] > v23)
      {
        v33 = [MEMORY[0x1E696B098] valueWithRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
        [array3 addObject:v33];

        ++v23;
      }

      v34 = NLContextualEmbeddingSignpostHandle([NLE5Embedding _setInputFragments:"_setInputFragments:count:" count:?]);
      v35 = os_signpost_id_generate(v34);
      v36 = v34;
      v37 = v36;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        LOWORD(__p.__begin_) = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "inferenceE5", &unk_19D4EF749, &__p, 2u);
      }

      E5RT::ExecutionStream::ExecuteStreamSync(self->_stream.__ptr_);
      v38 = v37;
      v39 = v38;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        LOWORD(__p.__begin_) = 0;
        _os_signpost_emit_with_name_impl(&dword_19D48F000, v39, OS_SIGNPOST_INTERVAL_END, v35, "inferenceE5", &unk_19D4EF749, &__p, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "mlm_embeddings");
      cf = &__p;
      v40 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, &__p, &std::piecewise_construct, &cf);
      DataSpan = E5RT::BufferObject::GetDataSpan(v40[5]);
      [data appendBytes:DataSpan length:4 * self->_dimension * ((__src[1] - __src[0]) >> 2)];
      if (SHIBYTE(__p.__end_cap_.__value_) < 0)
      {
        operator delete(__p.__begin_);
      }

      [array addObject:array3];
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(__src[1] - __src[0]) >> 2];
      [array2 addObject:v42];

      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      ++v53;
    }

    [propertiesCopy setObject:array forKeyedSubscript:@"fragmentRangesForTokens"];
    [propertiesCopy setObject:array2 forKeyedSubscript:@"fragmentCountPerSample"];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = NLGetLogCategory(self);
    internal = [v44 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v46 = NLGetLogIdentifier(self);
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Execution stream hasn't been created"];
      LODWORD(__src[0]) = 138543618;
      *(__src + 4) = v46;
      WORD2(__src[1]) = 2114;
      *(&__src[1] + 6) = v47;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", __src, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    data = 0;
  }

  return data;
}

- (id)embeddingDataForTokenizedBatch:(id)batch withOutputProperties:(id)properties
{
  batchCopy = batch;
  propertiesCopy = properties;
  v8 = [(NLE5Embedding *)self _embeddingDataForTokenizedBatch:batchCopy withOutputProperties:propertiesCopy];

  return v8;
}

- (id)_embeddingDataForString:(id)string sequenceSize:(unint64_t *)size error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (self->_stream.__ptr_)
  {
    v9 = [(NLE5Embedding *)self _tokenIDsForText:stringCopy addBOS:1];
    applesauce::CF::ArrayRef::from_ns(&cf, v9);

    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x19EAFBFD0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::vector<int>,0>(cf, &v38);
    begin = v38.__begin_;
    end = v38.__end_;
    if ([(NLE5Embedding *)self maximumSequenceLength]< end - begin)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = NLGetLogCategory(self);
      internal = [v13 internal];

      if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
      {
        v15 = NLGetLogIdentifier(self);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input string length exceeds max sequence length supported by the model"];
        *buf = 138543618;
        *&buf[4] = v15;
        v33 = 2114;
        v34 = v16;
        _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A578];
        v37 = @"Input trimmed up to max sequence length";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *error = [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v18];
      }

      std::vector<int>::resize(&v38, [(NLE5Embedding *)self maximumSequenceLength]);
    }

    [NLE5Embedding _setInputFragments:"_setInputFragments:count:" count:?];
    E5RT::ExecutionStream::ExecuteStreamSync(self->_stream.__ptr_);
    v19 = MEMORY[0x1E695DEF0];
    std::string::basic_string[abi:ne200100]<0>(buf, "mlm_embeddings");
    v31 = buf;
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::BufferObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_buffers.__table_.__bucket_list_.__ptr_, buf, &std::piecewise_construct, &v31);
    DataSpan = E5RT::BufferObject::GetDataSpan(v20[5]);
    v22 = [v19 dataWithBytes:DataSpan length:4 * self->_dimension * ((v38.__end_ - v38.__begin_) >> 2)];
    if (v35 < 0)
    {
      operator delete(*buf);
    }

    if (size)
    {
      *size = v38.__end_ - v38.__begin_;
    }

    if (v38.__begin_)
    {
      v38.__end_ = v38.__begin_;
      operator delete(v38.__begin_);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = NLGetLogCategory(self);
    internal2 = [v24 internal];

    if (os_log_type_enabled(internal2, OS_LOG_TYPE_ERROR))
    {
      v26 = NLGetLogIdentifier(self);
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Execution stream hasn't been created"];
      LODWORD(v38.__begin_) = 138543618;
      *(&v38.__begin_ + 4) = v26;
      WORD2(v38.__end_) = 2114;
      *(&v38.__end_ + 6) = v27;
      _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

- (id)embeddingDataForString:(id)string sequenceSize:(unint64_t *)size error:(id *)error
{
  stringCopy = string;
  v9 = [(NLE5Embedding *)self _embeddingDataForString:stringCopy sequenceSize:size error:error];

  return v9;
}

- (id)textForTokenIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (self->_subwordVocabRef)
  {
    v5 = NLEmbeddingSubwordVocabCopyTextForTokenIds();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NLGetLogCategory(self);
    internal = [v7 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v9 = NLGetLogIdentifier(self);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sentence piece tokenizer is not set"];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = &stru_1F10C6540;
  }

  return v5;
}

- (id)tokenIDsForText:(id)text
{
  v16 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (self->_subwordVocabRef)
  {
    v5 = [(NLE5Embedding *)self _tokenIDsForText:textCopy addBOS:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NLGetLogCategory(self);
    internal = [v7 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v9 = NLGetLogIdentifier(self);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sentence piece tokenizer is not set"];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_tokenIDsForText:(id)text addBOS:(BOOL)s
{
  v4 = NLEmbeddingSubwordVocabCopyTokenIdsForText();

  return v4;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end