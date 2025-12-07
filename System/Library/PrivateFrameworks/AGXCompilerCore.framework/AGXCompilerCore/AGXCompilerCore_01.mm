BOOL parseMDAccess(uint64_t a1, _DWORD *a2, char *a3)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.read"))
  {
    v6 = 1;
  }

  else if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.write"))
  {
    v6 = 2;
  }

  else
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.read_write");
    if (!result)
    {
      return result;
    }

    v6 = 3;
  }

  *a3 = v6;
  ++*a2;
  return 1;
}

void AGCLLVMUserObject::replaceBuiltinArguments(AGCLLVMUserObject *this)
{
  v1 = this;
  AGCLLVMUserObject::getBuiltinArgMap(this);
  v2 = *(v1 + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(v1 + 21));
    v4 = *(v1 + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(v1 + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    v47 = *(v2 + 88) + 40 * *(v2 + 96);
    v48 = v1 + 1712;
    v46 = v1 + 1904;
    v6 = v1 + 1704;
    do
    {
      v7 = *(*(v1 + 10) + 8 * *(v3 + 32));
      if (v7 && *(v3 + 8))
      {
        String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
        v10 = v9;
        v11 = (*(*(v1 + *(*v1 - 24)) + 80))(v1 + *(*v1 - 24)) == 27 && v10 == 15;
        if (!v11 || (*String == 0x74736E692E726961 ? (v12 = *(String + 7) == 0x64695F65636E6174) : (v12 = 0), !v12))
        {
          Key = llvm::StringMapImpl::FindKey();
          v14 = Key;
          if (Key != -1 && Key != dword_28117E618)
          {
            v16 = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
            v17 = *(*(v1 + 21) + 80);
            if (v17)
            {
              v18 = v17 - 24;
            }

            else
            {
              v18 = 0;
            }

            v19 = *(v18 + 40);
            if (v19)
            {
              v20 = (v19 - 24);
            }

            else
            {
              v20 = 0;
            }

            llvm::IRBuilderBase::SetInsertPoint(&v48[*(*v1 - 24)], v20);
            v21 = *v3;
            if ((*(*v3 + 8) & 0xFE) == 0x12)
            {
              v21 = **(v21 + 16);
            }

            v22 = *(v16 + 8 * v14);
            llvm::StringRef::str(&v50, v22 + 8);
            if (v21 == *&v46[*(*v1 - 24)])
            {
              v23 = ".i32";
            }

            else
            {
              v23 = ".i16";
            }

            v24 = std::string::append(&v50, v23);
            v25 = v24->__r_.__value_.__r.__words[2];
            *__p = *&v24->__r_.__value_.__l.__data_;
            v53 = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            v26 = v1 + *(*v1 - 24);
            if (v53 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            if (v53 >= 0)
            {
              v28 = SHIBYTE(v53);
            }

            else
            {
              v28 = __p[1];
            }

            v49 = v3;
            if (*(v22 + 24) == 1)
            {
              inserted = AGCLLVMBuilder::getOrInsertFunction<>((v26 + 1704), v27, v28, v21);
              v30 = *(*v1 - 24);
              v51 = 257;
              llvm::IRBuilderBase::CreateCall(&v48[v30], *(inserted + 24), inserted, 0, 0, &v50);
            }

            else
            {
              v31 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v26 + 1704), v27, v28, v21, *(v26 + 238));
              if ((*(*v3 + 8) & 0xFE) == 0x12)
              {
                v32 = *(*v3 + 32);
                InsertElement = llvm::UndefValue::get();
                if (v32)
                {
                  for (i = 0; i != v32; ++i)
                  {
                    v35 = (*(*v1 + 320))(v1, v31, v21, v7, i);
                    v36 = *(*v1 - 24);
                    v37 = v1;
                    v38 = v7;
                    v39 = v32;
                    v40 = v31;
                    v41 = v21;
                    v42 = v6;
                    v43 = &v6[v36];
                    v51 = 257;
                    v44 = llvm::ConstantInt::get();
                    v45 = (v43 + 8);
                    v6 = v42;
                    v21 = v41;
                    v31 = v40;
                    v32 = v39;
                    v7 = v38;
                    v1 = v37;
                    InsertElement = llvm::IRBuilderBase::CreateInsertElement(v45, InsertElement, v35, v44, &v50);
                  }
                }
              }

              else
              {
                (*(*v1 + 320))(v1, v31, v21, v7, 0);
              }
            }

            v3 = v49;
            llvm::Value::replaceAllUsesWith();
            if (SHIBYTE(v53) < 0)
            {
              operator delete(__p[0]);
            }

            v5 = v47;
          }
        }
      }

      v3 += 40;
    }

    while (v3 != v5);
  }
}

void AGCLLVMUserObject::getBuiltinArgMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map = 0;
    *&dword_28117E618 = 0;
    qword_28117E620 = 0x2000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map, &dword_20E4E1000);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::__tree<llvm::CallGraphNode const*>::__emplace_unique_key_args<llvm::CallGraphNode const*,llvm::CallGraphNode const* const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::instructionIsIndirectOrExternCall(uint64_t a1, const llvm::Function *a2)
{
  if (*(a1 + 16) != 84)
  {
    return 0;
  }

  v2 = *(a1 - 32);
  if (v2 && !*(v2 + 16) && *(v2 + 24) == *(a1 + 72))
  {
    return AGCLLVMUserObject::functionIsUserExternDeclaration(*(a1 - 32), a2);
  }

  else
  {
    return 1;
  }
}

uint64_t AGCLLVMUserObject::functionIsUserExternDeclaration(AGCLLVMUserObject *this, const llvm::Function *a2)
{
  result = llvm::GlobalValue::isDeclaration(this);
  if (result)
  {
    if ((*(this + 16) & 0x200F) != 0)
    {
      return 0;
    }

    Name = llvm::Value::getName(this);
    if (v5 >= 4 && *Name == 778266465)
    {
      return 0;
    }

    v6 = llvm::Value::getName(this);
    if (v7 >= 4 && *v6 == 779250017)
    {
      return 0;
    }

    else
    {
      v8 = llvm::Value::getName(this);
      return v9 < 4 || *v8 != 779642721;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *std::vector<llvm::CallGraphNode const*>::vector[abi:nn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(a3);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

llvm::ValueHandleBase *std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>::pair[abi:nn200100](llvm::ValueHandleBase *this, uint64_t a2)
{
  *this = 0;
  *(this + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::reset(this);
    llvm::ValueHandleBase::ValueHandleBase(this, 3u, a2);
    *(this + 24) = 1;
  }

  *(this + 4) = *(a2 + 32);
  return this;
}

uint64_t llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::reset(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(v1 + 24) = 0;
  }

  return this;
}

void std::vector<llvm::CallGraphNode const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t AGCLLVMUserObject::mayBeCalledFromIntersectionFunction(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v3 = *(*(v2 + 271) + 1908);
  if (v3)
  {
    if ((v2[4577] & 1) != 0 || (*(*v2 + 80))(v2) == 27)
    {
      LOBYTE(v3) = 0;
    }

    else if (*(this + *(*this - 24) + 5148) && ((v5 = *(this + 300), (*(v5 + 51) & 1) != 0) || (*(v5 + 48) & 1) != 0))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = *(this + 15);
    }
  }

  return v3 & 1;
}

char *llvm::PassInfoMixin<InitCompileFragmentShaderPass>::name()
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

  v2 = &aStringrefLlvmG_43[v1];
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

uint64_t AGCLLVMObject::getDefaultRoundingMode(AGCLLVMObject *this)
{
  v2 = (*(*this + 232))(this);
  if (v2)
  {
    return v2;
  }

  if (*(*(this + 271) + 1888))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_FLOAT_TO_FLOAT_RTZ_HW", v3);
    if (Value)
    {
      if (*Value != 48)
      {
        if (atoi(Value))
        {
          v4 = 1;
        }

        else
        {
          v4 = v4;
        }
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v6 = AGCEnv::getValue("AGC_DEFAULT_ROUNDING_MODE", v3);
    if (v6)
    {
      v7 = v6;
      v2 = atoi(v6);
      if ((v2 - 1) < 2)
      {
        return v2;
      }

      v8 = 0;
      for (i = 1; ; i = 2)
      {
        v10 = v8;
        if (!strcasecmp(v7, _AGCFPRoundingModeStrings[i]))
        {
          break;
        }

        v8 = 1;
        if (v10)
        {
          return v4;
        }
      }

      return i;
    }
  }

  return v4;
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinsModuleForSourceModule(AGCLLVMBuiltInFileReaderImpl *this, llvm::Module *a2)
{
  v18 = *a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = a2 + 24;
  v4 = *(a2 + 4);
  if (v4 != a2 + 24)
  {
    do
    {
      if (v4)
      {
        v5 = (v4 - 56);
      }

      else
      {
        v5 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v5))
      {
        v19[0] = llvm::Value::getName(v5);
        v19[1] = v6;
        llvm::StringRef::str(&v20, v19);
        v7 = v23;
        if (v23 >= v24)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v24 - v22) >> 3) > v10)
          {
            v10 = 0x5555555555555556 * ((v24 - v22) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v24 - v22) >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          v25.__end_cap_.__value_ = &v22;
          if (v11)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v11);
          }

          v12 = 8 * ((v23 - v22) >> 3);
          *v12 = v20;
          *(v12 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v8 = 24 * v9 + 24;
          v13 = (24 * v9 - (v23 - v22));
          memcpy((v12 - (v23 - v22)), v22, v23 - v22);
          v14 = v22;
          v15 = v24;
          v22 = v13;
          v23 = v8;
          v24 = 0;
          v25.__first_ = v14;
          v25.__end_ = v14;
          v25.__end_cap_.__value_ = v15;
          v25.__begin_ = v14;
          std::__split_buffer<std::string>::~__split_buffer(&v25);
        }

        else
        {
          *v23 = v20;
          *(v7 + 2) = v21;
          v8 = (v7 + 24);
        }

        v23 = v8;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  v16 = (*(*this + 16))(this, v18, &v22);
  v25.__first_ = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v25);
  return v16;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(AGCLLVMBuiltInFileReaderImpl *this, llvm::LLVMContext *a2, const char *__s2)
{
  v23 = *MEMORY[0x277D85DE8];
  LOBYTE(v5) = *__s2;
  if (*__s2)
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      v6 += v8 * v5;
      v8 *= 2;
      v5 = __s2[v7++];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = (*(this + 2) + 4 * (v6 % *(this + 2)));
  do
  {
    v10 = *v9;
    if (v10 == -1)
    {
      return 0;
    }

    v9 = (*(this + 4) + 16 * v10);
  }

  while (strcmp(v9[1], __s2));
  v11 = *(v9 + 1);
  if (v11 == -1)
  {
    return 0;
  }

  v12 = *(this + 8);
  if (v11 + 4 > v12 || v12 < (*(*(this + 6) + v11) + v11 + 4))
  {
    return 0;
  }

  llvm::MemoryBuffer::getMemBuffer();
  llvm::MemoryBuffer::getMemBufferRef(v19, v17);
  llvm::parseBitcodeFile();
  if (v22)
  {
    v15 = v21;
    v21 = 0;
    v18 = v15;
    llvm::errorToErrorCodeAndEmitErrors();
    v20 = -1;
    v19[1] = v16;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v21);
    v13 = 0;
  }

  else
  {
    v20 = 0;
    v13 = v21;
    v21 = 0;
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v21);
    v19[0] = 0;
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v19);
  }

  if (v17)
  {
    (*(*v17 + 8))();
  }

  return v13;
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinsModule(AGCLLVMBuiltInFileReaderImpl *this, llvm::LLVMContext *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = v3;
    if (*(v3 + 23) < 0)
    {
      v8 = *v3;
    }

    BuiltinModuleByName = AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(this, a2, v8);
    if (BuiltinModuleByName)
    {
      if (v7)
      {
        v23 = BuiltinModuleByName;
        v25 = 0;
        v10 = llvm::Linker::linkModules();
        std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v24);
        std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v23);
        if (v10)
        {
          abort();
        }
      }

      else
      {
        v7 = BuiltinModuleByName;
      }
    }

    v3 += 24;
  }

  while (v3 != v4);
  if (v7)
  {
    v11 = v7 + 8;
    v12 = *(v7 + 16);
    if (v12 != v7 + 8)
    {
      do
      {
        if (v12)
        {
          v13 = (v12 - 56);
        }

        else
        {
          v13 = 0;
        }

        if ((*(v13 + 32) & 0xF) == 0)
        {
          v20[0] = llvm::Value::getName(v13);
          v20[1] = v14;
          llvm::StringRef::str(__p, v20);
          v15 = v22;
          if (v22 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          if (AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(this, a2, v16))
          {
            operator new();
          }

          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v12 = *(v12 + 8);
      }

      while (v12 != v11);
    }

    for (i = *(v7 + 16); i != v11; i = *(i + 8))
    {
      if (i)
      {
        v18 = (i - 56);
      }

      else
      {
        v18 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v18))
      {
        llvm::GlobalValue::setLinkage(v18, 0);
      }

      else
      {
        *(v18 + 8) = *(v18 + 8) & 0xFFFFBFC0 | 0x4007;
      }
    }
  }

  return v7;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AGCLLVMBuiltInFileReaderImpl::~AGCLLVMBuiltInFileReaderImpl(AGCLLVMBuiltInFileReaderImpl *this)
{
  *this = &unk_2825A9620;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(this + 2));
  free(*(this + 4));
}

{
  AGCLLVMBuiltInFileReaderImpl::~AGCLLVMBuiltInFileReaderImpl(this);

  JUMPOUT(0x20F331DC0);
}

llvm::Module *AGCLLVMCtx::loadMetalRuntime(uint64_t a1, uint64_t a2, llvm::Module *a3, int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v30 = &v42;
        std::string::basic_string[abi:nn200100]<0>(&v42, *(*(a1 + 32) + 32));
        v31 = std::string::insert(&v42, 0, "/");
        v43[0] = *v31;
        v31->__r_.__value_.__r.__words[0] = 0;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = v43;
        }

        else
        {
          v32 = v43[0].__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 1983) >= 0)
        {
          v33 = *(a1 + 1983);
        }

        else
        {
          v33 = *(a1 + 1968);
        }

        v34 = strlen(v32);
        std::string::basic_string[abi:nn200100](&v42, v33 + v34);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v42.__r_.__value_.__r.__words[0];
        }

        if (v33)
        {
          if (*(a1 + 1983) >= 0)
          {
            v35 = (a1 + 1960);
          }

          else
          {
            v35 = *(a1 + 1960);
          }

          memmove(v30, v35, v33);
        }

        if (v34)
        {
          memmove(v30 + v33, v32, v34);
        }

        v30->__r_.__value_.__s.__data_[v33 + v34] = 0;
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v42;
        }

        else
        {
          v36 = v42.__r_.__value_.__r.__words[0];
        }

        loadRuntime(v36, a3);
      }

      if (*(a1 + 1983) >= 0)
      {
        v18 = *(a1 + 1983);
      }

      else
      {
        v18 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v43, v18 + 16);
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = v43;
      }

      else
      {
        v19 = v43[0].__r_.__value_.__r.__words[0];
      }

      if (v18)
      {
        if (*(a1 + 1983) >= 0)
        {
          v20 = (a1 + 1960);
        }

        else
        {
          v20 = *(a1 + 1960);
        }

        memmove(v19, v20, v18);
      }

      v21 = v19 + v18;
      v22 = "/vft_rt.metallib";
      goto LABEL_78;
    }

    if (!a4)
    {
      v29 = (a1 + 1984);
      if (*(a1 + 2007) < 0)
      {
        v29 = *v29;
      }

      loadRuntime(v29, a3);
    }

    if (a4 == 1)
    {
      v12 = *(*(a1 + 32) + 40);
      if (*(a1 + 1983) >= 0)
      {
        v13 = *(a1 + 1983);
      }

      else
      {
        v13 = *(a1 + 1968);
      }

      v14 = strlen(*(*(a1 + 32) + 40));
      v15 = v43;
      std::string::basic_string[abi:nn200100](v43, v13 + v14);
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v43[0].__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if (*(a1 + 1983) >= 0)
        {
          v16 = (a1 + 1960);
        }

        else
        {
          v16 = *(a1 + 1960);
        }

        memmove(v15, v16, v13);
      }

      if (v14)
      {
        memmove(v15 + v13, v12, v14);
      }

      v15->__r_.__value_.__s.__data_[v13 + v14] = 0;
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = v43;
      }

      else
      {
        v17 = v43[0].__r_.__value_.__r.__words[0];
      }

LABEL_120:
      loadRuntime(v17, a3);
    }
  }

  else if (a4 > 6)
  {
    if (a4 == 7)
    {
      if (*(a1 + 1983) >= 0)
      {
        v37 = *(a1 + 1983);
      }

      else
      {
        v37 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v43, v37 + 24);
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = v43;
      }

      else
      {
        v38 = v43[0].__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (*(a1 + 1983) >= 0)
        {
          v39 = (a1 + 1960);
        }

        else
        {
          v39 = *(a1 + 1960);
        }

        memmove(v38, v39, v37);
      }

      strcpy(v38 + v37, "/tex_atomic_emu.metallib");
      goto LABEL_117;
    }

    if (a4 == 8)
    {
      if (*(a1 + 1983) >= 0)
      {
        v23 = *(a1 + 1983);
      }

      else
      {
        v23 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v43, v23 + 16);
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = v43;
      }

      else
      {
        v24 = v43[0].__r_.__value_.__r.__words[0];
      }

      if (v23)
      {
        if (*(a1 + 1983) >= 0)
        {
          v25 = (a1 + 1960);
        }

        else
        {
          v25 = *(a1 + 1960);
        }

        memmove(v24, v25, v23);
      }

      v21 = v24 + v23;
      v22 = "/tensor.metallib";
      goto LABEL_78;
    }
  }

  else
  {
    if ((a4 - 4) < 2)
    {
      if (*(a1 + 1983) >= 0)
      {
        v8 = *(a1 + 1983);
      }

      else
      {
        v8 = *(a1 + 1968);
      }

      v9 = &v41;
      std::string::basic_string[abi:nn200100](&v41, v8 + 14);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v41.__r_.__value_.__r.__words[0];
      }

      if (v8)
      {
        if (*(a1 + 1983) >= 0)
        {
          v10 = (a1 + 1960);
        }

        else
        {
          v10 = *(a1 + 1960);
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, "/raytracing_rt");
      if (a4 == 5)
      {
        std::string::append(&v41, "_dora");
      }

      std::string::append(&v41, ".metallib");
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v41;
      }

      else
      {
        v11 = v41.__r_.__value_.__r.__words[0];
      }

      loadRuntime(v11, a3);
    }

    if (a4 == 6)
    {
      if (*(a1 + 1983) >= 0)
      {
        v26 = *(a1 + 1983);
      }

      else
      {
        v26 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v43, v26 + 16);
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = v43;
      }

      else
      {
        v27 = v43[0].__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if (*(a1 + 1983) >= 0)
        {
          v28 = (a1 + 1960);
        }

        else
        {
          v28 = *(a1 + 1960);
        }

        memmove(v27, v28, v26);
      }

      v21 = v27 + v26;
      v22 = "/gpe_rt.metallib";
LABEL_78:
      *v21 = *v22;
      v21[16] = 0;
LABEL_117:
      if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = v43;
      }

      else
      {
        v17 = v43[0].__r_.__value_.__r.__words[0];
      }

      goto LABEL_120;
    }
  }

  return v4;
}

uint64_t AGCLLVMUserObject::linkHelperRuntime(uint64_t *a1, int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 211);
  v6 = *(v4 + 267);
  if (*(a1 + 199) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, a1[22], a1[23]);
  }

  else
  {
    v62 = *(a1 + 22);
  }

  v63 = *(a1 + 25);
  v64 = a1[27];
  v65 = 1;
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(v5, v4, v6, a2);
  v8 = MetalRuntime;
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (MetalRuntime)
    {
      goto LABEL_6;
    }

    return 1;
  }

  operator delete(v62.__r_.__value_.__l.__data_);
  if (!v8)
  {
    return 1;
  }

