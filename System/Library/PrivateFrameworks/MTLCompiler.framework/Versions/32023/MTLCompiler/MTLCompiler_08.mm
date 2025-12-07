uint64_t MTLIRBuilder::getOrInsertStackOverflowFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.stack_overflow", &VoidTy, &v7, &v6, this + 22, this + 17, this + 18, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::CreateBadAccelerationStructureCall(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9)
{
  v23[8] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(this, *(*(this[6] + 7) + 40));
  v16 = inserted;
  if (inserted)
  {
    v17 = *(inserted + 24);
  }

  else
  {
    v17 = 0;
  }

  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = llvm::ConstantInt::get();
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a9;
  v22 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v17, v16, v23, 8, v21, 0);
  llvm::Value::getContext(v18);
  *(v18 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v18);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v18 + 64) = result;
  *(v18 + 18) = *(v18 + 18) & 0xFFFC | 1;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_acceleration_structure", &VoidTy, &v7, &v6, this + 22, this + 17, this + 18, this + 18, this + 17, this + 17);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11, uint64_t *a12)
{
  v18 = strlen(__s);
  *&v22 = *a9;
  *(&v22 + 1) = *a10;
  *&v21 = *a7;
  *(&v21 + 1) = *a8;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11, *a12);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11)
{
  v18 = strlen(__s);
  *(&v22 + 1) = *a10;
  *(&v21 + 1) = *a8;
  *&v22 = *a9;
  *&v21 = *a7;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10[0] = a6;
  v10[1] = a7;
  v10[2] = a8;
  llvm::SmallVector<llvm::Type *,3u>::SmallVector(&v11, v10, 3);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v11 != v12)
  {
    free(v11);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A34FC0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v12[0] = a6;
  v12[1] = a7;
  v12[2] = a8;
  v13 = a9;
  v14 = a10;
  llvm::SmallVector<llvm::Type *,6u>::SmallVector(&v15, v12, 6);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v15 != v16)
  {
    free(v15);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,6u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A3513C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v14[0] = a6;
  v14[1] = a7;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  v18 = a12;
  llvm::SmallVector<llvm::Type *,9u>::SmallVector(&v19, v14, 9);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v19 != v20)
  {
    free(v19);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,9u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x900000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A352B8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  llvm::SmallVector<llvm::Type *,8u>::SmallVector(&v17, v13, 8);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v17 != v18)
  {
    free(v17);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A35434(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerObject::getFragmentVaryingsInfo(MTLCompilerObject *this, int a2, const char *a3, unint64_t a4, MTLCompilerObject::FragmentVaryingsInfo *a5)
{
  if (a4)
  {
    v31 = a3;
    v32 = a4;
    *(a5 + 19) = *a3;
    if (a4 == 1)
    {
      goto LABEL_30;
    }

    *(a5 + 20) = *(a3 + 1);
    if (a4 <= 2)
    {
      goto LABEL_30;
    }

    *(a5 + 21) = *(a3 + 2);
    if (a4 == 3)
    {
      goto LABEL_30;
    }

    v6 = *(a3 + 3);
    v33 = 4;
    *(a5 + 18) = v6;
    if (a2)
    {
      std::vector<PackedInput>::reserve(a5 + 3, v6);
      if (*(a5 + 18))
      {
        v7 = 0;
        while (1)
        {
          v8 = v33;
          if (v33 >= v32)
          {
            break;
          }

          v9 = v31[v33++];
          LOWORD(v29) = v9;
          if (v8 + 1 >= v32)
          {
            break;
          }

          v10 = v31[v8 + 1];
          v33 = v8 + 2;
          WORD1(v29) = v10 & 0xF;
          v11 = v10 >> 4;
          WORD2(v29) = v10 >> 4;
          v12 = &v29 + 3;
          if (v10 >= 0x10)
          {
            do
            {
              v13 = (*(a5 + 1) - *a5) >> 5;
              *v12++ = v13;
              deserializeFragmentInput(&v31, v13, a5 + 6, v28);
              std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
              --v11;
            }

            while (v11);
          }

          v15 = *(a5 + 4);
          v14 = *(a5 + 5);
          if (v15 >= v14)
          {
            v17 = *(a5 + 3);
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(a5 + 24, v21);
            }

            v22 = 24 * v18;
            *v22 = v29;
            *(v22 + 16) = v30;
            v16 = 24 * v18 + 24;
            v23 = *(a5 + 3);
            v24 = *(a5 + 4) - v23;
            v25 = 24 * v18 - v24;
            memcpy((v22 - v24), v23, v24);
            v26 = *(a5 + 3);
            *(a5 + 3) = v25;
            *(a5 + 4) = v16;
            *(a5 + 5) = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v15 = v29;
            *(v15 + 16) = v30;
            v16 = v15 + 24;
          }

          *(a5 + 4) = v16;
          if (++v7 >= *(a5 + 18))
          {
            return;
          }
        }

LABEL_30:
        abort();
      }
    }

    else
    {
      std::vector<VaryingInfo>::reserve(a5, v6);
      if (*(a5 + 18))
      {
        v27 = 0;
        do
        {
          deserializeFragmentInput(&v31, v27, a5 + 6, v28);
          std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
          ++v27;
        }

        while (v27 < *(a5 + 18));
      }
    }
  }
}

void std::vector<PackedInput>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<VaryingInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void deserializeFragmentInput(DeserialContext *a1@<X0>, int a2@<W1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v5 >= v6 || (v7 = *a1, v8 = *(*a1 + v5), *(a1 + 2) = v5 + 1, v5 + 1 >= v6))
  {
    abort();
  }

  v11 = *(v7 + v5 + 1);
  *(a1 + 2) = v5 + 2;
  __len = 0;
  v12 = DeserialContext::deserializeCStringNoCopy(a1, &__len);
  v13 = __len;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v12;
  if (__len >= 0x17)
  {
    operator new();
  }

  v17 = __len;
  if (__len)
  {
    memmove(&__p, v12, __len);
  }

  *(&__p + v13) = 0;
  p_p = &__p;
  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &__p, &std::piecewise_construct, &p_p, &v19) + 14) = a2;
  v15 = __len;
  *(a4 + 8) = v14;
  *(a4 + 16) = v15;
  *(a4 + 24) = v8;
  *(a4 + 28) = (v11 >> 1) & 0x38 | (2 * (v11 & 3));
  *a4 = a2;
  if (v17 < 0)
  {
    operator delete(__p);
  }
}

void sub_257A359CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<VaryingInfo>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t DeserialContext::deserializeCStringNoCopy(DeserialContext *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = v2 - v3;
  if (v2 <= v3 || (v7 = *this, v8 = strnlen((*this + v3), v2 - v3), v8 == v4))
  {
    abort();
  }

  if (a2)
  {
    *a2 = v8;
    v9 = *(this + 2);
  }

  else
  {
    v9 = v3;
  }

  *(this + 2) = v8 + v9 + 1;
  return v7 + v3;
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_257A35D44(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL isBufferMetadata(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8);
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  v2 = 0;
  if (v4 > 30)
  {
    if (v4 == 31)
    {
      return *String == 0x65746E692E726961 && String[1] == 0x6E6F697463657372 && String[2] == 0x6F6974636E75665FLL && *(String + 23) == 0x656C6261745F6E6FLL;
    }

    else
    {
      if (v4 == 35)
      {
        v8 = "air.instance_acceleration_structure";
        v9 = 35;
      }

      else
      {
        if (v4 != 36)
        {
          return v2;
        }

        v8 = "air.primitive_acceleration_structure";
        v9 = 36;
      }

      return memcmp(String, v8, v9) == 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 10:
        v7 = *String == 0x666675622E726961 && *(String + 4) == 29285;
        break;
      case 19:
        v7 = *String == 0x69646E692E726961 && String[1] == 0x6675625F74636572 && *(String + 11) == 0x7265666675625F74;
        break;
      case 26:
        v7 = *String == 0x697369762E726961 && String[1] == 0x636E75665F656C62 && String[2] == 0x6261745F6E6F6974 && *(String + 12) == 25964;
        break;
      default:
        return v2;
    }
  }

  return v7;
}

void MTLArgumentBufferConversion::~MTLArgumentBufferConversion(MTLArgumentBufferConversion *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

BOOL MTLArgumentBufferConversion::runOnModule(MTLArgumentBufferConversion *this, llvm::Module *a2)
{
  v124[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v97[0] = 0;
    v97[1] = 0;
    v98 = 0;
    v122 = v124;
    v123 = 0x800000000;
    v120[0] = &v121;
    v120[1] = 0x800000000;
    v117 = &v119;
    v118 = 0x1F00000000;
    if ((*(*(this + 4) + 22) & 2) != 0)
    {
      v6 = 1;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v117, 1uLL);
    }

    else
    {
      v6 = 31;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v117, 0x1FuLL);
    }

    llvm::SmallVectorImpl<llvm::Value *>::assign(&v117, v6, 0);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(v120);
    v114 = 0;
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(&v122);
    EntryFunction = MetalModulePass::getEntryFunction(this);
    v7 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    v8 = *(v7 + 8);
    if (!v8)
    {
LABEL_27:
      if ((*(*(this + 4) + 22) & 2) != 0)
      {
        v21 = llvm::PointerType::get();
        v22 = llvm::ArrayType::get(v21, 0x1F);
        *v117 = v22;
      }

      else
      {
        v19 = v118;
        if (v118)
        {
          v20 = 0;
          do
          {
            if (!*(v117 + v20))
            {
              *(v117 + v20) = llvm::PointerType::get();
              v19 = v118;
            }

            ++v20;
          }

          while (v19 > v20);
        }
      }

      v23 = llvm::StructType::create();
      StructLayout = llvm::DataLayout::getStructLayout();
      v114 = &v116;
      v115 = 0x1F00000000;
      v112[0] = &v113;
      v112[1] = 0x1F00000000;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(v112, v118);
      v96 = 0;
      if (v118)
      {
        v25 = 0;
        v26 = 0;
        v27 = StructLayout + 16;
        do
        {
          v95.n128_u64[0] = "air.read_write";
          v95.n128_u64[1] = 14;
          v28 = *(v23 + 2);
          if ((*(*(this + 4) + 22) & 2) != 0)
          {
            v29 = *(*v28 + 16);
          }

          else
          {
            v29 = (v28 + 8 * v26);
          }

          v30 = *v29;
          v94.n128_u64[0] = "int";
          v94.n128_u64[1] = 3;
          *(&__src.__r_.__value_.__s + 23) = 3;
          LODWORD(__src.__r_.__value_.__l.__data_) = 3039841;
          std::to_string(&v102, v25);
          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v102;
          }

          else
          {
            v31 = v102.__r_.__value_.__r.__words[0];
          }

          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v102.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v102.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__src, v31, size);
          v35 = *&v33->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v35;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          String = "air.buffer";
          v93 = 10;
          StructTypeInfo = 0;
          if ((*(*(this + 4) + 22) & 2) == 0)
          {
            __src.__r_.__value_.__r.__words[0] = 0;
            v36 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(v97, &v96, &__src);
            v37 = __src.__r_.__value_.__r.__words[0] == v97[0] + 32 * v98 ? 0 : v36;
            if (v37 == 1)
            {
              v38 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v97, &v96);
              llvm::SmallVector<unsigned int,2u>::SmallVector(&__src, (v38 + 2));
              if (LODWORD(__src.__r_.__value_.__r.__words[1]) == 1)
              {
                v39 = *(v7 - 8 * *(v7 + 8) + 8 * *__src.__r_.__value_.__l.__data_);
                v110 = v94;
                LOBYTE(v111) = 1;
                MTLBoundsCheck::getArgTypeName(v39, &v110, &v102);
                v94 = *&v102.__r_.__value_.__l.__data_;
                v40 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
                v41 = __p[0].__r_.__value_.__r.__words[0];
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = __p;
                }

                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v40 = __p[0].__r_.__value_.__l.__size_;
                }

                v89[0] = v41;
                v89[1] = v40;
                v90 = 1;
                MTLBoundsCheck::getArgName(v39, v89, &v110);
                llvm::StringRef::str(&v110, &v102);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v102;
                v110 = v95;
                LOBYTE(v111) = 1;
                MTLBoundsCheck::getArgAccessType(v39, &v110, &v102);
                v95 = *&v102.__r_.__value_.__l.__data_;
                String = llvm::MDString::getString(*&v39[-2 * v39[2] + 2]);
                v93 = v42;
                StructTypeInfo = MTLBoundsCheck::getStructTypeInfo(v39);
              }

              if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
              {
                free(__src.__r_.__value_.__l.__data_);
              }
            }
          }

          __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__r.__words[2];
          __src.__r_.__value_.__l.__size_ = 0x800000000;
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v96, v34);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          llvm::StringRef::str(&String, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.location_index", v43);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v96, v44);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<int>(this, 1, v45);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          llvm::StringRef::str(&v95, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (StructTypeInfo)
          {
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.struct_type_info", v46);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &StructTypeInfo);
          }

          if (llvm::Type::isSized(*v30[2]))
          {
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_size", v47);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
            v102.__r_.__value_.__r.__words[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *v30[2]) + 7) >> 3;
            LODWORD(v102.__r_.__value_.__r.__words[1]) = v48 == 1;
            v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v110);
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_align_size", v49);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
            PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *v30[2]);
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned long long>(this, PrefTypeAlignment, v51);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_name", v47);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          llvm::StringRef::str(&v94, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_name", v52);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, __p);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v102);
          Impl = llvm::MDTuple::getImpl();
          v54 = v96;
          *(v112[0] + v96) = Impl;
          if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
          {
            free(__src.__r_.__value_.__l.__data_);
            v54 = v96;
          }

          v55 = *(v27 + 8 * v54);
          v110.n128_u64[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v30) + 7) >> 3;
          v110.n128_u32[2] = v56 == 1;
          v57 = v114;
          v58 = v115;
          __src.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v55, v59);
          v60 = llvm::TypeSize::operator unsigned long long();
          __src.__r_.__value_.__l.__size_ = MetalModulePass::getMetadata<unsigned int>(this, v60, v61);
          __src.__r_.__value_.__r.__words[2] = MetalModulePass::getMetadata<unsigned int>(this, 0, v62);
          llvm::StringRef::str(&v94, &v102);
          Metadata = MetalModulePass::getMetadata(this, &v102);
          v105 = MetalModulePass::getMetadata(this, __p);
          v106 = MetalModulePass::getMetadata(this, "air.indirect_argument", v63);
          v107 = *(v112[0] + v96);
          llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(&v114, v57 + 8 * v58, &__src, v108);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v25 = ++v96;
          v26 = v96;
        }

        while (v118 > v96);
      }

      v64 = llvm::MDTuple::getImpl();
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(*(this + 7), v23);
      v67 = v66 == 1;
      v68 = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), v23);
      __src.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v23);
      __src.__r_.__value_.__l.__size_ = v69;
      llvm::StringRef::str(&__src.__r_.__value_.__l.__data_, v87);
      v70 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(this, 0, "air.indirect_buffer", "air.location_index", 0, 1, "air.read", "air.address_space", 1, "air.struct_type_info", v64, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v67, "air.arg_type_align_size", v68, "air.arg_type_name", v87, "air.arg_name", "debug.argument_buffer");
      if (v88 < 0)
      {
        operator delete(v87[0]);
      }

      *v120[0] = v70;
      *v122 = llvm::PointerType::get();
      v71 = llvm::FunctionType::get();
      llvm::Module::getFunction();
      v72 = *(EntryFunction + 8);
      __src.__r_.__value_.__r.__words[0] = "mtl.argument_buffer_wrap";
      LOWORD(v105) = 259;
      v73 = llvm::Function::Create(v71, v72 & 0xF, &__src, *(this + 6));
      *(EntryFunction + 8) = *(EntryFunction + 8) & 0xFFFFBFC0 | 0x4007;
      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v89[0] = llvm::AttributeList::getAttributes(&__src);
      v74 = llvm::AttributeSet::begin(v89);
      v75 = llvm::AttributeSet::end(v89);
      while (v74 != v75)
      {
        llvm::Function::addFnAttr();
        v74 += 8;
      }

      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v95.n128_u64[0] = llvm::AttributeList::getAttributes(&__src);
      v76 = llvm::AttributeSet::begin(&v95);
      v77 = llvm::AttributeSet::end(&v95);
      while (v76 != v77)
      {
        llvm::compat::addAttribute();
        v76 += 8;
      }

      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
      __p[0].__r_.__value_.__l.__size_ = 0x800000000;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(__p, *(EntryFunction + 12));
      if (v100)
      {
        if (v101)
        {
          v79 = 8 * v101;
          v80 = v99;
          while (*v80 >= 0xFFFFFFFE)
          {
            v80 += 2;
            v79 -= 8;
            if (!v79)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v80 = v99;
        }

        v81 = &v99[2 * v101];
        while (v80 != v81)
        {
          v82 = *v80;
          v83 = v80[1];
          v102.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
          llvm::compat::getParamAttrs(&v102, v82);
          llvm::AttrBuilder::AttrBuilder();
          llvm::Function::addParamAttrs();
          if (__src.__r_.__value_.__l.__size_ != &Metadata)
          {
            free(__src.__r_.__value_.__l.__size_);
          }

          if (*(v73 + 18))
          {
            llvm::Function::BuildLazyArguments(v73);
          }

          *(__p[0].__r_.__value_.__r.__words[0] + 8 * v82) = *(v73 + 88) + 40 * v83;
          do
          {
            v80 += 2;
          }

          while (v80 != v81 && *v80 >= 0xFFFFFFFE);
        }
      }

LABEL_106:
      v84 = *(this + 5);
      __src.__r_.__value_.__r.__words[0] = "entry";
      LOWORD(v105) = 259;
      llvm::BasicBlock::Create(v84, &__src, v73, 0, v78);
    }

    v9 = 0;
    v10 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    while (1)
    {
      v11 = *(v10 - 8 * v8);
      v114 = v11;
      v12 = *(*&v11[-2 * v11[2]] + 128);
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      v14 = *v13;
      v112[0] = v14;
      if (*(EntryFunction + 9))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v14 = v112[0];
        v11 = v114;
      }

      __src.__r_.__value_.__r.__words[0] = *(*(EntryFunction + 11) + 40 * v14);
      __p[0].__r_.__value_.__s.__data_[0] = 0;
      __p[0].__r_.__value_.__s.__data_[4] = 0;
      if (isBufferMetadata(v11))
      {
        v15 = (*(__src.__r_.__value_.__r.__words[0] + 8) & 0xFE) == 0x12 ? *(**(__src.__r_.__value_.__r.__words[0] + 16) + 8) & 0xFFFFFF00 : *(__src.__r_.__value_.__r.__words[0] + 8) & 0xFFFFFF00;
        if (v15 == 256 || v15 == 512)
        {
          LocationIndex = MTLBoundsCheck::getLocationIndex(v114);
          if ((__p[0].__r_.__value_.__s.__data_[4] & 1) == 0)
          {
            __p[0].__r_.__value_.__s.__data_[4] = 1;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = LocationIndex;
          if (LocationIndex < 0x1F)
          {
            if ((*(*(this + 4) + 22) & 2) == 0 && !*(v117 + LocationIndex))
            {
              *(v117 + LocationIndex) = __src.__r_.__value_.__r.__words[0];
            }

            v17 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v97, __p);
            llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>(v17 + 1, v112);
            goto LABEL_26;
          }

          MTLBoundsCheck::setLocationIndex(v114, LocationIndex - 30);
        }
      }

      v18 = v123;
      LODWORD(v102.__r_.__value_.__l.__data_) = v112[0];
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(&v99, &v102) + 1) = v18;
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v122, &__src);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v120, &v114);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDNode::replaceOperandWith();
LABEL_26:
      ++v9;
      v8 = *(v7 + 8);
      v10 += 8;
      if (v9 >= v8)
      {
        goto LABEL_27;
      }
    }
  }

  return !isLibraryModule;
}

void sub_257A3725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a58);
  if (STACK[0x210] != a23)
  {
    free(STACK[0x210]);
  }

  if (STACK[0x280] != a24)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x388] != a25)
  {
    free(STACK[0x388]);
  }

  if (STACK[0x490] != a28)
  {
    free(STACK[0x490]);
  }

  if (STACK[0x598] != a26)
  {
    free(STACK[0x598]);
  }

  v60 = *(v58 - 200);
  if (v60 != a27)
  {
    free(v60);
  }

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(&a47);
  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::~DenseMap(&a50, v61, v62, v63);
  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, 0);
    v3 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v2) = 0;
    v3 = v2 + 1;
    *(a1 + 8) = v3;
  }

  return *a1 + 8 * v3 - 8;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>(uint64_t *a1, int *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = *(a1 + 2) + 1;
    *(a1 + 2) = v5;
  }

  return v4 + 4 * v5 - 4;
}

