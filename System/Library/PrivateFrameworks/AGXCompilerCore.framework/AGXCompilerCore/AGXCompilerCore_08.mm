void AGCLLVMUserMeshShader::getCompilationKeyDescription(AGCLLVMUserMeshShader *this@<X0>, std::string *a2@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v58, "AGCMeshContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v56, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v59);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v59.__r_.__value_.__r + *(v59.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v59.__r_.__value_.__r + *(v59.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v72, v56, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v59.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v59.__r_.__value_.__r.__words + *(v59.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v59.__r_.__value_.__r.__words[2] = v6;
  v60 = MEMORY[0x277D82878] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v61);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v63);
  std::string::basic_string[abi:nn200100]<0>(v54, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v72[1], v54, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v52, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v72[2], v52, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v50, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v72[3], v50, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v48, "maxVertexAmplificationCount");
  _agcFieldString<unsigned int>(&v72[4], v48, v3[2] & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v46, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned int>(&v72[5], v46, (*(v3 + 4) >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v44, "customBorderColor");
  _agcFieldString<unsigned int>(&v72[6], v44, (*(v3 + 4) >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v42, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v72[7], v42, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v40, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v72[8], v40, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v38, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v72[9], v38, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v36, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v72[10], &v36, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v34, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v72[11], v34, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v32, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v72[12], v32, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v30, "enableStackShadow");
  _agcFieldString<unsigned int>(&v72[13], v30, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v72[14], v28, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v26, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v72[15], v26, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v24, "addDefaultPointSize");
  _agcFieldString<unsigned int>(&v72[16], v24, (*(v3 + 4) >> 6) & 1);
  std::string::basic_string[abi:nn200100]<0>(v22, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v72[17], v22, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "noObjectShader");
  _agcFieldString<unsigned int>(&v72[18], v20, (*(v3 + 4) >> 8) & 1);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v58;
  }

  _agcIndentedLine(&__p, &v70, 0);
  std::string::basic_string[abi:nn200100]<0>(v65, "{");
  _agcIndentedLine(&v67, v65, 0);
  if ((v69 & 0x80u) == 0)
  {
    v7 = &v67;
  }

  else
  {
    v7 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v8 = v69;
  }

  else
  {
    v8 = v68;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 19; ++i)
  {
    v12 = &v72[i];
    if (SHIBYTE(v72[i].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12->__r_.__value_.__l.__data_, v12->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v64 = __p;
    }

    _agcIndentedLine(&v67, &v64, 1);
    if ((v69 & 0x80u) == 0)
    {
      v14 = &v67;
    }

    else
    {
      v14 = v67;
    }

    if ((v69 & 0x80u) == 0)
    {
      v15 = v69;
    }

    else
    {
      v15 = v68;
    }

    std::string::append(&v59, v14, v15);
    if (v69 < 0)
    {
      operator delete(v67);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v67, "}");
  _agcIndentedLine(&__p, &v67, 0);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v59;
  }

  else
  {
    v16 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v19 = 456;
  do
  {
    if (SHIBYTE(v72[v19 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[v19 / 8 + 1]);
    }

    v19 -= 24;
  }

  while (v19);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMUserMeshShader::~AGCLLVMUserMeshShader(AGCLLVMUserMeshShader *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825587A8;
  *(v1 + 783) = &unk_282558B10;
  *(v1 + 996) = &unk_282558C20;
  v10 = (v1 + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v10);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector((v1 + 4936));
  v5 = *(v1 + 614);
  if (v5)
  {
    *(v1 + 615) = v5;
    operator delete(v5);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 4784), v2, v3, v4);
  v8 = *(v1 + 596);
  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D770, v6, v7);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6264));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825587A8;
  *(v1 + 783) = &unk_282558B10;
  *(v1 + 996) = &unk_282558C20;
  v10 = (v1 + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v10);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector((v1 + 4936));
  v5 = *(v1 + 614);
  if (v5)
  {
    *(v1 + 615) = v5;
    operator delete(v5);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 4784), v2, v3, v4);
  v8 = *(v1 + 596);
  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D770, v6, v7);

  AGCLLVMObject::~AGCLLVMObject((v1 + 6264));
}

void AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(AGCLLVMUserObjectShaderBase *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[7];
  *(this + *(*this - 24) + 1704) = a2[8];
  v7 = *(this + 591);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4712));
  }

  v9 = *(this + 588);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4688));
  }

  v10 = *(this + 583);
  if (v10)
  {
    do
    {
      v11 = *v10;
      AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v10 + 3));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(this + 581);
  *(this + 581) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 580);
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4624));
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1, a3, a4);
}

void AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(AGCLLVMUserObjectShaderBase::FunctionStateCache *this)
{
  v2 = *(this + 38);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 288));
  }

  v4 = *(this + 35);
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 264));
  }

  v6 = *(this + 32);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 240));
  }

  v8 = *(this + 29);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 216));
  }

  v9 = *(this + 26);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 192));
  }

  v10 = *(this + 23);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 168));
  }

  v11 = *(this + 20);
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 144));
  }

  v12 = *(this + 17);
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 120));
  }

  v13 = *(this + 14);
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 96));
  }

  v14 = *(this + 11);
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 72));
  }

  v15 = *(this + 8);
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 48));
  }

  v16 = *(this + 5);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 24));
  }

  v17 = *(this + 2);
  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }
  }
}

uint64_t AGCLLVMUserObjectShaderBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserObjectShaderBase *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(this);
  }

  else
  {
    return 0;
  }
}

llvm::Type **AGCLLVMUserMeshShader::buildNumGroups(AGCLLVMUserMeshShader *this, llvm::Type *a2, unsigned __int16 a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 271);
  v21 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v5 + 1712));
  v23 = *(v5 + 452);
  v7 = (*(*v6 + 344))(v6, &v21);
  v8 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v5 + 214, v7, v8, v19, v9);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = this + *(*this - 24);
  v12 = *(v11 + 238);
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v11 + 1712), v12, PointerCast, v13, v19);
  v15 = this + *(*this - 24);
  v20 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), GEP, v19);
  v17 = this + *(*this - 24);
  v20 = 257;
  return llvm::IRBuilderBase::CreateZExtOrTrunc((v17 + 1712), Load, a2, v19);
}

llvm::Value *llvm::IRBuilderBase::CreatePointerCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  PointerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      PointerCast = llvm::CastInst::CreatePointerCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
    }

    else
    {
      PointerCast = (*(*this[9] + 232))(this[9], a2, a3, a4, a5);
      if (PointerCast)
      {
        v8 = *(PointerCast + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
      }
    }
  }

  return PointerCast;
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
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
    v10 = 39;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

uint64_t AGCLLVMUserMeshShader::buildGlobalSize(AGCLLVMUserMeshShader *this, llvm::Type *a2, uint64_t a3)
{
  v6 = (*(*this + 520))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((v8 + 1712), v6, v7, v10);
}

uint64_t AGCLLVMUserMeshShader::markInvariantOutputs(AGCLLVMUserMeshShader *this, const char *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_POS_INVARIANCE", a2))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    v5 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_POS_INVARIANCE", v3)) != 0 && *Value != 48 && atoi(Value) != 0;
    *(this + 4744) = v5;
  }

  if (*(this + 4744) == 1 && *(this + 32) == 1)
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v7 = *this;
      v8 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v22 = 0;
      v25[0] = 0;
      v25[1] = 0;
      v23 = 0;
      v24 = v25;
      v25[2] = v8;
      v26 = 0;
      v9 = *(Function + 8);
      if (v9)
      {
        do
        {
          MarkInvariants::addSeed(&__p, *(*(v9 + 24) - 32 * (*(*(v9 + 24) + 20) & 0x7FFFFFF) + 32), 0);
          v9 = *(v9 + 8);
        }

        while (v9);
        v7 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v7 - 24) + 1704)) & 1) == 0)
      {
        v11 = *(this + *(*this - 24) + 2136);
        v12 = v11 + 24;
        for (i = *(v11 + 32); i != v12; i = *(i + 8))
        {
          v14 = i - 56;
          if (!i)
          {
            v14 = 0;
          }

          v15 = v14 + 72;
          v16 = *(v14 + 80);
          if (v16 == v14 + 72)
          {
            v18 = 0;
          }

          else
          {
            do
            {
              v17 = v16 - 24;
              if (!v16)
              {
                v17 = 0;
              }

              v18 = *(v17 + 48);
              if (v18 != v17 + 40)
              {
                break;
              }

              v16 = *(v16 + 8);
            }

            while (v16 != v15);
          }

          while (v16 != v15)
          {
            if (v18)
            {
              v19 = (v18 - 24);
            }

            else
            {
              v19 = 0;
            }

            if (llvm::FPMathOperator::classof(v19))
            {
              llvm::Instruction::setFast(v19);
            }

            v18 = *(v18 + 8);
            v20 = v16 - 24;
            if (!v16)
            {
              v20 = 0;
            }

            while (v18 == v20 + 40)
            {
              v16 = *(v16 + 8);
              if (v16 == v15)
              {
                break;
              }

              v20 = v16 - 24;
              if (!v16)
              {
                v20 = 0;
              }

              v18 = *(v20 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v25[0]);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserMeshShader::replaceBuiltins(AGCLLVMUserMeshShader *this)
{
  v147 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObjectShaderBase::replaceBuiltins(this);
  if (result)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v139, *v3);
    v81 = this;
    v146 = this;
    v139 = &unk_2825599A0;
    v145 = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserMeshShader::replaceBuiltins(void)::workitem_functions, "air.set_position_mesh");
      dword_27C8D8A10 = 0;
      dword_27C8D8A18 = 1;
      qword_27C8D8A20 = AGCLLVMUserMeshShader::buildSetPosition;
      unk_27C8D8A28 = 0;
      dword_27C8D8A30 = 7;
      word_27C8D8A34 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8A38, "air.set_point_size_mesh");
      dword_27C8D8A50 = 0;
      dword_27C8D8A58 = 1;
      qword_27C8D8A60 = AGCLLVMUserMeshShader::buildSetPointSize;
      unk_27C8D8A68 = 0;
      dword_27C8D8A70 = 7;
      word_27C8D8A74 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8A78, "air.set_clip_distance_mesh");
      dword_27C8D8A90 = 0;
      dword_27C8D8A98 = 1;
      qword_27C8D8AA0 = AGCLLVMUserMeshShader::buildSetClipDistance;
      unk_27C8D8AA8 = 0;
      dword_27C8D8AB0 = 9;
      word_27C8D8AB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8AB8, "air.set_render_target_array_index_mesh");
      dword_27C8D8AD0 = 1;
      dword_27C8D8AD8 = 1;
      qword_27C8D8AE0 = AGCLLVMUserMeshShader::buildSetLayerId;
      unk_27C8D8AE8 = 0;
      dword_27C8D8AF0 = 7;
      word_27C8D8AF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8AF8, "air.set_viewport_array_index_mesh");
      dword_27C8D8B10 = 1;
      dword_27C8D8B18 = 1;
      qword_27C8D8B20 = AGCLLVMUserMeshShader::buildSetViewportId;
      unk_27C8D8B28 = 0;
      dword_27C8D8B30 = 7;
      word_27C8D8B34 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8B38, "air.set_primitive_id_mesh");
      dword_27C8D8B50 = 0;
      dword_27C8D8B58 = 1;
      qword_27C8D8B60 = AGCLLVMUserMeshShader::buildSetPrimitiveId;
      unk_27C8D8B68 = 0;
      dword_27C8D8B70 = 7;
      word_27C8D8B74 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8B78, "air.set_primitive_culled_mesh");
      dword_27C8D8B90 = 0;
      dword_27C8D8B98 = 1;
      qword_27C8D8BA0 = AGCLLVMUserMeshShader::buildSetPrimitiveCulled;
      unk_27C8D8BA8 = 0;
      dword_27C8D8BB0 = 7;
      word_27C8D8BB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8BB8, "air.set_index_mesh");
      dword_27C8D8BD0 = 0;
      dword_27C8D8BD8 = 1;
      qword_27C8D8BE0 = AGCLLVMUserMeshShader::buildSetIndex;
      unk_27C8D8BE8 = 0;
      dword_27C8D8BF0 = 7;
      word_27C8D8BF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8BF8, "air.set_indices_mesh.v2i8");
      dword_27C8D8C10 = 0;
      dword_27C8D8C18 = 1;
      qword_27C8D8C20 = AGCLLVMUserMeshShader::buildSetIndices;
      qword_27C8D8C28 = 0;
      dword_27C8D8C30 = 7;
      word_27C8D8C34 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8C38, "air.set_indices_mesh.v4i8");
      dword_27C8D8C50 = 0;
      dword_27C8D8C58 = 1;
      qword_27C8D8C60 = AGCLLVMUserMeshShader::buildSetIndices;
      qword_27C8D8C68 = 0;
      dword_27C8D8C70 = 7;
      word_27C8D8C74 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8C78, "air.set_vertex_data_mesh");
      dword_27C8D8C90 = 2;
      dword_27C8D8C98 = 1;
      qword_27C8D8CA0 = AGCLLVMUserMeshShader::buildSetVertexData;
      qword_27C8D8CA8 = 0;
      dword_27C8D8CB0 = 9;
      word_27C8D8CB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8CB8, "air.set_primitive_data_mesh");
      dword_27C8D8CD0 = 2;
      dword_27C8D8CD8 = 1;
      qword_27C8D8CE0 = AGCLLVMUserMeshShader::buildSetPrimitiveData;
      qword_27C8D8CE8 = 0;
      dword_27C8D8CF0 = 9;
      word_27C8D8CF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8CF8, "air.set_primitive_count_mesh");
      dword_27C8D8D10 = 0;
      dword_27C8D8D18 = 1;
      qword_27C8D8D20 = AGCLLVMUserMeshShader::buildSetPrimitiveCount;
      qword_27C8D8D28 = 0;
      dword_27C8D8D30 = 5;
      word_27C8D8D34 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D8D38, "air.object_threadgroup_position_in_grid");
      dword_27C8D8D50 = 0;
      dword_27C8D8D58 = 1;
      qword_27C8D8D60 = AGCLLVMUserMeshShader::buildOSTGGridPosition;
      qword_27C8D8D68 = 0;
      dword_27C8D8D70 = 1;
      word_27C8D8D74 = 0;
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_20E4E1000);
    }

    v82 = 0;
    while (1)
    {
      std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
      v136 = &v138;
      v137 = 0x100000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&v136, &__p, &v131);
      if ((v130[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, ".i8");
      std::string::basic_string[abi:nn200100]<0>(&v131, ".i16");
      std::string::basic_string[abi:nn200100]<0>(v132, ".i32");
      v134[0] = &v135;
      v134[1] = 0x300000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(v134, &__p, v133);
      for (i = 0; i != -9; i -= 3)
      {
        if (SHIBYTE(v132[i + 2]) < 0)
        {
          operator delete(v132[i]);
        }
      }

      std::string::basic_string[abi:nn200100]<0>(v105, ".i1");
      std::string::basic_string[abi:nn200100]<0>(&v105[3], ".i8");
      std::string::basic_string[abi:nn200100]<0>(v107, ".i16");
      std::string::basic_string[abi:nn200100]<0>(v108, ".i32");
      std::string::basic_string[abi:nn200100]<0>(v109, ".f16");
      std::string::basic_string[abi:nn200100]<0>(v110, ".f32");
      std::string::basic_string[abi:nn200100]<0>(v111, ".v2i1");
      std::string::basic_string[abi:nn200100]<0>(v112, ".v2i8");
      std::string::basic_string[abi:nn200100]<0>(v113, ".v2i16");
      std::string::basic_string[abi:nn200100]<0>(v114, ".v2i32");
      std::string::basic_string[abi:nn200100]<0>(v115, ".v2f16");
      std::string::basic_string[abi:nn200100]<0>(v116, ".v2f32");
      std::string::basic_string[abi:nn200100]<0>(v117, ".v3i1");
      std::string::basic_string[abi:nn200100]<0>(v118, ".v3i8");
      std::string::basic_string[abi:nn200100]<0>(v119, ".v3i16");
      std::string::basic_string[abi:nn200100]<0>(v120, ".v3i32");
      std::string::basic_string[abi:nn200100]<0>(v121, ".v3f16");
      std::string::basic_string[abi:nn200100]<0>(v122, ".v3f32");
      std::string::basic_string[abi:nn200100]<0>(v123, ".v4i1");
      std::string::basic_string[abi:nn200100]<0>(v124, ".v4i8");
      std::string::basic_string[abi:nn200100]<0>(v125, ".v4i16");
      std::string::basic_string[abi:nn200100]<0>(v126, ".v4i32");
      std::string::basic_string[abi:nn200100]<0>(v127, ".v4f16");
      std::string::basic_string[abi:nn200100]<0>(v128, ".v4f32");
      *&__p = v130;
      *(&__p + 1) = 0x1800000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&__p, v105, &__p);
      v5 = 72;
      do
      {
        if (SHIBYTE(v105[v5 - 1]) < 0)
        {
          operator delete(*(&v102 + v5 * 8 + 8));
        }

        v5 -= 3;
      }

      while (v5 * 8);
      v90 = &AGCLLVMUserMeshShader::replaceBuiltins(void)::workitem_functions + 64 * v82;
      v6 = *(v90 + 6);
      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2)
      {
        p_p = &__p;
LABEL_18:
        llvm::SmallVectorImpl<std::string>::operator=(&v136, p_p);
      }

      if (!v137)
      {
        goto LABEL_141;
      }

      v8 = v136;
      v85 = &v136[3 * v137];
      do
      {
        std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v91, v90, v8);
        Function = llvm::Module::getFunction();
        if (!Function)
        {
          goto LABEL_138;
        }

        v10 = *(v90 + 14);
        v86 = Function;
        if (v10 == 12)
        {
          for (j = *(Function + 8); j; v141 = 0uLL)
          {
            v14 = *(j + 24);
            j = *(j + 8);
            llvm::IRBuilderBase::SetInsertPoint(v140, v14);
            v15 = v146 + *(*v146 - 24);
            v102 = v141;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v103, v140);
            v104 = v142;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v102, (v15 + 1712));
            if (v103)
            {
              llvm::MetadataTracking::untrack();
            }

            v16 = *(v90 + 5);
            v17 = *(v90 + 6);
            v18 = (v146 + (v17 >> 1));
            if (v17)
            {
              v16 = *(*v18 + v16);
            }

            v16(v18, v14);
          }

          goto LABEL_137;
        }

        if (v10 == 11)
        {
          v11 = *(v90 + 5);
          if (v11)
          {
            v12 = strlen(*(v90 + 5));
            v105[0] = &v105[3];
            *&v105[1] = xmmword_20E70C500;
            llvm::SmallVectorImpl<char>::append<char const*,void>(v105, v11, &v11[v12]);
          }

          else
          {
            v105[2] = 64;
            v105[0] = &v105[3];
            v105[1] = 0;
          }

          llvm::SmallVectorImpl<char>::append<char const*,void>(v105, ".", "");
          if (v105[2] < v105[1])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          llvm::Module::getOrInsertFunction();
          llvm::Value::replaceAllUsesWith();
          if (v105[0] != &v105[3])
          {
            free(v105[0]);
          }

          goto LABEL_137;
        }

        v19 = **(*(Function + 24) + 16);
        v20 = ((*(v19 + 8) & 0xFE) == 18) & v90[61];
        v84 = v8;
        if (v20 == 1)
        {
          v21 = *(v19 + 32);
        }

        else
        {
          v21 = 1;
        }

        v88 = v21;
        v83 = v142;
        v22 = *(Function + 8);
        if (v22)
        {
          do
          {
            v23 = *(v22 + 24);
            v87 = *(v22 + 8);
            v24 = *(v90 + 8);
            if (v24 == 1)
            {
              v25 = 0;
            }

            else
            {
              if (v24 != 2)
              {
                goto LABEL_42;
              }

              v25 = 121;
            }

            v142 = v25;
LABEL_42:
            llvm::IRBuilderBase::SetInsertPoint(v140, v23);
            v26 = llvm::UndefValue::get();
            if (v88)
            {
              for (k = 0; k != v88; ++k)
              {
                v89 = v26;
                v107[0] = 0;
                v106 = 0u;
                memset(v105, 0, sizeof(v105));
                v28 = llvm::CallBase::arg_end(v23) - v23 + 32 * (*(v23 + 5) & 0x7FFFFFF);
                if ((v28 & 0x1FFFFFFFE0) != 0)
                {
                  v29 = (v28 >> 5);
                  v30 = v105;
                  v31 = v23;
                  do
                  {
                    v32 = (v31 - 32 * (*(v23 + 5) & 0x7FFFFFF));
                    v33 = *v32;
                    *v30 = *v32;
                    if (v20 && (*(*v33 + 8) & 0xFE) == 0x12)
                    {
                      v101 = 257;
                      v34 = llvm::ConstantInt::get();
                      *v30 = llvm::IRBuilderBase::CreateExtractElement(v140, v33, v34, &PrimitiveSizeInBits);
                    }

                    ++v30;
                    v31 = (v31 + 32);
                    --v29;
                  }

                  while (v29);
                }

                if (v90[60])
                {
                  v35 = *v105[0];
                  if ((*(*v105[0] + 8) & 0xFE) == 0x12)
                  {
                    v35 = **(v35 + 2);
                  }

                  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v35);
                  v100 = v36;
                  if (llvm::TypeSize::operator unsigned long long() == 32)
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v38 = v144;
                    if ((*(*v105[0] + 8) & 0xFE) == 0x12)
                    {
                      v38 = llvm::FixedVectorType::get();
                    }

                    if ((v28 & 0x1FFFFFFFE0) != 0)
                    {
                      v39 = (v28 >> 5);
                      v40 = v105;
                      do
                      {
                        v41 = *v40;
                        v101 = 257;
                        *v40++ = llvm::IRBuilderBase::CreateFPExt(v140, v41, v38, &PrimitiveSizeInBits);
                        --v39;
                      }

                      while (v39);
                    }

                    v37 = 1;
                  }
                }

                else
                {
                  v37 = 0;
                }

                if (llvm::FPMathOperator::classof(v23))
                {
                  FastMathFlags = llvm::Instruction::getFastMathFlags(v23);
                }

                else
                {
                  FastMathFlags = 0;
                }

                v43 = v146 + *(*v146 - 24);
                v96 = v141;
                llvm::IRBuilderBase::getCurrentDebugLocation(&v97, v140);
                v98 = v142;
                AGCLLVMBuilder::InsertPoint::restoreIP(&v96, (v43 + 1712));
                if (v97)
                {
                  llvm::MetadataTracking::untrack();
                }

                FPTrunc = 0;
                v45 = *(v90 + 14);
                if (v45 > 5)
                {
                  if (v45 <= 7)
                  {
                    if (v45 == 6)
                    {
                      v59 = *(v90 + 5);
                      v68 = *(v90 + 6);
                      v61 = v105[0];
                      v62 = v105[1];
                      v64 = (v146 + (v68 >> 1));
                      if (v68)
                      {
                        v59 = *(*v64 + v59);
                      }

                      v63 = FastMathFlags;
                    }

                    else
                    {
                      v59 = *(v90 + 5);
                      v60 = *(v90 + 6);
                      v61 = v105[0];
                      v62 = v105[1];
                      v63 = v105[2];
                      v64 = (v146 + (v60 >> 1));
                      if (v60)
                      {
                        v70 = (*(*v64 + v59))(v64, v105[0], v105[1], v105[2]);
                        goto LABEL_117;
                      }
                    }

LABEL_116:
                    v70 = v59(v64, v61, v62, v63);
                    goto LABEL_117;
                  }

                  switch(v45)
                  {
                    case 8:
                      v51 = *(v90 + 5);
                      v71 = *(v90 + 6);
                      v53 = v105[0];
                      v72 = v105[1];
                      v73 = v105[2];
                      v54 = (v146 + (v71 >> 1));
                      if (v71)
                      {
                        v51 = *(*v54 + v51);
                      }

                      v77 = FastMathFlags;
                      goto LABEL_112;
                    case 9:
                      v59 = *(v90 + 5);
                      v76 = *(v90 + 6);
                      v64 = (v146 + (v76 >> 1));
                      if (v76)
                      {
                        v59 = *(*v64 + v59);
                      }

                      v61 = v105;
                      v62 = &unk_20E75F419;
                      v63 = 0;
                      goto LABEL_116;
                    case 10:
                      v51 = *(v90 + 5);
                      v52 = *(v90 + 6);
                      v53 = *v23;
                      v54 = (v146 + (v52 >> 1));
                      if (v52)
                      {
                        v51 = *(*v54 + v51);
                      }

                      v72 = v105;
                      v73 = &unk_20E75F419;
                      v77 = 0;
LABEL_112:
                      v70 = v51(v54, v53, v72, v73, v77);
                      goto LABEL_117;
                  }
                }

                else
                {
                  if (v45 > 2)
                  {
                    if (v45 != 3)
                    {
                      if (v45 == 4)
                      {
                        v74 = (v105[0] + 24);
                        if (*(v105[0] + 8) >= 0x41u)
                        {
                          v74 = *v74;
                        }

                        v49 = *v74;
                        v46 = *(v90 + 5);
                        v75 = *(v90 + 6);
                        v48 = *v23;
                        v50 = (v146 + (v75 >> 1));
                        if (v75)
                        {
                          v46 = *(*v50 + v46);
                        }
                      }

                      else
                      {
                        v46 = *(v90 + 5);
                        v47 = *(v90 + 6);
                        v48 = v105[0];
                        v49 = v105[1];
                        v50 = (v146 + (v47 >> 1));
                        if (v47)
                        {
                          v46 = *(*v50 + v46);
                        }
                      }

                      v70 = v46(v50, v48, v49);
                      goto LABEL_117;
                    }

                    v55 = *(v90 + 5);
                    v69 = *(v90 + 6);
                    v57 = v105[0];
                    v58 = (v146 + (v69 >> 1));
                    if ((v69 & 1) == 0)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_91;
                  }

                  if (v45 == 1)
                  {
                    v65 = *(v90 + 5);
                    v66 = *(v90 + 6);
                    v67 = (v146 + (v66 >> 1));
                    if (v66)
                    {
                      v65 = *(*v67 + v65);
                    }

                    v70 = v65(v67);
                    goto LABEL_117;
                  }

                  if (v45 == 2)
                  {
                    v55 = *(v90 + 5);
                    v56 = *(v90 + 6);
                    v57 = *v23;
                    v58 = (v146 + (v56 >> 1));
                    if ((v56 & 1) == 0)
                    {
LABEL_92:
                      v70 = v55(v58, v57);
LABEL_117:
                      FPTrunc = v70;
                      goto LABEL_118;
                    }

LABEL_91:
                    v55 = *(*v58 + v55);
                    goto LABEL_92;
                  }
                }

LABEL_118:
                v78 = v146 + *(*v146 - 24);
                v93 = *(v78 + 110);
                llvm::IRBuilderBase::getCurrentDebugLocation(&v94, (v78 + 1712));
                v95 = *(v78 + 452);
                AGCLLVMBuilder::InsertPoint::restoreIP(&v93, v140);
                if (v94)
                {
                  llvm::MetadataTracking::untrack();
                }

                if (v37)
                {
                  v79 = *v23;
                  if (v20 && (*(v79 + 2) & 0xFE) == 0x12)
                  {
                    v79 = **(v79 + 2);
                  }

                  v101 = 257;
                  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v140, FPTrunc, v79, &PrimitiveSizeInBits);
                }

                if (v20)
                {
                  v101 = 257;
                  v80 = llvm::ConstantInt::get();
                  FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v140, v89, FPTrunc, v80, &PrimitiveSizeInBits);
                }

                v26 = FPTrunc;
              }
            }

            if (*v23 != v143)
            {
              llvm::Value::replaceAllUsesWith();
            }

            llvm::Instruction::eraseFromParent(v23);
            v22 = v87;
          }

          while (v87);
        }

        v142 = v83;
        v8 = v84;
