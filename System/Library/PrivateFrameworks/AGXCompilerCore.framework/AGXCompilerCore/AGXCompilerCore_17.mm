uint64_t AGCLLVMDriverCDMBlitShader::readDestinationTexture(AGCLLVMDriverShader *a1, llvm::Type *a2, int a3)
{
  if ((*a2 & 0xC0) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = llvm::UndefValue::get();
  v8 = a1 + *(*a1 - 24);
  v9 = *(a1 + 12);
  LOWORD(v50) = 257;
  v10 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v8 + 1712), v7, v9, v10, &v47);
  v12 = a1 + *(*a1 - 24);
  v13 = *(a1 + 13);
  LOWORD(v50) = 257;
  v14 = llvm::ConstantInt::get();
  v15 = llvm::IRBuilderBase::CreateInsertElement((v12 + 1712), InsertElement, v13, v14, &v47);
  v16 = AGCLLVMDriverShader::buildRegionOffsets(a1, "agc.dest_padded_offsets", 0x66u);
  v17 = a1 + *(*a1 - 24);
  LOWORD(v50) = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v17 + 1712), v15, v16, &v47);
  if ((*a2 & 0xC0) != 0)
  {
    v19 = llvm::User::operator new(0x58);
    v47 = "agc.texture_write_slice";
    LOWORD(v50) = 259;
    v20 = llvm::GlobalVariable::GlobalVariable();
    *(v20 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v21 = a1 + *(*a1 - 24);
    v22 = *(v21 + 268);
    v23 = AGCLLVMBuilder::buildGlobalMetadata(v21 + 213, v19, 0x57u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v23);
    v24 = a1 + *(*a1 - 24);
    LOWORD(v50) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v24 + 1704), v19, &v47);
    v27 = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), Add, 4, v26);
    v28 = a1 + *(*a1 - 24);
    LOWORD(v50) = 257;
    v29 = llvm::ConstantInt::get();
    Add = llvm::IRBuilderBase::CreateInsertElement((v28 + 1712), v27, Load, v29, &v47);
  }

  v30 = a1 + *(*a1 - 24);
  v31 = llvm::FixedVectorType::get();
  LOWORD(v50) = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((v30 + 1712), Add, v31, &v47);
  ImageStateGlobal = AGCLLVMDriverShader::getImageStateGlobal(a1, 1u, v33);
  TextureHeapGlobal = AGCLLVMDriverShader::getTextureHeapGlobal(a1, 1u);
  SamplerStateGlobal = AGCLLVMDriverShader::getSamplerStateGlobal(a1, v36, v37);
  LODWORD(v47) = 0;
  HIDWORD(v47) = v6;
  v49[0] = 0;
  *(v49 + 7) = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  v65 = 0u;
  v66 = 0u;
  memset(v67, 0, 21);
  v67[21] = 1;
  v68 = 0;
  v69 = 0;
  v48 = a3;
  AGCLLVMDriverShader::setSampleArgs(a1, &v47, 1, ImageStateGlobal, SamplerStateGlobal, TextureHeapGlobal);
  *&v57 = UIToFP;
  v64 = 0;
  v59 = 1;
  v39 = llvm::ConstantFP::get();
  BYTE6(v49[0]) = 1;
  v60 = v39;
  v58 = 0;
  v40 = a1 + *(*a1 - 24);
  v41 = *(v40 + 271);
  v44 = *(v40 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (v40 + 1712));
  v46 = *(v40 + 452);
  v42 = (*(*v41 + 288))(v41, &v44, &v47);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  return v42;
}

uint64_t std::__function::__func<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#2},std::allocator<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#2}>,void ()(_CompilerData const&,section_64 *&,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825AFF10;
  a2[1] = v2;
  return result;
}

uint64_t AGCLLVMObjectArray::attachPrinter(uint64_t result, uint64_t a2)
{
  *(result + 1696) = a2;
  v2 = *(result + 1712);
  if (v2)
  {
    v4 = *(result + 1704);
    v5 = 32 * v2;
    do
    {
      v6 = *v4;
      v4 += 4;
      result = (*(*v6 + 64))(v6, a2);
      v5 -= 32;
    }

    while (v5);
  }

  return result;
}

uint64_t AGCLLVMObjectArray::composeCompilerReply(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 24) = a1[242];
  if (((a1[233] - a1[232]) >> 4))
  {
    operator new();
  }

  return 0;
}

uint64_t AGCLLVMObjectArray::compile(std::string *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = LODWORD(this[71].__r_.__value_.__r.__words[1]);
  if (!v1)
  {
    return 1;
  }

  data = this[71].__r_.__value_.__l.__data_;
  v4 = 32 * v1;
  while (1)
  {
    v5 = data + 8;
    if (((*(**data + 16))() & 1) == 0)
    {
      std::string::operator=(this + 69, (*data + 1656));
      return 0;
    }

    v23 = 0;
    v24 = 0;
    v21 = 0u;
    v22 = 0u;
    v6 = *data;
    v29 = 0;
    v7 = (*(*v6 + 24))(v6, &v24, &v23, &v21, v28);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v28);
    if (!v7)
    {
      break;
    }

    v9 = v23;
    v8 = v24;
    if ((data[31] & 0x80000000) == 0 || (v5 = *v5) != 0)
    {
      if (*v5)
      {
        std::string::basic_string[abi:nn200100]<0>(__p, v5);
        if (!*std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(&this[79].__r_.__value_.__r.__words[2], &v27, __p))
        {
          operator new();
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v10 = this[77].__r_.__value_.__r.__words[2];
    v11 = this[78].__r_.__value_.__l.__data_;
    if (v10 >= v11)
    {
      size = this[77].__r_.__value_.__l.__size_;
      v14 = v10 - size;
      v15 = (v10 - size) >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v17 = v11 - size;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v19 = (16 * v15);
      *v19 = v8;
      v19[1] = v9;
      v12 = 16 * v15 + 16;
      memcpy(0, size, v14);
      this[77].__r_.__value_.__l.__size_ = 0;
      this[77].__r_.__value_.__r.__words[2] = v12;
      this[78].__r_.__value_.__r.__words[0] = 0;
      if (size)
      {
        operator delete(size);
      }
    }

    else
    {
      *v10 = v8;
      *(v10 + 1) = v9;
      v12 = (v10 + 16);
    }

    this[77].__r_.__value_.__r.__words[2] = v12;
    this[79].__r_.__value_.__l.__size_ += v9;
    this[80].__r_.__value_.__r.__words[2] += *(&v22 + 1);
    data += 32;
    v4 -= 32;
    if (!v4)
    {
      return 1;
    }
  }

  MEMORY[0x20F331AA0](&this[69], "Error occurred composing compiler reply.");
  return 0;
}

void AGCLLVMObjectArray::~AGCLLVMObjectArray(AGCLLVMObjectArray *this)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDEC8;
  v2 = *(this + 232);
  v3 = *(this + 233);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    free(v4);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 240));
  v8 = *(this + 235);
  if (v8)
  {
    *(this + 236) = v8;
    operator delete(v8);
  }

  v9 = *(this + 232);
  if (v9)
  {
    *(this + 233) = v9;
    operator delete(v9);
  }

  v10 = *(this + 213);
  v11 = *(this + 428);
  if (v11)
  {
    v12 = &v10[32 * v11 - 32];
    v13 = -32 * v11;
    do
    {
      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 8));
      }

      v14 = *v12;
      *v12 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v12 -= 32;
      v13 += 32;
    }

    while (v13);
    v10 = *(this + 213);
  }

  if (v10 != this + 1720)
  {
    free(v10);
  }

  AGCLLVMObjectBase::~AGCLLVMObjectBase(this, v5, v6, v7);
}

void AGCModulePassManager::~AGCModulePassManager(AGCModulePassManager *this)
{
  *this = &unk_2825BDF78;
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDF78;
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

uint64_t std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMCtx::initializeOptimizations(void)::$_0 &&>>(llvm::PassRegistry *a1)
{
  PassRegistry = llvm::PassRegistry::getPassRegistry(a1);
  llvm::initializeCore(PassRegistry, v2);
  llvm::initializeScalarOpts(PassRegistry, v3);
  llvm::initializeVectorization(PassRegistry, v4);
  llvm::initializeIPO(PassRegistry, v5);
  llvm::initializeAnalysis(PassRegistry, v6);
  llvm::initializeTransformUtils(PassRegistry, v7);
  llvm::initializeInstCombine(PassRegistry, v8);

  return MEMORY[0x2821F29B8](PassRegistry);
}

void AGCLLVMCtx::initialize(AGCLLVMCtx *this)
{
  AGCLLVMUserShader::getVaryingModeMap(this);
  v3 = &AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map;
  if (atomic_load_explicit(&AGCLLVMUserShader::initializeMaps(void)::varying_flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserShader::initializeMaps(void)::varying_flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_0 &&>>);
  }

  AGCLLVMUserShader::getInterpolationLocationMap(v1);
  v3 = &AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map;
  if (atomic_load_explicit(&AGCLLVMUserShader::initializeMaps(void)::interpolation_flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserShader::initializeMaps(void)::interpolation_flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_1 &&>>);
  }

  if (atomic_load_explicit(&AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::$_0 &&>>);
  }

  AGCLLVMUserObject::getBuiltinArgMap(v2);
  v3 = &AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
  if (atomic_load_explicit(&AGCLLVMUserObject::initializeBuiltinArgMaps(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserObject::initializeBuiltinArgMaps(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeBuiltinArgMaps(void)::$_0 &&>>);
  }

  if (atomic_load_explicit(&AGCLLVMCtx::initializeOptimizations(void)::once, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMCtx::initializeOptimizations(void)::once, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMCtx::initializeOptimizations(void)::$_0 &&>>);
  }
}

void AGCLLVMCtx::~AGCLLVMCtx(AGCLLVMCtx *this)
{
  v2 = *(this + 251);
  if (v2)
  {
    MEMORY[0x20F331DA0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 255);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  MEMORY[0x20F330C10](this + 2024);
  if (*(this + 2007) < 0)
  {
    operator delete(*(this + 248));
  }

  if (*(this + 1983) < 0)
  {
    operator delete(*(this + 245));
  }

  llvm::deallocate_buffer((3 * *(this + 486)), *(this + 241), (24 * *(this + 486)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(this + 476);
  llvm::deallocate_buffer(*(this + 480), *(this + 238), (32 * *(this + 480)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(this + 470);
  llvm::deallocate_buffer(*(this + 474), *(this + 235), (16 * *(this + 474)));
  llvm::deallocate_buffer((3 * *(this + 468)), *(this + 232), (24 * *(this + 468)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(this + 458);
  llvm::deallocate_buffer(*(this + 462), *(this + 229), (32 * *(this + 462)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(this + 452);
  llvm::deallocate_buffer(*(this + 456), *(this + 226), (16 * *(this + 456)));
  llvm::deallocate_buffer((3 * *(this + 450)), *(this + 223), (24 * *(this + 450)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(this + 440);
  llvm::deallocate_buffer(*(this + 444), *(this + 220), (32 * *(this + 444)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(this + 434);
  llvm::deallocate_buffer(*(this + 438), *(this + 217), (16 * *(this + 438)));
  llvm::deallocate_buffer((3 * *(this + 432)), *(this + 214), (24 * *(this + 432)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(this + 422);
  llvm::deallocate_buffer(*(this + 426), *(this + 211), (32 * *(this + 426)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(this + 416);
  llvm::deallocate_buffer(*(this + 420), *(this + 208), (16 * *(this + 420)));
  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(this + 1632, v4, v5, v6);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1488, v7, v8, v9);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1344, v10, v11, v12);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1200, v13, v14, v15);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1056, v16, v17, v18);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 912, v19, v20, v21);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 768, v22, v23, v24);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 624, v25, v26, v27);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 480, v28, v29, v30);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 336, v31, v32, v33);
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  v34 = *(this + 19);
  if (v34 != this + 176)
  {
    free(v34);
  }

  if (*(this + 144) == 1)
  {
    MEMORY[0x20F330BA0](this + 128);
  }

  if (*(this + 120) == 1)
  {
    MEMORY[0x20F330BA0](this + 104);
  }

  if (*(this + 96) == 1)
  {
    MEMORY[0x20F330BA0](this + 80);
  }

  if (*(this + 72) == 1)
  {
    MEMORY[0x20F330BA0](this + 56);
  }

  llvm::AGX::AGXCompiler::~AGXCompiler((this + 48));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void AGCLLVMCtx::runInliner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v3 = "AlwaysInlinerPass";
  v4 = 17;
  LOBYTE(v5) = 1;
  llvm::PassManager<llvm::Module,llvm::AnalysisManager<llvm::Module>>::addPass<AGCLLVMPrintModulePass>();
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 77;
  }

  v2 = &aStringrefLlvmG_96[v1];
  v3 = 77 - v1;
  if ((77 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 77 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::TargetLibraryInfo,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825B0188;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void *llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825B0158;
  llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset(a1 + 1);
  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMObject>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x5D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 93;
  }

  v2 = &aStringrefLlvmG_90[v1];
  v3 = 93 - v1;
  if ((93 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 93 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::GlobalDCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B0018;
  llvm::GlobalDCEPass::~GlobalDCEPass((a1 + 1), a2, a3, a4);
  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCLLVMVerifyModulePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMVerifyModulePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCLLVMPrintModulePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMPrintModulePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::DCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::DCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::InstCombinePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B0118;
  v5 = *(a1 + 2232);
  if (v5 != (a1 + 2248))
  {
    free(v5);
  }

  if ((*(a1 + 2096) & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 2112), *(a1 + 2104), (8 * *(a1 + 2112)));
  }

  llvm::deallocate_buffer(*(a1 + 2088), *(a1 + 2072), (16 * *(a1 + 2088)));
  v6 = *(a1 + 8);
  if (v6 != (a1 + 24))
  {
    free(v6);
  }

  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::SROAPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B00D8;
  llvm::SROAPass::~SROAPass((a1 + 1), a2, a3, a4);
  return a1;
}

uint64_t AGCLLVMObject::linkCommon(AGCLLVMObject *this, llvm::Module *a2, int a3, llvm::Function *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = a2 + 24;
  for (i = *(a2 + 4); i != v8; i = *(i + 8))
  {
    if (i)
    {
      v10 = i - 56;
    }

    else
    {
      v10 = 0;
    }

    if (llvm::GlobalValue::isDeclaration(v10) && (*(v10 + 34) & 0x80) != 0)
    {
      llvm::GlobalValue::setLinkage(v10, 3);
    }

    if ((*(v10 + 32) & 0xFu) - 7 >= 2)
    {
      llvm::GlobalValue::setVisibility(v10);
    }
  }

  v11 = *(*(this + 211) + 32);
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = strlen(*(v11 + 8));
  }

  else
  {
    v13 = 0;
  }

  llvm::Module::setTargetTriple(a2, v12, v13);
  v15 = *(*(this + 211) + 32);
  if (*(v15 + 16))
  {
    strlen(*(v15 + 16));
  }

  llvm::Module::setDataLayout();
  v38 = a2;
  v40 = 0;
  v16 = llvm::Linker::linkModules();
  std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v39);
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v38);
  if ((v16 & 1) == 0)
  {
    v17 = *(this + 267);
    v18 = *(v17 + 32);
    v19 = v17 + 24;
    if (a3)
    {
      if (v18 != v17 + 24)
      {
        do
        {
          v20 = *(v18 + 8);
          if (v18)
          {
            v21 = (v18 - 56);
          }

          else
          {
            v21 = 0;
          }

          if (v21 != a4)
          {
            Name = llvm::Value::getName((v18 - 56));
            if (v23 != 22 || (*Name == 0x626F6C672E636761 ? (v24 = Name[1] == 0x74736E6F635F6C61) : (v24 = 0), v24 ? (v25 = *(Name + 14) == 0x726F746375727473) : (v25 = 0), !v25))
            {
              llvm::Value::getName((v18 - 56));
              Key = llvm::StringMapImpl::FindKey();
              if (Key == -1 || Key == *(this + 1286))
              {
                v27 = *(v18 - 24);
                if ((v27 & 0xF) != 0)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v27 = *(v18 - 24);
              }

              if ((v27 & 0x30) == 0x10)
              {
LABEL_40:
                if (!*(v18 - 48))
                {
                  llvm::Function::eraseFromParent((v18 - 56));
                }
              }
            }
          }

          v18 = v20;
        }

        while (v20 != v19);
      }
    }

    else
    {
      if (v18 == v17 + 24)
      {
        v33 = 0;
      }

      else
      {
        v28 = 1;
        do
        {
          v29 = *(v18 + 8);
          if (v18)
          {
            v30 = (v18 - 56);
          }

          else
          {
            v30 = 0;
          }

          if (v30 != a4)
          {
            v31 = *(v18 - 24);
            v32 = (v31 & 0xF) != 0 || (*(v18 - 24) & 0x30) == 16;
            if (v32 && !*(v18 - 48))
            {
              llvm::Function::eraseFromParent((v18 - 56));
            }

            else if ((v31 & 0x2000) == 0 && (llvm::GlobalValue::isDeclaration((v18 - 56)) & 1) == 0)
            {
              *(v18 - 24) = *(v18 - 24) & 0xFFFFBFC0 | 0x4007;
              llvm::Function::addFnAttr();
              ++v28;
            }
          }

          v18 = v29;
        }

        while (v29 != v19);
        v17 = *(this + 267);
        v33 = v28 > 1;
      }

      v34 = *(v17 + 16);
      v35 = v17 + 8;
      if (v34 != v17 + 8)
      {
        do
        {
          v36 = *(v34 + 8);
          if (v34)
          {
            v37 = (v34 - 56);
          }

          else
          {
            v37 = 0;
          }

          if ((llvm::GlobalValue::isDeclaration(v37) & 1) == 0)
          {
            if (*(v34 - 48))
            {
              *(v34 - 24) = *(v34 - 24) & 0xFFFFBFC0 | 0x4007;
            }

            else
            {
              llvm::GlobalVariable::eraseFromParent((v34 - 56));
            }
          }

          v34 = v36;
        }

        while (v36 != v35);
      }

      if (v33)
      {
        AGCLLVMCtx::runInliner(*(this + 211), this, *(this + 267));
      }
    }
  }

  return v16 ^ 1u;
}

llvm::Module *AGCLLVMObject::linkDSFile(AGCLLVMObject *this, const char *__s, llvm::Function *a3)
{
  v6 = **(this + 267);
  if (__s)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = 0;
  }

  result = AGCLLVMObject::readBitcode(v6, __s, v7, 1);
  if (result)
  {
    v9 = result;
    v10 = (*(**(this + 271) + 784))(*(this + 271), 0, result);
    AGCLLVMAirBuiltins::replaceBuiltins(v10);
    result = AGCLLVMObject::linkCommon(this, v9, 0, a3);
    if (v10)
    {
      v11 = *(*v10 + 16);

      return v11(v10);
    }
  }

  return result;
}

uint64_t AGCLLVMObject::readBitcode(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v43[0] = a2;
  v43[1] = a3;
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AGXCompilerCore");
  if (!BundleWithIdentifier)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]();
  }

  if (!a3)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_1::operator()[abi:[AGX] Failed assertion _(file_name.empty() __ false)_]();
  }

  v7 = BundleWithIdentifier;
  llvm::StringRef::str(__p, v43);
  if (SHIBYTE(v59) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_2::operator()[abi:[AGX] Failed assertion _filename_]();
  }

  if (a4)
  {
    v10 = "ds";
  }

  else
  {
    v10 = "ds_internal";
  }

  v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
  if (!v11)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_3::operator()[abi:[AGX] Failed assertion _subdirectory_]();
  }

  v12 = v11;
  v13 = CFBundleCopyResourceURL(v7, v9, @"ds", v11);
  if (!v13)
  {
    __p[0] = @"com.apple.AGXCompilerCore";
    __p[1] = v9;
    v59 = @"ds";
    v60 = v12;
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_4::operator()[abi:[AGX] Failed assertion _bitcode_url_](__p);
  }

  v14 = v13;
  v15 = CFURLCopyFileSystemPath(v13, kCFURLPOSIXPathStyle);
  if (!v15)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_5::operator()[abi:[AGX] Failed assertion _posix_path_]();
  }

  v16 = v15;
  bzero(__p, 0x401uLL);
  if (!CFStringGetCString(v16, __p, 1024, 0x600u))
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_6::operator()[abi:[AGX] Failed assertion _success_](v16);
  }

  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v14);
  CFRelease(v16);
  v57[6] = 0;
  v17 = MEMORY[0x277D82858] + 24;
  v18 = MEMORY[0x277D82858] + 64;
  v57[0] = MEMORY[0x277D82858] + 64;
  v19 = MEMORY[0x277D82808];
  v20 = *(MEMORY[0x277D82808] + 16);
  v55[0] = *(MEMORY[0x277D82808] + 8);
  *(v55 + *(v55[0] - 24)) = v20;
  v55[1] = 0;
  v21 = (v55 + *(v55[0] - 24));
  std::ios_base::init(v21, v56);
  v21[1].__vftable = 0;
  v21[1].__fmtflags_ = -1;
  v55[0] = v17;
  v57[0] = v18;
  MEMORY[0x20F331B50](v56);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v55 + *(v55[0] - 24)), *&v56[*(v55[0] - 24) + 16] | 4);
  }

  v22 = v55 + *(v55[0] - 24);
  if ((v22[32] & 5) != 0)
  {
    v23 = MEMORY[0x277D82670];
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "readBitcode", 11);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "(): unable to open file: ", 25);
    v25 = strlen(__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, __p, v25);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v26 = std::locale::use_facet(v44, MEMORY[0x277D82680]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(v44);
    std::ostream::put();
    std::ostream::flush();
    v27 = 0;
    goto LABEL_37;
  }

  v28 = *(v22 + 5);
  if (v28)
  {
    v29 = v28[3];
    v30 = v28[4];
    if (v29 != v30)
    {
      goto LABEL_24;
    }

    if ((*(*v28 + 72))(v28) != -1)
    {
      v29 = v28[3];
      v30 = v28[4];
LABEL_24:
      if (v29 == v30)
      {
        (*(*v28 + 72))(v28);
      }

      operator new();
    }
  }

  MEMORY[0] = 186106078;
  MEMORY[0x14] = -557825214;
  v47 = 0;
  *v45 = 0u;
  v46 = 0u;
  *&v44[0].__locale_ = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v53[0] = &v54;
  v53[1] = 0x400000000;
  *&v38.__r_.__value_.__l.__data_ = 0uLL;
  v38.__r_.__value_.__r.__words[2] = __p;
  v39.__r_.__value_.__r.__words[0] = strlen(__p);
  v31 = llvm::parseIR();
  v27 = v42;
  v42 = 0;
  if (!v27)
  {
    v33 = llvm::errs(v31);
    llvm::SMDiagnostic::print(v44, "readBitcode", v33);
    v34 = v45;
    v35 = SBYTE7(v46);
    if (SBYTE7(v46) < 0)
    {
      v34 = v45[0];
    }

    if (SBYTE7(v46) < 0)
    {
      v35 = v45[1];
    }

    v38.__r_.__value_.__r.__words[0] = v34;
    v38.__r_.__value_.__l.__size_ = v35;
    llvm::StringRef::str(&v41, &v38);
    v36 = SBYTE7(v49);
    v37 = v48;
    if ((SBYTE7(v49) & 0x80u) == 0)
    {
      v37 = &v48;
    }

    if (SBYTE7(v49) < 0)
    {
      v36 = *(&v48 + 1);
    }

    v38.__r_.__value_.__r.__words[0] = v37;
    v38.__r_.__value_.__l.__size_ = v36;
    llvm::StringRef::str(&v40, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v41;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v40;
    }

    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_7::operator()[abi:[AGX] Failed assertion _false_](&v38);
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]();
  }

  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v42);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v53);
  v19 = MEMORY[0x277D82808];
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  if (SBYTE7(v46) < 0)
  {
    operator delete(v45[0]);
  }

  operator delete(0);