uint64_t llvm::Type::isSized(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x11)
  {
    goto LABEL_6;
  }

  v2 = 1;
  if (((1 << v1) & 0xAC7F) != 0)
  {
    return v2;
  }

  if (((1 << v1) & 0x30000) == 0)
  {
LABEL_6:
    if ((v1 & 0xFE) != 0x12 && v1 != 21)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F5238]();
}

uint64_t MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(llvm::MDString **a1, unsigned int a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, int a5, int a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, int a9, llvm::LLVMContext *a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, uint64_t a14, llvm::LLVMContext *a15, llvm::IntegerType *a16, llvm::LLVMContext *a17, uint64_t *a18, llvm::LLVMContext *a19, llvm::LLVMContext *a20)
{
  v42[20] = *MEMORY[0x277D85DE8];
  v42[0] = a13;
  v42[1] = a14;
  v42[2] = MetalModulePass::getMetadata<unsigned int>(a1, a2, a3);
  v42[3] = MetalModulePass::getMetadata(a1, a3, v27);
  v42[4] = MetalModulePass::getMetadata(a1, a4, v28);
  v42[5] = MetalModulePass::getMetadata<int>(a1, a5, v29);
  v42[6] = MetalModulePass::getMetadata<int>(a1, a6, v30);
  v42[7] = MetalModulePass::getMetadata(a1, a7, v31);
  v42[8] = MetalModulePass::getMetadata(a1, a8, v32);
  v42[9] = MetalModulePass::getMetadata<int>(a1, a9, v33);
  v42[10] = MetalModulePass::getMetadata(a1, a10, v34);
  v42[11] = MetalModulePass::getMetadata(a1, a11);
  v42[12] = MetalModulePass::getMetadata(a1, a12, v35);
  v42[13] = MetalModulePass::getMetadata(a1, v42);
  v42[14] = MetalModulePass::getMetadata(a1, a15, v36);
  v42[15] = MetalModulePass::getMetadata<unsigned long long>(a1, a16, v37);
  v42[16] = MetalModulePass::getMetadata(a1, a17, v38);
  v42[17] = MetalModulePass::getMetadata(a1, a18);
  v42[18] = MetalModulePass::getMetadata(a1, a19, v39);
  v42[19] = MetalModulePass::getMetadata(a1, a20, v40);
  return llvm::MDTuple::getImpl();
}

uint64_t llvm::IRBuilderBase::CreateInBoundsGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 1);
  if (!result)
  {
    v15 = 257;
    v13 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5, v14, 0);
    llvm::GetElementPtrInst::setIsInBounds(v13);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v13, a6);
  }

  return result;
}

uint64_t MTLArgumentBufferConversion::applyAMDVaryingWA(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    if (v1 != 1)
    {
      abort();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(*(this + 128) - 8 * *(*(this + 128) + 8) + 8 * v2);
  v4 = *(v3 + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(v3 - 8 * *(v3 + 8) + 8 * i);
      this = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v1));
      if (v7 == 17)
      {
        if (*this != 0x747265762E726961 || *(this + 8) != 0x757074756F5F7865 || *(this + 16) != 116)
        {
          continue;
        }
      }

      else
      {
        if (v7 != 18)
        {
          continue;
        }

        v8 = *this == 0x676172662E726961 && *(this + 8) == 0x706E695F746E656DLL;
        if (!v8 || *(this + 16) != 29813)
        {
          continue;
        }
      }

      this = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v2));
      if (v12 == 12)
      {
        if (*this == 0x754F64656B636170 && *(this + 8) == 1953853556)
        {
LABEL_39:
          v15 = *(v6 + 8);
          if (v2 + 1 < v15)
          {
            v16 = v2;
            do
            {
              this = *(v6 - 8 * v15 + 8 * v16 + 8);
              if (!*this)
              {
                this = llvm::MDString::getString(this);
                if (v17 == 12 && *this == 0x61636F6C2E726961 && *(this + 8) == 1852795252)
                {
                  llvm::ConstantInt::get();
                  llvm::ValueAsMetadata::get();
                  this = llvm::MDNode::replaceOperandWith();
                }
              }

              v15 = *(v6 + 8);
              v19 = v16 + 2;
              ++v16;
            }

            while (v19 < v15);
          }
        }
      }

      else if (v12 == 11 && *this == 0x6E4964656B636170 && *(this + 3) == 0x7475706E4964656BLL)
      {
        goto LABEL_39;
      }
    }
  }

  return this;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = inserted + 6;
    *(inserted + 2) = 0x200000000;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  result = MEMORY[0x259C6A8D0](32 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(a1, v4, v4 + 32 * v3);

    return llvm::deallocate_buffer(v4, (32 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 64);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6D000)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6DA10)))).i32[1])
        {
          *v16 = -1;
          v16[8] = -1;
        }

        v11 += 4;
        v16 += 32;
      }

      while (v14 != v11);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*a1 + 64);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6D000)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 16) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 8) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6DA10)))).i32[1])
      {
        *v12 = -1;
        v12[8] = -1;
      }

      v7 += 4;
      v12 += 32;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v17);
      v15 = v17;
      *v17 = *a2;
      llvm::SmallVector<unsigned int,2u>::SmallVector(v15 + 1, a2 + 8);
      ++*(a1 + 8);
      v16 = *(a2 + 8);
      if ((a2 + 24) != v16)
      {
        free(v16);
      }
    }

    a2 += 32;
  }
}

void *llvm::SmallVector<unsigned int,2u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

void sub_257A38040(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(uint64_t *a1, unsigned int *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  result = MEMORY[0x259C6A8D0](8 * v8, 4);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

    return llvm::deallocate_buffer(v4, (8 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6D000)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 2) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6DA10)))).i32[1])
        {
          *v16 = -1;
          v16[2] = -1;
        }

        v11 += 4;
        v16 += 8;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6D000)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6DA10)))).i32[1])
      {
        *v12 = -1;
        v12[2] = -1;
      }

      v7 += 4;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      v15[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void sub_257A385D8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(unsigned int *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = (a4 - __src) >> 3;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5;
        v5 += 8;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 32 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 24) <= 0xFFFFFFFD)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 32;
      v2 -= 32;
    }

    while (v2);
  }
}

void *MTLFunctionTypeToString@<X0>(MTLFunctionType a1@<X0>, void *a2@<X8>)
{
  if (a1 - 1 > 7)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_27984E628[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void *MTLBuildRequestTypeToString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 + 1) > 0x12)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_27984E668[a1 + 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t MTLCompilerObject::MTLCompilerObject(uint64_t a1, __int128 *a2)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v3;
  }

  if (disableFreezer(void)::disableFreezerOnce != -1)
  {
    MTLCompilerObject::MTLCompilerObject();
  }

  *(a1 + 32) = MTLGPUCompilerCreate();
  return a1;
}

void sub_257A38944(_Unwind_Exception *a1)
{
  free(v1[8]);
  v1[8] = 0;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void MTLCompilerObject::~MTLCompilerObject(MTLCompilerObject *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    do
    {
      v6 = *(*(this + 1) + 8 * v4);
      if (v6)
      {
        MTLCompilerPluginInterface::~MTLCompilerPluginInterface(v6);
        MEMORY[0x259C6B890]();
      }

      ++v4;
    }

    while (v5 != v4);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  MTLGPUCompilerDestroy();
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  free(*(this + 8));
  *(this + 8) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

void *MTLCompilerObject::getFunctionFromLib(char **this, void *__handle, const char *__symbol)
{
  v5 = dlsym(__handle, __symbol);
  if (!v5)
  {
    dlerror();
    MTLCompilerErrorObject::setFormattedErrorMessage(this + 8, "Error: %s \n", __symbol);
  }

  return v5;
}

void *MTLCompilerObject::getComposeImageFuncSPI(MTLCompilerObject *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsSPI");
      *(this + 6) = result;
    }

    else
    {
      return *(this + 6);
    }
  }

  return result;
}

void *openLibComposeFilters(void)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "/System/Library/PrivateFrameworks/GPUCompiler.framework/Libraries/");
  v0 = std::string::append(&v5, "libComposeFilters.dylib");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v7 = v0->__r_.__value_.__r.__words[2];
  *__p = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = dlopen(v2, 5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_257A38C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(MTLCompilerObject *this)
{
  result = *(this + 7);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsFromModulesSPI");
      *(this + 7) = result;
    }

    else
    {
      return *(this + 7);
    }
  }

  return result;
}

MTLCompilerObject *MTLCodeGenServiceDestroy(MTLCompilerObject *result)
{
  if (result)
  {
    MTLCompilerObject::~MTLCompilerObject(result);

    JUMPOUT(0x259C6B890);
  }

  return result;
}

uint64_t MTLCompilerObject::initDriverPlugin(MTLCompilerObject *this, const char *__s2, const void *a3, size_t a4)
{
  v7 = *(this + 1);
  v8 = *(this + 2) - v7;
  if (!v8)
  {
LABEL_14:
    operator new();
  }

  v9 = 0;
  v10 = v8 >> 3;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  while (1)
  {
    v12 = *(v7 + 8 * v9);
    if (strcmp(*(v12 + 104), __s2))
    {
      goto LABEL_6;
    }

    if (a3)
    {
      break;
    }

    if (!*(v12 + 112))
    {
      return v9;
    }

LABEL_6:
    if (v11 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + 120) != a4 || memcmp(a3, *(v12 + 112), a4))
  {
    goto LABEL_6;
  }

  return v9;
}

llvm::NamedMDNode *MTLCompilerObject::collectFunctionConstants(MTLCompilerObject *this, llvm::Module *a2, FunctionDesc *a3)
{
  __p[0] = "air.function_constants";
  LOWORD(v34) = 259;
  result = llvm::Module::getNamedMetadata(a2, __p);
  if (result)
  {
    v5 = result;
    NumOperands = llvm::NamedMDNode::getNumOperands(result);
    v7 = NumOperands;
    std::vector<FunctionConstantDesc>::reserve(a3 + 9, NumOperands);
    if (NumOperands)
    {
      v8 = 0;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        Operand = llvm::NamedMDNode::getOperand(v5);
        v10 = Operand;
        v11 = *(Operand + 8);
        if (v11 >= 4)
        {
          v12 = Operand - 8 * v11;
          v13 = *(v12 + 16);
          v14 = *(v12 + 24);
          String = llvm::MDString::getString(*(v12 + 8));
          v17 = llvm::MDString::getString(v13);
          if (v17)
          {
            std::string::basic_string[abi:ne200100](&__dst, v17, v16);
          }

          else
          {
            __dst = 0uLL;
            v30 = 0;
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v32 = v30;
          v18 = strlen(String);
          v33 = dataTypeFromString(String, v18);
          v19 = *(v14 + 128);
          v20 = (v19 + 24);
          if (*(v19 + 32) >= 0x41u)
          {
            v20 = *v20;
          }

          LOWORD(v34) = *v20;
          if (*(v10 + 8) == 5 && (v21 = *(v10 - 8)) != 0)
          {
            v22 = *(v21 + 128);
            v23 = (v22 + 24);
            if (*(v22 + 32) >= 0x41u)
            {
              v23 = *v23;
            }

            v24 = *v23 != 0;
          }

          else
          {
            v24 = 1;
          }

          HIWORD(v34) = v24;
          v25 = *(a3 + 10);
          if (v25 >= *(a3 + 11))
          {
            v28 = std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(a3 + 72, __p);
          }

          else
          {
            v26 = *__p;
            *(v25 + 16) = v32;
            *v25 = v26;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v27 = v34;
            *(v25 + 24) = v33;
            *(v25 + 32) = v27;
            v28 = v25 + 40;
          }

          *(a3 + 10) = v28;
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v7 != v8);
    }

    return std::vector<FunctionConstantDesc>::shrink_to_fit(a3 + 9);
  }

  return result;
}

void sub_257A39128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<FunctionConstantDesc>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A3921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__int128 **std::vector<FunctionConstantDesc>::shrink_to_fit(__int128 **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 40 * v6;
    v14 = 40 * v6;
    if (0xCCCCCCCCCCCCCCCDLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v12);
  }

  return result;
}

void sub_257A3931C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x257A3930CLL);
}

void parseFunctions(llvm::Module *a1, uint64_t *a2)
{
  std::vector<FunctionDesc>::reserve(a2, 8uLL);
  v4 = 0;
  v5 = -1;
  while (1)
  {
    v6 = entryPointsMetadata[v4];
    LOWORD(Name) = 257;
    if (*v6)
    {
      v117 = v6;
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(Name) = v7;
    NamedMetadata = llvm::Module::getNamedMetadata(a1, &v117);
    if (!NamedMetadata || !llvm::NamedMDNode::getNumOperands(NamedMetadata))
    {
      goto LABEL_9;
    }

    if ((entryPointsType[v4] - 5) > 1)
    {
      break;
    }

    v5 = v4;
LABEL_9:
    if (++v4 == 7)
    {
      goto LABEL_12;
    }
  }

  v5 = v4;
LABEL_12:
  v9 = entryPointsMetadata[v5];
  LOWORD(Name) = 257;
  if (*v9)
  {
    v117 = v9;
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  LOBYTE(Name) = v10;
  v11 = llvm::Module::getNamedMetadata(a1, &v117);
  Operand = llvm::NamedMDNode::getOperand(v11);
  v13 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  Name = 0;
  v121 = 0;
  v125 = 0u;
  *__src = 0u;
  v127 = 0u;
  v128 = 0u;
  v117 = v13;
  v14 = Operand - 8 * *(Operand + 8);
  v118 = vextq_s8(*(v14 + 8), *(v14 + 8), 8uLL);
  Name = llvm::Value::getName(v13);
  v121 = v15;
  v122 = v5;
  Subprogram = llvm::Function::getSubprogram(v13);
  if (Subprogram)
  {
    v17 = *(Subprogram + 24);
  }

  else
  {
    v17 = 0;
  }

  v123 = v17;
  BYTE1(v124) = -4;
  v119 = 0;
  v128 = 0uLL;
  v18 = *(Operand + 8);
  if (v18 >= 4)
  {
    v19 = Operand + 24;
    for (i = 3; i < v18; ++i)
    {
      v21 = *(v19 - 8 * v18);
      if (llvm::MDNode::classof(v21))
      {
        v22 = *(v21 + 8);
        if (v22 >= 2)
        {
          v23 = (v21 - 8 * v22);
          v24 = *v23;
          if (!**v23)
          {
            v25 = v23[1];
            String = llvm::MDString::getString(*v23);
            if (v27 == 19)
            {
              v28 = *String == 0x726573752E726961 && String[1] == 0x7461746F6E6E615FLL;
              v29 = v28 && *(String + 11) == 0x6E6F697461746F6ELL;
              if (v29 && !*v25)
              {
                *&v128 = llvm::MDString::getString(v25);
                *(&v128 + 1) = v30;
              }
            }

            if (!*v24)
            {
              v31 = llvm::MDString::getString(v24);
              if (v32 == 18)
              {
                v33 = *v31 == 0x746974732E726961 && *(v31 + 8) == 0x6E695F676E696863;
                if (v33 && *(v31 + 16) == 28518)
                {
                  v119 = v21;
                }
              }
            }
          }
        }
      }

      v18 = *(Operand + 8);
      v19 += 8;
    }
  }

  if (entryPointsType[v122] != 6)
  {
    goto LABEL_179;
  }

  v35 = *(Operand - 8 * v18 + 24);
  v36 = llvm::MDString::getString(v35);
  if (v37 == 12 && *v36 == 0x616972742E726961 && *(v36 + 8) == 1701603182)
  {
    v45 = v124 & 0xFFFCFFFF | 0x10000;
    goto LABEL_66;
  }

  v39 = llvm::MDString::getString(v35);
  if (v40 == 16 && *v39 == 0x6E756F622E726961 && v39[1] == 0x786F625F676E6964)
  {
    v45 = v124 & 0xFFFCFFFF | 0x20000;
    goto LABEL_66;
  }

  v42 = llvm::MDString::getString(v35);
  if (v43 == 9 && *v42 == 0x767275632E726961 && *(v42 + 8) == 101)
  {
    v45 = v124 | 0x30000;
LABEL_66:
    v124 = v45;
  }

  v18 = *(Operand + 8);
  if (v18 >= 5)
  {
    v46 = Operand + 32;
    for (j = 4; j < v18; ++j)
    {
      v48 = *(v46 - 8 * v18);
      if (!*v48)
      {
        v49 = llvm::MDString::getString(v48);
        if (v50 == 17)
        {
          v51 = *v49 == 0x616972742E726961 && *(v49 + 8) == 0x7461645F656C676ELL;
          if (v51 && *(v49 + 16) == 97)
          {
            v92 = 2;
            goto LABEL_166;
          }
        }

        v53 = llvm::MDString::getString(v48);
        if (v54 == 14 && *v53 == 0x74736E692E726961 && *(v53 + 6) == 0x676E69636E617473)
        {
          v92 = 1;
          goto LABEL_166;
        }

        v56 = llvm::MDString::getString(v48);
        if (v57 == 20)
        {
          v58 = *v56 == 0x6C726F772E726961 && *(v56 + 8) == 0x5F65636170735F64;
          if (v58 && *(v56 + 16) == 1635017060)
          {
            v92 = 3;
            goto LABEL_166;
          }
        }

        v60 = llvm::MDString::getString(v48);
        if (v61 == 19)
        {
          v62 = *v60 == 0x74736E692E726961 && v60[1] == 0x746F6D5F65636E61;
          if (v62 && *(v60 + 11) == 0x6E6F69746F6D5F65)
          {
            v92 = 4;
            goto LABEL_166;
          }
        }

        v64 = llvm::MDString::getString(v48);
        if (v65 == 20)
        {
          v66 = *v64 == 0x6D6972702E726961 && *(v64 + 8) == 0x6F6D5F6576697469;
          if (v66 && *(v64 + 16) == 1852795252)
          {
            v92 = 5;
            goto LABEL_166;
          }
        }

        v68 = llvm::MDString::getString(v48);
        if (v69 == 19)
        {
          v70 = *v68 == 0x657478652E726961 && v68[1] == 0x6D696C5F6465646ELL;
          if (v70 && *(v68 + 11) == 0x7374696D696C5F64)
          {
            v92 = 6;
            goto LABEL_166;
          }
        }

        v72 = llvm::MDString::getString(v48);
        if (v73 == 14 && *v72 == 0x767275632E726961 && *(v72 + 6) == 0x617461645F657672)
        {
          v92 = 7;
          goto LABEL_166;
        }

        v75 = llvm::MDString::getString(v48);
        if (v76 == 26)
        {
          v77 = *v75 == 0x746C756D2E726961 && *(v75 + 8) == 0x5F6C6576656C5F69;
          v78 = v77 && *(v75 + 16) == 0x69636E6174736E69;
          if (v78 && *(v75 + 24) == 26478)
          {
            v129[0] = 1;
            std::vector<MTLTagType>::emplace_back<MTLTagType>(&__src[1], v129);
            v92 = 8;
            goto LABEL_166;
          }
        }

        v80 = llvm::MDString::getString(v48);
        if (v81 == 32)
        {
          v82 = *v80 == 0x65746E692E726961 && v80[1] == 0x6E6F697463657372;
          v83 = v82 && v80[2] == 0x6F6974636E75665FLL;
          if (v83 && v80[3] == 0x7265666675625F6ELL)
          {
            v92 = 9;
            goto LABEL_166;
          }
        }

        v85 = llvm::MDString::getString(v48);
        if (v86 == 13 && *v85 == 0x726573752E726961 && *(v85 + 5) == 0x617461645F726573)
        {
          v92 = 10;
          goto LABEL_166;
        }

        v88 = llvm::MDString::getString(v48);
        if (v89 != 19 || (*v88 == 0x726573752E726961 ? (v90 = v88[1] == 0x7461746F6E6E615FLL) : (v90 = 0), v90 ? (v91 = *(v88 + 11) == 0x6E6F697461746F6ELL) : (v91 = 0), !v91))
        {
          v92 = 0;
LABEL_166:
          v93 = v127;
          if (v127 >= *(&v127 + 1))
          {
            v95 = __src[1];
            v96 = v127 - __src[1];
            v97 = (v127 - __src[1]) >> 3;
            v98 = v97 + 1;
            if ((v97 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v99 = *(&v127 + 1) - __src[1];
            if ((*(&v127 + 1) - __src[1]) >> 2 > v98)
            {
              v98 = v99 >> 2;
            }

            v102 = v99 >= 0x7FFFFFFFFFFFFFF8;
            v100 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v102)
            {
              v100 = v98;
            }

            if (v100)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src[1], v100);
            }

            *(8 * v97) = v92;
            v94 = 8 * v97 + 8;
            memcpy(0, v95, v96);
            v101 = __src[1];
            __src[1] = 0;
            v127 = v94;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v127 = v92;
            v94 = v93 + 8;
          }

          *&v127 = v94;
        }
      }

      v18 = *(Operand + 8);
      v46 += 8;
    }
  }

LABEL_179:
  v102 = entryPointsType[v122] == 1 && v18 >= 4;
  if (v102)
  {
    v103 = Operand + 24;
    v104 = 3;
    do
    {
      v105 = *(v103 - 8 * v18);
      v106 = *(v105 + 8);
      if (v106 >= 2)
      {
        v107 = llvm::MDString::getString(*(v105 - 8 * v106));
        if (v108 == 9 && *v107 == 0x637461702E726961 && *(v107 + 8) == 104)
        {
          v110 = llvm::MDString::getString(*(v105 - 8 * *(v105 + 8) + 8));
          if (v111 == 8 && *v110 == 0x656C676E61697274)
          {
            v112 = 256;
          }

          else
          {
            v112 = 512;
          }

          v113 = v124 & 0xFFFFFCFF | v112;
          v124 = v113;
          v114 = *(v105 + 8);
          if (v114 >= 4)
          {
            v115 = *(*(v105 - 8 * v114 + 24) + 128);
            v116 = (v115 + 24);
            if (*(v115 + 32) >= 0x41u)
            {
              v116 = *v116;
            }

            v124 = v113 & 0xFFFF03FF | ((*v116 & 0x3F) << 10);
          }
        }
      }

      ++v104;
      v18 = *(Operand + 8);
      v103 += 8;
    }

    while (v104 < v18);
  }

  std::vector<FunctionDesc>::push_back[abi:ne200100](a2, &v117);
  if (__src[1])
  {
    *&v127 = __src[1];
    operator delete(__src[1]);
  }

  v129[0] = &v125;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](v129);
}