LABEL_137:
        llvm::Function::eraseFromParent(v86);
LABEL_138:
        if (v92 < 0)
        {
          operator delete(v91);
        }

        v8 += 3;
      }

      while (v8 != v85);
LABEL_141:
      llvm::SmallVector<std::string,1u>::~SmallVector(&__p);
      llvm::SmallVector<std::string,1u>::~SmallVector(v134);
      llvm::SmallVector<std::string,1u>::~SmallVector(&v136);
      if (++v82 == 14)
      {
        AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(v81, 7, 3);
      }
    }

    p_p = v134;
    goto LABEL_18;
  }

  return result;
}

void llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  v5 = *(a1 + 8);
  if (v4 + v5 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v4 + v5);
  }

  std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>(a2, a3, (*a1 + 24 * v5));
  *(a1 + 8) += v4;
}

uint64_t llvm::SmallVectorImpl<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 24 * v4;
        do
        {
          std::string::operator=(v11++, v10++);
          v12 -= 24;
        }

        while (v12);
        v13 = *a1;
        LODWORD(v5) = *(a1 + 8);
      }

      else
      {
        v13 = *a1;
        v11 = *a1;
      }

      p_data = &v13[v5].__r_.__value_.__l.__data_;
      while (p_data != v11)
      {
        v19 = *(p_data - 1);
        p_data -= 3;
        if (v19 < 0)
        {
          operator delete(*p_data);
        }
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        if (v5)
        {
          v6 = *a1 + 24 * v5 - 1;
          v7 = -24 * v5;
          v8 = v6;
          do
          {
            v9 = *v8;
            v8 -= 24;
            if (v9 < 0)
            {
              operator delete(*(v6 - 23));
            }

            v6 = v8;
            v7 += 24;
          }

          while (v7);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v4);
      }

      if (v5)
      {
        v14 = *a2;
        v15 = *a1;
        v16 = 24 * v5;
        do
        {
          std::string::operator=(v15++, v14++);
          v16 -= 24;
        }

        while (v16);
      }

      else
      {
        v5 = 0;
      }

      std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>((*a2 + 24 * v5), (*a2 + 24 * *(a2 + 8)), (*a1 + 24 * v5));
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVector<std::string,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }
}

uint64_t AGCLLVMUserMeshShader::buildOSTGGridPosition(AGCLLVMUserMeshShader *this)
{
  v2 = this + *(*this - 24);
  v3 = *(v2 + 236);
  v4 = *(v2 + 271);
  v17 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (v2 + 1712));
  v19 = *(v2 + 452);
  v5 = (*(*v4 + 344))(v4, &v17);
  v6 = llvm::ConstantInt::get();
  v16 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1712), v3, v5, v6, v15);
  v8 = llvm::PointerType::get();
  v14[16] = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v2 + 214, GEP, v8, v14, v9);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = this + *(*this - 24);
  v12 = *(v11 + 249);
  v16 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  return llvm::IRBuilderBase::CreateAlignedLoad(v11 + 214, v12, PointerCast, 0, v15);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveCount(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 237);
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 1712), 38, a3, v6, v13);
  PrimCountPointer = AGCLLVMUserMeshShader::getPrimCountPointer(this, a2, v8, v9, v10);
  llvm::IRBuilderBase::CreateAlignedStore(v5 + 214, Cast, PrimCountPointer, 0, 0);
  return llvm::UndefValue::get();
}

llvm::Instruction *AGCLLVMUserMeshShader::getPrimCountPointer(AGCLLVMUserMeshShader *this, llvm::Type **a2, uint64_t a3, uint64_t a4, llvm::Instruction *a5)
{
  v6 = (this + *(*this - 24));
  v7 = *(this + 568);
  v14 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v6 + 214, a2, v7, v13, a5);
  v9 = this + *(*this - 24);
  v10 = *(v9 + 237);
  v11 = llvm::ConstantInt::get();
  v14 = 257;
  return llvm::IRBuilderBase::CreateGEP((v9 + 1712), v10, PointerCast, v11, v13);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveData(int8x8_t *a1, llvm::Type ***a2, uint64_t a3, BOOL a4)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  v8 = *v7;
  v9 = a2[2];
  v10 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);

  return AGCLLVMUserMeshShader::buildSetVaryingData(a1, v6, 1, v8, v9, v10, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShader::buildSetVaryingData(uint64_t a1, llvm::Type **a2, uint64_t a3, unsigned int a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = ((a3 != 0) | (2 * a4)) + 6;
  if (a4 >= 0xFFFFFFFA)
  {
    v8 = ~a4;
  }

  v9 = *(a1 + 4944);
  if (v9)
  {
    v11 = a3;
    v13 = *(a1 + 4936);
    v14 = v9 << 6;
    while (*(v13 + 16) != v8)
    {
      v13 += 64;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    *v58 = 0u;
    v59 = 0u;
    v16 = AGCLLVMBuilder::unboxVector((a1 + *(*a1 - 24) + 1704), a6, v58);
    v17 = v16;
    v18 = *v58[0];
    v19 = (a1 + *(*a1 - 24));
    if (*v58[0] == v19[235] || v18 == v19[236] || v18 == v19[237])
    {
      v20 = v19[238];
      if (v16)
      {
        v21 = v16;
        v22 = v58;
        do
        {
          v23 = a1 + *(*a1 - 24);
          v24 = *v22;
          v25 = *(v23 + 1904);
          v57 = 257;
          *v22++ = llvm::IRBuilderBase::CreateCast(v23 + 1712, 39, v24, v25, v56);
          --v21;
        }

        while (v21);
      }

      v18 = v20;
    }

    v50 = v18;
    BasePointer = AGCLLVMUserMeshShader::getBasePointer(a1, a2, v11, *(v13 + 60), v18, a7);
    if (v11 == 1)
    {
      v27 = a1 + *(*a1 - 24);
      v28 = llvm::ConstantInt::get();
      v29 = a1 + *(*a1 - 24);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1, v30, v31, v32);
      v34 = llvm::ConstantInt::get();
      v57 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v29 + 1712), VertexAmpCount, v34, v56);
      v55 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v27 + 1712), v28, Mul, v54);
      v37 = a1 + *(*a1 - 24);
      v57 = 257;
      a5 = llvm::IRBuilderBase::CreateMul((v37 + 1712), a5, Add, v56);
    }

    v38 = v50;
    if (v17)
    {
      for (i = 0; i != v17; llvm::IRBuilderBase::CreateAlignedStore((a1 + 1712 + *(*a1 - 24)), v58[i++], GEP, 0, 0))
      {
        v40 = a1 + *(*a1 - 24);
        if (*(v13 + 56) == 1)
        {
          v41 = llvm::ConstantInt::get();
          v57 = 257;
          v42 = llvm::IRBuilderBase::CreateMul((v40 + 1712), a5, v41, v56);
          v43 = llvm::ConstantInt::get();
          v55 = 257;
          v44 = v42;
          v38 = v50;
          v45 = llvm::IRBuilderBase::CreateAdd((v40 + 1712), v44, v43, v54);
          v53 = 257;
          v46 = (v40 + 1712);
          v47 = &v52;
        }

        else
        {
          v48 = llvm::ConstantInt::get();
          v57 = 257;
          v45 = llvm::IRBuilderBase::CreateAdd((v40 + 1712), a5, v48, v56);
          v55 = 257;
          v46 = (v40 + 1712);
          v47 = v54;
        }

        GEP = llvm::IRBuilderBase::CreateGEP(v46, v38, BasePointer, v45, v47);
      }
    }

    return llvm::UndefValue::get();
  }

  else
  {
LABEL_7:

    return llvm::UndefValue::get();
  }
}

llvm::Value *AGCLLVMUserMeshShader::getBasePointer(void *a1, llvm::Type **a2, unsigned int a3, unsigned int a4, llvm::PointerType *a5, llvm::Value *a6)
{
  v11 = llvm::PointerType::get();
  v13 = llvm::PointerType::get();
  v14 = a1 + *(*a1 - 24);
  if (a3)
  {
    v15 = *(v14 + 271);
    v31 = *(v14 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v14 + 1712));
    v33 = *(v14 + 452);
    PointerCast = (*(*v15 + 352))(v15, &v31);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v35 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, a2, v11, v34, v12);
  }

  v17 = &a1[3 * a4 + 705];
  v18 = *v17;
  if ((*(v17 + 12) & 1) == 0)
  {
    a6 = llvm::ConstantInt::get();
  }

  v19 = llvm::ConstantInt::get();
  v20 = a1 + *(*a1 - 24);
  v35 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v20 + 1712), a6, v19, v34);
  v30 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v20 + 1712), v18, Mul, v29);
  v23 = a1 + *(*a1 - 24);
  v24 = *(v23 + 236);
  v35 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v23 + 1712), v24, PointerCast, Add, v34);
  v26 = (a1 + *(*a1 - 24));
  v35 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v26 + 214, GEP, v13, v34, v27);
}

uint64_t AGCLLVMUserMeshShader::buildSetVertexData(int8x8_t *a1, llvm::Type ***a2, uint64_t a3, BOOL a4)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 + 3;
  if (*(v5 + 8) >= 0x41u)
  {
    v7 = *v7;
  }

  v8 = *v7;
  v9 = a2[2];
  v10 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);

  return AGCLLVMUserMeshShader::buildSetVaryingData(a1, v6, 0, v8, v9, v10, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShader::buildSetIndices(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3, llvm::PointerType **a4)
{
  v8 = *a4;
  v9 = llvm::PointerType::get();
  v10 = (this + *(*this - 24));
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v10 + 214, a2, v9, v19, v11);
  v13 = this + *(*this - 24);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((v13 + 1712), a3, v14, v19);
  v16 = this + *(*this - 24);
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v16 + 1712), v8, PointerCast, UDiv, v19);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), a4, GEP, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t llvm::IRBuilderBase::CreateUDiv(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 104))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t AGCLLVMUserMeshShader::buildSetIndex(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3, llvm::Type **a4, llvm::Instruction *a5)
{
  v8 = (this + *(*this - 24));
  v9 = *(this + 567);
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v8 + 214, a2, v9, v15, a5);
  v11 = this + *(*this - 24);
  v12 = *(v11 + 236);
  v16 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v11 + 1712), v12, PointerCast, a3, v15);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), a4, GEP, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveCulled(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 23, 0, a3, *(&this[238] + *(*this - 24)));
  v7 = this + *(*this - 24);
  v8 = *(v7 + 236);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v22);
  v10 = this + *(*this - 24);
  v23 = 257;
  v11 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((v10 + 1712), Cast, v11, v22);
  v13 = this + *(*this - 24);
  v14 = *(v13 + 236);
  v15 = this[567];
  v23 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v13 + 214, BuiltinPointer, v15, v22, v16);
  v18 = llvm::ConstantInt::get();
  v21[16] = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v14, PointerCast, v18, v21);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), Shl, GEP, 0, 0);
  return llvm::UndefValue::get();
}

llvm::Instruction *AGCLLVMUserMeshShader::getBuiltinPointer(int8x8_t *a1, llvm::Type **a2, uint64_t a3, BOOL a4, llvm::Value *a5, llvm::PointerType *a6)
{
  v8 = a3;
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);
  BasePointer = AGCLLVMUserMeshShader::getBasePointer(a1, a2, 0, v8, a6, VertexAmpId);
  v13 = a1 + *(*a1 - 24);
  v14 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a5, v14, v18);
  v16 = a1 + *(*a1 - 24);
  v19 = 257;
  return llvm::IRBuilderBase::CreateGEP((v16 + 1712), a6, BasePointer, Add, v18);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  if (this[606].i8[4] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, a2, a3, a4);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1, 0xFFFFFFFF, a3, a4, VertexAmpId);
  }

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetViewportId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = this + 512;
  v9 = this + *(*this - 24);
  v10 = *(v9 + 238);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, a4, v10, v26);
  if (v8[65].i8[5] == 1)
  {
    v15 = this + *(*this - 24);
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v11, v12, v13);
    VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, a2, VertexAmpId, 0, v17);
    v27 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), VpLayerIdOffsetPointer, v26);
    v20 = this + *(*this - 24);
    v21 = *(v20 + 238);
    v27 = 257;
    v22 = llvm::IRBuilderBase::CreateCast((v20 + 1712), 39, Load, v21, v26);
    v25[16] = 257;
    Cast = llvm::IRBuilderBase::CreateAdd((v20 + 1712), Cast, v22, v25);
  }

  if (v8[93].i8[6] == 1)
  {
    v23 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v11, v12, v13);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1, 0xFFFFFFFD, a3, Cast, v23);
  }

  return AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)1>(this, a2, a3, Cast);
}

llvm::Instruction *AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3, int a4, llvm::Instruction *a5)
{
  v7 = (this + *(*this - 24));
  v8 = *(this + 568);
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v7 + 214, a2, v8, v19, a5);
  v10 = this + *(*this - 24);
  v11 = llvm::ConstantInt::get();
  v20 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v10 + 1712), a3, v11, v19);
  v13 = llvm::ConstantInt::get();
  v18[16] = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v10 + 1712), Mul, v13, v18);
  v15 = this + *(*this - 24);
  v16 = *(v15 + 237);
  v20 = 257;
  return llvm::IRBuilderBase::CreateGEP((v15 + 1712), v16, PointerCast, Add, v19);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)1>(int8x8_t *a1, llvm::Type **a2, llvm::Value *a3, llvm::CmpInst **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, a2, 23, 0, a3, *(&a1[238] + *(*a1 - 24)));
  v7 = (a1 + *(*a1 - 24));
  v8 = llvm::ConstantInt::get();
  v24 = 257;
  llvm::IRBuilderBase::CreateICmp(v7 + 214, 37, a4, v8, v23);
  llvm::ConstantInt::get();
  v22 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 236);
  v24 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v10 + 1712), 38, Select, v11, v23);
  v13 = a1 + *(*a1 - 24);
  v14 = *(v13 + 236);
  v15 = a1[567];
  v24 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v13 + 214, BuiltinPointer, v15, v23, v16);
  v18 = llvm::ConstantInt::get();
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v14, PointerCast, v18, &v21);
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), Cast, GEP, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetLayerId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = this + 512;
  v9 = this + *(*this - 24);
  v10 = *(v9 + 238);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, a4, v10, v26);
  if (v8[65].i8[5] == 1)
  {
    v15 = this + *(*this - 24);
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v11, v12, v13);
    VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, a2, VertexAmpId, 1, v17);
    v27 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), VpLayerIdOffsetPointer, v26);
    v20 = this + *(*this - 24);
    v21 = *(v20 + 238);
    v27 = 257;
    v22 = llvm::IRBuilderBase::CreateCast((v20 + 1712), 39, Load, v21, v26);
    v25[16] = 257;
    Cast = llvm::IRBuilderBase::CreateAdd((v20 + 1712), Cast, v22, v25);
  }

  if (v8[93].i8[4] == 1)
  {
    v23 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v11, v12, v13);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1, 0xFFFFFFFC, a3, Cast, v23);
  }

  return AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)0>(this, a2, a3, Cast);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)0>(int8x8_t *a1, llvm::Type **a2, llvm::Value *a3, llvm::CmpInst **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, a2, 23, 0, a3, *(&a1[238] + *(*a1 - 24)));
  v7 = (a1 + *(*a1 - 24));
  v8 = llvm::ConstantInt::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateICmp(v7 + 214, 37, a4, v8, v18);
  llvm::ConstantInt::get();
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 237);
  v19 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v10 + 1712), 38, Select, v11, v18);
  v13 = (a1 + *(*a1 - 24));
  v14 = a1[568];
  v19 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v13 + 214, BuiltinPointer, v14, v18, v15);
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), Cast, PointerCast, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetClipDistance(int8x8_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = *(a2 + 24);
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, v4, 25, *v6, *(a2 + 16), *(&a1[234] + *(*a1 - 24)));
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v7, BuiltinPointer, 0, 0);

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPointSize(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Type **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 22, 0, a3, *(&this[234] + *(*this - 24)));
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, BuiltinPointer, 0, 0);

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPosition(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v7 = AGCLLVMBuilder::unboxVector((&this[213] + *(*this - 24)), a4, v12);
  if (v7)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 0, v8, a3, *(&this[234] + *(*this - 24)));
      llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), *(v12 + v8++), BuiltinPointer, 0, 0);
    }

    while (v9 != v8);
  }

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::setupShaderInputs(AGCLLVMUserMeshShader *this)
{
  v304 = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  v262 = v4;
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(v2);
    v6 = *(this + 21);
    v7 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
    v5 = v7;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v265 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v265)
  {
LABEL_333:
    AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
    return 1;
  }

  v8 = v5;
  v264 = this + 1704;
  v272 = this + 5528;
  v269 = this + 5504;
  v270 = this + 1696;
  v271 = this + 5576;
  v268 = this + 5552;
  v261 = (this + 4872);
  v258 = this + 1656;
  v259 = this + 2168;
  v260 = this + 1712;
  v256 = this + 1896;
  v257 = (this + 5532);
  do
  {
    v9 = *(*(this + 10) + 8 * *(v8 + 8));
    if (v8[1])
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 1;
      goto LABEL_325;
    }

    v12 = *(v262 + 40);
    if (v12)
    {
      v13 = (v12 - 24);
    }

    else
    {
      v13 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(&v264[*(*this - 24)], v13, *(this + 5));
    v14 = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh");
    v15 = v9 - 8 * *(v9 + 8);
    if (!v14)
    {
      v38 = isStringMDNode(*(v15 + 8), "air.amplification_id");
      v11 = 1;
      if (v38)
      {
        v42 = *(*this - 24);
        VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v39, v40, v41);
        AGCLLVMBuilder::truncateToSmall(&v264[v42], VertexAmpId, *v8);
        llvm::Value::replaceAllUsesWith();
        v11 = 1;
        *(this + 4781) = 1;
      }

      goto LABEL_325;
    }

    v263 = v8;
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_66:
      v17 = 0;