LABEL_37:
  v55[0] = *v19;
  *(v55 + *(v55[0] - 24)) = v19[3];
  MEMORY[0x20F331B60](v56);
  std::istream::~istream();
  MEMORY[0x20F331D40](v57);
  return v27;
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v0 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 136315138;
  v3 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  _os_log_send_and_compose_impl(v1, &v5, v4, 80, &dword_20E4E1000, v0, 16, "%s bundle not found", &v2);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_1::operator()[abi:[AGX] Failed assertion _(file_name.empty() __ false)_]()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v0 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 136315138;
  v3 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  _os_log_send_and_compose_impl(v1, &v5, v4, 80, &dword_20E4E1000, v0, 16, "%s file_name is empty", &v2);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_2::operator()[abi:[AGX] Failed assertion _filename_]()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v0 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 136315138;
  v3 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  _os_log_send_and_compose_impl(v1, &v5, v4, 80, &dword_20E4E1000, v0, 16, "%s filename is NULL", &v2);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_3::operator()[abi:[AGX] Failed assertion _subdirectory_]()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v0 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 136315138;
  v3 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  _os_log_send_and_compose_impl(v1, &v5, v4, 80, &dword_20E4E1000, v0, 16, "%s subdirectory is NULL", &v2);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_4::operator()[abi:[AGX] Failed assertion _bitcode_url_](CFStringRef *a1)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v2 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  CStringPtr = CFStringGetCStringPtr(*a1, 0x8000100u);
  v5 = CFStringGetCStringPtr(a1[1], 0x8000100u);
  v6 = CFStringGetCStringPtr(a1[2], 0x8000100u);
  v7 = CFStringGetCStringPtr(a1[3], 0x8000100u);
  v8 = 136316162;
  v9 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  v10 = 2080;
  v11 = CStringPtr;
  v12 = 2080;
  v13 = v5;
  v14 = 2080;
  v15 = v6;
  v16 = 2080;
  v17 = v7;
  _os_log_send_and_compose_impl(v3, &v19, v18, 80, &dword_20E4E1000, v2, 16, "%s bitcode_url is NULL for bundle '%s', filename '%s', extension '%s' and subdirectory '%s'", &v8, 52);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_5::operator()[abi:[AGX] Failed assertion _posix_path_]()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v0 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = 136315138;
  v3 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  _os_log_send_and_compose_impl(v1, &v5, v4, 80, &dword_20E4E1000, v0, 16, "%s posix_path is NULL", &v2);
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_6::operator()[abi:[AGX] Failed assertion _success_](const __CFString *a1)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = 136315394;
  v5 = "auto AGCLLVMObject::readBitcode(AGCLLVMCtx &, llvm::LLVMContext &, llvm::StringRef, BOOL)::(anonymous class)::operator()() const";
  v6 = 2080;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  _os_log_send_and_compose_impl(v3, &v9, v8, 80, &dword_20E4E1000, v2, 16, "%s path was not initialized to %s", &v4, 22);
  _os_crash_msg();
  __break(1u);
}

uint64_t AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_7::operator()[abi:[AGX] Failed assertion _false_](uint64_t *a1)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = a1 + 3;
  if (*(a1 + 47) < 0)
  {
    v4 = *v4;
  }

  if (v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v7 = 136315394;
  v8 = v3;
  v9 = 2082;
  v10 = v4;
  _os_log_send_and_compose_impl(v5, &v12, v11, 80, &dword_20E4E1000, MEMORY[0x277D86220], 16, "parseIR from file '%s' failed with error: %{public}s", &v7, 22);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(uint64_t *a1, _DWORD *a2)
{
  if (a2 && *a2)
  {
    v3 = *(a1[1] + 16);
    if (v3)
    {
      v4 = a2 + 1;
      do
      {
        v5 = v4 + *v4 + *(v4 + *v4 - *(v4 + *v4) + 4);
        std::string::basic_string[abi:nn200100]<0>(__p, &v5[*v5 + 4]);
        v6 = *(v3 + 39);
        v7 = v27;
        if ((v27 & 0x80u) == 0)
        {
          v8 = v27;
        }

        else
        {
          v8 = __p[1];
        }

        if ((v27 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if (v6 >= 0)
        {
          v10 = *(v3 + 39);
        }

        else
        {
          v10 = *(v3 + 3);
        }

        if (v6 >= 0)
        {
          v11 = v3 + 4;
        }

        else
        {
          v11 = *(v3 + 2);
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        if (v10 == v8 && v13 == 0)
        {
          std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](*a1, v3 + 10);
          v7 = v27;
        }

        if ((v7 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }

  else
  {
    v15 = *a1;
    v17 = *(*a1 + 8);
    v16 = *(*a1 + 16);
    if (v17 >= v16)
    {
      v19 = *v15;
      v20 = v17 - *v15;
      v21 = v20 >> 2;
      v22 = (v20 >> 2) + 1;
      if (v22 >> 62)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 1 > v22)
      {
        v22 = v23 >> 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v24 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v24);
      }

      *(4 * v21) = -1;
      v18 = 4 * v21 + 4;
      memcpy(0, v19, v20);
      v25 = *v15;
      *v15 = 0;
      *(v15 + 8) = v18;
      *(v15 + 16) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v17 = -1;
      v18 = (v17 + 1);
    }

    *(v15 + 8) = v18;
  }
}

llvm::Instruction *AGCLLVMObject::buildWGBarrier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 2224) = 1;
  v6 = *(a1 + 2168);
  v7 = *(v6 + 1032);
  if (v7)
  {
    v8 = strlen(*(v6 + 1032));
  }

  else
  {
    v8 = 0;
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + 1704, v7, v8, *(a1 + 1848), *(a1 + 1896), *(a1 + 1896));
  v12 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 1712), *(v9 + 24), v9, a2, a3, v11);
}

void AGCLLVMObject::addDylibBinding(llvm::ConstantInt **this, llvm::GlobalVariable *a2, unsigned int a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  __src[0] = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  v6[0] = v7;
  v6[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v6, __src, v6);
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((this + 594), Impl);
  if (v6[0] != v7)
  {
    free(v6[0]);
  }
}

uint64_t AGCLLVMObject::buildMulShiftDiv(AGCLLVMObject *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = *(this + 239);
  v28 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a2, v8, v27);
  v10 = *(this + 239);
  v26 = 257;
  v11 = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a3, v10, v25);
  v24 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((this + 1712), Cast, v11, v23);
  v13 = *(this + 239);
  v28 = 257;
  v14 = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a2, v13, v27);
  v26 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((this + 1712), Mul, v14, v25);
  v16 = *(this + 244);
  v28 = 257;
  v17 = llvm::IRBuilderBase::CreateCast(this + 1712, 49, Add, v16, v27);
  v28 = 257;
  v18 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 1712), v17, v18, v27);
  v28 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1712), Element, a4, v27);
  v21 = *a2;
  v26 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 1712, 39, LShr, v21, v25);
}

void AGCLLVMObject::replaceConstantChainWithInstrs(AGCLLVMObject *this, llvm::Constant *a2)
{
  v69[32] = *MEMORY[0x277D85DE8];
  v67 = v69;
  v68 = 0x1000000000;
  v2 = *(this + 1);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 24);
      v4 = *(v3 + 8);
      if (v4 || *(v3 + 16) >= 0x1Cu)
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v67, v2, v4);
      }

      v2 = *(v2 + 8);
    }

    while (v2);
    v5 = v68;
    v64 = v66;
    for (i = 0x400000000; v68; v5 = v68)
    {
      while (1)
      {
        while (1)
        {
          v6 = &v67[16 * v5];
          v7 = *(*(v6 - 2) + 24);
          if (v7)
          {
            v8 = *(v7 + 16) >= 0x1Cu;
          }

          else
          {
            v8 = 0;
          }

          if (v8)
          {
            v60 = 128;
            v59[0] = MEMORY[0x20F330650](0x2000, 8);
            llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(v59);
            LOBYTE(v61) = 0;
            v63 = 0;
            if (i)
            {
              v14 = v64;
              v54 = v6;
              v55 = v64 + 8 * i;
              do
              {
                v15 = *v14;
                v16 = *(*v14 + 16);
                if (*v14)
                {
                  v17 = v16 == 5;
                }

                else
                {
                  v17 = 0;
                }

                v56 = v14;
                if (v17)
                {
                  AsInstruction = llvm::ConstantExpr::getAsInstruction(v15, 0);
                  llvm::Instruction::insertBefore();
                }

                else
                {
                  if (v15)
                  {
                    v18 = v16 == 10;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  if (v18)
                  {
                    v32 = llvm::UndefValue::get();
                    Context = llvm::Value::getContext(v15);
                    llvm::Type::getInt32Ty(Context, v34);
                    v35 = *(*v15 + 32);
                    if (v35)
                    {
                      v36 = 0;
                      v37 = v15;
                      do
                      {
                        v38 = *(v37 - 4 * (*(v15 + 5) & 0x7FFFFFF));
                        *buf = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v59[0], v60, v38, buf))
                        {
                          v39 = *buf;
                          v40 = v59[0];
                          v41 = v60;
                        }

                        else
                        {
                          v40 = v59[0];
                          v41 = v60;
                          v39 = v59[0] + 64 * v60;
                        }

                        if (v40 + 64 * v41 == v39)
                        {
                          *buf = 6;
                          *&buf[8] = 0;
                          *&buf[16] = v38;
                          if (v38 != -8192 && v38 != -4096 && v38 != 0)
                          {
                            llvm::ValueHandleBase::AddToUseList(buf);
                          }
                        }

                        else
                        {
                          v42 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v59, v38);
                          llvm::ValueHandleBase::ValueHandleBase(buf, 3u, v42);
                        }

                        v44 = *&buf[16];
                        if (*&buf[16] != -8192 && *&buf[16] != -4096 && *&buf[16])
                        {
                          llvm::ValueHandleBase::RemoveFromUseList(buf);
                        }

                        v45 = llvm::ConstantInt::get();
                        v58 = 257;
                        AsInstruction = llvm::User::operator new(0x40);
                        MEMORY[0x20F330760](AsInstruction, v32, v44, v45, buf, 0);
                        llvm::Instruction::insertBefore();
                        ++v36;
                        v37 = (v37 + 32);
                        v32 = AsInstruction;
                      }

                      while (v35 != v36);
                    }

                    else
                    {
                      AsInstruction = v32;
                    }
                  }

                  else
                  {
                    if (v15)
                    {
                      v19 = v16 == 9;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    if (!v19)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", "agc_llvm_object.cpp", 2109, "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)");
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "agc_llvm_object.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 2109;
                        *&buf[18] = 2080;
                        *&buf[20] = "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)";
                        _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", buf, 0x1Cu);
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315650;
                        *&buf[4] = "agc_llvm_object.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 2109;
                        *&buf[18] = 2080;
                        *&buf[20] = "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)";
                        _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", buf, 0x1Cu);
                      }

                      abort();
                    }

                    v20 = llvm::UndefValue::get();
                    v21 = *(*v15 + 12);
                    if (v21)
                    {
                      v22 = 0;
                      v23 = v15;
                      do
                      {
                        v24 = *(v23 - 4 * (*(v15 + 5) & 0x7FFFFFF));
                        *buf = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v59[0], v60, v24, buf))
                        {
                          v25 = *buf;
                          v26 = v59[0];
                          v27 = v60;
                        }

                        else
                        {
                          v26 = v59[0];
                          v27 = v60;
                          v25 = v59[0] + 64 * v60;
                        }

                        if (v26 + 64 * v27 == v25)
                        {
                          *buf = 6;
                          *&buf[8] = 0;
                          *&buf[16] = v24;
                          if (v24 != -8192 && v24 != -4096 && v24 != 0)
                          {
                            llvm::ValueHandleBase::AddToUseList(buf);
                          }
                        }

                        else
                        {
                          v28 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v59, v24);
                          llvm::ValueHandleBase::ValueHandleBase(buf, 3u, v28);
                        }

                        if (*&buf[16] != -8192 && *&buf[16] != -4096 && *&buf[16])
                        {
                          llvm::ValueHandleBase::RemoveFromUseList(buf);
                        }

                        v58 = 257;
                        AsInstruction = llvm::User::operator new(0x60);
                        v31 = llvm::Instruction::Instruction();
                        *(v31 + 64) = v31 + 80;
                        *(v31 + 72) = 0x400000000;
                        llvm::InsertValueInst::init();
                        llvm::Instruction::insertBefore();
                        ++v22;
                        v23 = (v23 + 32);
                      }

                      while (v21 != v22);
                    }

                    else
                    {
                      AsInstruction = v20;
                    }
                  }
                }

                v46 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v59, v15);
                llvm::ValueHandleBase::operator=(v46, AsInstruction);
                llvm::ValueMapper::ValueMapper();
                llvm::ValueMapper::remapInstruction(buf, AsInstruction);
                MEMORY[0x20F3300B0](buf);
                v14 = v56 + 1;
              }

              while (v56 + 1 != v55);
              v47 = *(v54 - 2);
              if (*v47)
              {
                v48 = *(v47 + 8);
                **(v47 + 16) = v48;
                if (v48)
                {
                  *(v48 + 16) = *(v47 + 16);
                }
              }

              *v47 = AsInstruction;
              v51 = AsInstruction[1];
              v50 = AsInstruction + 1;
              v49 = v51;
              *(v47 + 8) = v51;
              if (v51)
              {
                *(v49 + 16) = v47 + 8;
              }

              *(v47 + 16) = v50;
              *v50 = v47;
              LODWORD(v68) = v68 - 1;
              if (v63)
              {
                llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v61);
                llvm::deallocate_buffer(v62, v61, (16 * v62));
                v63 = 0;
              }
            }

            else
            {
              LODWORD(v68) = v68 - 1;
            }

            llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v59[0], v60);
            llvm::deallocate_buffer(v60, v59[0], (v60 << 6));
            goto LABEL_93;
          }

          v9 = *(v6 - 1);
          if (v9)
          {
            break;
          }

          LODWORD(v68) = --v5;
          LODWORD(i) = i - 1;
          if (!v5)
          {
            goto LABEL_96;
          }
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          break;
        }

        LODWORD(v68) = --v5;
        if (!v5)
        {
          goto LABEL_96;
        }
      }

      if (v9 == v10 && (!i || *(v64 + i - 1) != v7))
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v64, *(*(v6 - 2) + 24));
        v9 = *(v6 - 1);
      }

      *(v6 - 1) = *(v9 + 8);
      v11 = *(v9 + 24);
      v12 = *(v11 + 16);
      if (v12 < 0x1C)
      {
        if (v12 < 4)
        {
          continue;
        }

        v13 = *(v11 + 8);
        if (!v13)
        {
          continue;
        }
      }

      else
      {
        v13 = *(v11 + 8);
      }

      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v67, v9, v13);