void sub_257A39D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  FunctionDesc::~FunctionDesc(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<FunctionDesc>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A39DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionDesc>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(a1, a2);
  }

  else
  {
    std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(a1, a2);
    result = v3 + 136;
  }

  a1[1] = result;
  return result;
}

uint64_t eliminateOtherEntryPoints(llvm::Module *this, const char *a2, MTLFunctionType *a3)
{
  v6 = 0;
  v20 = 0;
  do
  {
    v7 = entryPointsMetadata[v6];
    v23 = 257;
    if (*v7)
    {
      v22[0] = v7;
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    LOBYTE(v23) = v8;
    NamedMetadata = llvm::Module::getNamedMetadata(this, v22);
    if (NamedMetadata)
    {
      v10 = NamedMetadata;
      v11 = 0;
      v21 = 0;
      while (v11 < llvm::NamedMDNode::getNumOperands(v10))
      {
        Operand = llvm::NamedMDNode::getOperand(v10);
        v22[0] = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
        v22[1] = v13;
        if (a2)
        {
          v14 = strlen(a2);
        }

        else
        {
          v14 = 0;
        }

        ++v11;
        if (!llvm::StringRef::compare(v22, a2, v14))
        {
          if (a3)
          {
            *a3 = entryPointsType[v6];
          }

          llvm::TrackingMDRef::reset(&v21, Operand);
          v20 = 1;
          break;
        }
      }

      v15 = entryPointsType[v6];
      v16 = v15 > 8;
      v17 = (1 << v15) & 0x18E;
      if (!v16 && v17 != 0)
      {
        llvm::NamedMDNode::eraseFromParent(v10);
        if (v21)
        {
          if (entryPointsMetadata[v6])
          {
            strlen(entryPointsMetadata[v6]);
          }

          llvm::Module::getOrInsertNamedMetadata();
          llvm::NamedMDNode::addOperand();
        }
      }

      llvm::TrackingMDRef::~TrackingMDRef(&v21);
    }

    ++v6;
  }

  while (v6 != 7);
  return v20 & 1;
}

void sub_257A3A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  llvm::TrackingMDRef::~TrackingMDRef(va);
  _Unwind_Resume(a1);
}

void *llvm::TrackingMDRef::reset(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *v3 = a2;
  if (a2)
  {

    return llvm::MetadataTracking::track();
  }

  return result;
}

uint64_t fixLinkage(llvm::Module *this, const char *a2)
{
  v3 = 1;
  v13 = 1;
  if (*a2)
  {
    v11 = a2;
    v3 = 3;
  }

  v12 = v3;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v11);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v6 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v7 = this + 24;
  v8 = *(this + 4);
  if (v8 != this + 24)
  {
    do
    {
      if (v8)
      {
        v9 = (v8 - 56);
      }

      else
      {
        v9 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v9) & 1) == 0)
      {
        *(v9 + 8) = *(v9 + 8) & 0xFFFFBFC0 | 0x4007;
      }

      v8 = *(v8 + 1);
    }

    while (v8 != v7);
  }

  llvm::GlobalValue::setLinkage(v6, 0);
  return v6;
}

llvm::Constant *getLLVMConstantValue(llvm::LLVMContext *a1, MTLDataType a2, const unsigned __int8 *a3)
{
  ComponentType = MTLDataTypeGetComponentType();
  ComponentCount = MTLDataTypeGetComponentCount();
  if (ComponentType <= 32)
  {
    switch(ComponentType)
    {
      case 3:
        llvm::Type::getFloatTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 16:
        llvm::Type::getHalfTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 29:
LABEL_10:
        result = llvm::ConstantDataVector::get();
        break;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    v7 = ComponentType - 37;
    if ((ComponentType - 37) > 0x30)
    {
      goto LABEL_20;
    }

    if (((1 << v7) & 0x11100) != 0)
    {
      result = llvm::ConstantDataVector::get();
    }

    else
    {
      if (((1 << v7) & 0x11) == 0)
      {
        if (((1 << v7) & 0x1100000000000) != 0)
        {
          result = llvm::ConstantDataVector::get();
          goto LABEL_15;
        }

LABEL_20:
        if (ComponentType != 33)
        {
LABEL_21:
          abort();
        }

        goto LABEL_10;
      }

      result = llvm::ConstantDataVector::get();
    }
  }

LABEL_15:
  if (ComponentCount == 1)
  {

    return llvm::Constant::getAggregateElement(result);
  }

  return result;
}

uint64_t MTLCompilerObject::getReadParametersFromRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  *a2 = *(a5 + 3);
  v6 = a3 + a5[2];
  *(a2 + 8) = a5[3];
  *(a2 + 16) = v6;
  LODWORD(v6) = *(a6 + 4);
  *(a2 + 65) = BYTE2(v6) & 1;
  *(a2 + 64) = (v6 & 0x8000) == 0;
  *(a2 + 80) = *(a6 + 268);
  v7 = *(a5 + 6);
  *(a2 + 100) = *(a5 + 10);
  *(a2 + 84) = v7;
  v8 = a5[5];
  *(a2 + 24) = v8;
  if (v8)
  {
    v9 = a3 + a5[4];
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 32) = v9;
  *(a2 + 48) = a3 + *a5;
  v10 = *(a3 + 32);
  if (v10 > a4)
  {
    goto LABEL_14;
  }

  v13 = *(a3 + 36);
  if ((v13 + v10) > a4)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = a3 + v10;
    if (strnlen((a3 + v10), *(a3 + 36)) < v13)
    {
      *(a2 + 56) = v15;
    }
  }

  *(a2 + 40) = *(a3 + 48);
  v16 = *(a3 + 168);
  if (v16 > a4 || (v17 = *(a3 + 172), (v17 + v16) > a4))
  {
LABEL_14:
    abort();
  }

  if (v17)
  {
    *(a2 + 72) = a3 + v16;
  }

  return 1;
}

uint64_t MTLCompilerObject::upgradeAIRModule(MTLCompilerObject *this, llvm::Module *a2, unsigned int a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4 | a3)
  {
    v4 = a4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = a3;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MTLCompiler upgrade pass forced to use air version %d.%d", v7, 0xEu);
    }
  }

  return MTLUpgradeAIRModule();
}

llvm::Module *MTLCompilerObject::readModuleFromBinaryRequest(uint64_t a1, unsigned __int16 *a2, llvm::LLVMContext *a3, MTLFunctionType *a4, void **a5, void **a6, int a7)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v44 = 0;
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *a2;
  if ((v15 | 2) == 3)
  {
    v16 = moduleFromOpenGLBitcode((v15 == 3), a3, *(a2 + 2), *(a2 + 1), v14, v13, a5, a6, v35);
    v19 = v16;
    v44 = v16;
    v20 = *a2;
    *(a1 + 72) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", v20);
      return 0;
    }
  }

  else
  {
    v24 = *(a2 + 1);
    __p = *(a2 + 2);
    v38 = v24;
    v39 = &unk_257A6F51A;
    v40 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v48, v45);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v48);
    if (v46)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to read function bitcode.");
      if (v46)
      {
        return 0;
      }

      v25 = v45[0];
      v45[0] = 0;
      if (!v25)
      {
        return 0;
      }

      goto LABEL_54;
    }

    v19 = v45[0];
    v44 = v45[0];
    v45[0] = 0;
    v16 = llvm::Module::materializeAll(&__p, v44);
    v26 = __p;
    if (__p)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to materializeAll.");
      v16 = __p;
      if (__p)
      {
        v16 = (*(*__p + 8))(__p);
      }
    }

    if ((v46 & 1) == 0)
    {
      v16 = v45[0];
      v45[0] = 0;
      if (v16)
      {
        v27 = MEMORY[0x259C6AE50]();
        v16 = MEMORY[0x259C6B890](v27, 0x10B2C407FF26C1CLL);
      }
    }

    if (v26)
    {
      goto LABEL_52;
    }

    v20 = *a2;
  }

  if (v20 == 2)
  {
    v44 = 0;
    v16 = moduleFromOpenCLModule(a3, v19, v14, v13, a5, a6, v17, v18, v35);
    v19 = v16;
    v44 = v16;
    *(a1 + 73) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", *a2);
      return 0;
    }
  }

  v21 = *(a2 + 7);
  if (v21)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v21);
    v22 = SHIBYTE(v39) >= 0 ? &__p : __p;
    v23 = SHIBYTE(v39) >= 0 ? SHIBYTE(v39) : v38;
    llvm::Module::setTargetTriple(v19, v22, v23);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }
  }

  if ((*(a1 + 72) & 1) != 0 || (v19 = v44, MTLCompilerObject::upgradeAIRModule(v16, v44, *(a2 + 10), *(a2 + 11))))
  {
    if (*(a2 + 64) == 1)
    {
      v19 = v44;
      if (*(v44 + 239) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, *(v44 + 27), *(v44 + 28));
      }

      else
      {
        v43 = *(v44 + 9);
      }

      v47 = 260;
      v45[0] = &v43;
      MEMORY[0x259C6AE60](&__p, v45);
      v45[0] = "air.version";
      v47 = 259;
      if (llvm::Module::getNamedMetadata(v19, v45))
      {
        v28 = readVersionMetadata(v19, "air.version", 0, 0, 0) > 0x20003;
      }

      else
      {
        v28 = 0;
      }

      if (((_os_feature_enabled_impl() ^ 1) & v28 & 1) == 0 && v42 != 7)
      {
        MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Target OS is incompatible.");
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        v44 = 0;
        goto LABEL_53;
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    if (!a7)
    {
      v32 = 0;
      *a4 = 0xFFFFLL;
      v19 = v44;
      while (1)
      {
        v33 = entryPointsMetadata[v32];
        v41 = 257;
        if (*v33)
        {
          __p = v33;
          v34 = 3;
        }

        else
        {
          v34 = 1;
        }

        LOBYTE(v41) = v34;
        if (llvm::Module::getNamedMetadata(v19, &__p))
        {
          break;
        }

        if (++v32 == 7)
        {
          return v19;
        }
      }

      *a4 = entryPointsType[v32];
      return v19;
    }

    v29 = *(a2 + 6);
    *a4 = MTLFunctionTypeVertex;
    v19 = v44;
    if (eliminateOtherEntryPoints(v44, v29, a4))
    {
      return v19;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Function %s was not found in the module.", v29);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to upgrade function bitcode");
  }

LABEL_52:
  v44 = 0;
  if (v19)
  {
LABEL_53:
    v25 = v19;
LABEL_54:
    v30 = MEMORY[0x259C6AE50](v25);
    MEMORY[0x259C6B890](v30, 0x10B2C407FF26C1CLL);
    return 0;
  }

  return v19;
}

uint64_t std::unique_ptr<llvm::Module>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x259C6AE50]();

    JUMPOUT(0x259C6B890);
  }

  return result;
}

void llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1])
  {
    v4 = *a2;
    *a2 = 0;
    v8 = v4;
    v5 = llvm::errorToErrorCodeAndEmitErrors();
    *(a3 + 16) |= 1u;
    *a3 = v5;
    *(a3 + 8) = v6;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  else
  {
    *(a3 + 16) &= ~1u;
    v7 = *a2;
    *a2 = 0;
    *a3 = v7;
  }
}

void sub_257A3ABC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