LABEL_67:
      v35 = 0;
      *(this + 1206) = (*(this + 1204) + 3) & 0xFFFFFFFC;
      v22 = v17;
      goto LABEL_68;
    }

    v17 = 0;
    v18 = *v16;
    if (v18 > 0x22 || ((0x7FFFFFFF0uLL >> v18) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (*(v16 + 2) != 6)
    {
      goto LABEL_66;
    }

    if (!isStringMDNode(*(v16 - 6), "air.mesh_type_info"))
    {
      goto LABEL_66;
    }

    v19 = &v16[-8 * *(v16 + 2)];
    v20 = *(v19 + 1);
    if (!v20)
    {
      goto LABEL_66;
    }

    v17 = 0;
    v21 = *v20;
    if (v21 > 0x22 || ((0x7FFFFFFF0uLL >> v21) & 1) == 0)
    {
      goto LABEL_67;
    }

    v22 = *(v19 + 2);
    if (!v22)
    {
      goto LABEL_66;
    }

    v17 = 0;
    v23 = *v22;
    if (v23 > 0x22 || ((0x7FFFFFFF0uLL >> v23) & 1) == 0)
    {
      goto LABEL_67;
    }

    LODWORD(v283[0]) = 3;
    if (!parseMDInt(0, v16, v283, this + 1204) || (LODWORD(v283[0]) = 4, (parseMDInt(0, v16, v283, this + 1205) & 1) == 0))
    {
      v17 = v22;
      goto LABEL_67;
    }

    v24 = parseMDPrimitiveType(v16, this + 1207);
    *(this + 1206) = (*(this + 1204) + 3) & 0xFFFFFFFC;
    if (v24)
    {
      v25 = *(v20 + 2);
      if (!v25)
      {
        v35 = 1;
        goto LABEL_68;
      }

      v26 = 0;
      while (1)
      {
        v27 = *&v20[8 * v26 + -8 * v25];
        if (!v27)
        {
          break;
        }

        v28 = *v27;
        if (v28 > 0x22 || ((0x7FFFFFFF0uLL >> v28) & 1) == 0)
        {
          break;
        }

        v29 = v27 + 8;
        if (*(this + 4621) == 1)
        {
          v266 = v26;
          v30 = v27 + 8;
          v31 = 1;
          while (1)
          {
            v32 = *v29;
            v33 = v31 >= v32;
            if (v31 >= v32)
            {
              break;
            }

            v34 = isStringMDNode(*&v30[-8 * v32], "air.shared");
            ++v31;
            v30 += 8;
            if (v34)
            {
              v33 = 0;
              break;
            }
          }

          v26 = v266;
        }

        else
        {
          v33 = 0;
        }

        AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v27, 0, this + 4884, this + 4892, this + 1225);
        if (!AGCLLVMUserMeshShader::addGenericVarying(this, v27, 0, v33))
        {
          if (isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.position"))
          {
            *(this + 4832) = v33;
            v36 = *v29;
            if (v36 >= 2)
            {
              v37 = 1;
              while (!isStringMDNode(*&v27[8 * v37 + -8 * v36], "air.invariant"))
              {
                ++v37;
                v36 = *v29;
                if (v37 >= v36)
                {
                  goto LABEL_48;
                }
              }

              *(this + 4744) = 1;
            }
          }

          else if (isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.point_size"))
          {
            *(this + 4841) = 1;
            *(this + 4842) = v33;
          }

          else
          {
            if (!isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.clip_distance"))
            {
              v35 = 0;
              goto LABEL_68;
            }

            *(this + 1209) = 1;
            *(this + 4840) = v33;
            LODWORD(v283[0]) = 1;
            if (*v29 >= 2u)
            {
              do
              {
                if (parseMDInt("air.clip_distance_array_size", v27, v283, this + 1209))
                {
                  break;
                }

                ++LODWORD(v283[0]);
              }

              while (LODWORD(v283[0]) < *v29);
            }
          }
        }

LABEL_48:
        ++v26;
        v25 = *(v20 + 2);
        v35 = 1;
        if (v26 >= v25)
        {
          goto LABEL_68;
        }
      }
    }

    v35 = 0;
LABEL_68:
    if (*(this + 4832))
    {
      v44 = 1;
    }

    else
    {
      v44 = *(this + 4840);
    }

    v45 = v44 & 1;
    *(this + 4840) = v45;
    *(this + 4832) = v45;
    if (v35)
    {
      v46 = *(v22 + 2);
      if (v46)
      {
        for (i = 0; i < v46; ++i)
        {
          v48 = *&v22[8 * i + -8 * v46];
          if (!v48)
          {
            goto LABEL_96;
          }

          v49 = 0;
          v50 = *v48;
          if (v50 > 0x22 || ((0x7FFFFFFF0uLL >> v50) & 1) == 0)
          {
            goto LABEL_98;
          }

          if (*(this + 4621) == 1)
          {
            v51 = v48 + 8;
            v52 = 1;
            while (1)
            {
              v53 = *(v48 + 2);
              v54 = v52 >= v53;
              if (v52 >= v53)
              {
                break;
              }

              v55 = isStringMDNode(*&v51[-8 * v53], "air.shared");
              ++v52;
              v51 += 8;
              if (v55)
              {
                v54 = 0;
                break;
              }
            }
          }

          else
          {
            v54 = 0;
          }

          AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v48, 1u, this + 4884, this + 4892, this + 1225);
          if (!AGCLLVMUserMeshShader::addGenericVarying(this, v48, 1, v54))
          {
            if (isStringMDNode(*&v48[-8 * *(v48 + 2)], "air.render_target_array_index"))
            {
              *(this + 4843) = 1;
LABEL_91:
              *(this + 4849) |= v54;
              goto LABEL_92;
            }

            if (isStringMDNode(*&v48[-8 * *(v48 + 2)], "air.viewport_array_index"))
            {
              *(this + 4845) = 1;
              goto LABEL_91;
            }

            if (isStringMDNode(*&v48[-8 * *(v48 + 2)], "air.primitive_culled"))
            {
              *(this + 4847) = 1;
              goto LABEL_91;
            }

            if (!isStringMDNode(*&v48[-8 * *(v48 + 2)], "air.primitive_id"))
            {
              goto LABEL_96;
            }

            *(this + 4853) = 1;
            *(this + 4854) = v54;
          }

LABEL_92:
          v46 = *(v22 + 2);
        }
      }

      v49 = 1;
    }

    else
    {
LABEL_96:
      v49 = 0;
    }

LABEL_98:
    v56 = *(this + 4621);
    v267 = v49;
    if (v56)
    {
      if ((*(this + 4843) & 1) == 0)
      {
        *(this + 4850) = 1;
      }

      if ((*(this + 4845) & 1) == 0)
      {
        *(this + 4851) = 1;
      }

      v57 = 1;
      *(this + 4849) = 1;
      *(this + 4845) = 1;
      *(this + 4843) = 1;
    }

    else
    {
      v57 = *(this + 4849);
    }

    v58 = 0;
    v286 = *(this + 4854);
    v283[0] = "agc.per_prim.primitive_address";
    v283[1] = 0xFFFFFFFE00000000;
    v284 = 0;
    v285[0] = this + 4855;
    v285[1] = "agc.per_prim.primitive_id";
    v285[2] = 0xFFFFFFFF00000001;
    v287 = this + 4852;
    v288 = "air.render_target_array_index";
    v289 = 0xFFFFFFFC00000001;
    v290 = v57;
    v291 = this + 4844;
    v292 = "air.viewport_array_index";
    v293 = 0xFFFFFFFD00000001;
    v294 = v57;
    v295 = this + 4846;
    v296 = "air.amplification_id";
    v297 = 0xFFFFFFFB00000000;
    v298 = v56;
    v299 = this + 4782;
    v300 = "air.amplification_count";
    v301 = 0xFFFFFFFA00000001;
    v302 = 0;
    v303 = this + 4780;
    do
    {
      v59 = v283[v58];
      v60 = v283[v58 + 1];
      v61 = HIDWORD(v283[v58 + 1]);
      v62 = LOBYTE(v283[v58 + 2]);
      if (v59)
      {
        strlen(v283[v58]);
      }

      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1198))
      {
        v67 = 0;
      }

      else
      {
        v68 = *(*(this + 598) + 8 * Key);
        v69 = *(v68 + 8);
        llvm::StringMapImpl::RemoveKey();
        llvm::deallocate_buffer(*v68, v68, (*v68 + 17));
        if (v61 >= 0xFFFFFFFA)
        {
          v70 = ~v61;
        }

        else
        {
          v70 = ((v60 != 0) | (2 * v61)) + 6;
        }

        GenericVarying::GenericVarying(__dst, HIBYTE(v69) & 0x7F, BYTE2(v69), v69 & 0xF, BYTE1(v69), v70, v62);
        MEMORY[0x20F331AA0](&__p[8], v59);
        GenericVaryingAllocator::addVarying(this + 4912, __dst);
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        v67 = 1;
      }

      *v285[v58] = v67;
      v58 += 4;
    }

    while (v58 != 24);
    if (*(this + 4843))
    {
      v71 = 1;
      v72 = this + 5640;
    }

    else
    {
      v72 = this + 5640;
      if (*(this + 4845))
      {
        v71 = 1;
      }

      else
      {
        v71 = *(this + 4847);
      }
    }

    *(this + 4848) = v71 & 1;
    if (*(this + 4783) == 1)
    {
      v73 = *(this + 617);
      v74 = *(this + 1236);
      if (v74 >= 2)
      {
        v75 = v74 << 6;
        v76 = v73 + 64;
        v77 = v75 - 64;
        do
        {
          if (*(v73 + 16) < *(v76 + 16))
          {
            v73 = v76;
          }

          v76 += 64;
          v77 -= 64;
        }

        while (v77);
      }

      v78 = *(this + 1198);
      if (v78)
      {
          ;
        }
      }

      else
      {
        j = *(this + 598);
      }

      v81 = *(this + 598) + 8 * v78;
      if (j != v81)
      {
        v82 = *(v73 + 16);
        v83 = *j;
        while (1)
        {
          v84 = *(v83 + 8);
          v85 = v84 & 0xF;
          LODWORD(__dst[0]) = HIBYTE(v84) & 0x7F;
          HIDWORD(__dst[0]) = BYTE2(v84);
          ++v82;
          LODWORD(__dst[1]) = v85;
          HIDWORD(__dst[1]) = BYTE1(v84);
          *__p = v82;
          memset(&__p[8], 0, 32);
          __p[40] = BYTE2(v84) == 1;
          *&__p[41] = 0;
          if (LODWORD(__dst[1]) <= 1)
          {
            break;
          }

          switch(v85)
          {
            case 2:
              v87 = BYTE2(v84) == 1;
              v86 = 3;
              v88 = 7;
              goto LABEL_150;
            case 3:
              if (BYTE2(v84) == 1)
              {
                v86 = 19;
              }

              else
              {
                v86 = 18;
              }

              goto LABEL_159;
            case 5:
              if (BYTE2(v84) == 1)
              {
                v86 = 8;
              }

              else
              {
                v86 = 4;
              }

LABEL_159:
              *&__p[44] = v86;
              break;
          }

          MEMORY[0x20F331AA0](&__p[8], v83 + 16);
          GenericVaryingAllocator::addVarying(this + 4912, __dst);
          if ((__p[31] & 0x80000000) != 0)
          {
            operator delete(*&__p[8]);
          }

          do
          {
            v89 = j[1];
            ++j;
            v83 = v89;
            if (v89)
            {
              v90 = v83 == -8;
            }

            else
            {
              v90 = 1;
            }
          }

          while (v90);
          if (j == v81)
          {
            goto LABEL_167;
          }
        }

        if ((v84 & 0xF) == 0)
        {
          if (BYTE2(v84) == 1)
          {
            v86 = 5;
          }

          else
          {
            v86 = 1;
          }

          goto LABEL_159;
        }

        v87 = BYTE2(v84) == 1;
        v86 = 2;
        v88 = 6;
LABEL_150:
        if (v87)
        {
          v86 = v88;
        }

        goto LABEL_159;
      }

LABEL_167:
      llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 598, v64, v65, v66);
    }

    if (*(this + 1199))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*&v270[*(*this - 24)]))
      {
        AGCTargetPrinter::printMessage(*&v270[*(*this - 24)], "Following fragment input(s) mismatching mesh shader output type(s) or not written by mesh shader: ");
      }

      v91 = *(this + 1198);
      if (v91)
      {
          ;
        }
      }

      else
      {
        k = *(this + 598);
      }

      v94 = *(this + 598) + 8 * v91;
      while (k != v94)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v270[*(*this - 24)]))
        {
          v95 = *&v270[*(*this - 24)];
          std::string::basic_string[abi:nn200100](__dst, (*k + 16), **k);
          v96 = __dst;
          if (__p[7] < 0)
          {
            v96 = __dst[0];
          }

          AGCTargetPrinter::printMessage(v95, "\t%s", v96);
          if ((__p[7] & 0x80000000) != 0)
          {
            operator delete(__dst[0]);
          }
        }

        do
        {
          v98 = *(k + 8);
          k += 8;
          v97 = v98;
          if (v98)
          {
            v99 = v97 == -8;
          }

          else
          {
            v99 = 1;
          }
        }

        while (v99);
      }

      v100 = *(this + 1198);
      v101 = *(this + 598);
      if (v100)
      {
        while (!*v101 || *v101 == -8)
        {
          v101 += 8;
        }
      }

      v103 = *(this + 598) + 8 * v100;
      if (v101 != v103)
      {
        v104 = &unk_20E75F419;
        do
        {
          std::string::append(&v258[*(*this - 24)], v104);
          std::string::basic_string[abi:nn200100](v276, (*v101 + 16), **v101);
          attribute_name(__dst, v276);
          if (__p[7] >= 0)
          {
            v105 = __dst;
          }

          else
          {
            v105 = __dst[0];
          }

          if (__p[7] >= 0)
          {
            v106 = __p[7];
          }

          else
          {
            v106 = __dst[1];
          }

          std::string::append(&v258[*(*this - 24)], v105, v106);
          if ((__p[7] & 0x80000000) != 0)
          {
            operator delete(__dst[0]);
          }

          if (SBYTE3(v277) < 0)
          {
            operator delete(*v276);
          }

          do
          {
            v108 = *(v101 + 8);
            v101 += 8;
            v107 = v108;
            if (v108)
            {
              v109 = v107 == -8;
            }

            else
            {
              v109 = 1;
            }
          }

          while (v109);
          v104 = ",";
        }

        while (v101 != v103);
      }

      v267 = 0;
    }

    GenericVaryingAllocator::allocate((this + 4912), *&v259[*(*this - 24)]);
    if (v267)
    {
      v113 = v72;
      bzero(v72, 0x270uLL);
      v278 = 0;
      v277 = 0u;
      *&v276[4] = 0u;
      v114 = *(this + 1205);
      *v276 = 4 * v114;
      *&v276[4] = *(this + 2424);
      v115 = *(this + 1206);
      *&v276[8] = 23;
      *&v276[12] = 16 * v115;
      v276[16] = 1;
      v276[17] = *(this + 4832);
      DWORD1(v277) = 4 * v115;
      BYTE8(v277) = *(this + 4841);
      BYTE9(v277) = v276[17];
      v116 = *(this + 1209);
      HIDWORD(v277) = 22;
      v278 = (4 * v115 * v116);
      HIDWORD(v278) = v116 != 0;
      BYTE5(v278) = *(this + 4840);
      v279 = 25;
      v117 = *(this + 1207);
      if (v117 == 1)
      {
        v118 = 2;
      }

      else
      {
        v118 = 1;
      }

      if (v117 == 2)
      {
        v119 = 3;
      }

      else
      {
        v119 = v118;
      }

      v120 = (v119 * v114 + 15) & 0xFFFFFFF0;
      *(this + 1226) = v120;
      *(this + 1220) = v120;
      v121 = v120 + 16;
      if (*(this + 4621) == 1)
      {
        *(this + 1408) = v121;
        v121 += (4 * *(this + 1194) + 15) & 0xFFFFFFF0;
      }

      for (m = 0; m != 48; m += 12)
      {
        if ((v276[m + 5] & 1) == 0 && v276[m + 4] == 1)
        {
          v123 = *&v276[m];
          v124 = *&v276[m + 8];
          if (v124 != 26)
          {
            v125 = llvm::ConstantInt::get();
            v126 = &v113[24 * v124];
            *v126 = v125;
            v126[12] = 0;
          }

          v121 += (v123 + 15) & 0xFFFFFFF0;
        }
      }

      v127 = &dword_20E70CBD4;
      v128 = 128;
      do
      {
        v129 = *(this + 1206);
        v130 = *(v127 - 1);
        v131 = &v272[4 * v130];
        if ((*(this + 5472) & *(v127 - 2)) == 1)
        {
          v132 = (*v131 + 1) >> 1;
        }

        else
        {
          v133 = &v269[4 * v130];
          if (*(v127 - 8))
          {
            v134 = v131;
          }

          else
          {
            v134 = v133;
          }

          v132 = *v134;
        }

        v135 = *v127;
        if (*v127 != 26)
        {
          v136 = llvm::ConstantInt::get();
          v137 = &v113[24 * v135];
          *v137 = v136;
          v137[12] = 0;
        }

        v121 += (4 * v129 * v132 + 15) & 0xFFFFFFF0;
        v127 += 4;
        v128 -= 16;
      }

      while (v128);
      v138 = 0;
      *(this + 1214) = v121;
      do
      {
        if (v276[v128 + 5] && v276[v128 + 4] == 1)
        {
          v139 = *&v276[v128];
          v140 = *&v276[v128 + 8];
          if (v140 != 26)
          {
            v141 = llvm::ConstantInt::get();
            v142 = &v113[24 * v140];
            *v142 = v141;
            v142[12] = 1;
          }

          v138 += (v139 + 15) & 0xFFFFFFF0;
        }

        v128 += 12;
      }

      while (v128 != 48);
      v143 = &byte_20E70CBCC;
      v144 = 128;
      do
      {
        v145 = *(this + 1206);
        v146 = *(v143 + 1);
        v147 = &v271[4 * v146];
        if ((*(this + 5472) & *v143) == 1)
        {
          v148 = (*v147 + 1) >> 1;
        }

        else
        {
          v149 = &v268[4 * v146];
          if (*v143)
          {
            v150 = v147;
          }

          else
          {
            v150 = v149;
          }

          v148 = *v150;
        }

        v151 = *(v143 + 3);
        if (v151 != 26)
        {
          v152 = llvm::ConstantInt::get();
          v153 = &v113[24 * v151];
          *v153 = v152;
          v153[12] = 1;
        }

        v138 += (4 * v145 * v148 + 15) & 0xFFFFFFF0;
        v143 += 16;
        v144 -= 16;
      }

      while (v144);
      v154 = 0;
      *(this + 1216) = v138;
      v155 = &dword_20E70CCFC;
      v156 = 32;
      do
      {
        v157 = *(v155 - 1);
        v158 = &v272[4 * v157];
        if ((*(this + 5472) & *(v155 - 2)) == 1)
        {
          v159 = (*v158 + 1) >> 1;
        }

        else
        {
          v160 = &v269[4 * v157];
          if (*(v155 - 8))
          {
            v161 = v158;
          }

          else
          {
            v161 = v160;
          }

          v159 = *v161;
        }

        v162 = *v155;
        if (*v155 != 26)
        {
          v163 = llvm::ConstantInt::get();
          v164 = &v113[24 * v162];
          *v164 = v163;
          v164[12] = 0;
        }

        v154 += 4 * v159;
        v155 += 4;
        v156 -= 16;
      }

      while (v156);
      v165 = 0;
      *(this + 1215) = v154;
      v166 = &byte_20E70CCF4;
      v167 = 32;
      do
      {
        v168 = *(v166 + 1);
        v169 = &v271[4 * v168];
        if ((*(this + 5472) & *v166) == 1)
        {
          v170 = (*v169 + 1) >> 1;
        }

        else
        {
          v171 = &v268[4 * v168];
          if (*v166)
          {
            v172 = v169;
          }

          else
          {
            v172 = v171;
          }

          v170 = *v172;
        }

        v173 = *(v166 + 3);
        if (v173 != 26)
        {
          v174 = llvm::ConstantInt::get();
          v175 = &v113[24 * v173];
          *v175 = v174;
          v175[12] = 1;
        }

        v165 += 4 * v170;
        v166 += 16;
        v167 -= 16;
      }

      while (v167);
      *(this + 1217) = v165;
      *(this + 1414) = 4;
      v176 = *(this + 5472);
      *(this + 1420) = *(this + 1376);
      *(this + 1426) = *(this + 1377);
      *(this + 1432) = *(this + 1378);
      *(this + 1438) = *(this + 1381);
      *(this + 1522) = *(this + 1379);
      v177 = *(this + 1382);
      if (v176 == 1)
      {
        v177 = (v177 + 1) >> 1;
        v178 = vshr_n_u32(vadd_s32(*v257, 0x100000001), 1uLL);
        v179 = (*(this + 1387) + 1) >> 1;
      }

      else
      {
        v178 = *v257;
        v179 = *(this + 1387);
      }

      *(this + 1444) = v177;
      *(this + 1450) = v178.i32[0];
      *(this + 1456) = v178.i32[1];
      *(this + 1462) = v179;
      *(this + 1528) = *(this + 1385);
      *(this + 1474) = *(this + 1388);
      *(this + 1480) = *(this + 1389);
      *(this + 1486) = *(this + 1390);
      *(this + 1492) = *(this + 1393);
      *(this + 1534) = *(this + 1391);
      v180 = *(this + 1394);
      if (v176)
      {
        v180 = (v180 + 1) >> 1;
        v181 = (*(this + 1395) + 1) >> 1;
        v182 = (*(this + 1396) + 1) >> 1;
        v183 = (*(this + 1399) + 1) >> 1;
        v184 = (*(this + 1397) + 1) >> 1;
      }

      else
      {
        v181 = *(this + 1395);
        v182 = *(this + 1396);
        v183 = *(this + 1399);
        v184 = *(this + 1397);
      }

      *__dst = xmmword_20E70CC4C;
      *__p = unk_20E70CC5C;
      *&__p[16] = xmmword_20E70CC6C;
      *(this + 1498) = v180;
      *(this + 1504) = v181;
      *(this + 1510) = v182;
      *(this + 1516) = v183;
      *(this + 1540) = v184;
      *(this + 1546) = *(this + 4841);
      *(this + 1552) = *(this + 4848);
      *(this + 1558) = 0;
      *(this + 1564) = *(this + 1209);
      *&__p[32] = unk_20E70CC7C;
      v282 = 0x1900000016;
      std::vector<UVSWriteType>::vector[abi:nn200100](&v273, __dst, 0x12uLL);
      *(this + 1412) = 0;
      v185 = v273;
      v186 = v274;
      if (v273 != v274)
      {
        v187 = 0;
        v188 = v273;
        do
        {
          v189 = &v113[24 * v187];
          v190 = *(v189 + 4);
          if (v190 && v189[12] == 1)
          {
            v191 = v190 << 16;
          }

          else
          {
            v191 = *(v189 + 4);
          }

          v192 = *v188++;
          v187 = v192;
          *&v113[24 * v192 + 8] = (*(v189 + 4) + v191) | ((*(v189 + 5) + HIWORD(v191)) << 16);
        }

        while (v188 != v186);
      }

      if (v185)
      {
        v274 = v185;
        operator delete(v185);
      }
    }

    v193 = 0;
    v194 = -6;
    v195 = (this + 5528);
    do
    {
      if ((v194 + 6) <= 5 && ((1 << (v194 + 6)) & 0x27) != 0)
      {
        v196 = *(v195 - 6) + v193;
        v197 = v196 + *v195;
        v193 = v196 + ((*v195 + 1) >> 1);
        if (*(this + 5472) != 1)
        {
          v193 = v197;
        }
      }

      ++v195;
      v198 = __CFADD__(v194++, 1);
    }

    while (!v198);
    v199 = 0;
    *v261 = v193;
    v200 = -6;
    v201 = (this + 5576);
    do
    {
      if ((v200 + 6) <= 5 && ((1 << (v200 + 6)) & 0x27) != 0)
      {
        v202 = *(v201 - 6) + v199;
        v203 = v202 + *v201;
        v199 = v202 + ((*v201 + 1) >> 1);
        if (*(this + 5472) != 1)
        {
          v199 = v203;
        }
      }

      ++v201;
      v198 = __CFADD__(v200++, 1);
    }

    while (!v198);
    *(this + 1219) = v199;
    v261[*(this + 4832)] += 4;
    v261[*(this + 4842)] += *(this + 4841);
    v261[*(this + 4840)] += *(this + 1209);
    v11 = v267;
    if (v267)
    {
      v204 = *(*&v259[*(*this - 24)] + 920);
      v205 = (*(*v204 + 424))(v204);
      v206 = AGCLLVMUserObject::setupBufferArgumentData(this, *(this + 569), v205, -1, 0, 0, 0xFFFFFFFFLL);
      llvm::ValueHandleBase::operator=((this + 4752), v207);
      v208 = *(*this - 24);
      v209 = *v263;
      *&__p[16] = 257;
      PointerCast = llvm::IRBuilderBase::CreatePointerCast(&v260[v208], v206, v209, __dst, v210);
      llvm::Value::replaceAllUsesWith();
      v11 = v267;
    }

    else
    {
      PointerCast = 0;
    }

    if (*(this + 4621) == 1 && *(this + 596))
    {
      v212 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v110, v111, v112);
      *(this + 4781) = 1;
      v213 = *(*this - 24);
      v214 = *(this + 702);
      *&__p[16] = 257;
      Load = AGCLLVMBuilder::CreateLoad(&v264[v213], v214, __dst);
      v216 = *(*this - 24);
      v217 = *(this + 703);
      *&__p[16] = 257;
      GEP = llvm::IRBuilderBase::CreateGEP(&v260[v216], v217, Load, v212, __dst);
      v219 = *(*this - 24);
      v220 = *(this + 703);
      *&__p[16] = 257;
      llvm::Type::isOpaquePointerTy(*GEP);
      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v260[v219], v220, GEP, 0, __dst);
      __dst[0] = __p;
      __dst[1] = 0x800000000;
      AGCLLVMBuilder::unboxStruct(&v264[*(*this - 24)], AlignedLoad, __dst);
      v223 = *__dst[0];
      v222 = *(__dst[0] + 1);
      v224 = this + *(*this - 24);
      v225 = *(this + 596);
      WORD6(v277) = 257;
      v226 = AGCLLVMBuilder::CreateLoad((v224 + 1704), v225, v276);
      v227 = *(this + 569);
      v275 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v224 + 1712), 48, v226, v227, &v273);
      VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, Cast, v212, 0, v229);
      v233 = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, Cast, v212, 1, v231);
      if ((*(this + 4851) & 1) == 0)
      {
        v234 = this + *(*this - 24);
        v235 = *(v234 + 237);
        WORD6(v277) = 257;
        v236 = llvm::IRBuilderBase::CreateCast((v234 + 1712), 38, v223, v235, v276);
        llvm::IRBuilderBase::CreateAlignedStore(v234 + 214, v236, VpLayerIdOffsetPointer, 0, 0);
      }

      if ((*(this + 4850) & 1) == 0)
      {
        v237 = this + *(*this - 24);
        v238 = *(v237 + 237);
        WORD6(v277) = 257;
        v239 = llvm::IRBuilderBase::CreateCast((v237 + 1712), 38, v222, v238, v276);
        llvm::IRBuilderBase::CreateAlignedStore(v237 + 214, v239, v233, 0, 0);
      }

      if ((*(this + 4851) & 1) != 0 || *(this + 4850) == 1)
      {
        v240 = *(*this - 24);
        v241 = *(this + 569);
        WORD6(v277) = 257;
        llvm::IRBuilderBase::CreatePointerCast(&v260[v240], PointerCast, v241, v276, v232);
        v242 = (this + *(*this - 24));
        v243 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, v242[237], 0);
        v244 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, *&v256[*(*this - 24)], 1);
        WORD6(v277) = 257;
        Mul = llvm::IRBuilderBase::CreateMul((v242 + 214), v243, v244, v276);
        v246 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, *&v256[*(*this - 24)], 2);
        v275 = 257;
        v247 = llvm::IRBuilderBase::CreateMul((v242 + 214), Mul, v246, &v273);
        v248 = this + *(*this - 24);
        v249 = llvm::ConstantInt::get();
        WORD6(v277) = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v248 + 1712), v249, v247, v276);
        v251 = *(*this - 24);
        WORD6(v277) = 257;
        UDiv = llvm::IRBuilderBase::CreateUDiv(&v260[v251], Add, v247, v276);
        v253 = AGCLLVMUserObjectShaderBase::buildLocalLinearID(this, *&v256[*(*this - 24)]);
        v254 = *(*this - 24);
        WORD6(v277) = 257;
        llvm::IRBuilderBase::CreateMul(&v260[v254], v253, UDiv, v276);
        *v276 = "implicit_vp_layer_init_body_start";
        WORD6(v277) = 259;
        operator new();
      }

      if (__dst[0] != __p)
      {
        free(__dst[0]);
      }

      v11 = v267;
    }

    v8 = v263;
LABEL_325:
    if (!v11)
    {
      break;
    }

    v8 += 5;
  }

  while (v8 != v265);
  if (v11)
  {
    goto LABEL_333;
  }

  return 0;
}

BOOL AGCLLVMUserMeshShader::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v28 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v28 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  v25[0] = 1;
  if (!parseMDInt(0, a2, v25, &v28))
  {
    return 0;
  }

  v12 = *(a2 - 8 * *(a2 + 8) + 16);
  if (!v12 || *v12)
  {
    return 0;
  }

  llvm::MDString::getString(v12);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a1 + 4792))
  {
    return 1;
  }

  v16 = *(*(a1 + 4784) + 8 * Key);
  v17 = *(v16 + 8);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(*v16, v16, (*v16 + 17));
  v18 = v17 & 0xF;
  v13 = !a3 && v18 != 3 || a3 == 1 && v18 == 3;
  if (v28 < 0xFFFFFFFA)
  {
    v20 = ((a3 != 0) | (2 * v28)) + 6;
  }

  else
  {
    v20 = ~v28;
  }

  GenericVarying::GenericVarying(v25, HIBYTE(v17) & 0x7F, BYTE2(v17), v18, BYTE1(v17), v20, a4);
  String = llvm::MDString::getString(v12);
  if (String)
  {
    std::string::basic_string[abi:nn200100](&v23, String, v22);
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  __p = v23;
  v27 = v24;
  GenericVaryingAllocator::addVarying(a1 + 4912, v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  return v13;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(result + 3))
  {
    v4 = result;
    v5 = *(result + 2);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *v4;
        result = *(*v4 + v6);
        if (result != -8 && result != 0)
        {
          result = llvm::deallocate_buffer(*result, result, (*result + 17));
        }

        *(v8 + v6) = 0;
        v6 += 8;
      }

      while (v7 != v6);
    }

    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
  }

  return result;
}