LABEL_93:
      ;
    }
  }

  else
  {
    v64 = v66;
    i = 0x400000000;
  }

LABEL_96:
  llvm::Constant::removeDeadConstantUsers(this);
  if (v64 != v66)
  {
    free(v64);
  }

  if (v67 != v69)
  {
    free(v67);
  }
}

llvm::ValueHandleBase *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 6));
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF008;
      *(v4 + 3) = v9;
      v5 = v4 + 56;
      result = (v4 + 64);
      v2 += 64;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF008;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 6;
    v4[6] = 0;
    v4[7] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v14 = 2;
    v15 = 0;
    v16 = -4096;
    v17 = 0;
    v12 = 0;
    v13 = &unk_2825BF008;
    v9 = 2;
    v10 = 0;
    v11 = -8192;
    v2 = a2 << 6;
    v3 = (result + 40);
    do
    {
      v4 = *(v3 - 2);
      if (v4 != v16 && v4 != v11)
      {
        v6 = *(v3 + 2);
        if (v6 != -8192 && v6 != -4096 && v6 != 0)
        {
          result = llvm::ValueHandleBase::RemoveFromUseList(v3);
          v4 = *(v3 - 2);
        }
      }

      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 32));
      }

      v3 = (v3 + 64);
      v2 -= 64;
    }

    while (v2);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v16, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v15 = &unk_2825BF008;
  v18 = v4;
  v10 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v17, &v10);
  v6 = *v4 + (v4[2].u32[0] << 6);
  if (v5)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  if ((*v18 + (v18[2].u32[0] << 6)) != v7)
  {
    llvm::ValueHandleBase::ValueHandleBase(v13, 3u, v7 + 5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(v18, v7);
    v8 = v18;
    v10 = a2;
    llvm::ValueHandleBase::ValueHandleBase(v11, 3u, v13);
    llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(v9, v8, &v10);
    if (v12 != -8192 && v12 != -4096 && v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    if (v14 != -8192 && v14 != -4096 && v14)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v13);
    }
  }

  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 6);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 6);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[7];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a2 + 5));
  }

  v9[0] = 2;
  v9[1] = 0;
  v10 = -8192;
  v11 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v9);
  v6 = v10;
  a2[4] = v11;
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

__n128 llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(__n128 *a1, uint64_t a2, llvm::Value **a3)
{
  v5 = a3 + 1;
  llvm::CallbackVH::CallbackVH(&v12, *a3);
  v12 = &unk_2825BF008;
  v15 = a2;
  llvm::ValueHandleBase::ValueHandleBase(v17, (LODWORD(v13[0]) >> 1) & 3, v13);
  v16 = &unk_2825BF008;
  v19 = v15;
  llvm::ValueHandleBase::ValueHandleBase(v20, 3u, v5);
  v22 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a2, *(a2 + 16), v18, &v22);
  v7 = v22;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a2, &v16, v22);
    llvm::ValueHandleBase::operator=((v7 + 1), v17);
    v7[4] = v19;
    llvm::ValueHandleBase::ValueHandleBase((v7 + 5), 3u, v20);
    v8 = 1;
  }

  v9 = *a2;
  v10 = *(a2 + 16);
  if (v21 != -8192 && v21 != -4096 && v21)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v20);
  }

  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v17);
  }

  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v13);
  }

  result.n128_u64[0] = v7;
  result.n128_u64[1] = v9 + (v10 << 6);
  *a1 = result;
  a1[1].n128_u8[0] = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x20F330650](v8 << 6, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
    v24[0] = 2;
    v24[1] = 0;
    v25 = -4096;
    v26 = 0;
    v22 = 0;
    v23 = &unk_2825BF008;
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v9 = (v3 << 6);
    if (v3)
    {
      v10 = (v4 + 32);
      v11 = v9;
      do
      {
        v12 = *(v10 - 1);
        if (v12 != v25 && v12 != v21)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), v12, &v27);
          v16 = v27;
          llvm::ValueHandleBase::operator=((v27 + 8), v10 - 3);
          *(v16 + 32) = *v10;
          llvm::ValueHandleBase::ValueHandleBase((v16 + 40), 3u, v10 + 1);
          ++*(a1 + 2);
          v17 = v10[3];
          if (v17 != -8192 && v17 != -4096 && v17)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v10 + 1));
          }
        }

        v14 = *(v10 - 1);
        if (v14 != -8192 && v14 != -4096 && v14 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 3));
        }

        v10 += 8;
        v11 -= 64;
      }

      while (v11);
      if (v21 != -8192 && v21 != -4096 && v21)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v20);
      }
    }

    v18 = v25;
    if (v25 != -8192 && v25 != -4096 && v25)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v24);
    }

    return llvm::deallocate_buffer(v18, v4, v9);
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v9, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v11 = v2;
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v10, &v12);
  if (result)
  {
    v4 = v12;
    v5 = v12[7];
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v12 + 5));
    }

    v13[0] = 2;
    v13[1] = 0;
    v14 = -8192;
    v15 = 0;
    v12 = &unk_2825BF008;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v13);
    v7 = v14;
    v4[4] = v15;
    if (v7 != -8192 && v7 != -4096 && v7)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v10 != -8192 && v10 != -4096 && v10 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  return result;
}

void AGCLLVMObject::mutatePtrValueAddressSpace(AGCLLVMObject *this, llvm::Value *a2, unsigned int a3)
{
  v3 = *(*this + 8);
  if (v3 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v5 = *(this + 1);
    if (v5)
    {
      do
      {
        v10 = v5[3];
        std::vector<llvm::User *>::push_back[abi:nn200100](&v11, &v10);
        v5 = v5[1];
      }

      while (v5);
LABEL_4:
      v5 = v11;
      v6 = v12;
      while (v5 != v6)
      {
        v8 = *--v6;
        v7 = v8;
        v12 = v6;
        if (v8)
        {
          if (*(v7 + 16) != 60 && *(*v7 + 8) == 15 && (*(*v7 + 8) ^ v3) <= 0xFF)
          {
            *v7 = llvm::PointerType::getWithSamePointeeType(*v7, 0x40, a3);
            v9 = *(v7 + 8);
            if (v9)
            {
              do
              {
                v10 = *(v9 + 24);
                std::vector<llvm::User *>::push_back[abi:nn200100](&v11, &v10);
                v9 = *(v9 + 8);
              }

              while (v9);
              goto LABEL_4;
            }
          }
        }
      }
    }

    *this = llvm::PointerType::getWithSamePointeeType(*this, 0x40, a3);
    if (v5)
    {
      v12 = v5;
      operator delete(v5);
    }
  }
}

uint64_t AGCLLVMObject::AddPositionIndependentCodeMetadata(AGCLLVMObject *this)
{
  v1 = *(this + 267);
  v14 = "llvm.module.flags";
  v15 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v1, &v14);
  if (NamedMetadata)
  {
    v3 = NamedMetadata;
    for (i = 0; i < llvm::NamedMDNode::getNumOperands(v3); ++i)
    {
      Operand = llvm::NamedMDNode::getOperand(v3);
      v6 = *(Operand + 8);
      if (Operand + 8 - 8 * v6 != Operand)
      {
        v7 = Operand;
        v8 = 8 - 8 * v6;
        while (1)
        {
          v9 = *(v7 + v8);
          if (!*v9)
          {
            String = llvm::MDString::getString(v9);
            if (v11 == 9 && *String == 0x6576654C20434950 && *(String + 8) == 108)
            {
              break;
            }
          }

          v8 += 8;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        llvm::MDNode::replaceOperandWith();
        return llvm::Module::getOrInsertNamedMetadata();
      }

LABEL_13:
      ;
    }
  }

  llvm::Module::addModuleFlag();
  return llvm::Module::getOrInsertNamedMetadata();
}

AGCLLVMObject *AGCLLVMObject::setDylibLinkage(AGCLLVMObject *this, llvm::Value *a2)
{
  llvm::GlobalValue::setLinkage(this, 10);
  *(this + 80) &= ~1u;
  llvm::Constant::getNullValue(*(this + 3), v3);
  llvm::GlobalVariable::setInitializer();
  return this;
}

uint64_t AGCLLVMObject::getDylibBuiltinPerCommandStateVar(AGCLLVMObject *this)
{
  result = *(this + 284);
  if (!result)
  {
    if ((*(*this + 80))(this) == 7 || (*(*this + 80))(this) == 22 || (*(*this + 80))(this) == 8 || (*(*this + 80))(this) == 3 || (*(*this + 80))(this) == 4)
    {
      v3 = (*(**(*(this + 271) + 920) + 672))(*(*(this + 271) + 920), 0);
    }

    else
    {
      v3 = (*(**(*(this + 271) + 920) + 384))(*(*(this + 271) + 920), 0);
    }

    v4 = v3;
    v5 = llvm::PointerType::get();
    v9 = "agc.dylib_builtin_percommand_state_base";
    v10 = 259;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(this, v5, &v9, v4, 0, 5u);
    if ((*(*this + 80))(this) == 8)
    {
      AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v7);
      v8 = (*(**(*(this + 271) + 928) + 152))(*(*(this + 271) + 928));
      AGCLLVMObject::addDylibBinding(this, GlobalBufferBinding, v8);
    }

    llvm::ValueHandleBase::operator=((this + 2256), GlobalBufferBinding);
    return *(this + 284);
  }

  return result;
}

llvm::Instruction *AGCLLVMObject::buildReadDynamicLIBSize(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v8, a1 + 1712);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1 + 1704, "agc.get.eMRT_on_chip_partition_size", 35, *(a1 + 1896));
  v7 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 1712), *(inserted + 24), inserted, 0, 0, v6);
}

uint64_t *std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMObject::createAndBindDylibResources(AGCLLVMObject *this, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = (*(**(*(this + 271) + 928) + 16))(*(*(this + 271) + 928));
  v5 = (*(**(*(this + 271) + 928) + 24))(*(*(this + 271) + 928));
  v6 = (*(**(*(this + 271) + 928) + 32))(*(*(this + 271) + 928));
  v7 = (*(**(*(this + 271) + 928) + 40))(*(*(this + 271) + 928));
  v8 = (*(**(*(this + 271) + 928) + 48))(*(*(this + 271) + 928));
  v9 = (*(**(*(this + 271) + 928) + 56))(*(*(this + 271) + 928));
  v10 = (*(**(*(this + 271) + 928) + 72))(*(*(this + 271) + 928));
  v11 = (*(**(*(this + 271) + 928) + 96))(*(*(this + 271) + 928));
  v31 = v33;
  v32 = 0x2000000008;
  v33[1] = v4;
  v33[2] = 1;
  v33[3] = v5;
  v33[4] = 2;
  v33[5] = v6;
  v33[6] = 3;
  v33[7] = v7;
  v33[8] = 4;
  v33[9] = v8;
  v33[10] = 5;
  v33[11] = v9;
  v33[12] = 7;
  v33[13] = v10;
  v33[14] = 8;
  v33[15] = v11;
  v33[0] = 0;
  if (a2)
  {
    v12 = 0;
    do
    {
      v13 = (*(**(*(this + 271) + 928) + 152))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v12 + 17) | ((v12 + v13) << 32));
      ++v12;
    }

    while (a2 != v12);
  }

  if ((*(*this + 80))(this) != 27 && (*(*this + 80))(this) != 28)
  {
    v14 = (*(**(*(this + 271) + 928) + 80))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v14 << 32) | 9);
    v15 = (*(**(*(this + 271) + 928) + 64))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v15 << 32) | 6);
    v16 = (*(**(*(this + 271) + 928) + 88))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v16 << 32) | 0x10);
  }

  v17 = *(this + 271);
  if (*(v17 + 1908))
  {
    if ((*(this + 4577) & 1) == 0)
    {
      v18 = (*(**(v17 + 928) + 104))(*(v17 + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v18 << 32) | 0xA);
      v19 = (*(**(*(this + 271) + 928) + 112))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v19 << 32) | 0xB);
      v20 = (*(**(*(this + 271) + 928) + 120))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v20 << 32) | 0xC);
      v21 = (*(**(*(this + 271) + 928) + 128))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v21 << 32) | 0xD);
      if ((*(*this + 80))(this) != 27 && (*(*this + 80))(this) != 28)
      {
        v22 = (*(**(*(this + 271) + 928) + 144))(*(*(this + 271) + 928));
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v22 << 32) | 0xF);
        v23 = *(this + 271);
        if (*(v23 + 1946) == 1)
        {
          v24 = (*(**(v23 + 928) + 136))(*(v23 + 928));
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v24 << 32) | 0xE);
        }
      }
    }
  }

  v25 = v31;
  if (v32)
  {
    v26 = 8 * v32;
    do
    {
      v27 = *v25;
      v28 = (*(*this + 248))(this, *v25);
      if (v28)
      {
        v30 = v28;
        AGCLLVMObject::setDylibLinkage(v28, v29);
        AGCLLVMObject::addDylibBinding(this, v30, HIDWORD(v27));
      }

      ++v25;
      v26 -= 8;
    }

    while (v26);
    v25 = v31;
  }

  if (v25 != v33)
  {
    free(v25);
  }
}

llvm::Type *RewriteAdressSpacePass::TypeRemapper::remapType(RewriteAdressSpacePass::TypeRemapper *this, llvm::Type *a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v5 = this + 16;
  v4 = *(this + 2);
  v6 = *(this + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v7) = ((a2 >> 4) ^ (a2 >> 9)) & (v6 - 1);
  v8 = v4 + 16 * v7;
  v9 = *v8;
  if (*v8 != a2)
  {
    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v7 + v11++;
      v7 = v12 & (v6 - 1);
      v9 = *(v4 + 16 * v7);
      if (v9 == a2)
      {
        v8 = v4 + 16 * v7;
        goto LABEL_3;
      }
    }

LABEL_9:
    v13 = *(a2 + 2);
    if (a2 && v13 == 17)
    {
      v14 = (*(*this + 24))(this, *(a2 + 3));
      v15 = llvm::ArrayType::get(v14, *(a2 + 4));
LABEL_12:
      v10 = v15;
      goto LABEL_20;
    }

    if (a2 && v13 == 14)
    {
      v16 = *(a2 + 2);
      v17 = (v16 + 8 * *(a2 + 3));
      v33 = v35;
      v34 = 0x800000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v33, (v16 + 8), v17);
      if (v34)
      {
        v18 = v33;
        v19 = 8 * v34;
        do
        {
          *v18 = (*(*this + 24))(this, *v18);
          ++v18;
          v19 -= 8;
        }

        while (v19);
      }

      (*(*this + 24))(this, **(a2 + 2));
      v10 = llvm::FunctionType::get();
      v20 = v33;
      if (v33 != v35)
      {
LABEL_19:
        free(v20);
      }
    }

    else
    {
      if (a2 && v13 == 15)
      {
        if (llvm::Type::isOpaquePointerTy(a2))
        {
          v26 = *(a2 + 2);
          if (*(this + 2) == v26 >> 8)
          {
            v27 = *(this + 3);
          }

          else
          {
            v27 = (v26 >> 8);
          }

          v15 = llvm::PointerType::get(*a2, v27);
        }

        else
        {
          (*(*this + 24))(this, **(a2 + 2));
          v15 = llvm::PointerType::get();
        }

        goto LABEL_12;
      }

      if (a2 && v13 == 16)
      {
        v10 = a2;
        if ((v13 & 0x100) != 0)
        {
          v28 = *(a2 + 2);
          v29 = &v28[8 * *(a2 + 3)];
          v33 = v35;
          v34 = 0x800000000;
          llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v33, v28, v29);
          if (v34)
          {
            v30 = v33;
            v31 = 8 * v34;
            do
            {
              *v30 = (*(*this + 24))(this, *v30);
              ++v30;
              v31 -= 8;
            }

            while (v31);
          }

          if ((*(a2 + 2) & 0x400) != 0)
          {
            v32 = llvm::StructType::get();
          }

          else
          {
            llvm::StructType::getName(a2);
            v32 = llvm::StructType::create();
          }

          v10 = v32;
          v20 = v33;
          if (v33 != v35)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v10 = a2;
        if (a2)
        {
          v10 = a2;
          if ((v13 & 0xFE) == 0x12)
          {
            (*(*this + 24))(this, *(a2 + 3));
            v15 = llvm::VectorType::get();
            goto LABEL_12;
          }
        }
      }
    }