double llvm::Module::setTargetTriple(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t readVersionMetadata(llvm::Module *a1, const char *a2, unsigned int a3, int a4, int a5)
{
  v8 = 1;
  v20 = 1;
  if (*a2)
  {
    v18 = a2;
    v8 = 3;
  }

  v19 = v8;
  NamedMetadata = llvm::Module::getNamedMetadata(a1, &v18);
  if (!NamedMetadata)
  {
    return (a5 + (a4 << 16));
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = Operand - 8 * *(Operand + 8);
  v12 = *(*(v11 + 8 * a3) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  v15 = *(*(v11 + 8 * (a3 + 1)) + 128);
  v16 = (v15 + 24);
  if (*(v15 + 32) >= 0x41u)
  {
    v16 = *v16;
  }

  return (*v16 + (v14 << 16));
}

uint64_t MTLCompilerObject::applyConstantValues(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v18[0] = this;
  v18[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v18[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v17 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v17);
  v14 = MTLGPUCompilerSpecializeFunction();
  free(v13);
  if (!v14)
  {
    if (a8)
    {
      v15 = *a8;
    }

    else
    {
      v15 = "Failed to specialize function.";
    }

    MTLCompilerErrorObject::setErrorMessage((a1 + 64), v15);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v18);
  return 0;
}

void sub_257A3AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
}

void softDiagnosticHandler(uint64_t a1, MTLCompilerErrorObject *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  printDiagnosticError(a1, __p);
  if (!*(a1 + 12))
  {
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    MTLCompilerErrorObject::setErrorMessage(a2, v4);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_257A3AF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *parseFunctionConstants(llvm::LLVMContext *a1, const char *a2, unint64_t a3, unsigned int *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    goto LABEL_12;
  }

  v7 = *a2;
  v17 = malloc_type_malloc(16 * v7, 0x1020040D5A9D86FuLL);
  if (v7)
  {
    v8 = (v17 + 8);
    v9 = 4;
    v10 = v7;
    while (a3 > v9)
    {
      if (a3 - v9 <= 1)
      {
        break;
      }

      if (v9 + 2 >= a3)
      {
        break;
      }

      v11 = *&a2[v9];
      v12 = a2[v9 + 2];
      v13 = v9 + 3;
      v14 = _MTLConstantDataSize();
      if (v9 + 3 >= a3)
      {
        break;
      }

      v9 = v14 + v13;
      if (v14 + v13 > a3 || v14 >= 0x11)
      {
        break;
      }

      memcpy(__dst, &a2[v13], v14);
      *(v8 - 2) = v11;
      *v8 = getLLVMConstantValue(a1, v12, __dst);
      v8 += 2;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    abort();
  }

LABEL_11:
  *a4 = v7;
  return v17;
}

uint64_t MTLCompilerObject::applyConstantValuesToArchive(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v18[0] = this;
  v18[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v18[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v17 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v17);
  v14 = MTLGPUCompilerSpecializeFunctionToBuffer();
  free(v13);
  if (!v14)
  {
    if (a8)
    {
      v15 = *a8;
    }

    else
    {
      v15 = "Failed to specialize function.";
    }

    MTLCompilerErrorObject::setErrorMessage((a1 + 64), v15);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v18);
  return 0;
}

void sub_257A3B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
}

uint64_t getSerializedModule@<X0>(uint64_t __val@<X1>, void *a3@<X8>)
{
  if (__val <= 3901)
  {
    if (!__val || __val == 3802)
    {
      goto LABEL_24;
    }
  }

  else if (__val == 32023 || __val == 31001 || __val == 3902)
  {
    goto LABEL_24;
  }

  std::to_string(&v12, __val);
  v4 = std::string::insert(&v12, 0, "Unexpected llvmVersion (");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ") passed to getMTLBitcodeVersionFromLLVMVersion, using MTLBitcodeVersionDefault instead");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, &unk_257A6F51A);
  v8 = SHIBYTE(v15);
  v9 = __p[0];
  std::string::basic_string[abi:ne200100]<0>(&v12, "MTLBuildRequestTypeUnknown");
  if (v8 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = v9;
  }

  logCompileError(&v13, v10, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_24:
  result = MTLWriteAIRBitcodeToMemoryBuffer();
  *a3 = result;
  return result;
}

void sub_257A3B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *MTLCompilerObject::serializeLibraryReply(uint64_t a1, uint64_t *a2, char *__s1, char a4, llvm::Module **a5, unint64_t a6, unsigned int a7, uint64_t a8, char a9, unsigned int __val, uint64_t a11)
{
  v165[55] = *MEMORY[0x277D85DE8];
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  __n_4 = 0u;
  memset(v151, 0, sizeof(v151));
  v152 = 1065353216;
  v150 = 104;
  if (__s1)
  {
    DWORD2(v153) = 104;
    HIDWORD(v153) = strlen(__s1) + 1;
    v150 = HIDWORD(v153) + 104;
  }

  if (a4)
  {
    v118 = a5;
    if (a6)
    {
      HIDWORD(v111) = readVersionMetadata(*a5, "air.version", 0, 1, 6);
      VersionMetadata = readVersionMetadata(*a5, "air.language_version", 1u, 1, 0);
      LODWORD(v111) = VersionMetadata;
      v18 = 0;
      LOBYTE(v153) = v153 | 1;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v19 = a5;
      v20 = a6;
      do
      {
        v21 = *v19;
        if ((a9 & 1) == 0)
        {
          parseFunctions(*v19, &v147);
        }

        VersionMetadata = MTLCompilerObject::collectFunctionConstants(VersionMetadata, v21, (v147 + v18));
        ++v19;
        v18 += 136;
        --v20;
      }

      while (v20);
      v22 = v147;
      v23 = v148;
      a5 = v118;
    }

    else
    {
      v111 = 0;
      v22 = 0;
      v23 = 0;
      LOBYTE(v153) = 1;
      v147 = 0;
      v148 = 0;
      v149 = 0;
    }

    v143 = 0;
    v144 = &v143;
    v145 = 0x2020000000;
    v139[0] = MEMORY[0x277D85DD0];
    v139[1] = 3221225472;
    v140 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke;
    v141 = &unk_27984E5E0;
    v142 = &v143;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v136 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2;
    v137 = &unk_27984E608;
    v138 = &v143;
    v25 = 12;
    v146 = 12;
    v26 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
    v117 = a6;
    v110 = a2;
    if (v23 != v22)
    {
      v27 = 0;
      if (v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      do
      {
        v29 = v147;
        v30 = v147 + v27;
        (v140)(v139, *(v147 + v27 + 48));
        (v140)(v139, *(v30 + 52));
        (v140)(v139, *(v29 + v27 + 56));
        (v140)(v139, *(v29 + v27 + 60));
        (v140)(v139, *(v29 + v27 + 64));
        (v140)(v139, *(v29 + v27 + 68));
        (v140)(v139, *(v29 + v27 + 69));
        v136(v135, (v29 + v27 + 32));
        v27 += 136;
        --v28;
      }

      while (v28);
      v25 = v144[3];
      a6 = v117;
      a5 = v118;
    }

    *&__n_4 = __PAIR64__(v25, v150);
    v150 += v25;
    v134 = 0;
    __src = __s1;
    ptr = malloc_type_malloc(0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3), 0x100004077774924uLL);
    v133 = 0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3);
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v115 = v22;
    v116 = v23;
    if (v23 != v22)
    {
      v31 = 0;
      v32 = 0;
      if (v26 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      v114 = v33;
      while (1)
      {
        v119 = v32;
        v34 = v147 + 136 * v32;
        *(v34 + 56) = v31;
        *(v34 + 60) = 0;
        memset(v128, 0, sizeof(v128));
        if ((entryPointsType[*(v34 + 48)] & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          v35 = *(v34 + 8);
          if (v35)
          {
            v36 = *(v35 + 8);
          }

          else
          {
            v36 = 0;
          }

          if (*(*v34 + 18))
          {
            llvm::Function::BuildLazyArguments(*v34);
          }

          if (v36)
          {
            DataLayout = llvm::Module::getDataLayout(*(*v34 + 40));
            llvm::DataLayout::DataLayout(v165, DataLayout);
            MTLArgumentData::MTLArgumentData(&v161);
          }
        }

        v39 = v129;
        v38 = v130;
        v40 = (v130 - v129) >> 5;
        v41 = 0x8E38E38E38E38E39 * v40;
        v42 = 0;
        if (v130 != v129)
        {
          if (v41 <= 1)
          {
            v43 = 1;
          }

          else
          {
            v43 = 0x8E38E38E38E38E39 * v40;
          }

          v44 = 96;
          do
          {
            v45 = *(v129 + v44);
            if (v45)
            {
              v46 = *(v45 + 8);
              v47 = v46 - isPatchControlPointInputUnused(v45) - 3;
            }

            else
            {
              v47 = 1;
            }

            v42 += v47;
            v44 += 288;
            --v43;
          }

          while (v43);
        }

        if (v31 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_169;
        }

        if (v133 >= v31 + 4)
        {
          v49 = ptr;
        }

        else
        {
          if (v133)
          {
            v48 = v133;
          }

          else
          {
            v48 = 128;
          }

          while (v48 < v31 + 4)
          {
            if (v48 >> 1 >= ~v48)
            {
              v48 = v31 + 4;
            }

            else
            {
              v48 += v48 >> 1;
            }
          }

          v49 = malloc_type_realloc(ptr, v48, 0x100004077774924uLL);
          ptr = v49;
          if (!v49)
          {
            goto LABEL_169;
          }

          v133 = v48;
        }

        *&v49[v31] = v42;
        v134 = v31 + 4;
        if (v38 != v39)
        {
          v50 = 0;
          if (v41 <= 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = v41;
          }

          do
          {
            v52 = *(v129 + 288 * v50 + 96);
            if (v52)
            {
              v53 = *(v52 + 8);
              if ((v53 - isPatchControlPointInputUnused(v52)) >= 4)
              {
                MTLArgumentData::MTLArgumentData(v165);
              }
            }

            else
            {
              serializeOneVertexAttribute((v129 + 288 * v50), &ptr);
            }

            ++v50;
          }

          while (v50 != v51);
        }

        std::vector<MTLArgumentData>::resize(&v129, 0);
        v54 = v134;
        if (v134 >= 0xFFFFFFFFFFFFFFFCLL)
        {
LABEL_169:
          abort();
        }

        v56 = *(v34 + 72);
        v55 = *(v34 + 80);
        v31 = v134 + 4;
        v57 = v133;
        if (v133 >= v134 + 4)
        {
          v58 = ptr;
        }

        else
        {
          if (!v133)
          {
            v57 = 128;
          }

          while (v57 < v31)
          {
            if (v57 >> 1 >= ~v57)
            {
              v57 = v134 + 4;
            }

            else
            {
              v57 += v57 >> 1;
            }
          }

          v58 = malloc_type_realloc(ptr, v57, 0x100004077774924uLL);
          ptr = v58;
          if (!v58)
          {
            goto LABEL_169;
          }

          v133 = v57;
        }

        *&v58[v54] = -858993459 * ((v55 - v56) >> 3);
        v134 = v54 + 4;
        v59 = *(v34 + 72);
        v60 = *(v34 + 80);
        while (v59 != v60)
        {
          v61 = *(v59 + 23);
          if ((v61 & 0x8000000000000000) != 0)
          {
            v62 = *v59;
            v61 = *(v59 + 8);
          }

          else
          {
            v62 = v59;
          }

          v63 = v61 + 1;
          if (__CFADD__(v31, v61 + 1))
          {
            goto LABEL_169;
          }

          v64 = v63 + v31;
          if (v57 < v63 + v31)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v63 + v31;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 < v64);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v65 = &v58[v31];
          memcpy(v65, v62, v61);
          v65[v61] = 0;
          v134 = v64;
          if (v64 == -1)
          {
            goto LABEL_169;
          }

          v66 = *(v59 + 24);
          if (v57 <= v64)
          {
            if (!v57)
            {
              v133 = 128;
              v57 = 128;
            }

            while (v57 <= v64)
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 1;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v58[v64] = v66;
          v134 = v64 + 1;
          if (v64 >= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_169;
          }

          v67 = *(v59 + 32);
          v68 = v64 + 5;
          if (v57 < v64 + 5)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 5;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 < v68);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v69 = &v58[v64 + 1];
          *v69 = v67;
          *(v69 + 1) = 0;
          v134 = v64 + 5;
          if (v64 == -6)
          {
            goto LABEL_169;
          }

          v70 = *(v59 + 34);
          v31 = v64 + 6;
          if (v57 <= v68)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 6;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 <= v68);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v58[v68] = v70;
          v134 = v64 + 6;
          v59 += 40;
        }

        if (entryPointsType[*(v34 + 48)] != 1)
        {
          break;
        }

        v71 = *(v34 + 16);
        a6 = v117;
        a5 = v118;
        if (v71)
        {
          v71 = *(v71 + 8);
          if (v71)
          {
            v72 = 0;
            v73 = 8 * v71;
            while (1)
            {
              v74 = *(*(v34 + 16) - 8 * *(*(v34 + 16) + 8) + v72);
              String = llvm::MDString::getString(*(v74 - 8 * *(v74 + 8)));
              if (v76 == 29)
              {
                v77 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                v78 = v77 && String[2] == 0x5F79617272615F74;
                if (v78 && *(String + 21) == 0x7865646E695F7961)
                {
                  break;
                }
              }

              v72 += 8;
              if (v73 == v72)
              {
                LOBYTE(v71) = 0;
                goto LABEL_131;
              }
            }

            LOBYTE(v71) = dataTypeFromMetadata(1u, v74);
            goto LABEL_130;
          }
        }

LABEL_132:
        *(v34 + 68) = v71;
        v165[0] = v128;
        std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v165);
        v32 = v119 + 1;
        if (v119 + 1 == v114)
        {
          goto LABEL_136;
        }
      }

      LOBYTE(v71) = 0;
LABEL_130:
      a6 = v117;
LABEL_131:
      a5 = v118;
      goto LABEL_132;
    }

    v31 = 0;
LABEL_136:
    v165[0] = &v129;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v165);
    *(&__n_4 + 1) = __PAIR64__(v31, v150);
    v150 += v31;
    *&v155 = v150;
    DWORD2(v155) = v150;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](&v160, a6);
    if (a6)
    {
      v80 = 0;
      v81 = 0;
      v82 = 64;
      do
      {
        if (v116 != v115)
        {
          *(v147 + v82) = v81;
        }

        getSerializedModule(__val, v165);
        v83 = v160;
        v84 = *(v160 + 8 * v80);
        *(v160 + 8 * v80) = v165[0];
        if (v84)
        {
          (*(*v84 + 8))(v84);
          v83 = v160;
        }

        a5[v80] = 0;
        v81 += *(*(v83 + 8 * v80) + 16) - *(*(v83 + 8 * v80) + 8) + 4;
        ++v80;
        v82 += 136;
      }

      while (a6 != v80);
    }

    else
    {
      v81 = 0;
    }

    v150 += v81;
    HIDWORD(v155) = v81;
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryDataHeader(a8, &v153, &v150);
    }

    if (a11)
    {
      v85 = *(a11 + 8);
      if (v85)
      {
        v86 = *a11;
      }

      else
      {
        v86 = 0;
      }

      CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v165, v86, v85, a11 + 160, *(a11 + 128), *(a11 + 136));
      addBlocksForOutput(v151, a11, 0, v165);
      HIDWORD(v159) = sizeOfSerializedCompilerBlocks(v151);
      LODWORD(v159) = v150;
      v150 += HIDWORD(v159);
      CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v165);
    }

    *&v156 = __PAIR64__(a7, v150);
    v150 += a7;
    v87 = malloc_type_malloc(v150, 0x100004077774924uLL);
    v24 = v87;
    v88 = v153;
    v89 = v155;
    v87[1] = __n_4;
    v87[2] = v89;
    *v87 = v88;
    v90 = v156;
    v91 = v157;
    v92 = v158;
    *(v87 + 12) = v159;
    v87[4] = v91;
    v87[5] = v92;
    v87[3] = v90;
    if (__src)
    {
      memcpy(v87 + DWORD2(v153), __src, HIDWORD(v153));
      free(__src);
    }

    v161 = 0;
    v162 = &v161;
    v163 = 0x2020000000;
    v164 = (v24 + __n_4);
    *v164 = HIDWORD(v111);
    v93 = v162;
    ++v164;
    *v162[3] = v111;
    v93[3] += 4;
    v123 = &v161;
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v125 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3;
    v126 = &unk_27984E5E0;
    v127 = &v161;
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v121 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4;
    v122 = &unk_27984E608;
    v77 = v148 == v147;
    v94 = 0xF0F0F0F0F0F0F0F1 * ((v148 - v147) >> 3);
    v95 = v162;
    *v162[3] = v94;
    v95[3] += 4;
    if (!v77)
    {
      v96 = 0;
      if (v94 <= 1)
      {
        v97 = 1;
      }

      else
      {
        v97 = v94;
      }

      do
      {
        v98 = v147;
        v99 = v147 + v96;
        v125(v124, *(v147 + v96 + 48));
        v125(v124, *(v99 + 52));
        v125(v124, *(v98 + v96 + 56));
        v125(v124, *(v98 + v96 + 60));
        v125(v124, *(v98 + v96 + 64));
        v125(v124, *(v98 + v96 + 68));
        v125(v124, *(v98 + v96 + 69));
        v121(v120, (v98 + v96 + 32));
        v96 += 136;
        --v97;
      }

      while (v97);
    }

    v100 = ptr;
    memcpy((v24 + DWORD2(__n_4)), ptr, v31);
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryData(a8, &v153, v24);
    }

    if (a11 && HIDWORD(v159))
    {
      memset(v165, 0, 64);
      serializeCompilerBlocks((v24 + v159), HIDWORD(v159), v151, v165);
    }

    if (v117)
    {
      v101 = 0;
      v102 = (v24 + DWORD2(v155));
      do
      {
        v103 = *(v160 + 8 * v101);
        v104 = *(v103 + 8);
        v105 = *(v103 + 16);
        v106 = v105 - v104;
        *v102 = v105 - v104;
        v107 = v102 + 4;
        memcpy(v107, v104, (v105 - v104));
        v102 = &v107[v106];
        ++v101;
      }

      while (v117 != v101);
    }

    *v110 = v150;
    _Block_object_dispose(&v161, 8);
    v165[0] = &v160;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](v165);
    free(v100);
    _Block_object_dispose(&v143, 8);
    v165[0] = &v147;
    std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v165);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), __s1);
    free(__s1);
    v24 = 0;
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v151);
  return v24;
}

void sub_257A3C2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x240], 8);
  STACK[0x360] = &STACK[0x228];
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  free(a38);
  _Block_object_dispose(&a51, 8);
  STACK[0x240] = &a55;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a59);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void std::vector<MTLArgumentData>::resize(void *result, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<MTLArgumentData>::__append(result, v4);
  }

  else if (!v3)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](result, *result + 288 * a2);
  }
}

uint64_t SerializedLibraryInfo::serializeDynamicLibraryDataHeader(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  a2[14] = *a3;
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    LODWORD(v7) = v7 + 1;
    goto LABEL_6;
  }

  if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  LODWORD(v7) = 0;
LABEL_6:
  v8 = v6 + v7;
  *a3 = v8;
  a2[15] = v7;
  a2[16] = v8;
  v9 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 24));
  v10 = *a3 + v9;
  *a3 = v10;
  a2[17] = v9;
  a2[18] = v10;
  v11 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 48));
  v12 = *a3 + v11;
  *a3 = v12;
  a2[19] = v11;
  a2[20] = v12;
  v13 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 72));
  v14 = *a3 + v13;
  *a3 = v14;
  a2[21] = v13;
  a2[22] = v14;
  result = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 96));
  a2[23] = result;
  *a3 += result;
  return result;
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void SerializedLibraryInfo::serializeDynamicLibraryData(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[15])
  {
    v6 = a2[14];
    v7 = a1;
    if (*(a1 + 23) < 0)
    {
      v7 = *a1;
    }

    strcpy((a3 + v6), v7);
  }

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 24), (a3 + a2[16]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 48), (a3 + a2[18]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 72), (a3 + a2[20]));
  v8 = (a3 + a2[22]);

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 96), v8);
}

char *MTLCompilerObject::serializeLibraryToArchiveReply(uint64_t a1, size_t *a2, const char **a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  v28 = a5;
  v12 = 0;
  if (a4)
  {
    v13 = a3;
    v14 = a4;
    do
    {
      if (*v13)
      {
        v12 += strlen(*v13) + 1;
      }

      ++v13;
      --v14;
    }

    while (v14);
    if (v12 >= 0xFFFFFFFF)
    {
      return 0;
    }

    v15 = v12 + 104;
    a5 = v28;
  }

  else
  {
    v15 = 104;
  }

  v27 = a2;
  v26 = a1;
  if (a5)
  {
    v16 = v15;
    v17 = LLVMGetBufferSize();
    if (a7)
    {
      v18 = v15 + v17;
    }

    else
    {
      v18 = 0;
    }

    v15 += v17 + a7;
    v19 = 3;
  }

  else
  {
    v18 = 0;
    LODWORD(a7) = 0;
    v17 = 0;
    v16 = 0;
    v19 = 2;
  }

  v20 = malloc_type_malloc(v15, 0x100004077774924uLL);
  *v20 = v19;
  *(v20 + 1) = 0;
  *(v20 + 4) = 0x6800000000;
  *(v20 + 3) = v12;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  *(v20 + 10) = v16;
  *(v20 + 11) = v17;
  *(v20 + 12) = v18;
  *(v20 + 13) = a7;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  if (v8)
  {
    v21 = 0;
    do
    {
      v22 = *v9;
      if (*v9)
      {
        v23 = strlen(*v9) + 1;
        if (v8 != 1)
        {
          v22[v23] = 10;
        }

        memcpy(&v20[v21 + 104], v22, v23);
        free(v22);
        v21 += v23;
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  if ((v28 & 1) == 0)
  {
    MTLCompilerErrorObject::setErrorMessage((v26 + 64), v20 + 104);
    free(v20);
    return 0;
  }

  v24 = LLVMGetBufferStart();
  memcpy(&v20[v16], v24, v17);
  *v27 = v15;
  return v20;
}

uint64_t countArgumentBufferResources(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = result;
    v4 = (*a2 + 104);
    do
    {
      *(v14 + 5) = 0;
      v14[0] = 0;
      if (*(v4 - 1))
      {
        result = countArgumentBufferResources(v14, v4);
        v6 = v14[0];
        v5 = HIDWORD(v14[0]);
        v7 = v14[1];
        LOBYTE(v8) = BYTE4(v14[1]);
      }

      else
      {
        v8 = *(v4 - 6);
        if (!v8)
        {
          goto LABEL_11;
        }

        v9 = *v8;
        if ((*v8 & 0x1000) != 0)
        {
          *(v3 + 12) = 1;
          v9 = *v8;
        }

        v10 = ((v9 >> 4) & 0x1F) - 1;
        if (v10 > 4)
        {
          LOBYTE(v8) = 0;
LABEL_11:
          v7 = 0;
          v5 = 0;
          v6 = 0;
          goto LABEL_12;
        }

        LOBYTE(v8) = 0;
        v7 = dword_257A6DE94[v10];
        v5 = dword_257A6DEA8[v10];
        v6 = dword_257A6DEBC[v10];
      }

LABEL_12:
      v11 = *(v4 - 16);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = *(v3 + 4);
      *v3 += v6 * v11;
      *(v3 + 4) = v12 + v5 * v11;
      *(v3 + 8) += v7 * v11;
      *(v3 + 12) |= v8;
      v13 = v4 + 9;
      v4 += 22;
    }

    while (v13 != v2);
  }

  return result;
}

uint64_t MTLSimCompiler::validSimulatorMetadata(char **this, llvm::Module *a2)
{
  v4 = 0;
  v19 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = entryPointsMetadata[v4];
    v18 = 257;
    if (*v5)
    {
      v17[0] = v5;
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    LOBYTE(v18) = v6;
    NamedMetadata = llvm::Module::getNamedMetadata(a2, v17);
    v8 = NamedMetadata;
    if (NamedMetadata)
    {
      if (llvm::NamedMDNode::getNumOperands(NamedMetadata) > 0)
      {
        break;
      }
    }

    if (++v4 == 7)
    {
      goto LABEL_8;
    }
  }

  Operand = llvm::NamedMDNode::getOperand(v8);
  if (!Operand)
  {
LABEL_8:
    MTLCompilerErrorObject::setErrorMessage((this + 1), "invalid function metadata");
    return 0;
  }

  v15 = entryPointsType[v4];
  v11 = (Operand - 8 * *(Operand + 8));
  v12 = *(*v11 + 128);
  v13 = *(v11[2] + 8);
  if (*(v12 + 9))
  {
    llvm::Function::BuildLazyArguments(v12);
  }

  if ((v15 - 1) > 2)
  {
    abort();
  }

  if (v13 >= 1)
  {
    DataLayout = llvm::Module::getDataLayout(a2);
    llvm::DataLayout::DataLayout(v17, DataLayout);
    MTLArgumentData::MTLArgumentData(&v16);
  }

  return 1;
}

void sub_257A3CF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a23, a2, a3, a4);
  MTLArgumentData::~MTLArgumentData(&a26);
  MEMORY[0x259C6A2B0](&a62);
  _Unwind_Resume(a1);
}

uint64_t MTLSimCompiler::buildRequestWithOptions(char **this, const void *a2, unint64_t a3, unsigned int a4, llvm::Module *a5, const void **a6, unint64_t *a7, const void **a8, unint64_t *a9, const void **a10, unint64_t *a11, const char **a12)
{
  *this = 0;
  v17 = (this + 1);
  v33[0] = *a5;
  v33[2] = llvm::LLVMContext::getDiagnosticContext(v33[0]);
  v33[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v33[0]);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  if (MTLDowngradeAIRModule() && MTLSimCompiler::validSimulatorMetadata(this, a5))
  {
    v18 = 0;
    while (1)
    {
      v19 = entryPointsMetadata[v18];
      v32 = 257;
      if (*v19)
      {
        __p[0] = v19;
        v20 = 3;
      }

      else
      {
        v20 = 1;
      }

      LOBYTE(v32) = v20;
      NamedMetadata = llvm::Module::getNamedMetadata(a5, __p);
      if (NamedMetadata)
      {
        break;
      }

      if (++v18 == 7)
      {
        goto LABEL_13;
      }
    }

    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    Name = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
    if (Name)
    {
      std::string::basic_string[abi:ne200100](__p, Name, v26);
      goto LABEL_14;
    }

LABEL_13:
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
LABEL_14:
    *this = serializeModuleToBufferAsMetallib(a5, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    *a6 = LLVMGetBufferStart();
    v28 = LLVMGetBufferSize();
    v23 = 0;
    v24 = 0;
    *a7 = v28;
    *a8 = 0;
    *a9 = 0;
    *a10 = 0;
    *a11 = 0;
  }

  else
  {
    v22 = MEMORY[0x259C6AE50](a5);
    MEMORY[0x259C6B890](v22, 0x10B2C407FF26C1CLL);
    v23 = *v17;
    v24 = 1;
  }

  *a12 = v23;
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v33);
  return v24;
}

uint64_t serializeModuleToBufferAsMetallib(uint64_t a1, uint64_t *a2)
{
  LLVMGetTarget();
  MTLMetalLibCreateExecutableWithTriple();
  LLVMExtraMakeSharedModule();
  MTLMetalFunctionCreate();
  MTLMetalLibInsertFunction();
  v2 = MTLWriteMetalLibToMemoryBuffer();
  LLVMExtraDisposeSharedModule();
  return v2;
}