LABEL_6:
  v9 = **(a1 + *(*a1 - 24) + 2136);
  v10 = *v8;
  v11 = llvm::LLVMContext::supportsTypedPointers(v9);
  if (v11 == llvm::LLVMContext::supportsTypedPointers(v10))
  {
    for (i = v8[4]; i != v8 + 3; i = i[1])
    {
      if (i)
      {
        v19 = (i - 7);
      }

      else
      {
        v19 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v19) && (*(v19 + 34) & 0x80) != 0 || (llvm::GlobalValue::isDeclaration(v19) & 1) == 0)
      {
        llvm::GlobalValue::setLinkage(v19, 3);
      }

      if ((*(v19 + 32) & 0xFu) - 7 >= 2)
      {
        llvm::GlobalValue::setVisibility(v19);
      }
    }

    v20 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
    v21 = *(v20 + 8);
    if (v21)
    {
      v22 = strlen(*(v20 + 8));
    }

    else
    {
      v22 = 0;
    }

    llvm::Module::setTargetTriple(v8, v21, v22);
    v23 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
    if (*(v23 + 16))
    {
      strlen(*(v23 + 16));
    }

    llvm::Module::setDataLayout();
    v53 = v8;
    v67 = 0;
    v24 = llvm::Linker::linkModules();
    std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v66);
    if (v53)
    {
      v25 = MEMORY[0x20F330EC0]();
      MEMORY[0x20F331DC0](v25, 0x10B2C407FF26C1CLL);
    }

    if (v24)
    {
      return v24 ^ 1u;
    }

    v26 = *a1;
    v27 = a1 + *(*a1 - 24);
    v28 = *(*(v27 + 271) + 1865);
    v29 = *(v27 + 267);
    v30 = *(v29 + 32);
    v31 = v29 + 24;
    if (v28 == 1)
    {
      if (v30 != v31)
      {
        do
        {
          v32 = *(v30 + 8);
          if (v30)
          {
            v33 = v30 - 56;
          }

          else
          {
            v33 = 0;
          }

          if (v33 != a1[20])
          {
            Name = llvm::Value::getName((v30 - 56));
            if (v35 != 22 || (*Name == 0x626F6C672E636761 ? (v36 = Name[1] == 0x74736E6F635F6C61) : (v36 = 0), v36 ? (v37 = *(Name + 14) == 0x726F746375727473) : (v37 = 0), !v37))
            {
              v38 = a1 + *(*a1 - 24);
              llvm::Value::getName((v30 - 56));
              Key = llvm::StringMapImpl::FindKey();
              if (Key == -1 || Key == *(v38 + 1286))
              {
                v40 = *(v30 - 24);
                if ((v40 & 0xF) != 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v40 = *(v30 - 24);
              }

              if ((v40 & 0x30) == 0x10)
              {
LABEL_57:
                if (!*(v30 - 48))
                {
                  llvm::Function::eraseFromParent((v30 - 56));
                }
              }
            }
          }

          v30 = v32;
        }

        while (v32 != v31);
      }

      return v24 ^ 1u;
    }

    if (v30 == v31)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v41 = *(v30 + 8);
      if (v30)
      {
        v42 = v30 - 56;
      }

      else
      {
        v42 = 0;
      }

      if (v42 != a1[20])
      {
        v43 = *a1;
        v44 = *(*(a1 + *(*a1 - 24) + 2168) + 1865);
        if ((*(v30 - 23) & 0x20) != 0)
        {
          isDeclaration = 1;
        }

        else
        {
          isDeclaration = llvm::GlobalValue::isDeclaration((v30 - 56));
          v43 = *a1;
        }

        v46 = a1 + *(v43 - 24);
        llvm::Value::getName((v30 - 56));
        v47 = llvm::StringMapImpl::FindKey();
        if (v47 != -1 && v47 != *(v46 + 1286) || (*(a1 + 15) & 1) != 0)
        {
          llvm::GlobalValue::setLinkage(v30 - 56, 0);
LABEL_76:
          if (((isDeclaration | v44) & 1) == 0)
          {
            llvm::Function::addFnAttr();
          }

          goto LABEL_79;
        }

        if ((isDeclaration & 1) == 0)
        {
          *(v30 - 24) = *(v30 - 24) & 0xFFFFBFC0 | 0x4007;
        }

        if (*(v30 - 48))
        {
          goto LABEL_76;
        }

        llvm::Function::eraseFromParent((v30 - 56));
      }

LABEL_79:
      v30 = v41;
      if (v41 == v31)
      {
        v26 = *a1;
LABEL_81:
        v48 = *(a1 + *(v26 - 24) + 2136);
        v49 = *(v48 + 16);
        v50 = v48 + 8;
        if (v49 != v48 + 8)
        {
          do
          {
            v51 = *(v49 + 8);
            if (v49)
            {
              v52 = (v49 - 56);
            }

            else
            {
              v52 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v52) & 1) == 0)
            {
              if (*(v49 - 48))
              {
                *(v49 - 24) = *(v49 - 24) & 0xFFFFBFC0 | 0x4007;
              }

              else
              {
                llvm::GlobalVariable::eraseFromParent((v49 - 56));
              }
            }

            v49 = v51;
          }

          while (v51 != v50);
          v26 = *a1;
        }

        AGCLLVMCtx::runInliner(*(a1 + *(v26 - 24) + 1688), a1 + *(v26 - 24), *(a1 + *(v26 - 24) + 2136));
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v56);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "Shader has opaque pointer enabled [", 35);
  v12 = llvm::LLVMContext::supportsTypedPointers(v9);
  v13 = MEMORY[0x20F331C00](&v57, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "], cannot link with runtime has opaque pointer [", 48);
  v14 = llvm::LLVMContext::supportsTypedPointers(v10);
  MEMORY[0x20F331C00](v13, v14);
  std::stringbuf::str();
  if (v55 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  std::string::append((a1 + *(*a1 - 24) + 1656), p_p);
  if (v55 < 0)
  {
    operator delete(__p);
  }

  v56[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v56 + *(v56[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v57 = v16;
  v58 = MEMORY[0x277D82878] + 16;
  if (v60 < 0)
  {
    operator delete(v59[7].__locale_);
  }

  v58 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v59);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v61);
  return 0;
}

uint64_t AGCLLVMUserObject::linkMetalRuntime(AGCLLVMUserObject *this, int a2)
{
  if (*(this + 14))
  {
    return 1;
  }

  v34[13] = v2;
  v34[14] = v3;
  (*(**(this + *(*this - 24) + 2168) + 496))(&v33);
  v6 = v33;
  if (v33 != v34)
  {
    do
    {
      Function = llvm::Module::getFunction();
      if (Function)
      {
        v8 = Function;
        if (*(v6 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, v6[4], v6[5]);
        }

        else
        {
          v32 = *(v6 + 4);
        }

        std::string::insert(&v32, 0, "agx.");
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](v30, size + 5);
        if (v31 >= 0)
        {
          v10 = v30;
        }

        else
        {
          v10 = v30[0];
        }

        if (size)
        {
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v32;
          }

          else
          {
            v11 = v32.__r_.__value_.__r.__words[0];
          }

          memmove(v10, v11, size);
        }

        strcpy(v10 + size, ".fast");
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = v32.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](__p, v12 + 8);
        if (v29 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v12)
        {
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v32;
          }

          else
          {
            v14 = v32.__r_.__value_.__r.__words[0];
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, ".nonfast");
        v15 = *(v8 + 8);
        while (v15)
        {
          v16 = *(v15 + 24);
          v15 = *(v15 + 8);
          llvm::Instruction::getFastMathFlags(v16);
          llvm::Module::getOrInsertFunction();
          *(v16 + 9) = *(v17 + 24);
          llvm::CallBase::setCalledOperand(v16, v17);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v34);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v34[0]);
  v21 = this + *(*this - 24);
  v22 = *(v21 + 211);
  v23 = *(v21 + 267);
  if (*(this + 199) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(this + 22), *(this + 23));
  }

  else
  {
    v27 = *(this + 176);
  }

  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(v22, v21, v23, a2);
  v25 = MetalRuntime;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if (v25)
    {
      return AGCLLVMObject::linkCommon((this + *(*this - 24)), v25, *(*(this + *(*this - 24) + 2168) + 1865), *(this + 20));
    }
  }

  else if (MetalRuntime)
  {
    return AGCLLVMObject::linkCommon((this + *(*this - 24)), v25, *(*(this + *(*this - 24) + 2168) + 1865), *(this + 20));
  }

  return 1;
}

void AGCLLVMGen3TargetLowerer::getListOfFunctionsInMetalRuntimeWithFastAndNonFastVariants(uint64_t **a1@<X8>)
{
  v5[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v2, "air.fract.f16");
  std::string::basic_string[abi:nn200100]<0>(v3, "air.fract.v2f16");
  std::string::basic_string[abi:nn200100]<0>(v4, "air.fract.v3f16");
  std::string::basic_string[abi:nn200100]<0>(v5, "air.fract.v4f16");
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  operator new();
}

uint64_t llvm::IRBuilderBase::Insert<llvm::CastInst>(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = v6 + 16 * v5;
    do
    {
      llvm::Instruction::setMetadata();
      v6 += 16;
    }

    while (v6 != v7);
  }

  return a2;
}

uint64_t llvm::IRBuilderBase::CreateAlignedLoad(unsigned int **a1, llvm::Type *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, a2);
  }

  v10 = llvm::User::operator new(0x40);
  llvm::LoadInst::LoadInst();
  (*(*a1[10] + 16))(a1[10], v10, a5, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = v12 + 16 * v11;
    do
    {
      llvm::Instruction::setMetadata();
      v12 += 16;
    }

    while (v12 != v13);
  }

  return v10;
}

llvm::Instruction *llvm::IRBuilderBase::CreateGEP(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12[0] = a4;
  v9 = (*(**(this + 9) + 48))(*(this + 9), a2, a3, v12, 1, 0);
  if (!v9)
  {
    v13 = 257;
    v9 = llvm::GetElementPtrInst::Create(a2, a3, &v11, 1, v12);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v9, a5);
  }

  return v9;
}

llvm::Instruction *llvm::GetElementPtrInst::Create(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v9 = llvm::User::operator new(0x50);
  v10 = *a2;
  v11 = *(*a2 + 8);
  if ((v11 & 0xFE) == 0x12)
  {
    v10 = **(v10 + 16);
    v11 = *(v10 + 8);
  }

  v12 = (v11 >> 8);
  llvm::GetElementPtrInst::getIndexedType();
  if (*(v10 + 24))
  {
    llvm::PointerType::get();
  }

  else
  {
    llvm::PointerType::get(*v10, v12);
  }

  if (!*a2 || (*(*a2 + 8) & 0xFE) != 0x12)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v13 = 8 * a4;
    v14 = a3;
    while (1)
    {
      v15 = **v14;
      if (v15 && (*(v15 + 8) & 0xFE) == 18)
      {
        break;
      }

      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_16;
      }
    }
  }

  llvm::VectorType::get();
LABEL_16:
  llvm::Instruction::Instruction();
  *(v9 + 64) = a1;
  *(v9 + 72) = llvm::GetElementPtrInst::getIndexedType();
  llvm::GetElementPtrInst::init();
  return v9;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

char *llvm::PassInfoMixin<ReplaceTensorIntrinsicsPass>::name()
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

  v2 = &aStringrefLlvmG_81[v1];
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

uint64_t AGCLLVMObject::eraseLogicalRasterOrderGroupMetadata(AGCLLVMObject *this)
{
  result = (*(*this + 152))(this);
  if (result)
  {
    v3 = *(this + 267);
    v4 = v3 + 24;
    v5 = *(v3 + 32);
    if (v5 != v3 + 24)
    {
      do
      {
        v6 = v5 - 56;
        if (!v5)
        {
          v6 = 0;
        }

        v7 = v6 + 72;
        v8 = *(v6 + 80);
        if (v8 == v6 + 72)
        {
          v10 = 0;
        }

        else
        {
          do
          {
            v9 = v8 - 24;
            if (!v8)
            {
              v9 = 0;
            }

            v10 = *(v9 + 48);
            if (v10 != v9 + 40)
            {
              break;
            }

            v8 = *(v8 + 8);
          }

          while (v8 != v7);
        }

        while (v8 != v7)
        {
          if (v10)
          {
            v11 = v10 - 24;
          }

          else
          {
            v11 = 0;
          }

          if (*(v11 + 48) || (*(v11 + 23) & 0x20) != 0)
          {
            result = llvm::Instruction::getMetadataImpl();
            if (result)
            {
              v12 = *(result + 8);
              if (v12)
              {
                v13 = -8 * v12;
                while (1)
                {
                  v14 = *(result + v13);
                  if (*v14 - 3 >= 0xFFFFFFFE && *(*(v14 + 16) + 16) == 16)
                  {
                    break;
                  }

                  v13 += 8;
                  if (!v13)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else
              {
LABEL_24:
                result = llvm::Instruction::setMetadata();
              }
            }
          }

          v10 = *(v10 + 8);
          v15 = v8 - 24;
          if (!v8)
          {
            v15 = 0;
          }

          while (v10 == v15 + 40)
          {
            v8 = *(v8 + 8);
            if (v8 == v7)
            {
              break;
            }

            v15 = v8 - 24;
            if (!v8)
            {
              v15 = 0;
            }

            v10 = *(v15 + 48);
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  return result;
}

char *llvm::PassInfoMixin<TranslatorLegacyPostRuntimeLinkingPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x58)
  {
    v1 = v0;
  }

  else
  {
    v1 = 88;
  }

  v2 = &aStringrefLlvmG_83[v1];
  v3 = 88 - v1;
  if ((88 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 88 - v1;
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

uint64_t AGCLLVMBuilder::findPrefix(char *__s1, size_t a2, char **a3, char **a4, void *__s2, size_t __n)
{
  if (a2 < __n)
  {
    return 0;
  }

  if (__n && memcmp(__s1, __s2, __n))
  {
    return 0;
  }

  v12 = &__s1[__n];
  v13 = a2 >= __n;
  v14 = (a2 - __n);
  if (v14 != 0 && v13 && (v15 = memchr(v12, 46, v14)) != 0 && (v16 = v15 - v12, v15 - v12 != -1))
  {
    if (v14 >= v16)
    {
      v17 = (v15 - v12);
    }

    else
    {
      v17 = v14;
    }

    *a3 = v12;
    a3[1] = v17;
    if (v14 >= v16 + 1)
    {
      v18 = (v16 + 1);
    }

    else
    {
      v18 = v14;
    }

    v19 = &v18[v12];
    v20 = (v14 - v18);
  }

  else
  {
    v20 = 0;
    *a3 = v12;
    a3[1] = v14;
    v19 = &unk_20E75F419;
  }

  *a4 = v19;
  a4[1] = v20;
  return 1;
}

uint64_t AGCLLVMUserObject::replaceIndirectResources(AGCLLVMUserObject *this)
{
  v79[4] = *MEMORY[0x277D85DE8];
  v1 = *(this + *(*this - 24) + 2136);
  v2 = *(v1 + 32);
  v3 = v1 + 24;
  if (v2 == v1 + 24)
  {
    return 1;
  }

  v5 = this + 1712;
  v72 = v1 + 24;
  do
  {
    if (v2)
    {
      v6 = (v2 - 56);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 8);
    v73 = v6;
    Name = llvm::Value::getName(v6);
    __s1 = 0;
    v76 = 0;
    v74[0] = 0;
    v74[1] = 0;
    if (!AGCLLVMBuilder::findPrefix(Name, v9, &__s1, v74, "air.", 4uLL))
    {
      goto LABEL_105;
    }

    v10 = v76;
    if (v76 < 0x17)
    {
      goto LABEL_36;
    }

    v11 = __s1;
    v12 = __s1 + v76;
    if (*(__s1 + v76 - 23) == 0x656C62697369765FLL && *(__s1 + v76 - 15) == 0x6F6974636E75665FLL && *(__s1 + v76 - 8) == 0x656C6261745F6E6FLL)
    {
      if (v76 == 31 && (*__s1 == 0x6C6C756E5F746567 ? (v15 = *(__s1 + 1) == 0x656C62697369765FLL) : (v15 = 0), v15 ? (v16 = *(__s1 + 2) == 0x6F6974636E75665FLL) : (v16 = 0), v16 ? (v17 = *(__s1 + 23) == 0x656C6261745F6E6FLL) : (v17 = 0), v17))
      {
        v64 = *(v2 - 48);
        if (!v64)
        {
          if (*(v12 - 28) != 0x65737265746E695FLL || *(v12 - 20) != 0x75665F6E6F697463 || *(v12 - 12) != 0x745F6E6F6974636ELL || *(v12 - 1) != 1701601889)
          {
            goto LABEL_49;
          }

          goto LABEL_112;
        }

        do
        {
          v65 = *(v64 + 8);
          v66 = *(v64 + 24);
          llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v66);
          llvm::ConstantInt::get();
          llvm::ConstantExpr::getIntToPtr();
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v66);
          v64 = v65;
        }

        while (v65);
      }

      else
      {
        for (i = *(v2 - 48); i; i = *(i + 8))
        {
          AGCLLVMUserObject::getCallOfCastedFunction(&v77, *(i + 24));
          v19 = v77;
          if (v78)
          {
            v20 = 8 * v78;
            do
            {
              v21 = *v19++;
              VisibleFunctionTableHeapGlobal = AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
              AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v21, 0, VisibleFunctionTableHeapGlobal, v23);
              v20 -= 8;
            }

            while (v20);
            v19 = v77;
          }

          if (v19 != v79)
          {
            free(v19);
          }
        }
      }
    }

    if (v10 >= 0x1C)
    {
      if (*(v12 - 28) != 0x65737265746E695FLL || *(v12 - 20) != 0x75665F6E6F697463 || *(v12 - 12) != 0x745F6E6F6974636ELL || *(v12 - 1) != 1701601889)
      {
        goto LABEL_49;
      }

      if (v10 == 36 && !memcmp(v11, "get_null_intersection_function_table", 0x24uLL))
      {
        if (*(v11 + 21) != 0x5F7265646E65725FLL || *(v11 + 28) != 0x646E616D6D6F635FLL)
        {
          v27 = v11 + 36;
          v29 = 36;
          v3 = v72;
LABEL_58:
          v31 = *(v27 - 2);
          v30 = *(v27 - 1);
          if (v31 == 0x657475706D6F635FLL && v30 == 0x646E616D6D6F635FLL)
          {
            goto LABEL_67;
          }

          goto LABEL_62;
        }

        v29 = 36;
LABEL_56:
        v3 = v72;
        goto LABEL_67;
      }

LABEL_112:
      v59 = *(v73 + 1);
      if (!v59)
      {
        goto LABEL_49;
      }

      do
      {
        v60 = *(v59 + 8);
        v61 = *(v59 + 24);
        IntersectionFunctionTableHeapGlobal = AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v61, 0, IntersectionFunctionTableHeapGlobal, v63);
        v59 = v60;
      }

      while (v60);
    }

LABEL_36:
    if (v10 <= 0xE)
    {
      v11 = __s1;
      v3 = v72;
      goto LABEL_98;
    }

    v11 = __s1;
LABEL_49:
    v27 = v11 + v10;
    if (*(v11 + v10 - 15) == 0x5F7265646E65725FLL && *(v11 + v10 - 8) == 0x646E616D6D6F635FLL)
    {
      v29 = v10;
      goto LABEL_56;
    }

    v3 = v72;
    if (v10 >= 0x10)
    {
      v29 = v10;
      goto LABEL_58;
    }

    v29 = 15;
LABEL_62:
    if (*(v11 + v29 - 15) != 0x646E616D6D6F635FLL || *(v11 + v29 - 8) != 0x7265666675625F64)
    {
      goto LABEL_89;
    }

LABEL_67:
    v34 = *(v73 + 1);
    if (!v34)
    {
      goto LABEL_89;
    }

    do
    {
      while (1)
      {
        v35 = *(v34 + 24);
        v34 = *(v34 + 8);
        llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v35);
        IndirectCommandBufferHeapGlobal = AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v35, 0, IndirectCommandBufferHeapGlobal, v37);
        if (v10 == 19)
        {
          break;
        }

        if (v10 == 20)
        {
          v38 = *v11 == 0x6D6F635F79706F63 && v11[1] == 0x6D6F635F65747570;
          if (v38 && *(v11 + 4) == 1684955501)
          {
            goto LABEL_87;
          }
        }

LABEL_77:
        if (!v34)
        {
          goto LABEL_88;
        }
      }

      if (*v11 != 0x6E65725F79706F63 || v11[1] != 0x6D6D6F635F726564 || *(v11 + 11) != 0x646E616D6D6F635FLL)
      {
        goto LABEL_77;
      }

LABEL_87:
      v42 = AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(this);
      AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v35, 2u, v42, v43);
    }

    while (v34);
LABEL_88:
    v29 = v10;
LABEL_89:
    if (v29 >= 0x13 && (*v11 == 0x657069705F746573 ? (v44 = v11[1] == 0x6174735F656E696CLL) : (v44 = 0), v44 ? (v45 = *(v11 + 11) == 0x5F65746174735F65) : (v45 = 0), v45 && (v54 = *(v73 + 1)) != 0))
    {
      do
      {
        v55 = *(v54 + 8);
        v56 = *(v54 + 24);
        llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v56);
        PipelineStateHeapGlobal = AGCLLVMUserObject::createPipelineStateHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v56, 2u, PipelineStateHeapGlobal, v58);
        v54 = v55;
      }

      while (v55);
    }

    else
    {
      v10 = v29;
    }

LABEL_98:
    if (v10 == 43)
    {
      v46 = v11;
      v47 = "get_unique_identifier_render_pipeline_state";
      v48 = 43;
LABEL_102:
      if (!memcmp(v46, v47, v48))
      {
        v49 = *(v73 + 1);
        if (v49)
        {
          do
          {
            v50 = *(v49 + 8);
            v51 = *(v49 + 24);
            llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v51);
            v52 = AGCLLVMUserObject::createPipelineStateHeapGlobal(this);
            AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v51, 0, v52, v53);
            v49 = v50;
          }

          while (v50);
        }
      }
    }

    else if (v10 == 44)
    {
      v46 = v11;
      v47 = "get_unique_identifier_compute_pipeline_state";
      v48 = 44;
      goto LABEL_102;
    }

LABEL_105:
    v2 = v7;
  }

  while (v7 != v3);
  return 1;
}