LABEL_20:
    v33 = 0;
    v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 2), *(this + 8), a2, &v33);
    v22 = v33;
    if (v21)
    {
LABEL_26:
      v22[1] = v10;
      return v10;
    }

    v23 = *(this + 6);
    v24 = *(this + 8);
    if (4 * v23 + 4 >= 3 * v24)
    {
      v24 *= 2;
    }

    else if (v24 + ~v23 - *(this + 7) > v24 >> 3)
    {
LABEL_23:
      ++*(this + 6);
      if (*v22 != -4096)
      {
        --*(this + 7);
      }

      *v22 = a2;
      v22[1] = 0;
      goto LABEL_26;
    }

    llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(v5, v24);
    v33 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 2), *(this + 8), a2, &v33);
    v22 = v33;
    goto LABEL_23;
  }

LABEL_3:
  if (v8 == v4 + 16 * v6)
  {
    goto LABEL_9;
  }

  return *(v8 + 8);
}

void RewriteAdressSpacePass::TypeRemapper::~TypeRemapper(llvm **this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 8), this[2], (16 * *(this + 8)));

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 8), this[2], (16 * *(this + 8)));
}

uint64_t RewriteAdressSpacePass::runOnModule(RewriteAdressSpacePass *this, llvm::Module *a2)
{
  v51[32] = *MEMORY[0x277D85DE8];
  v49 = v51;
  v50 = 0x2000000000;
  v45 = 128;
  v43 = MEMORY[0x20F330650](0x2000, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(&v43);
  LOBYTE(v46) = 0;
  v48 = 0;
  for (i = *(a2 + 4); i != (a2 + 24); i = i[1])
  {
    if (i)
    {
      v5 = (i - 7);
    }

    else
    {
      v5 = 0;
    }

    llvm::Module::materialize();
    if (llvm::GlobalValue::isDeclaration(v5))
    {
      if (*(v5 + 9))
      {
        v37 = &v39;
        v38 = 0x800000000;
        llvm::Intrinsic::getIntrinsicInfoTableEntries();
        v31[0] = &v32;
        v31[1] = 0x800000000;
        llvm::Intrinsic::matchIntrinsicSignature();
        Declaration = llvm::Intrinsic::getDeclaration();
        if (v5 != Declaration)
        {
          v7 = Declaration;
          v8 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v43, v5);
          llvm::ValueHandleBase::operator=(v8, v7);
        }

        if (v31[0] != &v32)
        {
          free(v31[0]);
        }

        if (v37 != &v39)
        {
          free(v37);
        }
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v49, v5);
    }
  }

  v39 = 128;
  v37 = MEMORY[0x20F330650](0x2000, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(&v37);
  LOBYTE(v40) = 0;
  v42 = 0;
  if (v50)
  {
    v9 = v49;
    v10 = 8 * v50;
    do
    {
      v11 = *v9++;
      v12 = RewriteAdressSpacePass::TypeRemapper::remapType((this + 32), *(v11 + 24));
      v13 = *(v11 + 32);
      v34 = 257;
      v14 = llvm::User::operator new(0x78);
      MEMORY[0x20F331170](v14, v12, v13 & 0xF, 0xFFFFFFFFLL, v31, a2);
      v15 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v37, v11);
      llvm::ValueHandleBase::operator=(v15, v14);
      v10 -= 8;
    }

    while (v10);
    if (v50)
    {
      v16 = v49;
      v17 = (v49 + 8 * v50);
      do
      {
        v18 = *v16;
        v19 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v37, *v16)[2];
        v32 = 128;
        v31[0] = MEMORY[0x20F330650](0x2000, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(v31);
        LOBYTE(v33) = 0;
        v36 = 0;
        v20 = v43;
        if (v44)
        {
          if (v45)
          {
            v21 = v45 << 6;
            while ((*(v20 + 3) | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v20 = (v20 + 64);
              v21 -= 64;
              if (!v21)
              {
                goto LABEL_26;
              }
            }
          }
        }

        else
        {
LABEL_26:
          v20 = (v43 + 64 * v45);
        }

        llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(v31, v20, v43 + 64 * v45, v43 + 64 * v45);
        v22 = v37;
        if (v38)
        {
          if (v39)
          {
            v23 = v39 << 6;
            while ((*(v22 + 3) | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v22 = (v22 + 64);
              v23 -= 64;
              if (!v23)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else
        {
LABEL_32:
          v22 = (v37 + 64 * v39);
        }

        llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(v31, v22, v37 + 64 * v39, v37 + 64 * v39);
        if (*(v18 + 9))
        {
          llvm::Function::BuildLazyArguments(v18);
        }

        v24 = *(v18 + 11);
        if (*(v19 + 18))
        {
          llvm::Function::BuildLazyArguments(v19);
        }

        for (j = *(v19 + 88); ; j += 40)
        {
          if (*(v18 + 9))
          {
            llvm::Function::BuildLazyArguments(v18);
          }

          if (v24 == (*(v18 + 11) + 40 * *(v18 + 12)))
          {
            break;
          }

          if (*(v19 + 18))
          {
            llvm::Function::BuildLazyArguments(v19);
          }

          if (j == *(v19 + 88) + 40 * *(v19 + 96))
          {
            break;
          }

          v26 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v31, v24);
          llvm::ValueHandleBase::operator=(v26, j);
          v24 = (v24 + 40);
        }

        llvm::CloneFunctionInto();
        if (v36 == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v33);
          llvm::deallocate_buffer(v35, v33, (16 * v35));
          v36 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v31[0], v32);
        llvm::deallocate_buffer(v32, v31[0], (v32 << 6));
        ++v16;
      }

      while (v16 != v17);
      if (v50)
      {
        v27 = v49;
        v28 = 8 * v50;
        do
        {
          v29 = *v27++;
          llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v37, v29);
          llvm::Value::takeName();
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
          llvm::Function::eraseFromParent(v29);
          v28 -= 8;
        }

        while (v28);
      }
    }
  }

  if (v42 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v40);
    llvm::deallocate_buffer(v41, v40, (16 * v41));
    v42 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v37, v39);
  llvm::deallocate_buffer(v39, v37, (v39 << 6));
  if (v48 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v46);
    llvm::deallocate_buffer(v47, v46, (16 * v47));
    v48 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v43, v45);
  llvm::deallocate_buffer(v45, v43, (v45 << 6));
  if (v49 != v51)
  {
    free(v49);
  }

  return 1;
}

void llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    v15 = v4;
    v16 = v5;
    v8 = a2;
    do
    {
      v12 = *(v8 + 24);
      llvm::ValueHandleBase::ValueHandleBase(v13, 3u, (v8 + 40));
      llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(&v11, a1, &v12);
      if (v14 != -8192 && v14 != -4096 && v14 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v13);
      }

      do
      {
        v8 += 64;
      }

      while (v8 != a3 && (*(v8 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v8 != a4);
  }
}

void RewriteAdressSpacePass::~RewriteAdressSpacePass(RewriteAdressSpacePass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825B01E0;
  *(this + 4) = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 16), *(this + 6), (16 * *(this + 16)));
  MEMORY[0x20F32FD10](this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B01E0;
  *(this + 4) = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 16), *(this + 6), (16 * *(this + 16)));

  JUMPOUT(0x20F32FD10);
}

uint64_t AGCLLVMTargetLowerer::getIntIntrinsicName(uint64_t a1, llvm::Type *this)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  result = 0;
  HIDWORD(v6) = ScalarSizeInBits - 8;
  LODWORD(v6) = ScalarSizeInBits - 8;
  v5 = v6 >> 3;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      a1 += 16;
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      a1 += 24;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    a1 += 8;
  }

  return *a1;
}

uint64_t llvm::IRBuilderBase::CreateNeg(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    Neg = (*(**(this + 9) + 192))(*(this + 9), a2, 0, 0);
    if (Neg)
    {
      v7 = *(Neg + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Neg, a3);
    }
  }

  else
  {
    Neg = llvm::BinaryOperator::CreateNeg();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Neg, a3);
  }

  return Neg;
}

llvm::Value *AGCLLVMTargetBuilder::getMinMaxConstants(AGCLLVMTargetBuilder *this, llvm::Type *a2, int a3, llvm::Value **a4, llvm::Value **a5, llvm::Type **a6)
{
  llvm::Type::getScalarSizeInBits(a2);
  *a6 = llvm::IntegerType::get();
  result = llvm::Type::getScalarSizeInBits(a2);
  HIDWORD(v13) = result - 8;
  LODWORD(v13) = result - 8;
  v12 = v13 >> 3;
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 7)
      {
        return result;
      }

      *a6 = a2;
      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return result;
      }

      if (a3)
      {
        goto LABEL_13;
      }

LABEL_14:
      *a4 = llvm::ConstantInt::get();
      result = llvm::ConstantInt::get();
      goto LABEL_15;
    }

    if (!a3)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  *a4 = llvm::ConstantInt::getSigned();
  result = llvm::ConstantInt::getSigned();
LABEL_15:
  *a5 = result;
  return result;
}

llvm::Type **AGCLLVMTargetBuilder::buildAddSat(AGCLLVMTargetBuilder *this, llvm::Type **a2, llvm::Type **a3, int a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = 1144;
  if (a4)
  {
    v9 = 1112;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(this + 58) + v9, *a2);
  if (IntIntrinsicName)
  {
    v11 = IntIntrinsicName;
    v12 = strlen(IntIntrinsicName);
    v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v11, v12, v8, v8, v8);
    v43[0] = a2;
    v43[1] = a3;
    v42 = 257;
    return llvm::IRBuilderBase::CreateCall(this + 1, *(v13 + 24), v13, v43, 2, v41);
  }

  v39 = 0;
  v40 = 0;
  v38 = 0;
  AGCLLVMTargetBuilder::getMinMaxConstants(*(this + 9), v8, a4, &v40, &v39, &v38);
  if (a4)
  {
    v15 = v38;
    ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v38);
    if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(v8))
    {
      v42 = 257;
      SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), a2, v15, v41);
      v42 = 257;
      v18 = llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), a3, v15, v41);
      v42 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((this + 8), SExtOrTrunc, v18, v41);
      v42 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 38, Add, v39, v41);
      v44 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 40, Add, v40, v43);
      llvm::IRBuilderBase::CreateSelect();
      Select = llvm::IRBuilderBase::CreateSelect();
      v21 = *a2;
      v42 = 257;
      return llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), Select, v21, v41);
    }

    v42 = 257;
    v24 = llvm::IRBuilderBase::CreateAdd((this + 8), a2, a3, v41);
    llvm::Type::getScalarSizeInBits(v8);
    v42 = 257;
    v25 = llvm::ConstantInt::get();
    LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v25, v41);
    llvm::Type::getScalarSizeInBits(v8);
    v42 = 257;
    v27 = llvm::ConstantInt::get();
    v28 = llvm::IRBuilderBase::CreateLShr((this + 8), a3, v27, v41);
    v42 = 257;
    Xor = llvm::IRBuilderBase::CreateXor(this + 1, LShr, v28, v41);
    v30 = llvm::ConstantInt::get();
    v44 = 257;
    v31 = llvm::IRBuilderBase::CreateXor(this + 1, Xor, v30, v43);
    llvm::Type::getScalarSizeInBits(v8);
    v42 = 257;
    v32 = llvm::ConstantInt::get();
    v33 = llvm::IRBuilderBase::CreateLShr((this + 8), v24, v32, v41);
    v42 = 257;
    v34 = llvm::IRBuilderBase::CreateXor(this + 1, LShr, v33, v41);
    v44 = 257;
    v35 = llvm::IRBuilderBase::CreateAnd((this + 8), v31, v34, v43);
    v36 = llvm::ConstantInt::get();
    v42 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 40, v24, v36, v41);
    v44 = 257;
    llvm::IRBuilderBase::CreateSelect();
    v37 = llvm::ConstantInt::get();
    v42 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 32, v35, v37, v41);
    v44 = 257;
  }

  else
  {
    v42 = 257;
    v22 = llvm::IRBuilderBase::CreateAdd((this + 8), a2, a3, v41);
    v42 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 36, v22, a2, v41);
    v23 = *a2;
    v44 = 257;
    llvm::IRBuilderBase::CreateZExtOrTrunc((this + 8), v39, v23, v43);
  }

  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateBarrier(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 464);
  v3 = *(v2 + 1032);
  if (v3)
  {
    v4 = strlen(*(v2 + 1032));
  }

  else
  {
    v4 = 0;
  }

  v5 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v3, v4, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v8[0] = llvm::ConstantInt::get();
  v8[1] = llvm::ConstantInt::get();
  v7[16] = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v5 + 24), v5, v8, 2, v7);
}

void AGCLLVMTargetConfig::createTensorBlitShader(uint64_t a1, AGCLLVMCtx *a2, uint64_t a3, _DWORD *a4)
{
  AGCLLVMObject::readBitcode(a3, "tensor_blit", 11, 1);
  {
    {
      AGCLLVMDriverTensorBlitShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCTensorBlitState const*)::computeCS = 0;
      *algn_27C8D9988 = 0;
      qword_27C8D9990 = 0;
    }
  }

  operator new();
}

void AGCLLVMTargetConfig::createUberBlitShader(uint64_t a1, AGCLLVMCtx *a2, uint64_t a3, _DWORD *a4)
{
  v5 = off_277E20A40[*a4 & 3];
  v6 = strlen(v5);
  AGCLLVMObject::readBitcode(a3, v5, v6, 0);
  {
    {
      qword_27C8D9938 = 0;
      *&dword_27C8D9940 = 512;
      AGCLLVMDriverUberBlitShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCUberBlitState const*)::computeCS = 0;
    }
  }

  operator new();
}

void AGCLLVMTargetConfig::createBVHBuilderShader(uint64_t a1, AGCLLVMCtx *a2, uint64_t a3, uint64_t a4)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v7 = *a4 & 0x3FFFFFFF;
  v8 = off_277E20450[v7];
  v9 = strlen(v8);
  v17 = v19;
  v18 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v8, &v8[v9]);
  if (v7 > 0x79)
  {
    if ((*(a4 + 3) & 0x40) != 0)
    {
      v14 = "_assert";
      v15 = "";
    }

    else
    {
      v14 = "_release";
      v15 = "";
    }

    goto LABEL_36;
  }

  if ((v7 - 103) <= 0x12)
  {
    if (*a4 < 0)
    {
      v10 = "_legacy";
    }

    else
    {
      v10 = "_temporal";
    }

    v11 = 7;
    if (*a4 >= 0)
    {
      v11 = 9;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v10, &v10[v11]);
  }

  if ((*(a4 + 3) & 0x40) != 0)
  {
    v12 = "_assert";
    v13 = "";
  }

  else
  {
    v12 = "_release";
    v13 = "";
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v12, v13);
  {
    AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride = 0;
  }

  if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride < 1)
  {
    v16 = *(*(a2 + 4) + 28);
    if (v16 > 33)
    {
      if (v16 != 34)
      {
        if (v16 == 35 || v16 == 38)
        {
LABEL_33:
          v14 = "_gen3";
          goto LABEL_35;
        }

LABEL_37:
        AGCLLVMObject::readBitcode(a3, v17, v18, 0);
        {
          {
            AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::computeCS = 0;
            *algn_27C8D9968 = 0;
            qword_27C8D9970 = 0;
          }
        }

        operator new();
      }

LABEL_34:
      v14 = "_gen2";
      goto LABEL_35;
    }

    if (v16 != 24 && v16 != 31)
    {
      if (v16 != 32)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride > 2)
    {
      if ((AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride - 3) >= 2)
      {
        if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 5)
        {
          goto LABEL_37;
        }

        v14 = "_gen5";
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 1)
    {
      if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  v14 = "_gen1";
LABEL_35:
  v15 = v14 + 5;
LABEL_36:
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v14, v15);
  goto LABEL_37;
}

void AGCLLVMTargetConfig::createComputeControlFlowPredicateShader(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  {
    AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int,BOOL,BOOL)::computeCS = 0;
    *algn_27C8D9918 = 0;
    qword_27C8D9920 = 0;
  }

  ComputeControlFlowBitcodeFileName = getComputeControlFlowBitcodeFileName(a2[4]);
  v7 = ComputeControlFlowBitcodeFileName;
  if (ComputeControlFlowBitcodeFileName)
  {
    v8 = strlen(ComputeControlFlowBitcodeFileName);
  }

  else
  {
    v8 = 0;
  }

  AGCLLVMObject::readBitcode(a3, v7, v8, 1);
  operator new();
}

void AGCLLVMTargetConfig::createComputeProgressMarkerShader(AGCLLVMTargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  {
    {
      AGCLLVMDriverComputeProgressMarkerShaderLegacy::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D98F8 = 0;
      qword_27C8D9900 = 0;
    }
  }

  AGCLLVMObject::readBitcode(a3, "progress_marker_compute", 23, 0);
  operator new();
}