void MTLSimCompiler::deleteCompilerReply(void **this)
{
  if (*this)
  {
    LLVMDisposeMemoryBuffer();
    *this = 0;
  }

  free(this[1]);
  this[1] = 0;
}

uint64_t MTLSimCompilerDelete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 8));
    *(v1 + 8) = 0;

    JUMPOUT(0x259C6B890);
  }

  return result;
}

BOOL MTLCompilerObject::readVisibleFunctions(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8, std::string *a9)
{
  v22 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    a1 = std::string::append(v12, "STRIP { ");
  }

  if (a5)
  {
    v13 = 0;
    v14 = (a6 + a4);
    v15 = a5;
    v16 = 1;
    v17 = a5;
    while (1)
    {
      v27 = 0;
      v28 = 0u;
      v29 = 0u;
      memset(v30, 0, 26);
      v31 = 0u;
      memset(v32, 0, sizeof(v32));
      MTLCompilerObject::getReadParametersFromRequest(a1, &v27, a6, a7, v14, a8);
      v26 = 0;
      v18 = MTLCompilerObject::readModuleFromBinaryRequest(v22, &v27, a3, &v26, 0, 0, 1);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      if (v12)
      {
        std::string::append(a9, v30[1]);
        std::string::append(a9, " { } ");
      }

      a1 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, v19);
      v13 = v16 >= v15;
      v14 += 14;
      ++v16;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (v12)
    {
      std::string::append(v12, "}\n");
    }

    return 1;
  }

  return v13;
}

uint64_t MTLCompilerObject::createLoaderScript(uint64_t a1, char *__s, uint64_t a3)
{
  strlen(__s);
  v5 = LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    MTLGPUCompilerSetLoaderScript();
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "error while parsing script: %s", 0);
    free(0);
    (*(a3 + 16))(a3, 2 * (*(a1 + 64) != 0), 0, 0);
    return 0;
  }

  return v5;
}

uint64_t MTLCompilerObject::invokeFunctionLoader(uint64_t a1, _DWORD *a2, unint64_t a3, llvm::LLVMContext *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74[1] = *MEMORY[0x277D85DE8];
  if (a6 && (v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a6 length:a7 freeWhenDone:0], (v15 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v14, 0, 0, 0), "objectForKeyedSubscript:", @"LinkerScript_module"), "UTF8String")) != 0))
  {
    LoaderScript = MTLCompilerObject::createLoaderScript(a1, v15, a8);
  }

  else
  {
    LoaderScript = 0;
  }

  v60 = 0;
  v61 = 0;
  v65 = a5;
  llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(&v72, &v65, 1);
  if (!MTLCompilerObject::readVisibleFunctions(a1, &v72, a4, a2[37], a2[36], a2, a3, a2, 0))
  {
    (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
    v32 = 0;
    goto LABEL_51;
  }

  if (a2[38])
  {
    v44 = a4;
    v45 = a1;
    v43 = a2;
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + a2[39] length:?];
    v62 = 0;
    v17 = MEMORY[0x277CCAAC8];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 unarchivedObjectOfClasses:objc_msgSend(v18 fromData:"setWithObjects:" error:{v19, v20, objc_opt_class(), 0), v16, &v62}];
    v42 = a8;
    v65 = v67;
    v66 = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v22)
    {
      v23 = *v57;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v56 + 1) + 8 * i);
          __s.__r_.__value_.__r.__words[0] = &__s.__r_.__value_.__r.__words[2];
          __s.__r_.__value_.__l.__size_ = 0;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v26 = [v21 objectForKeyedSubscript:v25];
          v27 = [v26 countByEnumeratingWithState:&v52 objects:v70 count:16];
          if (v27)
          {
            v28 = *v53;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v53 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__s, [*(*(&v52 + 1) + 8 * j) UTF8String]);
              }

              v27 = [v26 countByEnumeratingWithState:&v52 objects:v70 count:16];
            }

            while (v27);
          }

          [v25 UTF8String];
          v30 = MTLFunctionGroupCreate();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v65, v30);
          if (__s.__r_.__value_.__l.__data_ != &__s.__r_.__value_.__r.__words[2])
          {
            free(__s.__r_.__value_.__l.__data_);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v56 objects:v71 count:16];
      }

      while (v22);
    }

    a1 = v45;
    MTLGPUCompilerSetFunctionGroups();
    a8 = v42;
    a2 = v43;
    a4 = v44;
    if (v65 != v67)
    {
      free(v65);
    }
  }

  memset(&__s, 0, sizeof(__s));
  if (MTLCompilerObject::readVisibleFunctions(a1, &v72, a4, a2[41], a2[40], a2, a3, a2, &__s))
  {
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__s.__r_.__value_.__l.__size_)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_33;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      p_s = &__s;
LABEL_33:
      LoaderScript = MTLCompilerObject::createLoaderScript(a1, p_s, a8);
    }

    v65 = 0;
    v66 = 0;
    v67[0] = v68;
    v67[1] = 0x400000000;
    v68[4] = v69;
    v68[5] = 0;
    v69[0] = 0;
    v69[1] = 1;
    v50 = &v65;
    __p[0] = 0;
    llvm::SmallVector<char const*,1u>::SmallVector(&v62, v73, __p);
    v33 = v63;
    if (v63)
    {
      v34 = 0;
      do
      {
        std::to_string(&v47, v34);
        v35 = std::string::insert(&v47, 0, "linked-air-blob-");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v49 = v35->__r_.__value_.__r.__words[2];
        *__p = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        *(v62 + v34) = llvm::StringSaver::save();
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        ++v34;
      }

      while (v33 != v34);
    }

    MTLGPUCompilerSetLoadingMode();
    Modules = MTLGPUCompilerLoadModules();
    if (LoaderScript)
    {
      LLVMDisposeMemoryBuffer();
    }

    if (Modules)
    {
      v32 = v61;
    }

    else
    {
      (*(a8 + 16))(a8, 2, 0, 0, v60);
      free(v60);
      v32 = 0;
    }

    if (v62 != &v64)
    {
      free(v62);
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v65, v37, v38, v39);
    goto LABEL_49;
  }

  (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
  v32 = 0;
LABEL_49:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_51:
  if (v72 != v74)
  {
    free(v72);
  }

  return v32;
}

void sub_257A3DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a55 != &a57)
  {
    free(a55);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&a58, a2, a3, a4);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v58 - 128);
  if (v60 != (v58 - 112))
  {
    free(v60);
  }

  _Unwind_Resume(a1);
}

void *MTLCompilerObject::invokeLowerModule(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Module *a4, MTLFunctionType a5, uint64_t a6)
{
  if (*(a2 + 284))
  {
    MTLGPUCompilerHandleSPIs();
    free(0);
  }

  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x186) != 0)
  {
    if ((*(a2 + 5) & 8) != 0)
    {
      getMDNodeForFunctionType(a4, a5);
      MTLGPUCompilerEnableDegenerateVertexAmplificationEmulation();
    }

    if (a5 == MTLFunctionTypeFragment && (*(a2 + 5) & 0x20) != 0)
    {
      MDNodeForFunctionType = getMDNodeForFunctionType(a4, MTLFunctionTypeFragment);
      v10 = (MDNodeForFunctionType - *(MDNodeForFunctionType + 2))[2];
      if (v10)
      {
        v11 = *(v10 + 8);
        if (v11)
        {
          v12 = MDNodeForFunctionType;
          v13 = -8 * v11;
          while (1)
          {
            v14 = *(v10 + v13);
            v15 = *(v14 + 8);
            if (v15 >= 2)
            {
              v16 = *(v14 - 8 * v15 + 8);
              if (!*v16)
              {
                String = llvm::MDString::getString(v16);
                if (v18 == 29)
                {
                  v19 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                  v20 = v19 && String[2] == 0x5F79617272615F74;
                  if (v20 && *(String + 21) == 0x7865646E695F7961)
                  {
LABEL_71:
                    v46 = *(*(v12 - *(v12 + 2)) + 128);
                    v47 = *(*(v14 - 8 * *(v14 + 8)) + 128);
                    v48 = (v47 + 24);
                    if (*(v47 + 32) >= 0x41u)
                    {
                      v48 = *v48;
                    }

                    v49 = *v48;
                    if (*(v46 + 18))
                    {
                      llvm::Function::BuildLazyArguments(v46);
                    }

                    llvm::Constant::getNullValue(*(*(v46 + 88) + 40 * v49), v18);
                    llvm::Value::replaceAllUsesWith();
                    llvm::MDString::get();
                    llvm::MDNode::replaceOperandWith();
                    goto LABEL_39;
                  }
                }
              }

              v22 = *(v14 + 8);
              if (v22 >= 4)
              {
                v23 = *(v14 - 8 * v22 + 24);
                if (!*v23)
                {
                  v24 = llvm::MDString::getString(v23);
                  if (v18 == 29)
                  {
                    break;
                  }
                }
              }
            }

LABEL_38:
            v13 += 8;
            if (!v13)
            {
              goto LABEL_39;
            }
          }

          v25 = bswap64(*v24);
          v26 = 0x6169722E72656E64;
          if (v25 == 0x6169722E72656E64)
          {
            v25 = bswap64(v24[1]);
            if (v25 == 0x65725F7461726765)
            {
              v25 = bswap64(v24[2]);
              v26 = 0x745F61727261795FLL;
              if (v25 == 0x745F61727261795FLL)
              {
                v25 = bswap64(*(v24 + 21));
                v26 = 0x61795F696E646578;
                if (v25 == 0x61795F696E646578)
                {
                  v27 = 0;
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v26 = 0x65725F7461726765;
            }
          }

          if (v25 < v26)
          {
            v27 = -1;
          }

          else
          {
            v27 = 1;
          }

LABEL_37:
          if (!v27)
          {
            goto LABEL_71;
          }

          goto LABEL_38;
        }
      }
    }
  }

LABEL_39:
  MTLGPUCompilerEnableRaytracingEmulation();
  MTLGPUCompilerSetRaytracingEmulationIndirectAccelerationStructures();
  MTLGPUCompilerSetRaytracingEmulationMaxAccelerationStructureTraversalDepth();
  MTLGPUCompilerEnable16BitTextureCoordinateEmulation();
  MTLGPUCompilerEnableTLSEmulation();
  MTLGPUCompilerEnableResourcePatchingInstrumentation();
  MTLGPUCompilerEnableResourceUsageInstrumentation();
  MTLGPUCompilerEnableExternallyInitializedVariableSupport();
  MTLGPUCompilerEnableBFloatEmulation();
  MTLGPUCompilerEnableDoubleEmulation();
  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x18C) != 0)
  {
    if (*(a2 + 200))
    {
      v28 = (a2 + *(a2 + 196) + *(a2 + *(a2 + 196)));
      v29 = (v28 - *v28);
      if (*v29 >= 9u)
      {
        v30 = v29[4];
        if (v30)
        {
          v31 = *(v28 + v30);
          if (v31 == 4)
          {
            v38 = Air::PipelineScript::pipeline_as_mesh_render(v28);
            if (!v38)
            {
              goto LABEL_68;
            }

            if (a5 == MTLFunctionTypeMesh)
            {
              v42 = (v38 - *v38);
              if (*v42 < 0xDu)
              {
                goto LABEL_68;
              }

              v43 = v42[6];
              if (!v43)
              {
                goto LABEL_68;
              }

              v35 = (v38 + v43 + *(v38 + v43));
              v44 = (v35 - *v35);
              if (*v44 < 0x21u)
              {
                goto LABEL_68;
              }

              v37 = v44[16];
              if (!v37)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if (a5 != MTLFunctionTypeObject)
              {
                goto LABEL_68;
              }

              v39 = (v38 - *v38);
              if (*v39 < 0xBu)
              {
                goto LABEL_68;
              }

              v40 = v39[5];
              if (!v40)
              {
                goto LABEL_68;
              }

              v35 = (v38 + v40 + *(v38 + v40));
              v41 = (v35 - *v35);
              if (*v41 < 0x1Fu)
              {
                goto LABEL_68;
              }

              v37 = v41[15];
              if (!v37)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            if (v31 == 3)
            {
              v32 = Air::PipelineScript::pipeline_as_tile_render(v28);
              if (!v32)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if (v31 != 2)
              {
                goto LABEL_68;
              }

              v32 = Air::PipelineScript::pipeline_as_compute(v28);
              if (!v32)
              {
                goto LABEL_68;
              }
            }

            v33 = (v32 - *v32);
            if (*v33 < 7u)
            {
              goto LABEL_68;
            }

            v34 = v33[3];
            if (!v34)
            {
              goto LABEL_68;
            }

            v35 = (v32 + v34 + *(v32 + v34));
            v36 = (v35 - *v35);
            if (*v36 < 0x19u)
            {
              goto LABEL_68;
            }

            v37 = v36[12];
            if (!v37)
            {
              goto LABEL_68;
            }
          }

          if (*(v35 + v37 + *(v35 + v37)) >= 3)
          {
            MTLGPUCompilerSetRequiredThreadsPerThreadgroup();
          }
        }
      }
    }
  }

LABEL_68:
  MTLGPUCompilerSetNativeArch();
  if (!MTLGPUCompilerLowerModule())
  {
    (*(a6 + 16))(a6, 2, 0, 0, 0);
  }

  free(0);
  return 0;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest(llvm::legacy::PassManager **a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36[0] = 0;
  v37 = 0u;
  v33 = 0;
  *v35 = 0u;
  *v32 = 0u;
  v34 = -1;
  v36[1] = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v4 = *(a2 + 32);
  v5 = v4[55];
  if (v5 == 10 || v5 == 1)
  {
    v6 = *v4 >> 31;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x259C6A4D0](v31);
  v30[0] = v31;
  v30[2] = llvm::LLVMContext::getDiagnosticContext(v31);
  v30[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v31);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  LOWORD(v50) = 0;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  MTLCompilerObject::getReadParametersFromRequest(v7, &v50, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, &v50, v31, (a2 + 40), &v41, &v41 + 1, v5 == 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  v9 = (a2 + 48);
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[8] != 0), 0, 0);
LABEL_31:
    free(v41);
    goto LABEL_32;
  }

  if (!v6)
  {
    v12 = *(a2 + 32);
    if ((*(v12 + 3) & 4) != 0)
    {
      *(a2 + 48) = MTLCompilerObject::invokeFunctionLoader(a1, v12, *(a2 + 8), v31, ModuleFromBinaryRequest, v41, *(&v41 + 1), *(a2 + 24));
      **(a2 + 32) &= ~0x4000000u;
    }

    free(v41);
    *&v41 = 0;
    v13 = *(a2 + 32);
    if ((*(v13 + 3) & 2) != 0)
    {
      if (!*v9)
      {
        goto LABEL_32;
      }

      *(a2 + 48) = MTLCompilerObject::invokeLowerModule(a1, v13, v31, *v9, *(a2 + 40), *(a2 + 24));
      **(a2 + 32) &= ~0x2000000u;
    }

    if (*v9)
    {
      v11 = *(a2 + 32);
      goto LABEL_18;
    }

LABEL_32:
    v17 = 0;
    v18 = 0;
    goto LABEL_33;
  }

  v10 = MTLCompilerObject::runFrameworkPasses(a1, a2, v32, v31, &v46);
  v11 = *(a2 + 32);
  if ((v10 & 1) == 0 && (*(v11 + 4) & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (*(v11 + 12) != 12)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[8] != 0), 0, 0, "Invalid air downgrade request data size");
    goto LABEL_31;
  }

  v14 = *a2 + *(v11 + 8);
  if (*(v14 + 8))
  {
    if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    if ((atomic_load_explicit(byte_28153FBD8, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    qword_27F8ECD94 = qword_27F8ECD94 & 0xFFFFFFFFFFFFFFEFLL | (8 * *(v14 + 8)) & 0x10 | 0xC0000;
    if (!*a1)
    {
      operator new();
    }

    llvm::legacy::PassManager::run(*a1, *v9);
  }

  if (!MTLDowngradeAIRModule())
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[8] != 0), 0, 0);
    goto LABEL_32;
  }

  v15 = *(a2 + 32);
  if ((*(v15 + 5) & 2) != 0)
  {
    if (((v47 - v46) & 0xFFFFFFFF0) != 0)
    {
      v16 = 12 * ((v47 - v46) >> 4) + 4;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = (*v15 >> 30) & 1;
  v26 = v32;
  if (!v6)
  {
    v26 = 0;
  }

  v17 = 1;
  v18 = MTLCompilerObject::serializeLibraryReply(a1, &v49, 0, 1, (a2 + 48), 1uLL, v16, 0, v25, *(v14 + 4), v26);
LABEL_33:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v30);
  llvm::LLVMContext::~LLVMContext(v31);
  if (v17)
  {
    if (v18)
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v46, v47, (v47 - v46) >> 4);
      if (v18[13])
      {
        v19 = v18[12];
        v51 = 0uLL;
        v50 = 0;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v50, __p, v28, (v28 - __p) >> 4);
        serializeCompileTimeData(v18 + v19, &v50);
        if (v50)
        {
          *&v51 = v50;
          operator delete(v50);
        }
      }

      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      (*(*(a2 + 24) + 16))();
      free(v18);
    }

    else
    {
      (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[8] != 0), 0, 0);
    }

    if (v41)
    {
      free(v41);
      v41 = 0uLL;
    }
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v32[i], 0);
  }

  v21 = v42;
  *&v42 = 0;
  if (v21)
  {
    free(v21);
  }

  v22 = v36[1];
  v36[1] = 0;
  if (v22)
  {
    free(v22);
  }

  v23 = v35[0];
  v35[0] = 0;
  if (v23)
  {
    free(v23);
  }

  v24 = v32[0];
  v32[0] = 0;
  if (v24)
  {
    free(v24);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

uint64_t fatalDiagnosticHandler(uint64_t result)
{
  if (!*(result + 12))
  {
    memset(v1, 0, sizeof(v1));
    printDiagnosticError(result, v1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      fatalDiagnosticHandler();
    }

    abort();
  }

  return result;
}

void sub_257A3E94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::runFrameworkPasses(uint64_t a1, uint64_t *a2, void *a3, llvm::LLVMContext *a4, uint64_t a5)
{
  v5 = a2[4];
  if ((*v5 & 0x80000000) == 0)
  {
    return 1;
  }

  v12 = v5[1];
  if ((*v5 & 0x800000) != 0 || ((v12 & 2) != 0 ? (v13 = a3[17] == 0) : (v13 = 0), !v13))
  {
    if (!MTLCompilerObject::loadModule(a1, a2, a3, a4))
    {
      return 0;
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v16 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 21, v16);
    }
  }

  if (v12 & 0x40000000) == 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
    return 0;
  }

  MTLCompilerObject::deserializePluginData(a1, a2, a3);
  MTLCompilerObject::runDebugInstrumentationPass(a1, a2, a3, a5);
  if ((v12 & 2) == 0 && !MTLCompilerObject::lowerModule(a1, a2, a3, a4))
  {
    return 0;
  }

  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = v22;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if ((MTLCompilerObject::runFWPassesForFunctionType(a1, a2, v14, v18) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v15 = MTLWriteAIRReflectionToMemoryBuffer();
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 22, v15);
  }

  if (v12 & 0x40000000) != 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
LABEL_18:
    v6 = 0;
  }

  else
  {
    MTLCompilerObject::patchReflection(a1, a2, a3);
    v6 = MTLCompilerObject::runLinkingPasses(a1, a2, a3, v18);
  }

  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v21, v22[0]);
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return v6;
}

void MTLBoundsCheck::SerializedData::~SerializedData(MTLBoundsCheck::SerializedData *this)
{
  v2 = this + 608;
  v3 = *(this + 76);
  if (v3 != this + 632)
  {
    free(v3);
  }

  v4 = *(this + 74);
  if (v4 != v2)
  {
    free(v4);
  }

  v5 = *(this + 48);
  if (v5 != this + 400)
  {
    free(v5);
  }

  v6 = *(this + 14);
  if (v6 != this + 128)
  {
    free(v6);
  }

  llvm::SmallVector<std::string,4u>::~SmallVector(this);
}

void FrameworkPassesOutput::~FrameworkPassesOutput(FrameworkPassesOutput *this)
{
  for (i = 176; i != 152; i -= 8)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((this + i), 0);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    free(v5);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    free(v6);
  }
}