void attribute_name(std::string *a1, std::string *this)
{
  __idx = 0;
  v4 = std::string::find(this, "generated(", 0, 0xAuLL);
  if (v4 == -1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;

      std::string::__init_copy_ctor_external(a1, v6, size);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *&this->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = this->__r_.__value_.__r.__words[2];
    }
  }

  else
  {
    std::string::basic_string(&__str, this, v4 + 10, 0xFFFFFFFFFFFFFFFFLL, &v10);
    v5 = std::stoi(&__str, &__idx, 10);
    std::string::basic_string(a1, &__str, __idx, v5, &v10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

llvm::User *llvm::IRBuilderBase::CreatePHI(llvm::IRBuilderBase *this, llvm::Type *a2, int a3, const llvm::Twine *a4)
{
  v7 = llvm::User::operator new(0x40);
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  llvm::User::allocHungoffUses(v7);
  if (llvm::FPMathOperator::classof(v7))
  {
    llvm::IRBuilderBase::setFPAttrs(this, v7, *(this + 24));
  }

  (*(**(this + 10) + 16))(*(this + 10), v7, a4, *(this + 6), *(this + 7));
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *this;
    v10 = v9 + 16 * v8;
    do
    {
      llvm::Instruction::setMetadata();
      v9 += 16;
    }

    while (v9 != v10);
  }

  return v7;
}

llvm::PHINode *llvm::PHINode::addIncoming(llvm::PHINode *this, llvm::Value *a2, llvm::BasicBlock *a3)
{
  v5 = this;
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFF) == *(this + 15))
  {
    this = llvm::PHINode::growOperands(this);
    v6 = *(v5 + 5);
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  *(v5 + 5) = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = v5 - 32 * v7;
  }

  v9 = &v8[32 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 8;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = *(v5 + 5);
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = v5 - 32 * v15;
  }

  *&v16[32 * *(v5 + 15) + 8 * (v15 - 1)] = a3;
  return this;
}

uint64_t llvm::IRBuilderBase::CreateCondBr(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FCA0](v8, a3, a4, a2, 0);
  v11 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, v10);
}

void *std::vector<UVSWriteType>::vector[abi:nn200100](void *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void AGCLLVMUserMeshShader::addWrapperPostfix(AGCLLVMUserMeshShader *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = llvm::ConstantInt::get();
  v5[1] = llvm::ConstantInt::get();
  AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v5, 2);
  v5[0] = "exit";
  v6 = 259;
  operator new();
}

uint64_t llvm::IRBuilderBase::CreateNot(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    Not = (*(**(this + 9) + 208))(*(this + 9), a2, a3, a4);
    if (Not)
    {
      v7 = *(Not + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
    }
  }

  else
  {
    Not = llvm::BinaryOperator::CreateNot();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
  }

  return Not;
}

void AGCLLVMUserMeshShader::buildWriteVaryings(AGCLLVMUserObjectShaderBase *a1, llvm::Type **a2, llvm::Value *a3, llvm::BasicBlock *a4, int a5, unsigned int *a6, uint64_t a7)
{
  llvm::ConstantInt::get();
  v13 = a1 + *(*a1 - 24);
  if (a5)
  {
    VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1, v10, v11, v12);
    v15 = *(a1 + *(*a1 - 24) + 1896);
    v20 = 257;
    llvm::IRBuilderBase::CreateCast((v13 + 1712), 38, VertexAmpCount, v15, v19);
  }

  else
  {
    llvm::ConstantInt::get();
  }

  v17 = *(*a1 - 24);
  v18 = *(a1 + 567);
  v20 = 257;
  llvm::IRBuilderBase::CreatePointerCast((a1 + v17 + 1712), a2, v18, v19, v16);
  v19[0] = "loop";
  v20 = 259;
  operator new();
}

void AGCLLVMUserMeshShader::addInitCompilePass(AGCLLVMUserMeshShader *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShader>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserMeshShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 79;
  }

  v2 = &aStringrefLlvmG_8[v1];
  v3 = 79 - v1;
  if ((79 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 79 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserMeshShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserMeshShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGMeshShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_7[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGMeshShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGMeshShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x65)
  {
    v1 = v0;
  }

  else
  {
    v1 = 101;
  }

  v2 = &aStringrefLlvmG_6[v1];
  v3 = 101 - v1;
  if ((101 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 101 - v1;
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

void AGCLLVMUserMeshShader::~AGCLLVMUserMeshShader(AGCLLVMUserMeshShader *this)
{
  *this = &unk_2825587A8;
  v2 = (this + 6264);
  *(this + 783) = &unk_282558B10;
  *(this + 996) = &unk_282558C20;
  v10 = (this + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v10);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4936);
  v6 = *(this + 614);
  if (v6)
  {
    *(this + 615) = v6;
    operator delete(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4784, v3, v4, v5);
  v9 = *(this + 596);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D770, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825587A8;
  v2 = (this + 6264);
  *(this + 783) = &unk_282558B10;
  *(this + 996) = &unk_282558C20;
  v10 = (this + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v10);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4936);
  v6 = *(this + 614);
  if (v6)
  {
    *(this + 615) = v6;
    operator delete(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4784, v3, v4, v5);
  v9 = *(this + 596);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D770, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMUserMeshShaderSW::constructReply(AGCLLVMUserMeshShaderSW *this)
{
  v133 = *MEMORY[0x277D85DE8];
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v112 = AGCLLVMUserObject::constructFlatReply(this);
  v2 = this + *(*this - 24);
  v2[4358] = 1;
  v3 = *(v2 + 1082);
  v4 = *(v2 + 1080) - *(v2 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 4, *(this + 1152));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 6, *(this + 1153));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 8, *(this + 1154));
  v5 = flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
  v6 = *(this + 5480);
  v120 = 0;
  v121 = 0u;
  v122[0] = v123;
  v122[1] = 0x800000000;
  v123[64] = 0x1FFFFFFFFLL;
  v124 = v6;
  v131[7] = 0;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  memset(v131, 0, 26);
  v132 = 1;
  if (*(this + 1238))
  {
    v7 = *(this + 618);
    do
    {
      GenericVaryingAllocator::addVarying(&v120, v7);
      v7 += 64;
    }

    while (v7 < *(this + 618) + (*(this + 1238) << 6));
  }

  GenericVaryingAllocator::allocate(&v120, *(this + *(*this - 24) + 2168));
  GenericVaryingAllocator::serialize(&v120, (this + *(*this - 24) + 4288));
  if (v121 == v120)
  {
    v8 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v8 = v120;
  }

  v107 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v8, (v121 - v120) >> 2);
  v9 = this + *(*this - 24);
  v9[4358] = 1;
  v10 = *(v9 + 1082);
  v11 = *(v9 + 1080) - *(v9 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 4, v128);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 6, DWORD1(v128));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 8, DWORD2(v128));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 10, DWORD2(v126));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 12, HIDWORD(v126));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4288, 14, v127);
  v12 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4288), v11 + v10);
  v13 = this + *(*this - 24);
  v14 = *(v13 + 1080);
  v13[4358] = 1;
  v15 = *(v13 + 1082);
  v16 = v14 - *(v13 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 4, v131[0]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 6, v131[1]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 8, v131[2]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 10, DWORD2(v129));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 12, HIDWORD(v129));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 4288, 14, v130);
  v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v16 + v15);
  v18 = this + *(*this - 24);
  v19 = *(v18 + 1080);
  v18[4358] = 1;
  v20 = *(v18 + 1082);
  v21 = v19 - *(v18 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 4, v5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 6, *(this + 1206));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 8, *(this + 1207));
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(v18 + 4288, 10, *(this + 4840));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 12, *(this + 1217));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 14, *(this + 1219));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 16, *(this + 1217));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 18, *(this + 1219));
  if (v18[4368] == 1)
  {
    v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v18 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v18 + 4288, 60, v22);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 20, *(this + 1218));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 22, *(this + 1220));
  v109 = v12;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 24, v12);
  v108 = v17;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 26, v17);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 28, LOBYTE(v131[6]), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 30, v107);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 32, *(this + 4853), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 34, *(this + 1212));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 36, *(this + 4857), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 38, *(this + 4855), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 40, *(this + 4859), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 42, *(this + 4845), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 44, *(this + 4854), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 46, *(this + 4861), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 48, *(this + 1146));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 50, *(this + 4600), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 52, *(this + 4860), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 4288, 54, *(this + 1194));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 56, *(this + 12), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 4288, 58, *(this + 4601), 0);
  v106 = flatbuffers::FlatBufferBuilder::EndTable((v18 + 4288), v21 + v20);
  v23 = this + *(*this - 24);
  v24 = *(*(v23 + 271) + 960);
  v23[4358] = 1;
  v25 = *(v23 + 1080);
  v26 = *(v23 + 1084);
  v27 = *(v23 + 1082);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 4288, 12, v24);
  if (v23[4368] == 1)
  {
    v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 14, v28);
  }

  v29 = v25 - v26;
  v30 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 1);
  flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 10, v30);
  if (v23[4368] == 1)
  {
    v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 8, v31);
    if (v23[4368])
    {
      v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 6, v32);
    }
  }

  v105 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4288), v29 + v27);
  v33 = this + *(*this - 24);
  v33[4358] = 1;
  v34 = flatbuffers::FlatBufferBuilder::EndTable((v33 + 4288), *(v33 + 2160) - *(v33 + 2168) + *(v33 + 2164));
  flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v34, v35);
  v36 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
  v37 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t, 0);
  v38 = this + *(*this - 24);
  v39 = *(v38 + 1080);
  v38[4358] = 1;
  v40 = *(v38 + 1082);
  v41 = v39 - *(v38 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v38 + 4288), v36);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v38 + 4288), v37);
  v42 = flatbuffers::FlatBufferBuilder::EndTable((v38 + 4288), v41 + v40);
  v43 = this + *(*this - 24);
  v44 = *(v43 + 1080);
  v43[4358] = 1;
  v45 = *(v43 + 1082);
  v46 = v44 - *(v43 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v43 + 4288), v42);
  v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v43 + 4288), 1);
  flatbuffers::FlatBufferBuilder::TrackField(v43 + 4288, 6, v47);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v43 + 4288, 8, *(this + 4853), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 4288, 10, *(this + 1221));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 4288, 12, *(this + 1222));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 4288, 14, *(this + 1212));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 16, v109);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 18, v108);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v43 + 4288, 20, LOBYTE(v131[6]), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 22, v107);
  if (v43[4368] == 1)
  {
    v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v43 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v43 + 4288, 26, v48);
  }

  v110 = flatbuffers::FlatBufferBuilder::EndTable((v43 + 4288), v46 + v45);
  v49 = this + *(*this - 24);
  v50 = *(this + 4857);
  v51 = *(this + 4855);
  v52 = *(this + 4845);
  v53 = *(this + 4854);
  v54 = *(this + 4861);
  v49[4454] = 1;
  v55 = *(v49 + 1106);
  v56 = *(v49 + 1104) - *(v49 + 1108);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 14, v54, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 12, v54, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 10, v53, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 8, v52, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 6, v51, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 4384, 4, v50, 0);
  v57 = flatbuffers::FlatBufferBuilder::EndTable((v49 + 4384), v56 + v55);
  v58 = this + *(*this - 24);
  v58[4358] = 1;
  v59 = *(v58 + 1082);
  LODWORD(v49) = *(v58 + 1080) - *(v58 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v58 + 4288), v112);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((v58 + 4288), v106);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v58 + 4288), v105);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v58 + 4288), v110);
  v60 = *(*this - 24);
  v61 = flatbuffers::FlatBufferBuilder::EndTable((v58 + 4288), v49 + v59);
  flatbuffers::FlatBufferBuilder::Finish((this + v60 + 4288), v61, v62);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v63 = this + *(*this - 24);
  v63[4454] = 1;
  v64 = *(v63 + 1106);
  v65 = *(v63 + 1104) - *(v63 + 1108);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v63 + 4384), v57);
  v66 = *(*this - 24);
  v67 = flatbuffers::FlatBufferBuilder::EndTable((v63 + 4384), v65 + v64);
  flatbuffers::FlatBufferBuilder::Finish((this + v66 + 4384), v67, v68);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  v69 = (this + *(*this - 24));
  v70 = v69[314];
  if (v70)
  {
    if (v69[315])
    {
      v71 = v69 + 314;
    }

    else
    {
      v71 = v69 + 384;
    }
  }

  else
  {
    v71 = v69 + 384;
  }

  v73 = (*v71 + **v71);
  v74 = (v73 + *(v73 - *v73 + 4));
  v75 = (v74 + *v74);
  if (v70)
  {
    if (v69[315])
    {
      v76 = (v69 + 314);
    }

    else
    {
      v76 = (v69 + 384);
    }
  }

  else
  {
    v76 = (v69 + 384);
  }

  v77 = 0;
  v78 = (v75 + *(v75 - *v75 + 8));
  if (*v76 && v76[1])
  {
    v77 = (*v76 + **v76);
  }

  v79 = (v77 - *v77);
  if (*v79 >= 5u && (v80 = v79[2]) != 0)
  {
    v81 = (v77 + v80 + *(v77 + v80));
  }

  else
  {
    v81 = 0;
  }

  v82 = (v81 - *v81);
  if (*v82 >= 0x3Du && (v83 = v82[30]) != 0)
  {
    v84 = *(v81 + v83);
  }

  else
  {
    v84 = 0;
  }

  v85 = *(v78 + *v78);
  v86 = *(this + 1206);
  v111 = *(this + 1223);
  v87 = *(this + 1225);
  v113 = *(this + 1224);
  v88 = *(this + 1207);
  v89 = *(this + 1226);
  v90 = *(this + 1194);
  v91 = *(this + 1227);
  v92 = *(v69[271] + 1004);
  if (v91 > v92)
  {
    std::to_string(&v115, v91);
    v93 = std::string::insert(&v115, 0, "Mesh unique scalar count of ");
    v94 = v93->__r_.__value_.__r.__words[2];
    *&v116.__r_.__value_.__l.__data_ = *&v93->__r_.__value_.__l.__data_;
    v116.__r_.__value_.__r.__words[2] = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    v95 = std::string::append(&v116, " exceeds limit of ");
    v96 = v95->__r_.__value_.__r.__words[2];
    *&v117.__r_.__value_.__l.__data_ = *&v95->__r_.__value_.__l.__data_;
    v117.__r_.__value_.__r.__words[2] = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v114, *(*(this + *(*this - 24) + 2168) + 1004));
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = &v114;
    }

    else
    {
      v97 = v114.__r_.__value_.__r.__words[0];
    }

    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v114.__r_.__value_.__l.__size_;
    }

    v99 = std::string::append(&v117, v97, size);
    v100 = v99->__r_.__value_.__r.__words[2];
    *__p = *&v99->__r_.__value_.__l.__data_;
    v119 = v100;
    v99->__r_.__value_.__l.__size_ = 0;
    v99->__r_.__value_.__r.__words[2] = 0;
    v99->__r_.__value_.__r.__words[0] = 0;
    if (v119 >= 0)
    {
      v101 = __p;
    }

    else
    {
      v101 = __p[0];
    }

    if (v119 >= 0)
    {
      v102 = HIBYTE(v119);
    }

    else
    {
      v102 = __p[1];
    }

    std::string::append((this + *(*this - 24) + 1656), v101, v102);
    if (SHIBYTE(v119) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }
  }

  if (v85 > 0x20)
  {
    v72 = 0;
  }

  else
  {
    v103 = validateUserMeshLocalMemoryUsage(v84, ((v86 + 3) & 0xFFFFFFFC) * v111 + v88 * v113 + (v87 * ((v86 + 3) & 0xFFFFFFFC) + v89 * v88) * v90, *(*(this + *(*this - 24) + 2168) + 996), *(*(this + *(*this - 24) + 2168) + 992), *(*(this + *(*this - 24) + 2168) + 1000), (this + *(*this - 24) + 1656));
    if (v91 <= v92)
    {
      v72 = v103;
    }

    else
    {
      v72 = 0;
    }
  }

  __p[0] = &v125;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](__p);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(v122);
  if (v120)
  {
    *&v121 = v120;
    operator delete(v120);
  }

  return v72;
}

void AGCLLVMUserMeshShaderSW::getCompilationKeyDescription(AGCLLVMUserMeshShaderSW *this@<X0>, std::string *a2@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v58, "AGCMeshContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v56, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v59);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v59.__r_.__value_.__r + *(v59.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v59.__r_.__value_.__r + *(v59.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v72, v56, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v59.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v59.__r_.__value_.__r.__words + *(v59.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v59.__r_.__value_.__r.__words[2] = v6;
  v60 = MEMORY[0x277D82878] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v61);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v63);
  std::string::basic_string[abi:nn200100]<0>(v54, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v72[1], v54, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v52, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v72[2], v52, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v50, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v72[3], v50, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v48, "maxVertexAmplificationCount");
  _agcFieldString<unsigned int>(&v72[4], v48, v3[2] & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v46, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned int>(&v72[5], v46, (*(v3 + 4) >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v44, "customBorderColor");
  _agcFieldString<unsigned int>(&v72[6], v44, (*(v3 + 4) >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v42, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v72[7], v42, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v40, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v72[8], v40, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v38, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v72[9], v38, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v36, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v72[10], &v36, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v34, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v72[11], v34, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v32, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v72[12], v32, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v30, "enableStackShadow");
  _agcFieldString<unsigned int>(&v72[13], v30, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v72[14], v28, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v26, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v72[15], v26, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v24, "addDefaultPointSize");
  _agcFieldString<unsigned int>(&v72[16], v24, (*(v3 + 4) >> 6) & 1);
  std::string::basic_string[abi:nn200100]<0>(v22, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v72[17], v22, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "noObjectShader");
  _agcFieldString<unsigned int>(&v72[18], v20, (*(v3 + 4) >> 8) & 1);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v58;
  }

  _agcIndentedLine(&__p, &v70, 0);
  std::string::basic_string[abi:nn200100]<0>(v65, "{");
  _agcIndentedLine(&v67, v65, 0);
  if ((v69 & 0x80u) == 0)
  {
    v7 = &v67;
  }

  else
  {
    v7 = v67;
  }

  if ((v69 & 0x80u) == 0)
  {
    v8 = v69;
  }

  else
  {
    v8 = v68;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 19; ++i)
  {
    v12 = &v72[i];
    if (SHIBYTE(v72[i].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12->__r_.__value_.__l.__data_, v12->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v64 = __p;
    }

    _agcIndentedLine(&v67, &v64, 1);
    if ((v69 & 0x80u) == 0)
    {
      v14 = &v67;
    }

    else
    {
      v14 = v67;
    }

    if ((v69 & 0x80u) == 0)
    {
      v15 = v69;
    }

    else
    {
      v15 = v68;
    }

    std::string::append(&v59, v14, v15);
    if (v69 < 0)
    {
      operator delete(v67);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v67, "}");
  _agcIndentedLine(&__p, &v67, 0);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v59;
  }

  else
  {
    v16 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v19 = 456;
  do
  {
    if (SHIBYTE(v72[v19 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[v19 / 8 + 1]);
    }

    v19 -= 24;
  }

  while (v19);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(AGCLLVMUserMeshShaderSW *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(v1);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW((this + *(*this - 24)));
  v2 = (v1 + 6912);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(AGCLLVMUserMeshShaderSW *this)
{
  *this = &unk_2825599C0;
  *(this + 864) = &unk_282559D28;
  *(this + 1077) = &unk_282559E38;
  v2 = *(this + 863);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6888));
  }

  v11 = (this + 5488);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v11);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4944);
  v7 = *(this + 615);
  if (v7)
  {
    *(this + 616) = v7;
    operator delete(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4792, v4, v5, v6);
  v10 = *(this + 596);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_282559E48, v8, v9);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));
}

void AGCLLVMUserMeshShaderSW::replacePayloadBufferAccesses(AGCLLVMUserMeshShaderSW *this, llvm::PointerType ***a2)
{
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "agc.gpe.get_payload_id", 22, *(this + *(*this - 24) + 1904));
  v5 = (this + *(*this - 24));
  v8 = 257;
  v6 = llvm::IRBuilderBase::CreateCall(v5 + 214, *(inserted + 24), inserted, 0, 0, v7);
  AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(this, a2, v6);
}

uint64_t AGCLLVMUserMeshShaderSW::buildNumGroups(AGCLLVMUserMeshShaderSW *this, llvm::Type *a2, uint64_t a3)
{
  v6 = (*(*this + 512))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v16 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v15);
  v10 = llvm::ConstantInt::get();
  v14[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v14);
  v12 = this + *(*this - 24);
  v16 = 257;
  return llvm::IRBuilderBase::CreateUDiv((v12 + 1712), Sub, v7, v15);
}

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalSize(llvm::Type ***this, llvm::Type *a2, unsigned int a3)
{
  if (!this[562])
  {
    v5 = llvm::PointerType::get();
    v6 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    v37[0] = "agc.indirect_wg_size_buffer_pointer.";
    v38 = v6;
    v39 = 2051;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v37, v7, 0xCu, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 560), GlobalBufferBinding);
  }

  v9 = *(*this - 3) + this;
  v10 = this[562];
  v39 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, v37);
  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v39 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v37);
  v16 = *(*this - 3) + this;
  v39 = 257;
  v17 = AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v37);
  v36 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 38, v17, a2, v35);
  if (!this[565])
  {
    v19 = llvm::PointerType::get();
    v20 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v37[0] = "agc.indirect_wg_count_buffer_pointer.";
    v38 = v20;
    v39 = 2051;
    v21 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v22 = AGCLLVMUserObject::createGlobalBufferBinding(this, v19, v37, v21, 0xCu, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 563), v22);
  }

  v23 = *(*this - 3) + this;
  v24 = this[565];
  v39 = 257;
  v25 = AGCLLVMBuilder::CreateLoad((v23 + 1704), v24, v37);
  v26 = *(*this - 3) + this;
  v27 = *(v26 + 238);
  v28 = llvm::ConstantInt::get();
  v39 = 257;
  v29 = llvm::IRBuilderBase::CreateGEP((v26 + 1712), v27, v25, v28, v37);
  v30 = *(*this - 3) + this;
  v39 = 257;
  v31 = AGCLLVMBuilder::CreateLoad((v30 + 1704), v29, v37);
  v36 = 257;
  v32 = llvm::IRBuilderBase::CreateCast((v30 + 1712), 38, v31, a2, v35);
  v33 = *(*this - 3) + this;
  v39 = 257;
  return llvm::IRBuilderBase::CreateMul((v33 + 1712), Cast, v32, v37);
}