llvm::Value *AGCLLVMTargetLowerer::buildUnpackFloatFormat(llvm::ConstantInt **a1, unsigned int a2, llvm::FixedVectorType *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &formats + 9 * a2;
  v12 = *v11;
  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = (*(*a1 + 186))(a1, a4, v11[i + 5], v11[i + 1], a5, a6);
      v16 = AGCLLVMBuilder::truncateToSmall(a1, v15, a3);
      v20 = 257;
      v17 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v16, v17, v19);
    }
  }

  return InsertElement;
}

llvm::Value *AGCLLVMTargetLowerer::buildPackFloatFormat(llvm::ConstantInt **a1, unsigned int a2, llvm::Type *a3, llvm::Value *a4, uint64_t a5, uint64_t a6)
{
  v12 = llvm::ConstantInt::get();
  v13 = &formats + 9 * a2;
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    do
    {
      v21 = 257;
      v16 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a4, v16, v20);
      v18 = (*(*a1 + 187))(a1, Element, v13[v15 + 1], v13[v15 + 5], a5, a6);
      v21 = 257;
      v12 = llvm::IRBuilderBase::CreateOr((a1 + 1), v12, v18, v20);
      ++v15;
    }

    while (v14 != v15);
  }

  return AGCLLVMBuilder::truncateToSmall(a1, v12, a3);
}

uint64_t AGCLLVMTargetLowerer::buildUnpack1010102(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  return (*(*a1 + 1536))(a1, v5, a3, a2);
}

llvm::Value *AGCLLVMTargetLowerer::buildPackUIntTo1010102(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v7 = 0;
  for (i = 0; i != 4; ++i)
  {
    v20 = 257;
    v9 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v9, v19);
    if (i == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 10;
    }

    v12 = AGCLLVMBuilder::clampToWidth(this, Element, v11, 0);
    v13 = this[25];
    v20 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this + 1, v12, v13, 0, v19, v14);
    v20 = 257;
    v16 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((this + 1), IntCast, v16, v19);
    v20 = 257;
    result = llvm::IRBuilderBase::CreateOr((this + 1), v6, Shl, v19);
    v6 = result;
    v7 += 10;
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackFromFloat(AGCLLVMTargetLowerer *this, llvm::Value *a2, int a3, unsigned int a4, int a5, int a6)
{
  v10 = AGCLLVMBuilder::f32Extend(this, a2, 1);
  v24 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (this + 8));
  v26 = *(this + 26);
  v11 = llvm::ConstantFP::get();
  v12 = llvm::ConstantFP::get();
  v13 = (*(*this + 80))(this, &v24, v10, v11, v12, 0);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = llvm::ConstantFP::get();
  v23 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v13, v14, v22);
  v15 = *(this + 172);
  if (v15)
  {
    v16 = strlen(*(this + 172));
  }

  else
  {
    v16 = 0;
  }

  v17 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v15, v16, *(this + 25), *(this + 21));
  v23 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this + 1, *(v17 + 24), v17, &FMul, 1, v22);
  if (a4 + a3 <= 0x1F && a6)
  {
    v23 = 257;
    v19 = llvm::ConstantInt::get();
    v18 = llvm::IRBuilderBase::CreateAnd((this + 8), v18, v19, v22);
  }

  v23 = 257;
  v20 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateShl((this + 8), v18, v20, v22);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackToFloat(AGCLLVMTargetLowerer *this, llvm::ConstantInt **a2, unsigned int a3, int a4, int a5, int a6)
{
  v30 = 257;
  v12 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v12, v29);
  v14 = *(this + 24);
  v30 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast(this + 1, LShr, v14, 0, v29, v15);
  if (a6)
  {
    v30 = 257;
    v17 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((this + 8), IntCast, v17, v29);
    v30 = 257;
    v19 = llvm::ConstantInt::get();
    AShr = llvm::IRBuilderBase::CreateAShr((this + 8), Shl, v19, v29);
    if (a5)
    {
      v21 = llvm::ConstantInt::get();
      AShr = AGCLLVMBuilder::buildICmpSel(this, AShr, v21, 38);
    }

    v22 = *(this + 21);
    v30 = 257;
    SIToFP = llvm::IRBuilderBase::CreateSIToFP((this + 8), AShr, v22, v29);
  }

  else
  {
    if (a4 + a3 <= 0x1F)
    {
      v30 = 257;
      v24 = llvm::ConstantInt::get();
      IntCast = llvm::IRBuilderBase::CreateAnd((this + 8), IntCast, v24, v29);
    }

    v25 = *(this + 21);
    v30 = 257;
    SIToFP = llvm::IRBuilderBase::CreateUIToFP((this + 8), IntCast, v25, v29);
  }

  v26 = SIToFP;
  if (a5)
  {
    v27 = llvm::ConstantFP::get();
    v30 = 257;
    return llvm::IRBuilderBase::CreateFMul(this + 8, v26, v27, v29);
  }

  return v26;
}

llvm::Instruction *AGCLLVMTargetLowerer::buildUnpackNorm16(llvm::FixedVectorType **this, llvm::Value *a2, llvm::Function *a3, BOOL a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) == 0x12 && (v7 = *(*a2 + 32), v7 != 1))
  {
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v17 = 257;
        v11 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v11, v16);
        v18 = AGCLLVMBuilder::extendVector(this, Element, 2, v13);
        v19 = 0;
        v19 = llvm::ConstantInt::get();
        v17 = 257;
        v14 = llvm::IRBuilderBase::CreateCall(this + 1, *(a3 + 3), a3, &v18, 2, v16);
        v17 = 257;
        v15 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), InsertElement, v14, v15, v16);
      }
    }
  }

  else
  {
    v18 = AGCLLVMBuilder::extendVector(this, a2, 2, a4);
    v19 = llvm::ConstantInt::get();
    v17 = 257;
    return llvm::IRBuilderBase::CreateCall(this + 1, *(a3 + 3), a3, &v18, 2, v16);
  }

  return InsertElement;
}

llvm::Instruction *AGCLLVMTargetLowerer::buildUnpackNorm8(AGCLLVMTargetLowerer *this, llvm::Value *a2, llvm::Function *a3, BOOL a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    v7 = AGCLLVMBuilder::extendVector(this, a2, 4, a4);
    goto LABEL_8;
  }

  v6 = *(*a2 + 32);
  v7 = AGCLLVMBuilder::extendVector(this, a2, 4, a4);
  if (v6 == 1)
  {
LABEL_8:
    v15 = v7;
    v16 = llvm::ConstantInt::get();
    v14 = 257;
    return llvm::IRBuilderBase::CreateCall(this + 1, *(a3 + 3), a3, &v15, 2, v13);
  }

  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v15 = v7;
      v16 = 0;
      v16 = llvm::ConstantInt::get();
      v14 = 257;
      v10 = llvm::IRBuilderBase::CreateCall(this + 1, *(a3 + 3), a3, &v15, 2, v13);
      v14 = 257;
      v11 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v10, v11, v13);
    }
  }

  return InsertElement;
}

double AGCLLVMTargetLowerer::createShaderCoreBindings@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildCurveIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildBoundingBoxIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildTriangleIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildGetUnpackedSCSLayout@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildPayloadStridesFromConfigurationBuffer@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildIntersectRayWithResults@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildSCSConfiguration@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  if (v4)
  {
    result = llvm::MetadataTracking::retrack();
    *v5 = 0;
  }

  *(a2 + 24) = *(a1 + 24);
  return result;
}

double AGCLLVMTargetLowerer::readRayPointerT@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void AGCLLVMTargetLowerer::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

uint64_t AGCLLVMTargetLowerer::buildTextureOOBReadSWWA(uint64_t a1, uint64_t a2, _BYTE *a3, AGCLLVMUserObject *a4, void *a5, int a6, int a7, int a8)
{
  v58 = *a2;
  v59 = *(a2 + 16);
  if (v59)
  {
    llvm::MetadataTracking::track();
  }

  v60 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v58);
  if (v59)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = llvm::ConstantInt::get();
  if (a5[21])
  {
    v17 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 5);
    v62 = 257;
    Load = AGCLLVMBuilder::CreateLoad(a1, v17, v61);
    v19 = llvm::ConstantInt::get();
    v57 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Load, v19, v56);
    v21 = a5[21];
    v22 = *v21;
    v62 = 257;
    ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), Sub, v22, v61);
    v57 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v21, ZExtOrTrunc, v56);
    v55 = 257;
    v16 = llvm::IRBuilderBase::CreateOr((a1 + 8), v16, ICmp, v54);
  }

  if (a6)
  {
    v25 = &a3[*(*a3 - 24)];
    v26 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 2);
    v62 = 257;
    v27 = AGCLLVMBuilder::CreateLoad((v25 + 1704), v26, v61);
    v28 = &a3[*(*a3 - 24)];
    v62 = 257;
    v29 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v28 + 1712), v27, v29, v61);
    v31 = llvm::ConstantInt::get();
    v62 = 257;
    v32 = llvm::IRBuilderBase::CreateSub((a1 + 8), Element, v31, v61);
    v33 = a5[19];
    v34 = *v33;
    v62 = 257;
    v35 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v32, v34, v61);
    v57 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v33, v35, v56);
    v55 = 257;
    v16 = llvm::IRBuilderBase::CreateOr((a1 + 8), v16, v36, v54);
  }

  if (a7)
  {
    v37 = a5[29];
    v38 = llvm::ConstantInt::get();
    v62 = 257;
    v39 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v37, v38, v61);
    v57 = 257;
    v16 = llvm::IRBuilderBase::CreateOr((a1 + 8), v16, v39, v56);
  }

  if (a8)
  {
    v40 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 6);
    v62 = 257;
    v41 = AGCLLVMBuilder::CreateLoad(a1, v40, v61);
    v42 = llvm::ConstantInt::get();
    v57 = 257;
    v43 = llvm::IRBuilderBase::CreateSub((a1 + 8), v41, v42, v56);
    v44 = a5[27];
    v45 = *v44;
    v62 = 257;
    v46 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v43, v45, v61);
    v57 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v44, v46, v56);
    v55 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v16, v47, v54);
  }

  v48 = a5[17];
  if ((*(*v48 + 8) & 0xFE) == 0x12)
  {
    v62 = 257;
    v49 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v48, v49, v61);
    v50 = a5[17];
    llvm::ConstantInt::get();
    v62 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v57 = 257;
    v52 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v50, Select, v52, v56);
  }

  else
  {
    llvm::ConstantInt::get();
    v62 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

unsigned __int8 *AGCLLVMTargetLowerer::buildBarycentricCoords(llvm::ConstantFP **a1, uint64_t a2, llvm::Value *a3, int a4)
{
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 3)
  {
    v26 = 257;
    v10 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v10, v25);
    v26 = 257;
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v12, v25);
    v14 = llvm::ConstantFP::get();
    v26 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), Element, v13, v25);
    v24[16] = 257;
    FSub = llvm::IRBuilderBase::CreateFSub((a1 + 1), v14, FAdd, v24);
    v17 = llvm::UndefValue::get();
    v26 = 257;
    v18 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v17, Element, v18, v25);
    v26 = 257;
    v20 = llvm::ConstantInt::get();
    v21 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v13, v20, v25);
    v26 = 257;
    v22 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v21, FSub, v22, v25);
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return 0;
    }

    v26 = 257;
    v8 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v8, v25);
  }

  return a3;
}

void AGCLLVMTargetLowerer::exceededResourceLimits(AGCLLVMTargetLowerer *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a5 + a2;
  v13 = a6 + a3;
  v14 = a7 + a4;
  std::string::basic_string[abi:nn200100]<0>(&v65, &unk_20E75F419);
  v15 = (*(**(this + 115) + 24))(*(this + 115), a8);
  v16 = (*(**(this + 115) + 16))(*(this + 115));
  v17 = v16;
  if (v12 <= v15)
  {
    if (v14 <= 0x10 && v13 <= v16)
    {
      v31 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v59, v12);
    v18 = std::string::insert(&v59, 0, " buffers (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, "/");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = (*(**(this + 115) + 24))(*(this + 115), a8);
    std::to_string(&__p, v22);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v61, p_p, size);
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v62, ")");
    v28 = v27->__r_.__value_.__r.__words[2];
    v63 = *&v27->__r_.__value_.__l.__data_;
    v64 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63;
    }

    if (v64 >= 0)
    {
      v30 = HIBYTE(v64);
    }

    else
    {
      v30 = *(&v63 + 1);
    }

    std::string::append(&v65, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v13 > v17)
  {
    std::to_string(&v59, v13);
    v32 = std::string::insert(&v59, 0, " textures (");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v60, "/");
    v35 = v34->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = (*(**(this + 115) + 16))(*(this + 115));
    std::to_string(&__p, v36);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v61, v37, v38);
    v40 = v39->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v62, ")");
    v42 = v41->__r_.__value_.__r.__words[2];
    v63 = *&v41->__r_.__value_.__l.__data_;
    v64 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v43 = &v63;
    }

    else
    {
      v43 = v63;
    }

    if (v64 >= 0)
    {
      v44 = HIBYTE(v64);
    }

    else
    {
      v44 = *(&v63 + 1);
    }

    std::string::append(&v65, v43, v44);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v14 >= 0x11)
  {
    std::to_string(&v59, v14);
    v45 = std::string::insert(&v59, 0, " samplers (");
    v46 = v45->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v60, "/");
    v48 = v47->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v61, v49, v50);
    v52 = v51->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v62, ")");
    v54 = v53->__r_.__value_.__r.__words[2];
    v63 = *&v53->__r_.__value_.__l.__data_;
    v64 = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v55 = &v63;
    }

    else
    {
      v55 = v63;
    }

    if (v64 >= 0)
    {
      v56 = HIBYTE(v64);
    }

    else
    {
      v56 = *(&v63 + 1);
    }

    std::string::append(&v65, v55, v56);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  v31 = 1;
LABEL_80:
  *a9 = v31;
  v57 = (a9 + 8);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v57 = v65;
  }
}

void AGCLLVMTargetLowerer::buildConvertHFP8_ParseArgTypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t AGCLLVMTargetLowerer::getDisableTriangleMerging(AGCLLVMTargetLowerer *this, int a2, unsigned int a3, BOOL a4, unsigned int a5, const unsigned __int8 *a6)
{
  if (a3 > 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  return v6 | a5;
}

llvm::Instruction *AGCLLVMTargetLowerer::buildMovmsk(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::IntegerType::get();
  v7 = *(a1 + 1624);
  if (v7)
  {
    v8 = strlen(*(a1 + 1624));
  }

  else
  {
    v8 = 0;
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, *(a1 + 144), v6);
  v13 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v6, 1, v12, v10);
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, &IntCast, 1, v12);
}

llvm::Instruction *AGCLLVMTargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = *(a1 + 1616);
  if (v5)
  {
    v6 = strlen(*(a1 + 1616));
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v5, v6, *(a1 + 144), *(a1 + 168));
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v7 + 24), v7, &v14, 1, v9);
}

uint64_t AGCLLVMTargetLowerer::buildGammaExpansion(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::subrangeVector(a1, a3, 0, 3, 1);
  InsertElement = llvm::UndefValue::get();
  v8 = *(*v6 + 32);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v30 = 257;
      v10 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v6, v10, v29);
      v26 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (a1 + 8));
      v28 = *(a1 + 104);
      v12 = *(a1 + 192);
      v30 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Element, v12, v29);
      v14 = (*(*a1 + 152))(a1, &v26, Cast, 0, *(a1 + 152));
      if (v27)
      {
        llvm::MetadataTracking::untrack();
      }

      v30 = 257;
      v15 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v14, v15, v29);
    }
  }

  v23 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v24, (a1 + 8));
  v25 = *(a1 + 104);
  v30 = 257;
  v16 = llvm::ConstantInt::get();
  v17 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v16, v29);
  v18 = (*(*a1 + 96))(a1, &v23, v17, 8, 0, 32);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v19 = *(a1 + 152);
  v30 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), v18, v19, v29);
  return AGCLLVMBuilder::combineRGBA(a1, InsertElement, FPTrunc, v21);
}

uint64_t AGCLLVMTargetLowerer::convertRegisterMaskToMRTMask(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = vdupq_n_s64(a3);
  while (1)
  {
    if (((*(a2 + 32) >> v3) & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(a2 + v4);
    v8 = v7 & 0x1F;
    if (v8 == 23)
    {
      goto LABEL_25;
    }

    if ((~v7 & 0xFF000) == 0)
    {
      break;
    }

    v9 = (*(a1 + 964) * (v7 >> 12)) >> 1;
    if (v8 <= 0x16)
    {
      if (((1 << v8) & 0x41F3C0) != 0)
      {
        v10 = vshlq_u32(xmmword_20E70C6D0, vdupq_n_s32(v9));
        v11.i64[0] = v10.i32[2];
        v11.i64[1] = v10.i32[3];
        v12 = v11;
        v11.i64[0] = v10.i32[0];
        v11.i64[1] = v10.i32[1];
        v13 = vbicq_s8(xmmword_20E70C6D0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v11)), vceqzq_s64(vandq_s8(v6, v12))));
LABEL_10:
        v21 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
        v22 = v21.i32[0] | v21.i32[1];
        goto LABEL_24;
      }

      if (((1 << v8) & 0x20C00) != 0)
      {
        v14 = vdupq_n_s32(v9);
        v15 = vshlq_u32(xmmword_20E70C6D0, v14);
        v16.i64[0] = v15.i32[2];
        v16.i64[1] = v15.i32[3];
        v17 = v16;
        v16.i64[0] = v15.i32[0];
        v16.i64[1] = v15.i32[1];
        v18 = vbicq_s8(xmmword_20E70C6E0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v17))));
        v19 = vshlq_u32(xmmword_20E70C6F0, v14);
        v16.i64[0] = v19.i32[2];
        v16.i64[1] = v19.i32[3];
        v20 = v16;
        v16.i64[0] = v19.i32[0];
        v16.i64[1] = v19.i32[1];
        v13 = vorrq_s8(vbicq_s8(xmmword_20E70C700, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v20)))), v18);
        goto LABEL_10;
      }

      if (v8 == 18)
      {
        if ((a3 & (1 << v9)) != 0)
        {
          v23 = 3;
        }

        else
        {
          v23 = 0;
        }

        v24 = 2 << v9;
        v25 = v23 | 0xE;
LABEL_21:
        if ((a3 & v24) != 0)
        {
          v22 = v25;
        }

        else
        {
          v22 = v23;
        }

        goto LABEL_24;
      }
    }

    if (v8 - 2 < 4)
    {
      if ((a3 & (1 << v9)) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      v24 = 2 << v9;
      v25 = v23 | 0xC;
      goto LABEL_21;
    }

    v22 = 0;
LABEL_24:
    v5 |= ((-1 << (v7 >> 5)) & (((v22 & ~(-1 << (v7 >> 5))) >> ((v7 >> 5) - 1) << 31) >> 31) & 0xF | v22 & ~(-1 << (v7 >> 5))) << v4;
LABEL_25:
    v4 += 4;
    ++v3;
    if (v4 == 32)
    {
      return v5;
    }
  }

  v27 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMTargetLowerer::emulatedColorMask(v27, v28, v29);
}