void MTLCompilerObject::stitchFunctionDag(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v107 = *MEMORY[0x277D85DE8];
  v100[0] = this;
  v100[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v100[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  v80 = a1;
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v97 = a4;
  v98 = a5;
  if (a5 <= 3)
  {
    goto LABEL_134;
  }

  v99 = 4;
  v10 = DeserialContext::deserializeCStringNoCopy(&v97, 0);
  v101 = 0;
  v102 = 0u;
  v103 = 0u;
  memset(v104, 0, 26);
  v105 = 0u;
  memset(v106, 0, sizeof(v106));
  v11 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v12 = v10;
  v13 = *(v97 + v99);
  v14 = v99 + 4;
  v99 += 4;
  if (v13 == 1634300534)
  {
    if (v98 <= v14)
    {
      goto LABEL_134;
    }

    if (v98 - v14 <= 3)
    {
      goto LABEL_134;
    }

    v15 = *(v97 + v14);
    v99 = v11 + 8;
    LODWORD(v104[0]) = v15;
    if (v98 <= v11 + 8)
    {
      goto LABEL_134;
    }

    if (v98 - (v11 + 8) <= 3)
    {
      goto LABEL_134;
    }

    v16 = *(v97 + v11 + 8);
    v99 = v11 + 12;
    HIDWORD(v104[0]) = v16;
    if (v98 <= v11 + 12 || v98 - (v11 + 12) <= 3)
    {
      goto LABEL_134;
    }

    v14 = v11 + 16;
    v99 = v11 + 16;
  }

  if (v98 <= v14 || v98 - v14 <= 3)
  {
    goto LABEL_134;
  }

  v17 = *(v97 + v14);
  v99 = v14 + 4;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v94, v17);
  __s = v12;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  __p = 0;
  v89 = 0;
  v90 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v91, v17);
  if (!v17)
  {
    goto LABEL_64;
  }

  v18 = 0;
  do
  {
    v19 = v98;
    v20 = v99;
    if (v98 <= v99 || v98 - v99 <= 3)
    {
      goto LABEL_134;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v97 + v20);
      v24 = v20 + 4;
      v99 = v20 + 4;
      if (v23 == 1651007859)
      {
        if (v19 <= v24)
        {
          goto LABEL_134;
        }

        v99 = v20 + 36;
        if (v20 + 36 > v19)
        {
          goto LABEL_134;
        }

        v25 = v97 + v24;
        v26 = v89;
        if (v89 >= v90)
        {
          v28 = (v89 - __p) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v29 = (v90 - __p) >> 2;
          if (v29 <= v28 + 1)
          {
            v29 = v28 + 1;
          }

          if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v30);
          }

          v31 = (8 * v28);
          *v31 = v25;
          v27 = 8 * v28 + 8;
          v32 = v31 - (v89 - __p);
          memcpy(v32, __p, v89 - __p);
          v33 = __p;
          __p = v32;
          v89 = v27;
          v90 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v89 = v25;
          v27 = (v26 + 8);
        }

        v89 = v27;
        goto LABEL_40;
      }

      if (v23 != 1953656940)
      {
        break;
      }

      v22 = DeserialContext::deserializeCStringNoCopy(&v97, 0);
LABEL_40:
      v19 = v98;
      v20 = v99;
      if (v98 <= v99 || v98 - v99 <= 3)
      {
        goto LABEL_134;
      }
    }

    if (v23 != 1651078243)
    {
      goto LABEL_134;
    }

    v104[2] = v22;
    if (v19 <= v24)
    {
      goto LABEL_134;
    }

    if (v19 - v24 <= 3)
    {
      goto LABEL_134;
    }

    v35 = *(v97 + v24);
    v36 = v20 + 8;
    v99 = v36;
    if (v36 >= v19)
    {
      goto LABEL_134;
    }

    v99 = v36 + v35;
    if (v36 + v35 > v19)
    {
      goto LABEL_134;
    }

    v101 = 0;
    *&v102 = v35;
    *(&v102 + 1) = v97 + v36;
    *&v85 = 1;
    v37 = MTLCompilerObject::readModuleFromBinaryRequest(v80, &v101, this, &v85, 0, 0, 0);
    if (!v37)
    {
      (*(a6 + 16))(a6, 2 * (*(v80 + 64) != 0), 0, 0);
      goto LABEL_127;
    }

    __dst[0] = LLVMCreateMemoryBufferWithMemoryRange();
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v91, __dst);
    v38 = v95;
    if (v95 >= v96)
    {
      v40 = (v95 - v94) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v41 = (v96 - v94) >> 2;
      if (v41 <= v40 + 1)
      {
        v41 = v40 + 1;
      }

      if (v96 - v94 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v41;
      }

      if (v42)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v94, v42);
      }

      v43 = (8 * v40);
      *v43 = v37;
      v39 = 8 * v40 + 8;
      v44 = v43 - (v95 - v94);
      memcpy(v44, v94, v95 - v94);
      v45 = v94;
      v94 = v44;
      v95 = v39;
      v96 = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v95 = v37;
      v39 = (v38 + 8);
    }

    v95 = v39;
    ++v18;
  }

  while (v18 != v17);
LABEL_64:
  v46 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v47 = *(v97 + v99);
  v48 = v99 + 4;
  v99 += 4;
  if (v47 == 1853189491)
  {
    if (v98 > v48 && v98 - v48 > 3)
    {
      v49 = *(v97 + v48);
      v99 = v46 + 8;
      goto LABEL_71;
    }

LABEL_134:
    abort();
  }

  v49 = 0;
LABEL_71:
  v85 = 0u;
  v86 = 0u;
  v87 = 1065353216;
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__rehash<true>(&v85, v49);
  if (v49)
  {
    do
    {
      v50 = v99;
      if (v98 <= v99 || v98 - v99 <= 3)
      {
        goto LABEL_134;
      }

      v52 = *(v97 + v99);
      v53 = v99 + 4;
      v99 += 4;
      if (v52 == 1634952050)
      {
        if (v98 <= v53 || v98 - v53 <= 3)
        {
          goto LABEL_134;
        }

        v55 = *(v97 + v53);
        v56 = v50 + 8;
        v99 = v56;
        if (v56 >= v98)
        {
          goto LABEL_134;
        }

        v99 = v56 + v55;
        if (v56 + v55 > v98)
        {
          goto LABEL_134;
        }

        v57 = (v97 + v56 + *(v97 + v56));
        v58 = (v57 + *(v57 - *v57 + 8));
        v59 = (v58 + *v58 + *(v58 + *v58 - *(v58 + *v58) + 6));
        v60 = (v59 + *v59 + *(v59 + *v59 - *(v59 + *v59) + 4));
        std::string::basic_string[abi:ne200100](__dst, v60 + *v60 + 4, *(v60 + *v60));
        __src = LLVMCreateMemoryBufferWithMemoryRange();
        std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(&v85, __dst, __dst, &__src);
        if (v84 < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    while (--v49);
  }

  v61 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v62 = *(v97 + v99);
  v63 = v99 + 4;
  v99 += 4;
  if (v62 == 1886676589)
  {
    v64 = v98 >= v63;
    v65 = v98 - v63;
    if (v65 == 0 || !v64 || v65 <= 3)
    {
      goto LABEL_134;
    }

    v63 = v61 + 8;
    v99 = v61 + 8;
  }

  if (v98 <= v63 || v98 - v63 <= 3)
  {
    goto LABEL_134;
  }

  v66 = *(v97 + v63);
  v67 = v63 + 4;
  v99 = v63 + 4;
  if (v66 != 1634888036)
  {
    goto LABEL_104;
  }

  if (v98 <= v67 || v98 - v67 <= 3)
  {
    goto LABEL_134;
  }

  v68 = *(v97 + v67);
  v69 = v63 + 8;
  v99 = v69;
  if (v68)
  {
    if (v69 >= v98)
    {
      goto LABEL_134;
    }

    v99 = v69 + v68;
    if (v69 + v68 > v98)
    {
      goto LABEL_134;
    }

    v70 = v97 + v69;
  }

  else
  {
LABEL_104:
    v70 = 0;
  }

  __src = 0;
  __dst[0] = 0;
  strlen(__s);
  LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    free(__src);
    __src = 0;
    MTLGPUCompilerSetStitcherScript();
    v71 = MTLGPUCompilerStitchFunctionsToBuffer() != 0;
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage((v80 + 64), "error while parsing script: %s", __src);
    free(__src);
    v71 = 0;
    __src = 0;
  }

  LLVMDisposeMemoryBuffer();
  if (v70)
  {
    v73 = v71;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    v81 = 0;
    MTLCompilerObject::insertStitchedFunctionsIntoArchive(v80, v70, v72, __dst[0], &v85, &v91, &__src, &v81);
  }

  v74 = v91;
  v75 = v92;
  while (v74 != v75)
  {
    LLVMDisposeMemoryBuffer();
    v74 += 8;
  }

  for (i = v86; i; i = *i)
  {
    LLVMDisposeMemoryBuffer();
  }

  if (v71)
  {
    v81 = 0;
    v77 = MTLCompilerObject::serializeLibraryToArchiveReply(v80, &v81, &__src, 1, 1, __dst[0], 0);
    if (__dst[0])
    {
      LLVMDisposeMemoryBuffer();
    }

    (*(a6 + 16))(a6, 0, v77, v81, 0);
    free(v77);
  }

  else
  {
    if (__src)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((v80 + 64), "error: %s", __src);
      free(__src);
      __src = 0;
    }

    (*(a6 + 16))(a6, 2 * (*(v80 + 64) != 0), 0, 0);
  }

  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&v85);
LABEL_127:
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v100);
}

void sub_257A3F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&a22);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&a39);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::insertStitchedFunctionsIntoArchive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char **a7, uint64_t a8)
{
  v10 = a4;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  MTLCompilerObject::extractFunctionsFromMetallib(a1, &v10, v8, a7);
}

void sub_257A3F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::extractFunctionsFromMetallib(uint64_t a1, void *a2, uint64_t a3, char **a4)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::MemoryBufferRef::MemoryBufferRef();
  v4 = 0;
  operator new();
}

void sub_257A3FCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  llvm::SmallVector<std::string,4u>::~SmallVector(&a31);
  if ((a29 & 1) != 0 && a27)
  {
    (*(*a27 + 8))(a27);
  }

  (*(*v33 + 8))(v33);
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::invokeLoaderForSpecializedFunction(uint64_t a1, void **a2, uint64_t a3, _DWORD *a4, unint64_t a5, llvm::LLVMContext *a6, uint64_t a7)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (a3)
  {
    MTLMetalLibGetFunctionNo();
    MTLMetalFunctionGetModule();
    Name = MTLMetalFunctionGetName();
    MEMORY[0x259C6B680](__p, Name);
    llvm::CloneModule();
    v14 = v18;
    MTLMetalLibDestroy();
  }

  else
  {
    MEMORY[0x259C6B680](__p, a4 + a4[22]);
    v14 = *a2;
  }

  *a4 |= 0xC000000u;
  v15 = MTLCompilerObject::invokeFunctionLoader(a1, a4, a5, a6, v14, 0, 0, a7);
  v16 = serializeModuleToBufferAsMetallib(v15, __p);
  if (v14 == *a2)
  {
    *a2 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_257A3FF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *llvm::object::MetalLibObjectFile::moduleOfFunction@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v3 = this;
  if (*(this + 35))
  {
    v7 = this[51];
  }

  else
  {
    v5 = a3 - this[35];
    v6 = *(this[44] + (v5 >> 1));
    if (v6 == -1)
    {
      this = llvm::object::MetalLibObjectFile::materializeModuleForFunctionNo(&v9, this);
      v7 = v9;
      if (v9)
      {
        v8 = *(a1 + 8) | 1;
        goto LABEL_6;
      }

      v6 = *(v3[44] + 4 * (v5 >> 3));
    }

    v7 = v3[50] + 8 * v6;
  }

  v8 = a1[1] & 0xFE;
LABEL_6:
  *(a1 + 8) = v8;
  *a1 = v7;
  return this;
}

uint64_t MTLCompilerObject::insertFunctionInArchive(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, char **a5)
{
  if (MTLGPUArchiverFromId())
  {
    LLVMCreateMemoryBufferWithMemoryRange();
    v7 = LLVMCreateMemoryBufferWithMemoryRange();
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    MTLCompilerObject::extractFunctionsFromMetallib(v7, a4, v9, a5);
  }

  return 0;
}

void MTLCompilerObject::buildSpecializedFunctionRequest(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v9 = *(a1 + 80);
    }

    p_p = &__p;
    if (DiagnosticContext < 0)
    {
      p_p = __p;
    }

    *buf = 136446722;
    *v44 = v9;
    *&v44[8] = 2082;
    *&v44[10] = p_p;
    *&v44[18] = 2080;
    *&v45 = "function specialization";
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v11 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p);
  }

  v37 = 0;
  *buf = 0;
  *&v44[4] = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  if ((*(a2 + 5) & 2) != 0)
  {
    v11 = mach_absolute_time();
  }

  MEMORY[0x259C6A4D0](v36);
  *&__p = v36;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v36);
  *(&__p + 1) = llvm::LLVMContext::getDiagnosticHandlerCallBack(v36);
  v12 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  MTLCompilerObject::getReadParametersFromRequest(v12, buf, a2, a3, (a2 + 88), a2);
  v35 = 1;
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v36, &v35, 0, 0, 1);
  v14 = ModuleFromBinaryRequest;
  v33 = 0;
  v34 = ModuleFromBinaryRequest;
  v32 = 0;
  if (!ModuleFromBinaryRequest)
  {
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_40:
    v25 = 0;
    v24 = 0;
    v22 = 0;
    goto LABEL_41;
  }

  v15 = *(a2 + 160);
  v16 = *(a2 + 12);
  if (!v16)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v17 = *(a2 + 8);
  if ((*(a2 + 5) & 2) != 0)
  {
    v18 = mach_absolute_time();
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValues(a1, v36, v14, a2 + 236, (a2 + v17), v16, v47, &v32);
    v20 = ModuleFromBinaryRequest;
    if (ModuleFromBinaryRequest)
    {
      v19 = 0;
      goto LABEL_26;
    }

LABEL_39:
    free(v32);
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    goto LABEL_40;
  }

  ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValuesToArchive(a1, v36, v14, a2 + 236, (a2 + v17), v16, v47, &v32);
  v19 = ModuleFromBinaryRequest;
  v33 = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    goto LABEL_39;
  }

  v20 = 0;
LABEL_26:
  if (*(a2 + 160))
  {
LABEL_27:
    ModuleFromBinaryRequest = MTLCompilerObject::invokeLoaderForSpecializedFunction(a1, &v34, v20, a2, a3, v36, a5);
    v19 = ModuleFromBinaryRequest;
    v33 = ModuleFromBinaryRequest;
  }

LABEL_28:
  if ((*(a2 + 2) & 0x80) != 0)
  {
    *&v31 = 0;
    MTLCompilerObject::insertFunctionInArchive(ModuleFromBinaryRequest, a2, buf, &v33, &v31);
    if (v31)
    {
      (*(a5 + 16))(a5, 2, 0, 0);
      free(v31);
      goto LABEL_40;
    }
  }

  if ((*(a2 + 5) & 2) != 0)
  {
    v22 = (*&gMachTimeToNS * (mach_absolute_time() - v18));
    LODWORD(v31) = 1;
    *(&v31 + 1) = v22;
    std::vector<CompileTimeData>::push_back[abi:ne200100](&v38, &v31);
    v23 = (v39 - v38) >> 4;
    if (v23 == -2)
    {
      v21 = 0;
    }

    else
    {
      v21 = (12 * v23 + 28);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v24 = MTLCompilerObject::serializeLibraryToArchiveReply(a1, &v37, &v32, 1, 1, v19, v21);
  if (v19)
  {
    LLVMDisposeMemoryBuffer();
  }

  v25 = 1;
LABEL_41:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(v36);
  if (v25)
  {
    if (v24)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
      v26 = logCompileEnd(a1 + 80, v11, "function specialization", &__p, v47);
      if (SHIBYTE(DiagnosticContext) < 0)
      {
        operator delete(__p);
      }

      if ((*(a2 + 5) & 2) != 0)
      {
        LODWORD(__p) = 6;
        *(&__p + 1) = v26;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v38, &__p);
        LODWORD(__p) = 4;
        *(&__p + 1) = v26 - v22;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v38, &__p);
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v28, v38, v39, (v39 - v38) >> 4);
      if (v24[13])
      {
        v27 = v24[12];
        DiagnosticContext = 0;
        __p = 0uLL;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v28, v29, (v29 - v28) >> 4);
        serializeCompileTimeData(v24 + v27, &__p);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      (*(a5 + 16))(a5, 0, v24, v37, 0);
      free(v24);
    }

    else
    {
      (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    }
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void std::vector<CompileTimeData>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

unint64_t logCompileEnd(std::string::size_type a1, uint64_t a2, const std::string::value_type *a3, uint64_t *a4, const std::string::value_type *a5)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v10 = mach_absolute_time();
  v11 = *&gMachTimeToNS;
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
  if (a5 && *a5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, " [FunctionName=");
    v12 = std::string::append(&v26, a5);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v30, "]");
    v15 = v14->__r_.__value_.__r.__words[0];
    v36[0] = v14->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v29 < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *v28 = v36[0];
    *&v28[7] = *(v36 + 7);
    v29 = v16;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, &unk_257A6F51A);
  if (a3 && *a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, " - ");
    v17 = std::string::append(&v30, a3);
    v18 = v17->__r_.__value_.__r.__words[0];
    v36[0] = v17->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v26.__r_.__value_.__r.__words[0] = v18;
    v26.__r_.__value_.__l.__size_ = v36[0];
    *(&v26.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&v26.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  v20 = (v11 * (v10 - a2));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    p_p = &__p;
    if (v29 < 0)
    {
      p_p = __p;
    }

    if (*(a4 + 23) >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    v24 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    LODWORD(v30.__r_.__value_.__l.__data_) = 136447234;
    *(v30.__r_.__value_.__r.__words + 4) = v21;
    WORD2(v30.__r_.__value_.__r.__words[1]) = 2080;
    *(&v30.__r_.__value_.__r.__words[1] + 6) = p_p;
    HIWORD(v30.__r_.__value_.__r.__words[2]) = 2082;
    v31 = v23;
    v32 = 2080;
    v33 = v24;
    v34 = 2048;
    v35 = v20 * 0.000001;
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation SUCCESS (ParentProcessName=%{public}s)%s (TYPE=%{public}s%s): Time %f ms ", &v30, 0x34u);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_257A40BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::checkNoStageInAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v2 - 8 * *(v2 + 8) + 8 * v5);
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
        v9 = v8;
        if (v8 <= 15)
        {
          break;
        }

        if (v8 == 29)
        {
          v10 = "air.patch_control_point_input";
LABEL_18:
          if (memcmp(String, v10, v9))
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (v8 != 16)
        {
          goto LABEL_19;
        }

        if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
        {
          goto LABEL_19;
        }

LABEL_21:
        v12 = *(v6 + 8);
        if (!v12)
        {
LABEL_31:
          MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Function requires stage_in attributes but no descriptor was set.");
          return 0;
        }

        v13 = v6;
        while (1)
        {
          v14 = *(v13 - 8 * *(v6 + 8));
          if (v14)
          {
            if (!*v14)
            {
              v15 = llvm::MDString::getString(v14);
              if (v16 == 14 && *v15 == 0x5F6772612E726961 && *(v15 + 6) == 0x646573756E755F67)
              {
                break;
              }
            }
          }

          v13 += 8;
          if (!--v12)
          {
            goto LABEL_31;
          }
        }

LABEL_19:
        if (++v5 == v3)
        {
          return 1;
        }
      }

      if (v8 == 12)
      {
        v10 = "air.stage_in";
      }

      else
      {
        if (v8 != 15)
        {
          goto LABEL_19;
        }

        v10 = "air.patch_input";
      }

      goto LABEL_18;
    }
  }

  return 1;
}

const char *MTLCompilerObject::validateSerializedVertexDescriptor(MTLCompilerObject *this, const char *a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    MTLCompilerErrorObject::setErrorMessage((this + 64), "Invalid vertex descriptor");
  }

  v5 = *a2;
  if (v5 > a3 || v5 < 8 || (v6 = *(a2 + 1), ((v6 >> 2) & 0x1F0) + *(a2 + 2) > v5) || *(a2 + 3) + ((v6 >> 8) & 0xF8) > v5)
  {
    abort();
  }

  return a2;
}