void AGCLLVMUserMeshShaderSW::addGenerateAuxiliaryShadersPass(AGCLLVMUserMeshShaderSW *this)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  *&v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<MeshShaderSWAuxiliaryShadersPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_12[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<MeshShaderSWAuxiliaryShadersPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_28255AC30;
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_28255AC30;
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x67)
  {
    v1 = v0;
  }

  else
  {
    v1 = 103;
  }

  v2 = &aStringrefLlvmG_9[v1];
  v3 = 103 - v1;
  if ((103 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 103 - v1;
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

uint64_t AGCLLVMUserMeshShaderSW::markInvariantOutputs(AGCLLVMUserMeshShaderSW *this, const char *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_POS_INVARIANCE", a2))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    v5 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_POS_INVARIANCE", v3)) != 0 && *Value != 48 && atoi(Value) != 0;
    *(this + 4744) = v5;
  }

  if (*(this + 4744) == 1 && *(this + 32) == 1)
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v7 = *this;
      v8 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v22 = 0;
      v25[0] = 0;
      v25[1] = 0;
      v23 = 0;
      v24 = v25;
      v25[2] = v8;
      v26 = 0;
      v9 = *(Function + 8);
      if (v9)
      {
        do
        {
          MarkInvariants::addSeed(&__p, *(*(v9 + 24) - 32 * (*(*(v9 + 24) + 20) & 0x7FFFFFF) + 32), 0);
          v9 = *(v9 + 8);
        }

        while (v9);
        v7 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v7 - 24) + 1704)) & 1) == 0)
      {
        v11 = *(this + *(*this - 24) + 2136);
        v12 = v11 + 24;
        for (i = *(v11 + 32); i != v12; i = *(i + 8))
        {
          v14 = i - 56;
          if (!i)
          {
            v14 = 0;
          }

          v15 = v14 + 72;
          v16 = *(v14 + 80);
          if (v16 == v14 + 72)
          {
            v18 = 0;
          }

          else
          {
            do
            {
              v17 = v16 - 24;
              if (!v16)
              {
                v17 = 0;
              }

              v18 = *(v17 + 48);
              if (v18 != v17 + 40)
              {
                break;
              }

              v16 = *(v16 + 8);
            }

            while (v16 != v15);
          }

          while (v16 != v15)
          {
            if (v18)
            {
              v19 = (v18 - 24);
            }

            else
            {
              v19 = 0;
            }

            if (llvm::FPMathOperator::classof(v19))
            {
              llvm::Instruction::setFast(v19);
            }

            v18 = *(v18 + 8);
            v20 = v16 - 24;
            if (!v16)
            {
              v20 = 0;
            }

            while (v18 == v20 + 40)
            {
              v16 = *(v16 + 8);
              if (v16 == v15)
              {
                break;
              }

              v20 = v16 - 24;
              if (!v16)
              {
                v20 = 0;
              }

              v18 = *(v20 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v25[0]);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

void AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(AGCLLVMUserMeshShaderSW *this)
{
  v150 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v142, *v2);
  v84 = this;
  v149 = this;
  v142 = &unk_28255AC18;
  v148 = v2;
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(void)::workitem_functions, "air.set_position_mesh");
    dword_27C8D8D98 = 0;
    byte_27C8D8D9C = 0;
    dword_27C8D8DA0 = 1;
    qword_27C8D8DA8 = AGCLLVMUserMeshShaderSW::buildSetPosition;
    unk_27C8D8DB0 = 0;
    dword_27C8D8DB8 = 7;
    word_27C8D8DBC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8DC0, "air.set_point_size_mesh");
    dword_27C8D8DD8 = 0;
    byte_27C8D8DDC = 0;
    dword_27C8D8DE0 = 1;
    qword_27C8D8DE8 = AGCLLVMUserMeshShaderSW::buildSetPointSize;
    unk_27C8D8DF0 = 0;
    dword_27C8D8DF8 = 7;
    word_27C8D8DFC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8E00, "air.set_clip_distance_mesh");
    dword_27C8D8E18 = 0;
    byte_27C8D8E1C = 0;
    dword_27C8D8E20 = 1;
    qword_27C8D8E28 = AGCLLVMUserMeshShaderSW::buildSetClipDistance;
    unk_27C8D8E30 = 0;
    dword_27C8D8E38 = 9;
    word_27C8D8E3C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8E40, "air.set_render_target_array_index_mesh");
    dword_27C8D8E58 = 1;
    byte_27C8D8E5C = 0;
    dword_27C8D8E60 = 1;
    qword_27C8D8E68 = AGCLLVMUserMeshShaderSW::buildSetLayerId;
    unk_27C8D8E70 = 0;
    dword_27C8D8E78 = 7;
    word_27C8D8E7C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8E80, "air.set_viewport_array_index_mesh");
    dword_27C8D8E98 = 1;
    byte_27C8D8E9C = 0;
    dword_27C8D8EA0 = 1;
    qword_27C8D8EA8 = AGCLLVMUserMeshShaderSW::buildSetViewportId;
    unk_27C8D8EB0 = 0;
    dword_27C8D8EB8 = 7;
    word_27C8D8EBC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8EC0, "air.set_primitive_id_mesh");
    dword_27C8D8ED8 = 0;
    byte_27C8D8EDC = 0;
    dword_27C8D8EE0 = 1;
    qword_27C8D8EE8 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveId;
    unk_27C8D8EF0 = 0;
    dword_27C8D8EF8 = 7;
    word_27C8D8EFC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8F00, "air.set_primitive_culled_mesh");
    dword_27C8D8F18 = 0;
    byte_27C8D8F1C = 0;
    dword_27C8D8F20 = 1;
    qword_27C8D8F28 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveCulled;
    unk_27C8D8F30 = 0;
    dword_27C8D8F38 = 7;
    word_27C8D8F3C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8F40, "air.set_index_mesh");
    dword_27C8D8F58 = 0;
    byte_27C8D8F5C = 0;
    dword_27C8D8F60 = 1;
    qword_27C8D8F68 = AGCLLVMUserMeshShaderSW::buildSetIndex;
    unk_27C8D8F70 = 0;
    dword_27C8D8F78 = 7;
    word_27C8D8F7C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8F80, "air.set_indices_mesh.v2i8");
    dword_27C8D8F98 = 0;
    byte_27C8D8F9C = 0;
    dword_27C8D8FA0 = 1;
    qword_27C8D8FA8 = AGCLLVMUserMeshShaderSW::buildSetIndices;
    qword_27C8D8FB0 = 0;
    dword_27C8D8FB8 = 7;
    word_27C8D8FBC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D8FC0, "air.set_indices_mesh.v4i8");
    dword_27C8D8FD8 = 0;
    byte_27C8D8FDC = 0;
    dword_27C8D8FE0 = 1;
    qword_27C8D8FE8 = AGCLLVMUserMeshShaderSW::buildSetIndices;
    qword_27C8D8FF0 = 0;
    dword_27C8D8FF8 = 7;
    word_27C8D8FFC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9000, "air.set_vertex_data_mesh");
    dword_27C8D9018 = 2;
    byte_27C8D901C = 0;
    dword_27C8D9020 = 1;
    qword_27C8D9028 = AGCLLVMUserMeshShaderSW::buildSetVertexData;
    qword_27C8D9030 = 0;
    dword_27C8D9038 = 9;
    word_27C8D903C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9040, "air.set_primitive_data_mesh");
    dword_27C8D9058 = 2;
    byte_27C8D905C = 0;
    dword_27C8D9060 = 1;
    qword_27C8D9068 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveData;
    qword_27C8D9070 = 0;
    dword_27C8D9078 = 9;
    word_27C8D907C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9080, "air.set_primitive_count_mesh");
    dword_27C8D9098 = 0;
    byte_27C8D909C = 0;
    dword_27C8D90A0 = 1;
    qword_27C8D90A8 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveCount;
    qword_27C8D90B0 = 0;
    dword_27C8D90B8 = 5;
    word_27C8D90BC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D90C0, "agc.gpe.get_payload_id");
    dword_27C8D90D8 = 0;
    byte_27C8D90DC = 0;
    dword_27C8D90E0 = 1;
    qword_27C8D90E8 = AGCLLVMUserMeshShaderSW::getGlobalLinearGroupID;
    qword_27C8D90F0 = 0;
    dword_27C8D90F8 = 1;
    word_27C8D90FC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9100, "air.object_threadgroup_position_in_grid");
    dword_27C8D9118 = 0;
    byte_27C8D911C = 0;
    dword_27C8D9120 = 1;
    qword_27C8D9128 = AGCLLVMUserMeshShaderSW::buildOSTGGridPosition;
    qword_27C8D9130 = 0;
    dword_27C8D9138 = 1;
    word_27C8D913C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9140, "air.get_global_size");
    dword_27C8D9158 = 1;
    byte_27C8D915C = 1;
    dword_27C8D9160 = 1;
    qword_27C8D9168 = AGCLLVMUserMeshShaderSW::buildGlobalSizeUbergrid;
    qword_27C8D9170 = 0;
    dword_27C8D9178 = 4;
    word_27C8D917C = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9180, "air.get_global_id");
    dword_27C8D9198 = 1;
    byte_27C8D919C = 1;
    dword_27C8D91A0 = 1;
    qword_27C8D91A8 = AGCLLVMUserMeshShaderSW::buildGlobalIDUbergrid;
    qword_27C8D91B0 = 0;
    dword_27C8D91B8 = 4;
    word_27C8D91BC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D91C0, "air.get_num_groups");
    dword_27C8D91D8 = 1;
    byte_27C8D91DC = 1;
    dword_27C8D91E0 = 1;
    qword_27C8D91E8 = AGCLLVMUserMeshShaderSW::buildNumGroupsUbergrid;
    qword_27C8D91F0 = 0;
    dword_27C8D91F8 = 4;
    word_27C8D91FC = 0;
    std::string::basic_string[abi:nn200100]<0>(qword_27C8D9200, "air.get_group_id");
    dword_27C8D9218 = 1;
    byte_27C8D921C = 1;
    dword_27C8D9220 = 1;
    qword_27C8D9228 = AGCLLVMUserMeshShaderSW::buildGroupIDSW;
    qword_27C8D9230 = 0;
    dword_27C8D9238 = 4;
    word_27C8D923C = 0;
    __cxa_atexit(__cxx_global_array_dtor_491, 0, &dword_20E4E1000);
  }

  v4 = 0;
  while (1)
  {
    v93 = &AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(void)::workitem_functions + 64 * v4;
    if (v93[28] == 1 && (*(*(v84 + 592) + 17) & 1) != 0)
    {
      goto LABEL_144;
    }

    v85 = v4;
    std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
    v139 = &v141;
    v140 = 0x100000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&v139, &__p, &v134);
    if ((v133[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, ".i8");
    std::string::basic_string[abi:nn200100]<0>(&v134, ".i16");
    std::string::basic_string[abi:nn200100]<0>(v135, ".i32");
    v137[0] = &v138;
    v137[1] = 0x300000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(v137, &__p, v136);
    for (i = 0; i != -9; i -= 3)
    {
      if (SHIBYTE(v135[i + 2]) < 0)
      {
        operator delete(v135[i]);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v108, ".i1");
    std::string::basic_string[abi:nn200100]<0>(&v108[3], ".i8");
    std::string::basic_string[abi:nn200100]<0>(v110, ".i16");
    std::string::basic_string[abi:nn200100]<0>(v111, ".i32");
    std::string::basic_string[abi:nn200100]<0>(v112, ".f16");
    std::string::basic_string[abi:nn200100]<0>(v113, ".f32");
    std::string::basic_string[abi:nn200100]<0>(v114, ".v2i1");
    std::string::basic_string[abi:nn200100]<0>(v115, ".v2i8");
    std::string::basic_string[abi:nn200100]<0>(v116, ".v2i16");
    std::string::basic_string[abi:nn200100]<0>(v117, ".v2i32");
    std::string::basic_string[abi:nn200100]<0>(v118, ".v2f16");
    std::string::basic_string[abi:nn200100]<0>(v119, ".v2f32");
    std::string::basic_string[abi:nn200100]<0>(v120, ".v3i1");
    std::string::basic_string[abi:nn200100]<0>(v121, ".v3i8");
    std::string::basic_string[abi:nn200100]<0>(v122, ".v3i16");
    std::string::basic_string[abi:nn200100]<0>(v123, ".v3i32");
    std::string::basic_string[abi:nn200100]<0>(v124, ".v3f16");
    std::string::basic_string[abi:nn200100]<0>(v125, ".v3f32");
    std::string::basic_string[abi:nn200100]<0>(v126, ".v4i1");
    std::string::basic_string[abi:nn200100]<0>(v127, ".v4i8");
    std::string::basic_string[abi:nn200100]<0>(v128, ".v4i16");
    std::string::basic_string[abi:nn200100]<0>(v129, ".v4i32");
    std::string::basic_string[abi:nn200100]<0>(v130, ".v4f16");
    std::string::basic_string[abi:nn200100]<0>(v131, ".v4f32");
    *&__p = v133;
    *(&__p + 1) = 0x1800000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&__p, v108, &__p);
    v6 = 72;
    do
    {
      if (SHIBYTE(v108[v6 - 1]) < 0)
      {
        operator delete(*(&v105 + v6 * 8 + 8));
      }

      v6 -= 3;
    }

    while (v6 * 8);
    v7 = *(v93 + 6);
    if (v7 == 1)
    {
      p_p = v137;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_20;
      }

      p_p = &__p;
    }

    llvm::SmallVectorImpl<std::string>::operator=(&v139, p_p);
LABEL_20:
    if (v140)
    {
      v9 = v139;
      v87 = &v139[3 * v140];
      while (1)
      {
        std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v94, v93, v9);
        Function = llvm::Module::getFunction();
        if (Function)
        {
          break;
        }

LABEL_140:
        if (v95 < 0)
        {
          operator delete(v94);
        }

        v9 += 3;
        if (v9 == v87)
        {
          goto LABEL_143;
        }
      }

      v11 = *(v93 + 14);
      v88 = v9;
      v89 = Function;
      if (v11 == 12)
      {
        for (j = *(Function + 8); j; v144 = 0uLL)
        {
          v15 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v143, v15);
          v16 = v149 + *(*v149 - 24);
          v105 = v144;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v106, v143);
          v107 = v145;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v105, (v16 + 1712));
          if (v106)
          {
            llvm::MetadataTracking::untrack();
          }

          v17 = *(v93 + 5);
          v18 = *(v93 + 6);
          v19 = (v149 + (v18 >> 1));
          if (v18)
          {
            v17 = *(*v19 + v17);
          }

          v17(v19, v15);
        }

        goto LABEL_139;
      }

      if (v11 == 11)
      {
        v12 = *(v93 + 5);
        if (v12)
        {
          v13 = strlen(*(v93 + 5));
          v108[0] = &v108[3];
          *&v108[1] = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v108, v12, &v12[v13]);
        }

        else
        {
          v108[2] = 64;
          v108[0] = &v108[3];
          v108[1] = 0;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v108, ".", "");
        if (v108[2] < v108[1])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (v108[0] != &v108[3])
        {
          free(v108[0]);
        }

        goto LABEL_139;
      }

      v20 = **(*(Function + 24) + 16);
      v21 = ((*(v20 + 8) & 0xFE) == 18) & v93[61];
      if (v21 == 1)
      {
        v22 = *(v20 + 32);
      }

      else
      {
        v22 = 1;
      }

      v91 = v22;
      v86 = v145;
      v23 = *(Function + 8);
      if (!v23)
      {
LABEL_133:
        v145 = v86;
LABEL_139:
        llvm::Function::eraseFromParent(v89);
        v9 = v88;
        goto LABEL_140;
      }

      while (2)
      {
        v24 = *(v23 + 24);
        v90 = *(v23 + 8);
        v25 = *(v93 + 8);
        if (v25 == 1)
        {
          v26 = 0;
LABEL_42:
          v145 = v26;
        }

        else if (v25 == 2)
        {
          v26 = 121;
          goto LABEL_42;
        }

        llvm::IRBuilderBase::SetInsertPoint(v143, v24);
        v27 = llvm::UndefValue::get();
        if (!v91)
        {
LABEL_130:
          if (*v24 != v146)
          {
            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v24);
          v23 = v90;
          if (!v90)
          {
            goto LABEL_133;
          }

          continue;
        }

        break;
      }

      v28 = 0;
      while (2)
      {
        v92 = v27;
        v110[0] = 0;
        v109 = 0u;
        memset(v108, 0, sizeof(v108));
        v29 = llvm::CallBase::arg_end(v24) - v24 + 32 * (*(v24 + 5) & 0x7FFFFFF);
        if ((v29 & 0x1FFFFFFFE0) != 0)
        {
          v30 = (v29 >> 5);
          v31 = v108;
          v32 = v24;
          do
          {
            v33 = (v32 - 32 * (*(v24 + 5) & 0x7FFFFFF));
            v34 = *v33;
            *v31 = *v33;
            if (v21 && (*(*v34 + 8) & 0xFE) == 0x12)
            {
              v104 = 257;
              v35 = llvm::ConstantInt::get();
              *v31 = llvm::IRBuilderBase::CreateExtractElement(v143, v34, v35, &PrimitiveSizeInBits);
            }

            ++v31;
            v32 = (v32 + 32);
            --v30;
          }

          while (v30);
        }

        if (v93[60])
        {
          v36 = *v108[0];
          if ((*(*v108[0] + 8) & 0xFE) == 0x12)
          {
            v36 = **(v36 + 2);
          }

          PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v36);
          v103 = v37;
          if (llvm::TypeSize::operator unsigned long long() == 32)
          {
            v38 = 0;
          }

          else
          {
            v39 = v147;
            if ((*(*v108[0] + 8) & 0xFE) == 0x12)
            {
              v39 = llvm::FixedVectorType::get();
            }

            if ((v29 & 0x1FFFFFFFE0) != 0)
            {
              v40 = (v29 >> 5);
              v41 = v108;
              do
              {
                v42 = *v41;
                v104 = 257;
                *v41++ = llvm::IRBuilderBase::CreateFPExt(v143, v42, v39, &PrimitiveSizeInBits);
                --v40;
              }

              while (v40);
            }

            v38 = 1;
          }
        }

        else
        {
          v38 = 0;
        }

        if (llvm::FPMathOperator::classof(v24))
        {
          FastMathFlags = llvm::Instruction::getFastMathFlags(v24);
        }

        else
        {
          FastMathFlags = 0;
        }

        v44 = v149 + *(*v149 - 24);
        v99 = v144;
        llvm::IRBuilderBase::getCurrentDebugLocation(&v100, v143);
        v101 = v145;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v99, (v44 + 1712));
        if (v100)
        {
          llvm::MetadataTracking::untrack();
        }

        FPTrunc = 0;
        v46 = *(v93 + 14);
        if (v46 <= 5)
        {
          if (v46 > 2)
          {
            if (v46 != 3)
            {
              if (v46 == 4)
              {
                v75 = (v108[0] + 24);
                if (*(v108[0] + 8) >= 0x41u)
                {
                  v75 = *v75;
                }

                v50 = *v75;
                v47 = *(v93 + 5);
                v76 = *(v93 + 6);
                v49 = *v24;
                v51 = (v149 + (v76 >> 1));
                if (v76)
                {
                  v47 = *(*v51 + v47);
                }
              }

              else
              {
                v47 = *(v93 + 5);
                v48 = *(v93 + 6);
                v49 = v108[0];
                v50 = v108[1];
                v51 = (v149 + (v48 >> 1));
                if (v48)
                {
                  v47 = *(*v51 + v47);
                }
              }

              v71 = v47(v51, v49, v50);
              goto LABEL_118;
            }

            v56 = *(v93 + 5);
            v70 = *(v93 + 6);
            v58 = v108[0];
            v59 = (v149 + (v70 >> 1));
            if (v70)
            {
LABEL_92:
              v56 = *(*v59 + v56);
            }

LABEL_93:
            v71 = v56(v59, v58);
            goto LABEL_118;
          }

          if (v46 == 1)
          {
            v66 = *(v93 + 5);
            v67 = *(v93 + 6);
            v68 = (v149 + (v67 >> 1));
            if (v67)
            {
              v66 = *(*v68 + v66);
            }

            v71 = v66(v68);
LABEL_118:
            FPTrunc = v71;
          }

          else if (v46 == 2)
          {
            v56 = *(v93 + 5);
            v57 = *(v93 + 6);
            v58 = *v24;
            v59 = (v149 + (v57 >> 1));
            if (v57)
            {
              goto LABEL_92;
            }

            goto LABEL_93;
          }

LABEL_119:
          v79 = v149 + *(*v149 - 24);
          v96 = *(v79 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v97, (v79 + 1712));
          v98 = *(v79 + 452);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v96, v143);
          if (v97)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v38)
          {
            v80 = *v24;
            if (v21 && (*(v80 + 2) & 0xFE) == 0x12)
            {
              v80 = **(v80 + 2);
            }

            v104 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v143, FPTrunc, v80, &PrimitiveSizeInBits);
            if (!v21)
            {
LABEL_129:
              ++v28;
              v27 = FPTrunc;
              if (v28 == v91)
              {
                goto LABEL_130;
              }

              continue;
            }
          }

          else if (!v21)
          {
            goto LABEL_129;
          }

          v104 = 257;
          v81 = llvm::ConstantInt::get();
          FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v143, v92, FPTrunc, v81, &PrimitiveSizeInBits);
          goto LABEL_129;
        }

        break;
      }

      if (v46 <= 7)
      {
        if (v46 == 6)
        {
          v60 = *(v93 + 5);
          v69 = *(v93 + 6);
          v62 = v108[0];
          v63 = v108[1];
          v65 = (v149 + (v69 >> 1));
          if (v69)
          {
            v60 = *(*v65 + v60);
          }

          v64 = FastMathFlags;
        }

        else
        {
          v60 = *(v93 + 5);
          v61 = *(v93 + 6);
          v62 = v108[0];
          v63 = v108[1];
          v64 = v108[2];
          v65 = (v149 + (v61 >> 1));
          if (v61)
          {
            v71 = (*(*v65 + v60))(v65, v108[0], v108[1], v108[2]);
            goto LABEL_118;
          }
        }
      }

      else
      {
        if (v46 == 8)
        {
          v52 = *(v93 + 5);
          v72 = *(v93 + 6);
          v54 = v108[0];
          v73 = v108[1];
          v74 = v108[2];
          v55 = (v149 + (v72 >> 1));
          if (v72)
          {
            v52 = *(*v55 + v52);
          }

          v78 = FastMathFlags;
          goto LABEL_113;
        }

        if (v46 != 9)
        {
          if (v46 != 10)
          {
            goto LABEL_119;
          }

          v52 = *(v93 + 5);
          v53 = *(v93 + 6);
          v54 = *v24;
          v55 = (v149 + (v53 >> 1));
          if (v53)
          {
            v52 = *(*v55 + v52);
          }

          v73 = v108;
          v74 = &unk_20E75F419;
          v78 = 0;
LABEL_113:
          v71 = v52(v55, v54, v73, v74, v78);
          goto LABEL_118;
        }

        v60 = *(v93 + 5);
        v77 = *(v93 + 6);
        v65 = (v149 + (v77 >> 1));
        if (v77)
        {
          v60 = *(*v65 + v60);
        }

        v62 = v108;
        v63 = &unk_20E75F419;
        v64 = 0;
      }

      v71 = v60(v65, v62, v63, v64);
      goto LABEL_118;
    }

LABEL_143:
    llvm::SmallVector<std::string,1u>::~SmallVector(&__p);
    llvm::SmallVector<std::string,1u>::~SmallVector(v137);
    llvm::SmallVector<std::string,1u>::~SmallVector(&v139);
    v4 = v85;
LABEL_144:
    if (++v4 == 19)
    {
      v82 = v84;
      v83 = *(v84 + 596);
      if (v83)
      {
        AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(v84, v83, v3);
        v82 = v84;
      }

      AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(v82, 7, 1);
    }
  }
}

uint64_t AGCLLVMUserMeshShaderSW::buildGroupIDSW(int8x8_t *this, llvm::Type *a2, int a3)
{
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v6 = this + *(*this - 24);
  v9 = a3 + 1;
  v8[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, &v9, 1, v8);
}

uint64_t AGCLLVMUserMeshShaderSW::getGridProperties(int8x8_t *this)
{
  v65[0] = *MEMORY[0x277D85DE8];
  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
  v3 = EmulationStateCacheForCurrentFunction[35];
  if (!v3)
  {
    v4 = EmulationStateCacheForCurrentFunction;
    v5 = this + *(*this - 24);
    v45 = *(v5 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (v5 + 1712));
    v47 = *(v5 + 452);
    v6 = this + *(*this - 24);
    v7 = *(*(*(v6 + 220) + 56) + 80);
    if (v7)
    {
      v8 = (v7 - 24);
    }

    else
    {
      v8 = 0;
    }

    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    if (FirstInsertionPt)
    {
      v10 = (FirstInsertionPt - 24);
    }

    else
    {
      v10 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((v6 + 1712), v10);
    if (!llvm::StructType::getTypeByName())
    {
      v51 = *(&this[238] + *(*this - 24));
      v52 = v51;
      v53[0] = v51;
      v53[1] = v51;
      v54 = v51;
      v55 = v51;
      v56 = v51;
      v57 = v51;
      v58 = v51;
      llvm::StructType::create();
    }

    v11 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 0);
    v12 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 1);
    v13 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 2);
    v48 = v50;
    v49 = 0x600000000;
    if (*(*&this[592] + 17))
    {
      __src = *(&this[238] + *(*this - 24));
      v60 = __src;
      v61 = __src;
      v62 = __src;
      v63 = __src;
      v64 = __src;
      v51 = v53;
      v52 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v51, &__src, v65);
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v19 = v33;
      if (v51 != v53)
      {
        free(v51);
      }

      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v11);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v12);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v13);
      v34 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v34);
      v35 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 1);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v35);
      v13 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 2);
    }

    else
    {
      v40 = v12;
      v41 = v11;
      v14 = llvm::PointerType::get();
      v15 = llvm::PointerType::get();
      v16 = llvm::PointerType::get();
      v17 = *(&this[238] + *(*this - 24));
      __src = v14;
      v60 = v15;
      v61 = v16;
      v62 = v17;
      v63 = v17;
      v64 = v17;
      v51 = v53;
      v52 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v51, &__src, v65);
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v19 = v18;
      if (v51 != v53)
      {
        free(v51);
      }

      EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 1, 1);
      v21 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 1);
      llvm::IRBuilderBase::SetInsertPoint(&this[214] + *(*this - 24), *(v21 + 40), *(v21 + 32));
      v22 = this + *(*this - 24);
      v23 = this[588];
      LOWORD(v54) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v22 + 1704), v23, &v51);
      v25 = llvm::PointerType::get();
      LOWORD(v63) = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v22 + 1712), 49, Load, v25, &__src);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, Cast);
      v27 = this + *(*this - 24);
      v28 = llvm::PointerType::get();
      LOWORD(v54) = 257;
      v29 = llvm::IRBuilderBase::CreateCast((v27 + 1712), 49, EmulationStateBuffer, v28, &v51);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v29);
      v30 = this + *(*this - 24);
      v31 = llvm::PointerType::get();
      LOWORD(v54) = 257;
      v32 = llvm::IRBuilderBase::CreateCast((v30 + 1712), 49, v21, v31, &v51);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v32);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v41);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v40);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v48, v13);
    v36 = (this + *(*this - 24));
    v51 = "agc.gpe.grid_properties";
    LOWORD(v54) = 259;
    v37 = llvm::IRBuilderBase::CreateCall(v36 + 214, *(v19 + 24), v19, v48, v49, &v51);
    llvm::ValueHandleBase::operator=((v4 + 33), v37);
    v38 = this + *(*this - 24);
    v42 = v45;
    v43 = v46;
    if (v46)
    {
      llvm::MetadataTracking::track();
    }

    v44 = v47;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v42, (v38 + 1712));
    if (v43)
    {
      llvm::MetadataTracking::untrack();
    }

    v3 = v4[35];
    if (v48 != v50)
    {
      free(v48);
    }

    if (v46)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v3;
}