uint64_t AGCLLVMTargetLowerer::buildFrontFacing(uint64_t a1, uint64_t a2)
{
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 1680);
  if (v4)
  {
    v5 = strlen(*(a1 + 1680));
  }

  else
  {
    v5 = 0;
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v4, v5, *(a1 + 200));
  v11 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v10);
  v8 = llvm::ConstantInt::get();
  v11 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v7, v8, v10);
}

void AGCLLVMTargetLowerer::getListOfFunctionsInMetalRuntimeWithFastAndNonFastVariants(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Instruction *AGCLLVMTargetLowerer::getVertexInputCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 448))(a1, a3, a4);
  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "agc.read_vi.f32", 15, *(a1 + 168), *(a1 + 200));
  v11 = llvm::ConstantInt::get();
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, &v11, 1, v10);
}

uint64_t AGCLLVMTargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2)
{
  result = *a2;
  *a2 = result + 1;
  return result;
}

unsigned __int8 *AGCLLVMTargetLowerer::buildSparseSample(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v15[0] = *a3;
  v15[1] = v6;
  llvm::StructType::get();
  v7 = llvm::UndefValue::get();
  v11 = 0;
  v16 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + 8, v7, a3, &v11, 1, v15);
  v9 = llvm::ConstantInt::get();
  v11 = 1;
  v16 = 257;
  return llvm::IRBuilderBase::CreateInsertValue(a1 + 8, InsertValue, v9, &v11, 1, v15);
}

void AGCLLVMTargetLowerer::buildManualResolve(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t AGCLLVMTargetLowerer::buildReadOutputPartitionFromState(llvm::ConstantInt **a1, uint64_t a2, unsigned int *a3, uint64_t a4, llvm::Value *a5, llvm::Type *a6)
{
  v34 = *a2;
  v35 = *(a2 + 16);
  if (v35)
  {
    llvm::MetadataTracking::track();
  }

  v36 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v34);
  if (v35)
  {
    llvm::MetadataTracking::untrack();
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a6);
  v26 = v12;
  v13 = llvm::TypeSize::operator unsigned long long();
  v15 = *a3;
  v14 = a3[1];
  if (*a3 > 0x16)
  {
    goto LABEL_12;
  }

  if (((1 << v15) & 0x41F3C0) != 0)
  {
    v16 = 2 * v14;
    goto LABEL_15;
  }

  if (((1 << v15) & 0x3C0000) != 0)
  {
    v16 = 4;
    goto LABEL_15;
  }

  if (((1 << v15) & 0x20C00) != 0)
  {
    v16 = 4 * v14;
  }

  else
  {
LABEL_12:
    if (v15 - 2 >= 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = a3[1];
    }
  }

LABEL_15:
  v24 = a6;
  if (v13 == 32)
  {
    v31 = *a2;
    v32 = *(a2 + 16);
    if (v32)
    {
      llvm::MetadataTracking::track();
    }

    v33 = *(a2 + 24);
    InsertElement = (*(*a1 + 31))(a1, &v31, a5, a5);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v16)
    {
      v18 = 0;
      do
      {
        v28 = *a2;
        v29 = *(a2 + 16);
        if (v29)
        {
          llvm::MetadataTracking::track();
        }

        v30 = *(a2 + 24);
        v19 = llvm::ConstantInt::get();
        v27 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), a5, v19, &PrimitiveSizeInBits);
        v21 = (*(*a1 + 31))(a1, &v28, Add, a4);
        if (v29)
        {
          llvm::MetadataTracking::untrack();
        }

        v27 = 257;
        v22 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v21, v22, &PrimitiveSizeInBits);
        ++v18;
      }

      while ((v16 + 3) >> 2 != v18);
    }
  }

  v27 = 257;
  return llvm::IRBuilderBase::CreateCast((a1 + 1), 49, InsertElement, v24, &PrimitiveSizeInBits);
}

llvm::Value *AGCLLVMTargetLowerer::buildWriteOutputPartitionFromState@<X0>(llvm::ConstantInt **a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, llvm::Type *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = *a2;
  v41 = *(a2 + 16);
  if (v41)
  {
    llvm::MetadataTracking::track();
  }

  v42 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v40);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a6);
  v35 = v16;
  v17 = llvm::TypeSize::operator unsigned long long();
  v19 = *a3;
  v18 = a3[1];
  if (*a3 > 0x16)
  {
    goto LABEL_12;
  }

  if (((1 << v19) & 0x41F3C0) != 0)
  {
    v20 = 2 * v18;
    goto LABEL_15;
  }

  if (((1 << v19) & 0x3C0000) != 0)
  {
    v20 = 4;
    goto LABEL_15;
  }

  if (((1 << v19) & 0x20C00) != 0)
  {
    v20 = 4 * v18;
  }

  else
  {
LABEL_12:
    if (v19 - 2 >= 4)
    {
      v20 = 0;
    }

    else
    {
      v20 = a3[1];
    }
  }

LABEL_15:
  if (v17 == 32)
  {
    v37 = *a2;
    v38 = *(a2 + 16);
    if (v38)
    {
      llvm::MetadataTracking::track();
    }

    v39 = *(a2 + 24);
    v21 = a1[25];
    v36 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a7, v21, &PrimitiveSizeInBits);
    result = (*(*a1 + 30))(a1, &v37, a5, Cast, a4);
    if (v38)
    {
      result = llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v24 = llvm::FixedVectorType::get();
    v36 = 257;
    result = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a7, v24, &PrimitiveSizeInBits);
    if (v20)
    {
      v25 = result;
      v26 = 0;
      do
      {
        v36 = 257;
        v27 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v25, v27, &PrimitiveSizeInBits);
        v31 = *a2;
        v32 = *(a2 + 16);
        if (v32)
        {
          llvm::MetadataTracking::track();
        }

        v33 = *(a2 + 24);
        v29 = llvm::ConstantInt::get();
        v36 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), a5, v29, &PrimitiveSizeInBits);
        result = (*(*a1 + 30))(a1, &v31, Add, Element, a4);
        if (v32)
        {
          result = llvm::MetadataTracking::untrack();
        }

        ++v26;
      }

      while ((v20 + 3) >> 2 != v26);
    }
  }

  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 24) = 0;
  *(a8 + 16) = 0;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackXR10(llvm::ConstantFP **a1, uint64_t a2, uint64_t a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantFP::get();
  v17 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), a3, v6, v16);
  v8 = llvm::ConstantFP::get();
  v15 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), FMul, v8, v14);
  v10 = a1[41];
  v17 = 257;
  FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FAdd, v10, v16);
  v12 = llvm::ConstantInt::get();
  v15 = 257;
  return llvm::IRBuilderBase::CreateShl((a1 + 1), FPToUI, v12, v14);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackXR10(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantInt::get();
  v30 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), a3, v6, v29);
  v8 = *(a1 + 296);
  v30 = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 8), LShr, v8, v29);
  v10 = llvm::ConstantFP::get();
  v25 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(a1 + 8, UIToFP, v10, v24);
  v12 = llvm::ConstantFP::get();
  v30 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(a1 + 8, FSub, v12, v29);
  v21 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
  v23 = *(a1 + 104);
  v30 = 257;
  v14 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), FMul, v14, v29);
  v16 = llvm::ConstantFP::get();
  v17 = llvm::ConstantFP::get();
  v18 = (*(*a1 + 80))(a1, &v21, Element, v16, v17, 0);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v30 = 257;
  v19 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((a1 + 8), FMul, v18, v19, v29);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 <= 4)
  {
    if (a3 >= 4)
    {
      if (a3 == 4)
      {
        return (*(*a1 + 1512))(a1, a5, a4, 3, a6, a7);
      }
    }

    else
    {
      return (*(*a1 + 1536))(a1, a3, a4, a5, a6, a7);
    }
  }

  else if (a3 > 7)
  {
    if ((a3 - 9) >= 2)
    {
      if (a3 == 8)
      {
        return (*(*a1 + 1560))(a1, a5, a4);
      }
    }

    else
    {
      return (*(*a1 + 1576))(a1, a3, a5, a4, a7);
    }
  }

  else if (a3 == 5)
  {
    return (*(*a1 + 1512))(a1, a5, a4, 4, a6, a7);
  }

  else if (a3 == 6)
  {
    v15 = (*(*a1 + 1512))(a1, a5, a1[19], 4, a6, a7);
    v16 = a1[41];
    v18 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v15, v16, v17);
  }

  else
  {
    return (*(*a1 + 1544))(a1, a5, a4);
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if ((a3 - 9) < 2)
      {
        return (*(*a1 + 1584))(a1, a3, a5, a7);
      }
    }

    else if (a3 == 6)
    {
      return (*(*a1 + 1504))(a1, a5);
    }

    else if (a3 == 7)
    {
      return (*(*a1 + 1552))(a1, a5);
    }

    else
    {
      return (*(*a1 + 1568))(a1, a5);
    }
  }

  else if (a3 >= 4)
  {
    if (a3 == 5)
    {
      return (*(*a1 + 1520))(a1, a5, a6, a7);
    }
  }

  else
  {
    return (*(*a1 + 1528))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

llvm::Value *AGCLLVMTargetLowerer::buildUnpackNorm(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 16)
  {
    v15 = 176;
    if (a5)
    {
      v15 = 174;
    }

    v16 = a1[v15];
    if (v16)
    {
      v17 = strlen(a1[v15]);
    }

    else
    {
      v17 = 0;
    }

    v21 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v16, v17, a1[21], a1[30], a1[25]);
    v20 = (*(*a1 + 1480))(a1, a3, v21);
  }

  else
  {
    if (a4 != 8)
    {
      return 0;
    }

    v12 = 177;
    if (a5)
    {
      v12 = 175;
    }

    v13 = a1[v12];
    if (v13)
    {
      v14 = strlen(a1[v12]);
    }

    else
    {
      v14 = 0;
    }

    v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v13, v14, a1[21], a1[40], a1[25]);
    v20 = (*(*a1 + 1472))(a1, a3, v19);
  }

  v18 = v20;
  if (a6 != 32)
  {
    v22 = a1[19];
    v25 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), v20, v22, v24);
  }

  return v18;
}

uint64_t AGCLLVMTargetLowerer::buildFMax(llvm::ConstantInt **a1, __int128 *a2, llvm::UndefValue **a3, llvm::Value *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = AGCLLVMTargetLowerer::flushNaN(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = AGCLLVMTargetLowerer::flushNaN(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMTargetLowerer::buildFCmpSel(a1, &v12, v9, a4, 2);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Value *AGCLLVMTargetLowerer::flushNaN(uint64_t a1, uint64_t a2, llvm::UndefValue **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, *(a1 + 1976));
  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 2);
  }

  if (v8 == *(a1 + 152))
  {
    v9 = ".f16";
  }

  else
  {
    v9 = ".f32";
  }

  std::string::append(&v15, v9);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, size, v8, v8, v8);
  v13 = AGCLLVMBuilder::map2(a1, v12, a3, a4);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

uint64_t AGCLLVMTargetLowerer::buildFCmpSel(llvm::ConstantInt **a1, uint64_t a2, llvm::Value *a3, llvm::FixedVectorType **a4, uint64_t a5)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*a3 != *a4)
  {
    AGCLLVMBuilder::splat(a1, *(*a3 + 32), a4, v9);
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMTargetLowerer::buildFMin(llvm::ConstantInt **a1, __int128 *a2, llvm::UndefValue **a3, llvm::Value *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = AGCLLVMTargetLowerer::flushNaN(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = AGCLLVMTargetLowerer::flushNaN(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMTargetLowerer::buildFCmpSel(a1, &v12, v9, a4, 4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMTargetLowerer::remapGradients(uint64_t result, uint64_t a2, llvm::Value *a3, llvm::Value *a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      v14 = 0;
      v15 = 0;
      v14 = llvm::ConstantInt::get();
      v15 = llvm::ConstantInt::get();
      v11 = llvm::ConstantVector::get();
      v13[16] = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v8 + 8), a3, a4, v11, v13);
      result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, ShuffleVector);
      ++v9;
    }

    while (v10 != v9);
  }

  return result;
}

llvm *AGCLLVMTargetLowerer::buildBiasF2IVarying(uint64_t a1, const char *a2, llvm *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_BIAS_F2I_VARYING", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        goto LABEL_11;
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if ((AGCEnv::isEnabled(void)::is_internal != 1 || !AGCEnv::getValue("AGC_BIAS_F2I_VARYING", a2)) && *(a1 + 904) == 1 && (*(a1 + 1896) & 1) == 0)
  {
LABEL_11:
    v74 = a2;
    v81 = a3;
    __src = a3;
    v85 = 0xFFFFFFFFLL;
    v87 = v89;
    v88 = 0xA00000000;
    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(&v87, &__src, &v86);
    __src = 0;
    v85 = 0;
    v86 = 0;
    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v81) + 8) = 255;
    v79 = &v87;
    p_src = &__src;
    v7 = v88;
    v75 = a1;
    if (v88)
    {
      v73 = &__src;
      while (1)
      {
        v8 = v87 + 16 * v7;
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        LODWORD(v88) = v7 - 1;
        v11 = *(v9 + 16);
        if (v9)
        {
          v12 = v11 >= 0x15;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          goto LABEL_51;
        }

        if (v9)
        {
          v13 = v11 >= 0x1C;
        }

        else
        {
          v13 = 0;
        }

        if (!v13)
        {
LABEL_149:
          v61 = 0;
          goto LABEL_151;
        }

        v14 = *(v9 + 16);
        if ((v14 - 59) > 0xFFFFFFED || v14 == 85 || v14 == 83)
        {
          v15 = *(v9 + 20);
          v16 = v15 & 0x7FFFFFF;
          if ((v15 & 0x7FFFFFF) != 0)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((v15 & 0x40000000) != 0)
              {
                v19 = *(v9 - 8);
              }

              else
              {
                v19 = v9 - 32 * v16;
              }

              v20 = *(v19 + v17);
              if (v20)
              {
                v21 = v20[16] == 22;
              }

              else
              {
                v21 = 0;
              }

              if (!v21)
              {
                if ((*(*v20 + 8) & 0xFE) == 0x12)
                {
                  v22 = v10;
                }

                else
                {
                  v22 = -1;
                }

                v82 = *(v19 + v17);
                v83 = 0;
                if (v22 == -1)
                {
                  v23 = 255;
                }

                else
                {
                  v23 = 1 << v22;
                }

                v24 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v20, &v83);
                v25 = v83;
                if (v24)
                {
                  v26 = v83 == (__src + 16 * v86);
                }

                else
                {
                  v26 = 1;
                }

                if (v26)
                {
                  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v20, v22);
                  *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = v23;
                }

                else if ((v23 & ~v83[2]) != 0)
                {
                  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v20, v22);
                  v25[2] |= v23;
                }

                v15 = *(v9 + 20);
              }

              ++v18;
              v16 = v15 & 0x7FFFFFF;
              v17 += 32;
            }

            while (v18 < v16);
          }

          goto LABEL_51;
        }

        if ((v14 - 79) >= 0xFFFFFFF3)
        {
          v37 = *(v9 - 32);
          if ((*(*v37 + 8) & 0xFE) == 0x12)
          {
            if (v10 == -1)
            {
              goto LABEL_99;
            }

            if ((*(*v9 + 8) & 0xFE) == 0x12 && *(*v37 + 32) == *(*v9 + 32))
            {
              v82 = *(v9 - 32);
              v32 = 1 << v10;
LABEL_100:
              v83 = 0;
              v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v37, &v83);
              v34 = v83;
              if (v47)
              {
                v48 = v83 == (__src + 16 * v86);
              }

              else
              {
                v48 = 1;
              }

              if (v48)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v37, v10);
                v49 = &__src;
                goto LABEL_148;
              }

LABEL_141:
              if ((v32 & ~v34[2]) != 0)
              {
                v35 = v37;
                v36 = v10;
LABEL_143:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v35, v36);
                v50 = v34[2] | v32;