uint64_t AGCLLVMUserObject::replaceRaytracingFunctions(AGCLLVMUserObject *this)
{
  v140[4] = *MEMORY[0x277D85DE8];
  v140[0] = 0;
  v140[1] = 0;
  v140[2] = 0x1800000000;
  v2 = this + *(*this - 24);
  if (*(*(v2 + 271) + 1908) && (v2[4577] & 1) == 0)
  {
    AGCLLVMUserObject::createSCSIFTHeapGlobal(this);
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v3 != 27)
    {
      v4 = this + *(*this - 24);
      v5 = *(v4 + 271);
      v6 = *(v4 + 267);
      GlobalSCSLayoutGlobal = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
      v3 = (*(*v5 + 1360))(&v133, v5, v6, GlobalSCSLayoutGlobal);
      v8 = v134;
      *(this + 249) = v133;
      *(this + 250) = v8;
      *(this + 251) = v135;
    }

    AGCLLVMUserObject::getRaytracingFunctionMap(v3);
    AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
    SCSConfigurationBufferGlobal = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (SCSConfigurationBufferGlobal != 8)
    {
      SCSConfigurationBufferGlobal = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      if (SCSConfigurationBufferGlobal != 27)
      {
        SCSConfigurationBufferGlobal = AGCLLVMUserObject::createSCSConfigurationBufferGlobal(this);
      }
    }

    if (*(*(this + *(*this - 24) + 2168) + 1945) == 1)
    {
      v10 = *(this + 300);
      if (v10[48])
      {
        v11 = 1;
      }

      else
      {
        v11 = v10[50];
      }

      SCSConfigurationBufferGlobal = (*(*this + 456))(this, v11 & 1, v10[51]);
    }

    AGCLLVMUserObject::getRaytracingFunctionMap(SCSConfigurationBufferGlobal);
    if (dword_28117DC10)
    {
        ;
      }
    }

    else
    {
      i = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map;
    }

    v14 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
    if (i != v14)
    {
      v15 = *i;
      do
      {
        if (*(v15 + 8) == 3)
        {
          v16 = *(v15 + 16);
          Function = llvm::Module::getFunction();
          if (Function)
          {
            v18 = Function;
            while (1)
            {
              v18 = *(v18 + 8);
              if (!v18)
              {
                break;
              }

              AGCLLVMTargetLowerer::ResetIntersectionQueryArguments::ResetIntersectionQueryArguments(&v133, v16 & 1, (v16 >> 6) & 1, *(v18 + 24), this + *(*this - 24) + 1704);
              if (v137)
              {
                v19 = *(v137 + 16) == 16;
              }

              else
              {
                v19 = 0;
              }

              if (v19)
              {
                v21 = (v137 + 24);
                if (*(v137 + 32) >= 0x41u)
                {
                  v21 = *v21;
                }

                v20 = *v21 == 1;
              }

              else
              {
                v20 = 0;
              }

              v22 = 0;
              if (v136 && *(v136 + 16) == 16)
              {
                v23 = (v136 + 24);
                if (*(v136 + 32) >= 0x41u)
                {
                  v23 = *v23;
                }

                v22 = (*v23 >> 1) & 1;
              }

              v24 = 0;
              if (v138 && *(v138 + 16) == 16)
              {
                v25 = (v138 + 24);
                if (*(v138 + 32) >= 0x41u)
                {
                  v25 = *v25;
                }

                v24 = (*v25 & 2) == 0;
              }

              if (!v20 || ((v22 | v24) & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }
        }

        do
        {
          v26 = i[1];
          ++i;
          v15 = v26;
          if (v26)
          {
            v27 = v15 == -8;
          }

          else
          {
            v27 = 1;
          }
        }

        while (v27);
      }

      while (i != v14);
    }

LABEL_54:
    if (dword_28117DC10)
    {
        ;
      }
    }

    else
    {
      j = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map;
    }

    v30 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
    if (j != v30)
    {
      v31 = *j;
      v103 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
      do
      {
        v32 = llvm::Module::getFunction();
        if (v32)
        {
          v33 = v32;
          if (*(v32 + 8))
          {
            v34 = llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::try_emplace<>(v140, (v31 + 24), *v31);
            v35 = *(v31 + 8);
            v36 = *v34;
            *(v36 + 16) = *(v31 + 16);
            *(v36 + 8) = v35;
            v104 = *(v31 + 16);
            if (*(v33 + 1))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(1uLL);
            }

            v37 = *(this + *(*this - 24) + 2168);
            v38 = (*(*v37 + 1456))(v37, *(v31 + 16));
            if ((v104 & 0x100) != 0)
            {
              *(this + 1017) |= 1 << v38;
            }

            llvm::Function::eraseFromParent(v33);
            v30 = v103;
          }
        }

        do
        {
          v39 = j[1];
          ++j;
          v31 = v39;
          if (v39)
          {
            v40 = v31 == -8;
          }

          else
          {
            v40 = 1;
          }
        }

        while (v40);
      }

      while (j != v30);
    }
  }

  v41 = this + *(*this - 24);
  if (*(*(v41 + 271) + 1908) && (v41[4577] & 1) == 0 && (*(*v41 + 80))(v41) != 27)
  {
    v42 = *(this + 300);
    if (v42[48])
    {
      v43 = 1;
    }

    else
    {
      v43 = v42[50];
    }

    v44 = v42[51];
    if (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8 && ((v43 | v44))
    {
      v106 = v43;
      v45 = *(*(this + 20) + 80);
      if (v45)
      {
        v46 = v45 - 24;
      }

      else
      {
        v46 = 0;
      }

      v47 = this + *(*this - 24);
      v50 = *(v46 + 40);
      v49 = (v46 + 40);
      v48 = v50;
      if (v50 != v49)
      {
        while (1)
        {
          v51 = v48 ? (v48 - 3) : 0;
          if (*(v51 + 16) == 84 && (v52 = *(v51 - 32)) != 0 && !*(v52 + 16) && *(v52 + 24) == *(v51 + 72) && (Name = llvm::Value::getName(v52), v54 == 18))
          {
            v55 = *Name == 0x7867612E6D766C6CLL && *(Name + 8) == 0x6C6C612E736C742ELL;
            v56 = v55 && *(Name + 16) == 25455;
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          if (*(v51 + 16) == 59 || v57)
          {
            break;
          }

          v48 = *v48;
          if (v48 == v49)
          {
            v48 = v49;
            break;
          }
        }
      }

      v58 = v48[1];
      if (v58)
      {
        v59 = (v58 - 24);
      }

      else
      {
        v59 = 0;
      }

      llvm::IRBuilderBase::SetInsertPoint((v47 + 1712), v59);
      if (!*(this + 303))
      {
        AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 0);
      }

      if (!*(this + 306))
      {
        AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 1u);
      }

      if (!*(this + 309))
      {
        AGCLLVMUserObject::buildImageTextureBufferLength(this, 0);
      }

      if (!*(this + 315))
      {
        AGCLLVMUserObject::createSamplerHeapGlobal(this);
      }

      AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
      AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
      AGCLLVMUserObject::createSCSConfigurationBufferGlobal(this);
      if (*(*(this + *(*this - 24) + 2168) + 1946) == 1)
      {
        AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(this);
      }

      if (v44)
      {
        AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      }

      AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
      AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
      AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
      *&v129 = 0;
      v128 = 4uLL;
      v60 = this + *(*this - 24);
      GlobalBindingTableGlobal = AGCLLVMUserObject::createGlobalBindingTableGlobal(this);
      LOWORD(v135) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v60 + 1704), GlobalBindingTableGlobal, &v133);
      v62 = this + *(*this - 24);
      DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v62);
      LOWORD(v135) = 257;
      GEP = AGCLLVMBuilder::CreateLoad((v62 + 1704), DylibBuiltinPerCommandStateVar, &v133);
      if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 6)
      {
        v65 = (this + *(*this - 24));
        v66 = llvm::PointerType::get();
        LOWORD(v135) = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(v65 + 214, GEP, v66, &v133, v67);
        v69 = this + *(*this - 24);
        v70 = *(v69 + 236);
        v71 = llvm::ConstantInt::get();
        LOWORD(v135) = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((v69 + 1712), v70, PointerCast, v71, &v133);
      }

      v72 = this + *(*this - 24);
      v133 = *(v72 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v134, (v72 + 1712));
      DWORD2(v134) = *(v72 + 452);
      DylibBaseGetterFunc = AGCLLVMUserObject::createDylibBaseGetterFunc(this);
      v74 = *(this + *(*this - 24) + 2168);
      v125 = v133;
      v126 = v134;
      if (v134)
      {
        llvm::MetadataTracking::track();
      }

      v127 = DWORD2(v134);
      llvm::ValueHandleBase::ValueHandleBase(v123, 2u, this + 313);
      llvm::ValueHandleBase::ValueHandleBase(v121, 2u, this + 343);
      llvm::ValueHandleBase::ValueHandleBase(v119, 2u, this + 339);
      llvm::ValueHandleBase::ValueHandleBase(v117, 2u, this + 331);
      llvm::ValueHandleBase::ValueHandleBase(v115, 2u, this + 352);
      v75 = *(this + 318);
      v76 = *(this + 321);
      v77 = *(this + 327);
      v78 = *(this + 330);
      v79 = *(this + *(*this - 24) + 2136);
      llvm::ValueHandleBase::ValueHandleBase(v113, 2u, &v128);
      (*(*v74 + 1008))(&__src, v74, &v125, this + 3984, this + 2408, v123, DylibBaseGetterFunc, v121, v119, v117, v115, v75, v76, v77, v78, Load, GEP, v79, v106 & 1, v113);
      if (v114 != -8192 && v114 != -4096 && v114)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v113);
      }

      if (v116 != -8192 && v116 != -4096 && v116)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v115);
      }

      LOBYTE(v43) = v106;
      if (v118 != -8192 && v118 != -4096 && v118)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v117);
      }

      if (v120 != -8192 && v120 != -4096 && v120)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v119);
      }

      if (v122 != -8192 && v122 != -4096 && v122)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v121);
      }

      if (v124 != -8192 && v124 != -4096 && v124)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v123);
      }

      if (v126)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v106)
      {
        v80 = this + *(*this - 24);
        v81 = *(*(this + 20) + 80);
        v82 = v81 ? (v81 - 24) : 0;
        FirstNonPHIOrDbgOrAlloca = llvm::BasicBlock::getFirstNonPHIOrDbgOrAlloca(v82);
        v84 = FirstNonPHIOrDbgOrAlloca ? (FirstNonPHIOrDbgOrAlloca - 24) : 0;
        llvm::IRBuilderBase::SetInsertPoint((v80 + 1712), v84);
        v85 = this + *(*this - 24);
        v86 = *(v85 + 271);
        v110 = *(v85 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v111, (v85 + 1712));
        v112 = *(v85 + 452);
        (*(*v86 + 1104))(v86, &v110, this + 3984, *(this + 318), *(this + 321), *(*(this + 300) + 50), 0, 0, 0, 0, 1);
        if (v111)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v87 = this + *(*this - 24);
      v107 = __src;
      v108 = v131;
      if (v131)
      {
        llvm::MetadataTracking::track();
      }

      v109 = v132;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v107, (v87 + 1712));
      if (v108)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v131)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v134)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if (v43)
    {
      *(this + 505) = 0;
      *(this + 506) = 0;
      *(this + 507) = 1;
      *(this + 1016) = 0;
    }
  }

  (*(*this + 272))(this, 4);
  v88 = *this;
  v89 = this + *(*this - 24);
  v90 = *(v89 + 271);
  if (v90[477] && (v89[4577] & 1) == 0)
  {
    AccelerationStructureHeapGlobal = AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
    v93 = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
    (*(*v90 + 1440))(v90, this + 3984, AccelerationStructureHeapGlobal, v93);
    v88 = *this;
    v91 = 1;
  }

  else
  {
    v91 = 0;
  }

  v94 = *(this + *(v88 - 24) + 2168);
  v95 = AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
  (*(*v94 + 1432))(v94, v95, v91);
  if (v91 && *(this + 505))
  {
    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(v139, v140);
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(this, v139);
    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v139, v99, v100, v101);
  }

  return llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v140, v96, v97, v98);
}

void *AGCLLVMUserObject::createSCSIFTHeapGlobal(void *this)
{
  if (!this[324])
  {
    v16 = v1;
    v17 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1016))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 952))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = *(v3 + *(*v3 - 24) + 1912);
        *v14 = "agc.ria.intersection_function_table_heap";
        v15 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v14, v10, 0, 0, 0);
        return llvm::ValueHandleBase::operator=((v3 + 322), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1016))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v14, v7, v8);
    v10 = v14[0];
    goto LABEL_12;
  }

  return this;
}

llvm::Value *AGCLLVMUserObject::createGlobalBufferBinding(AGCLLVMUserObject *this, llvm::Type *a2, const llvm::Twine *a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v72 = *MEMORY[0x277D85DE8];
  v12 = *(this + 442);
  v13 = *(this + 886);
  v14 = v12 + 40 * v13;
  v15 = v12;
  if (v13)
  {
    v16 = 40 * v13;
    v15 = *(this + 442);
    while (*(v15 + 24))
    {
      v15 += 40;
      v16 -= 40;
      if (!v16)
      {
        v15 = v12 + 40 * v13;
        goto LABEL_14;
      }
    }
  }

  v17 = v15 + 40;
  if (v15 != v14 && v17 != v14)
  {
    do
    {
      if (*(v17 + 24))
      {
        *v15 = *v17;
        llvm::ValueHandleBase::operator=((v15 + 8), (v17 + 8));
        *(v15 + 32) = *(v17 + 32);
        v15 += 40;
      }

      v17 += 40;
    }

    while (v17 != v14);
    v12 = *(this + 442);
    LODWORD(v13) = *(this + 886);
  }

LABEL_14:
  llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(v15, v12 + 40 * v13);
  v19 = *(this + 442);
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v19) >> 3);
  *(this + 886) = v20;
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    do
    {
      v23 = v22 >> 1;
      v24 = &v21[10 * (v22 >> 1)];
      v26 = *v24;
      v25 = v24 + 10;
      v22 += ~(v22 >> 1);
      if (v26 < a4)
      {
        v21 = v25;
      }

      else
      {
        v22 = v23;
      }
    }

    while (v22);
  }

  else
  {
    v21 = v19;
  }

  v27 = &v19[0xFFFFFFFE00000002 * ((v15 - v19) >> 3)];
  if (a6 == 139 && v21 != v27)
  {
    v28 = v21;
    while (*v28 == a4)
    {
      if (v28[8] == 139)
      {
        return *(v28 + 3);
      }

      v28 += 10;
      if (v28 == v27)
      {
        break;
      }
    }
  }

  v29 = llvm::User::operator new(0x58);
  v30 = llvm::GlobalVariable::GlobalVariable();
  *(v30 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v31 = this + *(*this - 24);
  if ((*(*v31 + 200))(v31) == 2 || (*(*v31 + 200))(v31) == 1 || (*(*v31 + 200))(v31) == 3 || (*(*v31 + 200))(v31) == 4)
  {
    v33 = (*(*this + 88))(this);
    v34 = *(*(this + *(*this - 24) + 2168) + 920);
    v35 = *v34;
    if (v33 == 106)
    {
      (*(v35 + 440))(v34, 0, v32);
    }

    else
    {
      (*(v35 + 24))(v34, 0, v32);
    }

    llvm::Value::getContext(v29);
    *(v29 + 9) = llvm::AttributeSet::addAttribute();
  }

  v65 = a5;
  LODWORD(v67) = a4;
  v68 = 4;
  v69 = 0;
  v70 = v29;
  if (v29 != -8192 && v29 != -4096 && v29)
  {
    llvm::ValueHandleBase::AddToUseList(&v68);
  }

  v36 = a7;
  v71 = a6;
  v37 = *(this + 442);
  if ((v37 + 40 * *(this + 886)) == v21)
  {
    v52 = llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(this + 3536, &v67);
    v53 = (*(this + 442) + 40 * *(this + 886));
    *v53 = *v52;
    llvm::ValueHandleBase::ValueHandleBase((v53 + 2), 2u, (v52 + 8));
    v53[8] = *(v52 + 32);
    ++*(this + 886);
  }

  else
  {
    v38 = v21 - v37;
    v39 = llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(this + 3536, &v67);
    v40 = *(this + 442);
    v41 = (v40 + v38);
    v42 = (v40 + 40 * *(this + 886));
    *v42 = *(v42 - 10);
    llvm::ValueHandleBase::ValueHandleBase((v42 + 2), 2u, v42 - 4);
    v42[8] = *(v42 - 2);
    v43 = *(this + 442);
    v44 = *(this + 886);
    v45 = (v43 + 40 * v44 - 40);
    if (v45 != v41)
    {
      v46 = v43 + 40 * v44 - 40;
      do
      {
        v47 = *(v46 - 40);
        v46 -= 40;
        *v45 = v47;
        llvm::ValueHandleBase::operator=((v45 + 2), v45 - 4);
        v45[8] = *(v45 - 2);
        v45 = v46;
      }

      while (v46 != v41);
      v44 = *(this + 886);
      v43 = *(this + 442);
    }

    v48 = v44 + 1;
    *(this + 886) = v48;
    if (v39 < v43 + 40 * v48 && v39 >= v41)
    {
      v50 = 40;
    }

    else
    {
      v50 = 0;
    }

    v51 = v39 + v50;
    *v41 = *(v39 + v50);
    llvm::ValueHandleBase::operator=((v41 + 2), (v39 + v50 + 8));
    v41[8] = *(v51 + 32);
  }

  if (v70 != -8192 && v70 != -4096 && v70)
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v68);
  }

  __src[0] = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  __src[2] = llvm::ValueAsMetadata::get();
  v67 = &v69;
  v68 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v67, __src, &v67);
  if (v65 || a6 == 139)
  {
    llvm::ConstantInt::get();
    v54 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v67, v54);
    if (a6 == 139)
    {
      v56 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v57 = *(*(this + *(*this - 24) + 2168) + 920);
      v58 = *v57;
      if (v56 == 7)
      {
        (*(v58 + 440))(v57, 1, v55);
      }

      else
      {
        (*(v58 + 24))(v57, 1, v55);
      }

      llvm::ConstantInt::get();
      v59 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v67, v59);
    }
  }

  v60 = *(this + *(*this - 24) + 2144);
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, Impl);
  if (v36)
  {
    v62 = *(this + *(*this - 24) + 2152);
    v63 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v62, v63);
  }

  if (v67 != &v69)
  {
    free(v67);
  }

  return v29;
}

void _AGCBindingInfo::_AGCBindingInfo(_AGCBindingInfo *this, int a2, int a3)
{
  v3 = a2 & 0xFFFFF;
  v4 = 0x100000;
  switch(a3)
  {
    case -13:
      v4 = 12582912;
      break;
    case -12:
      v4 = 11534336;
      break;
    case -11:
      v4 = 10485760;
      break;
    case -10:
      v4 = 9437184;
      break;
    case -9:
      v4 = 0x800000;
      break;
    case -8:
      v4 = 7340032;
      break;
    case -7:
      v4 = 6291456;
      break;
    case -6:
      v4 = 5242880;
      break;
    case -5:
      v4 = 0x400000;
      break;
    case -4:
      v4 = 3145728;
      break;
    case -3:
      v4 = 0x200000;
      break;
    case -2:
      break;
    case -1:
      v4 = 0;
      break;
    default:
      v3 |= 0x80000000;
      v4 = (a3 & 0x7FF) << 20;
      break;
  }

  *this = v3 | v4;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 40 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::grow(a1, v2 + 1);
    }

    llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::grow(a1, v2 + 1);
  }

  return a2;
}

uint64_t AGCLLVMUserObject::createGlobalSCSLayoutGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 348);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v3 <= 0x1B)
    {
      if (((1 << v3) & 0x400198) != 0)
      {
        v4 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v4 + 1032))(v4);
        v6 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 760))();
LABEL_5:
        _AGCBindingInfo::_AGCBindingInfo(v13, v5, v6);
        v7 = v13[0];
LABEL_6:
        v8 = llvm::ArrayType::get(*(this + *(*this - 24) + 1904), 2);
        v13[0] = "agc.global_scs_layout";
        v14 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, v13, v7, 0, 0, 0);
        llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
        *(GlobalBufferBinding + 80) &= ~1u;
        llvm::Constant::getNullValue(v8, v10);
        llvm::GlobalVariable::setInitializer();
        llvm::ValueHandleBase::operator=((this + 2768), GlobalBufferBinding);
        return *(this + 348);
      }

      if (v3 == 27)
      {
        v11 = *(*(this + *(*this - 24) + 2168) + 920);
        v7 = (*(*v11 + 896))(v11) & 0xFFFFF | 0x900000;
        goto LABEL_6;
      }
    }

    v12 = *(*(this + *(*this - 24) + 2168) + 920);
    v5 = (*(*v12 + 1032))(v12);
    v6 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 408))();
    goto LABEL_5;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 16);
      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v2 - 32));
      }

      v2 -= 40;
    }

    while (v2 != v3);
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(a1, a2);
  v4 = v3;
  v5 = *a1 + (*(a1 + 8) << 6);
  v6 = *v3;
  *(v5 + 16) = *(v3 + 16);
  *v5 = v6;
  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v5 + 24), *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v7 = *(v3 + 24);
    *(v5 + 40) = *(v3 + 40);
    *(v5 + 24) = v7;
  }

  result = v4[3];
  *(v5 + 48) = result;
  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + (v2 << 6) <= a2)
    {
      llvm::SmallVectorTemplateBase<GenericVarying,false>::grow(a1, v2 + 1);
    }

    llvm::SmallVectorTemplateBase<GenericVarying,false>::grow(a1, v2 + 1);
  }

  return a2;
}