void *AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(int8x8_t *this)
{
  v2 = *(*(&this[220] + *(*this - 24)) + 56);
  v3 = this + 581;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(v2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = this[582];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*v3 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v28[0] = 4;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 4;
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = 4;
    v28[7] = 0;
    v28[8] = 0;
    v28[9] = 4;
    v28[10] = 0;
    v28[11] = 0;
    v28[12] = 4;
    v28[13] = 0;
    v28[14] = 0;
    v28[15] = 4;
    v28[16] = 0;
    v28[17] = 0;
    v28[18] = 4;
    v28[19] = 0;
    v28[20] = 0;
    v28[21] = 4;
    v28[22] = 0;
    v28[23] = 0;
    v28[24] = 4;
    v28[25] = 0;
    v28[26] = 0;
    v28[27] = 4;
    v28[28] = 0;
    v28[29] = 0;
    v28[30] = 4;
    v28[31] = 0;
    v28[32] = 0;
    v28[33] = 4;
    v28[34] = 0;
    v28[35] = 0;
    v28[37] = 0;
    v28[38] = 0;
    v28[36] = 4;
    v29 = v2;
    AGCLLVMUserObjectShaderBase::FunctionStateCache::FunctionStateCache(&v30, v28);
    v13 = 0x9DDFEA08EB382D69 * ((8 * (v29 & 0x1FFFFFFF) + 8) ^ HIDWORD(v29));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v29) ^ (v13 >> 47) ^ v13);
    v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
    v16 = this[582];
    if (!*&v16)
    {
      goto LABEL_34;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = v15 & (*&v16 - 1);
    }

    v19 = *(*v3 + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v15)
      {
        if (v20[2] == v29)
        {
          AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(&v30);
          AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(v28);
          v7 = this[582];
          goto LABEL_35;
        }
      }

      else
      {
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v16)
          {
            v21 %= *&v16;
          }
        }

        else
        {
          v21 &= *&v16 - 1;
        }

        if (v21 != v18)
        {
          goto LABEL_34;
        }
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != v2)
  {
    goto LABEL_16;
  }

LABEL_35:
  if (!*&v7)
  {
    goto LABEL_52;
  }

  v22 = vcnt_s8(v7);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v6;
    if (v6 >= *&v7)
    {
      v23 = v6 % *&v7;
    }
  }

  else
  {
    v23 = v6 & (*&v7 - 1);
  }

  v24 = *(*v3 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_52:
    operator new();
  }

  while (2)
  {
    v26 = v25[1];
    if (v26 != v6)
    {
      if (v22.u32[0] > 1uLL)
      {
        if (v26 >= *&v7)
        {
          v26 %= *&v7;
        }
      }

      else
      {
        v26 &= *&v7 - 1;
      }

      if (v26 != v23)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (v25[2] != v2)
    {
LABEL_51:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_52;
      }

      continue;
    }

    return v25 + 3;
  }
}

uint64_t AGCLLVMUserObjectShaderBase::FunctionStateCache::FunctionStateCache(uint64_t a1, void *a2)
{
  v4 = llvm::ValueHandleBase::ValueHandleBase(a1, 2u, a2);
  llvm::ValueHandleBase::ValueHandleBase((v4 + 24), 2u, a2 + 3);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 48), 2u, a2 + 6);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 72), 2u, a2 + 9);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 96), 2u, a2 + 12);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 120), 2u, a2 + 15);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 144), 2u, a2 + 18);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 168), 2u, a2 + 21);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 192), 2u, a2 + 24);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 216), 2u, a2 + 27);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 240), 2u, a2 + 30);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 264), 2u, a2 + 33);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 288), 2u, a2 + 36);
  return a1;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Function *,AGCLLVMUserObjectShaderBase::FunctionStateCache>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Function *,AGCLLVMUserObjectShaderBase::FunctionStateCache>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AGCLLVMUserMeshShaderSW::buildNumGroupsUbergrid(int8x8_t *this, llvm::Type *a2, int a3)
{
  v4 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v8 = a3 + 6;
  v7[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v4 + 1712), GridProperties, &v8, 1, v7);
}

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalIDUbergrid(int8x8_t *this, llvm::Type *a2, uint64_t a3)
{
  v6 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v14[0] = a3 + 1;
  v17 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, v14, 1, v16);
  v9 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v10 = AGCLLVMUserObjectShaderBase::buildLocalID(this, a2, a3);
  v11 = this + *(*this - 24);
  v17 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v11 + 1712), Value, v9, v16);
  v15 = 257;
  return llvm::IRBuilderBase::CreateAdd((v11 + 1712), Mul, v10, v14);
}

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalSizeUbergrid(AGCLLVMUserMeshShaderSW *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v5 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v6 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v14 = v3 + 6;
  v13 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, &v14, 1, v12);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((v6 + 1712), Value, v5, v10);
}

llvm::FixedVectorType **AGCLLVMUserMeshShaderSW::buildOSTGGridPosition(int8x8_t *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (*(*&this[592] + 17))
  {
    v22 = (this + *(*this - 24));
    v23 = llvm::ConstantInt::get();

    return AGCLLVMBuilder::splat(v22 + 213, 3, v23, v24);
  }

  else
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 2, 0);
    v7 = v6;
    v8 = this + *(*this - 24);
    v9 = llvm::ConstantInt::get();
    v10 = this + *(*this - 24);
    GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
    v30 = 5;
    v29 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v10 + 1712), GridProperties, &v30, 1, v28);
    v27 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v8 + 1712), v9, Value, v26);
    v25[16] = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v8 + 1712), v7, EmulationStateBuffer, Mul, v25);
    v15 = (this + *(*this - 24));
    v16 = llvm::PointerType::get();
    v29 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, GEP, v16, v28, v17);
    v19 = this + *(*this - 24);
    v20 = *(v19 + 249);
    v29 = 257;
    llvm::Type::isOpaquePointerTy(*PointerCast);
    return llvm::IRBuilderBase::CreateAlignedLoad(v19 + 214, v20, PointerCast, 0, v28);
  }
}

uint64_t AGCLLVMUserMeshShaderSW::getGlobalLinearGroupID(int8x8_t *this)
{
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v3 = this + *(*this - 24);
  v6 = 5;
  v5[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v3 + 1712), GridProperties, &v6, 1, v5);
}

llvm::Instruction *AGCLLVMUserMeshShaderSW::buildSetPrimitiveCount(int8x8_t *this, llvm::Value *a2, llvm::Value *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  LODWORD(__src[0]) = 0;
  v36 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v5 + 1712), GridProperties, __src, 1, v34);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v10 = v9;
  v30[0] = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 3, 0);
  v30[1] = Value;
  v11 = this + *(*this - 24);
  v12 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 5, 0);
  v13 = llvm::PointerType::get();
  v36 = 257;
  v30[2] = llvm::IRBuilderBase::CreateCast((v11 + 1712), 49, v12, v13, v34);
  v14 = this + *(*this - 24);
  v15 = llvm::ConstantInt::get();
  LOWORD(v32) = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v14 + 1712), Value, v15, __src);
  v29 = 257;
  v30[3] = llvm::IRBuilderBase::CreateGEP((v14 + 1712), v10, EmulationStateBuffer, Mul, v28);
  v30[4] = a3;
  v30[5] = llvm::ConstantInt::get();
  v17 = llvm::PointerType::get();
  v18 = *(&this[238] + *(*this - 24));
  v19 = llvm::PointerType::get();
  v20 = llvm::PointerType::get();
  v21 = this + *(*this - 24);
  v22 = *(v21 + 238);
  v23 = *(v21 + 236);
  __src[0] = v17;
  __src[1] = v18;
  __src[2] = v19;
  __src[3] = v20;
  v32 = v22;
  v33 = v23;
  v34[0] = v35;
  v34[1] = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v34, __src, v34);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v25 = v24;
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  v26 = (this + *(*this - 24));
  v36 = 257;
  return llvm::IRBuilderBase::CreateCall(v26 + 214, *(v25 + 24), v25, v30, 6, v34);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveData(int8x8_t *a1, void *a2, uint64_t a3, BOOL a4)
{
  v5 = a2[1];
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = *v6;
  v8 = a2[2];
  v9 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);

  return AGCLLVMUserMeshShaderSW::buildSetVaryingData(a1, 1, v7, v8, v9, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetVaryingData(int8x8_t *a1, llvm::Type *a2, unsigned int a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = ((a2 != 0) | (2 * a3)) + 7;
  if (a3 >= 0xFFFFFFF9)
  {
    v7 = ~a3;
  }

  v8 = a1[619].u32[0];
  if (v8)
  {
    v10 = a2;
    v11 = a1[618];
    v12 = v8 << 6;
    while (*(*&v11 + 16) != v7)
    {
      *&v11 += 64;
      v12 -= 64;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    *v59 = 0u;
    v60 = 0u;
    v14 = AGCLLVMBuilder::unboxVector((&a1[213] + *(*a1 - 24)), a5, v59);
    v15 = v14;
    v16 = *v59[0];
    v17 = *a1;
    v18 = (a1 + *(*a1 - 24));
    if (*v59[0] == *&v18[235] || v16 == *&v18[236] || v16 == *&v18[237])
    {
      v51 = v18[238];
      if (v14)
      {
        v19 = v14;
        v20 = v59;
        do
        {
          v21 = a1 + *(*a1 - 24);
          v22 = *v20;
          v23 = *(v21 + 238);
          v58 = 257;
          *v20++ = llvm::IRBuilderBase::CreateCast((v21 + 1712), 39, v22, v23, v57);
          --v19;
        }

        while (v19);
        v17 = *a1;
      }
    }

    else
    {
      v51 = *v59[0];
    }

    v24 = a1 + *(*&v17 - 24);
    GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(a1);
    v55[0] = 0;
    v58 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v24 + 1712), GridProperties, v55, 1, v57);
    BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(a1, Value, v10, *(*&v11 + 60), v51, a6);
    if (v10 == 1)
    {
      v28 = a1 + *(*a1 - 24);
      v29 = llvm::ConstantInt::get();
      v30 = a1 + *(*a1 - 24);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1, v31, v32, v33);
      v35 = llvm::ConstantInt::get();
      v58 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v30 + 1712), VertexAmpCount, v35, v57);
      v56 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v28 + 1712), v29, Mul, v55);
      v38 = a1 + *(*a1 - 24);
      v58 = 257;
      a4 = llvm::IRBuilderBase::CreateMul((v38 + 1712), a4, Add, v57);
    }

    v39 = v51;
    if (v15)
    {
      for (i = 0; i != v15; llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v59[i++], GEP, 0, 0))
      {
        v41 = a1 + *(*a1 - 24);
        if (*(*&v11 + 56) == 1)
        {
          v42 = llvm::ConstantInt::get();
          v58 = 257;
          v43 = llvm::IRBuilderBase::CreateMul((v41 + 1712), a4, v42, v57);
          v44 = llvm::ConstantInt::get();
          v56 = 257;
          v45 = v43;
          v39 = v51;
          v46 = llvm::IRBuilderBase::CreateAdd((v41 + 1712), v45, v44, v55);
          v54 = 257;
          v47 = (v41 + 1712);
          v48 = &v53;
        }

        else
        {
          v49 = llvm::ConstantInt::get();
          v58 = 257;
          v46 = llvm::IRBuilderBase::CreateAdd((v41 + 1712), a4, v49, v57);
          v56 = 257;
          v47 = (v41 + 1712);
          v48 = v55;
        }

        GEP = llvm::IRBuilderBase::CreateGEP(v47, v39, BasePointer, v46, v48);
      }
    }

    return llvm::UndefValue::get();
  }

  else
  {
LABEL_7:

    return llvm::UndefValue::get();
  }
}

llvm::Value *AGCLLVMUserMeshShaderSW::getBasePointer(int8x8_t *a1, llvm::Value *a2, unsigned int a3, unsigned int a4, llvm::PointerType *a5, llvm::Value *a6)
{
  v11 = *(&a1[236] + *(*a1 - 24));
  v12 = llvm::PointerType::get();
  v13 = llvm::PointerType::get();
  v14 = (a1 + *(*a1 - 24));
  if (a3)
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(a1, 6, 0);
    v36 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, EmulationStateBuffer, v12, v35, v16);
  }

  else
  {
    v18 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(a1, 5, 0);
    v38 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, v18, v12, v37, v19);
  }

  v20 = a1 + *(*a1 - 24);
  v21 = llvm::ConstantInt::get();
  v38 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v20 + 1712), a2, v21, v37);
  v36 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v20 + 1712), v11, PointerCast, Mul, v35);
  v24 = &a1[6 * a4 + 705];
  v25 = *v24;
  if ((*(v24 + 12) & 1) == 0)
  {
    a6 = llvm::ConstantInt::get();
  }

  v26 = llvm::ConstantInt::get();
  v27 = a1 + *(*a1 - 24);
  v38 = 257;
  v28 = llvm::IRBuilderBase::CreateMul((v27 + 1712), a6, v26, v37);
  v36 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v27 + 1712), v25, v28, v35);
  v30 = a1 + *(*a1 - 24);
  v38 = 257;
  v31 = llvm::IRBuilderBase::CreateGEP((v30 + 1712), v11, GEP, Add, v37);
  v32 = (a1 + *(*a1 - 24));
  v38 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v32 + 214, v31, v13, v37, v33);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetVertexData(int8x8_t *a1, void *a2, uint64_t a3, BOOL a4)
{
  v5 = a2[1];
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = *v6;
  v8 = a2[2];
  v9 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);

  return AGCLLVMUserMeshShaderSW::buildSetVaryingData(a1, 0, v7, v8, v9, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetIndices(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::PointerType **a4)
{
  v7 = *a4;
  v8 = llvm::PointerType::get();
  v9 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v29[0] = 0;
  v32 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v9 + 1712), GridProperties, v29, 1, v31);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v14 = v13;
  v15 = (this + *(*this - 24));
  v16 = llvm::ConstantInt::get();
  v32 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v15 + 214), Value, v16, v31);
  v30 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v15 + 214), v14, EmulationStateBuffer, Mul, v29);
  v28 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, GEP, v8, v27, v19);
  v21 = this + *(*this - 24);
  v22 = llvm::ConstantInt::get();
  v32 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((v21 + 1712), a3, v22, v31);
  v24 = this + *(*this - 24);
  v32 = 257;
  v25 = llvm::IRBuilderBase::CreateGEP((v24 + 1712), v7, PointerCast, UDiv, v31);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, v25, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetIndex(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v21[0] = 0;
  v24 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, v21, 1, v23);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v12 = v11;
  v13 = this + *(*this - 24);
  v14 = llvm::ConstantInt::get();
  v24 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v13 + 1712), Value, v14, v23);
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a3, Mul, v21);
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v12, EmulationStateBuffer, Add, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveCulled(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v25[0] = 0;
  v28 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, v25, 1, v27);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 23, 0, a3, *(&this[238] + *(*this - 24)));
  v11 = this + *(*this - 24);
  v12 = *(v11 + 236);
  v28 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 39, a4, v12, v27);
  v14 = this + *(*this - 24);
  v28 = 257;
  v15 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((v14 + 1712), Cast, v15, v27);
  v17 = this + *(*this - 24);
  v18 = *(v17 + 236);
  v19 = llvm::PointerType::get();
  v28 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v17 + 214, BuiltinPointer, v19, v27, v20);
  v22 = llvm::ConstantInt::get();
  v26 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v17 + 1712), v18, PointerCast, v22, v25);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), Shl, GEP, 0, 0);
  return llvm::UndefValue::get();
}