LABEL_144:
                v34[2] = v50;
                goto LABEL_51;
              }

              goto LABEL_51;
            }
          }

          else if (v10 == -1)
          {
LABEL_99:
            v82 = *(v9 - 32);
            v32 = 255;
            goto LABEL_100;
          }

          v82 = *(v9 - 32);
          v83 = 0;
          v38 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v37, &v83);
          v34 = v83;
          if (v38)
          {
            v39 = v83 == (__src + 16 * v86);
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v37, 0xFFFFFFFF);
            *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = 255;
          }

          else if (*(v83 + 8) != 0xFF)
          {
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v37, 0xFFFFFFFF);
            v50 = v34[2] | 0xFF;
            goto LABEL_144;
          }
        }

        else
        {
          v27 = *(v9 + 16);
          if (v27 <= 0x59)
          {
            if (v27 == 89)
            {
              v40 = *(v9 - 32);
              if (v40)
              {
                v41 = *(v40 + 16) == 16;
              }

              else
              {
                v41 = 0;
              }

              if (v41)
              {
                v42 = (v40 + 24);
                if (*(v40 + 32) >= 0x41u)
                {
                  v42 = *v42;
                }

                LODWORD(v10) = *v42;
              }

              v43 = *(v9 - 64);
              v82 = v43;
              v83 = 0;
              if (v10 == -1)
              {
                v44 = 255;
              }

              else
              {
                v44 = 1 << v10;
              }

              v45 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v43, &v83);
              v34 = v83;
              if (v45)
              {
                v46 = v83 == (__src + 16 * v86);
              }

              else
              {
                v46 = 1;
              }

              if (v46)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v43, v10);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = v44;
              }

              else if ((v44 & ~v83[2]) != 0)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v43, v10);
                v50 = v34[2] | v44;
                goto LABEL_144;
              }
            }

            else if (v27 == 84)
            {
              v65 = *(v9 + 20) & 0x7FFFFFF;
              v62 = v74;
              if ((*(v9 + 20) & 0x7FFFFFF) != 0)
              {
                v66 = 1;
                v67 = v9;
                do
                {
                  v68 = *(v67 - 32 * v65);
                  if (v68)
                  {
                    v69 = *(v68 + 16) == 3;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v61 = v69 && (Name = llvm::Value::getName(v68), v71 >= 0xF) && *Name == 0x66656F632E636761 && *(Name + 7) == 0x746E656963696666;
                  v65 = *(v9 + 20) & 0x7FFFFFF;
                  if (v66 >= v65)
                  {
                    break;
                  }

                  ++v66;
                  v67 += 32;
                }

                while (!v61);
              }

              else
              {
                v61 = 0;
              }

              goto LABEL_152;
            }

            goto LABEL_51;
          }

          if (v27 == 90)
          {
            v51 = *(v9 - 32);
            if (*(v51 + 16) != 16)
            {
              v51 = 0;
            }

            if (v10 == -1 || v51 == 0)
            {
              v53 = *(v9 - 64);
              v82 = v53;
              v83 = 0;
              v54 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v73, *(v73 + 4), v53, &v83);
              v55 = v83;
              if (v54)
              {
                v56 = v83 == (*v73 + 16 * *(v73 + 4));
              }

              else
              {
                v56 = 1;
              }

              if (v56)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v53, 0xFFFFFFFF);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(v73, &v82) + 8) = 255;
              }

              else if (*(v83 + 8) != 0xFF)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v53, 0xFFFFFFFF);
                v55[2] |= 0xFFu;
              }

              v33 = p_src;
            }

            else
            {
              if (*(v51 + 32) >= 0x41u)
              {
                v57 = **(v51 + 24);
              }

              else
              {
                v57 = *(v51 + 24);
              }

              if (v57 == v10)
              {
                v58 = *(v9 - 64);
                goto LABEL_134;
              }

              v33 = v73;
            }

            v37 = *(v9 - 96);
            v82 = v37;
            v83 = 0;
            if (v10 == -1)
            {
              v32 = 255;
            }

            else
            {
              v32 = 1 << v10;
            }

            v73 = v33;
            if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v33, *(v33 + 4), v37, &v83) || (v34 = v83, v83 == (*v33 + 16 * *(v33 + 4))))
            {
              v59 = v37;
              v60 = v10;
              goto LABEL_147;
            }

            goto LABEL_141;
          }

          if (v27 == 91)
          {
            if (v10 == -1)
            {
              isSourcedFromVarying(llvm::Value *)::$_0::operator()(&v79, *(v9 - 64));
              v58 = *(v9 - 32);
LABEL_134:
              isSourcedFromVarying(llvm::Value *)::$_0::operator()(&v79, v58);
              goto LABEL_51;
            }

            v28 = *(*(v9 + 64) + 4 * v10);
            if (v28 != -1)
            {
              v29 = *(v9 - 64);
              v30 = *(*v29 + 32);
              v12 = v28 >= v30;
              v31 = v28 - v30;
              if (v12)
              {
                v29 = *(v9 - 32);
                v28 = v31;
              }

              v82 = v29;
              v83 = 0;
              if (v28 == -1)
              {
                v32 = 255;
              }

              else
              {
                v32 = 1 << v28;
              }

              v33 = v73;
              if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v73, *(v73 + 4), v29, &v83) || (v34 = v83, v83 == (*v73 + 16 * *(v73 + 4))))
              {
                v59 = v29;
                v60 = v28;
LABEL_147:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v59, v60);
                v49 = v33;
LABEL_148:
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(v49, &v82) + 8) = v32;
                goto LABEL_51;
              }

              if ((v32 & ~v83[2]) != 0)
              {
                v35 = v29;
                v36 = v28;
                goto LABEL_143;
              }
            }
          }
        }

LABEL_51:
        v7 = v88;
        if (!v88)
        {
          goto LABEL_149;
        }
      }
    }

    v61 = 0;
LABEL_151:
    v62 = v74;
LABEL_152:
    llvm::deallocate_buffer(v86, __src, (16 * v86));
    if (v87 != v89)
    {
      free(v87);
    }

    if (v61)
    {
      v76 = *v62;
      v77 = *(v62 + 2);
      if (v77)
      {
        llvm::MetadataTracking::track();
      }

      v78 = *(v62 + 6);
      AGCLLVMTargetLowerer::SetIP(v75, &v76);
      if (v77)
      {
        llvm::MetadataTracking::untrack();
      }

      v63 = llvm::ConstantFP::get();
      v89[8] = 257;
      return llvm::IRBuilderBase::CreateFAdd(v75 + 8, a3, v63, &v87);
    }
  }

  return a3;
}

uint64_t isSourcedFromVarying(llvm::Value *)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v8 = 0;
  v4 = a1[1];
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v4, *(v4 + 16), a2, &v8);
  if (result)
  {
    v6 = v8;
  }

  else
  {
    v6 = *v4 + 16 * *(v4 + 16);
  }

  if (v6 == *a1[1] + 16 * *(a1[1] + 16))
  {
    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(*a1, a2, 0xFFFFFFFF);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(a1[1], &v7);
    *(result + 8) = 255;
  }

  else if (*(v6 + 8) != 0xFF)
  {
    result = llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(*a1, a2, 0xFFFFFFFF);
    *(v6 + 8) |= 0xFFu;
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildRTZF16Value(uint64_t a1, uint64_t a2, llvm::Type **a3, int a4)
{
  v45 = *a2;
  v46 = *(a2 + 16);
  if (v46)
  {
    llvm::MetadataTracking::track();
  }

  v47 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v45);
  if (v46)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v9 = llvm::FixedVectorType::get();
  }

  else
  {
    v9 = *(a1 + 200);
  }

  v44 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v9, v43);
  v11 = llvm::ConstantInt::get();
  v44 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Cast, v11, v43);
  v13 = llvm::ConstantInt::get();
  v44 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v12, v13, v43);
  v14 = llvm::ConstantFP::get();
  v15 = llvm::ConstantFP::get();
  v40 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
  v42 = *(a1 + 104);
  v16 = (*(*a1 + 80))(a1, &v40, a3, v14, v15, 0);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4)
  {
    v17 = *(v8 + 2);
    v18 = *(a1 + 192);
    if ((v17 & 0xFE) == 0x12)
    {
      v18 = llvm::FixedVectorType::get();
      v17 = *(v8 + 2);
    }

    v19 = *(a1 + 152);
    v36 = v18;
    if ((v17 & 0xFE) == 0x12)
    {
      v19 = llvm::FixedVectorType::get();
    }

    v44 = 257;
    v20 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v9, v43);
    v21 = llvm::ConstantInt::get();
    v44 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v20, v21, v43);
    v23 = llvm::ConstantInt::get();
    v44 = 257;
    v24 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v23, v43);
    v37 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
    v39 = *(a1 + 104);
    AGCLLVMTargetLowerer::CreateFabs(a1, &v37, a3);
    if (v38)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::ConstantFP::get();
    v44 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v44 = 257;
    v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v16, v9, v43);
    v26 = llvm::ConstantInt::get();
    v44 = 257;
    v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v25, v26, v43);
    v28 = llvm::ConstantInt::get();
    v44 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v27, v28, v43);
    v30 = llvm::ConstantInt::get();
    v44 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), Sub, v30, v43);
    v44 = 257;
    v32 = llvm::IRBuilderBase::CreateOr((a1 + 8), v31, v24, v43);
    v44 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v32, v36, v43);
    v44 = 257;
    v34 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v33, v19, v43);
    v44 = 257;
    llvm::IRBuilderBase::CreateFPExt((a1 + 8), v34, v8, v43);
    llvm::ConstantFP::get();
    v44 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v44 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

void *AGCLLVMTargetLowerer::ResetIntersectionQueryArguments::ResetIntersectionQueryArguments(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a4 - 32) + 96);
  v7 = (a4 - 32 * (*(a4 + 20) & 0x7FFFFFF));
  v8 = a2 | a3;
  if (a2 | a3)
  {
    v9 = 18;
  }

  else
  {
    v9 = 16;
  }

  v10 = v7[4];
  *a1 = *v7;
  a1[1] = v10;
  v11 = v7[12];
  a1[2] = v7[8];
  a1[3] = v11;
  v12 = v7[20];
  a1[4] = v7[16];
  a1[5] = v12;
  if (v8 == 1)
  {
    v13 = v7 + 28;
    v14 = v7[24];
  }

  else
  {
    v13 = v7 + 24;
    v14 = llvm::ConstantInt::get();
  }

  v15 = *v13;
  a1[6] = v14;
  a1[7] = v15;
  v16 = v13[8];
  a1[8] = v13[4];
  a1[9] = v16;
  v17 = v13[16];
  a1[10] = v13[12];
  a1[11] = v17;
  a1[12] = v13[20];
  if (v9 == v6)
  {
    v18 = v13[28];
    a1[13] = v13[24];
    a1[14] = v18;
    v19 = v13 + 36;
    v20 = v13[32];
  }

  else
  {
    v19 = v13 + 24;
    a1[13] = llvm::ConstantInt::get();
    a1[14] = llvm::ConstantInt::get();
    v20 = llvm::ConstantInt::get();
  }

  a1[15] = v20;
  if (v8)
  {
    v22 = *v19;
    v19 += 4;
    v21 = v22;
  }

  else
  {
    v21 = 0;
  }

  v23 = *v19;
  a1[16] = v21;
  a1[17] = v23;
  return a1;
}

void AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig(AGCLLVMG13TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG13TargetLowerer::buildShuffleAndFill(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v45 = *a2;
  v46 = *(a2 + 2);
  if (v46)
  {
    llvm::MetadataTracking::track();
    v47 = *(a2 + 6);
    v71 = v45;
    v72 = v46;
    llvm::MetadataTracking::track();
    v10 = v47;
  }

  else
  {
    v10 = *(a2 + 6);
    v47 = v10;
    v71 = *a2;
    v72 = 0;
  }

  v73 = v10;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v71, a1 + 8);
  if (v72)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  LOWORD(v75[0]) = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 35, v12, v13, v74);
  LOWORD(v75[0]) = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v15 = llvm::ConstantInt::get();
  LOWORD(v75[0]) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v13, v15, v74);
  LOWORD(v75[0]) = 257;
  v43 = Sub;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v12, Sub, v74);
  v74[0] = &unk_2825BB730;
  v74[1] = AGCLLVMGen3TargetLowerer::buildSimdShuffleUp;
  v74[2] = 0;
  v74[3] = v74;
  v75[0] = &unk_2825BB730;
  v75[1] = AGCLLVMGen3TargetLowerer::buildSimdShuffleDown;
  v75[2] = 0;
  v75[3] = v75;
  v76[0] = &unk_2825BB778;
  v76[1] = AGCLLVMGen3TargetLowerer::buildQuadShuffleUp;
  v76[2] = 0;
  v76[3] = v76;
  v77[0] = &unk_2825BB778;
  v77[1] = AGCLLVMGen3TargetLowerer::buildQuadShuffleDown;
  v77[2] = 0;
  v78[0] = v77;
  v70 = 257;
  v18 = llvm::IRBuilderBase::CreateSub((a1 + 8), v13, v17, v69);
  v66 = v45;
  v67 = v46;
  if (v46)
  {
    llvm::MetadataTracking::track();
  }

  v68 = v47;
  v19 = std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(v74[8 * a6 + 3 + 4 * a5], a1, &v66, Select, v17);
  if (v67)
  {
    llvm::MetadataTracking::untrack();
  }

  v63 = v45;
  v64 = v46;
  if (v46)
  {
    llvm::MetadataTracking::track();
  }

  v65 = v47;
  std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(v74[8 * a6 + 3 + 4 * (a5 ^ 1)], a1, &v63, v11, v18);
  if (v64)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a6)
  {
    v60 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v61, (a1 + 8));
    v62 = *(a1 + 104);
    v20 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v60, *(a1 + 192));
    if (!v61)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v57 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v58, (a1 + 8));
  v59 = *(a1 + 104);
  v20 = (*(*a1 + 1624))(a1, &v57, *(a1 + 192));
  if (v58)
  {
LABEL_16:
    llvm::MetadataTracking::untrack();
  }

LABEL_17:
  v70 = 257;
  v21 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v20, v43, v69);
  v70 = 257;
  if (a5)
  {
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), v21, v17, v69);
  }

  else
  {
    Add = llvm::IRBuilderBase::CreateSub((a1 + 8), v21, v17, v69);
  }

  v24 = Add;
  v70 = 257;
  Not = llvm::IRBuilderBase::CreateNot((a1 + 8), v43, v69, v23);
  v70 = 257;
  v26 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v24, Not, v69);
  v27 = llvm::ConstantInt::get();
  v56 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v26, v27, v55);
  v70 = 257;
  v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v20, Not, v69);
  v56 = 257;
  v29 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v24, v43, v55);
  v54 = 257;
  v30 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v28, v29, v53);
  v50 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v51, (a1 + 8));
  v52 = *(a1 + 104);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v50, a6);
  if (v51)
  {
    llvm::MetadataTracking::untrack();
  }

  v32 = *ActiveThreadsMask;
  v70 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v30, v32, v69);
  v56 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), ActiveThreadsMask, Cast, v55);
  v35 = llvm::ConstantInt::get();
  v54 = 257;
  v36 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v35, v53);
  v37 = *(a1 + 176);
  v49 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v48);
  v70 = 257;
  llvm::IRBuilderBase::CreateSelect();
  llvm::Constant::getNullValue(*v19, v38);
  v56 = 257;
  v39 = llvm::IRBuilderBase::CreateSelect();
  for (i = 0; i != -16; i -= 4)
  {
    v41 = v78[i];
    if (&v77[i] == v41)
    {
      (*(*v41 + 32))(v41);
    }

    else if (v41)
    {
      (*(*v41 + 40))(v41);
    }
  }

  if (v46)
  {
    llvm::MetadataTracking::untrack();
  }

  return v39;
}

uint64_t AGCLLVMG13TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG13TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *(a3 + 16) = 0;
  *a3 = a3 + 8;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21, &v69) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51, &v69) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

BOOL AGCLLVMGen2TargetLowerer::isImageBlockWrite(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 2064);
  if (!v3)
  {
    return 1;
  }

  v6 = strlen(*(a1 + 2064));
  if (a3 < v6)
  {
    return 0;
  }

  return !v6 || memcmp(a2, v3, v6) == 0;
}

BOOL AGCLLVMGen2TargetLowerer::isTextureWriteFunction(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 2056);
  if (!v3)
  {
    return 1;
  }

  v7 = strlen(*(a1 + 2056));
  if (a3 >= v7 && (!v7 || !memcmp(a2, v3, v7)))
  {
    return 1;
  }

  v8 = *(a1 + 2064);
  if (!v8)
  {
    return 1;
  }

  v9 = strlen(v8);
  if (a3 < v9)
  {
    return 0;
  }

  return !v9 || memcmp(a2, v8, v9) == 0;
}

uint64_t AGCLLVMG13TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v21);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v21);
  v12 = llvm::ConstantInt::get();
  v20 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v19);
  v14 = *(a1 + 200);
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageSampleCountExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v26 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v25);
  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v23);
  v12 = llvm::ConstantInt::get();
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v12, v25);
  v14 = llvm::ConstantInt::get();
  v24 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v13, v14, v23);
  v16 = a1[25];
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v16, v21);
  v18 = llvm::ConstantInt::get();
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v18, Cast, v25);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v30);
  v10 = llvm::ConstantInt::get();
  v31 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v30);
  v12 = llvm::ConstantInt::get();
  v29 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v28);
  v14 = *(a1 + 200);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v26);
  v16 = llvm::ConstantInt::get();
  v31 = 257;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v16, v30);
  v18 = llvm::ConstantInt::get();
  v29 = 257;
  v19 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v17, v18, v28);
  v20 = *(a1 + 200);
  v27 = 257;
  v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v20, v26);
  v31 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v21, v30);
  v23 = llvm::ConstantInt::get();
  v29 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v23, v28);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v92);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v93 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v10, a3, v11, v92);
  v91 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v90);
  v14 = *(a1 + 208);
  v15 = llvm::ConstantInt::get();
  v93 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v14, a3, v15, v92);
  v91 = 257;
  v17 = AGCLLVMBuilder::CreateLoad(a1, v16, v90);
  v18 = llvm::ConstantInt::get();
  v93 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Load, v18, v92);
  v20 = llvm::ConstantInt::get();
  v91 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v19, v20, v90);
  v22 = *(a1 + 200);
  v89 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v22, v88);
  v24 = llvm::ConstantInt::get();
  v87 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v24, v86);
  v26 = llvm::ConstantInt::get();
  v93 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v26, v92);
  v28 = llvm::ConstantInt::get();
  v91 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v27, v28, v90);
  v30 = *(a1 + 200);
  v89 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v29, v30, v88);
  v32 = llvm::ConstantInt::get();
  v93 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v92);
  v34 = llvm::ConstantInt::get();
  v91 = 257;
  v35 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v34, v90);
  v36 = *(a1 + 200);
  v89 = 257;
  v37 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v35, v36, v88);
  v38 = llvm::ConstantInt::get();
  v87 = 257;
  v39 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v37, v38, v86);
  v40 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v39, v31);
  v41 = llvm::ConstantInt::get();
  v93 = 257;
  v42 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v41, v92);
  v43 = llvm::ConstantInt::get();
  v91 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v42, v43, v90);
  v45 = *(a1 + 200);
  v89 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v88);
  v47 = llvm::ConstantInt::get();
  v87 = 257;
  v48 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v47, v86);
  v49 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v48, v31);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v31);
  v51 = llvm::ConstantInt::get();
  v93 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v17, v51, v92);
  v53 = llvm::ConstantInt::get();
  v91 = 257;
  v54 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v52, v53, v90);
  v55 = *(a1 + 200);
  v89 = 257;
  v56 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v54, v55, v88);
  v57 = llvm::ConstantInt::get();
  v87 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v56, v57, v86);
  v58 = llvm::ConstantInt::get();
  v93 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v58, v92);
  v60 = llvm::ConstantInt::get();
  v91 = 257;
  v61 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v59, v60, v90);
  v62 = *(a1 + 200);
  v89 = 257;
  v63 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v61, v62, v88);
  v64 = llvm::ConstantInt::get();
  v93 = 257;
  v65 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v64, v92);
  v66 = llvm::ConstantInt::get();
  v91 = 257;
  v67 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v65, v66, v90);
  v68 = *(a1 + 200);
  v89 = 257;
  v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v67, v68, v88);
  v70 = llvm::ConstantInt::get();
  v93 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v63, v70, v92);
  v72 = llvm::ConstantInt::get();
  v91 = 257;
  v73 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v69, v72, v90);
  v89 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v73, v88);
  v93 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v75);
  v93 = 257;
  v77 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v40, v77, v92);
  v93 = 257;
  v79 = llvm::ConstantInt::get();
  v80 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v49, v79, v92);
  v93 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v80, v50, v81, v92);
  v93 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v82, Select, v83, v92);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v84, a4, 0, 0);
}