uint64_t AGCLLVMUserShader::replaceInputArgument(AGCLLVMUserObject *this, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (!a4)
  {
    String = "air.byval";
LABEL_17:
    if (*String != 0x617679622E726961 || String[8] != 108)
    {
      goto LABEL_102;
    }

    v13 = *a2;
    v83 = "agc.byval.";
    *&v85[4] = v5;
    LOWORD(v87) = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v13, &v83, v5, 0, 5u, 0);
    v15 = this + *(*this - 24);
    LOWORD(v87) = 257;
    AGCLLVMBuilder::CreateLoad((v15 + 1704), GlobalBufferBinding, &v83);
    goto LABEL_155;
  }

  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  if (v9 > 21)
  {
    if (v9 > 30)
    {
      switch(v9)
      {
        case 31:
          if (*String != 0x65746E692E726961 || *(String + 1) != 0x6E6F697463657372 || *(String + 2) != 0x6F6974636E75665FLL || *(String + 23) != 0x656C6261745F6E6FLL)
          {
            goto LABEL_102;
          }

          goto LABEL_144;
        case 35:
          v16 = "air.instance_acceleration_structure";
          v17 = 35;
          break;
        case 36:
          v16 = "air.primitive_acceleration_structure";
          v17 = 36;
          break;
        default:
          goto LABEL_102;
      }

      if (!memcmp(String, v16, v17))
      {
        goto LABEL_144;
      }

LABEL_102:
      v44 = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
      v46 = v44;
      v47 = v45;
      v82[0] = v44;
      v82[1] = v45;
      if (v45 == 19)
      {
        if (*v44 != 0x616665642E726961 || v44[1] != 0x66696E755F746C75 || *(v44 + 11) != 0x6D726F66696E755FLL)
        {
          return 0;
        }
      }

      else
      {
        if (v45 != 11)
        {
          return 0;
        }

        if (*v44 != 0x66696E752E726961 || *(v44 + 3) != 0x6D726F66696E752ELL)
        {
          return 0;
        }
      }

      v81 = 0;
      v51 = *(a4 + 8);
      if (v51 >= 3)
      {
        v52 = 2;
        do
        {
          v53 = v52 + 1;
          v54 = *(a4 - 8 * *(a4 + 8) + 8 * v52);
          if (v54 && !*v54)
          {
            v55 = llvm::MDString::getString(v54);
            if (v56 == 11)
            {
              if (*v55 != 0x646E69622E726961 || *(v55 + 3) != 0x676E69646E69622ELL)
              {
                goto LABEL_122;
              }

              LODWORD(v83) = v52 + 1;
              if (!parseMDInt(0, a4, &v83, &v81))
              {
                return 0;
              }
            }

            else
            {
              if (v56 != 15)
              {
                goto LABEL_122;
              }

              if (*v55 != 0x666675622E726961 || *(v55 + 7) != 0x657A69735F726566)
              {
                goto LABEL_122;
              }

              LODWORD(v83) = v52 + 1;
              if ((parseMDInt(0, a4, &v83, &v81 + 1) & 1) == 0)
              {
                return 0;
              }
            }

            v53 = v52 + 2;
          }

LABEL_122:
          v52 = v53;
        }

        while (v53 < v51);
      }

      if (v47 == 11)
      {
        v59 = 0x6169722E756E6966;
        v60 = bswap64(*v46);
        if (v60 == 0x6169722E756E6966 && (v59 = 0x2E756E69666F726DLL, v60 = bswap64(*(v46 + 3)), v60 == 0x2E756E69666F726DLL))
        {
          v61 = 0;
        }

        else if (v60 < v59)
        {
          v61 = -1;
        }

        else
        {
          v61 = 1;
        }

        if (v61)
        {
          v62 = 4;
        }

        else
        {
          v62 = 5;
        }
      }

      else
      {
        v62 = 4;
      }

      v63 = *a2;
      v79[0] = "agc.buffer_pointers";
      v79[2] = ".";
      v80 = 771;
      llvm::StringRef::str(__p, v82);
      v83 = v79;
      *&v85[4] = __p;
      LOWORD(v87) = 1026;
      v64 = AGCLLVMUserObject::createGlobalBufferBinding(this, v63, &v83, v81, HIDWORD(v81), v62, 0);
      if (v78 < 0)
      {
        operator delete(__p[0]);
      }

      v65 = this + *(*this - 24);
      LOWORD(v87) = 257;
      if (!AGCLLVMBuilder::CreateLoad((v65 + 1704), v64, &v83))
      {
        return 0;
      }

      goto LABEL_155;
    }

    if (v9 != 22)
    {
      if (v9 != 26)
      {
        goto LABEL_102;
      }

      v20 = *String == 0x697369762E726961 && *(String + 1) == 0x636E75665F656C62;
      v21 = v20 && *(String + 2) == 0x6261745F6E6F6974;
      if (!v21 || *(String + 12) != 25964)
      {
        goto LABEL_102;
      }

      goto LABEL_144;
    }

    if (*String != 0x63616E692E726961 || *(String + 1) != 0x656C626973736563 || *(String + 14) != 0x7475706E695F656CLL)
    {
      goto LABEL_102;
    }

    llvm::UndefValue::get();
LABEL_155:
    llvm::Value::replaceAllUsesWith();
    return 1;
  }

  if (v9 <= 10)
  {
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        if (*String != 0x666675622E726961 || *(String + 4) != 29285)
        {
          v19 = *String == 0x736E65742E726961 && *(String + 4) == 29295;
          if (v19 && AGCLLVMUserObject::replaceTensorInput<llvm::Argument>(this, a2, v5, a4))
          {
            return 1;
          }

          goto LABEL_102;
        }

        goto LABEL_144;
      }

      goto LABEL_102;
    }

    goto LABEL_17;
  }

  if (v9 == 11)
  {
    if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
    {
      if (!a2[1])
      {
        return 1;
      }

      LOBYTE(v82[0]) = 0;
      BYTE4(v81) = 0;
      LODWORD(v79[0]) = 0;
      LODWORD(__p[0]) = 0;
      LODWORD(v83) = 0;
      *v84 = 0;
      *v85 = 0xFFFFFFFFLL;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      if (parseMDTexture(a4, v79, __p, v84, v82, &v84[1], &v81 + 4, v85))
      {
        v67 = *a2;
        if (llvm::Type::isOpaquePointerTy(*a2))
        {
          v87 = llvm::StructType::create();
        }

        else
        {
          if (LOBYTE(v82[0]) == 1)
          {
            v68 = **(v67 + 16);
            if (*(v68 + 8) == 16)
            {
              v68 = **(v68 + 16);
            }

            v67 = **(v68 + 16);
          }

          v69 = *(v67 + 8);
          if ((v69 & 0x1FF) == 0x110)
          {
            v67 = **(v67 + 16);
            LOBYTE(v69) = *(v67 + 8);
          }

          if (v69 == 15)
          {
            v70 = **(v67 + 16);
            if ((*(v70 + 8) & 0x1FF) == 0x110)
            {
              v67 = **(v70 + 16);
            }
          }

          v87 = **(v67 + 16);
        }

        v71 = (*(*this + 296))(this, LODWORD(v79[0]));
        v72 = __p[0];
        *(this + 879) += LODWORD(__p[0]);
        *(this + 3760) |= BYTE4(v81);
        LODWORD(v83) = v71 & 0xFFFFF;
        HIDWORD(v83) = v72;
        std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(this + 125, v71 & 0xFFFFF, &v83);
        v73 = v82[0];
        if ((v84[0] & 2) != 0)
        {
          if (v82[0])
          {
            v74 = v72 + v71;
            if (v72 + v71 >= 0x40)
            {
              v74 = 64;
            }

            v75 = v74 - v71;
            if (v71 >= 0x40)
            {
              v75 = 0;
            }

            *(this + 490) |= ~(-1 << v75) << v71;
            if (v71 <= 0x40)
            {
              v76 = 64;
            }

            else
            {
              v76 = v71;
            }

            *(this + 491) |= ~(-1 << (v72 - v75)) << v76;
            v73 = 1;
          }

          else
          {
            v73 = 0;
            if (v71 > 0x3F)
            {
              *(this + 491) |= 1 << v71;
            }

            else
            {
              *(this + 490) |= 1 << v71;
            }
          }
        }

        if (AGCLLVMUserObject::replaceTextureOrSamplerArgument(this, a2, v71, v72, v73 & 1, (this + 3096)))
        {
          return 1;
        }
      }
    }

    else
    {
      v26 = *String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL;
      if (v26 && (AGCLLVMUserObject::replaceSamplerInput<llvm::Argument>(this, a2, a4) & 1) != 0)
      {
        return 1;
      }
    }

    goto LABEL_102;
  }

  if (v9 != 17)
  {
    if (v9 != 19)
    {
      goto LABEL_102;
    }

    v10 = *String == 0x69646E692E726961 && *(String + 1) == 0x6675625F74636572;
    if (!v10 || *(String + 11) != 0x7265666675625F74)
    {
      goto LABEL_102;
    }

LABEL_144:
    AGCLLVMUserObject::replaceBufferInputArgument(this, a2, v5, a4, 0xFFFFFFFF);
    return 1;
  }

  if (*String != 0x666675622E726961 || *(String + 1) != 0x64697274735F7265 || String[16] != 101)
  {
    goto LABEL_102;
  }

  v32 = 0;
  LODWORD(v79[0]) = 0;
  v33 = *(a4 + 8);
  LODWORD(v83) = 2;
  if (v33 >= 3)
  {
    do
    {
      if (parseMDLocationIndex(a4, &v83, v79, __p))
      {
        break;
      }

      LODWORD(v83) = v83 + 1;
    }

    while (v83 < v33);
    v32 = v79[0];
  }

  v34 = 1;
  v35 = llvm::User::operator new(0x58);
  v83 = "agc.dynamic_stride.";
  *&v85[4] = v32;
  LOWORD(v87) = 2051;
  v36 = llvm::GlobalVariable::GlobalVariable();
  *(v36 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  AGCTargetOS::AGCTargetOS(&v83, (this + 176));
  v37 = this + *(*this - 24);
  v38 = *(v37 + 268);
  v39 = AGCLLVMBuilder::buildGlobalMetadata(v37 + 213, v35, 0x83u, v32);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v38, v39);
  v40 = this + *(*this - 24);
  LOWORD(v87) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v40 + 1704), v35, &v83);
  v42 = this + *(*this - 24);
  v43 = *(v42 + 239);
  LOWORD(v87) = 257;
  llvm::IRBuilderBase::CreateCast((v42 + 1712), 39, Load, v43, &v83);
  llvm::Value::replaceAllUsesWith();
  return v34;
}

void AGCLLVMAGPFragmentShader::getFragmentVaryings(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(a1, a3, &v35, &v37 + 1, &v37, &v34 + 1, &v34, &v33);
  v7 = a2;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(a2 + 16);
  }

  if (v34 == 2 && v7 == *(a1 + *(*a1 - 24) + 1888))
  {
    v9 = 5;
  }

  else
  {
    v9 = v34;
  }

  LODWORD(v34) = v9;
  if ((HIDWORD(v37) & 0xFFFFFFFD) == 1)
  {
    goto LABEL_21;
  }

  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    goto LABEL_21;
  }

  if (Key == *(a1 + 6488))
  {
    goto LABEL_21;
  }

  v12 = *(*(*(a1 + 6480) + 8 * Key) + 8);
  v13 = v12 >> 4;
  if (!(v12 >> 4))
  {
    goto LABEL_21;
  }

  v11.i32[0] = v12 >> 4;
  v14 = vcnt_s8(v11);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.i32[0] >= HIDWORD(v34))
  {
    v37 = 0x100000003;
LABEL_21:
    v13 = 0;
    *a4 = a4 + 2;
    a4[1] = 0x400000000;
    goto LABEL_22;
  }

  *a4 = a4 + 2;
  a4[1] = 0x400000000;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
    goto LABEL_27;
  }

  Value = AGCEnv::getValue("AGC_DISABLE_VARYING_SPLITTING", v6);
  if (!Value || *Value == 48 || !atoi(Value))
  {
    goto LABEL_27;
  }

LABEL_22:
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v16 = AGCEnv::getValue("AGC_FORCE_VARYING_SPLITTING", v6);
    if (v16)
    {
      if (*v16 != 48 && atoi(v16))
      {
LABEL_27:
        v29 = v13;
        if ((*(a2 + 8) & 0xFE) == 0x12)
        {
          v30 = **(a2 + 16);
        }

        else
        {
          v30 = a2;
        }

        v17 = HIDWORD(v34);
        if (HIDWORD(v34))
        {
          v18 = 0;
          v19 = v35;
          v20 = v36;
          v22 = v37;
          v21 = HIDWORD(v37);
          v23 = v34;
          v24 = v33 & 1;
          do
          {
            GenericVarying::getComponentSemantic(&__p, v19, v20, v18);
            if ((v29 & (1 << v18)) != 0)
            {
              v25 = 1;
            }

            else
            {
              v25 = v21;
            }

            if ((v29 & (1 << v18)) != 0)
            {
              v26 = 3;
            }

            else
            {
              v26 = v22;
            }

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
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            AGCLLVMAGPFragmentShader::getFragmentVarying(v38, a1, v30, p_p, size, v25, v26, 1, v23, v24);
            llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(a4, v38);
            if (v39 != v40)
            {
              free(v39);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v18;
          }

          while (v17 != v18);
        }

        return;
      }
    }
  }

  AGCLLVMAGPFragmentShader::getFragmentVarying(v38, a1, a2, v35, v36, HIDWORD(v37), v37, HIDWORD(v34), v34, v33);
  llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(a4, v38);
  if (v39 != v40)
  {
    free(v39);
  }
}

uint64_t AGCLLVMUserObject::createAccelerationStructureHeapGlobal(AGCLLVMUserObject *this)
{
  v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
  if ((v2 - 7) >= 2)
  {
    if (v2 == 27)
    {
      v5 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v5 + 840))(v5);
      goto LABEL_7;
    }

    if (v2 != 22)
    {
      v6 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v6 + 336))(v6);
      goto LABEL_7;
    }
  }

  v3 = *(*(this + *(*this - 24) + 2168) + 920);
  v4 = (*(*v3 + 688))(v3);
LABEL_7:
  v7 = v4;
  v8 = this + *(*this - 24);
  if (*(*(v8 + 271) + 1908) && (v8[4577] & 1) == 0)
  {
    v9 = this + 2760;
    if (!*(this + 345))
    {
      v15 = llvm::PointerType::get();
      v17[0] = "agc.bvh_state_words_heap.";
      v18 = v7;
      v19 = 2051;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v15, v17, v7, 0, 5u, 1);
      v13 = (this + 2744);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = this + 2760;
    if (!*(this + 345))
    {
      llvm::PointerType::get();
      v10 = llvm::PointerType::get();
      v17[0] = "agc.sw_ads_heap.";
      v18 = v7;
      v19 = 2051;
      v11 = AGCLLVMUserObject::createGlobalBufferBinding(this, v10, v17, v7, 0, 5u, 0);
      llvm::GlobalValue::setLinkage(v11, 10);
      *(v11 + 80) &= ~1u;
      llvm::Constant::getNullValue(*(v11 + 3), v12);
      llvm::GlobalVariable::setInitializer();
      v13 = (this + 2744);
      GlobalBufferBinding = v11;
LABEL_13:
      llvm::ValueHandleBase::operator=(v13, GlobalBufferBinding);
    }
  }

  return *v9;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::replacePayloadSupportFunctions(_BYTE *a1, uint64_t a2, void *a3, llvm::Value *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v7 = Function;
    v8 = *(Function + 8);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        llvm::ConstantInt::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
        v8 = v9;
      }

      while (v9);
    }

    llvm::Function::eraseFromParent(v7);
  }

  v11 = llvm::Module::getFunction();
  v29 = a1;
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      do
      {
        v14 = (*(*a1 + 1456))(a1, 1);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(a1, 6, 1uLL, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v29, v14, 1uLL, 0);
        v15 = *(v13 + 8);
        v16 = *(v13 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v29 + 8), v16);
        llvm::ConstantInt::get();
        a1 = v29;
        llvm::ConstantInt::get();
        LOWORD(v32) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v16);
        v13 = v15;
      }

      while (v15);
    }

    llvm::Function::eraseFromParent(v12);
  }

  v17 = llvm::Module::getFunction();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 8);
    if (v19)
    {
      do
      {
        v20 = (*(*a1 + 1456))(a1, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(a1, 5, 0, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v29, v20, 0, 0);
        v21 = *(v19 + 8);
        v22 = *(v19 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v29 + 8), v22);
        llvm::ConstantInt::get();
        a1 = v29;
        llvm::ConstantInt::get();
        LOWORD(v32) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v22);
        v19 = v21;
      }

      while (v21);
    }

    llvm::Function::eraseFromParent(v18);
  }

  v23 = llvm::Module::getFunction();
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      do
      {
        v25 = *(v24 + 8);
        v26 = *(v24 + 24);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v26);
        v27 = *(v26 - 4 * (*(v26 + 5) & 0x7FFFFFF));
        v28 = *(a1 + 18);
        v30[0] = a3;
        v30[1] = v27;
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.update.bvh", 20, v28, v30, 2uLL);
        llvm::Instruction::eraseFromParent(v26);
        v24 = v25;
      }

      while (v25);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v30, "agc.query.allocate");
  LOBYTE(v31) = 1;
  std::string::basic_string[abi:nn200100]<0>(&v32, "agc.query.deallocate");
  LOBYTE(v33) = 0;
  operator new();
}

uint64_t *std::vector<std::tuple<llvm::StringRef,llvm::StringRef,BOOL>>::vector[abi:nn200100](uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

uint64_t *std::vector<std::tuple<llvm::StringRef,llvm::StringRef,unsigned int>>::vector[abi:nn200100](uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void std::vector<std::tuple<std::string,BOOL>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

llvm::Function *AGCLLVMGen5TargetLowerer::replaceAccelerationStructureSupportFunctions(AGCLLVMGen5TargetLowerer *this, llvm::Value *a2, int a3)
{
  result = llvm::Module::getFunction();
  if (result)
  {
    v22 = result;
    v23 = a2;
    v6 = *(result + 1);
    if (v6)
    {
      do
      {
        v7 = *(v6 + 8);
        v8 = *(v6 + 24);
        llvm::IRBuilderBase::SetInsertPoint((this + 8), v8);
        v9 = *(v8 - 4 * (*(v8 + 5) & 0x7FFFFFF));
        v10 = *(this + 26);
        v30[0] = "ads_heap_index";
        v31 = 259;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 47, v9, v10, v30);
        v12 = llvm::ConstantInt::get();
        v30[0] = "heap_offset";
        v31 = 259;
        Mul = llvm::IRBuilderBase::CreateMul((this + 8), Cast, v12, v30);
        v14 = llvm::PointerType::get();
        v15 = llvm::PointerType::get();
        v16 = *(this + 23);
        v31 = 257;
        Load = AGCLLVMBuilder::CreateLoad(this, v23, v30);
        v29 = 257;
        v18 = llvm::IRBuilderBase::CreateCast(this + 8, 49, Load, v14, v28);
        v27 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((this + 8), v16, v18, Mul, v26);
        v24 = "heap_ptr";
        v25 = 259;
        v20 = llvm::IRBuilderBase::CreateCast(this + 8, 49, GEP, v15, &v24);
        v21 = *(this + 26);
        v31 = 257;
        llvm::Type::isOpaquePointerTy(*v20);
        llvm::IRBuilderBase::CreateAlignedLoad(this + 1, v21, v20, 0, v30);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v8);
        v6 = v7;
      }

      while (v7);
    }

    return llvm::Function::eraseFromParent(v22);
  }

  return result;
}

uint64_t llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 25);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMUserObject::needsDylibResources(AGCLLVMUserObject *this)
{
  v2 = (this + *(*this - 24));
  if (*(v2[271] + 1904) != 1 || (*(*v2 + 80))(v2) && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 1 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 2 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 3 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 4 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 5 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 6 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 27 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 9)
  {
    return 0;
  }

  if (*(this + 3856))
  {
    return 1;
  }

  v4 = *(*(this + *(*this - 24)) + 120);

  return v4();
}