llvm::Instruction *AGCLLVMUserMeshShaderSW::getBuiltinPointer(int8x8_t *a1, llvm::Value *a2, uint64_t a3, BOOL a4, llvm::Value *a5, llvm::PointerType *a6)
{
  v8 = a3;
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1, a2, a3, a4);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(a1, a2, 0, v8, a6, VertexAmpId);
  v13 = a1 + *(*a1 - 24);
  v14 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a5, v14, v18);
  v16 = a1 + *(*a1 - 24);
  v19 = 257;
  return llvm::IRBuilderBase::CreateGEP((v16 + 1712), a6, BasePointer, Add, v18);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (this[608].i8[0] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, a2, a3, a4);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFF, a3, a4, VertexAmpId);
  }

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetViewportId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = *(v7 + 238);
  v35 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v34);
  if (this[607].i8[2] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v9, v10, v11);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFC, a3, Cast, VertexAmpId);
  }

  v14 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v32[0] = 0;
  v35 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v14 + 1712), GridProperties, v32, 1, v34);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 23, 0, a3, *(&this[238] + *(*this - 24)));
  v18 = (this + *(*this - 24));
  v19 = llvm::ConstantInt::get();
  v35 = 257;
  llvm::IRBuilderBase::CreateICmp(v18 + 214, 37, Cast, v19, v34);
  llvm::ConstantInt::get();
  v33 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v21 = this + *(*this - 24);
  v22 = *(v21 + 236);
  v35 = 257;
  v23 = llvm::IRBuilderBase::CreateCast((v21 + 1712), 38, Select, v22, v34);
  v24 = this + *(*this - 24);
  v25 = *(v24 + 236);
  v26 = llvm::PointerType::get();
  v35 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v24 + 214, BuiltinPointer, v26, v34, v27);
  v29 = llvm::ConstantInt::get();
  v33 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v24 + 1712), v25, PointerCast, v29, v32);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), v23, GEP, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetLayerId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = *(v7 + 238);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v31);
  if (this[607].i8[0] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v9, v10, v11);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFB, a3, Cast, VertexAmpId);
  }

  v14 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v29[0] = 0;
  v32 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v14 + 1712), GridProperties, v29, 1, v31);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 23, 0, a3, *(&this[238] + *(*this - 24)));
  v18 = (this + *(*this - 24));
  v19 = llvm::ConstantInt::get();
  v32 = 257;
  llvm::IRBuilderBase::CreateICmp(v18 + 214, 37, Cast, v19, v31);
  llvm::ConstantInt::get();
  v30 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v21 = this + *(*this - 24);
  v22 = *(v21 + 237);
  v32 = 257;
  v23 = llvm::IRBuilderBase::CreateCast((v21 + 1712), 38, Select, v22, v31);
  v24 = (this + *(*this - 24));
  v25 = llvm::PointerType::get();
  v32 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v24 + 214, BuiltinPointer, v25, v31, v26);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), v23, PointerCast, 0, 0);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetClipDistance(int8x8_t *a1, void *a2)
{
  v3 = a2[1];
  v4 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v4 = *v4;
  }

  v5 = *v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a1 + *(*a1 - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(a1);
  v14 = 0;
  v13[16] = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v8 + 1712), GridProperties, &v14, 1, v13);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(a1, Value, 25, v5, v6, *(&a1[234] + *(*a1 - 24)));
  return llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v7, BuiltinPointer, 0, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPointSize(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v22 = 0;
  v21 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, &v22, 1, v20);
  v10 = this + *(*this - 24);
  v11 = *a4;
  v12 = *(v10 + 234);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v13, v14, v15);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(this, Value, 0, 0x16u, v12, VertexAmpId);
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 1712), v11, BasePointer, a3, v20);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPosition(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v22 = 0;
  v21 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, &v22, 1, v20);
  v10 = this + *(*this - 24);
  v11 = *a4;
  v12 = *(v10 + 252);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v13, v14, v15);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(this, Value, 0, 0, v12, VertexAmpId);
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 1712), v11, BasePointer, a3, v20);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::setupShaderInputs(AGCLLVMUserMeshShaderSW *this)
{
  v268 = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  v220 = v4;
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(v2);
    v6 = *(this + 21);
    v7 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
    v5 = v7;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v223 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v223)
  {
LABEL_359:
    AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
    return 1;
  }

  v221 = this + 1704;
  v8 = this + 5640;
  v231 = this + 5536;
  v228 = this + 5512;
  v229 = this + 1696;
  v230 = this + 5584;
  v226 = this + 1656;
  v227 = this + 5560;
  v219 = (this + 4884);
  v218 = (this + 5540);
  do
  {
    v9 = *(*(this + 10) + 8 * *(v5 + 8));
    if (v5[1])
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 1;
      goto LABEL_354;
    }

    v12 = *(v220 + 40);
    if (v12)
    {
      v13 = (v12 - 24);
    }

    else
    {
      v13 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(&v221[*(*this - 24)], v13, *(this + 5));
    v14 = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh");
    v15 = v9 - 8 * *(v9 + 8);
    if (!v14)
    {
      v25 = isStringMDNode(*(v15 + 8), "air.amplification_id");
      v11 = 1;
      if (v25)
      {
        v29 = *(*this - 24);
        VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v26, v27, v28);
        AGCLLVMBuilder::truncateToSmall(&v221[v29], VertexAmpId, *v5);
        llvm::Value::replaceAllUsesWith();
        v11 = 1;
        *(this + 4781) = 1;
      }

      goto LABEL_354;
    }

    v222 = v5;
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_37:
      v18 = 0;
      v20 = 0;
      v17 = 0;
      goto LABEL_43;
    }

    v17 = 0;
    v18 = 0;
    v19 = *v16;
    if (v19 > 0x22)
    {
LABEL_38:
      v20 = 0;
      goto LABEL_43;
    }

    v20 = 0;
    if (((0x7FFFFFFF0uLL >> v19) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (*(v16 + 2) != 6)
    {
      goto LABEL_37;
    }

    v17 = isStringMDNode(*(v16 - 6), "air.mesh_type_info");
    if (v17)
    {
      v21 = &v16[-8 * *(v16 + 2)];
      v22 = *(v21 + 1);
      if (!v22)
      {
        goto LABEL_37;
      }

      v17 = 0;
      v18 = 0;
      v23 = *v22;
      if (v23 > 0x22)
      {
        goto LABEL_38;
      }

      v20 = 0;
      if ((0x7FFFFFFF0uLL >> v23))
      {
        v18 = *(v21 + 2);
        if (v18)
        {
          v17 = 0;
          v24 = *v18;
          if (v24 <= 0x22 && ((0x7FFFFFFF0uLL >> v24) & 1) != 0)
          {
            LODWORD(v238[0]) = 3;
            v17 = parseMDInt(0, v16, v238, this + 1206);
            if (v17)
            {
              LODWORD(v238[0]) = 4;
              v17 = parseMDInt(0, v16, v238, this + 1207);
              if (v17)
              {
                v17 = parseMDPrimitiveType(v16, this + 1210);
              }
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v20 = v22;
      }
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

LABEL_43:
    *(this + 1208) = (*(this + 1206) + 3) & 0xFFFFFFFC;
    v31 = *(this + 1210);
    if (v31 == 1)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (v31 == 2)
    {
      v33 = 3;
    }

    else
    {
      v33 = v32;
    }

    *(this + 1209) = (v33 * *(this + 1207) + 3) & 0xFFFFFFFC;
    if (v17)
    {
      v34 = *(v20 + 2);
      if (!v34)
      {
LABEL_80:
        v37 = 1;
        goto LABEL_81;
      }

      v35 = 0;
      v224 = v20;
      while (1)
      {
        v36 = *&v20[8 * v35 + -8 * v34];
        if (!v36)
        {
          break;
        }

        v37 = 0;
        v38 = *v36;
        if (v38 > 0x22 || ((0x7FFFFFFF0uLL >> v38) & 1) == 0)
        {
          goto LABEL_81;
        }

        v39 = v36 + 8;
        if (*(this + 4621) == 1)
        {
          v40 = v8;
          v41 = v18;
          v42 = v36 + 8;
          v43 = 1;
          while (1)
          {
            v44 = *v39;
            v45 = v43 >= v44;
            if (v43 >= v44)
            {
              break;
            }

            v46 = isStringMDNode(*&v42[-8 * v44], "air.shared");
            ++v43;
            v42 += 8;
            if (v46)
            {
              v45 = 0;
              break;
            }
          }

          v18 = v41;
          v8 = v40;
          v20 = v224;
        }

        else
        {
          v45 = 0;
        }

        AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v36, 0, this + 4892, this + 4900, this + 1227);
        if (!AGCLLVMUserMeshShaderSW::addGenericVarying(this, v36, 0, v45))
        {
          if (isStringMDNode(*&v36[-8 * *(v36 + 2)], "air.position"))
          {
            *(this + 4844) = 1;
            *(this + 4845) = v45;
            v47 = *v39;
            if (v47 >= 2)
            {
              v48 = 1;
              while (!isStringMDNode(*&v36[8 * v48 + -8 * v47], "air.invariant"))
              {
                ++v48;
                v47 = *v39;
                if (v48 >= v47)
                {
                  goto LABEL_63;
                }
              }

              *(this + 4744) = 1;
            }
          }

          else if (isStringMDNode(*&v36[-8 * *(v36 + 2)], "air.point_size"))
          {
            *(this + 4853) = 1;
            *(this + 4854) = v45;
          }

          else
          {
            if (!isStringMDNode(*&v36[-8 * *(v36 + 2)], "air.clip_distance"))
            {
              v37 = 0;
              goto LABEL_81;
            }

            *(this + 1212) = 1;
            *(this + 4852) = v45;
            LODWORD(v238[0]) = 1;
            if (*v39 >= 2u)
            {
              do
              {
                if (parseMDInt("air.clip_distance_array_size", v36, v238, this + 1212))
                {
                  break;
                }

                ++LODWORD(v238[0]);
              }

              while (LODWORD(v238[0]) < *v39);
            }
          }
        }

LABEL_63:
        ++v35;
        v34 = *(v20 + 2);
        if (v35 >= v34)
        {
          goto LABEL_80;
        }
      }
    }

    v37 = 0;
LABEL_81:
    if (*(this + 4845))
    {
      v49 = 1;
    }

    else
    {
      v49 = *(this + 4852);
    }

    v50 = v49 & 1;
    *(this + 4852) = v50;
    *(this + 4845) = v50;
    if (v37)
    {
      v51 = *(v18 + 2);
      if (v51)
      {
        for (i = 0; i < v51; ++i)
        {
          v53 = *&v18[8 * i + -8 * v51];
          if (!v53)
          {
            goto LABEL_109;
          }

          v54 = 0;
          v55 = *v53;
          if (v55 > 0x22 || ((0x7FFFFFFF0uLL >> v55) & 1) == 0)
          {
            goto LABEL_111;
          }

          if (*(this + 4621) == 1)
          {
            v56 = v53 + 8;
            v57 = 1;
            while (1)
            {
              v58 = *(v53 + 2);
              v59 = v57 >= v58;
              if (v57 >= v58)
              {
                break;
              }

              v60 = isStringMDNode(*&v56[-8 * v58], "air.shared");
              ++v57;
              v56 += 8;
              if (v60)
              {
                v59 = 0;
                break;
              }
            }
          }

          else
          {
            v59 = 0;
          }

          AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v53, 1u, this + 4892, this + 4900, this + 1227);
          if (!AGCLLVMUserMeshShaderSW::addGenericVarying(this, v53, 1, v59))
          {
            if (isStringMDNode(*&v53[-8 * *(v53 + 2)], "air.render_target_array_index"))
            {
              *(this + 4855) = 1;
LABEL_104:
              *(this + 4861) |= v59;
              goto LABEL_105;
            }

            if (isStringMDNode(*&v53[-8 * *(v53 + 2)], "air.viewport_array_index"))
            {
              *(this + 4857) = 1;
              goto LABEL_104;
            }

            if (isStringMDNode(*&v53[-8 * *(v53 + 2)], "air.primitive_culled"))
            {
              *(this + 4859) = 1;
              goto LABEL_104;
            }

            if (!isStringMDNode(*&v53[-8 * *(v53 + 2)], "air.primitive_id"))
            {
              goto LABEL_109;
            }

            *(this + 4865) = 1;
            *(this + 4866) = v59;
          }

LABEL_105:
          v51 = *(v18 + 2);
        }
      }

      v54 = 1;
    }

    else
    {
LABEL_109:
      v54 = 0;
    }

LABEL_111:
    v61 = *(this + 4621);
    v225 = v54;
    if (v61)
    {
      if ((*(this + 4855) & 1) == 0)
      {
        *(this + 4862) = 1;
      }

      if ((*(this + 4857) & 1) == 0)
      {
        *(this + 4863) = 1;
      }

      v62 = 1;
      *(this + 4861) = 1;
      *(this + 4857) = 1;
      *(this + 4855) = 1;
    }

    else
    {
      v62 = *(this + 4861);
    }

    v63 = 0;
    v245 = *(this + 4866);
    v238[0] = "agc.per_prim.primitive_address";
    v238[1] = 0xFFFFFFFE00000000;
    v239 = 0;
    v240[0] = this + 4867;
    v240[1] = "agc.per_prim.primitive_address_2";
    v240[2] = 0xFFFFFFFD00000000;
    v241 = 0;
    v242 = this + 4867;
    v243 = "agc.per_prim.primitive_id";
    v244 = 0xFFFFFFFF00000001;
    v246 = this + 4864;
    v247 = "air.render_target_array_index";
    v248 = 0xFFFFFFFB00000001;
    v249 = v62;
    v250 = this + 4856;
    v251 = "air.viewport_array_index";
    v252 = 0xFFFFFFFC00000001;
    v253 = v62;
    v254 = this + 4858;
    v255 = "air.amplification_id";
    v256 = 0xFFFFFFFA00000000;
    v257 = v61;
    v258 = this + 4782;
    v259 = "air.amplification_count";
    v260 = 0xFFFFFFF900000001;
    v261 = 0;
    v262 = this + 4780;
    do
    {
      v64 = v238[v63];
      v65 = v238[v63 + 1];
      v66 = HIDWORD(v238[v63 + 1]);
      v67 = LOBYTE(v238[v63 + 2]);
      if (v64)
      {
        strlen(v238[v63]);
      }

      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1200))
      {
        v72 = 0;
      }

      else
      {
        v73 = *(*(this + 599) + 8 * Key);
        v74 = *(v73 + 8);
        llvm::StringMapImpl::RemoveKey();
        llvm::deallocate_buffer(*v73, v73, (*v73 + 17));
        if (v66 >= 0xFFFFFFF9)
        {
          v75 = ~v66;
        }

        else
        {
          v75 = ((v65 != 0) | (2 * v66)) + 7;
        }

        GenericVarying::GenericVarying(&__dst, HIBYTE(v74) & 0x7F, BYTE2(v74), v74 & 0xF, BYTE1(v74), v75, v67);
        MEMORY[0x20F331AA0](&v264[8], v64);
        GenericVaryingAllocator::addVarying(this + 4920, &__dst);
        if ((v264[31] & 0x80000000) != 0)
        {
          operator delete(*&v264[8]);
        }

        v72 = 1;
      }

      *v240[v63] = v72;
      v63 += 4;
    }

    while (v63 != 28);
    if (*(this + 4855))
    {
      v76 = 1;
    }

    else if (*(this + 4857))
    {
      v76 = 1;
    }

    else
    {
      v76 = *(this + 4859);
    }

    v77 = v76 & 1;
    *(this + 4860) = v77;
    *(this + 4783) = v77;
    if (*(this + 4784) == 1)
    {
      v78 = *(this + 618);
      v79 = *(this + 1238);
      if (v79 >= 2)
      {
        v80 = v79 << 6;
        v81 = v78 + 64;
        v82 = v80 - 64;
        do
        {
          if (*(v78 + 16) < *(v81 + 16))
          {
            v78 = v81;
          }

          v81 += 64;
          v82 -= 64;
        }

        while (v82);
      }

      v83 = *(this + 1200);
      if (v83)
      {
          ;
        }
      }

      else
      {
        j = *(this + 599);
      }

      v86 = *(this + 599) + 8 * v83;
      if (j != v86)
      {
        v87 = *(v78 + 16);
        v88 = *j;
        while (1)
        {
          v89 = *(v88 + 8);
          v90 = v89 & 0xF;
          LODWORD(__dst) = HIBYTE(v89) & 0x7F;
          DWORD1(__dst) = BYTE2(v89);
          ++v87;
          DWORD2(__dst) = v90;
          HIDWORD(__dst) = BYTE1(v89);
          *v264 = v87;
          memset(&v264[8], 0, 32);
          v265 = BYTE2(v89) == 1;
          v266 = 0;
          if (DWORD2(__dst) <= 1)
          {
            break;
          }

          switch(v90)
          {
            case 2:
              v92 = BYTE2(v89) == 1;
              v91 = 3;
              v93 = 7;
              goto LABEL_163;
            case 3:
              if (BYTE2(v89) == 1)
              {
                v91 = 19;
              }

              else
              {
                v91 = 18;
              }

              goto LABEL_172;
            case 5:
              if (BYTE2(v89) == 1)
              {
                v91 = 8;
              }

              else
              {
                v91 = 4;
              }

LABEL_172:
              v267 = v91;
              break;
          }

          MEMORY[0x20F331AA0](&v264[8], v88 + 16);
          GenericVaryingAllocator::addVarying(this + 4920, &__dst);
          if ((v264[31] & 0x80000000) != 0)
          {
            operator delete(*&v264[8]);
          }

          do
          {
            v94 = j[1];
            ++j;
            v88 = v94;
            if (v94)
            {
              v95 = v88 == -8;
            }

            else
            {
              v95 = 1;
            }
          }

          while (v95);
          if (j == v86)
          {
            goto LABEL_180;
          }
        }

        if ((v89 & 0xF) == 0)
        {
          if (BYTE2(v89) == 1)
          {
            v91 = 5;
          }

          else
          {
            v91 = 1;
          }

          goto LABEL_172;
        }

        v92 = BYTE2(v89) == 1;
        v91 = 2;
        v93 = 6;
LABEL_163:
        if (v92)
        {
          v91 = v93;
        }

        goto LABEL_172;
      }

LABEL_180:
      llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 599, v69, v70, v71);
    }

    if (*(this + 1201))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*&v229[*(*this - 24)]))
      {
        AGCTargetPrinter::printMessage(*&v229[*(*this - 24)], "Following fragment input(s) mismatching mesh shader output type(s) or not written by mesh shader: ");
      }

      v96 = *(this + 1200);
      if (v96)
      {
          ;
        }
      }

      else
      {
        k = *(this + 599);
      }

      v99 = *(this + 599) + 8 * v96;
      while (k != v99)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v229[*(*this - 24)]))
        {
          v100 = *&v229[*(*this - 24)];
          std::string::basic_string[abi:nn200100](&__dst, (*k + 16), **k);
          p_dst = &__dst;
          if (v264[7] < 0)
          {
            p_dst = __dst;
          }

          AGCTargetPrinter::printMessage(v100, "\t%s", p_dst);
          if ((v264[7] & 0x80000000) != 0)
          {
            operator delete(__dst);
          }
        }

        do
        {
          v103 = *(k + 8);
          k += 8;
          v102 = v103;
          if (v103)
          {
            v104 = v102 == -8;
          }

          else
          {
            v104 = 1;
          }
        }

        while (v104);
      }

      v105 = *(this + 1200);
      if (v105)
      {
          ;
        }
      }

      else
      {
        m = *(this + 599);
      }

      v108 = *(this + 599) + 8 * v105;
      if (m != v108)
      {
        v109 = &unk_20E75F419;
        do
        {
          std::string::append(&v226[*(*this - 24)], v109);
          std::string::basic_string[abi:nn200100](__p, (*m + 16), **m);
          attribute_name(&__dst, __p);
          if (v264[7] >= 0)
          {
            v110 = &__dst;
          }

          else
          {
            v110 = __dst;
          }

          if (v264[7] >= 0)
          {
            v111 = v264[7];
          }

          else
          {
            v111 = *(&__dst + 1);
          }

          std::string::append(&v226[*(*this - 24)], v110, v111);
          if ((v264[7] & 0x80000000) != 0)
          {
            operator delete(__dst);
          }

          if (SBYTE3(v235) < 0)
          {
            operator delete(*__p);
          }

          do
          {
            v113 = *(m + 8);
            m += 8;
            v112 = v113;
            if (v113)
            {
              v114 = v112 == -8;
            }

            else
            {
              v114 = 1;
            }
          }

          while (v114);
          v109 = ",";
        }

        while (m != v108);
      }

      v225 = 0;
    }

    GenericVaryingAllocator::allocate((this + 4920), *(this + *(*this - 24) + 2168));
    if (v225)
    {
      bzero(v8, 0x4E0uLL);
      v236 = 0;
      v235 = 0u;
      *&__p[4] = 0u;
      v118 = *(this + 1207);
      *__p = 4 * v118;
      *&__p[4] = *(this + 2430);
      v119 = *(this + 1208);
      *&__p[8] = 23;
      *&__p[12] = 16 * v119;
      __p[16] = 1;
      __p[17] = *(this + 4845);
      DWORD1(v235) = 4 * v119;
      BYTE8(v235) = *(this + 4853);
      BYTE9(v235) = __p[17];
      v120 = *(this + 1212);
      HIDWORD(v235) = 22;
      v236 = (4 * v119 * v120);
      HIDWORD(v236) = v120 != 0;
      BYTE5(v236) = *(this + 4852);
      v237 = 25;
      if (*(this + 4621) == 1)
      {
        AGCLLVMUserObjectShaderBase::getVertexAmpId(this, v115, v116, v117);
        v118 = *(this + 1207);
        v121 = *(this + 4621);
      }

      else
      {
        v121 = 0;
      }

      v122 = *(this + 1210);
      if (v122 == 1)
      {
        v123 = 2;
      }

      else
      {
        v123 = 1;
      }

      if (v122 == 2)
      {
        v124 = 3;
      }

      else
      {
        v124 = v123;
      }

      v125 = (v124 * v118 + 15) & 0xFFFFFFF0;
      *(this + 1228) = v125;
      v126 = v125 + 16;
      if (v121)
      {
        *(this + 1408) = v126;
        v126 += (4 * *(this + 1194) + 15) & 0xFFFFFFF0;
      }

      for (n = 0; n != 48; n += 12)
      {
        if ((__p[n + 5] & 1) == 0 && __p[n + 4] == 1)
        {
          v128 = *&__p[n];
          v129 = *&__p[n + 8];
          if (v129 != 26)
          {
            v130 = llvm::ConstantInt::get();
            v131 = &v8[48 * v129];
            *v131 = v130;
            v131[12] = 0;
          }

          v126 += (v128 + 15) & 0xFFFFFFF0;
        }
      }

      v132 = &dword_20E70CC9C;
      v133 = 96;
      do
      {
        v134 = *(this + 1208);
        v135 = *(v132 - 1);
        v136 = &v231[4 * v135];
        if ((*(this + 5480) & *(v132 - 2)) == 1)
        {
          v137 = (*v136 + 1) >> 1;
        }

        else
        {
          v138 = &v228[4 * v135];
          if (*(v132 - 8))
          {
            v139 = v136;
          }

          else
          {
            v139 = v138;
          }

          v137 = *v139;
        }

        v140 = *v132;
        if (*v132 != 26)
        {
          v141 = llvm::ConstantInt::get();
          v142 = &v8[48 * v140];
          *v142 = v141;
          v142[12] = 0;
        }

        v126 += (4 * v134 * v137 + 15) & 0xFFFFFFF0;
        v132 += 4;
        v133 -= 16;
      }

      while (v133);
      v143 = 0;
      *(this + 1217) = v126;
      do
      {
        if (__p[v133 + 5] && __p[v133 + 4] == 1)
        {
          v144 = *&__p[v133];
          v145 = *&__p[v133 + 8];
          if (v145 != 26)
          {
            v146 = llvm::ConstantInt::get();
            v147 = &v8[48 * v145];
            *v147 = v146;
            v147[12] = 1;
          }

          v143 += (v144 + 15) & 0xFFFFFFF0;
        }

        v133 += 12;
      }

      while (v133 != 48);
      v148 = &byte_20E70CC94;
      v149 = 96;
      do
      {
        v150 = *(this + 1208);
        v151 = *(v148 + 1);
        v152 = &v230[4 * v151];
        if ((*(this + 5480) & *v148) == 1)
        {
          v153 = (*v152 + 1) >> 1;
        }

        else
        {
          v154 = &v227[4 * v151];
          if (*v148)
          {
            v155 = v152;
          }

          else
          {
            v155 = v154;
          }

          v153 = *v155;
        }

        v156 = *(v148 + 3);
        if (v156 != 26)
        {
          v157 = llvm::ConstantInt::get();
          v158 = &v8[48 * v156];
          *v158 = v157;
          v158[12] = 1;
        }

        v143 += (4 * v150 * v153 + 15) & 0xFFFFFFF0;
        v148 += 16;
        v149 -= 16;
      }

      while (v149);
      v159 = 0;
      *(this + 1219) = v143;
      v160 = &dword_20E70CCFC;
      v161 = 32;
      do
      {
        v162 = *(v160 - 1);
        v163 = &v231[4 * v162];
        if ((*(this + 5480) & *(v160 - 2)) == 1)
        {
          v164 = (*v163 + 1) >> 1;
        }

        else
        {
          v165 = &v228[4 * v162];
          if (*(v160 - 8))
          {
            v166 = v163;
          }

          else
          {
            v166 = v165;
          }

          v164 = *v166;
        }

        v167 = *v160;
        if (*v160 != 26)
        {
          v168 = llvm::ConstantInt::get();
          v169 = &v8[48 * v167];
          *v169 = v168;
          v169[12] = 0;
        }

        v159 += 4 * v164;
        v160 += 4;
        v161 -= 16;
      }

      while (v161);
      v170 = 0;
      *(this + 1218) = v159;
      v171 = &byte_20E70CCF4;
      v172 = 32;
      do
      {
        v173 = *(v171 + 1);
        v174 = &v230[4 * v173];
        if ((*(this + 5480) & *v171) == 1)
        {
          v175 = (*v174 + 1) >> 1;
        }

        else
        {
          v176 = &v227[4 * v173];
          if (*v171)
          {
            v177 = v174;
          }

          else
          {
            v177 = v176;
          }

          v175 = *v177;
        }

        v178 = *(v171 + 3);
        if (v178 != 26)
        {
          v179 = llvm::ConstantInt::get();
          v180 = &v8[48 * v178];
          *v180 = v179;
          v180[12] = 1;
        }

        v170 += 4 * v175;
        v171 += 16;
        v172 -= 16;
      }

      while (v172);
      *(this + 1220) = v170;
      *(this + 1414) = 4;
      v181 = *(this + 5480);
      *(this + 1426) = *(this + 1378);
      *(this + 1438) = *(this + 1379);
      *(this + 1450) = *(this + 1380);
      *(this + 1630) = *(this + 1381);
      v182 = *(this + 1384);
      if (v181 == 1)
      {
        v182 = (v182 + 1) >> 1;
        v183 = vshr_n_u32(vadd_s32(*v218, 0x100000001), 1uLL);
      }

      else
      {
        v183 = *v218;
      }

      *(this + 1474) = v182;
      *(this + 1498) = v183.i32[1];
      *(this + 1486) = v183.i32[0];
      *(this + 1642) = *(this + 1387);
      *(this + 1534) = *(this + 1390);
      *(this + 1546) = *(this + 1391);
      *(this + 1558) = *(this + 1392);
      *(this + 1654) = *(this + 1393);
      v184 = *(this + 1396);
      if (v181)
      {
        v184 = (v184 + 1) >> 1;
        v185 = (*(this + 1397) + 1) >> 1;
        v186 = vshr_n_u32(vadd_s32(*(this + 5592), 0x100000001), 1uLL);
      }

      else
      {
        v185 = *(this + 1397);
        v186 = *(this + 5592);
      }

      *(this + 1582) = v184;
      *(this + 1594) = v185;
      *(this + 1606) = v186.i32[0];
      *(this + 1666) = v186.i32[1];
      *(this + 1678) = *(this + 4853);
      *(this + 1690) = *(this + 4860);
      *(this + 1702) = 0;
      *(this + 1714) = *(this + 1212);
      __dst = xmmword_20E70CD14;
      *v264 = unk_20E70CD24;
      *&v264[16] = xmmword_20E70CD34;
      *&v264[32] = 0x1900000016;
      std::vector<UVSWriteType>::vector[abi:nn200100](&v232, &__dst, 0xEuLL);
      *(this + 1412) = 0;
      v187 = v232;
      v188 = v233;
      if (v232 != v233)
      {
        v189 = 0;
        v190 = v232;
        do
        {
          v191 = &v8[48 * v189];
          v192 = *(v191 + 4);
          if (v192 && v191[12] == 1)
          {
            v193 = v192 << 16;
          }

          else
          {
            v193 = *(v191 + 4);
          }

          v194 = *v190++;
          v189 = v194;
          *&v8[48 * v194 + 8] = (*(v191 + 4) + v193) | ((*(v191 + 5) + HIWORD(v193)) << 16);
        }

        while (v190 != v188);
      }

      if (v187)
      {
        v233 = v187;
        operator delete(v187);
      }
    }

    v195 = 0;
    v196 = -6;
    v197 = (this + 5536);
    do
    {
      if ((v196 + 6) <= 5 && ((1 << (v196 + 6)) & 0x27) != 0)
      {
        v198 = *(v197 - 6) + v195;
        v199 = v198 + *v197;
        v195 = v198 + ((*v197 + 1) >> 1);
        if (*(this + 5480) != 1)
        {
          v195 = v199;
        }
      }

      ++v197;
      v200 = __CFADD__(v196++, 1);
    }

    while (!v200);
    v201 = 0;
    *v219 = v195;
    v202 = -6;
    v203 = (this + 5584);
    do
    {
      if ((v202 + 6) <= 5 && ((1 << (v202 + 6)) & 0x27) != 0)
      {
        v204 = *(v203 - 6) + v201;
        v205 = v204 + *v203;
        v201 = v204 + ((*v203 + 1) >> 1);
        if (*(this + 5480) != 1)
        {
          v201 = v205;
        }
      }

      ++v203;
      v200 = __CFADD__(v202++, 1);
    }

    while (!v200);
    *(this + 1222) = v201;
    v219[*(this + 4845)] += 4;
    v219[*(this + 4854)] += *(this + 4853);
    v219[*(this + 4852)] += *(this + 1212);
    if (*(this + 4857))
    {
      v206 = 1;
    }

    else
    {
      v206 = *(this + 4855);
    }

    v219[*(this + 4861)] += v206;
    v11 = v225;
    if (v225)
    {
      v207 = this + *(*this - 24);
      Cast = llvm::ConstantInt::get();
      v209 = *v222;
      *&v264[16] = 257;
      v210 = *Cast;
      if (*Cast != v209)
      {
        v211 = *(v210 + 8);
        v212 = v211;
        if ((*(v210 + 8) & 0xFE) == 0x12)
        {
          v212 = *(**(v210 + 16) + 8);
        }

        if (v212 == 15 && ((*(v209 + 8) & 0xFE) != 0x12 ? (v213 = *(v209 + 8)) : (v213 = *(**(v209 + 16) + 8)), v213 == 13))
        {
          v214 = (v207 + 1712);
          v215 = 47;
        }

        else
        {
          if ((*(v210 + 8) & 0xFE) == 0x12)
          {
            v211 = *(**(v210 + 16) + 8);
          }

          if (v211 == 13 && ((*(v209 + 8) & 0xFE) != 0x12 ? (v216 = *(v209 + 8)) : (v216 = *(**(v209 + 16) + 8)), v216 == 15))
          {
            v214 = (v207 + 1712);
            v215 = 48;
          }

          else
          {
            v214 = (v207 + 1712);
            v215 = 49;
          }
        }

        Cast = llvm::IRBuilderBase::CreateCast(v214, v215, Cast, v209, &__dst);
      }

      llvm::Value::replaceAllUsesWith();
      llvm::ValueHandleBase::operator=((this + 4752), Cast);
      v11 = v225;
    }

    if (*(this + 4621) == 1)
    {
      llvm::Module::getOrInsertNamedMetadata();
      *&__dst = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      v11 = v225;
    }

    v5 = v222;
LABEL_354:
    if (!v11)
    {
      break;
    }

    v5 += 5;
  }

  while (v5 != v223);
  if (v11)
  {
    goto LABEL_359;
  }

  return 0;
}

BOOL AGCLLVMUserMeshShaderSW::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v30 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v30 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  v27[0] = 1;
  if (!parseMDInt(0, a2, v27, &v30))
  {
    return 0;
  }

  v12 = *(a2 - 8 * *(a2 + 8) + 16);
  if (!v12 || *v12)
  {
    return 0;
  }

  llvm::MDString::getString(v12);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a1 + 4800))
  {
    return 1;
  }

  v16 = *(*(a1 + 4792) + 8 * Key);
  v17 = *(v16 + 8);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(*v16, v16, (*v16 + 17));
  v18 = v17 & 0xF;
  v13 = !a3 && v18 != 3 || a3 == 1 && v18 == 3;
  if (a3)
  {
    v20 = 8;
  }

  else
  {
    v20 = 7;
  }

  v21 = v20 + 2 * v30;
  if (v30 > 0xFFFFFFF8)
  {
    v22 = ~v30;
  }

  else
  {
    v22 = v21;
  }

  GenericVarying::GenericVarying(v27, HIBYTE(v17) & 0x7F, BYTE2(v17), v18, BYTE1(v17), v22, a4);
  String = llvm::MDString::getString(v12);
  if (String)
  {
    std::string::basic_string[abi:nn200100](&v25, String, v24);
  }

  else
  {
    v25 = 0uLL;
    v26 = 0;
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  __p = v25;
  v29 = v26;
  GenericVaryingAllocator::addVarying(a1 + 4920, v27);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  return v13;
}

uint64_t AGCLLVMUserMeshShaderSW::wrapperPrefixData(AGCLLVMUserMeshShaderSW *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = *(*(*(this + *(*this - 24) + 2168) + 912) + 60);
  if (!v4)
  {
    return 0;
  }

  v5 = llvm::ConstantInt::get();

  return MEMORY[0x2821F23D8](v4, v5);
}