uint64_t MTLCompilerObject::checkVertexRenderTargetArrayIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 && !a3)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Vertex shader writes render_target_array_index but inputPrimitiveTopology is not specified");
    return 0;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == 0;
  }

  v5 = 1;
  if (!v4 && a3 != 1 && a4 && (*(a1 + 72) & 1) == 0)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v6 = "MTLPrimitiveTopologyClassTriangle";
      }

      else
      {
        if (a3 != 2)
        {
          abort();
        }

        v6 = "MTLPrimitiveTopologyClassLine";
      }
    }

    else
    {
      v6 = "MTLPrimitiveTopologyClassUnspecified";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Vertex shader writes point size but inputPrimitiveTopology is %s", v6);
    return 0;
  }

  return v5;
}

void *createSerializedCompileRequest(size_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sizeOfSerializedCompilerBlocks(a2);
  v7 = v6;
  if (a1)
  {
    *a1 = v6;
  }

  memptr = 0;
  v8 = malloc_type_posix_memalign(&memptr, 8uLL, v6, 0xC81645FuLL);
  result = 0;
  if (!v8)
  {
    bzero(memptr, v7);
    serializeCompilerBlocks(memptr, v7, a2, a3);
    return memptr;
  }

  return result;
}

void MTLCompilerObject::backendCompileStatelessRequest(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v34, 0, 24);
  v34[3] = -1;
  v37 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v33 = 0;
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v25 = 0;
  v26 = 0;
  v4 = **(a2 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLStatelessBackendCompileRequest");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v5 = *(a1 + 80);
    }

    v6 = __p;
    if (DiagnosticContext < 0)
    {
      v6 = __p[0];
    }

    v7 = "dynamic library";
    *buf = 136446722;
    if ((v4 & 0x40000000) == 0)
    {
      v7 = "visible function";
    }

    *v48 = v5;
    *&v48[8] = 2082;
    *&v48[10] = v6;
    *&v48[18] = 2080;
    *&v49 = v7;
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v8 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x259C6A4D0](v22);
  __p[0] = v22;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v22);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v22);
  v9 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v48[4] = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  MTLCompilerObject::getReadParametersFromRequest(v9, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v22, (a2 + 40), &v42, &v42 + 1, 0);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_33:
    ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
    llvm::LLVMContext::~LLVMContext(v22);
    goto LABEL_34;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v34, v22, &v25) & 1) == 0)
  {
    if (v42)
    {
      free(v42);
    }

    goto LABEL_33;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v28, v11, &v25);
  v12 = *(a2 + 32);
  if ((*(v12 + 5) & 2) != 0)
  {
    if ((v26 - v25) >> 4 == -2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 12 * (((v26 - v25) >> 4) + 2) + 4;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v21 = 0;
  if ((*(v12 + 2) & 0x80) != 0)
  {
    v14 = MTLGPUArchiverFromId();
    v20 = v14;
    if (!v14 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v28, *(a2 + 40), v34, &v20, &v21))
    {
      (*(*(a2 + 24) + 16))();
      if (v42)
      {
        free(v42);
      }

      free(v21);
      MTLGPUArchiverDestroy();
      goto LABEL_33;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v34, v28, &v25, v8, v13);
  if (v14)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v22);
  if (v42)
  {
    free(v42);
    v42 = 0uLL;
  }

LABEL_34:
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v34[i], 0);
  }

  v16 = v43;
  *&v43 = 0;
  if (v16)
  {
    free(v16);
  }

  v17 = v37;
  v37 = 0;
  if (v17)
  {
    free(v17);
  }

  v18 = v35;
  *&v35 = 0;
  if (v18)
  {
    free(v18);
  }

  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    free(v19);
  }
}

double MTLCompilerObject::backendCompileModule(void *a1, uint64_t *a2, BackendCompilationOutput *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2[4] + 4);
  v10 = (v9 >> 8) & 1 | *(a2 + 14);
  if ((v9 & 0x200) != 0)
  {
    v10 = v10 | 2;
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a2 + 4);
  v14 = a1[1];
  v15 = *(v14 + 8 * v13);
  if (*(v15 + 154) == 1)
  {
    *(*(v15 + 128) + 16) = a1[4];
  }

  v16 = a2[4];
  v17 = *(v16 + 224);
  if (v17 >> 3 >= 0xFA3)
  {
    *(a3 + 6) = 1;
    v18 = "Cannot compile for given LLVM version";
LABEL_8:
    *(a3 + 2) = v18;
    return result;
  }

  v39 = v11;
  v19 = *a2;
  v20 = *(v16 + 8);
  if (v17)
  {
    v21 = v17 == 32023;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (*(v16 + 48) && *(v16 + 94) != 3)
  {
    if (!MTLDowngradeAIRModule())
    {
      *(a3 + 6) = 1;
      v18 = a1[8];
      goto LABEL_8;
    }

    v40 = a5;
    v13 = *(a2 + 4);
    v14 = a1[1];
    v16 = a2[4];
  }

  else
  {
    v40 = a5;
  }

  v23 = *(v14 + 8 * v13);
  if ((*(v16 + 288) & 1) != 0 && (*(v23 + 152) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerObject::backendCompileModule();
    }

    MTLFunctionTypeToString(a2[5], v46);
    logCompileError((a1 + 10), "Compile request asks for AIRNTInterfaces, but the compilation plugin does not support them.", v46);
    std::string::~string(v46);
    abort();
  }

  if ((*(v16 + 288) & 1) != 0 && *(v23 + 152) && *(v23 + 153) == 1 && *(v16 + 200))
  {
    *(a3 + 64) = 1;
    v24 = (*a2 + *(v16 + 196));
    *&v46[0] = 0;
    BYTE8(v46[0]) = 0;
    v46[1] = 0u;
    v47 = 0u;
    v25 = strncmp(v24 + 4, "AIRP", 4uLL);
    v26 = *v24;
    if (v25)
    {
      v38 = &v24[v26];
    }

    else
    {
      MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(v45, &v24[v26], a2[5]);
      flatbuffers::DetachedBuffer::operator=(v46, v45);
      flatbuffers::DetachedBuffer::~DetachedBuffer(v45);
      v38 = v47 + *v47;
      v16 = a2[4];
      v23 = *(a1[1] + 8 * *(a2 + 4));
    }

    v29 = *(v16 + 208);
    v30 = (*(v23 + 56))(v19 + v20, *(v16 + 12));
    v44 = 0;
    v45[0] = 0;
    v42 = 0;
    v43 = 0;
    __s1 = 0;
    v31 = *(a2[4] + 4);
    v32 = &v43;
    if ((v31 & 0x200) == 0)
    {
      v32 = 0;
    }

    v33 = &v42;
    if ((v31 & 0x200) == 0)
    {
      v33 = 0;
    }

    *(a3 + 6) = MTLCompilerPluginInterface::airntEmitPipelineImage(*(a1[1] + 8 * *(a2 + 4)), v30, a2[6], v17, v10, HIDWORD(v29), v29, v38, v45, &v44, v32, v33, &__s1);
    (*(*(a1[1] + 8 * *(a2 + 4)) + 64))(v30);
    v34 = v44;
    *a3 = v45[0];
    *(a3 + 1) = v34;
    v35 = __s1;
    if (__s1)
    {
      *(a3 + 2) = strdup(__s1);
      free(v35);
    }

    else
    {
      *(a3 + 2) = 0;
    }

    v27 = v40;
    v37 = v42;
    v36 = v43;
    if ((v31 & 0x200) == 0)
    {
      v36 = 0;
      v37 = 0;
    }

    *(a3 + 6) = v36;
    *(a3 + 7) = v37;
    flatbuffers::DetachedBuffer::~DetachedBuffer(v46);
  }

  else
  {
    *(a3 + 6) = MTLCompilerPluginInterface::compilerBuildRequest(v23, (*(v16 + 4) & 0x200000 | v22) != 0, v17, (v19 + v20), *(v16 + 12), v10, a2[6], a3);
    v27 = v40;
  }

  if ((*(a2[4] + 5) & 2) != 0)
  {
    v28 = *&gMachTimeToNS * (mach_absolute_time() - v39);
    *(a3 + 9) = v28;
    LODWORD(v46[0]) = 5;
    *(&v46[0] + 1) = v28;
    std::vector<CompileTimeData>::push_back[abi:ne200100](v27, v46);
  }

  return result;
}

void sub_257A41824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  flatbuffers::DetachedBuffer::~DetachedBuffer(va);
  flatbuffers::DetachedBuffer::~DetachedBuffer((v21 - 136));
  _Unwind_Resume(a1);
}

BOOL MTLCompilerObject::storeToBinaryArchive(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, char **a9)
{
  v66 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  v13 = a2 + a2[49];
  v14 = strncmp(v13 + 4, "AIRP", 4uLL);
  if (v14)
  {
    v60 = 0;
    v58 = 0;
  }

  else
  {
    v15 = &v13[*v13];
    LODWORD(v58) = getRequiredStagesPresentMask(v15);
    v16.i32[0] = v58;
    v17 = vaddlv_u8(vcnt_s8(v16));
    v18 = (v15 - *v15);
    if (*v18 >= 9u && (v19 = v18[4]) != 0)
    {
      HIDWORD(v58) = *(v15 + v19);
    }

    else
    {
      HIDWORD(v58) = 0;
    }

    v60 = v17;
  }

  LLVMCreateMemoryBufferWithMemoryRange();
  v20 = LLVMCreateMemoryBufferWithMemoryRange();
  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v21 = a2[40] + a2[36];
  if (v14)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 == 0;
  }

  v23 = !v22;
  if (!v22)
  {
    MTLCompilerObject::readVisibleFunctions(v20, a2, a3, &v62);
  }

  if (a6 == 2 && a7[5])
  {
    _MTLEncodeLinkingInfo();
  }

  v59 = a6;
  LLVMCreateMemoryBufferWithMemoryRange();
  v25 = a2[46];
  v24 = a2[47];
  v26 = a2[48];
  v61 = MTLGPUArchiverAddUnit();
  if (v14)
  {
    v27 = 0;
  }

  else
  {
    v28 = malloc_type_malloc(0x30uLL, 0x102204031A510F6uLL);
    v27 = v28;
    v29 = a2[69];
    if (v29)
    {
      memcpy(v28, a2 + a2[68], v29);
    }

    else
    {
      *(v28 + 4) = -1;
      *&v30 = -1;
      *(&v30 + 1) = -1;
      *v28 = v30;
      v28[1] = v30;
      *(v28 + 10) = HIDWORD(v58);
      *(v28 + 45) = 0;
      *(v28 + 44) = v60;
    }
  }

  if (!v61)
  {
    v33 = 0;
    v42 = 0;
    goto LABEL_96;
  }

  v31 = a2 + v24;
  v32 = MTLGPUArchiverSetUnitHash();
  if (v14 || !v32 || !v21)
  {
    v33 = 0;
    if (!v32)
    {
      v42 = 0;
      v40 = v27;
      goto LABEL_55;
    }

    v40 = v27;
    v41 = v59;
LABEL_43:
    if (a7[21] && a7[22])
    {
      v42 = MTLGPUArchiverSetUnitReflection() != 0;
      v40 = v27;
      v41 = v59;
      if (v14)
      {
LABEL_55:
        if (!v40)
        {
          goto LABEL_58;
        }

LABEL_92:
        v53 = a7[18];
        a7[18] = v40;
        if (v53)
        {
          free(v53);
        }

        v45 = 48;
        goto LABEL_95;
      }
    }

    else
    {
      v42 = 1;
      if (v14)
      {
        goto LABEL_55;
      }
    }

    if (!v42)
    {
      goto LABEL_55;
    }

    if (v41 <= 2)
    {
      v43 = v58;
      if (v41 != 1)
      {
        if (v41 == 2)
        {
          *(v40 + 3) = v61;
          v44 = *(v40 + 45) | 1;
          goto LABEL_66;
        }

LABEL_78:
        v42 = 0;
        *a9 = strdup("Unsupported function or pipeline type");
        v44 = *(v40 + 45);
        goto LABEL_67;
      }

      *v40 = v61;
    }

    else
    {
      v43 = v58;
      switch(v41)
      {
        case 3:
          *(v40 + 4) = v61;
          break;
        case 7:
          *(v40 + 1) = v61;
          break;
        case 8:
          *(v40 + 2) = v61;
          v44 = *(v40 + 45) | 4;
LABEL_66:
          *(v40 + 45) = v44;
          v42 = 1;
LABEL_67:
          v46 = *(v40 + 44) - 1;
          *(v40 + 44) = v46;
          if (!v42 || v46 || v43 != v44)
          {
            goto LABEL_92;
          }

          *(v40 + 45) = v44 | 0x10;
          if (SHIDWORD(v58) > 2)
          {
            if (HIDWORD(v58) == 3)
            {
              goto LABEL_73;
            }

            if (HIDWORD(v58) != 4)
            {
              goto LABEL_79;
            }

            v48 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
            v47 = v48;
            if ((v43 & 4) != 0)
            {
              v49 = *(v40 + 2);
            }

            else
            {
              v49 = 0;
            }

            *v48 = v49;
            if (v43)
            {
              v52 = *(v40 + 3);
            }

            else
            {
              v52 = 0;
            }

            v48[2] = v52;
            v48[1] = *(v40 + 1);
          }

          else
          {
            if (HIDWORD(v58) != 1)
            {
              if (HIDWORD(v58) == 2)
              {
LABEL_73:
                v47 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
                *v47 = v61;
                goto LABEL_90;
              }

LABEL_79:
              v47 = 0;
              *a9 = strdup("Unsupported function or pipeline type");
              goto LABEL_90;
            }

            v50 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
            v47 = v50;
            if (v43)
            {
              v51 = *(v40 + 3);
            }

            else
            {
              v51 = 0;
            }

            v50[1] = v51;
            *v50 = *v40;
          }

LABEL_90:
          v42 = MTLGPUArchiverAddPipeline() != 0;
          if (v47)
          {
            free(v47);
          }

          goto LABEL_92;
        default:
          goto LABEL_78;
      }
    }

    v44 = *(v40 + 45) | 2;
    goto LABEL_66;
  }

  v33 = malloc_type_malloc(8 * v21, 0x2004093837F09uLL);
  v57 = v23;
  v56 = a7;
  if (!*(v31 + 1) && v25 >= 2)
  {
    v34 = 0;
    v35 = (a2 + v26 + 32);
    v36 = 2;
    do
    {
      v37 = v35[1];
      v65[0] = *v35;
      v65[1] = v37;
      if (std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v62, v65))
      {
        v33[v34++] = LLVMCreateMemoryBufferWithMemoryRange();
      }

      v35 += 2;
      if (*&v31[4 * v36])
      {
        v38 = 1;
      }

      else
      {
        v38 = v36 >= v25;
      }

      ++v36;
    }

    while (!v38);
  }

  v39 = MTLGPUArchiverAddLinkedModules();
  a7 = v56;
  v40 = v27;
  v41 = v59;
  if (v39)
  {
    v23 = v57;
    goto LABEL_43;
  }

  v42 = 0;
  v23 = v57;
  if (v27)
  {
    goto LABEL_92;
  }

LABEL_58:
  v45 = 0;
LABEL_95:
  a7[19] = v45;
LABEL_96:
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  if (v23)
  {
    do
    {
      LLVMDisposeMemoryBuffer();
      ++v33;
      --v21;
    }

    while (v21);
    for (i = v63; i; i = *i)
    {
      free(i[6]);
    }
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&v62);
  return v42;
}

void sub_257A41F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL MTLCompilerObject::serializeBackendCompilationOutput(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v48 = *MEMORY[0x277D85DE8];
  v16 = a3[4];
  if (!*(v16 + 4) && *(v16 + 216) == 1)
  {
    v17 = *(a5 + 24);
LABEL_9:
    if (!v17)
    {
      v19 = 0;
      goto LABEL_20;
    }

    if (v17 == 1)
    {
      v19 = 2;
LABEL_20:
      (*(a3[3] + 16))();
      goto LABEL_36;
    }

LABEL_42:
    abort();
  }

  v17 = *(a5 + 24);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = *a5 == 0;
  }

  if (v18)
  {
    goto LABEL_9;
  }

  memset(v43, 0, sizeof(v43));
  v44 = 1065353216;
  v20 = *(a4 + 8);
  if (v20)
  {
    v21 = *a4;
  }

  else
  {
    v21 = 0;
  }

  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v42, v21, v20, a4 + 160, *(a4 + 128), *(a4 + 136));
  addBlocksForOutput(v43, a4, a5, v42);
  LOBYTE(__p[0]) = 5;
  v45[0] = a8;
  std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(v43, __p, __p, v45);
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  v41 = 0;
  v22 = createSerializedCompileRequest(&v41, v43, v45);
  if (!v22)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to serialize reply data");
    (*(a3[3] + 16))();
    v19 = 0;
    goto LABEL_35;
  }

  v23 = *a3;
  v24 = *(a3[4] + 88);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  v25 = logCompileEnd(a1 + 80, a7, "pipeline", __p, (v23 + v24));
  if (v40 < 0)
  {
    operator delete(__p[0]);
    if (!a8)
    {
      goto LABEL_30;
    }
  }

  else if (!a8)
  {
    goto LABEL_30;
  }

  LODWORD(__p[0]) = 3;
  __p[1] = v25;
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  LODWORD(__p[0]) = 4;
  __p[1] = &v25[-*(a5 + 72)];
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  v26 = *(&v46 + 1);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v36, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 4);
  v27 = v36;
  if (v37 != v36)
  {
    v28 = &v22[v26];
    v29 = (v37 - v36) >> 4;
    *v28 = v29;
    v28[2] = BYTE2(v29);
    v28[3] = BYTE3(v29);
    v29 = v29;
    if (v29)
    {
      v30 = v28 + 4;
      v31 = v27 + 8;
      do
      {
        *v30 = *(v31 - 2);
        v32 = *v31;
        v31 += 2;
        *(v30 + 4) = v32;
        v30 += 12;
        --v29;
      }

      while (v29);
      goto LABEL_29;
    }
  }

  if (v27)
  {
LABEL_29:
    v37 = v27;
    operator delete(v27);
  }

LABEL_30:
  v33 = *(a5 + 24);
  if (v33)
  {
    if (v33 != 1)
    {
      goto LABEL_42;
    }

    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  (*(a3[3] + 16))();
  free(v22);
LABEL_35:
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v42);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v43);
  if (!v22)
  {
    return 0;
  }

LABEL_36:
  if (*(a5 + 64) == 1)
  {
    BackendCompilationOutput::free(a5);
  }

  else
  {
    v34 = *(*(a1 + 8) + 8 * a2);
    if (*(v34 + 155) == 1)
    {
      (*(v34 + 16))(*(v34 + 128));
      *(v34 + 155) = 0;
    }
  }

  return v19 == 0;
}