uint64_t AGCLLVMAGPFragmentShaderGen3::replaceBuiltins(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v108 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::replaceBuiltins(this);
  if (!result)
  {
    return result;
  }

  v78 = result;
  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v98, *v3);
  v105 = this;
  v98 = &unk_282558548;
  v104[37] = v3;
  {
    AGCLLVMAGPFragmentShaderGen3::replaceTileFunctions(void)::workitem_functions[0] = "air.get_local_size.i32";
    dword_28117E2F8 = 1;
    qword_28117E300 = AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile;
    unk_28117E308 = 0;
    dword_28117E310 = 4;
    word_28117E314 = 0;
    qword_28117E318 = "air.get_local_size.i16";
    dword_28117E320 = 1;
    qword_28117E328 = AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile;
    unk_28117E330 = 0;
    dword_28117E338 = 4;
    word_28117E33C = 0;
    qword_28117E340 = "air.get_local_id.i32";
    dword_28117E348 = 1;
    qword_28117E350 = AGCLLVMAGPFragmentShader::buildPixelPositionInTile;
    unk_28117E358 = 0;
    dword_28117E360 = 4;
    word_28117E364 = 0;
    qword_28117E368 = "air.get_local_id.i16";
    dword_28117E370 = 1;
    qword_28117E378 = AGCLLVMAGPFragmentShader::buildPixelPositionInTile;
    unk_28117E380 = 0;
    dword_28117E388 = 4;
    word_28117E38C = 0;
    qword_28117E390 = "air.get_local_linear_id.i32";
    dword_28117E398 = 1;
    qword_28117E3A0 = AGCLLVMAGPFragmentShaderGen3::buildTileIndex;
    unk_28117E3A8 = 0;
    dword_28117E3B0 = 2;
    word_28117E3B4 = 0;
    qword_28117E3B8 = "air.get_local_linear_id.i16";
    dword_28117E3C0 = 1;
    qword_28117E3C8 = AGCLLVMAGPFragmentShaderGen3::buildTileIndex;
    unk_28117E3D0 = 0;
    dword_28117E3D8 = 2;
    word_28117E3DC = 0;
    qword_28117E3E0 = "air.get_thread_index_in_simdgroup.i32";
    dword_28117E3E8 = 1;
    qword_28117E3F0 = AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup;
    unk_28117E3F8 = 0;
    dword_28117E400 = 2;
    word_28117E404 = 0;
    qword_28117E408 = "air.get_thread_index_in_simdgroup.i16";
    dword_28117E410 = 1;
    qword_28117E418 = AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup;
    unk_28117E420 = 0;
    dword_28117E428 = 2;
    word_28117E42C = 0;
    qword_28117E430 = "air.get_simdgroup_index_in_threadgroup.i32";
    dword_28117E438 = 1;
    qword_28117E440 = AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup;
    unk_28117E448 = 0;
    dword_28117E450 = 2;
    word_28117E454 = 0;
    qword_28117E458 = "air.get_simdgroup_index_in_threadgroup.i16";
    dword_28117E460 = 1;
    qword_28117E468 = AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup;
    unk_28117E470 = 0;
    dword_28117E478 = 2;
    word_28117E47C = 0;
  }

  for (i = 0; i != 10; ++i)
  {
    v5 = &AGCLLVMAGPFragmentShaderGen3::replaceTileFunctions(void)::workitem_functions[5 * i];
    v85 = v5;
    if (*v5)
    {
      strlen(*v5);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v7 = *(v85 + 8);
      v81 = Function;
      if (v7 == 12)
      {
        for (j = *(Function + 8); j; v101 = 0uLL)
        {
          v11 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v99, v11);
          v12 = v105 + *(*v105 - 24);
          v95 = v101;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v96, v99);
          v97 = v102;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v95, (v12 + 1712));
          if (v96)
          {
            llvm::MetadataTracking::untrack();
          }

          v13 = v85[2];
          v14 = v85[3];
          v15 = (v105 + (v14 >> 1));
          if (v14)
          {
            v13 = *(*v15 + v13);
          }

          (v13)(v15, v11);
        }

        goto LABEL_123;
      }

      if (v7 == 11)
      {
        v8 = v85[2];
        if (v8)
        {
          v9 = strlen(v85[2]);
          *&v106[0] = &v106[1] + 8;
          *(v106 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v106, v8, &v8[v9]);
        }

        else
        {
          *&v106[1] = 64;
          v106[0] = &v106[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v106, ".", "");
        if (*&v106[1] < *(&v106[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v106[0] != (&v106[1] + 8))
        {
          free(*&v106[0]);
        }

        goto LABEL_123;
      }

      v80 = i;
      v16 = **(*(Function + 24) + 16);
      v17 = ((*(v16 + 8) & 0xFE) == 18) & *(v85 + 37);
      if (v17 == 1)
      {
        v18 = *(v16 + 32);
      }

      else
      {
        v18 = 1;
      }

      v83 = v18;
      v79 = v102;
      v19 = *(Function + 8);
      if (!v19)
      {
LABEL_117:
        v102 = v79;
        i = v80;
LABEL_123:
        llvm::Function::eraseFromParent(v81);
        continue;
      }

      while (1)
      {
        v20 = *(v19 + 24);
        v82 = *(v19 + 8);
        v21 = *(v85 + 2);
        if (v21 == 1)
        {
          v22 = 0;
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_27;
          }

          v22 = 121;
        }

        v102 = v22;
LABEL_27:
        llvm::IRBuilderBase::SetInsertPoint(v99, v20);
        v23 = llvm::UndefValue::get();
        if (v83)
        {
          for (k = 0; k != v83; ++k)
          {
            v84 = v23;
            v107 = 0;
            memset(v106, 0, sizeof(v106));
            v25 = llvm::CallBase::arg_end(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
            if ((v25 & 0x1FFFFFFFE0) != 0)
            {
              v26 = (v25 >> 5);
              v27 = v106;
              v28 = v20;
              do
              {
                v29 = (v28 - 32 * (*(v20 + 5) & 0x7FFFFFF));
                v30 = *v29;
                *v27 = *v29;
                if (v17 && (*(*v30 + 8) & 0xFE) == 0x12)
                {
                  v94 = 257;
                  v31 = llvm::ConstantInt::get();
                  *v27 = llvm::IRBuilderBase::CreateExtractElement(v99, v30, v31, &PrimitiveSizeInBits);
                }

                ++v27;
                v28 = (v28 + 32);
                --v26;
              }

              while (v26);
            }

            if (*(v85 + 36))
            {
              v32 = **&v106[0];
              if ((*(**&v106[0] + 8) & 0xFE) == 0x12)
              {
                v32 = **(v32 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
              v93 = v33;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v34 = 0;
              }

              else
              {
                v48 = v104[4];
                if ((*(**&v106[0] + 8) & 0xFE) == 0x12)
                {
                  v48 = llvm::FixedVectorType::get();
                }

                if ((v25 & 0x1FFFFFFFE0) != 0)
                {
                  v49 = (v25 >> 5);
                  v50 = v106;
                  do
                  {
                    v51 = *v50;
                    v94 = 257;
                    *v50++ = llvm::IRBuilderBase::CreateFPExt(v99, v51, v48, &PrimitiveSizeInBits);
                    --v49;
                  }

                  while (v49);
                  v34 = 1;
                }

                else
                {
                  v34 = 1;
                }
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

            v36 = v105 + *(*v105 - 24);
            v89 = v101;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v90, v99);
            v91 = v102;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v89, (v36 + 1712));
            if (v90)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v38 = *(v85 + 8);
            if (v38 > 5)
            {
              if (v38 <= 7)
              {
                if (v38 == 6)
                {
                  v56 = v85[2];
                  v65 = v85[3];
                  v59 = *(&v106[0] + 1);
                  v58 = *&v106[0];
                  v61 = (v105 + (v65 >> 1));
                  if (v65)
                  {
                    v56 = *(*v61 + v56);
                  }

                  v60 = FastMathFlags;
                }

                else
                {
                  v56 = v85[2];
                  v57 = v85[3];
                  v59 = *(&v106[0] + 1);
                  v58 = *&v106[0];
                  v60 = *&v106[1];
                  v61 = (v105 + (v57 >> 1));
                  if (v57)
                  {
                    v67 = (*(*v61 + v56))(v61, *&v106[0], *(&v106[0] + 1), *&v106[1]);
                    goto LABEL_103;
                  }
                }

LABEL_102:
                v67 = (v56)(v61, v58, v59, v60);
                goto LABEL_103;
              }

              switch(v38)
              {
                case 8:
                  v44 = v85[2];
                  v68 = v85[3];
                  v69 = *(&v106[0] + 1);
                  v46 = *&v106[0];
                  v70 = *&v106[1];
                  v47 = (v105 + (v68 >> 1));
                  if (v68)
                  {
                    v44 = *(*v47 + v44);
                  }

                  v74 = FastMathFlags;
                  goto LABEL_98;
                case 9:
                  v56 = v85[2];
                  v73 = v85[3];
                  v61 = (v105 + (v73 >> 1));
                  if (v73)
                  {
                    v56 = *(*v61 + v56);
                  }

                  v58 = v106;
                  v59 = &unk_20E75F419;
                  v60 = 0;
                  goto LABEL_102;
                case 10:
                  v44 = v85[2];
                  v45 = v85[3];
                  v46 = *v20;
                  v47 = (v105 + (v45 >> 1));
                  if (v45)
                  {
                    v44 = *(*v47 + v44);
                  }

                  v69 = v106;
                  v70 = &unk_20E75F419;
                  v74 = 0;
LABEL_98:
                  v67 = (v44)(v47, v46, v69, v70, v74);
                  goto LABEL_103;
              }
            }

            else
            {
              if (v38 > 2)
              {
                if (v38 != 3)
                {
                  if (v38 == 4)
                  {
                    v71 = (*&v106[0] + 24);
                    if (*(*&v106[0] + 32) >= 0x41u)
                    {
                      v71 = *v71;
                    }

                    v42 = *v71;
                    v39 = v85[2];
                    v72 = v85[3];
                    v41 = *v20;
                    v43 = (v105 + (v72 >> 1));
                    if (v72)
                    {
                      v39 = *(*v43 + v39);
                    }
                  }

                  else
                  {
                    v39 = v85[2];
                    v40 = v85[3];
                    v42 = *(&v106[0] + 1);
                    v41 = *&v106[0];
                    v43 = (v105 + (v40 >> 1));
                    if (v40)
                    {
                      v39 = *(*v43 + v39);
                    }
                  }

                  v67 = (v39)(v43, v41, v42);
                  goto LABEL_103;
                }

                v52 = v85[2];
                v66 = v85[3];
                v54 = *&v106[0];
                v55 = (v105 + (v66 >> 1));
                if ((v66 & 1) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              }

              if (v38 == 1)
              {
                v62 = v85[2];
                v63 = v85[3];
                v64 = (v105 + (v63 >> 1));
                if (v63)
                {
                  v62 = *(*v64 + v62);
                }

                v67 = (v62)(v64);
                goto LABEL_103;
              }

              if (v38 == 2)
              {
                v52 = v85[2];
                v53 = v85[3];
                v54 = *v20;
                v55 = (v105 + (v53 >> 1));
                if ((v53 & 1) == 0)
                {
LABEL_78:
                  v67 = (v52)(v55, v54);
LABEL_103:
                  FPTrunc = v67;
                  goto LABEL_104;
                }

LABEL_77:
                v52 = *(*v55 + v52);
                goto LABEL_78;
              }
            }

LABEL_104:
            v75 = v105 + *(*v105 - 24);
            v86 = *(v75 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (v75 + 1712));
            v88 = *(v75 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v86, v99);
            if (v87)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v34)
            {
              v76 = *v20;
              if (v17 && (*(v76 + 8) & 0xFE) == 0x12)
              {
                v76 = **(v76 + 16);
              }

              v94 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v99, FPTrunc, v76, &PrimitiveSizeInBits);
            }

            if (v17)
            {
              v94 = 257;
              v77 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v99, v84, FPTrunc, v77, &PrimitiveSizeInBits);
            }

            v23 = FPTrunc;
          }
        }

        if (*v20 != v104[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v20);
        v19 = v82;
        if (!v82)
        {
          goto LABEL_117;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v104);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v103);
  if (v99[0] != &v100)
  {
    free(v99[0]);
  }

  return v78;
}

uint64_t AGCLLVMUserObject::replaceBuiltins(AGCLLVMUserObject *this)
{
  v1 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), this, *(this + *(*this - 24) + 2136));
  v2 = AGCLLVMAirBuiltins::replaceBuiltins(v1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  return v2;
}

AGCLLVMAirBuiltins *AGCLLVMGen5TargetLowerer::createBuiltins(AGCLLVMGen5TargetLowerer *this, AGCLLVMUserObject *a2, llvm::Module *a3)
{
  result = 0;
  v5 = *(this + 493);
  if (v5 <= 21)
  {
    if (v5 > 18 || (v5 - 17) < 2)
    {
      operator new();
    }

    if (v5 != 14 && v5 != 16)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v5 > 0x26)
  {
    goto LABEL_6;
  }

  if (((1 << v5) & 0x4D00000000) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0xE000000) != 0)
  {
LABEL_16:
    operator new();
  }

  if (v5 == 31)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (v5 == 22)
  {
    operator new();
  }

  if (v5 == 24)
  {
LABEL_8:
    operator new();
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::replaceBuiltins(AGCLLVMAirBuiltins *this)
{
  v2 = *(this + 54);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v16[0] = 0;
    v16[1] = 0;
    v14 = 0;
    v15 = 0;
    if (AGCLLVMBuilder::findPrefix(Name, v8, v16, &v14, "air.", 4uLL) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(this + 119);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(this + 119) + 8 * *(*(this + 119) + 8)))
      {
        AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(this + 472, v5, *v12 + 8, v14, v15);
      }
    }
  }

  return *(this + 960);
}

uint64_t AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(uint64_t a1, llvm::Function *this, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v5 = a3;
  v6 = this;
  v102 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 24);
  if (v8 != 12)
  {
    if (v8 == 11)
    {
      v9 = *(a3 + 8);
      if (v9)
      {
        v10 = strlen(*(a3 + 8));
        *&v100[0] = &v100[1] + 8;
        *(v100 + 8) = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v100, v9, &v9[v10]);
      }

      else
      {
        *&v100[1] = 64;
        *&v100[0] = &v100[1] + 8;
        *(&v100[0] + 1) = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v100, ".", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(v100, a4, &a4[a5]);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (*&v100[0] != (&v100[1] + 8))
      {
        free(*&v100[0]);
      }

      return llvm::Function::eraseFromParent(v6);
    }

    v17 = **(*(this + 3) + 16);
    v18 = ((*(v17 + 8) & 0xFE) == 18) & *(a3 + 29);
    if (v18 == 1)
    {
      v19 = *(v17 + 32);
    }

    else
    {
      v19 = 1;
    }

    v82 = v19;
    v80 = *(a1 + 104);
    v20 = *(this + 1);
    if (!v20)
    {
LABEL_110:
      *(a1 + 104) = v80;
      v6 = this;
      return llvm::Function::eraseFromParent(v6);
    }

    while (1)
    {
      v21 = *(v20 + 24);
      v22 = *(v20 + 8);
      if (*v5 == 1)
      {
        v23 = 0;
      }

      else
      {
        if (*v5 != 2)
        {
          goto LABEL_21;
        }

        v23 = 121;
      }

      *(a1 + 104) = v23;
LABEL_21:
      v83 = v22;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v21);
      v24 = llvm::UndefValue::get();
      if (v82)
      {
        for (i = 0; i != v82; ++i)
        {
          v87 = v24;
          v101 = 0;
          memset(v100, 0, sizeof(v100));
          v26 = llvm::CallBase::arg_end(v21) - v21 + 32 * (*(v21 + 5) & 0x7FFFFFF);
          if ((v26 & 0x1FFFFFFFE0) != 0)
          {
            v27 = (v26 >> 5);
            v28 = v100;
            v29 = v21;
            do
            {
              v30 = (v29 - 32 * (*(v21 + 5) & 0x7FFFFFF));
              v31 = *v30;
              *v28 = *v30;
              if (v18 && (*(*v31 + 8) & 0xFE) == 0x12)
              {
                v96 = 257;
                v32 = llvm::ConstantInt::get();
                *v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v31, v32, &PrimitiveSizeInBits);
              }

              ++v28;
              v29 = (v29 + 32);
              --v27;
            }

            while (v27);
          }

          if (*(a3 + 28))
          {
            v33 = **&v100[0];
            if ((*(**&v100[0] + 8) & 0xFE) == 0x12)
            {
              v33 = **(v33 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v33);
            v95 = v34;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v35 = 0;
            }

            else
            {
              v36 = *(a1 + 168);
              if ((*(**&v100[0] + 8) & 0xFE) == 0x12)
              {
                v36 = llvm::FixedVectorType::get();
              }

              if ((v26 & 0x1FFFFFFFE0) != 0)
              {
                v37 = (v26 >> 5);
                v38 = v100;
                do
                {
                  v39 = *v38;
                  v96 = 257;
                  *v38++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v39, v36, &PrimitiveSizeInBits);
                  --v37;
                }

                while (v37);
              }

              v35 = 1;
            }
          }

          else
          {
            v35 = 0;
          }

          if (llvm::FPMathOperator::classof(v21))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v21);
          }

          else
          {
            FastMathFlags = 0;
          }

          v41 = *(a1 + 464);
          v91 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (a1 + 8));
          v93 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v91, v41 + 8);
          if (v92)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v43 = *(a3 + 24);
          if (v43 > 5)
          {
            if (v43 <= 7)
            {
              if (v43 == 6)
              {
                v57 = *(a3 + 8);
                v66 = *(a3 + 16);
                v60 = *(&v100[0] + 1);
                v59 = *&v100[0];
                v62 = (*(a1 + 464) + (v66 >> 1));
                if (v66)
                {
                  v57 = *(*v62 + v57);
                }

                v61 = FastMathFlags;
              }

              else
              {
                v57 = *(a3 + 8);
                v58 = *(a3 + 16);
                v60 = *(&v100[0] + 1);
                v59 = *&v100[0];
                v61 = *&v100[1];
                v62 = (*(a1 + 464) + (v58 >> 1));
                if (v58)
                {
                  v68 = (*(*v62 + v57))(v62, *&v100[0], *(&v100[0] + 1), *&v100[1]);
                  goto LABEL_96;
                }
              }

LABEL_95:
              v68 = v57(v62, v59, v60, v61);
              goto LABEL_96;
            }

            switch(v43)
            {
              case 8:
                v49 = *(a3 + 8);
                v69 = *(a3 + 16);
                v70 = *(&v100[0] + 1);
                v51 = *&v100[0];
                v71 = *&v100[1];
                v52 = (*(a1 + 464) + (v69 >> 1));
                if (v69)
                {
                  v49 = *(*v52 + v49);
                }

                v75 = FastMathFlags;
                goto LABEL_91;
              case 9:
                v57 = *(a3 + 8);
                v74 = *(a3 + 16);
                v62 = (*(a1 + 464) + (v74 >> 1));
                if (v74)
                {
                  v57 = *(*v62 + v57);
                }

                v59 = v100;
                v61 = a5;
                v60 = a4;
                goto LABEL_95;
              case 10:
                v49 = *(a3 + 8);
                v50 = *(a3 + 16);
                v51 = *v21;
                v52 = (*(a1 + 464) + (v50 >> 1));
                if (v50)
                {
                  v49 = *(*v52 + v49);
                }

                v70 = v100;
                v75 = a5;
                v71 = a4;
LABEL_91:
                v68 = v49(v52, v51, v70, v71, v75);
                goto LABEL_96;
            }
          }

          else
          {
            if (v43 > 2)
            {
              if (v43 != 3)
              {
                if (v43 == 4)
                {
                  v72 = (*&v100[0] + 24);
                  if (*(*&v100[0] + 32) >= 0x41u)
                  {
                    v72 = *v72;
                  }

                  v47 = *v72;
                  v44 = *(a3 + 8);
                  v73 = *(a3 + 16);
                  v46 = *v21;
                  v48 = (*(a1 + 464) + (v73 >> 1));
                  if (v73)
                  {
                    v44 = *(*v48 + v44);
                  }
                }

                else
                {
                  v44 = *(a3 + 8);
                  v45 = *(a3 + 16);
                  v47 = *(&v100[0] + 1);
                  v46 = *&v100[0];
                  v48 = (*(a1 + 464) + (v45 >> 1));
                  if (v45)
                  {
                    v44 = *(*v48 + v44);
                  }
                }

                v68 = v44(v48, v46, v47);
                goto LABEL_96;
              }

              v53 = *(a3 + 8);
              v67 = *(a3 + 16);
              v55 = *&v100[0];
              v56 = (*(a1 + 464) + (v67 >> 1));
              if ((v67 & 1) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            if (v43 == 1)
            {
              v63 = *(a3 + 8);
              v64 = *(a3 + 16);
              v65 = (*(a1 + 464) + (v64 >> 1));
              if (v64)
              {
                v63 = *(*v65 + v63);
              }

              v68 = v63(v65);
              goto LABEL_96;
            }

            if (v43 == 2)
            {
              v53 = *(a3 + 8);
              v54 = *(a3 + 16);
              v55 = *v21;
              v56 = (*(a1 + 464) + (v54 >> 1));
              if ((v54 & 1) == 0)
              {
LABEL_71:
                v68 = v53(v56, v55);
LABEL_96:
                FPTrunc = v68;
                goto LABEL_97;
              }

LABEL_70:
              v53 = *(*v56 + v53);
              goto LABEL_71;
            }
          }

LABEL_97:
          v76 = *(a1 + 464);
          v88 = *(v76 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v76 + 8));
          v90 = *(v76 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v88, a1 + 8);
          if (v89)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v35)
          {
            v77 = *v21;
            if (v18 && (*(v77 + 8) & 0xFE) == 0x12)
            {
              v77 = **(v77 + 16);
            }

            v96 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v77, &PrimitiveSizeInBits);
          }

          if (v18)
          {
            v96 = 257;
            v78 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v87, FPTrunc, v78, &PrimitiveSizeInBits);
          }

          v24 = FPTrunc;
        }
      }

      if (*v21 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v21);
      v5 = a3;
      v20 = v83;
      if (!v83)
      {
        goto LABEL_110;
      }
    }
  }

  for (j = *(this + 1); j; *(a1 + 64) = 0)
  {
    v12 = *(j + 24);
    j = *(j + 8);
    llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v12);
    v13 = *(a1 + 464);
    v97 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (a1 + 8));
    v99 = *(a1 + 104);
    AGCLLVMBuilder::InsertPoint::restoreIP(&v97, v13 + 8);
    if (v98)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = (*(a1 + 464) + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    v14(v16, v12);
    *(a1 + 56) = 0;
  }

  return llvm::Function::eraseFromParent(v6);
}