uint64_t AGCLLVMUserMeshShaderSW::addWrapperPrefix(int8x8_t *this)
{
  v13[2] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 1, 1);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  if ((*(*&this[592] + 17) & 1) == 0)
  {
    v11[0] = "bounds_check_failed";
    v12 = 259;
    operator new();
  }

  v3 = this + *(*this - 24);
  LODWORD(v13[0]) = 0;
  v12 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v3 + 1712), GridProperties, v13, 1, v11);
  v13[0] = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 3, 0);
  v13[1] = Value;
  v5 = this + *(*this - 24);
  v6 = *(v5 + 231);
  v7 = llvm::PointerType::get();
  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v5 + 1704), "air.gpe.emit_nop_token", 22, v6, v7, *(&this[238] + *(*this - 24)));
  v9 = (this + *(*this - 24));
  v12 = 257;
  llvm::IRBuilderBase::CreateCall(v9 + 214, *(v8 + 24), v8, v13, 2, v11);
  AGCLLVMTargetBuilder::CreateBarrier(&this[213] + *(*this - 24));
  return 1;
}

void AGCLLVMUserMeshShaderSW::addInitCompilePass(AGCLLVMUserMeshShaderSW *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserMeshShaderSWPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x51)
  {
    v1 = v0;
  }

  else
  {
    v1 = 81;
  }

  v2 = &aStringrefLlvmG_11[v1];
  v3 = 81 - v1;
  if ((81 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 81 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserMeshShaderSWPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserMeshShaderSWPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGMeshSWShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_10[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGMeshSWShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGMeshSWShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t AGCLLVMUserObjectShaderBase::getTempRegistersLimit(AGCLLVMUserObjectShaderBase *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 1146);
  if (v6)
  {
    v7 = this + *(*this - 24);
    v8 = *(v7 + 271);
    if (*(v8 + 976) == 1)
    {
      v9 = *(v7 + 211);
      v10 = *(v8 + 980);
      v11 = *(v9 + 2016);
      v12 = v11 - 1;
      if ((v11 - 1) >= 0)
      {
        v13 = 0;
        v14 = *(v9 + 2008);
        do
        {
          v15 = (v12 + v13) >> 1;
          if (*(v14 + 4 * v15) < v6)
          {
            v12 = v15 - 1;
          }

          else
          {
            v13 = v15 + 1;
          }
        }

        while (v13 <= v12);
      }

      v16 = v10 / v11 * v12;
      if (v16 >= *a2)
      {
        v16 = *a2;
      }

      *a2 = v16;
      return 1;
    }
  }

  return result;
}

BOOL AGCLLVMUserObjectShader::constructReply(AGCLLVMUserObjectShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 8, *(this + 1154));
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    v7 = this + *(*this - 24);
    v8 = *(v7 + 1080);
    v7[4358] = 1;
    v9 = *(v7 + 1082);
    v10 = v8 - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 4, *(this + 1192));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 6, *(this + 1193));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 8, *(this + 1194));
    LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v10 + v9);
    v11 = this + *(*this - 24);
    v12 = *(v11 + 1080);
    v11[4358] = 1;
    v13 = *(v11 + 1082);
    v14 = v12 - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 4, v4);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 6, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 8, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 10, *(this + 1149));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 12, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v11 + 4288, 14, *(this + 12), 0);
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v14 + v13);
    v15 = this + *(*this - 24);
    v16 = *(v15 + 1080);
    v15[4358] = 1;
    v17 = *(v15 + 1082);
    LODWORD(v11) = v16 - *(v15 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v15 + 4288), v4);
    v18 = *(*this - 24);
    v19 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v11 + v17);
    flatbuffers::FlatBufferBuilder::Finish((this + v18 + 4288), v19, v20);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v21 = *this;
    v22 = this + *(*this - 24);
    v22[4454] = 1;
    v23 = *(v21 - 24);
    v24 = flatbuffers::FlatBufferBuilder::EndTable((v22 + 4384), *(v22 + 2208) - *(v22 + 2216) + *(v22 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v23 + 4384), v24, v25);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

    return AGCLLVMUserObjectShaderBase::validateReply(this);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 20, v4);
  }

  return result;
}

BOOL AGCLLVMUserObjectShaderBase::validateReply(AGCLLVMUserObjectShaderBase *this)
{
  v2 = (this + *(*this - 24));
  v3 = v2[104].__r_.__value_.__r.__words[2];
  if (v3)
  {
    if (v2[105].__r_.__value_.__r.__words[0])
    {
      v4 = &v2[104].__r_.__value_.__r.__words[2];
    }

    else
    {
      v4 = &v2[128];
    }
  }

  else
  {
    v4 = &v2[128];
  }

  v5 = (v4->__words[0] + *v4->__words[0]);
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = (v6 + *v6 + *(v6 + *v6 - *(v6 + *v6) + 8));
  if (v3)
  {
    if (v2[105].__r_.__value_.__r.__words[0])
    {
      v8 = (v2 + 2512);
    }

    else
    {
      v8 = v2 + 128;
    }
  }

  else
  {
    v8 = v2 + 128;
  }

  v10 = v8->__r_.__value_.__r.__words[0];
  size = v8->__r_.__value_.__l.__size_;
  if (v10)
  {
    v11 = size == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v10 + *v10);
  }

  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v7 + *v7);
  v17 = (v15 - *v15);
  if (*v17 >= 0x3Du && (v18 = v17[30]) != 0)
  {
    v19 = *(v15 + v18);
  }

  else
  {
    v19 = 0;
  }

  if (v16 <= 0x20)
  {
    result = validateUserLocalMemoryUsage(v19, *(v2[90].__r_.__value_.__l.__size_ + 952), v2 + 69);
    if (!result)
    {
      return result;
    }

    v21 = *(this + 1147);
    v22 = (this + *(*this - 24));
    v23 = *(v22[90].__r_.__value_.__l.__size_ + 988);
    if (v21 <= v23)
    {
      return 1;
    }

    std::to_string(&v39, v21);
    v24 = std::string::insert(&v39, 0, "Object shader payload size (");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v40, ") ");
    v27 = v26->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v41, "exceeds the maximum payload size allowed (");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v23);
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
      v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = __p.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v42, p_p, v31);
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v43, ")");
    v35 = v34->__r_.__value_.__r.__words[2];
    v44 = *&v34->__r_.__value_.__l.__data_;
    v45 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (v45 >= 0)
    {
      v36 = &v44;
    }

    else
    {
      v36 = v44;
    }

    if (v45 >= 0)
    {
      v37 = HIBYTE(v45);
    }

    else
    {
      v37 = *(&v44 + 1);
    }

    std::string::append(v22 + 69, v36, v37);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void AGCLLVMUserObjectShader::getCompilationKeyDescription(AGCLLVMUserObjectShader *this@<X0>, std::string *a2@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(v38, "AGCObjectContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v36, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v42);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "0x", 2);
  *(&v43 + *(v43 - 24) + 8) = *(&v43 + *(v43 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v48, v36, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v42[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v42 + *(v42[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v43 = v6;
  v44 = MEMORY[0x277D82878] + 16;
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  v44 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](v47);
  std::string::basic_string[abi:nn200100]<0>(v42, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v48[1], v42, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(__p, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v48[2], __p, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v34, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v48[3], v34, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v32, "customBorderColor");
  _agcFieldString<unsigned int>(&v48[4], v32, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v30, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v48[5], v30, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v48[6], v28, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v26, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v48[7], v26, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v24, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v48[8], v24, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v22, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v48[9], v22, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v48[10], v20, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v18, "enableStackShadow");
  _agcFieldString<unsigned int>(&v48[11], v18, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v16, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v48[12], v16, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v14, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v48[13], v14, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v12, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v48[14], v12, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v10, "meshNeedsTGCounts");
  _agcFieldString<unsigned int>(&v48[15], v10, (*(v3 + 4) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "meshNeedsOSGridPosition");
  _agcFieldString<unsigned int>(&v48[16], v8, (*(v3 + 4) >> 2) & 1);
  _agcGroupWithHeader(a2, v38, v48, 17);
  v7 = 17;
  do
  {
    if (SHIBYTE(v48[v7 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*&v47[v7 * 24 + 128]);
    }

    --v7;
  }

  while (v7 * 24);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void virtual thunk toAGCLLVMUserObjectShader::~AGCLLVMUserObjectShader(AGCLLVMUserObjectShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28255AC78;
  v4[598] = &unk_28255AFE0;
  v4[811] = &unk_28255B0F0;
  v5 = v4[595];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v4 + 593));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v4, &off_28255D7D0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 598));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28255AC78;
  v4[598] = &unk_28255AFE0;
  v4[811] = &unk_28255B0F0;
  v5 = v4[595];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v4 + 593));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v4, &off_28255D7D0, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((v4 + 598));
}

uint64_t AGCLLVMUserObjectShaderBase::replacePayloadBufferAccesses(AGCLLVMUserObjectShaderBase *this, llvm::Type **a2)
{
  v4 = this + 4096;
  v5 = this + *(*this - 24);
  v6 = *(v5 + 271);
  v20 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v21, (v5 + 1712));
  v22 = *(v5 + 452);
  GEP = (*(*v6 + 344))(v6, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v4[504] == 1)
  {
    v9 = this + *(*this - 24);
    v10 = *(v9 + 236);
    v11 = llvm::ConstantInt::get();
    v19 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v9 + 1712), v10, GEP, v11, v18);
  }

  if (v4[505] == 1)
  {
    v12 = this + *(*this - 24);
    v13 = *(v12 + 236);
    v14 = llvm::ConstantInt::get();
    v19 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, GEP, v14, v18);
  }

  v15 = (this + *(*this - 24));
  v16 = *a2;
  v19 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v15 + 214, GEP, v16, v18, v7);
  llvm::Value::replaceAllUsesWith();
  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::replaceBuiltins(AGCLLVMUserObjectShaderBase *this)
{
  v26[42] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v22, *v3);
    v26[41] = this;
    v22 = &unk_28255C358;
    v26[37] = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserObjectShaderBase::replaceBuiltins(void)::workitem_functions, "air.get_global_size");
      dword_27C8D9268 = 1;
      qword_27C8D9270 = AGCLLVMUserObjectShaderBase::buildGlobalSize;
      unk_27C8D9278 = 0;
      dword_27C8D9280 = 4;
      word_27C8D9284 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9286[2], "air.get_global_id");
      dword_27C8D92A0 = 1;
      qword_27C8D92A8 = AGCLLVMUserObjectShaderBase::buildGlobalID;
      unk_27C8D92B0 = 0;
      dword_27C8D92B8 = 4;
      word_27C8D92BC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D92C0, "air.get_local_size");
      dword_27C8D92D8 = 1;
      qword_27C8D92E0 = AGCLLVMUserObjectShaderBase::buildLocalSize;
      unk_27C8D92E8 = 0;
      dword_27C8D92F0 = 4;
      word_27C8D92F4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D92F8, "air.get_local_id");
      dword_27C8D9310 = 1;
      qword_27C8D9318 = AGCLLVMUserObjectShaderBase::buildLocalID;
      unk_27C8D9320 = 0;
      dword_27C8D9328 = 4;
      word_27C8D932C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9330, "air.get_local_linear_id");
      dword_27C8D9348 = 1;
      qword_27C8D9350 = AGCLLVMUserObjectShaderBase::buildLocalLinearID;
      unk_27C8D9358 = 0;
      dword_27C8D9360 = 2;
      word_27C8D9364 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9366[2], "air.get_num_groups");
      dword_27C8D9380 = 1;
      qword_27C8D9388 = AGCLLVMUserObjectShaderBase::buildNumGroups;
      unk_27C8D9390 = 0;
      dword_27C8D9398 = 4;
      word_27C8D939C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D93A0, "air.get_group_id");
      dword_27C8D93B8 = 1;
      qword_27C8D93C0 = AGCLLVMUserObjectShaderBase::buildGroupID;
      unk_27C8D93C8 = 0;
      dword_27C8D93D0 = 4;
      word_27C8D93D4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D93D8, "air.get_dispatch_local_size");
      dword_27C8D93F0 = 1;
      qword_27C8D93F8 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize;
      unk_27C8D9400 = 0;
      dword_27C8D9408 = 4;
      word_27C8D940C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9410, "air.get_quadgroups_per_threadgroup");
      dword_27C8D9428 = 1;
      qword_27C8D9430 = AGCLLVMUserObjectShaderBase::buildQuadgroupsPerThreadgroup;
      unk_27C8D9438 = 0;
      dword_27C8D9440 = 2;
      word_27C8D9444 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9446[2], "air.get_simdgroups_per_threadgroup");
      dword_27C8D9460 = 1;
      qword_27C8D9468 = AGCLLVMUserObjectShaderBase::buildSimdgroupsPerThreadgroup;
      qword_27C8D9470 = 0;
      dword_27C8D9478 = 2;
      word_27C8D947C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9480, "air.get_dispatch_quadgroups_per_threadgroup");
      dword_27C8D9498 = 1;
      qword_27C8D94A0 = AGCLLVMUserObjectShaderBase::buildDispatchQuadgroupsPerThreadgroup;
      qword_27C8D94A8 = 0;
      dword_27C8D94B0 = 2;
      word_27C8D94B4 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D94B8, "air.get_dispatch_simdgroups_per_threadgroup");
      dword_27C8D94D0 = 1;
      qword_27C8D94D8 = AGCLLVMUserObjectShaderBase::buildDispatchSimdgroupsPerThreadgroup;
      qword_27C8D94E0 = 0;
      dword_27C8D94E8 = 2;
      word_27C8D94EC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D94F0, "air.get_quad_group");
      dword_27C8D9508 = 1;
      qword_27C8D9510 = AGCLLVMUserObjectShaderBase::buildQuadGroup;
      qword_27C8D9518 = 0;
      dword_27C8D9520 = 2;
      word_27C8D9524 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9526[2], "air.get_thread_index_in_simdgroup");
      dword_27C8D9540 = 1;
      qword_27C8D9548 = AGCLLVMUserObjectShaderBase::buildThreadIndexInSimdGroup;
      qword_27C8D9550 = 0;
      dword_27C8D9558 = 2;
      word_27C8D955C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9560, "air.get_simdgroup_index_in_threadgroup");
      dword_27C8D9578 = 1;
      qword_27C8D9580 = AGCLLVMUserObjectShaderBase::buildSimdGroupIndexInThreadgroup;
      qword_27C8D9588 = 0;
      dword_27C8D9590 = 2;
      word_27C8D9594 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9598, "air.get_dispatch_threads_per_threadgroup");
      dword_27C8D95B0 = 1;
      qword_27C8D95B8 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize;
      qword_27C8D95C0 = 0;
      dword_27C8D95C8 = 4;
      word_27C8D95CC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D95D0, "air.get_quadgroup_index_in_threadgroup");
      dword_27C8D95E8 = 1;
      qword_27C8D95F0 = AGCLLVMUserObjectShaderBase::buildQuadGroup;
      qword_27C8D95F8 = 0;
      dword_27C8D9600 = 2;
      word_27C8D9604 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9608, "air.get_thread_index_in_quadgroup");
      dword_27C8D9620 = 1;
      qword_27C8D9628 = AGCLLVMUserObjectShaderBase::buildQuadElement;
      qword_27C8D9630 = 0;
      dword_27C8D9638 = 2;
      word_27C8D963C = 0;
      __cxa_atexit(__cxx_global_array_dtor_586, 0, &dword_20E4E1000);
    }

    v4 = 18;
    v5 = &dword_27C8D9268;
    do
    {
      if (*(v5 - 1) >= 0)
      {
        v6 = *(v5 - 1);
      }

      else
      {
        v6 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v6 + 4);
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v6)
      {
        if (*(v5 - 1) >= 0)
        {
          v8 = v5 - 6;
        }

        else
        {
          v8 = *(v5 - 3);
        }

        memmove(p_p, v8, v6);
      }

      strcpy(p_p + v6, ".i32");
      if (v19 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v19 >= 0)
      {
        v10 = SHIBYTE(v19);
      }

      else
      {
        v10 = v18;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v22, v9, v10, v5);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }

      if (*(v5 - 1) >= 0)
      {
        v11 = *(v5 - 1);
      }

      else
      {
        v11 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v11 + 4);
      if (v19 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if (v11)
      {
        if (*(v5 - 1) >= 0)
        {
          v13 = v5 - 6;
        }

        else
        {
          v13 = *(v5 - 3);
        }

        memmove(v12, v13, v11);
      }

      strcpy(v12 + v11, ".i16");
      if (v19 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (v19 >= 0)
      {
        v15 = SHIBYTE(v19);
      }

      else
      {
        v15 = v18;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v22, v14, v15, v5);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }

      v5 += 14;
      --v4;
    }

    while (v4);
    LODWORD(__p) = 1;
    v18 = AGCLLVMUserObjectShaderBase::getEmulationPayloadBuffer;
    v19 = 0;
    v20 = 1;
    v21 = 0;
    AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v22, "agc.gpe.get_payload_buffer", 26, &__p);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v26);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v25);
    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v2;
}

llvm::Function *AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = *MEMORY[0x277D85DE8];
  result = llvm::Module::getFunction();
  if (result)
  {
    v7 = *(a4 + 24);
    v80 = result;
    if (v7 == 12)
    {
      for (i = *(result + 1); i; *(a1 + 64) = 0)
      {
        v11 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v11);
        v12 = *(a1 + 464) + *(**(a1 + 464) - 24);
        *v94 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v94[2], (a1 + 8));
        LODWORD(v94[3]) = *(a1 + 104);
        AGCLLVMBuilder::InsertPoint::restoreIP(v94, v12 + 1712);
        if (v94[2])
        {
          llvm::MetadataTracking::untrack();
        }

        v13 = *(a4 + 8);
        v14 = *(a4 + 16);
        v15 = (*(a1 + 464) + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, v11);
        *(a1 + 56) = 0;
      }

      return llvm::Function::eraseFromParent(v80);
    }

    if (v7 == 11)
    {
      v8 = *(a4 + 8);
      if (v8)
      {
        v9 = strlen(*(a4 + 8));
        v94[0] = &v94[3];
        *&v94[1] = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v94, v8, &v8[v9]);
      }

      else
      {
        v94[2] = 64;
        v94[0] = &v94[3];
        v94[1] = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v94, ".", "");
      if (v94[2] < v94[1])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v94[0] != &v94[3])
      {
        free(v94[0]);
      }

      return llvm::Function::eraseFromParent(v80);
    }

    v16 = **(*(result + 3) + 16);
    v17 = ((*(v16 + 8) & 0xFE) == 18) & *(a4 + 29);
    if (v17 == 1)
    {
      v18 = *(v16 + 32);
    }

    else
    {
      v18 = 1;
    }

    v81 = v18;
    v79 = *(a1 + 104);
    v19 = *(result + 1);
    if (!v19)
    {
LABEL_112:
      *(a1 + 104) = v79;
      return llvm::Function::eraseFromParent(v80);
    }

    v83 = a4;
    while (1)
    {
      v20 = *(v19 + 24);
      v21 = *(v19 + 8);
      if (*a4 == 1)
      {
        v22 = 0;
      }

      else
      {
        if (*a4 != 2)
        {
          goto LABEL_23;
        }

        v22 = 121;
      }

      *(a1 + 104) = v22;
LABEL_23:
      v82 = v21;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v20);
      v23 = llvm::UndefValue::get();
      if (v81)
      {
        for (j = 0; j != v81; ++j)
        {
          v84 = v23;
          v96 = 0;
          v95 = 0u;
          memset(v94, 0, sizeof(v94));
          v25 = llvm::CallBase::arg_end(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
          if ((v25 & 0x1FFFFFFFE0) != 0)
          {
            v26 = (v25 >> 5);
            v27 = v94;
            v28 = v20;
            do
            {
              v29 = (v28 - 32 * (*(v20 + 5) & 0x7FFFFFF));
              v30 = *v29;
              *v27 = *v29;
              if (v17 && (*(*v30 + 8) & 0xFE) == 0x12)
              {
                v93 = 257;
                v31 = llvm::ConstantInt::get();
                *v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v30, v31, &PrimitiveSizeInBits);
              }

              ++v27;
              v28 = (v28 + 32);
              --v26;
            }

            while (v26);
          }

          if (*(v83 + 28))
          {
            v32 = *v94[0];
            if ((*(*v94[0] + 8) & 0xFE) == 0x12)
            {
              v32 = **(v32 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
            v92 = v33;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v34 = 0;
            }

            else
            {
              v35 = *(a1 + 168);
              if ((*(*v94[0] + 8) & 0xFE) == 0x12)
              {
                v35 = llvm::FixedVectorType::get();
              }

              if ((v25 & 0x1FFFFFFFE0) != 0)
              {
                v36 = (v25 >> 5);
                v37 = v94;
                do
                {
                  v38 = *v37;
                  v93 = 257;
                  *v37++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v38, v35, &PrimitiveSizeInBits);
                  --v36;
                }

                while (v36);
              }

              v34 = 1;
            }
          }

          else
          {
            v34 = 0;
          }

          if (llvm::FPMathOperator::classof(v20))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v20);
          }

          else
          {
            FastMathFlags = 0;
          }

          v40 = *(a1 + 464) + *(**(a1 + 464) - 24);
          v88 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (a1 + 8));
          v90 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v88, v40 + 1712);
          if (v89)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v42 = *(v83 + 24);
          if (v42 > 5)
          {
            if (v42 <= 7)
            {
              if (v42 != 6)
              {
                v55 = *(v83 + 8);
                v56 = *(v83 + 16);
                v57 = v94[0];
                v58 = v94[1];
                v59 = v94[2];
                v60 = (*(a1 + 464) + (v56 >> 1));
                if ((v56 & 1) == 0)
                {
                  goto LABEL_97;
                }

                v68 = (*(*v60 + v55))(v60, v94[0], v94[1], v94[2]);
LABEL_98:
                FPTrunc = v68;
                goto LABEL_99;
              }

              v64 = *(v83 + 8);
              v65 = *(v83 + 16);
              v66 = (*(a1 + 464) + (v65 >> 1));
              if (v65)
              {
                v64 = *(*v66 + v64);
              }

              v75 = v64(v66, v94[0], v94[1], FastMathFlags);
              goto LABEL_89;
            }

            switch(v42)
            {
              case 8:
                v69 = *(v83 + 8);
                v70 = *(v83 + 16);
                v71 = (*(a1 + 464) + (v70 >> 1));
                if (v70)
                {
                  v69 = *(*v71 + v69);
                }

                v75 = v69(v71, v94[0], v94[1], v94[2], FastMathFlags);
LABEL_89:
                FPTrunc = v75;
                break;
              case 9:
                v55 = *(v83 + 8);
                v74 = *(v83 + 16);
                v60 = (*(a1 + 464) + (v74 >> 1));
                if (v74)
                {
                  v55 = *(*v60 + v55);
                }

                v57 = v94;
                v58 = &unk_20E75F419;
                v59 = 0;
LABEL_97:
                v68 = v55(v60, v57, v58, v59);
                goto LABEL_98;
              case 10:
                v48 = *(v83 + 8);
                v49 = *(v83 + 16);
                v50 = (*(a1 + 464) + (v49 >> 1));
                if (v49)
                {
                  v48 = *(*v50 + v48);
                }

                v68 = v48(v50, *v20, v94, &unk_20E75F419, 0);
                goto LABEL_98;
            }
          }

          else
          {
            if (v42 > 2)
            {
              if (v42 != 3)
              {
                if (v42 == 4)
                {
                  v72 = (v94[0] + 24);
                  if (*(v94[0] + 8) >= 0x41u)
                  {
                    v72 = *v72;
                  }

                  v46 = *v72;
                  v43 = *(v83 + 8);
                  v73 = *(v83 + 16);
                  v45 = *v20;
                  v47 = (*(a1 + 464) + (v73 >> 1));
                  if (v73)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                else
                {
                  v43 = *(v83 + 8);
                  v44 = *(v83 + 16);
                  v45 = v94[0];
                  v46 = v94[1];
                  v47 = (*(a1 + 464) + (v44 >> 1));
                  if (v44)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                v68 = v43(v47, v45, v46);
                goto LABEL_98;
              }

              v51 = *(v83 + 8);
              v67 = *(v83 + 16);
              v53 = v94[0];
              v54 = (*(a1 + 464) + (v67 >> 1));
              if ((v67 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

            if (v42 == 1)
            {
              v61 = *(v83 + 8);
              v62 = *(v83 + 16);
              v63 = (*(a1 + 464) + (v62 >> 1));
              if (v62)
              {
                v61 = *(*v63 + v61);
              }

              v68 = v61(v63);
              goto LABEL_98;
            }

            if (v42 == 2)
            {
              v51 = *(v83 + 8);
              v52 = *(v83 + 16);
              v53 = *v20;
              v54 = (*(a1 + 464) + (v52 >> 1));
              if ((v52 & 1) == 0)
              {
LABEL_73:
                v68 = v51(v54, v53);
                goto LABEL_98;
              }

LABEL_72:
              v51 = *(*v54 + v51);
              goto LABEL_73;
            }
          }

LABEL_99:
          v76 = *(a1 + 464) + *(**(a1 + 464) - 24);
          v85 = *(v76 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v76 + 1712));
          v87 = *(v76 + 1808);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v85, a1 + 8);
          if (v86)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v34)
          {
            v77 = *v20;
            if (v17 && (*(v77 + 8) & 0xFE) == 0x12)
            {
              v77 = **(v77 + 16);
            }

            v93 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v77, &PrimitiveSizeInBits);
          }

          if (v17)
          {
            v93 = 257;
            v78 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v84, FPTrunc, v78, &PrimitiveSizeInBits);
          }

          v23 = FPTrunc;
        }
      }

      if (*v20 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v20);
      a4 = v83;
      v19 = v82;
      if (!v82)
      {
        goto LABEL_112;
      }
    }
  }

  return result;
}