void AGCLLVMGen3TargetLowerer::printAsm(AGCLLVMGen3TargetLowerer *this, const unsigned __int8 *a2, uint64_t a3, const AGCLLVMObject *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = (*(*a4 + 48))(a4);
  snprintf(__str, 0x80uLL, "%s shader %u (driver disassembler)", v7, *(a4 + 1272));
  AGCTargetPrinter::printMessage(*(a4 + 212), "------ Start USC %s -------\n", __str);
  v8 = *(a4 + 212);
  if (AGCTargetPrinter::isValidToPrintMessage(v8))
  {
    printHexDump(*v8, a2, a3, 0x10u, "0x", 1);
  }

  AGCTargetPrinter::printMessage(*(a4 + 212), "\n------- End USC %s --------\n", __str);
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::getVertexInputCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 448))(a1, a3, a4);
  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "agc.read_vi.f32", 15, *(a1 + 168), *(a1 + 200));
  v14[0] = llvm::ConstantInt::get();
  v17 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v14, 1, v16);
  if (a4 == 9)
  {
    v10 = *(a1 + 200);
    v17 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v9, v10, v16);
    v12 = *(a1 + 192);
    v15 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Cast, v12, v14);
  }

  return v9;
}

uint64_t AGCLLVMGen4TargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2, int a3)
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  result = dword_20E715E84[a3 - 1];
  if (*a2 <= result)
  {
    *a2 = result + 1;
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::setLoadStoreCacheControl(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t AGCLLVMGen2TargetLowerer::forceWritethroughForStores(AGCLLVMGen2TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

void AGCLLVMG13TargetLowerer::~AGCLLVMG13TargetLowerer(AGCLLVMG13TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig(AGCLLVMG14TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG14TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG14TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *(a3 + 16) = 0;
  *a3 = a3 + 8;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21, &v69) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51, &v69) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG14TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v21);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v21);
  v12 = llvm::ConstantInt::get();
  v20 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v19);
  v14 = *(a1 + 200);
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageSampleCountExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v26 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v25);
  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v23);
  v12 = llvm::ConstantInt::get();
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v12, v25);
  v14 = llvm::ConstantInt::get();
  v24 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v13, v14, v23);
  v16 = a1[25];
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v16, v21);
  v18 = llvm::ConstantInt::get();
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v18, Cast, v25);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v30);
  v10 = llvm::ConstantInt::get();
  v31 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v30);
  v12 = llvm::ConstantInt::get();
  v29 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v28);
  v14 = *(a1 + 200);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v26);
  v16 = llvm::ConstantInt::get();
  v31 = 257;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v16, v30);
  v18 = llvm::ConstantInt::get();
  v29 = 257;
  v19 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v17, v18, v28);
  v20 = *(a1 + 200);
  v27 = 257;
  v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v20, v26);
  v31 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v21, v30);
  v23 = llvm::ConstantInt::get();
  v29 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v23, v28);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v92);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v93 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v10, a3, v11, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v10, GEP, 0, v90);
  v14 = *(a1 + 208);
  v15 = llvm::ConstantInt::get();
  v93 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v14, a3, v15, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v16, 0, v90);
  v18 = llvm::ConstantInt::get();
  v93 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v13, v18, v92);
  v20 = llvm::ConstantInt::get();
  v91 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v19, v20, v90);
  v22 = *(a1 + 200);
  v89 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v22, v88);
  v24 = llvm::ConstantInt::get();
  v87 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v24, v86);
  v26 = llvm::ConstantInt::get();
  v93 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v26, v92);
  v28 = llvm::ConstantInt::get();
  v91 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v27, v28, v90);
  v30 = *(a1 + 200);
  v89 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v29, v30, v88);
  v32 = llvm::ConstantInt::get();
  v93 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v92);
  v34 = llvm::ConstantInt::get();
  v91 = 257;
  v35 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v34, v90);
  v36 = *(a1 + 200);
  v89 = 257;
  v37 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v35, v36, v88);
  v38 = llvm::ConstantInt::get();
  v87 = 257;
  v39 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v37, v38, v86);
  v40 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v39, v31);
  v41 = llvm::ConstantInt::get();
  v93 = 257;
  v42 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v41, v92);
  v43 = llvm::ConstantInt::get();
  v91 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v42, v43, v90);
  v45 = *(a1 + 200);
  v89 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v88);
  v47 = llvm::ConstantInt::get();
  v87 = 257;
  v48 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v47, v86);
  v49 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v48, v31);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v31);
  v51 = llvm::ConstantInt::get();
  v93 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v17, v51, v92);
  v53 = llvm::ConstantInt::get();
  v91 = 257;
  v54 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v52, v53, v90);
  v55 = *(a1 + 200);
  v89 = 257;
  v56 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v54, v55, v88);
  v57 = llvm::ConstantInt::get();
  v87 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v56, v57, v86);
  v58 = llvm::ConstantInt::get();
  v93 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v58, v92);
  v60 = llvm::ConstantInt::get();
  v91 = 257;
  v61 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v59, v60, v90);
  v62 = *(a1 + 200);
  v89 = 257;
  v63 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v61, v62, v88);
  v64 = llvm::ConstantInt::get();
  v93 = 257;
  v65 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v64, v92);
  v66 = llvm::ConstantInt::get();
  v91 = 257;
  v67 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v65, v66, v90);
  v68 = *(a1 + 200);
  v89 = 257;
  v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v67, v68, v88);
  v70 = llvm::ConstantInt::get();
  v93 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v63, v70, v92);
  v72 = llvm::ConstantInt::get();
  v91 = 257;
  v73 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v69, v72, v90);
  v89 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v73, v88);
  v93 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v75);
  v93 = 257;
  v77 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v40, v77, v92);
  v93 = 257;
  v79 = llvm::ConstantInt::get();
  v80 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v49, v79, v92);
  v93 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v80, v50, v81, v92);
  v93 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v82, Select, v83, v92);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v84, a4, 0, 0);
}

void AGCLLVMG14TargetLowerer::~AGCLLVMG14TargetLowerer(AGCLLVMG14TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t *AGCLLVMCreateG14TargetConfig(int a1)
{
  {
    v3 = a1;
    a1 = v3;
    if (v4)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0, 65553);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0 = &unk_2825B0C88;
      dword_27C8D8524 = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0, &dword_20E4E1000);
      a1 = v3;
    }
  }

  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0, 196625);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0 = &unk_2825B0C88;
      dword_27C8D849C = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0, &dword_20E4E1000);
      a1 = v5;
    }
  }

  {
    v7 = a1;
    a1 = v7;
    if (v8)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0, 65554);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0 = &unk_2825B0C88;
      dword_27C8D8634 = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0, &dword_20E4E1000);
      a1 = v7;
    }
  }

  {
    v9 = a1;
    a1 = v9;
    if (v10)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0, 196626);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0 = &unk_2825B0C88;
      dword_27C8D85AC = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0, &dword_20E4E1000);
      a1 = v9;
    }
  }

  v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0;
  if (a1 == 196625)
  {
    v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0;
  }

  if (a1 == 196626)
  {
    v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0;
  }

  if (a1 == 65554)
  {
    return &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0;
  }

  else
  {
    return v1;
  }
}

void AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig(AGCLLVMG14XTargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG14XTargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG14XTargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *(a3 + 16) = 0;
  *a3 = a3 + 8;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21, &v69) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51, &v69) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG14XTargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v23 = llvm::ConstantInt::get();
    v71 = 257;
    v24 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v23, v70);
    v25 = llvm::ConstantInt::get();
    v69 = 257;
    v26 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v24, v25, v68);
    v27 = *(a1 + 200);
    v67 = 257;
    v28 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v26, v27, v66);
    v29 = llvm::ConstantInt::get();
    v65 = 257;
    v30 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v28, v29, v64);
    v31 = llvm::ConstantInt::get();
    v71 = 257;
    v32 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v31, v70);
    v33 = llvm::ConstantInt::get();
    v69 = 257;
    v34 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v32, v33, v68);
    v35 = *(a1 + 200);
    v67 = 257;
    v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v35, v66);
    v37 = llvm::ConstantInt::get();
    v65 = 257;
    v38 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v36, v37, v64);
    v39 = llvm::ConstantInt::get();
    v71 = 257;
    v40 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v39, v70);
    v41 = llvm::ConstantInt::get();
    v69 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v40, v41, v68);
    v43 = *(a1 + 200);
    v67 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v66);
    v45 = llvm::ConstantInt::get();
    v65 = 257;
    v46 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v45, v64);
    v47 = llvm::ConstantInt::get();
    v71 = 257;
    v48 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v47, v70);
    v49 = llvm::ConstantInt::get();
    v69 = 257;
    v50 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v48, v49, v68);
    v51 = *(a1 + 200);
    v67 = 257;
    v52 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v50, v51, v66);
    v53 = llvm::ConstantInt::get();
    v65 = 257;
    v54 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v52, v53, v64);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v38, v46, v70);
    v71 = 257;
    v56 = llvm::IRBuilderBase::CreateOr((a1 + 8), v55, v54, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v30, v56, v70);
    v58 = *(a1 + 200);
    v69 = 257;
    v59 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v57, v58, v68);
    v60 = llvm::ConstantInt::get();
    v71 = 257;
    v61 = llvm::IRBuilderBase::CreateShl((a1 + 8), v59, v60, v70);
    return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v61, a4, 0, 0);
  }

  return result;
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v21);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v21);
  v12 = llvm::ConstantInt::get();
  v20 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v19);
  v14 = *(a1 + 200);
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageSampleCountExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v26 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v25);
  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v23);
  v12 = llvm::ConstantInt::get();
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v12, v25);
  v14 = llvm::ConstantInt::get();
  v24 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v13, v14, v23);
  v16 = a1[25];
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v16, v21);
  v18 = llvm::ConstantInt::get();
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v18, Cast, v25);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v30);
  v10 = llvm::ConstantInt::get();
  v31 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v30);
  v12 = llvm::ConstantInt::get();
  v29 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v28);
  v14 = *(a1 + 200);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v26);
  v16 = llvm::ConstantInt::get();
  v31 = 257;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v16, v30);
  v18 = llvm::ConstantInt::get();
  v29 = 257;
  v19 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v17, v18, v28);
  v20 = *(a1 + 200);
  v27 = 257;
  v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v20, v26);
  v31 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v21, v30);
  v23 = llvm::ConstantInt::get();
  v29 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v23, v28);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v92);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v93 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v10, a3, v11, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v10, GEP, 0, v90);
  v14 = *(a1 + 208);
  v15 = llvm::ConstantInt::get();
  v93 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v14, a3, v15, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v16, 0, v90);
  v18 = llvm::ConstantInt::get();
  v93 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v13, v18, v92);
  v20 = llvm::ConstantInt::get();
  v91 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v19, v20, v90);
  v22 = *(a1 + 200);
  v89 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v22, v88);
  v24 = llvm::ConstantInt::get();
  v87 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v24, v86);
  v26 = llvm::ConstantInt::get();
  v93 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v26, v92);
  v28 = llvm::ConstantInt::get();
  v91 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v27, v28, v90);
  v30 = *(a1 + 200);
  v89 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v29, v30, v88);
  v32 = llvm::ConstantInt::get();
  v93 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v92);
  v34 = llvm::ConstantInt::get();
  v91 = 257;
  v35 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v34, v90);
  v36 = *(a1 + 200);
  v89 = 257;
  v37 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v35, v36, v88);
  v38 = llvm::ConstantInt::get();
  v87 = 257;
  v39 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v37, v38, v86);
  v40 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v39, v31);
  v41 = llvm::ConstantInt::get();
  v93 = 257;
  v42 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v41, v92);
  v43 = llvm::ConstantInt::get();
  v91 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v42, v43, v90);
  v45 = *(a1 + 200);
  v89 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v88);
  v47 = llvm::ConstantInt::get();
  v87 = 257;
  v48 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v47, v86);
  v49 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v48, v31);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v31);
  v51 = llvm::ConstantInt::get();
  v93 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v17, v51, v92);
  v53 = llvm::ConstantInt::get();
  v91 = 257;
  v54 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v52, v53, v90);
  v55 = *(a1 + 200);
  v89 = 257;
  v56 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v54, v55, v88);
  v57 = llvm::ConstantInt::get();
  v87 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v56, v57, v86);
  v58 = llvm::ConstantInt::get();
  v93 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v58, v92);
  v60 = llvm::ConstantInt::get();
  v91 = 257;
  v61 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v59, v60, v90);
  v62 = *(a1 + 200);
  v89 = 257;
  v63 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v61, v62, v88);
  v64 = llvm::ConstantInt::get();
  v93 = 257;
  v65 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v64, v92);
  v66 = llvm::ConstantInt::get();
  v91 = 257;
  v67 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v65, v66, v90);
  v68 = *(a1 + 200);
  v89 = 257;
  v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v67, v68, v88);
  v70 = llvm::ConstantInt::get();
  v93 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v63, v70, v92);
  v72 = llvm::ConstantInt::get();
  v91 = 257;
  v73 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v69, v72, v90);
  v89 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v73, v88);
  v93 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v75);
  v93 = 257;
  v77 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v40, v77, v92);
  v93 = 257;
  v79 = llvm::ConstantInt::get();
  v80 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v49, v79, v92);
  v93 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v80, v50, v81, v92);
  v93 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v82, Select, v83, v92);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v84, a4, 0, 0);
}

void AGCLLVMG14XTargetLowerer::~AGCLLVMG14XTargetLowerer(AGCLLVMG14XTargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t *AGCLLVMCreateG15TargetConfig(uint64_t a1)
{
  {
    v3 = a1;
    LODWORD(a1) = v3;
    if (v4)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0, 196630);
      AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0 = &unk_2825B40F0;
      dword_27C8DB09C = 64;
      __cxa_atexit(AGCLLVMG15PB0TargetConfig::~AGCLLVMG15PB0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0, &dword_20E4E1000);
      LODWORD(a1) = v3;
    }
  }

  {
    v5 = a1;
    LODWORD(a1) = v5;
    if (v6)
    {
      AGCLLVMG15GA0TargetConfig::AGCLLVMG15GA0TargetConfig();
      __cxa_atexit(AGCLLVMG15GA0TargetConfig::~AGCLLVMG15GA0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0, &dword_20E4E1000);
      LODWORD(a1) = v5;
    }
  }

  {
    v7 = a1;
    LODWORD(a1) = v7;
    if (v8)
    {
      AGCLLVMG15GB0TargetConfig::AGCLLVMG15GB0TargetConfig();
      __cxa_atexit(AGCLLVMG15GB0TargetConfig::~AGCLLVMG15GB0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0, &dword_20E4E1000);
      LODWORD(a1) = v7;
    }
  }

  {
    v9 = a1;
    LODWORD(a1) = v9;
    if (v10)
    {
      AGCLLVMG15GC0TargetConfig::AGCLLVMG15GC0TargetConfig();
      __cxa_atexit(AGCLLVMG15GC0TargetConfig::~AGCLLVMG15GC0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0, &dword_20E4E1000);
      LODWORD(a1) = v9;
    }
  }

  v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0;
  if (a1 == 65560)
  {
    v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0;
  }

  if (a1 == 196632)
  {
    v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0;
  }

  if (a1 == 327704)
  {
    return &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0;
  }

  else
  {
    return v1;
  }
}

void AGCLLVMG15GC0TargetConfig::~AGCLLVMG15GC0TargetConfig(AGCLLVMG15GC0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15GB0TargetConfig::~AGCLLVMG15GB0TargetConfig(AGCLLVMG15GB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15GA0TargetConfig::~AGCLLVMG15GA0TargetConfig(AGCLLVMG15GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15PB0TargetConfig::~AGCLLVMG15PB0TargetConfig(AGCLLVMG15PB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG15GA0TargetLowerer::~AGCLLVMG15GA0TargetLowerer(AGCLLVMG15GA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GA0TargetConfig::AGCLLVMG15GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0, 65560);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B2608;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15GB0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GB0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}