void sub_257A422D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, char a22)
{
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(&a20);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runFragmentPasses(uint64_t a1, void *a2)
{
  v2 = a2[4];
  if (!*(v2 + 28))
  {
    return 1;
  }

  v4 = *a2 + *(v2 + 24);
  v5 = ((*(v4 + 8) & 0x20000000) != 0) | *(a1 + 72);
  *(a1 + 72) = v5;
  v6 = (a1 + 64);
  v13 = (a1 + 64);
  v14 = v5;
  v7 = a2[6];
  v8 = 16;
  if (*(v4 + 8) < 0)
  {
    v8 = 24;
  }

  if (MTLCheckPixelFormatValidPass::checkPixelFormatValid(&v13, v7, v4, (v4 + v8)))
  {
    return 1;
  }

  v11 = a2[6];
  if (v11)
  {
    v12 = MEMORY[0x259C6AE50](v11, v9);
    MEMORY[0x259C6B890](v12, 0x10B2C407FF26C1CLL);
  }

  a2[6] = 0;
  (*(a2[3] + 16))(a2[3], 2 * (*v6 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::runVertexPasses(char **a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v7 = *a2;
  v8 = a2[4];
  v9 = v8[7];
  MTLCompilerObject::getFragmentVaryingsInfo(a1, (v8[1] >> 3) & 1, (*a2 + v8[4]), v8[5], a4);
  if (v9 < 0xC)
  {
    return 1;
  }

  v10 = v7 + *(a2[4] + 24);
  v11 = a2[6];
  v37 = "air.vertex";
  v38 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v11, &v37);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v14 = *(Operand - 8 * *(Operand + 8) + 8);
  if (v14)
  {
    v15 = *(v14 + 8);
    v16 = *(v14 + 8) == 0;
    v19 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v19;
    if (v15)
    {
      v36 = v17;
      v20 = 0;
      v21 = *(Operand - 8 * *(Operand + 8) + 8);
      do
      {
        v22 = *(v21 - 8 * *(v14 + 8));
        String = llvm::MDString::getString(*(v22 - 8 * *(v22 + 8)));
        if (v24 == 14)
        {
          v29 = *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69;
          v20 |= v29;
        }

        else if (v24 == 29)
        {
          v25 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
          v26 = v25 && String[2] == 0x5F79617272615F74;
          if (v26 && *(String + 21) == 0x7865646E695F7961)
          {
            *(a4 + 22) = dataTypeFromMetadata(1u, v22);
          }
        }

        v21 += 8;
        --v15;
      }

      while (v15);
      v16 = 0;
      v17 = v36;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v30 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v30;
    v16 = 1;
  }

  if (MTLCompilerObject::checkVertexRenderTargetArrayIndex(a1, *(a4 + 22), (v17 >> 5) & 3, v20 & 1))
  {
    result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
    if (*(a2[4] + 4) & 0x10) != 0 || (a1[9] & 1) != 0 || ((v16 ^ *v18))
    {
      return 1;
    }

    v33 = a1 + 8;
    if (*v18)
    {
      v34 = "true";
    }

    else
    {
      v34 = "false";
    }

    v35 = "not void";
    if (v16)
    {
      v35 = "void";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v33, "RasterizationEnabled is %s but the vertex shader's return type is %s", v34, v35);
  }

  else
  {
    if (a2[6])
    {
      v32 = MEMORY[0x259C6AE50]();
      MEMORY[0x259C6B890](v32, 0x10B2C407FF26C1CLL);
    }

    a2[6] = 0;
    v33 = a1 + 8;
  }

  (*(a2[3] + 16))(a2[3], 2 * (*v33 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(_BYTE *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 28);
  if (v4 < 0xC)
  {
    return 1;
  }

  v8 = (*a2 + *(v3 + 24));
  v9 = *(a2 + 48);
  v34 = "air.vertex";
  v36 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v9, &v34);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = (~*(*(a2 + 32) + 4) & 0x84) != 0 || *a3 == a3[1];
  v13 = !v12;
  v14 = *(v8 + 2);
  if ((v14 & 4) == 0 && !v13)
  {
    return 1;
  }

  if ((v14 & 4) != 0)
  {
    v15 = 10;
    if ((v14 & 0x100000) == 0)
    {
      v15 = 6;
    }

    v16 = v4 - v15 * 2;
    v17 = &v8[v15];
    if ((v14 & 2) != 0)
    {
      MTLCompilerObject::validateSerializedVertexDescriptor(a1, &v8[v15], v4 - v15 * 2);
      v19 = *v17;
      v18 = v17;
      v17 = (v17 + v19);
      v16 -= v19;
    }

    else
    {
      if ((MTLCompilerObject::checkNoStageInAttributes(a1, Operand) & 1) == 0)
      {
        v32 = *(a2 + 24);
        v33 = *(a1 + 8);
        goto LABEL_38;
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = v4;
    v17 = v8;
  }

  v20 = *(v8 + 2);
  if ((v20 & 0x80) != 0)
  {
    if (v16 <= 1 || (v21 = 2 * *v17 + 2, v16 < v21) || ((v22 = *v8, v23 = *(v8 + 1), v22) ? (v24 = v22 - v4) : (v24 = 0), (v25 = v24 + v16, v23) ? (v26 = v4 - v23) : (v26 = 0), v25 != v26 + v21))
    {
      abort();
    }

    goto LABEL_30;
  }

  if ((v13 | (v20 >> 1)))
  {
    v17 = 0;
LABEL_30:
    v27 = a1[72];
    v28 = (a1 + 64);
    v34 = v28;
    v35 = v27;
    v29 = MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v34, *(a2 + 48), (v20 >> 2) & 1, v18, v17, ((v20 & 1) == 0) & v27, 1u, (v20 >> 8) & 3, (~v20 & 0xC) == 0, (~v20 & 0x14) == 0, *(*(a2 + 32) + 4), a3);
    if (v29)
    {
      *(a2 + 48) = v29;
      return 1;
    }

    if (*(a2 + 48))
    {
      v31 = MEMORY[0x259C6AE50]();
      MEMORY[0x259C6B890](v31, 0x10B2C407FF26C1CLL);
    }

    *(a2 + 48) = 0;
    v32 = *(a2 + 24);
    v33 = *v28;
LABEL_38:
    (*(v32 + 16))(v32, 2 * (v33 != 0), 0, 0);
    return 0;
  }

  return 1;
}

void MTLCompilerObject::addPostVertexDumpingToModule(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2[7] >= 0xCu)
  {
    v3 = v2[1];
    if ((v3 & 0x10) != 0)
    {
      v4 = *(*a2 + v2[6] + 8);
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      v5 = (result + 64);
      v6 = 0;
      *(a2 + 48) = MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v5, *(a2 + 48), (v4 >> 11), 0, &v8, v7, (v3 >> 10) & 1);
      v5 = v7;
      std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }
}

uint64_t MTLCompilerObject::runLinkingPasses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 40);
  if (v7 == 1)
  {
    result = MTLCompilerObject::runVertexLinkingPass(a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    v7 = *(a2 + 40);
  }

  if (v7 == 2)
  {
    MTLCompilerObject::runFragmentLinkingPass(a1, a2, a3);
  }

  return 1;
}

uint64_t MTLCompilerObject::runVertexLinkingPass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  v5 = v4[1];
  if ((v5 & 4) == 0)
  {
    return 1;
  }

  v8 = (*(*a2 + v4[6] + 8) >> 5) & 3;
  v9 = (a1 + 64);
  if ((v5 & 8) == 0)
  {
    v11 = (a1 + 64);
    v12 = 0;
    if ((MTLVertexOutputLinkingPass::vertexOutputLinking(&v11, *(a2 + 48), a4, a4 + 48, *(a4 + 72), v8, *(a4 + 76), *(a4 + 80), v4[10], v4[11], *(a4 + 88), *(a4 + 84)) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v11 = (a1 + 64);
  v12 = 0;
  if (MTLVertexOutputPackingPass::vertexOutputPacking(&v11, *(a2 + 48), a4, (a4 + 24), a4 + 48, *(a4 + 72), v8, *(a4 + 76), *(a4 + 80), v4[10], v4[11], *(a4 + 88), *(a4 + 84)))
  {
    return 1;
  }

LABEL_7:
  if (*(a2 + 48))
  {
    v10 = MEMORY[0x259C6AE50]();
    MEMORY[0x259C6B890](v10, 0x10B2C407FF26C1CLL);
  }

  *(a2 + 48) = 0;
  (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*v9 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::runFragmentLinkingPass(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 32) + 4);
  if ((v3 & 4) != 0)
  {
    v5 = result + 64;
    v6 = 0;
    v4 = *(a2 + 48);
    if ((v3 & 8) != 0)
    {
      v8[0] = &unk_2868ECDF0;
      v8[1] = a3;
      v8[3] = v8;
      MTLFragmentInputPackingPass::fragmentInputPacking(&v5, v4, v8);
      return std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v8);
    }

    else
    {
      v7[0] = &unk_2868ECE38;
      v7[1] = a3;
      v7[3] = v7;
      MTLFragmentInputLinkingPass::fragmentInputLinking(&v5, v4, v7);
      return std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v7);
    }
  }

  return result;
}

void sub_257A42C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runKernelPasses(MTLCompilerObject *a1, uint64_t a2)
{
  if (*(*(a2 + 32) + 28) < 0xCu)
  {
    return 1;
  }

  result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(MTLCompilerObject *this, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a2 + *(v4 + 24);
  v6 = *(v5 + 8);
  if (v6)
  {
    if ((v6 & 0x20) != 0)
    {
      v10 = 20;
    }

    else
    {
      v10 = 12;
    }

    MTLCompilerObject::validateSerializedVertexDescriptor(this, (v5 + v10), *(v4 + 28));
    if ((*(v5 + 8) & 4) == 0)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v11 = *(this + 72);
      v12 = (this + 64);
      v19 = v12;
      v20 = v11;
      if (!MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v19, *(a2 + 48), 1, (v5 + v10), 0, 0, 0, 0, v11, v11, *(*(a2 + 32) + 4), &__p))
      {
        if (*(a2 + 48))
        {
          v14 = MEMORY[0x259C6AE50]();
          MEMORY[0x259C6B890](v14, 0x10B2C407FF26C1CLL);
        }

        *(a2 + 48) = 0;
        (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*v12 != 0), 0, 0);
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        return 0;
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    return 1;
  }

  if ((v6 & 4) != 0)
  {
    return 1;
  }

  v7 = *(a2 + 48);
  __p = "air.kernel";
  v18 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v7, &__p);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (MTLCompilerObject::checkNoStageInAttributes(this, Operand))
  {
    return 1;
  }

  (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(this + 8) != 0), 0, 0);
  return 0;
}

void sub_257A42E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::generateReflection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 32) + 4);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if (*(a2 + 40) == 1)
  {
    v14 = (a1 + 64);
    v15 = 0;
    MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v14, *(a2 + 48), -1, 1, &v17, v16, (v4 >> 10) & 1);
    v4 = *(*(a2 + 32) + 4);
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  v14 = (a1 + 64);
  v15 = 0;
  ReflectionData = MTLGenerateReflectionDataPass::generateReflectionData(&v14, *(a2 + 48), v4, (a3 + 8), v7, v16, *(a3 + 128), *(a3 + 136), (a3 + 24));
  v9 = *a3;
  *a3 = ReflectionData;
  if (v9)
  {
    free(v9);
  }

  v14 = v16;
  std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = *(a2 + 32);
  if ((*(v10 + 4) & 2) == 0)
  {
    return 0;
  }

  if ((*(v10 + 2) & 0x80) != 0)
  {
    if (!*(a3 + 168) && (*(a1 + 72) & 1) == 0)
    {
      v12 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 168), v12);
    }

    if (!*(a3 + 176) && (*(a1 + 72) & 1) == 0)
    {
      v13 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 176), v13);
    }
  }

  MTLCompilerObject::patchReflection(a1, a2, a3);
  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v16, *a3, *(a3 + 8), a3 + 160, 0, 0);
  (*(*(a2 + 24) + 16))();
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v16);
  return 1;
}

void sub_257A43058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(va);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::generateAIRReflectionType(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(result + 72) & 1) == 0)
  {
    v7 = MTLWriteAIRReflectionToMemoryBuffer();

    return std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 8 * a4 + 160), v7);
  }

  return result;
}

void MTLCompilerObject::patchReflection(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 32) + 4))
  {
    v3 = result + 64;
    v4 = 0;
    MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(&v3, *(a2 + 48), *a3, *(a3 + 24));
  }
}

void *MTLCompilerObject::deserializePluginData(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 2)
    {
LABEL_26:

      return deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(a2, a3);
    }

    if ((v5 - 7) < 2)
    {
      v6 = a2[4];
      v7 = (*a2 + *(v6 + 24));
      if (*(v6 + 28) >= 0xCu)
      {
        v8 = *v7;
        if (v8)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v8]);
          *(a3 + 112) = result;
        }

        v9 = *(v7 + 1);
        if (v9)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v9]);
          *(a3 + 120) = result;
        }
      }

      v10 = *(v4 + 72);
      v11 = (v7[8] >> 3) & 1;
LABEL_35:
      *(v4 + 72) = v11 | v10;
      return result;
    }

LABEL_25:
    if ((*(a2[4] + 3) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    v16 = a2[4];
    v17 = (*a2 + *(v16 + 24));
    if (*(v16 + 28) >= 0xCu)
    {
      v18 = *v17;
      if (v18)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v18]);
        *(a3 + 112) = result;
      }

      v19 = *(v17 + 1);
      if (v19)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v19]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v17 + 2) >> 19) & 1;
    goto LABEL_35;
  }

  if (v5 == 2)
  {
    v20 = a2[4];
    v21 = (*a2 + *(v20 + 24));
    if (*(v20 + 28) >= 0x10u)
    {
      v22 = *v21;
      if (v22)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v22]);
        *(a3 + 112) = result;
      }

      v23 = *(v21 + 1);
      if (v23)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v23]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v21 + 2) >> 29) & 1;
    goto LABEL_35;
  }

  if (v5 != 3)
  {
    goto LABEL_25;
  }

  v12 = a2[4];
  v13 = (*a2 + *(v12 + 24));
  if (*(v12 + 28) >= 0xCu)
  {
    v14 = *v13;
    if (v14)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v14]);
      *(a3 + 112) = result;
    }

    v15 = *(v13 + 1);
    if (v15)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v15]);
      *(a3 + 120) = result;
    }
  }

  *(v4 + 72) |= (v13[8] & 8) != 0;
  *(v4 + 73) |= (v13[8] & 0x10) != 0;
  return result;
}

void *deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(void *result, uint64_t a2)
{
  v2 = result[4];
  if (*(v2 + 28) >= 0x2Cu)
  {
    v4 = (*result + *(v2 + 24));
    v5 = *v4;
    if (v5)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v5]);
      *(a2 + 112) = result;
    }

    v6 = *(v4 + 1);
    if (v6)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v6]);
      *(a2 + 120) = result;
    }
  }

  return result;
}

uint64_t MTLCompilerObject::runFWPassesForFunctionType(char **a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 4)
    {
      return 1;
    }

    return (*(a2[4] + 3) >> 6) & 1;
  }

  switch(v5)
  {
    case 1:

      return MTLCompilerObject::runVertexPasses(a1, a2, a3, a4);
    case 2:

      return MTLCompilerObject::runFragmentPasses(a1, a2);
    case 3:
      if (*(a2[4] + 28) < 0xCu)
      {
        return 1;
      }

      result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (result)
      {
        return 1;
      }

      break;
    default:
      return (*(a2[4] + 3) >> 6) & 1;
  }

  return result;
}

void MTLCompilerObject::runDebugInstrumentationPass(MTLCompilerObject *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(a2[4] + 5) & 0x10) != 0 && [*(a3 + 112) objectForKeyedSubscript:@"MTLBoundsCheck::Options"])
  {
    v7 = mach_absolute_time();
    v8 = a2[5];
    if (v8 == 3)
    {
      v7 = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_23;
      }

      *__p = 0u;
      v17 = 0u;
      *v15 = 0u;
      v18 = v19;
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      MTLCompilerObject::getFragmentVaryingsInfo(a1, (*(a2[4] + 4) >> 3) & 1, (*a2 + *(a2[4] + 16)), *(a2[4] + 20), v15);
      if (MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, v15))
      {
        MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
        std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v18, v19[0]);
        if (__p[1])
        {
          *&v17 = __p[1];
          operator delete(__p[1]);
        }

        v7 = v15[0];
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }

LABEL_23:
        MTLCompilerObject::addDebugInstrumentationToModule(v7, a2, a3);
      }

      std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v18, v19[0]);
      if (__p[1])
      {
        *&v17 = __p[1];
        operator delete(__p[1]);
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }
    }
  }

  else
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v10 = Function;
      v14[0] = *(Function + 8);
      v14[1] = 0;
      llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(v15, v14);
      v11 = v15[0];
      if (LODWORD(v15[1]))
      {
        v12 = 8 * LODWORD(v15[1]);
        do
        {
          v13 = *v11;
          if (*v11 && *(v13 + 16) == 84)
          {
            llvm::Instruction::eraseFromParent(v13);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
        v11 = v15[0];
      }

      if (v11 != __p)
      {
        free(v11);
      }

      if (!*(v10 + 1))
      {
        llvm::Function::eraseFromParent(v10);
      }
    }
  }
}

void sub_257A43734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerObject::FragmentVaryingsInfo::~FragmentVaryingsInfo(char **this)
{
  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void MTLCompilerObject::addDebugInstrumentationToModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(byte_28153FBE0, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  if ((atomic_load_explicit(byte_28153FBE8, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  v5 = [objc_msgSend(*(a3 + 112) objectForKeyedSubscript:{@"MTLBoundsCheck::Options", "bytes"}];
  strlen((*(a2 + 32) + *(*(a2 + 32) + 280)));
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() == -1)
    {
      goto LABEL_10;
    }

    v6 = *(v5 + 20) & 0xFFFFFFE9FEDFFBFELL | 1;
  }

  else
  {
    v6 = *(v5 + 20) | 0x1000000000;
  }

  *(v5 + 20) = v6;
LABEL_10:
  if (MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions != *v5 || *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 1) != *(v5 + 8) || qword_27F8ECDB0 != *(v5 + 16) || dword_27F8ECDB8 != *(v5 + 24))
  {
    v10 = *v5;
    *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 12) = *(v5 + 12);
    MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions = v10;
  }

  MTLUpdateBoundsRunPipeline(a2, &MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions, &xmmword_28153FC68, &qword_28153FF60, *(a3 + 120));
}

void sub_257A43DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::unique_ptr<llvm::Module>::reset[abi:ne200100](va, 0);
  llvm::SMDiagnostic::~SMDiagnostic(va1);
  _Unwind_Resume(a1);
}

BOOL MTLCompilerObject::loadModule(uint64_t a1, void *a2, uint64_t a3, llvm::LLVMContext *a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v7 = a2[6];
  v8 = a2[4];
  if ((*(v8 + 3) & 4) != 0)
  {
    v7 = MTLCompilerObject::invokeFunctionLoader(a1, v8, a2[1], a4, v7, *(a3 + 128), *(a3 + 136), a2[3]);
    *a2[4] &= ~0x4000000u;
  }

  v4 = v7 != 0;
  if (!v7)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  a2[6] = v7;
  return v4;
}

BOOL MTLCompilerObject::lowerModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v9 = *(a2 + 48);
  Instance = MTLCompilerSharedMemoryInterface::getInstance(a1);
  MTLCompilerSharedMemoryInterface::setLoweringRuntimes(Instance, (a1 + 32), a2);
  v11 = *(a2 + 32);
  if ((*(v11 + 3) & 2) != 0 && v9)
  {
    v9 = MTLCompilerObject::invokeLowerModule(a1, v11, a4, v9, *(a2 + 40), *(a2 + 24));
    **(a2 + 32) &= ~0x2000000u;
  }

  v4 = v9 != 0;
  if (!v9)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  *(a2 + 48) = v9;
  return v4;
}

uint64_t MTLCompilerObject::AIRNTGetVertexFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x2Fu && (v7 = v6[23]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x2Du && *(a2 + v5 + 44))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 44) + *(a2 + *(a2 + v5 + 44))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v70 = (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v70, &v70, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v11 = Air::CloneVertexDescriptor<Air::VertexDescriptor>(a1, (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6))));
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0x1Bu)
  {
    v17 = v16[13];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, v12, 1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 16;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v20, 16);
  v21 = (a2 - *a2);
  if (*v21 >= 5u && (v22 = v21[2]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v23, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 46, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 44, v9);
  }

  v24 = (a2 - *a2);
  if (*v24 >= 0x29u && (v25 = v24[20]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 40, v26, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x2Bu && (v28 = v27[21]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x27u && (v31 = v30[19]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x25u && (v34 = v33[18]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x23u && (v37 = v36[17]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x21u && (v40 = v39[16]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x1Du && (v43 = v42[14]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v44, 0);
  v45 = (a2 - *a2);
  if (*v45 >= 0x19u && (v46 = v45[12]) != 0)
  {
    v47 = *(a2 + v46);
    if (v47 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v47 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v47, 0);
  v48 = (a2 - *a2);
  if (*v48 >= 0x17u && (v49 = v48[11]) != 0)
  {
    v50 = *(a2 + v49);
    if (v50 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v50 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v50, 0);
  v51 = (a2 - *a2);
  if (*v51 >= 0x15u && (v52 = v51[10]) != 0)
  {
    v53 = *(a2 + v52);
    if (v53 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v53 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v53, 0);
  v54 = (a2 - *a2);
  if (*v54 >= 0x13u && (v55 = v54[9]) != 0)
  {
    v56 = *(a2 + v55);
    if (v56 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v56 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v56, 0);
  v57 = (a2 - *a2);
  if (*v57 >= 0x11u && (v58 = v57[8]) != 0)
  {
    v59 = *(a2 + v58);
    if (v59 >= 2)
    {
LABEL_100:
      abort();
    }
  }

  else
  {
    v59 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v59, 0);
  v60 = (a2 - *a2);
  v62 = *v60 >= 0xFu && (v61 = v60[7]) != 0 && *(a2 + v61) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v62, 0);
  v63 = (a2 - *a2);
  if (*v63 >= 0xBu && (v64 = v63[5]) != 0)
  {
    v65 = *(a2 + v64);
    if (v65 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v65 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v65, 0);
  v66 = (a2 - *a2);
  v68 = *v66 < 9u || (v67 = v66[4]) == 0 || *(a2 + v67) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v68, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}