uint64_t AGCLLVMBuilder::unboxVector(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value **a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    tryToUnboxVector(a2, a3, 0);
    v6 = *(*a2 + 32);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (!a3[i])
        {
          v11 = 257;
          v8 = llvm::ConstantInt::get();
          a3[i] = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v8, v10);
        }
      }
    }
  }

  else
  {
    *a3 = a2;
    return 1;
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildAnyOrAll(llvm::ConstantInt **this, llvm::Value *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *v14 = 0u;
  v15 = 0u;
  v5 = AGCLLVMBuilder::unboxVector(this, a2, v14);
  v6 = v14[0];
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    v8 = &v14[1];
    do
    {
      v9 = *v8;
      v13 = 257;
      if (a3)
      {
        v10 = llvm::IRBuilderBase::CreateOr((this + 1), v6, v9, v12);
      }

      else
      {
        v10 = llvm::IRBuilderBase::CreateAnd((this + 1), v6, v9, v12);
      }

      v6 = v10;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void tryToUnboxVector(llvm::Value *a1, llvm::Value **a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x20uLL);
  if (a1 && a3 <= 5)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 != 90)
      {
        break;
      }

      v7 = *(a1 - 4);
      if (v7)
      {
        v8 = *(v7 + 16) == 16;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = (v7 + 24);
        if (*(v7 + 32) >= 0x41u)
        {
          v9 = *v9;
        }

        v10 = *v9;
        if ((v10 & 0xFFFFFFFC) == 0)
        {
          v11 = v10 & 3;
          if (!a2[v11])
          {
            a2[v11] = *(a1 - 8);
          }
        }

        a1 = *(a1 - 12);
        if (a1)
        {
          continue;
        }
      }

      return;
    }

    if (v6 == 91)
    {
      *v20 = 0u;
      v21 = 0u;
      memset(v19, 0, sizeof(v19));
      tryToUnboxVector(*(a1 - 8), v20, a3 + 1);
      tryToUnboxVector(*(a1 - 4), v19, a3 + 1);
      v12 = *(*a1 + 32);
      if (v12)
      {
        v13 = 0;
        v14 = *(**(a1 - 8) + 32);
        do
        {
          if ((v14 | v13) <= 3 && !a2[v13])
          {
            v15 = *(*(a1 + 8) + 4 * v13);
            if (v15 <= 3)
            {
              if (v15 == -1)
              {
                v16 = llvm::UndefValue::get();
              }

              else if (v15 >= v14)
              {
                v16 = *(v19 + v15 - v14);
              }

              else
              {
                v16 = v20[v15];
              }

              a2[v13] = v16;
            }
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }

    else if (v6 <= 0x14)
    {
      v17 = *(*a1 + 32);
      if ((v17 - 1) <= 3)
      {
        v18 = 0;
        do
        {
          if (!a2[v18])
          {
            a2[v18] = llvm::Constant::getAggregateElement(a1);
          }

          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 32))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

unsigned __int8 *llvm::IRBuilderBase::CreateExtractElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 320))(*(this + 9), a2, a3);
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
    v6 = llvm::User::operator new(0x40);
    llvm::ExtractElementInst::ExtractElementInst();
    (*(**(this + 10) + 16))(*(this + 10), v6, a4, *(this + 6), *(this + 7));
    v8 = *(this + 2);
    if (v8)
    {
      v9 = *this;
      v10 = &v9[2 * v8];
      do
      {
        llvm::Instruction::setMetadata();
        v9 += 2;
      }

      while (v9 != v10);
    }
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildConvert(uint64_t a1, llvm::Value **a2, uint64_t a3, uint64_t a4)
{
  {
    AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map = 0;
    *&dword_28117E2D0 = 0;
    qword_28117E2D8 = 0x5000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::ConversionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map, &dword_20E4E1000);
  }

  v72.__r_.__value_.__r.__words[0] = a1;
  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::flag, memory_order_acquire) != -1)
  {
    v74.__r_.__value_.__r.__words[0] = &v72;
    v64.__r_.__value_.__r.__words[0] = &v74;
    std::__call_once(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::flag, &v64, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::$_0 &&>>);
  }

  Key = llvm::StringMapImpl::FindKey();
  v7 = Key;
  if (Key == -1)
  {
    v7 = dword_28117E2D0;
  }

  v8 = *(AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * v7);
  v9 = *a2;
  if (*(v8 + 9) != 1)
  {
    if (*(v8 + 8))
    {
      if (*(*(a1 + 464) + 1947) == 1 && *(v8 + 64) == 1)
      {
        *&v74.__r_.__value_.__l.__data_ = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v74.__r_.__value_.__r.__words[2], (a1 + 8));
        v15 = *(a1 + 104);
        v75 = v15;
        v16 = *(a1 + 464);
        v72 = v74;
        if (v74.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::track();
          v15 = v75;
        }

        v73 = v15;
        if (*(v8 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v71, *(v8 + 16), *(v8 + 24));
        }

        else
        {
          v71 = *(v8 + 16);
        }

        std::string::basic_string[abi:nn200100]<0>(__p, "f32");
        v22 = (*(*v16 + 768))(v16, &v72, v9, &v71, __p, 0, 0);
        v63.__r_.__value_.__r.__words[0] = v22;
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if (v72.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v74.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::untrack();
        }
      }

      else
      {
        v22 = AGCLLVMBuilder::f32Extend(a1, v9, 1);
        v63.__r_.__value_.__r.__words[0] = v22;
      }

      v23 = 0;
      v24 = *(v8 + 67);
      if (v24 <= 0xF)
      {
        if (v24 == 1)
        {
          llvm::ConstantFP::get();
          v76 = 257;
          return llvm::IRBuilderBase::CreateFCmpHelper();
        }

        if (v24 != 8)
        {
LABEL_88:
          v43 = *(a1 + 944);
          if (v43)
          {
            if ((*(*&v43[*(*v43 - 24)] + 80))(&v43[*(*v43 - 24)]) == 6 && (*(v8 + 11) & 1) == 0 && *(v8 + 68) != 1)
            {
              v44 = *(a1 + 464);
              *&v67.__r_.__value_.__l.__data_ = *(a1 + 56);
              llvm::IRBuilderBase::getCurrentDebugLocation(&v67.__r_.__value_.__r.__words[2], (a1 + 8));
              v68 = *(a1 + 104);
              v22 = AGCLLVMTargetLowerer::buildBiasF2IVarying(v44, &v67, v22);
              v63.__r_.__value_.__r.__words[0] = v22;
              if (v67.__r_.__value_.__r.__words[2])
              {
                llvm::MetadataTracking::untrack();
              }
            }
          }

          v45 = *(v8 + 68);
          if (v45 == 2)
          {
            if (*(v8 + 11) == 1)
            {
              v76 = 257;
              return llvm::IRBuilderBase::CreateFPToSI((a1 + 8), v22, v23, &v74);
            }

            else
            {
              v76 = 257;
              return llvm::IRBuilderBase::CreateFPToUI((a1 + 8), v22, v23, &v74);
            }
          }

          if (v45 == 1)
          {
            v46 = *(a1 + 464);
            v47 = *(v46 + 1376);
            if (v47)
            {
              v48 = strlen(*(v46 + 1376));
            }

            else
            {
              v48 = 0;
            }

            v55 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v47, v48, *(a1 + 200), *(a1 + 168));
            v76 = 257;
            v56 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v55 + 24), v55, &v63, 1, &v74);
            v66 = 257;
            return llvm::IRBuilderBase::CreateIntCast((a1 + 8), v56, v23, 0, &v64, v57);
          }

          return 0;
        }

        v25 = 184;
      }

      else
      {
        switch(v24)
        {
          case 0x40u:
            v25 = 208;
            break;
          case 0x20u:
            v25 = 200;
            break;
          case 0x10u:
            v25 = 192;
            break;
          default:
            goto LABEL_88;
        }
      }

      v23 = *(a1 + v25);
      goto LABEL_88;
    }

    v19 = 0;
    v20 = *(v8 + 67);
    if (v20 <= 0xF)
    {
      if (v20 == 1)
      {
        v50 = AGCLLVMBuilder::i32Extend(a1, v9, *(v8 + 10));
        v51 = llvm::ConstantInt::get();
        v76 = 257;
        return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v50, v51, &v74);
      }

      if (v20 == 8)
      {
        v21 = 184;
        goto LABEL_79;
      }
    }

    else
    {
      switch(v20)
      {
        case 0x40u:
          v21 = 208;
          goto LABEL_79;
        case 0x20u:
          v21 = 200;
          goto LABEL_79;
        case 0x10u:
          v21 = 192;
LABEL_79:
          v19 = *(a1 + v21);
          break;
      }
    }

    if (v20 >= *(v8 + 66))
    {
      if (*(v8 + 10) == 1)
      {
        v76 = 257;
        v41 = a1 + 8;
        v42 = 40;
      }

      else
      {
        v76 = 257;
        v41 = a1 + 8;
        v42 = 39;
      }
    }

    else
    {
      v76 = 257;
      v41 = a1 + 8;
      v42 = 38;
    }

    return llvm::IRBuilderBase::CreateCast(v41, v42, v9, v19, &v74);
  }

  if (!*(v8 + 8))
  {
    if (*(*(a1 + 464) + 1947) == 1 && *(v8 + 64) == 1)
    {
      *&v64.__r_.__value_.__l.__data_ = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v64.__r_.__value_.__r.__words[2], (a1 + 8));
      v65 = *(a1 + 104);
      v17 = *(a1 + 168);
      if (*(v8 + 10) == 1)
      {
        v76 = 257;
        SIToFP = llvm::IRBuilderBase::CreateSIToFP((a1 + 8), v9, v17, &v74);
      }

      else
      {
        v76 = 257;
        SIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 8), v9, v17, &v74);
      }

      v53 = SIToFP;
      v54 = *(a1 + 464);
      v74 = v64;
      if (v64.__r_.__value_.__r.__words[2])
      {
        llvm::MetadataTracking::track();
      }

      v75 = v65;
      std::string::basic_string[abi:nn200100]<0>(&v72, "f32");
      if (*(v8 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *(v8 + 40), *(v8 + 48));
      }

      else
      {
        v67 = *(v8 + 40);
      }

      v49 = (*(*v54 + 768))(v54, &v74, v53, &v72, &v67, 1, 0);
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (v74.__r_.__value_.__r.__words[2])
      {
        llvm::MetadataTracking::untrack();
      }

      if (v64.__r_.__value_.__r.__words[2])
      {
        goto LABEL_161;
      }

      return v49;
    }

    v26 = 152;
    if (*(v8 + 65))
    {
      v26 = 160;
    }

    v27 = 168;
    if (*(v8 + 67) == 16)
    {
      v27 = v26;
    }

    if (*(v8 + 68) == 1)
    {
      v28 = *(a1 + v27);
      if (*(v8 + 10) == 1)
      {
        v76 = 257;
        return llvm::IRBuilderBase::CreateSIToFP((a1 + 8), v9, v28, &v74);
      }

      else
      {
        v76 = 257;
        return llvm::IRBuilderBase::CreateUIToFP((a1 + 8), v9, v28, &v74);
      }
    }

    return 0;
  }

  v10 = *(a1 + 464);
  if (*(v10 + 1947) != 1)
  {
    v30 = *(v8 + 66);
    v31 = *(v8 + 67);
    if (v30 == 8 || v31 == 8)
    {
      v33 = *(a1 + 944);
      if (v33)
      {
        std::string::append((v33 + *(*v33 - 24) + 1656), "Not support HFP8 format on given target.");
      }

      return 0;
    }

LABEL_61:
    if (v31 == v30)
    {
      if (*v9 == *(a1 + 160))
      {
        v58 = *(a1 + 168);
        v76 = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v9, v58, &v74);
        v37 = *(a1 + 152);
      }

      else
      {
        if (*v9 != *(a1 + 152))
        {
          goto LABEL_64;
        }

        v59 = *(a1 + 168);
        v76 = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v9, v59, &v74);
        v37 = *(a1 + 160);
      }

      v76 = 257;
      v38 = (a1 + 8);
      return llvm::IRBuilderBase::CreateFPTrunc(v38, FPExt, v37, &v74);
    }

LABEL_64:
    if (v31 < v30)
    {
      v34 = *(a1 + 944);
      if (v34)
      {
        if (*(v34 + 19) == 1)
        {
          *&v64.__r_.__value_.__l.__data_ = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v64.__r_.__value_.__r.__words[2], (a1 + 8));
          v65 = *(a1 + 104);
          v9 = AGCLLVMTargetLowerer::buildRTZF16Value(v10, &v64, v9, 0);
          if (v64.__r_.__value_.__r.__words[2])
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      v35 = *(v8 + 68);
      if (v35 == 1 || v35 == 2)
      {
        v36 = 152;
        if (*(v8 + 65))
        {
          v36 = 160;
        }

        v37 = *(a1 + v36);
        v76 = 257;
        v38 = (a1 + 8);
        FPExt = v9;
        return llvm::IRBuilderBase::CreateFPTrunc(v38, FPExt, v37, &v74);
      }

      return 0;
    }

    v40 = *(a1 + 168);
    v76 = 257;
    return llvm::IRBuilderBase::CreateFPExt((a1 + 8), v9, v40, &v74);
  }

  if ((*(v8 + 64) & 1) == 0)
  {
    v31 = *(v8 + 67);
    v30 = *(v8 + 66);
    goto LABEL_61;
  }

  *&v74.__r_.__value_.__l.__data_ = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v74.__r_.__value_.__r.__words[2], (a1 + 8));
  v11 = *(a1 + 104);
  v75 = v11;
  v12 = *(v8 + 66);
  if (v12 == 8 && *(v8 + 67) == 8)
  {
    v52 = *(a1 + 464);
    v64 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
      v11 = v75;
    }

    v65 = v11;
    if (*(v8 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v8 + 16), *(v8 + 24));
    }

    else
    {
      v67 = *(v8 + 16);
    }

    std::string::basic_string[abi:nn200100]<0>(&v71, "f32");
    v61 = (*(*v52 + 768))(v52, &v64, v9, &v67, &v71, 0, 0);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (v64.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }

    v62 = *(a1 + 464);
    v72 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
    }

    v73 = v75;
    std::string::basic_string[abi:nn200100]<0>(__p, "f32");
    if (*(v8 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *(v8 + 40), *(v8 + 48));
    }

    else
    {
      v63 = *(v8 + 40);
    }

    v49 = (*(*v62 + 768))(v62, &v72, v61, __p, &v63, 1, 0);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    if (v72.__r_.__value_.__r.__words[2])
    {
      goto LABEL_159;
    }
  }

  else
  {
    v14 = *(a1 + 464);
    v64 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
      v11 = v75;
    }

    v65 = v11;
    if (*(v8 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, *(v8 + 16), *(v8 + 24));
    }

    else
    {
      v72 = *(v8 + 16);
    }

    if (*(v8 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v8 + 40), *(v8 + 48));
    }

    else
    {
      v67 = *(v8 + 40);
    }

    v49 = (*(*v14 + 768))(v14, &v64, v9, &v72, &v67, v12 > 0xF, 0);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (v64.__r_.__value_.__r.__words[2])
    {
LABEL_159:
      llvm::MetadataTracking::untrack();
    }
  }

  if (v74.__r_.__value_.__r.__words[2])
  {
LABEL_161:
    llvm::MetadataTracking::untrack();
  }

  return v49;
}

uint64_t llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

uint64_t AGCLLVMAirBuiltins::buildFastFMax(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    v7 = (*(v6 + *(*v6 - 24) + 1808) & 2) == 0;
  }

  else
  {
    v7 = 1;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v8 = *(*a2 + 8);
  }

  v9 = v8 == 2;
  v10 = *(this + 58);
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 56))(v10, &v13, a2, a3, v9 & v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMax(uint64_t a1, __int128 *a2, llvm::UndefValue **a3, llvm::FixedVectorType **a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildFMinFMax(a1, &v10, a3, a4, *(a1 + 2560), *(a1 + 2568));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMBuilder::map2(llvm::ConstantInt **this, llvm::Function *a2, llvm::UndefValue **a3, llvm::Value *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    InsertElement = llvm::UndefValue::get();
    *v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    AGCLLVMBuilder::unboxVector(this, a3, v20);
    AGCLLVMBuilder::unboxVector(this, a4, v18);
    v9 = *(*a3 + 8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = v18[i];
        v17[0] = v20[i];
        v17[1] = v11;
        v16 = 257;
        v12 = llvm::IRBuilderBase::CreateCall(this + 1, *(a2 + 3), a2, v17, 2, v15);
        v16 = 257;
        v13 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), InsertElement, v12, v13, v15);
      }
    }
  }

  else
  {
    v20[0] = a3;
    v20[1] = a4;
    v16 = 257;
    return llvm::IRBuilderBase::CreateCall(this + 1, *(a2 + 3), a2, v20, 2, v15);
  }

  return InsertElement;
}

uint64_t llvm::IRBuilderBase::CreateFPTrunc(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 45, a2, a3, a4);
}

void AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(AGCLLVMAirBuiltins *this)
{
  *this = &unk_28257C220;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 608));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 600));
  v2 = *(this + 60);
  if (v2 != this + 496)
  {
    free(v2);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v3 = *(this + 1);
  if (v3 != this + 24)
  {
    free(v3);
  }
}

{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

void std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t AGCLLVMUserFragmentShader::bindDylibResources(AGCLLVMUserFragmentShader *this)
{
  AGCLLVMUserObject::bindDylibResources(this);
  if ((*(*this + 616))(this))
  {
    v2 = *(*this - 24);
    StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal((this + v2));
    AGCLLVMObject::setDylibLinkage(StatelessPSOGlobal, v4);
    v5 = *(*(this + *(*this - 24) + 2168) + 928);
    v6 = (*(*v5 + 160))(v5);
    AGCLLVMObject::addDylibBinding((this + v2), StatelessPSOGlobal, v6);
  }

  return 1;
}

uint64_t AGCLLVMUserObject::bindDylibResources(AGCLLVMUserObject *this)
{
  if (AGCLLVMUserObject::needsDylibResources(this))
  {
    AGCLLVMUserObject::createDylibBaseGetterFunc(this);
    v2 = (this + *(*this - 24));
    v3 = (*(*v2 + 80))(v2);
    if (v3 > 0x16)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_20E70D374[v3];
    }

    AGCLLVMObject::createAndBindDylibResources(v2, v4);
    if ((*(*(this + *(*this - 24)) + 120))(this + *(*this - 24)))
    {
      AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "agc.force_indirect_function_call_support", 40, *(this + *(*this - 24) + 1848));
      operator new();
    }
  }

  return 1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createShaderCoreBindings@<X0>(llvm::ArrayType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*a1 + 245))(a1);
  v9 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(v8, 0x1000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v10 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v11 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v12 = llvm::User::operator new(0x58);
  v13 = llvm::ArrayType::get(a1[23], 0x200);
  llvm::ArrayType::get(v13, 0x30);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  *a4 = v12;
  a4[1] = v9;
  a4[3] = v10;
  a4[5] = v11;
  result = (*(*a1 + 171))(a1, a2);
  a4[2] = result;
  a4[4] = a3;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createDriverParameterShaderCoreBinding(uint64_t a1, uint64_t a2)
{
  llvm::StructType::create();
  v2 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (!llvm::NamedMDNode::getNumOperands(inserted))
  {
    RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(0x1000000uLL, 1);
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  return v2;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(unint64_t a1, int a2)
{
  SectionEnd = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 2);
        v4 = 0x40000;
      }

      else
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 3);
        v4 = 0x10000;
      }
    }

    else if (a2 == 1)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 7);
      v4 = 24576;
    }

    else
    {
      v4 = 0;
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 1);
        v4 = 0x2000;
      }
    }

    return v4 + SectionEnd;
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 5);
      v7 = (a1 >> 19) & 0x1FE0;
      v8 = HIWORD(a1);
    }

    else
    {
      if (a2 != 11)
      {
        v4 = 0;
        if (a2 == 12)
        {
          v5 = a1;
          v6 = 11;
LABEL_16:
          SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v5, v6);
          v4 = 0;
          return v4 + SectionEnd;
        }

        return v4 + SectionEnd;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 6);
      v7 = (a1 >> 19) & 0x1FE0;
      LODWORD(v8) = WORD2(a1);
    }

    v4 = v7 * v8;
    return v4 + SectionEnd;
  }

  if (a2 == 5)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 4);
    v4 = 8 * a1 * ((a1 >> 19) & 0x1FE0);
    return v4 + SectionEnd;
  }

  v4 = 0;
  if (a2 == 6)
  {
    v5 = a1;
    v6 = 10;
    goto LABEL_16;
  }

  return v4 + SectionEnd;
}

void AGCLLVMUserObject::getRaytracingFunctionMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map = 0;
    *&dword_28117DC10 = 0;
    qword_28117DC18 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMUserObject::getRaytracingFunctionMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMUserObject::getRaytracingFunctionMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::getRaytracingFunctionMap(void)::$_0 &&>>);
  }
}

char *AGCLLVMUserObject::createSCSConfigurationBufferGlobal(char *this)
{
  v1 = this;
  v18 = *MEMORY[0x277D85DE8];
  if (!*(this + 318))
  {
    if ((*(*&this[*(*this - 24)] + 80))(&this[*(*this - 24)]) == 7 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 22 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 8)
    {
      v2 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v3 = (*(*v2 + 760))(v2);
    }

    else
    {
      v13 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v3 = (*(*v13 + 408))(v13);
    }

    v4 = v3;
    v5 = *&v1[*(*v1 - 24) + 1904];
    v15 = vextq_s8(v5, v5, 8uLL);
    v16 = vdupq_lane_s64(v5.i64[0], 0);
    v17 = v5.i64[0];
    llvm::StructType::create();
    v6 = llvm::PointerType::get();
    v15.i64[0] = "agc.scs_per_kick_configuration.";
    v16.i64[0] = v4;
    LOWORD(v17) = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v1, v6, &v15, v4, 0xCu, 5u, 0);
    this = llvm::ValueHandleBase::operator=((v1 + 2528), GlobalBufferBinding);
  }

  if (!*(v1 + 321))
  {
    if ((*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 7 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 22 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 8)
    {
      v8 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v9 = (*(*v8 + 768))(v8);
    }

    else
    {
      v14 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v9 = (*(*v14 + 416))(v14);
    }

    v10 = v9;
    v11 = llvm::PointerType::get();
    v15.i64[0] = "agc.scs_per_shader_configuration.";
    v16.i64[0] = v10;
    LOWORD(v17) = 2051;
    v12 = AGCLLVMUserObject::createGlobalBufferBinding(v1, v11, &v15, v10, 4u, 5u, 0);
    return llvm::ValueHandleBase::operator=((v1 + 2552), v12);
  }

  return this;
}

void AGCLLVMAirBuiltins::AGCLLVMAirBuiltins(AGCLLVMAirBuiltins *this, AGCLLVMUserObject *a2, llvm::LLVMContext **a3, AGCLLVMTargetLowerer *a4)
{
  AGCLLVMBuilder::AGCLLVMBuilder(this, *a3);
  v8[58] = a4;
  *v8 = &unk_28257C220;
  AGCLLVMBuilder::AGCLLVMBuilder((v8 + 59), *a3);
  *(this + 59) = &unk_28257D030;
  *(this + 117) = this;
  *(this + 113) = a3;
  *(this + 118) = a2;
  v9 = *(a4 + 114);
  std::mutex::lock((v9 + 72));
  v10 = *(v9 + 64);
  if (!v10)
  {
    operator new();
  }

  std::mutex::unlock((v9 + 72));
  *(this + 119) = v10;
  *(this + 960) = 1;
  *(this + 54) = a3;
  *(this + 26) = *(a4 + 26);
}

uint64_t llvm::IRBuilderBase::CreateCast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (*a3 != a4)
  {
    if (*(a3 + 16) > 0x14u)
    {
      v5 = llvm::CastInst::Create();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
    }

    else
    {
      v5 = (*(**(a1 + 72) + 224))(*(a1 + 72), a2, a3, a4);
      if (v5)
      {
        v8 = *(v5 + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
      }
    }
  }

  return v5;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMinFMax(llvm::ConstantInt **a1, __int128 *a2, llvm::UndefValue **a3, llvm::FixedVectorType **a4, const char *a5, const char *a6)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 2);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 6);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v22[0] = v23;
  v22[1] = 0x200000000;
  v13 = *a3;
  v14 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v14 = **(v13 + 2);
  }

  if (v13 != *a4)
  {
    a4 = AGCLLVMBuilder::splat(a1, *(v13 + 8), a4, v12);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v14);
  v15 = *a4;
  if ((*(*a4 + 2) & 0xFE) == 0x12)
  {
    v15 = **(v15 + 2);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v15);
  llvm::FunctionType::get();
  if (v14 != a1[21])
  {
    a6 = a5;
  }

  if (a6)
  {
    strlen(a6);
  }

  llvm::Module::getOrInsertFunction();
  v17 = AGCLLVMBuilder::map2(a1, v16, a3, a4);
  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  return v17;
}

void AGCLLVMAirBuiltinsGen7::~AGCLLVMAirBuiltinsGen7(AGCLLVMAirBuiltinsGen7 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserShader::improveDMAPromotionOpportunityAGP(AGCLLVMUserShader *this)
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 1150);
  if (v2)
  {
    v4 = *(v1 + 574);
    v5 = &v4[v2];
    v6 = this + 2168;
    while (1)
    {
      Impl = *v4;
      v8 = *(*v4 + 8);
      if (v8 < 3)
      {
        goto LABEL_31;
      }

      v9 = *(Impl - 8 * v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (*v9 - 1 > 1)
      {
        goto LABEL_31;
      }

      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_31;
      }

      if (*(v10 + 16) != 3)
      {
        goto LABEL_31;
      }

      if ((*(v10 + 34) & 0x40) == 0)
      {
        goto LABEL_31;
      }

      SectionImpl = llvm::GlobalObject::getSectionImpl(v10);
      if (v12 != 15)
      {
        goto LABEL_31;
      }

      if (*SectionImpl != 0x625F726566667562 || *(SectionImpl + 7) != 0x73676E69646E6962)
      {
        goto LABEL_31;
      }

      v48 = v6;
      v14 = *v10;
      if (*(*v10 + 8) != 16399 || (llvm::Type::isOpaquePointerTy(*v10) & 1) != 0 || *(**(v14 + 16) + 8) != 15)
      {
        goto LABEL_30;
      }

      v15 = v10[3];
      v16 = *(v15 + 8);
      if ((v16 & 0xFE) == 0x12)
      {
        v16 = *(**(v15 + 16) + 8);
      }

      if ((v16 >> 8) - 1 > 1)
      {
        goto LABEL_30;
      }

      v17 = v10;
      while (1)
      {
        v17 = v17[1];
        if (!v17)
        {
          break;
        }

        if (*(v17[3] + 16) != 60)
        {
          goto LABEL_30;
        }
      }

      v18 = 0;
      v54 = 0;
      if (*(Impl + 8) == 4)
      {
        LODWORD(TypeAllocSize) = 3;
        if (!parseMDInt(0, Impl, &TypeAllocSize, &v54))
        {
          goto LABEL_30;
        }

        v18 = v54;
        if (v54 == -1)
        {
          goto LABEL_30;
        }
      }

      v46 = v18;
      v19 = **(v15 + 16);
      if ((*(*(this + *(*this - 24)) + 216))(this + *(*this - 24)))
      {
        break;
      }

      v20 = v19[8];
      v45 = v19;
      if (v20 == 16)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v6 = v48;
      if (v20 != 7 && (!v21 || (v21[9] & 1) != 0))
      {
        v52 = 0;
        v53 = 0;
        LODWORD(TypeAllocSize) = 1;
        parseMDInt(0, Impl, &TypeAllocSize, &v53);
        LODWORD(TypeAllocSize) = 2;
        parseMDInt(0, Impl, &TypeAllocSize, &v52);
        v22 = *&v48[*(*this - 24)];
        v23 = *(v22 + 1894) == 1 && v53 == 5;
        if (v23 && (v52 & 0x80000000) != 0 || (*(v22 + 1877) & 1) == 0 && v53 == 5 && (v52 & 0x80000000) != 0 && ((*(this + 438) >> (v52 >> 20)) & 1) != 0)
        {
          TypeAllocSize = llvm::ValueAsMetadata::get();
          v56 = *(Impl - 8 * *(Impl + 8) + 8);
          llvm::ConstantInt::get();
          v57 = llvm::ValueAsMetadata::get();
          Impl = llvm::MDTuple::getImpl();
        }

        else if (!v46)
        {
          v47 = v5;
          v44 = v4;
          __p = 0;
          v50 = 0;
          v51 = 0;
          v24 = v10[1];
          if (!v24)
          {
            goto LABEL_83;
          }

          do
          {
            TypeAllocSize = *(v24 + 24);
            *&v56 = 0;
            std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](&__p, &TypeAllocSize);
            v24 = *(v24 + 8);
          }

          while (v24);
          v25 = __p;
          v26 = v50;
          if (__p == v50)
          {
LABEL_83:
            v42 = 1;
LABEL_84:
            TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v45) * v42;
            LODWORD(v56) = v43;
            if (llvm::TypeSize::operator unsigned long long() <= 0xFFFFFFFE)
            {
              TypeAllocSize = llvm::ValueAsMetadata::get();
              v56 = *(Impl - 8 * *(Impl + 8) + 8);
              llvm::ConstantInt::get();
              v57 = llvm::ValueAsMetadata::get();
              Impl = llvm::MDTuple::getImpl();
            }

LABEL_86:
            if (__p)
            {
              operator delete(__p);
            }

            v4 = v44;
            v5 = v47;
            v6 = v48;
            goto LABEL_31;
          }

          v27 = 0;
          while (2)
          {
            v28 = *(v26 - 2);
            v29 = *(v26 - 1);
            v26 -= 16;
            v50 = v26;
            v30 = *(v28 + 8);
            if (!v30)
            {
              goto LABEL_81;
            }

LABEL_56:
            v31 = *(v30 + 24);
            v32 = *(v31 + 16);
            switch(v32)
            {
              case 'M':
                v38 = *v31;
                if (*(*v31 + 8) != 15)
                {
                  goto LABEL_86;
                }

                if (!llvm::Type::isSized(**(v38 + 16)))
                {
                  goto LABEL_86;
                }

                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v45);
                LODWORD(v56) = v39;
                v40 = llvm::TypeSize::operator unsigned long long();
                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), **(v38 + 16));
                LODWORD(v56) = v41;
                if (llvm::TypeSize::operator unsigned long long() > v40)
                {
                  goto LABEL_86;
                }

                while (1)
                {
                  v31 = v31[1];
                  if (!v31)
                  {
                    break;
                  }

                  if (*(v31[3] + 16) != 60)
                  {
                    goto LABEL_86;
                  }
                }

LABEL_59:
                if (v27 <= v29)
                {
                  v27 = v29;
                }

                break;
              case '>':
                v33 = *(v31 + 5) & 0x7FFFFFF;
                v34 = v31[-4 * v33 + 4];
                if (v34)
                {
                  v35 = *(v34 + 16) == 16;
                }

                else
                {
                  v35 = 0;
                }

                if (!v35)
                {
                  goto LABEL_86;
                }

                v36 = (v34 + 24);
                if (*(v34 + 32) >= 0x41u)
                {
                  v36 = *v36;
                }

                v37 = *v36 + v29;
                if (v33 == 2)
                {
                  TypeAllocSize = *(v30 + 24);
                  *&v56 = v37;
                  std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](&__p, &TypeAllocSize);
                }

                else if (v27 <= v37)
                {
                  v27 = v37;
                }

                break;
              case '<':
                goto LABEL_59;
              default:
                goto LABEL_86;
            }

            v30 = *(v30 + 8);
            if (!v30)
            {
              v25 = __p;
              v26 = v50;
LABEL_81:
              if (v25 == v26)
              {
                v42 = v27 + 1;
                goto LABEL_84;
              }

              continue;
            }

            goto LABEL_56;
          }
        }
      }

LABEL_31:
      *v4++ = Impl;
      if (v4 == v5)
      {
        return;
      }
    }

    TypeAllocSize = llvm::ValueAsMetadata::get();
    v56 = *(Impl - 8 * *(Impl + 8) + 8);
    llvm::ConstantInt::get();
    v57 = llvm::ValueAsMetadata::get();
    Impl = llvm::MDTuple::getImpl();
LABEL_30:
    v6 = v48;
    goto LABEL_31;
  }
}

uint64_t AGCLLVMUserFragmentShader::wrapperCallingConvention(AGCLLVMUserFragmentShader *this, uint64_t a2)
{
  if (*(*(this + 660) + 33) & 3) != 0 && ((*(*(this + *(*this - 24) + 2168) + 1914) & 1) != 0 || *(this + 1136) > 0 || ((*(*this + 616))(this, a2)))
  {
    return 103;
  }

  else
  {
    return 101;
  }
}

void AGCLLVMUserShader::getInterpolationLocationMap(AGCLLVMUserShader *this)
{
  {
    AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map = 0;
    *&dword_28117E538 = 0;
    qword_28117E540 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<InterpolationLocation,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, &dword_20E4E1000);
  }
}

void *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void findFunctionStartWithName(void *a1, uint64_t a2, llvm::Twine *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v3 = a2 + 24;
  v4 = *(a2 + 32);
  if (v4 != a2 + 24)
  {
    while (1)
    {
      if (v4)
      {
        v7 = (v4 - 56);
      }

      else
      {
        v7 = 0;
      }

      if (!llvm::GlobalValue::isDeclaration(v7))
      {
        goto LABEL_20;
      }

      Name = llvm::Value::getName(v7);
      v10 = v9;
      llvm::Twine::str(v16, a3);
      v11 = v17;
      v12 = v16[0];
      v13 = v17 >= 0 ? v16 : v16[0];
      v14 = v17 >= 0 ? v17 : v16[1];
      if (v10 < v14)
      {
        break;
      }

      if (v14)
      {
        v15 = memcmp(Name, v13, v14) == 0;
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v15 = 1;
      if (v17 < 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v15)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, v7);
      }

LABEL_20:
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        return;
      }
    }

    v15 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(v12);
    goto LABEL_18;
  }
}

unsigned int *llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 != a2)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(this + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(this);
    }
  }

  return a2;
}

llvm::ValueHandleBase *llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, void *a2)
{
  v2 = *(this + 2);
  v3 = a2[2];
  if (v2 != v3)
  {
    v5 = this;
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
      v3 = a2[2];
    }

    *(v5 + 2) = v3;
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      v8 = (*a2 & 0xFFFFFFFFFFFFFFF8);

      return llvm::ValueHandleBase::AddToExistingUseList(v5, v8);
    }
  }

  return this;
}

uint64_t llvm::IRBuilderBase::SetInsertPoint(llvm::IRBuilderBase *this, llvm::Instruction *a2)
{
  *(this + 6) = *(a2 + 5);
  *(this + 7) = a2 + 24;
  v3 = *(a2 + 6);
  v5 = v3;
  if (v3)
  {
    llvm::MetadataTracking::track();
    v3 = v5;
  }

  result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(this, v3);
  if (v5)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *result + 16 * v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 16 * v3;
      while (*v2)
      {
        v2 += 16;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      *(v2 + 8) = a2;
    }

    else
    {
LABEL_6:
      if (v3 >= *(result + 12))
      {
        return llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(result, 0, a2);
      }

      else
      {
        *v4 = 0;
        *(v4 + 8) = a2;
        *(result + 8) = v3 + 1;
      }
    }
  }

  else
  {
    if (v3)
    {
      v6 = 16 * v3;
      v7 = *result;
      while (*v7)
      {
        v7 += 16;
        v6 -= 16;
        if (!v6)
        {
          v7 = v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v7 = *result;
    }

    if (v7 != v4)
    {
      for (i = v7 + 16; i != v4; i += 16)
      {
        if (*i)
        {
          *v7 = *i;
          *(v7 + 8) = *(i + 8);
          v7 += 16;
        }
      }
    }

LABEL_21:
    *(result + 8) = (v7 - v2) >> 4;
  }

  return result;
}

uint64_t llvm::CallBase::arg_end(llvm::CallBase *this)
{
  v2 = *(this + 16);
  if (v2 == 84)
  {
    NumSubclassExtraOperandsDynamic = 0;
  }

  else if (v2 == 39)
  {
    NumSubclassExtraOperandsDynamic = llvm::CallBase::getNumSubclassExtraOperandsDynamic(this);
  }

  else
  {
    NumSubclassExtraOperandsDynamic = 2;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    Descriptor = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  Descriptor = llvm::User::getDescriptor(this);
  if ((*(this + 5) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = llvm::User::getDescriptor(this);
  v5 = v11 + v12;
LABEL_10:
  if (((v5 - Descriptor) & 0xFFFFFFFF0) != 0)
  {
    v6 = *(llvm::User::getDescriptor(this) + 8);
    v7 = llvm::User::getDescriptor(this);
    v9 = (*(v7 + v8 - 4) - v6);
  }

  else
  {
    v9 = 0;
  }

  return this + -32 * v9 + -32 * NumSubclassExtraOperandsDynamic - 32;
}

BOOL llvm::FPMathOperator::classof(uint64_t *a1)
{
  v1 = *(a1 + 16);
  if (!a1 || (v2 = v1 - 28, v1 < 0x1C))
  {
    v3 = 0;
    if (!a1 || v1 != 5)
    {
      return v3;
    }

    v2 = *(a1 + 9);
  }

  if (v2 > 0x39)
  {
    return 0;
  }

  if (((1 << v2) & 0x40000001255000) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x380000000000000) == 0)
  {
    return 0;
  }

  do
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    a1 = (*a1 + 24);
    if (v4)
    {
      v6 = v5 == 17;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  return v5 < 7;
}

uint64_t AGCLLVMBuilder::InsertPoint::restoreIP(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    llvm::IRBuilderBase::SetInsertPoint(a2, *a1, *(a1 + 8));
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  v4 = *(a1 + 16);
  v6 = v4;
  if (v4)
  {
    llvm::MetadataTracking::track();
    v4 = v6;
  }

  result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(a2, v4);
  if (v6)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *(a2 + 96) = *(a1 + 24);
  return result;
}

uint64_t llvm::IRBuilderBase::SetInsertPoint(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  if (a2 + 40 != a3)
  {
    v3 = result;
    v4 = a3 - 24;
    if (!a3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = v5;
    if (v5)
    {
      llvm::MetadataTracking::track();
      v5 = v6;
    }

    result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(v3, v5);
    if (v6)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u && a4 && *(a4 + 16) <= 0x14u)
  {
    v10 = (*(**(this + 9) + 328))(*(this + 9), a2, a3, a4);
    if (v10)
    {
      v11 = *(v10 + 16) >= 0x1Cu;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
    }
  }

  else
  {
    v17 = 257;
    v10 = llvm::User::operator new(0x40);
    MEMORY[0x20F330760](v10, a2, a3, a4, v16, 0);
    (*(**(this + 10) + 16))(*(this + 10), v10, a5, *(this + 6), *(this + 7));
    v12 = *(this + 2);
    if (v12)
    {
      v13 = *this;
      v14 = &v13[2 * v12];
      do
      {
        llvm::Instruction::setMetadata();
        v13 += 2;
      }

      while (v13 != v14);
    }
  }

  return v10;
}

uint64_t AGCLLVMTargetLowerer::SetIP(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 6);
  result = AGCLLVMBuilder::InsertPoint::restoreIP(&v5, a1 + 8);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateCall(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[13];
  v7 = a1[14];
  v9 = 0;
  if (v7)
  {
    v10 = 48 * v7;
    v11 = v8 + 8;
    do
    {
      v9 += (*v11 - *(v11 - 1)) >> 3;
      v11 += 6;
      v10 -= 48;
    }

    while (v10);
  }

  v12 = llvm::User::operator new(0x50);
  if (v7)
  {
    v13 = 0;
    v14 = 48 * v7;
    v15 = v8 + 8;
    v16 = 48 * v7;
    do
    {
      v13 += (*v15 - *(v15 - 1)) >> 3;
      v15 += 6;
      v16 -= 48;
    }

    while (v16);
    v17 = 0;
    v18 = v8 + 8;
    do
    {
      v17 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v14 -= 48;
    }

    while (v14);
  }

  llvm::Instruction::Instruction();
  *(v12 + 8) = 0;
  llvm::CallInst::init();
  if (*(a1 + 100) == 1)
  {
    llvm::Value::getContext(v12);
    *(v12 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (llvm::FPMathOperator::classof(v12))
  {
    llvm::IRBuilderBase::setFPAttrs(a1, v12, *(a1 + 24));
  }

  (*(*a1[10] + 16))(a1[10], v12, a6, a1[6], a1[7]);
  v19 = *(a1 + 2);
  if (v19)
  {
    v20 = *a1;
    v21 = v20 + 16 * v19;
    do
    {
      llvm::Instruction::setMetadata();
      v20 += 16;
    }

    while (v20 != v21);
  }

  return v12;
}

uint64_t llvm::IRBuilderBase::setFPAttrs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 88))
  {
    llvm::Instruction::setMetadata();
  }

  llvm::Instruction::setFastMathFlags();
  return a2;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

llvm::Type *AGCLLVMBuilder::tryDeducePointeeType(llvm::Type **this, llvm::Value *a2)
{
  v3 = *this;
  if ((llvm::Type::isOpaquePointerTy(*this) & 1) == 0)
  {
    return **(v3 + 2);
  }

  v4 = *(this + 16);
  if (v4 <= 0x1B)
  {
    if (v4 != 5)
    {
      if (v4 <= 3)
      {
        return this[3];
      }

      return 0;
    }

    if (*(this + 9) != 34)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 59)
    {
      return this[8];
    }

    if (v4 != 62)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F4BC8](this);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::detectSideEffects(AGCLLVMAGPFragmentShaderGen3 *this)
{
  if (*(this + 1964) == 2)
  {
    return AGCLLVMAGPFragmentShader::detectSideEffects(this);
  }

  else
  {
    return 1;
  }
}

uint64_t validateMaxTotalThreadsPerThreadgroup(unsigned int a1, unsigned int a2, unsigned int a3, std::string *a4, unsigned int *a5)
{
  if (a2 && a1 != a2 && a1)
  {
    std::to_string(&v33, a1);
    v8 = std::string::insert(&v33, 0, ": Kernel specified max total threads per threadgroup (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v34, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v35, "must match compute pipeline specified max total threads per threadgroup (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    if (!a1)
    {
      a1 = a2;
    }

    if (a1 <= a3)
    {
      *a5 = a1;
      return 1;
    }

    std::to_string(&v33, a1);
    v18 = std::string::insert(&v33, 0, ": Specified total max threads per threadgroup (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v34, ") ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v35, "exceeds the maximum total threads per threadgroup supported (");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a3);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  if (v16)
  {
    v24 = size;
  }

  else
  {
    v24 = v14;
  }

  v25 = std::string::append(&v36, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v37, ")");
  v28 = v27->__r_.__value_.__r.__words[2];
  v38 = *&v27->__r_.__value_.__l.__data_;
  v39 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v39 >= 0)
  {
    v29 = &v38;
  }

  else
  {
    v29 = v38;
  }

  if (v39 >= 0)
  {
    v30 = HIBYTE(v39);
  }

  else
  {
    v30 = *(&v38 + 1);
  }

  std::string::append(a4, v29, v30);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AGCLLVMGen3TargetLowerer::addLIBSpansFromDrawBufferState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 2576) & 1) == 0 && *(a2 + 32))
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      if (((*(a2 + 32) >> v9) & 1) == 0)
      {
        goto LABEL_19;
      }

      v10 = *(a2 + 4 * v9);
      v11 = v10 & 0x1F;
      if ((~v10 & 0xFF000) == 0 || v11 == 23)
      {
        goto LABEL_19;
      }

      v13 = v10 >> 5;
      if (v11 > 0x16)
      {
        break;
      }

      v14 = 1 << v11;
      if (((1 << v11) & 0x41F3C0) != 0)
      {
        v13 *= 2;
      }

      else if ((v14 & 0x3C0000) != 0)
      {
        v13 = 4;
      }

      else
      {
        if ((v14 & 0x20C00) == 0)
        {
          break;
        }

        v13 *= 4;
      }

LABEL_18:
      v15 = *(v8 + 964) * (v10 >> 12);
      v4 = v4 & 0xFFFFFFFF00000000 | *(a3 + 4 * v9);
      result = llvm::SmallVectorTemplateBase<AGCLLVMGen3TargetLowerer::ExplicitLIBSpan,true>::push_back(a4, v15 | ((v15 + v13 - 1) << 32), v4);
LABEL_19:
      if (++v9 == 8)
      {
        return result;
      }
    }

    if (v11 - 2 >= 4)
    {
      v13 = 0;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<AGCLLVMGen3TargetLowerer::ExplicitLIBSpan,true>::push_back(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  ++*(result + 8);
  return result;
}

uint64_t *AGCLLVMUserShader::initLIBAliasOffset(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    if ((~*(a2 + 32) & 0x1FF000) != 0)
    {
      *(result + 3766) = 1;
      v2 = *(a2 + 32);
      if (v2)
      {
        v3 = *result;
        if ((~v2 & 0x1FF000) == 0 || (v4 = *(*(result + *(v3 - 24) + 2168) + 964) * ((v2 >> 12) & 0x1FF), *(result + 1132) = v4, *(result + 1882) = v4, *(result + 1881) = v4, v5 = *(a2 + 4 * (31 - __clz(*(a2 + 32)))), v6 = v5 & 0x1F, v6 == 23) || (~v5 & 0xFF000) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
          return llvm::detail::PassModel<llvm::Module,TranslatorLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::isRequired();
        }

        v7 = v5 >> 5;
        v8 = *(*(result + *(v3 - 24) + 2168) + 964) * (v5 >> 12);
        if (v6 <= 0x16)
        {
          if (((1 << v6) & 0x41F3C0) != 0)
          {
            v9 = 2 * v7;
LABEL_17:
            *(result + 1133) = v9 + v8;
            return result;
          }

          if (((1 << v6) & 0x3C0000) != 0)
          {
            v9 = 4;
            goto LABEL_17;
          }

          if (((1 << v6) & 0x20C00) != 0)
          {
            v9 = 4 * v7;
            goto LABEL_17;
          }
        }

        if (v6 - 2 >= 4)
        {
          v9 = 0;
        }

        else
        {
          v9 = v7;
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

double AGCLLVMGen3TargetLowerer::clampInfoForFormat@<D0>(int a1@<W1>, uint64_t a2@<X8>)
{
  AGCLLVMTargetLowerer::clampInfoForFormat(a1, a2);
  if (a1 == 16)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 20) = 1;
    }

    *&result = 3208691902;
    *a2 = xmmword_20E70C720;
    *(a2 + 16) = 257;
  }

  else if (a1 == 19)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 20) = 1;
    }

    result = 0.0;
    *a2 = xmmword_20E70C730;
    *(a2 + 16) = 0;
  }

  return result;
}

void AGCLLVMTargetLowerer::clampInfoForFormat(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 20) = 0;
  v2 = 0.0;
  if (a1 > 12)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v8 = 1067458589;
        v9 = -1086275394;
      }

      else
      {
        if (a1 != 22)
        {
          return;
        }

        v8 = 1070964691;
        v9 = -1090064377;
      }

      *a2 = v9;
      *(a2 + 4) = 0;
      *(a2 + 8) = v8;
      *(a2 + 12) = 1065353216;
      *(a2 + 17) = 0;
      *(a2 + 20) = 1;
LABEL_20:
      *(a2 + 16) = 1;
      return;
    }

    if (a1 != 13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a1 > 5)
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
LABEL_12:
    v2 = -1.0;
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    return;
  }

LABEL_13:
  *a2 = v2;
  *(a2 + 4) = v2;
  __asm { FMOV            V0.2S, #1.0 }

  *(a2 + 8) = _D0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  if ((a1 - 13) < 2)
  {
    goto LABEL_20;
  }
}

char *llvm::PassInfoMixin<InitCompileUserFragmentShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x53)
  {
    v1 = v0;
  }

  else
  {
    v1 = 83;
  }

  v2 = &aStringrefLlvmG_45[v1];
  v3 = 83 - v1;
  if ((83 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 83 - v1;
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

uint64_t AGCLLVMAGPFragmentShader::detectSideEffects(AGCLLVMAGPFragmentShader *this)
{
  v1 = this;
  v2 = this + 4096;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 == v3 + 24)
  {
    goto LABEL_127;
  }

  v63 = this + 4096;
  v6 = 0;
  v7 = 0;
  v62 = 0;
  v8 = 0;
  v60 = 0;
  v9 = "air-no-user-resource-stores";
  do
  {
    if (v5)
    {
      v10 = v5 - 56;
    }

    else
    {
      v10 = 0;
    }

    if ((llvm::Function::hasFnAttribute() & 1) == 0)
    {
      v11 = v10 + 72;
      v12 = *(v10 + 80);
      if (v12 == v10 + 72)
      {
        v14 = 0;
      }

      else
      {
        do
        {
          v13 = v12 - 24;
          if (!v12)
          {
            v13 = 0;
          }

          v14 = *(v13 + 48);
          if (v14 != v13 + 40)
          {
            break;
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }

      while (1)
      {
        if (v12 == v11)
        {
          goto LABEL_7;
        }

        if (v14)
        {
          v15 = v14 - 24;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(v15 + 16);
        if (v14 && v16 == 61)
        {
          v17 = **(v14 - 56);
          v18 = *(v17 + 8);
          if ((v18 & 0xFE) == 0x12)
          {
            v18 = *(**(v17 + 16) + 8);
          }

          v19 = v18 >> 8;
          switch(v19)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }

          goto LABEL_37;
        }

        if (!v14)
        {
          goto LABEL_37;
        }

        if (v16 != 84)
        {
          goto LABEL_37;
        }

        v20 = *(v15 - 32);
        if (!v20 || *(v20 + 16) || *(v20 + 24) != *(v15 + 72))
        {
          goto LABEL_37;
        }

        v64 = v6;
        v21 = v7;
        v22 = v8;
        v23 = v4;
        v24 = v9;
        Name = llvm::Value::getName(v20);
        v66 = v25;
        v26 = llvm::CallBase::arg_end(v15);
        v27 = v15 - 32 * (*(v15 + 20) & 0x7FFFFFF);
        v28 = ((v26 - v27) & 0x1FFFFFFFE0) != 0 && *(**v27 + 8) == 15;
        v30 = v66;
        if (v66 < 0xA)
        {
          v31 = 0;
          v9 = v24;
          v4 = v23;
          v8 = v22;
LABEL_65:
          v7 = v21;
          v6 = v64;
          goto LABEL_66;
        }

        v32 = *Name == 0x6D6F74612E726961 && *(Name + 8) == 25449;
        if (!v32 || llvm::StringRef::find() != -1 || !v28)
        {
          v9 = v24;
          goto LABEL_61;
        }

        v33 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF));
        v34 = *(v33 + 8);
        if ((v34 & 0xFE) == 0x12)
        {
          v34 = *(**(v33 + 16) + 8);
        }

        v35 = v34 >> 8;
        v9 = v24;
        if (v35 == 1)
        {
          break;
        }

        v4 = v23;
        if (v35 != 8)
        {
          if (v35 == 3)
          {
            v60 = 1;
            v21 = 1;
          }

          goto LABEL_62;
        }

        v60 = 1;
        v8 = 1;
LABEL_63:
        v30 = v66;
        if (v66 < 0xB)
        {
          v31 = 0;
          goto LABEL_65;
        }

        v36 = Name;
        v37 = *Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7970636D656D2E6DLL;
        v7 = v21;
        if (v37)
        {
          v50 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF));
          v51 = *(v50 + 8);
          v6 = v64;
          if ((v51 & 0xFE) == 0x12)
          {
            v51 = *(**(v50 + 16) + 8);
          }

          v52 = v51 >> 8;
          switch(v52)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }
        }

        else
        {
          v6 = v64;
        }

        if (v66 < 0xF || (*Name == 0x5F7465732E726961 ? (v38 = *(Name + 7) == 0x5F7265666675625FLL) : (v38 = 0), !v38 ? (v39 = 0) : (v39 = 1), (v6 |= v39, v66 < 0x14) || (*Name == 0x646D69732E726961 ? (v40 = *(Name + 8) == 0x616D5F70756F7267) : (v40 = 0), v40 ? (v41 = *(Name + 16) == 2020176500) : (v41 = 0), !v41)))
        {
          LOBYTE(v31) = 0;
          goto LABEL_91;
        }

        v31 = llvm::StringRef::find() != -1;
        v30 = v66;
LABEL_66:
        if (v30 < 9)
        {
          if (v31)
          {
            goto LABEL_96;
          }

          goto LABEL_104;
        }

        v36 = Name;
LABEL_91:
        v42 = *v36;
        v43 = *(v36 + 8);
        v44 = v42 == 0x726F74732E726961 && v43 == 101;
        if (v44 || v31)
        {
LABEL_96:
          v45 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF) + 32);
          v46 = *(v45 + 8);
          if ((v46 & 0xFE) == 0x12)
          {
            v46 = *(**(v45 + 16) + 8);
          }

          v47 = v46 >> 8;
          switch(v47)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }
        }

LABEL_104:
        SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(v63[352]);
        Key = llvm::StringMapImpl::FindKey();
        if (Key != -1 && Key != *(SampleFunctionMap + 2))
        {
          v62 |= *(*(*SampleFunctionMap + 8 * Key) + 8) == 3;
        }

LABEL_37:
        v14 = *(v14 + 8);
        v29 = v12 - 24;
        if (!v12)
        {
          v29 = 0;
        }

        while (v14 == v29 + 40)
        {
          v12 = *(v12 + 8);
          if (v12 == v11)
          {
            break;
          }

          v29 = v12 - 24;
          if (!v12)
          {
            v29 = 0;
          }

          v14 = *(v29 + 48);
        }
      }

      v60 = 1;
      v64 = 1;
LABEL_61:
      v4 = v23;
LABEL_62:
      v8 = v22;
      goto LABEL_63;
    }

LABEL_7:
    v5 = *(v5 + 8);
  }

  while (v5 != v4);
  v1 = this;
  v2 = v63;
  if ((v6 | v7 | v62 | v8))
  {
    if ((v7 & 1) != 0 && (v53 = (this + *(*this - 24)), (*(v53[90].__r_.__value_.__l.__size_ + 1857) & 1) == 0))
    {
      v59 = "threadgroup memory not supported in fragment shaders";
    }

    else
    {
      if (v62 & 1) == 0 || (v53 = (this + *(*this - 24)), (*(v53[90].__r_.__value_.__l.__size_ + 1856)))
      {
        if ((v60 & 1) != 0 && *(this + 1136) <= 0)
        {
          *(this + 1136) = 1;
        }

        *(this + 1760) = 2;
        goto LABEL_129;
      }

      v59 = "Texture writes not supported in fragment shaders";
    }

    std::string::append(v53 + 69, v59);
    return 0;
  }

LABEL_127:
  if ((v2[2349] & 1) != 0 || v2[2348] == 1)
  {
LABEL_129:
    Operand = llvm::NamedMDNode::getOperand(*(v1 + 7));
    v55 = *(Operand + 8);
    if (Operand - 8 * v55 + 24 != Operand)
    {
      v56 = Operand;
      v57 = 24 - 8 * v55;
      while (!isStringMDNode(*(v56 + v57), "early_fragment_tests"))
      {
        v57 += 8;
        if (!v57)
        {
          goto LABEL_135;
        }
      }

      *(v1 + 1760) = 1;
      llvm::Module::getOrInsertNamedMetadata();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

LABEL_135:
  if (*(v1 + 1760) == 2)
  {
    if ((v2[2339] & 1) == 0)
    {
      v2[2339] = 1;
      *(v1 + 1610) = 1;
    }

    *(v1 + 1609) = 0;
  }

  return 1;
}

char *llvm::PassInfoMixin<InitCompileAGPFragmentShaderPass>::name()
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

  v2 = &aStringrefLlvmG_0[v1];
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

uint64_t AGCLLVMUserShader::setUniformAtomicsMode(AGCLLVMUserShader *this, int a2)
{
  llvm::Module::getOrInsertNamedMetadata();
  v3 = 0x27C8D7000uLL;
  {
    v3 = 0x27C8D7000;
    if (v6)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v3 = 0x27C8D7000;
    }
  }

  if (*(v3 + 2944) == 1)
  {
    Value = AGCEnv::getValue("AGC_DISABLE_ATOMIC_OPTIMIZATIONS", v2);
    if (Value)
    {
      if (*Value != 48)
      {
        atoi(Value);
      }
    }
  }

  llvm::MDString::get();
  llvm::MDTuple::getImpl();
  return llvm::NamedMDNode::addOperand();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGFragShaderGen3Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_3[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
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

char *llvm::PassInfoMixin<InitCompileAGPFragmentShaderGen3Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x56)
  {
    v1 = v0;
  }

  else
  {
    v1 = 86;
  }

  v2 = &aStringrefLlvmG_4[v1];
  v3 = 86 - v1;
  if ((86 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 86 - v1;
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

uint64_t *llvm::SmallVectorImpl<unsigned int>::assign(uint64_t *result, unint64_t a2, int a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *result;
  v5 = result + 1;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 2);
  }

  if (v6)
  {
    v7 = (v6 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = (v3 + 8);
    v10 = 1;
    do
    {
      v11 = vdupq_n_s64(v10 - 1);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_20E70C4F0)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v9 - 2) = a3;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *(v9 - 1) = a3;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_20E70C4E0)))).i32[1])
      {
        *v9 = a3;
        v9[1] = a3;
      }

      v10 += 4;
      v9 += 4;
      v7 -= 4;
    }

    while (v7);
    v4 = *v5;
  }

  v13 = a2 - v4;
  if (a2 > v4)
  {
    v14 = 0;
    v15 = vdupq_n_s64(v13 - 1);
    v16 = (v3 + 4 * v4 + 8);
    do
    {
      v17 = vdupq_n_s64(v14);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_20E70C4F0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = a3;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = a3;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_20E70C4E0)))).i32[1])
      {
        *v16 = a3;
        v16[1] = a3;
      }

      v14 += 4;
      v16 += 4;
    }

    while (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v14);
  }

  *v5 = a2;
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::setupFixedPRIDS(uint64_t a1, const char *a2)
{
  if (*(a1 + 2576))
  {
    return 1;
  }

  v2 = a2;
  if (a2 == 2)
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1)
    {
      Value = AGCEnv::getValue("AGX_G10_DISABLE_TILE_FRAGMENT_SYNC", a2);
      if (Value)
      {
        if (*Value != 48)
        {
          atoi(Value);
        }
      }
    }
  }

  llvm::Module::getOrInsertNamedMetadata();
  llvm::MDString::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (v5 = AGCEnv::getValue("AGX_G10_DISABLE_TILE_FRAGMENT_SYNC", v4)) != 0 && *v5 != 48 && (v7 = atoi(v5), (v2 - 3) <= 3) && v7)
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

void AGCLLVMGen3TargetLowerer::setupLIBRasterOrderGroupFromSpans(uint64_t a1, uint64_t a2, int a3)
{
  v9[16] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2576) & 1) == 0 && *(a2 + 8))
  {
    v8[0] = v9;
    v8[1] = 0x1000000000;
    v4 = llvm::MDString::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, v4);
    if (*(a2 + 8))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        llvm::MDString::get();
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        llvm::MDString::get();
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, Impl);
        ++v6;
        v5 += 12;
      }

      while (v6 < *(a2 + 8));
    }

    llvm::Module::getOrInsertNamedMetadata();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (v8[0] != v9)
    {
      free(v8[0]);
    }
  }
}

char *llvm::PassInfoMixin<SimdMatrixPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_78[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

uint64_t llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          v10 = *v8;
          v11 = *(v8 + 39);
          if ((v11 & 0x80000000) != 0)
          {
            operator delete(*(v8 + 2));
          }

          llvm::deallocate_buffer(v11, v8, (v10 + 57));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

char *llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x53)
  {
    v1 = v0;
  }

  else
  {
    v1 = 83;
  }

  v2 = &aStringrefLlvmG_56[v1];
  v3 = 83 - v1;
  if ((83 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 83 - v1;
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

char *llvm::PassInfoMixin<NumericPackUnpackPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_79[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
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

uint64_t llvm::OuterAnalysisManagerProxy<llvm::AnalysisManager<llvm::Module>,llvm::Function>::Result::getCachedResult<AGCUserObjectWrapper,llvm::Module>(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>,std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>::find(v2, v3, &AGCUserObjectWrapper::Key, a2);
  if ((v2 + 24 * v3) == v4)
  {
    return 0;
  }

  v5 = *(v4[2] + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 + 8;
  v10 = 0;
  v9 = 0u;
  *v11 = 1;
  for (i = 8; i != 136; i += 16)
  {
    *&v11[i] = -4096;
  }

  if ((v11[0] & 1) == 0)
  {
    llvm::deallocate_buffer(v11[0], v12, 0);
  }

  return v6;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>,std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>::find(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return (a1 + 24 * a2);
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9) | (((a3 >> 4) ^ (a3 >> 9)) << 32)) + ~(((a4 >> 4) ^ (a4 >> 9)) << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = a2 - 1;
  v8 = (a2 - 1) & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v9 = (a1 + 24 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*v9 != a3 || v10 != a4)
  {
    v13 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & v7;
      v9 = (a1 + 24 * (v14 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*v9 == a3 && v10 == a4)
      {
        return v9;
      }
    }

    return (a1 + 24 * a2);
  }

  return v9;
}

uint64_t llvm::StringRef::compare(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (v6)
  {
    v7 = memcmp(a1, __s2, v6);
    if (v7)
    {
      return (v7 >> 31) | 1u;
    }
  }

  if (a4 > a2)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (a4 == a2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t *_ZNSt3__16__treeINS_12__value_typeIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS2_8FunctionERNS2_15AnalysisManagerIS5_JEEEE17QuantizedTypeInfoEENS_19__map_value_compareIS3_SB_NS_4lessIS3_EELb1EEENS_9allocatorISB_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISN_EERKT_(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 8);
    v7 = *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        if (llvm::StringRef::compare(v7, v6, v4[4], v4[5]) != -1)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (llvm::StringRef::compare(v8[4], v8[5], v7, v6) != -1)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}