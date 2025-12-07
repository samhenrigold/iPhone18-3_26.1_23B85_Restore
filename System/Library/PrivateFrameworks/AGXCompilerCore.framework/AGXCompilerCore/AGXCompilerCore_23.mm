void std::__hash_table<std::__hash_value_type<std::string,std::array<int,3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::array<int,3ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::array<int,3ul>> const&>(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1);
  if (!*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1))
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1))
    {
      v10 = v5 % *(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1);
    }
  }

  else
  {
    v10 = (*(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 1) - 1) & v5;
  }

  v11 = *(AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }
}

uint64_t *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 57, 8);
  v11 = v10;
  v12 = v10 + 56;
  if (a3)
  {
    memcpy((v10 + 56), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::StringMap<std::string,llvm::MallocAllocator>::StringMap(uint64_t a1, uint64_t a2)
{
  v4 = llvm::StringMapImpl::StringMapImpl(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8);

  llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(v4, a1, a1 + 40 * a2);
}

uint64_t *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

unsigned __int8 *AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(llvm::ConstantInt **a1, llvm::Value *a2, llvm::Value *a3, int a4)
{
  if (!a2)
  {
    return llvm::ConstantInt::get();
  }

  v23 = 257;
  v8 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v8, v22);
  v23 = 257;
  v10 = llvm::ConstantInt::get();
  v11 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v10, v22);
  if (a4 == 16)
  {
    v23 = 257;
    v12 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateShl((a1 + 1), Element, v12, v22);
  }

  v13 = llvm::ConstantInt::get();
  v23 = 257;
  llvm::IRBuilderBase::CreateURem(a1 + 1, v11, v13, v22);
  if (*(*a2 + 32) > 1u)
  {
    v18 = llvm::ConstantInt::get();
    v23 = 257;
    llvm::IRBuilderBase::CreateUDiv((a1 + 1), v11, v18, v22);
    v19 = llvm::VectorType::get();
    v23 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a2, v19, v22);
    v23 = 257;
    v21 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v21, v22);
  }

  else
  {
    v23 = 257;
    v14 = llvm::ConstantInt::get();
    v15 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a2, v14, v22);
    v16 = a1[24];
    v23 = 257;
    return llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v15, v16, v22);
  }
}

unsigned int *AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_2::operator()(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = *MEMORY[0x277D85DE8];
  __src[0] = llvm::ConstantInt::get();
  __src[1] = llvm::ConstantInt::get();
  __src[2] = llvm::ConstantInt::get();
  __src[3] = llvm::ConstantInt::get();
  __src[4] = **(a2 + 56);
  __src[5] = llvm::ConstantInt::get();
  __src[6] = **(a2 + 72);
  __src[7] = llvm::ConstantInt::get();
  __src[8] = **(a2 + 88);
  __src[9] = llvm::ConstantInt::get();
  *a1 = a1 + 16;
  *(a1 + 8) = 0xC00000000;
  result = llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(a1, __src, &v8);
  if (**(a2 + 104) == 1)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, **a2);
    return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, **(a2 + 8));
  }

  return result;
}

void llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(llvm::StringMapImpl *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v17 = v3;
    v18 = v4;
    v7 = a2 + 16;
    do
    {
      v15 = *(v7 - 16);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        __p = *v7;
      }

      v8 = llvm::StringMapImpl::LookupBucketFor();
      v9 = *a1;
      v10 = *(*a1 + 8 * v8);
      if (v10)
      {
        if (v10 != -8)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_14;
        }

        --*(a1 + 4);
      }

      v11 = MEMORY[0x20F330650](*(&v15 + 1) + 33, 8);
      v12 = v11;
      v13 = v11 + 32;
      if (*(&v15 + 1))
      {
        memcpy((v11 + 32), v15, *(&v15 + 1));
      }

      *(v13 + *(&v15 + 1)) = 0;
      *v12 = *(&v15 + 1);
      *(v12 + 8) = __p;
      memset(&__p, 0, sizeof(__p));
      *(v9 + 8 * v8) = v12;
      ++*(a1 + 3);
      llvm::StringMapImpl::RehashTable(a1);
LABEL_14:
      v14 = v7 - 16;
      v7 += 40;
    }

    while (v14 + 40 != a3);
  }
}

uint64_t std::unordered_map<std::string,std::array<int,3ul>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AGCSimdMatrix::buildStore(unsigned int **a1, uint64_t a2)
{
  v4 = **(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v5 = *(a2 - 32);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 72))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v8 = v7;
  v9 = *(*(**(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64) + 24) + 8) >> 8;
  Alignment = AGCSimdMatrix::getAlignment(Name, v7);
  AGCSimdMatrix::getLoadStoreSuffix(&__p, Name, v8, v9, Alignment);
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v4);
  llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF)), AllocaInEntryBlock, 0, 0);
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

  AGCSimdMatrix::createLoadStoreReplacementCall(a1, a2, AllocaInEntryBlock, p_p, size, 1);
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCSimdMatrix::getAlignment(uint64_t a1, unint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  __p = "i8";
  v38 = 2;
  v39[0] = 8;
  v41 = "i16";
  v42 = 3;
  v43 = 16;
  v44 = "i32";
  v45 = 3;
  v46 = 32;
  v47 = "i64";
  v48 = 3;
  v49 = 64;
  v50 = "f16";
  v51 = 3;
  v52 = 16;
  v53 = "bf16";
  v54 = 4;
  v55 = 16;
  v56 = "f32";
  v57 = 3;
  v58 = 32;
  v59 = "f8e4m3";
  v60 = 6;
  v61 = 8;
  v62 = "f8e4m3fn";
  v63 = 8;
  v64 = 8;
  v65 = "f8e5m2";
  v66 = 6;
  v67 = 8;
  llvm::StringMapImpl::StringMapImpl(&v68);
  for (i = 0; i != 120; i += 12)
  {
    v5 = *(&__p + i * 2);
    v4 = *(&__p + i * 2 + 8);
    v6 = v39[i];
    v7 = llvm::StringMapImpl::LookupBucketFor();
    v8 = v68;
    v9 = v68[v7];
    if (v9)
    {
      if (v9 != -8)
      {
        continue;
      }

      --v71;
    }

    v10 = MEMORY[0x20F330650](v4 + 17, 8);
    v11 = v10;
    v12 = v10 + 16;
    if (v4)
    {
      memcpy((v10 + 16), v5, v4);
    }

    *(v12 + v4) = 0;
    *v11 = v4;
    *(v11 + 8) = v6;
    v8[v7] = v11;
    ++v70;
    llvm::StringMapImpl::RehashTable(&v68);
  }

  v13 = a2;
  while (v13)
  {
    v14 = v13 - 1;
    v15 = *(a1 - 1 + v13--);
    if (v15 == 46)
    {
      goto LABEL_14;
    }
  }

  v14 = -1;
LABEL_14:
  v16 = v14 + 3;
  if (a2 < v14 + 3)
  {
    v16 = a2;
  }

  v36[0] = a1 + v16;
  v36[1] = a2 - v16;
  llvm::StringRef::str(&__p, v36);
  if (v40 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v40 >= 0)
  {
    v18 = v40;
  }

  else
  {
    v18 = v38;
  }

  v19 = llvm::StringMapImpl::LookupBucketFor();
  v20 = v68;
  v21 = v19;
  v22 = v68[v19];
  if (v22 == -8)
  {
    --v71;
  }

  else if (v22)
  {
    goto LABEL_35;
  }

  v23 = MEMORY[0x20F330650](v18 + 17, 8);
  v24 = v23;
  v25 = v23 + 16;
  if (v18)
  {
    memcpy((v23 + 16), p_p, v18);
  }

  *(v25 + v18) = 0;
  *v24 = v18;
  *(v24 + 8) = 0;
  v20[v21] = v24;
  ++v70;
  v26 = llvm::StringMapImpl::RehashTable(&v68);
  for (j = &v68[v26]; ; ++j)
  {
    v22 = *j;
    if (*j && v22 != -8)
    {
      break;
    }
  }

LABEL_35:
  v29 = *(v22 + 8);
  if (v40 < 0)
  {
    operator delete(__p);
  }

  if (v70 && v69)
  {
    v30 = 0;
    v31 = 8 * v69;
    do
    {
      v32 = v68[v30 / 8];
      if (v32 != -8 && v32 != 0)
      {
        llvm::deallocate_buffer(*v32, v32, *v32 + 17);
      }

      v30 += 8;
    }

    while (v31 != v30);
  }

  free(v68);
  return v29;
}

void AGCSimdMatrix::getLoadStoreSuffix(std::string *a1, uint64_t a2, _BYTE *a3, unint64_t a4, int a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3 < 0x16)
  {
    v11 = 0;
LABEL_5:
    if (a3 <= v11)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = memchr((a2 + 21), 95, (a3 - 21));
  if (v10)
  {
    v11 = v10 - a2 + 1;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_8:
  v12 = memchr((a2 + v11), 46, &a3[-v11]);
  if (v12)
  {
    v13 = v12 - a2;
    goto LABEL_11;
  }

LABEL_10:
  v13 = -1;
LABEL_11:
  if (a3 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = a3;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (a3 >= v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = a3;
  }

  v17 = &v14[a2];
  v18 = v16 - v14;
  v49.__r_.__value_.__r.__words[0] = &v14[a2];
  v49.__r_.__value_.__l.__size_ = v16 - v14;
  v50[0] = a2;
  v50[1] = a3;
  if (llvm::StringRef::find() != -1)
  {
    if (v18 >= v18 - 5)
    {
      v18 -= 5;
    }

    v49.__r_.__value_.__r.__words[0] = v17;
    v49.__r_.__value_.__l.__size_ = v18;
  }

  llvm::StringRef::str(&__p, &v49);
  if (v18 == 5)
  {
    if (*v17 != 1919906931 || *(v17 + 4) != 101)
    {
      goto LABEL_46;
    }
  }

  else if (v18 != 4 || *v17 != 1684107116)
  {
    goto LABEL_46;
  }

  v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v22 = v50;
  std::string::basic_string[abi:nn200100](v50, size + 20);
  if (v51[0] < 0)
  {
    v22 = v50[0];
  }

  if (size)
  {
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(v22, p_p, size);
  }

  strcpy(v22 + size, "_bounds_checked_none");
  if (v20 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&__p.__r_.__value_.__l.__data_ = *v50;
  __p.__r_.__value_.__r.__words[2] = v51[0];
LABEL_46:
  *a1 = __p;
  v50[0] = a2;
  v50[1] = a3;
  if (llvm::StringRef::find() == -1)
  {
    std::to_string(&__p, a5);
    v24 = std::string::insert(&__p, 0, "_sz");
    v25 = v24->__r_.__value_.__r.__words[2];
    *v50 = *&v24->__r_.__value_.__l.__data_;
    v51[0] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v51[0] >= 0)
    {
      v26 = v50;
    }

    else
    {
      v26 = v50[0];
    }

    if (v51[0] >= 0)
    {
      v27 = HIBYTE(v51[0]);
    }

    else
    {
      v27 = v50[1];
    }

    std::string::append(a1, v26, v27);
    if (SHIBYTE(v51[0]) < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::append(a1, "_bfloat");
  }

  v50[0] = "p1";
  v50[1] = 2;
  std::string::basic_string[abi:nn200100]<0>(v51, "device");
  v51[3] = "p3";
  v51[4] = 2;
  std::string::basic_string[abi:nn200100]<0>(v52, "threadgroup");
  llvm::StringMapImpl::StringMapImpl(&__p);
  llvm::StringMap<std::string,llvm::MallocAllocator>::insert<std::pair<llvm::StringRef,std::string> const*>(&__p, v50, &__p);
  for (i = 0; i != -10; i -= 5)
  {
    if (SHIBYTE(v52[i + 2]) < 0)
    {
      operator delete(v52[i]);
    }
  }

  v29 = a3;
  do
  {
    v30 = v29;
    if (!v29)
    {
      break;
    }

    --v29;
  }

  while (*(a2 - 1 + v30) != 46);
  if (a3 < v30)
  {
    v30 = a3;
  }

  v31 = a2 + v30;
  v32 = &a3[-v30];
  if (v32 >= 2)
  {
    v32 = 2;
  }

  v49.__r_.__value_.__r.__words[0] = v31;
  v49.__r_.__value_.__l.__size_ = v32;
  llvm::StringRef::str(v50, &v49);
  if (v51[0] >= 0)
  {
    v33 = v50;
  }

  else
  {
    v33 = v50[0];
  }

  if (v51[0] >= 0)
  {
    v34 = SHIBYTE(v51[0]);
  }

  else
  {
    v34 = v50[1];
  }

  v35 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&__p, v33, v34);
  v39 = *v35;
  if (*(*v35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(v39 + 8), *(v39 + 16));
  }

  else
  {
    v40 = *(v39 + 8);
    v49.__r_.__value_.__r.__words[2] = *(v39 + 24);
    *&v49.__r_.__value_.__l.__data_ = v40;
  }

  if (SHIBYTE(v51[0]) < 0)
  {
    operator delete(v50[0]);
  }

  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(&__p, v36, v37, v38);
  v41 = std::string::insert(&v49, 0, "_");
  v42 = v41->__r_.__value_.__r.__words[2];
  *v50 = *&v41->__r_.__value_.__l.__data_;
  v51[0] = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (v51[0] >= 0)
  {
    v43 = v50;
  }

  else
  {
    v43 = v50[0];
  }

  if (v51[0] >= 0)
  {
    v44 = HIBYTE(v51[0]);
  }

  else
  {
    v44 = v50[1];
  }

  std::string::append(a1, v43, v44);
  if (SHIBYTE(v51[0]) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  std::to_string(&__p, a4);
  v45 = std::string::insert(&__p, 0, "_sz");
  v46 = v45->__r_.__value_.__r.__words[2];
  *v50 = *&v45->__r_.__value_.__l.__data_;
  v51[0] = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (v51[0] >= 0)
  {
    v47 = v50;
  }

  else
  {
    v47 = v50[0];
  }

  if (v51[0] >= 0)
  {
    v48 = HIBYTE(v51[0]);
  }

  else
  {
    v48 = v50[1];
  }

  std::string::append(a1, v47, v48);
  if (SHIBYTE(v51[0]) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void AGCSimdMatrix::createLoadStoreReplacementCall(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, int a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v11 = *(v10 + 32 * a6);
  v12 = (v10 + 32 * a6);
  v13 = v12[4];
  v14 = v12[8];
  v15 = v12[12];
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(**(**(*a3 + 2) + 16));
  LODWORD(v29) = v16;
  llvm::TypeSize::operator unsigned long long();
  llvm::IntegerType::get();
  v17 = llvm::PointerType::get();
  v31 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v17, &PrimitiveSizeInBits, v18);
  v20 = *(a2 - 32);
  if (!v20 || *(v20 + 16) || *(v20 + 24) != *(a2 + 72))
  {
    v20 = 0;
  }

  PrimitiveSizeInBits = llvm::Value::getName(v20);
  v29 = v21;
  if (llvm::StringRef::find() != -1)
  {
    v22 = llvm::PointerType::get();
    v31 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), PointerCast, v22, &PrimitiveSizeInBits, v23);
  }

  llvm::IntegerType::get();
  v24 = llvm::PointerType::get();
  v31 = 257;
  __src[0] = PointerCast;
  __src[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v11, v24, &PrimitiveSizeInBits, v25);
  __src[2] = v13;
  __src[3] = v14;
  __src[4] = v15;
  PrimitiveSizeInBits = v30;
  v29 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&PrimitiveSizeInBits, __src, &PrimitiveSizeInBits);
  AGCSimdMatrix::CreateReplacementCall(a1, a2, a4, a5, *(a1 + 144), PrimitiveSizeInBits, v29);
  if (PrimitiveSizeInBits != v30)
  {
    free(PrimitiveSizeInBits);
  }
}

llvm::Instruction *AGCSimdMatrix::CreateReplacementCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t a7)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v50[0] = a3;
  v50[1] = a4;
  v51[0] = v52;
  v51[1] = 0x600000000;
  v10 = *(a2 - 32);
  if (!v10 || *(v10 + 16) || *(v10 + 24) != *(a2 + 72))
  {
    v10 = 0;
  }

  Name = llvm::Value::getName(v10);
  v13 = Name;
  v14 = v12;
  if (v12 >= 0x16 && (v15 = memchr((Name + 21), 95, v12 - 21)) != 0)
  {
    v16 = v15 - v13;
  }

  else
  {
    v16 = -1;
  }

  v17 = 21;
  if (v14 < 0x15)
  {
    v17 = v14;
  }

  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v14 >= v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v49[0] = v13 + v17;
  v49[1] = v19 - v17;
  std::string::basic_string[abi:nn200100]<0>(&v44, "agc.simdgroup_matrix");
  v20 = std::string::append(&v44, "_");
  v21 = v20->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  llvm::StringRef::str(v42, v49);
  if ((v43 & 0x80u) == 0)
  {
    v22 = v42;
  }

  else
  {
    v22 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v23 = v43;
  }

  else
  {
    v23 = v42[1];
  }

  v24 = std::string::append(&v45, v22, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v46, "_");
  v27 = v26->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  llvm::StringRef::str(__p, v50);
  if ((v41 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v29 = v41;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v38, v28, v29);
  v31 = v30->__r_.__value_.__r.__words[2];
  *v47 = *&v30->__r_.__value_.__l.__data_;
  v48 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (a7)
  {
    v32 = 8 * a7;
    v33 = a6;
    do
    {
      v34 = *v33++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v51, *v34);
      v32 -= 8;
    }

    while (v32);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v39 = 257;
  v36 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v35 + 24), v35, a6, a7, &v38);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v36;
}

void AGCSimdMatrix::buildLoad(unsigned int **a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 - 32);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 72))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v8 = v7;
  v9 = *(*(**(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64) + 24) + 8) >> 8;
  Alignment = AGCSimdMatrix::getAlignment(Name, v7);
  AGCSimdMatrix::getLoadStoreSuffix(&__p, Name, v8, v9, Alignment);
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v4);
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

  AGCSimdMatrix::createLoadStoreReplacementCall(a1, a2, AllocaInEntryBlock, p_p, size, 0);
  v14[16] = 257;
  llvm::Type::isOpaquePointerTy(*AllocaInEntryBlock);
  llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v4, AllocaInEntryBlock, 0, v14);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void AGCSimdMatrix::buildInit(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v30 = v32;
  v31 = 0x600000000;
  v6 = *a2;
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(a1, *a2);
  v28.__r_.__value_.__r.__words[0] = llvm::Type::getPrimitiveSizeInBits(**(v6 + 2));
  LODWORD(v28.__r_.__value_.__r.__words[1]) = v8;
  v9 = llvm::TypeSize::operator unsigned long long();
  v10 = llvm::IntegerType::get();
  v11 = llvm::PointerType::get();
  v29 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), AllocaInEntryBlock, v11, &v28, v12);
  v14 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v14, v10, &v28);
  std::to_string(&v24, v9);
  v16 = std::string::insert(&v24, 0, "sz");
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v25, "_");
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v28, a3);
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  v27 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, PointerCast);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, Cast);
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = SHIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  AGCSimdMatrix::CreateReplacementCall(a1, a2, v22, v23, *(a1 + 144), v30, v31);
  v29 = 257;
  llvm::Type::isOpaquePointerTy(*AllocaInEntryBlock);
  llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v6, AllocaInEntryBlock, 0, &v28);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }
}

uint64_t AGCSimdMatrix::buildGetNumElementsPerThread(uint64_t a1, uint64_t *a2)
{
  AGCSimdMatrix::CreateReplacementCall(a1, a2, "get_element_coordinates", 23, *a2, 0, 0);
  llvm::Value::replaceAllUsesWith();

  return llvm::Instruction::eraseFromParent(a2);
}

void AGCSimdMatrix::buildGetElementCoord(uint64_t a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = 0x600000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v4, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF)));
  AGCSimdMatrix::CreateReplacementCall(a1, a2, "get_element_coordinates", 23, *a2, v4, v5);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v4 != v6)
  {
    free(v4);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 104 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF058;
      *(v4 + 3) = v9;
      v5 = v4 + 96;
      result = (v4 + 104);
      v2 += 104;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 104 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF030;
      *(v4 + 3) = v9;
      v5 = v4 + 96;
      result = (v4 + 104);
      v2 += 104;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF058;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 72;
    *(v4 + 48) = v4 + 72;
    *(v4 + 56) = 4;
    *(v4 + 64) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BEFE0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF030;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 72;
    *(v4 + 48) = v4 + 72;
    *(v4 + 56) = 4;
    *(v4 + 64) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void *SimplifyGenericIRAGPFragmentGen4Pass::collectDiscardBasicBlocksSurvivorSet(void *result, void *a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4)
{
  v4 = result[1];
  if (v4)
  {
    v8 = result;
    while (1)
    {
      v9 = *(v4 + 24);
      v10 = *(v9 + 16);
      v11 = v9 && v10 >= 0x1C;
      if (v11 && v10 - 29 < 0xB)
      {
        break;
      }

      v4 = *(v4 + 8);
      if (!v4)
      {
        return result;
      }
    }

LABEL_13:
    v13 = *(v9 + 40);
    v14 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(a2, v13);
    v15 = a2[1];
    if (v15 == *a2)
    {
      v16 = 20;
    }

    else
    {
      v16 = 16;
    }

    if ((v15 + 8 * *(a2 + v16)) == v14)
    {
      llvm::SmallPtrSetImpl<void *>::insert(v21, a3, v13);
      v17 = llvm::ValueMap<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](a4, v13);
      result = llvm::SmallPtrSetImpl<void *>::insert(v21, v17, v8);
    }

    else
    {
      result = SimplifyGenericIRAGPFragmentGen4Pass::collectDiscardBasicBlocksSurvivorSet(v13, a2, a3, a4);
    }

    while (1)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        break;
      }

      v9 = *(v4 + 24);
      v18 = *(v9 + 16);
      if (v9)
      {
        v19 = v18 >= 0x1C;
      }

      else
      {
        v19 = 0;
      }

      if (v19 && v18 - 29 < 0xB)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BEFE0;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::destroyAll(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825BEFE0;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * a2;
    v3 = (result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v13 = 2;
    v14 = 0;
    v15 = -4096;
    v16 = 0;
    v11 = 0;
    v12 = &unk_2825BF030;
    v8 = 2;
    v9 = 0;
    v10 = -8192;
    v2 = 104 * a2;
    v3 = (a1 + 24);
    do
    {
      v4 = *v3;
      if (*v3 != v15 && v4 != v10)
      {
        v6 = v3[3];
        if (v6 != v3[2])
        {
          free(v6);
          v4 = *v3;
        }
      }

      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 13;
      v2 -= 104;
    }

    while (v2);
  }
}

void llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v15, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = v4;
  v22 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v16, &v22))
  {
    v5 = v22;
  }

  else
  {
    v5 = (*v4 + 104 * v4[2].u32[0]);
  }

  if ((*v17 + 104 * v17[2].u32[0]) != v5)
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v6 = v17;
    v7 = v5[6];
    if (v7 != v5[5])
    {
      free(v7);
    }

    v23[0] = 2;
    v23[1] = 0;
    v24 = -8192;
    v25 = 0;
    v22 = &unk_2825BF058;
    llvm::ValueHandleBase::operator=((v5 + 1), v23);
    v8 = v24;
    v5[4] = v25;
    if (v8 != -8192 && v8 != -4096 && v8)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v9 = v17;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    llvm::CallbackVH::CallbackVH(&v18, a2);
    v18 = &unk_2825BF058;
    v21 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v23, (LODWORD(v19[0]) >> 1) & 3, v19);
    v22 = &unk_2825BF058;
    v25 = v21;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v28 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v9, *(v9 + 16), v24, &v28) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(v9, &v22, v28);
      llvm::ValueHandleBase::operator=((v10 + 8), v23);
      *(v10 + 32) = v25;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    }

    if (v27 != v26)
    {
      free(v27);
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    if (v20 != -8192 && v20 != -4096 && v20)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    if (v12 != v11)
    {
      free(v12);
    }

    if (v14 != v13)
    {
      free(v14);
    }
  }

  if (v16 != -8192 && v16 != -4096)
  {
    if (v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 104 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BF058;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    if (v3)
    {
      v9 = (v4 + 24);
      v10 = 104 * v3;
      do
      {
        v11 = *v9;
        if (*v9 != v23 && v11 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v25);
          v13 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v9 - 2);
          *(v13 + 32) = v9[1];
          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v14 = v9[3];
          if (v14 != v9[2])
          {
            free(v14);
          }
        }

        v15 = *v9;
        if (*v9 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 2));
        }

        v9 += 13;
        v10 -= 104;
      }

      while (v10);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(0x68, v4, (104 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>,llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock *,4u>>>::initEmpty(a1);
  }
}

llvm::ValueHandleBase *llvm::ValueMapCallbackVH<llvm::Function const*,llvm::SmallPtrSet<llvm::BasicBlock *,4u>,llvm::ValueMapConfig<llvm::Function const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[6];
    if (v5 != v11[5])
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_2825BF058;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v15, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = v4;
  v22 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v16, &v22))
  {
    v5 = v22;
  }

  else
  {
    v5 = (*v4 + 104 * v4[2].u32[0]);
  }

  if ((*v17 + 104 * v17[2].u32[0]) != v5)
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v6 = v17;
    v7 = v5[6];
    if (v7 != v5[5])
    {
      free(v7);
    }

    v23[0] = 2;
    v23[1] = 0;
    v24 = -8192;
    v25 = 0;
    v22 = &unk_2825BF030;
    llvm::ValueHandleBase::operator=((v5 + 1), v23);
    v8 = v24;
    v5[4] = v25;
    if (v8 != -8192 && v8 != -4096 && v8)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v9 = v17;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    llvm::CallbackVH::CallbackVH(&v18, a2);
    v18 = &unk_2825BF030;
    v21 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v23, (LODWORD(v19[0]) >> 1) & 3, v19);
    v22 = &unk_2825BF030;
    v25 = v21;
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    v28 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v9, *(v9 + 16), v24, &v28) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(v9, &v22, v28);
      llvm::ValueHandleBase::operator=((v10 + 8), v23);
      *(v10 + 32) = v25;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
    }

    if (v27 != v26)
    {
      free(v27);
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    if (v20 != -8192 && v20 != -4096 && v20)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    if (v12 != v11)
    {
      free(v12);
    }

    if (v14 != v13)
    {
      free(v14);
    }
  }

  if (v16 != -8192 && v16 != -4096)
  {
    if (v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 104 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = a1 + 104 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 104 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BF030;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    if (v3)
    {
      v9 = (v4 + 24);
      v10 = 104 * v3;
      do
      {
        v11 = *v9;
        if (*v9 != v23 && v11 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v25);
          v13 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v9 - 2);
          *(v13 + 32) = v9[1];
          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v14 = v9[3];
          if (v14 != v9[2])
          {
            free(v14);
          }
        }

        v15 = *v9;
        if (*v9 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 2));
        }

        v9 += 13;
        v10 -= 104;
      }

      while (v10);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(0x68, v4, (104 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::SmallPtrSet<llvm::BasicBlock*,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::SmallPtrSet<llvm::BasicBlock*,4u>,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[6];
    if (v5 != v11[5])
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_2825BF030;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v10, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v12 = v4;
  v17 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v11, &v17))
  {
    v5 = v17;
  }

  else
  {
    v5 = *v4 + 48 * v4[2].u32[0];
  }

  result = v12;
  if (*v12 + 48 * v12[2].u32[0] != v5)
  {
    v7 = *(v5 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::erase(v12, v5);
    v8 = v12;
    llvm::CallbackVH::CallbackVH(&v13, a2);
    v13 = &unk_2825BEFE0;
    v16 = v8;
    llvm::ValueHandleBase::ValueHandleBase(v18, (LODWORD(v14[0]) >> 1) & 3, v14);
    v17 = &unk_2825BEFE0;
    v20 = v16;
    v21 = v7;
    v22 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v8, v8[2].i32[0], v19, &v22);
    if ((result & 1) == 0)
    {
      v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(v8, &v17, v22);
      result = llvm::ValueHandleBase::operator=((v9 + 1), v18);
      v9[4] = v20;
      v9[5] = v21;
    }

    if (v19 != -8192 && v19 != -4096 && v19)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v18);
    }

    if (v15 != -8192 && v15 != -4096 && v15)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v14);
    }
  }

  if (v11 != -8192 && v11 != -4096)
  {
    if (v11)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v10);
    }
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::erase(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v7);
  v4 = v8;
  *(a2 + 32) = v9;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BEFE0;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v23 && v12 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v25);
          v14 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    v16 = v23;
    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v16, v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>,llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>,llvm::BasicBlock*>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock const*,llvm::BasicBlock*,llvm::ValueMapConfig<llvm::BasicBlock const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825BEFE0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t llvm::po_iterator<llvm::BasicBlock *,llvm::SmallPtrSet<llvm::BasicBlock *,8u>,false,llvm::GraphTraits<llvm::BasicBlock *>>::traverseChild(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 96) + 24 * *(a1 + 104);
    v3 = *(v2 - 24);
    v4 = *(v3 + 40);
    if (v4 == v3 + 40 || ((v5 = (v4 - 24), v4) ? (v6 = v4 - 24) : (v6 = 0), *(v6 + 16) - 29 > 0xA))
    {
      result = 0;
    }

    else
    {
      result = llvm::Instruction::getNumSuccessors(v5);
    }

    if (*(v2 - 8) == result)
    {
      break;
    }

    v8 = *(a1 + 96) + 24 * *(a1 + 104);
    v9 = *(v8 - 16);
    ++*(v8 - 8);
    Successor = llvm::Instruction::getSuccessor(v9);
    llvm::SmallPtrSetImpl<void *>::insert(v18, a1, Successor);
    if (v19 == 1)
    {
      v11 = Successor[5];
      if (v11 == Successor + 5)
      {
        v14 = 0;
      }

      else
      {
        v12 = v11 - 3;
        if (v11)
        {
          v13 = v11 - 3;
        }

        else
        {
          v13 = 0;
        }

        if (*(v13 + 16) - 29 >= 0xB)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      v18[0] = Successor;
      v18[1] = v14;
      v19 = 0;
      v15 = llvm::SmallVectorTemplateCommon<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,true>>(a1 + 96, v18);
      v16 = *(a1 + 96) + 24 * *(a1 + 104);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(a1 + 104);
    }
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 24 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t *llvm::SmallVectorImpl<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 2);
    v4 = *(a1 + 2);
    if (v4 >= v3)
    {
      if (v3)
      {
        v5 = *a2;
        v6 = *a2 + 24 * v3;
        v7 = *a1;
        do
        {
          *v7 = *v5;
          v8 = *(v5 + 8);
          *(v7 + 16) = *(v5 + 16);
          *(v7 + 8) = v8;
          v5 += 24;
          v7 += 24;
        }

        while (v5 != v6);
      }
    }

    else
    {
      if (*(a1 + 3) < v3)
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v4)
      {
        v9 = *a2;
        v10 = *a2 + 24 * v4;
        v11 = *a1;
        do
        {
          *v11 = *v9;
          v12 = *(v9 + 8);
          *(v11 + 16) = *(v9 + 16);
          *(v11 + 8) = v12;
          v9 += 24;
          v11 += 24;
        }

        while (v9 != v10);
      }

      else
      {
        v4 = 0;
      }

      v13 = *(a2 + 2) - v4;
      if (v13)
      {
        memcpy((*a1 + 24 * v4), (*a2 + 24 * v4), 24 * v13);
      }
    }

    *(a1 + 2) = v3;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::BasicBlock *,llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>>::operator=(uint64_t a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 2);
    v4 = *a2;
    if (*a2 == (a2 + 2))
    {
      v7 = *(a2 + 2);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          v9 = *a1;
          v10 = &v4[3 * v7];
          do
          {
            *v9 = *v4;
            v11 = v4[1];
            *(v9 + 16) = *(v4 + 4);
            *(v9 + 8) = v11;
            v4 += 3;
            v9 += 24;
          }

          while (v4 != v10);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          v12 = &v4[3 * v8];
          v13 = *a1;
          do
          {
            *v13 = *v4;
            v14 = v4[1];
            *(v13 + 16) = *(v4 + 4);
            *(v13 + 8) = v14;
            v4 += 3;
            v13 += 24;
          }

          while (v4 != v12);
        }

        else
        {
          v8 = 0;
        }

        v15 = *(a2 + 2) - v8;
        if (v15)
        {
          memcpy((*a1 + 24 * v8), &(*a2)[3 * v8], 24 * v15);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
    }

    *(a2 + 2) = 0;
  }

  return a1;
}

void SimplifyGenericIRCommonPass::AddCandidate(void *a1, void *a2, uint64_t a3, void **a4, uint64_t a5, unint64_t a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a1[1] || (llvm::Type::isOpaquePointerTy(*a1) & 1) != 0)
  {
    return;
  }

  v12 = **(*a1 + 16);
  if ((*(v12 + 8) & 0xFE) != 0x10)
  {
    v36 = a1[1];
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v62 = a4 + 1;
      v64 = a6;
      v40 = 1;
      v65 = a2;
      while (1)
      {
        v41 = *(v36 + 24);
        v42 = *(v41 + 16);
        if (!v41 || v42 < 0x1C)
        {
          return;
        }

        if (v42 == 84)
        {
          v44 = a4;
          v45 = v62;
LABEL_63:
          v46 = *v45;
          if (!*v45)
          {
LABEL_67:
            operator new();
          }

          while (1)
          {
            v45 = v46;
            v47 = v46[4];
            if (v41 < v47)
            {
              goto LABEL_63;
            }

            if (v47 >= v41)
            {
              break;
            }

            v46 = v45[1];
            if (!v46)
            {
              goto LABEL_67;
            }
          }

          v39 = 1;
          a2 = v65;
          a4 = v44;
          a6 = v64;
        }

        else if (v42 == 61)
        {
          if (*(v41 - 32) != a1 || (*(v41 + 18) & 1) != 0)
          {
            return;
          }
        }

        else
        {
          if (v42 != 60 || *(v41 - 32) != a1 || (*(v41 + 18) & 1) != 0)
          {
            return;
          }

          ++v37;
        }

        if (v38)
        {
          v40 &= v38 == *(v41 + 40);
        }

        else
        {
          v38 = *(v41 + 40);
        }

        v36 = *(v36 + 8);
        if (!v36)
        {
          v48 = v39 ^ 1;
          goto LABEL_75;
        }
      }
    }

    v37 = 0;
    v48 = 1;
    v40 = 1;
LABEL_75:
    v49 = *(a1 + 16);
    if (v49 == 62)
    {
      v49 = *(a1[-4 * (*(a1 + 5) & 0x7FFFFFF)] + 16);
    }

    v50 = v37;
    if (v49 == 59)
    {
      v51 = llvm::UndefValue::get();
      v52 = v48 & 1;
      v53 = v40 & 1;
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
    }

    *&v66[0] = 0;
    v54 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a2, *(a2 + 4), a1, v66);
    v55 = *&v66[0];
    if (v54)
    {
LABEL_86:
      *(v55 + 8) = v51;
      *(v55 + 16) = 0;
      *(v55 + 20) = v52;
      *(v55 + 21) = v53;
      *(v55 + 24) = v50;
      *(v55 + 32) = a6;
      if (a6)
      {
        operator new();
      }

      return;
    }

    v56 = *(a2 + 2);
    v57 = *(a2 + 4);
    if (4 * v56 + 4 >= 3 * v57)
    {
      v57 *= 2;
    }

    else if (v57 + ~v56 - *(a2 + 3) > v57 >> 3)
    {
LABEL_83:
      ++*(a2 + 2);
      if (*v55 != -4096)
      {
        --*(a2 + 3);
      }

      *(v55 + 24) = 0;
      *v55 = a1;
      *(v55 + 8) = 0;
      *(v55 + 14) = 0;
      goto LABEL_86;
    }

    llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::grow(a2, v57);
    *&v66[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a2, *(a2 + 4), a1, v66);
    v55 = *&v66[0];
    goto LABEL_83;
  }

  if ((~*(v12 + 8) & 0x11) != 0)
  {
    return;
  }

  if ((*(**(v12 + 16) + 8) & 0xFE) == 0x10)
  {
    return;
  }

  v13 = *(v12 + 32);
  if (v13 > 4)
  {
    return;
  }

  v63 = a4;
  memset(v66, 0, sizeof(v66));
  v14 = a1[1];
  if (v14)
  {
    v15 = v12;
    while (1)
    {
      v16 = *(v14 + 24);
      if (!v16)
      {
        return;
      }

      if (*(v16 + 16) != 62)
      {
        return;
      }

      v14 = *(v14 + 8);
      if (!llvm::GetElementPtrInst::hasAllConstantIndices(v16) || (*(v16 + 20) & 0x7FFFFFF) != 3)
      {
        return;
      }

      v17 = *(v16 - 64);
      v18 = *(v17 + 32);
      if (v18 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase((v17 + 24)) != v18)
        {
          return;
        }
      }

      else if (*(v17 + 24))
      {
        return;
      }

      v19 = *(v16 - 32);
      v20 = (v19 + 24);
      if (*(v19 + 32) >= 0x41u)
      {
        v20 = *v20;
      }

      v21 = *v20;
      if (v21 >= *(v15 + 32))
      {
        return;
      }

      if (!*(v66 + v21))
      {
        *(v66 + v21) = llvm::Instruction::clone(v16);
        --*(a5 + 16);
        v22 = *(a1 + 16);
        if (v22 == 21)
        {
          v28 = *(a1[3] + 80);
          if (v28)
          {
            v29 = (v28 - 24);
          }

          else
          {
            v29 = 0;
          }

          FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v29);
          v31 = FirstInsertionPt - 24;
          v32 = FirstInsertionPt == 0;
          while (1)
          {
            v33 = v32 ? 0 : v31;
            if (*(v33 + 16) != 59)
            {
              break;
            }

            v34 = *(v31 + 32);
            v35 = *(v31 + 40) + 40;
            v31 = v34 - 24;
            if (v34)
            {
              v32 = v34 == v35;
            }

            else
            {
              v32 = 1;
            }
          }

          goto LABEL_32;
        }

        if (v22 == 59)
        {
          v23 = a1;
          do
          {
            v24 = v23[4];
            v25 = v23[5] + 40;
            v23 = (v24 - 24);
            if (v24)
            {
              v26 = v24 == v25;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = v24 - 24;
            }
          }

          while (*(v27 + 16) == 59);
LABEL_32:
          llvm::Instruction::insertBefore();
        }
      }

      ++*(a5 + 16);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v16);
      if (!v14)
      {
        v13 = *(v15 + 32);
        goto LABEL_89;
      }
    }
  }

  v15 = v12;
LABEL_89:
  if (v13)
  {
    v58 = 0;
    v59 = 1;
    do
    {
      v60 = *(v66 + v58);
      if (v60)
      {
        SimplifyGenericIRCommonPass::AddCandidate(v60, a2, a3, v63, a5, a1);
        v13 = *(v15 + 32);
      }

      v58 = v59;
    }

    while (v13 > v59++);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 40 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = 40 * v11 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v10 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
    }

    v15 = 5 * v3;
    if (v3)
    {
      v16 = 40 * v3;
      v17 = v4;
      do
      {
        v18 = *v17;
        v10 = *v17 | 0x1000;
        if (v10 != -4096)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>,llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,SimplifyGenericIRCommonPass::PointerInfo>>::LookupBucketFor<llvm::Value const*>(*a1, *(a1 + 16), v18, &v26);
          v19 = v26;
          *v26 = *v17;
          v20 = *(v17 + 8);
          *(v19 + 3) = *(v17 + 24);
          *(v19 + 1) = v20;
          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
        }

        v17 = (v17 + 40);
        v16 -= 40;
      }

      while (v16);
    }

    return llvm::deallocate_buffer(v10, v4, (8 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = 40 * v21 - 40;
      v24 = vdupq_n_s64(v23 / 0x28);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[5] = -4096;
        }

        v22 += 2;
        result += 10;
      }

      while (((v23 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

AGX::SpecializableRenderPipelineState *AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(AGX::SpecializableRenderPipelineState *this)
{
  *(this + 8) = 3;
  *(this + 68) = 0x706050403020100;
  *(this + 75) = 0;
  *(this + 152) = 255;
  *(this + 306) = 0;
  *(this + 308) = 0;
  *(this + 312) = 0;
  memset_pattern16(this, &unk_20E70CB00, 0x20uLL);
  memset_pattern16(this + 36, &unk_20E70CB00, 0x20uLL);
  *&v6[3] = 0;
  *&v6[11] = 0;
  v2 = 9;
  v3 = 76;
  do
  {
    v4 = this + v3;
    *v4 = 2;
    *(v4 + 1) = *v6;
    *(v4 + 12) = 0uLL;
    v3 += 28;
    --v2;
  }

  while (v2 > 1);
  return this;
}

void AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = (a2 - *a2);
  if (*v4 < 0x17u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[11];
    if (v5)
    {
      v5 = (v5 + a2 + *(v5 + a2));
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = (a1 + 100);
  do
  {
    if (v5 && *v5 > v7)
    {
      v9 = (&v5[v6 + 1] + v5[v6 + 1]);
    }

    else
    {
      v9 = 0;
    }

    if (*(a1 + v6 * 4) == 263)
    {
      if (v9 && (v10 = (v9 - *v9), *v10 >= 5u))
      {
        v11 = v10[2];
        if (v11)
        {
          LODWORD(v11) = *(v9 + v11);
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      *(a1 + v6 * 4) = v11;
    }

    v12 = *(v8 - 24);
    if (v12 == 2)
    {
      if (v9 && (v13 = (v9 - *v9), *v13 >= 9u) && (v14 = v13[4]) != 0)
      {
        v15 = *(v9 + v14);
        v12 = v15 == 1;
        if (v15 == 2)
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      *(v8 - 24) = v12;
    }

    v16 = 1 << v7;
    if (v12 == 1)
    {
      if (!v9)
      {
        v21 = *(a1 + 304);
        if ((v16 & v21) == 0)
        {
          goto LABEL_80;
        }

        LODWORD(v9) = 0;
        goto LABEL_79;
      }

      if (!*(v8 - 5))
      {
        v17 = (v9 - *v9);
        if (*v17 >= 0x15u && (v18 = v17[10]) != 0)
        {
          v19 = *(v9 + v18);
          if (v19 > 0x13)
          {
            v20 = 0;
          }

          else
          {
            v20 = dword_20E745D40[v19];
          }
        }

        else
        {
          v20 = 2;
        }

        *(v8 - 5) = v20;
      }

      if (!*(v8 - 4))
      {
        v22 = (v9 - *v9);
        if (*v22 >= 0x11u && (v23 = v22[8]) != 0)
        {
          v24 = *(v9 + v23);
          if (v24 > 0x13)
          {
            v25 = 0;
          }

          else
          {
            v25 = dword_20E745D40[v24];
          }
        }

        else
        {
          v25 = 1;
        }

        *(v8 - 4) = v25;
      }

      if (!*(v8 - 3))
      {
        v26 = (v9 - *v9);
        if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
        {
          v28 = *(v9 + v27);
          if (v28 > 0x13)
          {
            v29 = 0;
          }

          else
          {
            v29 = dword_20E745D40[v28];
          }
        }

        else
        {
          v29 = 2;
        }

        *(v8 - 3) = v29;
      }

      if (!*(v8 - 2))
      {
        v30 = (v9 - *v9);
        if (*v30 >= 0xFu && (v31 = v30[7]) != 0)
        {
          v32 = *(v9 + v31);
          if (v32 > 0x13)
          {
            v33 = 0;
          }

          else
          {
            v33 = dword_20E745D40[v32];
          }
        }

        else
        {
          v33 = 1;
        }

        *(v8 - 2) = v33;
      }

      if (!*(v8 - 1))
      {
        v34 = (v9 - *v9);
        if (*v34 >= 0xDu && (v35 = v34[6]) != 0)
        {
          v36 = *(v9 + v35);
          if (v36 > 5)
          {
            v37 = 0;
          }

          else
          {
            v37 = dword_20E745D90[v36];
          }
        }

        else
        {
          v37 = 3;
        }

        *(v8 - 1) = v37;
      }

      if (!*v8)
      {
        v38 = (v9 - *v9);
        if (*v38 >= 0xBu && (v39 = v38[5]) != 0)
        {
          v40 = *(v9 + v39);
          if (v40 > 5)
          {
            v41 = 0;
          }

          else
          {
            v41 = dword_20E745D90[v40];
          }
        }

        else
        {
          v41 = 3;
        }

        *v8 = v41;
      }
    }

    v21 = *(a1 + 304);
    if ((v16 & v21) == 0)
    {
      goto LABEL_80;
    }

    if (v9)
    {
      v42 = (v9 - *v9);
      if (*v42 >= 7u && (v43 = v42[3]) != 0)
      {
        v44 = *(v9 + v43);
        if ((v44 & 0x10) != 0)
        {
          goto LABEL_80;
        }

        LODWORD(v9) = __rbit32(v44) >> 28;
      }

      else
      {
        LODWORD(v9) = 15;
      }
    }

LABEL_79:
    *(a1 + 300) = *(a1 + 300) & ~(15 << (v6 * 4)) | (v9 << (v6 * 4));
    *(a1 + 304) = v21 & ~v16;
LABEL_80:
    ++v7;
    ++v6;
    v8 += 7;
  }

  while (v6 != 8);
  v45 = *a2;
  v46 = -v45;
  v47 = (a2 - v45);
  v48 = *(a2 - v45);
  if (*(a1 + 32) == 3)
  {
    if (v48 >= 0x39 && v47[28] && *(a2 + v47[28]))
    {
      v49 = *(a2 + v47[28]);
      v50 = v49 == 1;
      if (v49 == 1)
      {
        v51 = 2;
      }

      else
      {
        v51 = 3;
      }

      *(a1 + 32) = v51;
      if (!v50)
      {
        memset_pattern16((a1 + 36), &unk_20E70CB00, 0x20uLL);
      }

LABEL_99:
      if (v47[18] && *(a2 + v47[18]))
      {
        v52 = 1;
        if (v48 >= 0x27)
        {
          if (v47[19])
          {
            v53 = *(a2 + v47[19]);
            if (v53 > 0xF)
            {
              v52 = 0;
            }

            else
            {
              v52 = dword_20E745CE0[v53];
            }
          }

          else
          {
            v52 = 1;
          }
        }

        *(a1 + 308) = v52;
        *(a1 + 312) = 1;
        v45 = *a2;
        v46 = -v45;
        v48 = *(a2 - v45);
        goto LABEL_108;
      }

      goto LABEL_109;
    }

    *(a1 + 32) = 0;
  }

  if (v48 >= 0x25)
  {
    goto LABEL_99;
  }

LABEL_108:
  if (v48 >= 0xD)
  {
LABEL_109:
    if (*(a2 + v46 + 12))
    {
      v54 = *(a2 + *(a2 + v46 + 12));
      goto LABEL_112;
    }
  }

  v54 = 1;
LABEL_112:
  *(a1 + 305) = v54;
  v55 = (a2 - v45);
  v56 = *v55;
  if (v56 < 0xF)
  {
    if (v56 >= 0xD)
    {
      goto LABEL_117;
    }

    goto LABEL_119;
  }

  if (!v55[7] || (v57 = *(a2 + v55[7])) == 0)
  {
LABEL_117:
    v58 = v55[6];
    if (v58)
    {
      v57 = *(a2 + v58);
      goto LABEL_120;
    }

LABEL_119:
    LOBYTE(v57) = 1;
  }

LABEL_120:
  *(a1 + 306) = v57;
}

uint64_t std::vector<AGCTargetArch>::~vector[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t (***AGCTarget::Get(unsigned __int16 a1))()
{
  v2 = a1;
  result = &AGCTarget::Get(AGCTargetArch)::target;
  if (v2 > 24)
  {
    if (v2 > 31)
    {
      if (v2 > 34)
      {
        if (v2 == 35 || v2 == 38)
        {
          return &AGCTargetHAL300::Get(void)::target;
        }
      }

      else if (v2 == 32 || v2 == 34)
      {
        return AGCTargetHAL200::Get(void)::target;
      }
    }

    else
    {
      if ((v2 - 25) < 3)
      {
        return AGCTargetG13::Get(void)::target;
      }

      if (v2 == 31)
      {
        return AGCTargetG16::Get(void)::target;
      }
    }
  }

  else
  {
    if (v2 > 18)
    {
      if (a1 == 22)
      {
        v4 = AGCTargetG15::Get(AGCTargetArch)::target;
      }

      else
      {
        v4 = AGCTargetG15::Get(AGCTargetArch)::target;
      }

      if (v2 != 24)
      {
        v4 = &AGCTarget::Get(AGCTargetArch)::target;
      }

      if (v2 == 22)
      {
        v4 = AGCTargetG15_AGX2::Get(void)::target;
      }

      if ((v2 - 19) >= 3)
      {
        return v4;
      }

      else
      {
        return AGCTargetG14X::Get(void)::target;
      }
    }

    if ((v2 - 17) < 2)
    {
      return AGCTargetG14::Get(void)::target;
    }

    if (v2 == 14 || v2 == 16)
    {
      return AGCTargetG13::Get(void)::target;
    }
  }

  return result;
}

uint64_t AGCTarget::CPUSubtypeToTargetArch(AGCTarget *this, unsigned int a2, const char *a3)
{
  v3 = this;
  if (this > 321)
  {
    if (this <= 433)
    {
      if (this <= 369)
      {
        switch(this)
        {
          case 0x142:
            return 196624;
          case 0x143:
            return 65570;
          case 0x153:
            return 65571;
        }
      }

      else if (this > 401)
      {
        if (this == 402)
        {
          return 196626;
        }

        if (this == 403)
        {
          return 196640;
        }
      }

      else
      {
        if (this == 370)
        {
          return 196625;
        }

        if (this == 371)
        {
          return 65574;
        }
      }

      return 0;
    }

    if (this <= 529)
    {
      switch(this)
      {
        case 0x1B2:
          return 196627;
        case 0x1B3:
          return 262175;
        case 0x1F2:
          return 196629;
      }

      return 0;
    }

    if (this > 593)
    {
      if (this != 594)
      {
        if (this == 610)
        {
          return 196630;
        }

        return 0;
      }

      v5 = 19;
    }

    else if (this == 530)
    {
      v5 = 17;
    }

    else
    {
      if (this != 562)
      {
        return 0;
      }

      v5 = 18;
    }

    goto LABEL_59;
  }

  result = 327684;
  if (v3 > 113)
  {
    if (v3 <= 242)
    {
      if (v3 == 114)
      {
        v7 = 196616;
        return v7 | 1u;
      }

      if (v3 == 210)
      {
        return 196620;
      }

      if (v3 != 227)
      {
        return 0;
      }

      v5 = 25;
      v6 = 65542;
      return v6 | v5;
    }

    if (v3 > 274)
    {
      if (v3 == 275)
      {
        return 327704;
      }

      if (v3 == 290)
      {
        return 196622;
      }

      return 0;
    }

    if (v3 != 243)
    {
      if (v3 == 259)
      {
        return 65568;
      }

      return 0;
    }

    v5 = 23;
LABEL_59:
    v6 = 196616;
    return v6 | v5;
  }

  if (v3 <= 80)
  {
    switch(v3)
    {
      case '""':
        return 196616;
      case 'A':
        return result;
      case 'C':
        return 65560;
    }

    return 0;
  }

  if (v3 > 82)
  {
    if (v3 == 83)
    {
      return 196632;
    }

    if (v3 == 97)
    {
      v7 = 65542;
      return v7 | 1u;
    }

    return 0;
  }

  if (v3 == 81)
  {
    return 65542;
  }

  else
  {
    return 196618;
  }
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v5 = *a2;
    v6 = a2 - v5;
    v7 = *(a2 - v5);
    if (v7 < 5)
    {
      goto LABEL_68;
    }

    v8 = -v5;
    v9 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v10 = *(a2 + v9);
      v52 = a2 + v9;
      v11 = *(a2 + v9 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v9 + v10;
        v51 = *(a2 + v9);
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_52;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_52;
          }

          v19 = a2 + v14 + v15 + v18;
          if (!*(v19 + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 8 * v13 + 112) = AGX::G13::TextureFormatTable::chooseTextureFormatCPP(*(v19 + 2), v4);
          v20 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v21 = v15 - *(v16 + 1);
          v22 = *(a2 + v14 + v21 + 4);
          if (v22 < 0x19)
          {
            v24 = 0;
            v23 = 0;
            if (v22 < 0xF)
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(a2 + v14 + v21 + 28))
            {
              v23 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 28) + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v22 >= 0x1B && *(a2 + v14 + v21 + 30))
            {
              v24 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 30) + 4);
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = *(a2 + v14 + v21 + 18);
          if (v25 && *(a2 + v14 + v15 + v25 + 4))
          {
            *(a1 + 48) |= v20;
            if ((v24 & 0xFE) == 2)
            {
              v26 = 1 << v13;
            }

            else
            {
              v26 = 0;
            }

            *(a1 + 68) |= v26;
            v27 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v27 + 2) >= 0x11u && (v28 = *(v27 + 10)) != 0)
            {
              v29 = *(a2 + v14 + v15 + v28 + 4);
            }

            else
            {
              v29 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v29);
          }

          v30 = 0;
          if (v23 == 2)
          {
            v31 = 1 << v13;
          }

          else
          {
            v31 = 0;
          }

          *(a1 + 56) |= v31;
          if (!v24)
          {
LABEL_33:
            v24 = 0;
            v30 = 1 << v13;
          }

          *(a1 + 52) |= v30;
          if (v23 == 1)
          {
            v32 = 1 << v13;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(a1 + 64);
          v34 = *(a1 + 60) | v32;
          if ((v24 & 0xFFFFFFFD) == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          *(a1 + 60) = v34;
          *(a1 + 64) = v35 | v33;
          if (v24 == 4)
          {
            v36 = 1 << v13;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 72) |= v36;
          v37 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v37 + 2) < 7u || (v38 = *(v37 + 5)) == 0)
          {
            *(a1 + v12 + 176) = 2;
            goto LABEL_49;
          }

          v39 = *(a2 + v14 + v15 + v38 + 4);
          AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v39);
          if (v39 <= 8)
          {
            if (((1 << v39) & 0x168) != 0)
            {
              *(a1 + 78) |= v20;
LABEL_49:
              v40 = v51;
              goto LABEL_50;
            }

            if (v39 == 1)
            {
              *(a1 + 78) |= v20;
              v41 = 1;
              goto LABEL_61;
            }

            if (v39 == 7)
            {
              v41 = 3;
LABEL_61:
              v40 = v51;
              goto LABEL_51;
            }
          }

          v40 = v51;
          if (!v39)
          {
            v41 = 1;
            goto LABEL_51;
          }

LABEL_50:
          v41 = 2;
LABEL_51:
          *(a1 + 76) |= v41 << v12;
          v11 = *&v52[v40];
LABEL_52:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v42 = *a2;
          v8 = -v42;
          v7 = *(a2 - v42);
          break;
        }
      }
    }

    if (v7 >= 7 && *(a2 + v8 + 6) && (v43 = *(a2 + *(a2 + v8 + 6)), (v43 & 0xFFFFFFFE) != 0))
    {
      v44 = (a1 + 92);
      if (v43 > 0x7FF)
      {
        LODWORD(v43) = 2048;
      }
    }

    else
    {
LABEL_68:
      v44 = (a1 + 92);
      LODWORD(v43) = 1;
    }

    *v44 = v43;
    v45 = (a2 - *a2);
    v46 = *v45;
    if (v46 < 0xB)
    {
      v48 = 1;
      *(a1 + 96) = 1;
      if (v46 < 9)
      {
LABEL_79:
        *(a1 + 97) = v48;
        return a1;
      }
    }

    else
    {
      if (v45[5])
      {
        v47 = *(a2 + v45[5]);
      }

      else
      {
        v47 = 1;
      }

      *(a1 + 96) = v47;
    }

    v49 = v45[4];
    if (v49)
    {
      v48 = *(a2 + v49);
    }

    else
    {
      v48 = 1;
    }

    goto LABEL_79;
  }

  return a1;
}

char *AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo(char *result, int a2)
{
  v2 = 0;
  v3 = 2;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v2 = a2 != 5;
      v3 = 4;
      goto LABEL_23;
    }

    v4 = 3;
    if (a2 == 8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v3 = 2;
    v6 = a2 == 7;
    if (a2 == 7)
    {
      v2 = 0;
    }

    else
    {
      v2 = v7;
    }

    goto LABEL_21;
  }

  if (a2 > 2)
  {
    v4 = 2;
    if (a2 == 4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v3 = 2;
    v6 = a2 == 3;
    if (a2 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = v5;
    }

LABEL_21:
    if (v6)
    {
      v3 = v4;
    }

    goto LABEL_23;
  }

  if (!a2)
  {
LABEL_6:
    v3 = 1;
    goto LABEL_23;
  }

  if (a2 == 1)
  {
    v2 = 1;
    goto LABEL_6;
  }

LABEL_23:
  *result = v3;
  result[1] = v2;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(uint64_t a1, int a2)
{
  if (*(a1 + 79) != 255)
  {
    return 4;
  }

  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 1;
  }

  v4 = a1 + 112;
  result = 1;
  do
  {
    v5 = __clz(__rbit32(v3));
    v6 = *(*(v4 + 8 * v5) + 32);
    if (v6 == 18)
    {
      v7 = a2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v6 - 2;
    if (!v7)
    {
      v8 = 7;
    }

    if (v8 <= 0x14)
    {
      v9 = dword_20E716468[v8];
      v10 = result > v9;
      if (result <= v9)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (!v10 && v8 <= 0x14)
      {
        result = dword_20E716468[v8];
      }
    }

    v12 = 1 << v5;
    v13 = v12 == v3;
    v3 ^= v12;
  }

  while (!v13);
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x16)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x41F3C0) != 0)
  {
    return 2 * a2;
  }

  if (((1 << a1) & 0x3C0000) != 0)
  {
    return 4;
  }

  if (((1 << a1) & 0x20C00) != 0)
  {
    return 4 * a2;
  }

LABEL_8:
  if (a1 - 2 >= 4)
  {
    return 0;
  }

  return a2;
}

uint64_t AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(uint64_t result)
{
  v1 = result;
  if (*(result + 208))
  {
    v2 = 128;
  }

  else
  {
    v2 = 64;
  }

  v82 = v2;
  v3 = *(result + 88) & 0xFFFFFFFE;
  v4 = v3 == 2;
  v81 = *(result + 79);
  v71 = result;
  if (*(result + 208))
  {
    v76 = 0;
  }

  else
  {
    if (v3 == 2)
    {
      result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(result, 0);
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1;
    v7 = *(v1 + 40);
    if (v7)
    {
      v8 = v3;
      v9 = 0;
      v10 = v6 + 112;
      do
      {
        v11 = __clz(__rbit32(v7 | 0x100));
        v12 = 1 << v11;
        if (((1 << v11) & v81) != 0)
        {
          v13 = *(v10 + 8 * v11);
          if (*(v13 + 32) == 18)
          {
            v14 = 9;
          }

          else
          {
            v14 = *(v13 + 32);
          }

          result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v14, *(v13 + 28));
          v15 = v5;
          if (v8 != 2)
          {
            if (v14 - 2 > 0x14)
            {
              v15 = 0;
            }

            else
            {
              v15 = dword_20E716468[v14 - 2];
            }
          }

          v9 = ((v9 + v15 - 1) & -v15) + result;
        }

        else
        {
          v9 = ((v9 + 3) & 0xFFFFFFFC) + 16;
        }

        v7 &= ~v12;
      }

      while (v7);
      v76 = v9 > 0x40;
      v1 = v71;
      v3 = v8;
    }

    else
    {
      v76 = 0;
      v1 = v6;
    }
  }

  if (v81 == 255)
  {
    v16 = 0;
    v17 = v1;
    v18 = *(v1 + 40);
    v19 = v17 + 112;
    do
    {
      v20 = v18 != 0;
      if (!v18)
      {
        break;
      }

      v21 = __clz(__rbit32(v18));
      v22 = *(v19 + 8 * v21);
      v23 = *(v22 + 32) == 18 ? 9 : *(v22 + 32);
      v24 = v23 - 2 > 0x14 ? 0 : dword_20E716468[v23 - 2];
      v25 = (v16 + v24 - 1) & -v24;
      result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v23, *(v22 + 28));
      v16 = v25 + result;
      v20 = 1;
      v18 ^= 1 << v21;
    }

    while (v16 <= v82);
    v1 = v71;
  }

  else
  {
    v20 = 0;
  }

  if (v3 == 2)
  {
    result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::calculateWorstCaseAlignment(v1, v20);
    v72 = result;
    v75 = result;
  }

  else
  {
    v75 = 0;
    v72 = 4;
  }

  memset(v90, 0, sizeof(v90));
  v26 = v1;
  v27 = *(v1 + 40);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v74 = v26 + 112;
    v73 = (v81 != 255) | v4 | v20;
    v79 = v3;
    do
    {
      v32 = __clz(__rbit32(v27));
      v33 = v90 + v32;
      v34 = 1 << v32;
      v83 = v28;
      v84 = v30;
      if (((1 << v32) & v81) != 0)
      {
        v77 = v29;
        v78 = v31;
        v80 = v4;
        v35 = *(v74 + 8 * v32);
        v37 = v35[7];
        v36 = v35[8];
        if (v36 == 18)
        {
          v38 = 9;
        }

        else
        {
          v38 = v35[8];
        }

        if (v73 & 1 | (v36 != 18))
        {
          v39 = v35[8];
        }

        else
        {
          v39 = 9;
        }

        v40 = v39 != v38;
        if (v39 == 3)
        {
          v41 = v35[21] != 0;
          if (v38 == 3)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v32;
          }

          v43 = v35[7];
        }

        else
        {
          if (v39 == v38)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v32;
          }

          v45 = v39 != v38;
          v46 = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v39, v35[7]);
          v40 = v45;
          v43 = v46;
          v41 = 0;
        }

        v44 = v75;
        if (v79 != 2)
        {
          if (v39 - 2 > 0x14)
          {
            v44 = 0;
          }

          else
          {
            v44 = dword_20E716468[v39 - 2];
          }
        }

        v31 = v42 | v78;
        v47 = v35[19];
        v85[0] = v39;
        v85[1] = v37;
        v86 = v41;
        v87 = v47;
        v88 = v40;
        v89 = 1;
        result = AGCDrawBuffer::setTextureFormat(v90 + v32, v85);
        v3 = v79;
        v4 = v80;
        v29 = v77;
      }

      else
      {
        LOBYTE(v85[0]) = 0;
        v89 = 0;
        result = AGCDrawBuffer::setTextureFormat(v90 + v32, v85);
        v43 = 16;
        v44 = v72;
      }

      v28 = v83;
      v48 = (v44 - 1 + v83) & -v44;
      v30 = v84 | (v48 + v43 > v82);
      v49 = (v44 - 1 + v29) & -v44;
      if (v84 & 1 | (v48 + v43 > v82))
      {
        v29 = v49 + v43;
      }

      else
      {
        v28 = v48 + v43;
      }

      v4 |= ((1 << v32) & v81) == 0;
      if (v32)
      {
        v50 = 1;
      }

      else
      {
        v50 = v3 == 2;
      }

      v51 = v50;
      if (v4 & 1) != 0 && (v51)
      {
        v52 = *v33 | 0xFF000;
      }

      else
      {
        v53 = v49 + v82;
        if (!(v84 & 1 | (v48 + v43 > v82)))
        {
          v53 = (v44 - 1 + v83) & -v44;
        }

        v52 = *v33 & 0xFFF00FFF | (v53 << 12);
      }

      if (((v3 == 2) | v30) & v76)
      {
        v54 = 0;
      }

      else
      {
        v54 = 0x100000;
      }

      *v33 = v52 & 0xFE0FFFFF | v54;
      v50 = v34 == v27;
      v27 ^= v34;
    }

    while (!v50);
  }

  else
  {
    v31 = 0;
    LOBYTE(v30) = 0;
    v29 = 0;
    v28 = 0;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v57 = *(v71 + v55 + 80);
    if (v57 != -1)
    {
      v58 = *(v90 + v57);
      if ((v58 & 0x1F) != 0)
      {
        *(v71 + 4 * v55) = v58;
        v56 |= 1 << v55;
      }
    }

    ++v55;
  }

  while (v55 != 8);
  v59 = v30 & 1;
  if (v30)
  {
    v60 = v82;
  }

  else
  {
    v60 = v28;
  }

  v61 = (v60 + 7) & 0x1FFFFFFF8;
  if (v61 >= v82)
  {
    v61 = v82;
  }

  if (v61 <= 8)
  {
    LODWORD(v61) = 8;
  }

  if (v30)
  {
    v62 = *(v71 + 208);
    v59 = v62;
  }

  else
  {
    v62 = 1;
  }

  if (((*(v71 + 79) == 255) & (v4 ^ 1) & v62) != 0)
  {
    v63 = v61 | 0x10000;
  }

  else
  {
    v63 = 0;
  }

  v64 = *(v71 + 32);
  v65 = v64 | 0x1FF000;
  v66 = v64 & 0xFFE00FFF | ((v63 & 0x1FF) << 12);
  if ((v63 & 0x10000) != 0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v65;
  }

  v68 = v67 & 0xFFFFF000 | (((27 - __clz(*(v71 + 96))) & 3) << 8) & 0xF300 | (((27 - __clz(*(v71 + 97))) & 3) << 10) | v56;
  if (v30)
  {
    v69 = 6291456;
  }

  else
  {
    v69 = 0x400000;
  }

  if (v59 & 1 | ((v30 & 1) == 0))
  {
    v70 = v68 & 0xE09FFFFF | v69;
  }

  else
  {
    v70 = v68;
  }

  *(v71 + 32) = v70 & 0xE0FFFFFF;
  *(v71 + 100) = v61;
  *(v71 + 104) = v29;
  *(v71 + 44) = v31;
  return result;
}

uint64_t AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(int a1, char a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (a2)
  {
    if ((a2 & 2) != 0)
    {
      v4 = 8;
    }

    else
    {
      v4 = v3;
    }

    if (a1 != 4)
    {
      return v4;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 2;
      }

      if (a1 == 2)
      {
        if ((a2 & 2) != 0)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      return -1;
    }

    if (a1 == 3)
    {
      return 5;
    }

    if (a1 != 4)
    {
      return -1;
    }
  }

  return v3;
}

void *AGCTargetImpl<AGX::G13::Classes,AGX::G13::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 1;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v36 = 67305985;
  v37 = 1541;
  v38 = 7;
  v39 = 0x100000000;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  bzero(&v30, 0x28uLL);
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xF)
  {
    goto LABEL_13;
  }

  v12 = v10[7];
  if (v10[7])
  {
    v13 = *(a1 + v12);
    v14 = (a1 + v12 + v13);
    v15 = *v14;
    if (v15)
    {
      v28 = a2;
      v29 = a3;
      v16 = 0;
      v17 = DWORD2(v32);
      v18 = a1 + v12 + v13;
      do
      {
        v19 = &v18[4 * v16];
        v20 = *(v19 + 1);
        v21 = v14 + v20 - *&v19[v20 + 4];
        if (*(v21 + 2) >= 5u)
        {
          v22 = *(v21 + 4);
          if (v22)
          {
            v23 = v14 + v20 + v22;
            if (*(v23 + 2))
            {
              *(v43 + v16) = AGX::G13::TextureFormatTable::chooseTextureFormatCPP(*(v23 + 2), v9);
              v17 |= 1 << v16;
            }
          }
        }

        if (v16 > 6)
        {
          break;
        }

        ++v16;
        ++v14;
      }

      while (v16 < v15);
      DWORD2(v32) = v17;
      a2 = v28;
      a3 = v29;
LABEL_13:
      HIBYTE(v34) = -1;
      if (v11 <= 0xA)
      {
        v24 = 1;
        LOBYTE(v40) = 1;
LABEL_22:
        HIBYTE(v40) = v24;
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  HIBYTE(v34) = -1;
LABEL_16:
  if (v10[5])
  {
    v25 = *(a1 + v10[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v40) = v25;
  HIBYTE(v40) = v25;
  if (v11 >= 0xD)
  {
    if (v10[6])
    {
      v24 = *(a1 + v10[6]);
      if (v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v30);
  v26 = v31;
  *v8 = v30;
  *(v8 + 16) = v26;
  *(v8 + 32) = v32;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) = *(a4 + 100) & 0x8BFFFEFF | 0x100;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateComputeProgramKey@<X0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 120);
  if ((a4 + 120) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  v11 = *(a4 + 56) & 0xFFFFC73B;
  *(a4 + 52) = *(a4 + 52) & 0x8BFFFEFF | 0x100;
  *(a4 + 56) = v11;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = a1;
  v54 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v17 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v18 = a8 + 232;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  v37 = v18;
  v43 = 0x706050403020100;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v44 = 0x100000000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v50);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v50, v15);
  v20 = v51;
  if (a9 == 1)
  {
    v20 = 2;
  }

  LODWORD(v44) = v20;
  v45 = v53;
  v32 = v9;
  v33 = a2;
  v31 = v15;
  if (v20 == 1)
  {
    v43 = v52[4];
    v21 = v52;
  }

  else
  {
    v49 = v20 == 2;
    v21 = v50;
  }

  v22 = 0;
  v23 = 0;
  for (i = 0; i != 8; ++i)
  {
    v25 = 1 << i;
    if ((v10 - 1) >= 2)
    {
      v26 = *&v21[4 * i];
      if (v26 != 263)
      {
        v23 |= v25;
        if (!v26)
        {
          continue;
        }

        *(v48 + i) = AGX::G13::TextureFormatTable::chooseTextureFormatCPP(v26, v19);
      }
    }

    v22 |= v25;
  }

  HIBYTE(v42) = v23;
  DWORD2(v40) = v22;
  v12 = a4;
  v11 = a5;
  v13 = a3;
  v9 = v32;
  a2 = v33;
  v15 = v31;
LABEL_15:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v38);
  v27 = v38;
  v28 = v39;
  *v17 = v38;
  *(v17 + 16) = v28;
  *(v17 + 32) = v40;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, v15, v10, v9, a9, v27);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (a2)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v29;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, v13);
  if (v37 != v12)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v37, *v12, v12[1], (v12[1] - *v12) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) = *(a8 + 100) & 0x8BFFFEFF | 0x100;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

void AGX::Impl::FragmentProgramKey::setSerializedDescriptor(AGX::Impl::FragmentProgramKey *this, dispatch_data_t data)
{
  if (data)
  {
    v4 = 0;
    buffer_ptr = 0;
    v3 = dispatch_data_create_map(data, &buffer_ptr, &v4);
    std::string::append((this + 200), buffer_ptr, v4);
    dispatch_release(v3);
  }
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateMeshProgramKey@<X0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v25 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v24;
  v18 = *&v25.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v25.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  result = (a8 + 128);
  if ((a8 + 128) != a7)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v22;
  v23 = *(a8 + 56) & 0xFFFFF1FF;
  *(a8 + 52) = *(a8 + 52) & 0x8BFFFEFF | 0x100;
  *(a8 + 56) = v23;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateObjectProgramKey@<X0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a6 + 128);
  if ((a6 + 128) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  v15 = *(a6 + 56) & 0xFFFFFC7F;
  *(a6 + 52) = *(a6 + 52) & 0x8BFFFEFF | 0x100;
  *(a6 + 56) = v15;
  return result;
}

void AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(std::string *a1, dispatch_data_t data)
{
  if (data)
  {
    v4 = 0;
    buffer_ptr = 0;
    v3 = dispatch_data_create_map(data, &buffer_ptr, &v4);
    std::string::append(a1 + 3, buffer_ptr, v4);
    dispatch_release(v3);
  }
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G13::Classes,AGX::G13::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) = *(a7 + 52) & 0x8BFFFEFF | 0x100;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

void AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(uint64_t a1, dispatch_data_t data)
{
  if (data)
  {
    v4 = 0;
    buffer_ptr = 0;
    v3 = dispatch_data_create_map(data, &buffer_ptr, &v4);
    std::string::append((a1 + 64), buffer_ptr, v4);
    dispatch_release(v3);
  }
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G14::Encoders,AGX::G14::Classes,AGX::G14::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v5 = *a2;
    v6 = a2 - v5;
    v7 = *(a2 - v5);
    if (v7 < 5)
    {
      goto LABEL_68;
    }

    v8 = -v5;
    v9 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v10 = *(a2 + v9);
      v52 = a2 + v9;
      v11 = *(a2 + v9 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v9 + v10;
        v51 = *(a2 + v9);
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_52;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_52;
          }

          v19 = a2 + v14 + v15 + v18;
          if (!*(v19 + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 8 * v13 + 112) = AGX::G14::TextureFormatTable::chooseTextureFormatCPP(*(v19 + 2), v4);
          v20 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v21 = v15 - *(v16 + 1);
          v22 = *(a2 + v14 + v21 + 4);
          if (v22 < 0x19)
          {
            v24 = 0;
            v23 = 0;
            if (v22 < 0xF)
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(a2 + v14 + v21 + 28))
            {
              v23 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 28) + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v22 >= 0x1B && *(a2 + v14 + v21 + 30))
            {
              v24 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 30) + 4);
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = *(a2 + v14 + v21 + 18);
          if (v25 && *(a2 + v14 + v15 + v25 + 4))
          {
            *(a1 + 48) |= v20;
            if ((v24 & 0xFE) == 2)
            {
              v26 = 1 << v13;
            }

            else
            {
              v26 = 0;
            }

            *(a1 + 68) |= v26;
            v27 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v27 + 2) >= 0x11u && (v28 = *(v27 + 10)) != 0)
            {
              v29 = *(a2 + v14 + v15 + v28 + 4);
            }

            else
            {
              v29 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v29);
          }

          v30 = 0;
          if (v23 == 2)
          {
            v31 = 1 << v13;
          }

          else
          {
            v31 = 0;
          }

          *(a1 + 56) |= v31;
          if (!v24)
          {
LABEL_33:
            v24 = 0;
            v30 = 1 << v13;
          }

          *(a1 + 52) |= v30;
          if (v23 == 1)
          {
            v32 = 1 << v13;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(a1 + 64);
          v34 = *(a1 + 60) | v32;
          if ((v24 & 0xFFFFFFFD) == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          *(a1 + 60) = v34;
          *(a1 + 64) = v35 | v33;
          if (v24 == 4)
          {
            v36 = 1 << v13;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 72) |= v36;
          v37 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v37 + 2) < 7u || (v38 = *(v37 + 5)) == 0)
          {
            *(a1 + v12 + 176) = 2;
            goto LABEL_49;
          }

          v39 = *(a2 + v14 + v15 + v38 + 4);
          AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v39);
          if (v39 <= 8)
          {
            if (((1 << v39) & 0x168) != 0)
            {
              *(a1 + 78) |= v20;
LABEL_49:
              v40 = v51;
              goto LABEL_50;
            }

            if (v39 == 1)
            {
              *(a1 + 78) |= v20;
              v41 = 1;
              goto LABEL_61;
            }

            if (v39 == 7)
            {
              v41 = 3;
LABEL_61:
              v40 = v51;
              goto LABEL_51;
            }
          }

          v40 = v51;
          if (!v39)
          {
            v41 = 1;
            goto LABEL_51;
          }

LABEL_50:
          v41 = 2;
LABEL_51:
          *(a1 + 76) |= v41 << v12;
          v11 = *&v52[v40];
LABEL_52:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v42 = *a2;
          v8 = -v42;
          v7 = *(a2 - v42);
          break;
        }
      }
    }

    if (v7 >= 7 && *(a2 + v8 + 6) && (v43 = *(a2 + *(a2 + v8 + 6)), (v43 & 0xFFFFFFFE) != 0))
    {
      v44 = (a1 + 92);
      if (v43 > 0x7FF)
      {
        LODWORD(v43) = 2048;
      }
    }

    else
    {
LABEL_68:
      v44 = (a1 + 92);
      LODWORD(v43) = 1;
    }

    *v44 = v43;
    v45 = (a2 - *a2);
    v46 = *v45;
    if (v46 < 0xB)
    {
      v48 = 1;
      *(a1 + 96) = 1;
      if (v46 < 9)
      {
LABEL_79:
        *(a1 + 97) = v48;
        return a1;
      }
    }

    else
    {
      if (v45[5])
      {
        v47 = *(a2 + v45[5]);
      }

      else
      {
        v47 = 1;
      }

      *(a1 + 96) = v47;
    }

    v49 = v45[4];
    if (v49)
    {
      v48 = *(a2 + v49);
    }

    else
    {
      v48 = 1;
    }

    goto LABEL_79;
  }

  return a1;
}

void *AGCTargetImpl<AGX::G14::Classes,AGX::G14::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 1;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G14::Encoders,AGX::G14::Classes,AGX::G14::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G14::Encoders,AGX::G14::Classes,AGX::G14::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v36 = 67305985;
  v37 = 1541;
  v38 = 7;
  v39 = 0x100000000;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  bzero(&v30, 0x28uLL);
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xF)
  {
    goto LABEL_13;
  }

  v12 = v10[7];
  if (v10[7])
  {
    v13 = *(a1 + v12);
    v14 = (a1 + v12 + v13);
    v15 = *v14;
    if (v15)
    {
      v28 = a2;
      v29 = a3;
      v16 = 0;
      v17 = DWORD2(v32);
      v18 = a1 + v12 + v13;
      do
      {
        v19 = &v18[4 * v16];
        v20 = *(v19 + 1);
        v21 = v14 + v20 - *&v19[v20 + 4];
        if (*(v21 + 2) >= 5u)
        {
          v22 = *(v21 + 4);
          if (v22)
          {
            v23 = v14 + v20 + v22;
            if (*(v23 + 2))
            {
              *(v43 + v16) = AGX::G14::TextureFormatTable::chooseTextureFormatCPP(*(v23 + 2), v9);
              v17 |= 1 << v16;
            }
          }
        }

        if (v16 > 6)
        {
          break;
        }

        ++v16;
        ++v14;
      }

      while (v16 < v15);
      DWORD2(v32) = v17;
      a2 = v28;
      a3 = v29;
LABEL_13:
      HIBYTE(v34) = -1;
      if (v11 <= 0xA)
      {
        v24 = 1;
        LOBYTE(v40) = 1;
LABEL_22:
        HIBYTE(v40) = v24;
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  HIBYTE(v34) = -1;
LABEL_16:
  if (v10[5])
  {
    v25 = *(a1 + v10[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v40) = v25;
  HIBYTE(v40) = v25;
  if (v11 >= 0xD)
  {
    if (v10[6])
    {
      v24 = *(a1 + v10[6]);
      if (v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v30);
  v26 = v31;
  *v8 = v30;
  *(v8 + 16) = v26;
  *(v8 + 32) = v32;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) = *(a4 + 100) & 0x8BFFFEFF | 0x100;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateComputeProgramKey@<X0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 120);
  if ((a4 + 120) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  v11 = *(a4 + 56) & 0xFFFFC73B;
  *(a4 + 52) = *(a4 + 52) & 0x8BFFFEFF | 0x100;
  *(a4 + 56) = v11;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = a1;
  v54 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v17 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v18 = a8 + 232;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  v37 = v18;
  v43 = 0x706050403020100;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v44 = 0x100000000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v50);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v50, v15);
  v20 = v51;
  if (a9 == 1)
  {
    v20 = 2;
  }

  LODWORD(v44) = v20;
  v45 = v53;
  v32 = v9;
  v33 = a2;
  v31 = v15;
  if (v20 == 1)
  {
    v43 = v52[4];
    v21 = v52;
  }

  else
  {
    v49 = v20 == 2;
    v21 = v50;
  }

  v22 = 0;
  v23 = 0;
  for (i = 0; i != 8; ++i)
  {
    v25 = 1 << i;
    if ((v10 - 1) >= 2)
    {
      v26 = *&v21[4 * i];
      if (v26 != 263)
      {
        v23 |= v25;
        if (!v26)
        {
          continue;
        }

        *(v48 + i) = AGX::G14::TextureFormatTable::chooseTextureFormatCPP(v26, v19);
      }
    }

    v22 |= v25;
  }

  HIBYTE(v42) = v23;
  DWORD2(v40) = v22;
  v12 = a4;
  v11 = a5;
  v13 = a3;
  v9 = v32;
  a2 = v33;
  v15 = v31;
LABEL_15:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v38);
  v27 = v38;
  v28 = v39;
  *v17 = v38;
  *(v17 + 16) = v28;
  *(v17 + 32) = v40;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, v15, v10, v9, a9, v27);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (a2)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v29;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, v13);
  if (v37 != v12)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v37, *v12, v12[1], (v12[1] - *v12) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) = *(a8 + 100) & 0x8BFFFEFF | 0x100;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateMeshProgramKey@<X0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v25 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v24;
  v18 = *&v25.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v25.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  result = (a8 + 128);
  if ((a8 + 128) != a7)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v22;
  v23 = *(a8 + 56) & 0xFFFFF1FF;
  *(a8 + 52) = *(a8 + 52) & 0x8BFFFEFF | 0x100;
  *(a8 + 56) = v23;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateObjectProgramKey@<X0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a6 + 128);
  if ((a6 + 128) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  v15 = *(a6 + 56) & 0xFFFFFC7F;
  *(a6 + 52) = *(a6 + 52) & 0x8BFFFEFF | 0x100;
  *(a6 + 56) = v15;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14::Classes,AGX::G14::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) = *(a7 + 52) & 0x8BFFFEFF | 0x100;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G14X::Encoders,AGX::G14X::Classes,AGX::G14X::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v5 = *a2;
    v6 = a2 - v5;
    v7 = *(a2 - v5);
    if (v7 < 5)
    {
      goto LABEL_68;
    }

    v8 = -v5;
    v9 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v10 = *(a2 + v9);
      v52 = a2 + v9;
      v11 = *(a2 + v9 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v9 + v10;
        v51 = *(a2 + v9);
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_52;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_52;
          }

          v19 = a2 + v14 + v15 + v18;
          if (!*(v19 + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 8 * v13 + 112) = AGX::G14X::TextureFormatTable::chooseTextureFormatCPP(*(v19 + 2), v4);
          v20 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v21 = v15 - *(v16 + 1);
          v22 = *(a2 + v14 + v21 + 4);
          if (v22 < 0x19)
          {
            v24 = 0;
            v23 = 0;
            if (v22 < 0xF)
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(a2 + v14 + v21 + 28))
            {
              v23 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 28) + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v22 >= 0x1B && *(a2 + v14 + v21 + 30))
            {
              v24 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 30) + 4);
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = *(a2 + v14 + v21 + 18);
          if (v25 && *(a2 + v14 + v15 + v25 + 4))
          {
            *(a1 + 48) |= v20;
            if ((v24 & 0xFE) == 2)
            {
              v26 = 1 << v13;
            }

            else
            {
              v26 = 0;
            }

            *(a1 + 68) |= v26;
            v27 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v27 + 2) >= 0x11u && (v28 = *(v27 + 10)) != 0)
            {
              v29 = *(a2 + v14 + v15 + v28 + 4);
            }

            else
            {
              v29 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v29);
          }

          v30 = 0;
          if (v23 == 2)
          {
            v31 = 1 << v13;
          }

          else
          {
            v31 = 0;
          }

          *(a1 + 56) |= v31;
          if (!v24)
          {
LABEL_33:
            v24 = 0;
            v30 = 1 << v13;
          }

          *(a1 + 52) |= v30;
          if (v23 == 1)
          {
            v32 = 1 << v13;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(a1 + 64);
          v34 = *(a1 + 60) | v32;
          if ((v24 & 0xFFFFFFFD) == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          *(a1 + 60) = v34;
          *(a1 + 64) = v35 | v33;
          if (v24 == 4)
          {
            v36 = 1 << v13;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 72) |= v36;
          v37 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v37 + 2) < 7u || (v38 = *(v37 + 5)) == 0)
          {
            *(a1 + v12 + 176) = 2;
            goto LABEL_49;
          }

          v39 = *(a2 + v14 + v15 + v38 + 4);
          AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v39);
          if (v39 <= 8)
          {
            if (((1 << v39) & 0x168) != 0)
            {
              *(a1 + 78) |= v20;
LABEL_49:
              v40 = v51;
              goto LABEL_50;
            }

            if (v39 == 1)
            {
              *(a1 + 78) |= v20;
              v41 = 1;
              goto LABEL_61;
            }

            if (v39 == 7)
            {
              v41 = 3;
LABEL_61:
              v40 = v51;
              goto LABEL_51;
            }
          }

          v40 = v51;
          if (!v39)
          {
            v41 = 1;
            goto LABEL_51;
          }

LABEL_50:
          v41 = 2;
LABEL_51:
          *(a1 + 76) |= v41 << v12;
          v11 = *&v52[v40];
LABEL_52:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v42 = *a2;
          v8 = -v42;
          v7 = *(a2 - v42);
          break;
        }
      }
    }

    if (v7 >= 7 && *(a2 + v8 + 6) && (v43 = *(a2 + *(a2 + v8 + 6)), (v43 & 0xFFFFFFFE) != 0))
    {
      v44 = (a1 + 92);
      if (v43 > 0x7FF)
      {
        LODWORD(v43) = 2048;
      }
    }

    else
    {
LABEL_68:
      v44 = (a1 + 92);
      LODWORD(v43) = 1;
    }

    *v44 = v43;
    v45 = (a2 - *a2);
    v46 = *v45;
    if (v46 < 0xB)
    {
      v48 = 1;
      *(a1 + 96) = 1;
      if (v46 < 9)
      {
LABEL_79:
        *(a1 + 97) = v48;
        return a1;
      }
    }

    else
    {
      if (v45[5])
      {
        v47 = *(a2 + v45[5]);
      }

      else
      {
        v47 = 1;
      }

      *(a1 + 96) = v47;
    }

    v49 = v45[4];
    if (v49)
    {
      v48 = *(a2 + v49);
    }

    else
    {
      v48 = 1;
    }

    goto LABEL_79;
  }

  return a1;
}

void *AGCTargetImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 1;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G14X::Encoders,AGX::G14X::Classes,AGX::G14X::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G14X::Encoders,AGX::G14X::Classes,AGX::G14X::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v36 = 67305985;
  v37 = 1541;
  v38 = 7;
  v39 = 0x100000000;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  bzero(&v30, 0x28uLL);
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xF)
  {
    goto LABEL_13;
  }

  v12 = v10[7];
  if (v10[7])
  {
    v13 = *(a1 + v12);
    v14 = (a1 + v12 + v13);
    v15 = *v14;
    if (v15)
    {
      v28 = a2;
      v29 = a3;
      v16 = 0;
      v17 = DWORD2(v32);
      v18 = a1 + v12 + v13;
      do
      {
        v19 = &v18[4 * v16];
        v20 = *(v19 + 1);
        v21 = v14 + v20 - *&v19[v20 + 4];
        if (*(v21 + 2) >= 5u)
        {
          v22 = *(v21 + 4);
          if (v22)
          {
            v23 = v14 + v20 + v22;
            if (*(v23 + 2))
            {
              *(v43 + v16) = AGX::G14X::TextureFormatTable::chooseTextureFormatCPP(*(v23 + 2), v9);
              v17 |= 1 << v16;
            }
          }
        }

        if (v16 > 6)
        {
          break;
        }

        ++v16;
        ++v14;
      }

      while (v16 < v15);
      DWORD2(v32) = v17;
      a2 = v28;
      a3 = v29;
LABEL_13:
      HIBYTE(v34) = -1;
      if (v11 <= 0xA)
      {
        v24 = 1;
        LOBYTE(v40) = 1;
LABEL_22:
        HIBYTE(v40) = v24;
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  HIBYTE(v34) = -1;
LABEL_16:
  if (v10[5])
  {
    v25 = *(a1 + v10[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v40) = v25;
  HIBYTE(v40) = v25;
  if (v11 >= 0xD)
  {
    if (v10[6])
    {
      v24 = *(a1 + v10[6]);
      if (v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v30);
  v26 = v31;
  *v8 = v30;
  *(v8 + 16) = v26;
  *(v8 + 32) = v32;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) = *(a4 + 100) & 0x8BFFFEFF | 0x100;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateComputeProgramKey@<X0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 120);
  if ((a4 + 120) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  v11 = *(a4 + 56) & 0xFFFFC73B;
  *(a4 + 52) = *(a4 + 52) & 0x8BFFFEFF | 0x100;
  *(a4 + 56) = v11;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = a1;
  v54 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v17 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v18 = a8 + 232;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  v37 = v18;
  v43 = 0x706050403020100;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v44 = 0x100000000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v50);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v50, v15);
  v20 = v51;
  if (a9 == 1)
  {
    v20 = 2;
  }

  LODWORD(v44) = v20;
  v45 = v53;
  v32 = v9;
  v33 = a2;
  v31 = v15;
  if (v20 == 1)
  {
    v43 = v52[4];
    v21 = v52;
  }

  else
  {
    v49 = v20 == 2;
    v21 = v50;
  }

  v22 = 0;
  v23 = 0;
  for (i = 0; i != 8; ++i)
  {
    v25 = 1 << i;
    if ((v10 - 1) >= 2)
    {
      v26 = *&v21[4 * i];
      if (v26 != 263)
      {
        v23 |= v25;
        if (!v26)
        {
          continue;
        }

        *(v48 + i) = AGX::G14X::TextureFormatTable::chooseTextureFormatCPP(v26, v19);
      }
    }

    v22 |= v25;
  }

  HIBYTE(v42) = v23;
  DWORD2(v40) = v22;
  v12 = a4;
  v11 = a5;
  v13 = a3;
  v9 = v32;
  a2 = v33;
  v15 = v31;
LABEL_15:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v38);
  v27 = v38;
  v28 = v39;
  *v17 = v38;
  *(v17 + 16) = v28;
  *(v17 + 32) = v40;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, v15, v10, v9, a9, v27);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (a2)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v29;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, v13);
  if (v37 != v12)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v37, *v12, v12[1], (v12[1] - *v12) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) = *(a8 + 100) & 0x8BFFFEFF | 0x100;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateMeshProgramKey@<X0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v25 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v24;
  v18 = *&v25.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v25.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  result = (a8 + 128);
  if ((a8 + 128) != a7)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v22;
  v23 = *(a8 + 56) & 0xFFFFF1FF;
  *(a8 + 52) = *(a8 + 52) & 0x8BFFFEFF | 0x100;
  *(a8 + 56) = v23;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateObjectProgramKey@<X0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a6 + 128);
  if ((a6 + 128) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  v15 = *(a6 + 56) & 0xFFFFFC7F;
  *(a6 + 52) = *(a6 + 52) & 0x8BFFFEFF | 0x100;
  *(a6 + 56) = v15;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G14X::Classes,AGX::G14X::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) = *(a7 + 52) & 0x8BFFFEFF | 0x100;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v4 = *a2;
    v5 = a2 - v4;
    v6 = *(a2 - v4);
    if (v6 < 5)
    {
      goto LABEL_69;
    }

    v7 = -v4;
    v8 = *(v5 + 2);
    if (*(v5 + 2))
    {
      v9 = a2 + v8;
      v10 = *(a2 + v8);
      v11 = *(a2 + v8 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v8 + v10;
        v53 = *(a2 + v8);
        v54 = a2 + v8;
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_53;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = *(a2 + v14 + v15 + v18 + 4);
          if (!v19)
          {
            goto LABEL_53;
          }

          v20 = &texFormatUnsupported;
          if (v19 <= 0x275)
          {
            v20 = *(&off_277E224B8 + v19 - 1);
          }

          *(a1 + 8 * v13 + 112) = v20;
          v21 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v22 = v15 - *(v16 + 1);
          v23 = a2 + v14 + v22;
          v24 = *(v23 + 2);
          if (v24 < 0x19)
          {
            v27 = 0;
            v26 = 0;
            if (v24 < 0xF)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v25 = *(v23 + 14);
            if (v25)
            {
              v26 = *(a2 + v14 + v15 + v25 + 4);
            }

            else
            {
              v26 = 0;
            }

            if (v24 >= 0x1B && *(a2 + v14 + v22 + 30))
            {
              v27 = *(a2 + v14 + v15 + *(a2 + v14 + v22 + 30) + 4);
            }

            else
            {
              v27 = 0;
            }
          }

          v28 = *(a2 + v14 + v22 + 18);
          if (v28 && *(a2 + v14 + v15 + v28 + 4))
          {
            *(a1 + 48) |= v21;
            if ((v27 & 0xFE) == 2)
            {
              v29 = 1 << v13;
            }

            else
            {
              v29 = 0;
            }

            *(a1 + 68) |= v29;
            v30 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v30 + 2) >= 0x11u && (v31 = *(v30 + 10)) != 0)
            {
              v32 = *(a2 + v14 + v15 + v31 + 4);
            }

            else
            {
              v32 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v32);
            v10 = v53;
            v9 = v54;
          }

          v33 = 0;
          if (v26 == 2)
          {
            v34 = 1 << v13;
          }

          else
          {
            v34 = 0;
          }

          *(a1 + 56) |= v34;
          if (!v27)
          {
LABEL_35:
            v27 = 0;
            v33 = 1 << v13;
          }

          *(a1 + 52) |= v33;
          if (v26 == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          v36 = *(a1 + 64);
          v37 = *(a1 + 60) | v35;
          if ((v27 & 0xFFFFFFFD) == 1)
          {
            v38 = 1 << v13;
          }

          else
          {
            v38 = 0;
          }

          *(a1 + 60) = v37;
          *(a1 + 64) = v38 | v36;
          if (v27 == 4)
          {
            v39 = 1 << v13;
          }

          else
          {
            v39 = 0;
          }

          *(a1 + 72) |= v39;
          v40 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v40 + 2) >= 7u && (v41 = *(v40 + 5)) != 0)
          {
            v42 = *(a2 + v14 + v15 + v41 + 4);
            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v42);
            v10 = v53;
            v9 = v54;
            if (v42 > 8)
            {
              goto LABEL_59;
            }

            if (((1 << v42) & 0x168) == 0)
            {
              if (v42 == 1)
              {
                *(a1 + 78) |= v21;
LABEL_62:
                v43 = 1;
                goto LABEL_52;
              }

              if (v42 == 7)
              {
                v43 = 3;
                goto LABEL_52;
              }

LABEL_59:
              if (!v42)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            *(a1 + 78) |= v21;
          }

          else
          {
            *(a1 + v12 + 176) = 2;
          }

LABEL_51:
          v43 = 2;
LABEL_52:
          *(a1 + 76) |= v43 << v12;
          v11 = *&v9[v10];
LABEL_53:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v44 = *a2;
          v7 = -v44;
          v6 = *(a2 - v44);
          break;
        }
      }
    }

    if (v6 >= 7 && *(a2 + v7 + 6) && (v45 = *(a2 + *(a2 + v7 + 6)), (v45 & 0xFFFFFFFE) != 0))
    {
      v46 = (a1 + 92);
      if (v45 > 0x7FF)
      {
        LODWORD(v45) = 2048;
      }
    }

    else
    {
LABEL_69:
      v46 = (a1 + 92);
      LODWORD(v45) = 1;
    }

    *v46 = v45;
    v47 = (a2 - *a2);
    v48 = *v47;
    if (v48 < 0xB)
    {
      v50 = 1;
      *(a1 + 96) = 1;
      if (v48 < 9)
      {
LABEL_80:
        *(a1 + 97) = v50;
        return a1;
      }
    }

    else
    {
      if (v47[5])
      {
        v49 = *(a2 + v47[5]);
      }

      else
      {
        v49 = 1;
      }

      *(a1 + 96) = v49;
    }

    v51 = v47[4];
    if (v51)
    {
      v50 = *(a2 + v51);
    }

    else
    {
      v50 = 1;
    }

    goto LABEL_80;
  }

  return a1;
}

uint64_t AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(uint64_t result)
{
  v1 = result;
  v68 = *(result + 88) & 0xFFFFFFFE;
  v2 = v68 == 2;
  v62 = *(result + 79);
  if (v62 == 255)
  {
    v4 = 0;
    v5 = *(result + 40);
    do
    {
      v3 = v5 != 0;
      if (!v5)
      {
        break;
      }

      v6 = __clz(__rbit32(v5));
      v7 = *(v1 + 112 + 8 * v6);
      v8 = *(v7 + 32) == 18 ? 9 : *(v7 + 32);
      v9 = v8 - 2 > 0x14 ? 0 : dword_20E716468[v8 - 2];
      v10 = (v4 + v9 - 1) & -v9;
      result = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v8, *(v7 + 28));
      v4 = v10 + result;
      v3 = 1;
      v5 ^= 1 << v6;
    }

    while ((v10 + result) < 0x101);
  }

  else
  {
    v3 = 0;
  }

  if (v68 == 2)
  {
    if (v62 == 255)
    {
      v11 = *(v1 + 40);
      if (*(v1 + 40))
      {
        v12 = 1;
        do
        {
          v13 = __clz(__rbit32(v11));
          v14 = *(*(v1 + 112 + 8 * v13) + 32);
          v15 = v14 != 18 || v3;
          v16 = v14 - 2;
          if (!v15)
          {
            v16 = 7;
          }

          if (v16 <= 0x14)
          {
            if (v12 > dword_20E716468[v16])
            {
              v17 = 1;
            }

            else
            {
              v12 = 0;
              v17 = v16 > 0x14;
            }

            if (!v17)
            {
              v12 = dword_20E716468[v16];
            }
          }

          v18 = 1 << v13;
          v19 = v12;
          v42 = v18 == v11;
          v11 ^= v18;
        }

        while (!v42);
      }

      else
      {
        v12 = 1;
        v19 = 1;
      }
    }

    else
    {
      v12 = 4;
      v19 = 4;
    }
  }

  else
  {
    v19 = 0;
    v12 = 4;
  }

  memset(v74, 0, sizeof(v74));
  v20 = *(v1 + 40);
  if (*(v1 + 40))
  {
    v61 = v19;
    v21 = 0;
    v22 = 0;
    v67 = 0;
    v57 = v1;
    v60 = v1 + 112;
    LODWORD(v1) = 0;
    v58 = v12;
    v59 = v3 && v62 == 255 && v68 != 2;
    do
    {
      v23 = __clz(__rbit32(v20));
      v24 = v74 + v23;
      v25 = 1 << v23;
      if (((1 << v23) & v62) != 0)
      {
        v63 = v1;
        v64 = v22;
        v65 = v21;
        v66 = v2;
        v26 = *(v60 + 8 * v23);
        v28 = v26[7];
        v27 = v26[8];
        if (v27 == 18)
        {
          v29 = v59;
        }

        else
        {
          v29 = 1;
        }

        if (v27 == 18)
        {
          v30 = 9;
        }

        else
        {
          v30 = v26[8];
        }

        if (v29)
        {
          v31 = v26[8];
        }

        else
        {
          v31 = 9;
        }

        v32 = v31 != v30;
        if (v31 == 3)
        {
          v33 = v26[21] != 0;
          if (v30 == 3)
          {
            v34 = 0;
          }

          else
          {
            v34 = 1 << v23;
          }

          v35 = v26[7];
        }

        else
        {
          if (v31 == v30)
          {
            v34 = 0;
          }

          else
          {
            v34 = 1 << v23;
          }

          v37 = v31 != v30;
          v38 = AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::partitionSizeFromFormatAndCompCount(v31, v26[7]);
          v32 = v37;
          v35 = v38;
          v33 = 0;
        }

        v36 = v61;
        if (v68 != 2)
        {
          if (v31 - 2 > 0x14)
          {
            v36 = 0;
          }

          else
          {
            v36 = dword_20E716468[v31 - 2];
          }
        }

        v67 |= v34;
        v39 = v26[19];
        v69[0] = v31;
        v69[1] = v28;
        v70 = v33;
        v71 = v39;
        v72 = v32;
        v73 = 1;
        result = AGCDrawBuffer::setTextureFormat(v74 + v23, v69);
        v21 = v65;
        v2 = v66;
        v22 = v64;
        LODWORD(v1) = v63;
      }

      else
      {
        LOBYTE(v69[0]) = 0;
        v73 = 0;
        result = AGCDrawBuffer::setTextureFormat(v74 + v23, v69);
        v35 = 16;
        v36 = v58;
      }

      v40 = (v36 - 1 + v1) & -v36;
      v22 |= (v40 + v35) > 0x100;
      v41 = (v36 - 1 + v21) & -v36;
      if (v22)
      {
        v21 = v41 + v35;
        v1 = v1;
      }

      else
      {
        v1 = (v40 + v35);
      }

      v2 |= ((1 << v23) & v62) == 0;
      if (v23)
      {
        v42 = 1;
      }

      else
      {
        v42 = v68 == 2;
      }

      v43 = v42;
      if (v2 & 1) != 0 && (v43)
      {
        v44 = *v24 | 0xFF000;
      }

      else
      {
        if ((v22 & 1) == 0)
        {
          LOBYTE(v41) = v40;
        }

        v44 = *v24 & 0xFFF00FFF | (v41 << 12);
      }

      *v24 = v44 & 0xFE0FFFFF | 0x100000;
      v42 = v25 == v20;
      v20 ^= v25;
    }

    while (!v42);
    v45 = (v1 + 7) & 0x1FFFFFFF8;
    v1 = v57;
    v46 = v67;
  }

  else
  {
    v46 = 0;
    LOBYTE(v22) = 0;
    v21 = 0;
    v45 = 0;
  }

  v47 = 0;
  v48 = 0;
  do
  {
    v49 = *(v1 + v47 + 80);
    if (v49 != -1)
    {
      v50 = *(v74 + v49);
      if ((v50 & 0x1F) != 0)
      {
        *(v1 + 4 * v47) = v50;
        v48 |= 1 << v47;
      }
    }

    ++v47;
  }

  while (v47 != 8);
  if (v45 >= 0x100)
  {
    v45 = 256;
  }

  if (v45 <= 8)
  {
    LODWORD(v45) = 8;
  }

  if (v22)
  {
    LODWORD(v45) = 256;
    v51 = *(v1 + 208);
    v52 = v51;
  }

  else
  {
    v52 = 0;
    v51 = 1;
  }

  if ((*(v1 + 79) != 255) | v2 & 1 || (v51 & 1) == 0)
  {
    v53 = *(v1 + 32) | 0x1FF000;
  }

  else
  {
    v53 = *(v1 + 32) & 0xFFE00FFF | (v45 << 12);
  }

  v54 = v53 & 0xFFFFF000 | (((27 - __clz(*(v1 + 96))) & 3) << 8) & 0xF300 | (((27 - __clz(*(v1 + 97))) & 3) << 10) | v48;
  if (v22)
  {
    v55 = 6291456;
  }

  else
  {
    v55 = 0x400000;
  }

  if (v52 & 1 | ((v22 & 1) == 0))
  {
    v56 = v54 & 0xE09FFFFF | v55;
  }

  else
  {
    v56 = v54;
  }

  *(v1 + 32) = v56 & 0xE0FFFFFF;
  *(v1 + 100) = v45;
  *(v1 + 104) = v21;
  *(v1 + 44) = v46;
  return result;
}

void *AGCTargetImpl<AGX::G15::Classes,AGX::G15::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 0;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v35 = 67305985;
  v36 = 1541;
  v37 = 7;
  v38 = 0x100000000;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  bzero(&v29, 0x28uLL);
  if (!a1)
  {
    goto LABEL_25;
  }

  v9 = (a1 - *a1);
  v10 = *v9;
  if (v10 < 0xF)
  {
    goto LABEL_15;
  }

  v11 = v9[7];
  if (v9[7])
  {
    v12 = *(a1 + v11);
    v13 = (a1 + v11 + v12);
    v14 = *v13;
    if (v14)
    {
      v15 = 0;
      v16 = DWORD2(v31);
      v17 = a1 + v11 + v12;
      do
      {
        v18 = &v17[4 * v15];
        v19 = *(v18 + 1);
        v20 = v13 + v19 - *&v18[v19 + 4];
        if (*(v20 + 2) >= 5u)
        {
          v21 = *(v20 + 4);
          if (v21)
          {
            v22 = *(v13 + v19 + v21 + 4);
            if (v22)
            {
              v23 = &texFormatUnsupported;
              if (v22 <= 0x275)
              {
                v23 = *(&off_277E224B8 + v22 - 1);
              }

              *(v42 + v15) = v23;
              v16 |= 1 << v15;
            }
          }
        }

        if (v15 > 6)
        {
          break;
        }

        ++v15;
        ++v13;
      }

      while (v15 < v14);
      DWORD2(v31) = v16;
LABEL_15:
      HIBYTE(v33) = -1;
      if (v10 <= 0xA)
      {
        LOBYTE(v24) = 1;
        LOBYTE(v39) = 1;
LABEL_24:
        HIBYTE(v39) = v24;
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  HIBYTE(v33) = -1;
LABEL_18:
  if (v9[5])
  {
    v25 = *(a1 + v9[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v39) = v25;
  HIBYTE(v39) = v25;
  if (v10 >= 0xD)
  {
    v26 = v9[6];
    if (v26)
    {
      v24 = *(a1 + v26);
      if (v24)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v29);
  v27 = v30;
  *v8 = v29;
  *(v8 + 16) = v27;
  *(v8 + 32) = v31;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) &= 0x8BFFFEFF;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateComputeProgramKey@<D0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  if ((a4 + 120) != a3)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 120), *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  result = vand_s8(*(a4 + 52), 0xFFFFC73B8BFFFEFFLL);
  *(a4 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v13 = a2;
  v51 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v16 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v17 = (a8 + 232);
  *(a8 + 248) = 0u;
  *(a8 + 264) = 0u;
  v40 = 0x706050403020100;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v41 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  v18 = a6;
  v19 = a7;
  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v47);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v47, a1);
  v21 = v48;
  if (a9 == 1)
  {
    v21 = 2;
  }

  LODWORD(v41) = v21;
  v42 = v50;
  if (v21 == 1)
  {
    v40 = v49[4];
    v22 = v49;
  }

  else
  {
    v46 = v21 == 2;
    v22 = v47;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v13 = a2;
  v9 = v19;
  do
  {
    v26 = 1 << v25;
    if ((v18 - 1) >= 2)
    {
      v27 = *&v22[4 * v25];
      if (v27 != 263)
      {
        v24 |= v26;
        if (!v27)
        {
          goto LABEL_15;
        }

        v28 = &texFormatUnsupported;
        if (v27 <= 0x275)
        {
          v28 = *(&off_277E224B8 + v27 - 1);
        }

        *(v45 + v25) = v28;
      }
    }

    v23 |= v26;
LABEL_15:
    ++v25;
  }

  while (v25 != 8);
  HIBYTE(v39) = v24;
  DWORD2(v37) = v23;
  v10 = v18;
  v11 = a5;
LABEL_17:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v35);
  v29 = v35;
  v30 = v36;
  *v16 = v35;
  *(v16 + 16) = v30;
  *(v16 + 32) = v37;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, a1, v10, v9, a9, v29);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (v13)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v31;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, a3);
  if (v17 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v17, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) &= 0x8BFFFEFF;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateMeshProgramKey@<D0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v24 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v23;
  v18 = *&v24.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v24.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  if ((a8 + 128) != a7)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 128), *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v21;
  result = vand_s8(*(a8 + 52), 0xFFFFF1FF8BFFFEFFLL);
  *(a8 + 52) = result;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateObjectProgramKey@<D0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  if ((a6 + 128) != a5)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a6 + 128), *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  result = vand_s8(*(a6 + 52), 0xFFFFFC7F8BFFFEFFLL);
  *(a6 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15::Classes,AGX::G15::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) &= 0x8BFFFEFF;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G15_AGX2::Encoders,AGX::G15_AGX2::Classes,AGX::G15_AGX2::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v5 = *a2;
    v6 = a2 - v5;
    v7 = *(a2 - v5);
    if (v7 < 5)
    {
      goto LABEL_68;
    }

    v8 = -v5;
    v9 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v10 = *(a2 + v9);
      v52 = a2 + v9;
      v11 = *(a2 + v9 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v9 + v10;
        v51 = *(a2 + v9);
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_52;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_52;
          }

          v19 = a2 + v14 + v15 + v18;
          if (!*(v19 + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 8 * v13 + 112) = AGX::G15_AGX2::TextureFormatTable::chooseTextureFormatCPP(*(v19 + 2), v4);
          v20 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v21 = v15 - *(v16 + 1);
          v22 = *(a2 + v14 + v21 + 4);
          if (v22 < 0x19)
          {
            v24 = 0;
            v23 = 0;
            if (v22 < 0xF)
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(a2 + v14 + v21 + 28))
            {
              v23 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 28) + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v22 >= 0x1B && *(a2 + v14 + v21 + 30))
            {
              v24 = *(a2 + v14 + v15 + *(a2 + v14 + v21 + 30) + 4);
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = *(a2 + v14 + v21 + 18);
          if (v25 && *(a2 + v14 + v15 + v25 + 4))
          {
            *(a1 + 48) |= v20;
            if ((v24 & 0xFE) == 2)
            {
              v26 = 1 << v13;
            }

            else
            {
              v26 = 0;
            }

            *(a1 + 68) |= v26;
            v27 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v27 + 2) >= 0x11u && (v28 = *(v27 + 10)) != 0)
            {
              v29 = *(a2 + v14 + v15 + v28 + 4);
            }

            else
            {
              v29 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v29);
          }

          v30 = 0;
          if (v23 == 2)
          {
            v31 = 1 << v13;
          }

          else
          {
            v31 = 0;
          }

          *(a1 + 56) |= v31;
          if (!v24)
          {
LABEL_33:
            v24 = 0;
            v30 = 1 << v13;
          }

          *(a1 + 52) |= v30;
          if (v23 == 1)
          {
            v32 = 1 << v13;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(a1 + 64);
          v34 = *(a1 + 60) | v32;
          if ((v24 & 0xFFFFFFFD) == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          *(a1 + 60) = v34;
          *(a1 + 64) = v35 | v33;
          if (v24 == 4)
          {
            v36 = 1 << v13;
          }

          else
          {
            v36 = 0;
          }

          *(a1 + 72) |= v36;
          v37 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v37 + 2) < 7u || (v38 = *(v37 + 5)) == 0)
          {
            *(a1 + v12 + 176) = 2;
            goto LABEL_49;
          }

          v39 = *(a2 + v14 + v15 + v38 + 4);
          AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v39);
          if (v39 <= 8)
          {
            if (((1 << v39) & 0x168) != 0)
            {
              *(a1 + 78) |= v20;
LABEL_49:
              v40 = v51;
              goto LABEL_50;
            }

            if (v39 == 1)
            {
              *(a1 + 78) |= v20;
              v41 = 1;
              goto LABEL_61;
            }

            if (v39 == 7)
            {
              v41 = 3;
LABEL_61:
              v40 = v51;
              goto LABEL_51;
            }
          }

          v40 = v51;
          if (!v39)
          {
            v41 = 1;
            goto LABEL_51;
          }

LABEL_50:
          v41 = 2;
LABEL_51:
          *(a1 + 76) |= v41 << v12;
          v11 = *&v52[v40];
LABEL_52:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v42 = *a2;
          v8 = -v42;
          v7 = *(a2 - v42);
          break;
        }
      }
    }

    if (v7 >= 7 && *(a2 + v8 + 6) && (v43 = *(a2 + *(a2 + v8 + 6)), (v43 & 0xFFFFFFFE) != 0))
    {
      v44 = (a1 + 92);
      if (v43 > 0x7FF)
      {
        LODWORD(v43) = 2048;
      }
    }

    else
    {
LABEL_68:
      v44 = (a1 + 92);
      LODWORD(v43) = 1;
    }

    *v44 = v43;
    v45 = (a2 - *a2);
    v46 = *v45;
    if (v46 < 0xB)
    {
      v48 = 1;
      *(a1 + 96) = 1;
      if (v46 < 9)
      {
LABEL_79:
        *(a1 + 97) = v48;
        return a1;
      }
    }

    else
    {
      if (v45[5])
      {
        v47 = *(a2 + v45[5]);
      }

      else
      {
        v47 = 1;
      }

      *(a1 + 96) = v47;
    }

    v49 = v45[4];
    if (v49)
    {
      v48 = *(a2 + v49);
    }

    else
    {
      v48 = 1;
    }

    goto LABEL_79;
  }

  return a1;
}

void *AGCTargetImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 1;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G15_AGX2::Encoders,AGX::G15_AGX2::Classes,AGX::G15_AGX2::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G15_AGX2::Encoders,AGX::G15_AGX2::Classes,AGX::G15_AGX2::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 768;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v36 = 67305985;
  v37 = 1541;
  v38 = 7;
  v39 = 0x100000000;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  bzero(&v30, 0x28uLL);
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = (a1 - *a1);
  v11 = *v10;
  if (v11 < 0xF)
  {
    goto LABEL_13;
  }

  v12 = v10[7];
  if (v10[7])
  {
    v13 = *(a1 + v12);
    v14 = (a1 + v12 + v13);
    v15 = *v14;
    if (v15)
    {
      v28 = a2;
      v29 = a3;
      v16 = 0;
      v17 = DWORD2(v32);
      v18 = a1 + v12 + v13;
      do
      {
        v19 = &v18[4 * v16];
        v20 = *(v19 + 1);
        v21 = v14 + v20 - *&v19[v20 + 4];
        if (*(v21 + 2) >= 5u)
        {
          v22 = *(v21 + 4);
          if (v22)
          {
            v23 = v14 + v20 + v22;
            if (*(v23 + 2))
            {
              *(v43 + v16) = AGX::G15_AGX2::TextureFormatTable::chooseTextureFormatCPP(*(v23 + 2), v9);
              v17 |= 1 << v16;
            }
          }
        }

        if (v16 > 6)
        {
          break;
        }

        ++v16;
        ++v14;
      }

      while (v16 < v15);
      DWORD2(v32) = v17;
      a2 = v28;
      a3 = v29;
LABEL_13:
      HIBYTE(v34) = -1;
      if (v11 <= 0xA)
      {
        v24 = 1;
        LOBYTE(v40) = 1;
LABEL_22:
        HIBYTE(v40) = v24;
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  HIBYTE(v34) = -1;
LABEL_16:
  if (v10[5])
  {
    v25 = *(a1 + v10[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v40) = v25;
  HIBYTE(v40) = v25;
  if (v11 >= 0xD)
  {
    if (v10[6])
    {
      v24 = *(a1 + v10[6]);
      if (v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v30);
  v26 = v31;
  *v8 = v30;
  *(v8 + 16) = v26;
  *(v8 + 32) = v32;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) = *(a4 + 100) & 0x8BFFFEFF | 0x100;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateComputeProgramKey@<X0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 120);
  if ((a4 + 120) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  v11 = *(a4 + 56) & 0xFFFFC73B;
  *(a4 + 52) = *(a4 + 52) & 0x8BFFFEFF | 0x100;
  *(a4 + 56) = v11;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = a1;
  v54 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v17 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v18 = a8 + 232;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  v37 = v18;
  v43 = 0x706050403020100;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v44 = 0x100000000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v50);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v50, v15);
  v20 = v51;
  if (a9 == 1)
  {
    v20 = 2;
  }

  LODWORD(v44) = v20;
  v45 = v53;
  v32 = v9;
  v33 = a2;
  v31 = v15;
  if (v20 == 1)
  {
    v43 = v52[4];
    v21 = v52;
  }

  else
  {
    v49 = v20 == 2;
    v21 = v50;
  }

  v22 = 0;
  v23 = 0;
  for (i = 0; i != 8; ++i)
  {
    v25 = 1 << i;
    if ((v10 - 1) >= 2)
    {
      v26 = *&v21[4 * i];
      if (v26 != 263)
      {
        v23 |= v25;
        if (!v26)
        {
          continue;
        }

        *(v48 + i) = AGX::G15_AGX2::TextureFormatTable::chooseTextureFormatCPP(v26, v19);
      }
    }

    v22 |= v25;
  }

  HIBYTE(v42) = v23;
  DWORD2(v40) = v22;
  v12 = a4;
  v11 = a5;
  v13 = a3;
  v9 = v32;
  a2 = v33;
  v15 = v31;
LABEL_15:
  AGX::FramebufferCompilerConfigGen3<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::buildDrawBufferState(&v38);
  v27 = v38;
  v28 = v39;
  *v17 = v38;
  *(v17 + 16) = v28;
  *(v17 + 32) = v40;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, v15, v10, v9, a9, v27);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (a2)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v29;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, v13);
  if (v37 != v12)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v37, *v12, v12[1], (v12[1] - *v12) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) = *(a8 + 100) & 0x8BFFFEFF | 0x100;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateMeshProgramKey@<X0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v25 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v24;
  v18 = *&v25.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v25.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  result = (a8 + 128);
  if ((a8 + 128) != a7)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v22;
  v23 = *(a8 + 56) & 0xFFFFF1FF;
  *(a8 + 52) = *(a8 + 52) & 0x8BFFFEFF | 0x100;
  *(a8 + 56) = v23;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateObjectProgramKey@<X0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a6 + 128);
  if ((a6 + 128) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  v15 = *(a6 + 56) & 0xFFFFFC7F;
  *(a6 + 52) = *(a6 + 52) & 0x8BFFFEFF | 0x100;
  *(a6 + 56) = v15;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G15_AGX2::Classes,AGX::G15_AGX2::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) = *(a7 + 52) & 0x8BFFFEFF | 0x100;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::G16::Encoders,AGX::G16::Classes,AGX::G16::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v4 = *a2;
    v5 = a2 - v4;
    v6 = *(a2 - v4);
    if (v6 < 5)
    {
      goto LABEL_69;
    }

    v7 = -v4;
    v8 = *(v5 + 2);
    if (*(v5 + 2))
    {
      v9 = a2 + v8;
      v10 = *(a2 + v8);
      v11 = *(a2 + v8 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v8 + v10;
        v53 = *(a2 + v8);
        v54 = a2 + v8;
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_53;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = *(a2 + v14 + v15 + v18 + 4);
          if (!v19)
          {
            goto LABEL_53;
          }

          v20 = &texFormatUnsupported;
          if (v19 <= 0x275)
          {
            v20 = *(&off_277E23860 + v19 - 1);
          }

          *(a1 + 8 * v13 + 112) = v20;
          v21 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v22 = v15 - *(v16 + 1);
          v23 = a2 + v14 + v22;
          v24 = *(v23 + 2);
          if (v24 < 0x19)
          {
            v27 = 0;
            v26 = 0;
            if (v24 < 0xF)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v25 = *(v23 + 14);
            if (v25)
            {
              v26 = *(a2 + v14 + v15 + v25 + 4);
            }

            else
            {
              v26 = 0;
            }

            if (v24 >= 0x1B && *(a2 + v14 + v22 + 30))
            {
              v27 = *(a2 + v14 + v15 + *(a2 + v14 + v22 + 30) + 4);
            }

            else
            {
              v27 = 0;
            }
          }

          v28 = *(a2 + v14 + v22 + 18);
          if (v28 && *(a2 + v14 + v15 + v28 + 4))
          {
            *(a1 + 48) |= v21;
            if ((v27 & 0xFE) == 2)
            {
              v29 = 1 << v13;
            }

            else
            {
              v29 = 0;
            }

            *(a1 + 68) |= v29;
            v30 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v30 + 2) >= 0x11u && (v31 = *(v30 + 10)) != 0)
            {
              v32 = *(a2 + v14 + v15 + v31 + 4);
            }

            else
            {
              v32 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v32);
            v10 = v53;
            v9 = v54;
          }

          v33 = 0;
          if (v26 == 2)
          {
            v34 = 1 << v13;
          }

          else
          {
            v34 = 0;
          }

          *(a1 + 56) |= v34;
          if (!v27)
          {
LABEL_35:
            v27 = 0;
            v33 = 1 << v13;
          }

          *(a1 + 52) |= v33;
          if (v26 == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          v36 = *(a1 + 64);
          v37 = *(a1 + 60) | v35;
          if ((v27 & 0xFFFFFFFD) == 1)
          {
            v38 = 1 << v13;
          }

          else
          {
            v38 = 0;
          }

          *(a1 + 60) = v37;
          *(a1 + 64) = v38 | v36;
          if (v27 == 4)
          {
            v39 = 1 << v13;
          }

          else
          {
            v39 = 0;
          }

          *(a1 + 72) |= v39;
          v40 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v40 + 2) >= 7u && (v41 = *(v40 + 5)) != 0)
          {
            v42 = *(a2 + v14 + v15 + v41 + 4);
            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v42);
            v10 = v53;
            v9 = v54;
            if (v42 > 8)
            {
              goto LABEL_59;
            }

            if (((1 << v42) & 0x168) == 0)
            {
              if (v42 == 1)
              {
                *(a1 + 78) |= v21;
LABEL_62:
                v43 = 1;
                goto LABEL_52;
              }

              if (v42 == 7)
              {
                v43 = 3;
                goto LABEL_52;
              }

LABEL_59:
              if (!v42)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            *(a1 + 78) |= v21;
          }

          else
          {
            *(a1 + v12 + 176) = 2;
          }

LABEL_51:
          v43 = 2;
LABEL_52:
          *(a1 + 76) |= v43 << v12;
          v11 = *&v9[v10];
LABEL_53:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v44 = *a2;
          v7 = -v44;
          v6 = *(a2 - v44);
          break;
        }
      }
    }

    if (v6 >= 7 && *(a2 + v7 + 6) && (v45 = *(a2 + *(a2 + v7 + 6)), (v45 & 0xFFFFFFFE) != 0))
    {
      v46 = (a1 + 92);
      if (v45 > 0x7FF)
      {
        LODWORD(v45) = 2048;
      }
    }

    else
    {
LABEL_69:
      v46 = (a1 + 92);
      LODWORD(v45) = 1;
    }

    *v46 = v45;
    v47 = (a2 - *a2);
    v48 = *v47;
    if (v48 < 0xB)
    {
      v50 = 1;
      *(a1 + 96) = 1;
      if (v48 < 9)
      {
LABEL_80:
        *(a1 + 97) = v50;
        return a1;
      }
    }

    else
    {
      if (v47[5])
      {
        v49 = *(a2 + v47[5]);
      }

      else
      {
        v49 = 1;
      }

      *(a1 + 96) = v49;
    }

    v51 = v47[4];
    if (v51)
    {
      v50 = *(a2 + v51);
    }

    else
    {
      v50 = 1;
    }

    goto LABEL_80;
  }

  return a1;
}

void *AGCTargetImpl<AGX::G16::Classes,AGX::G16::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 0;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::G16::Encoders,AGX::G16::Classes,AGX::G16::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::G16::Encoders,AGX::G16::Classes,AGX::G16::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v35 = 67305985;
  v36 = 1541;
  v37 = 7;
  v38 = 0x100000000;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  bzero(&v29, 0x28uLL);
  if (!a1)
  {
    goto LABEL_25;
  }

  v9 = (a1 - *a1);
  v10 = *v9;
  if (v10 < 0xF)
  {
    goto LABEL_15;
  }

  v11 = v9[7];
  if (v9[7])
  {
    v12 = *(a1 + v11);
    v13 = (a1 + v11 + v12);
    v14 = *v13;
    if (v14)
    {
      v15 = 0;
      v16 = DWORD2(v31);
      v17 = a1 + v11 + v12;
      do
      {
        v18 = &v17[4 * v15];
        v19 = *(v18 + 1);
        v20 = v13 + v19 - *&v18[v19 + 4];
        if (*(v20 + 2) >= 5u)
        {
          v21 = *(v20 + 4);
          if (v21)
          {
            v22 = *(v13 + v19 + v21 + 4);
            if (v22)
            {
              v23 = &texFormatUnsupported;
              if (v22 <= 0x275)
              {
                v23 = *(&off_277E23860 + v22 - 1);
              }

              *(v42 + v15) = v23;
              v16 |= 1 << v15;
            }
          }
        }

        if (v15 > 6)
        {
          break;
        }

        ++v15;
        ++v13;
      }

      while (v15 < v14);
      DWORD2(v31) = v16;
LABEL_15:
      HIBYTE(v33) = -1;
      if (v10 <= 0xA)
      {
        LOBYTE(v24) = 1;
        LOBYTE(v39) = 1;
LABEL_24:
        HIBYTE(v39) = v24;
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  HIBYTE(v33) = -1;
LABEL_18:
  if (v9[5])
  {
    v25 = *(a1 + v9[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v39) = v25;
  HIBYTE(v39) = v25;
  if (v10 >= 0xD)
  {
    v26 = v9[6];
    if (v26)
    {
      v24 = *(a1 + v26);
      if (v24)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v29);
  v27 = v30;
  *v8 = v29;
  *(v8 + 16) = v27;
  *(v8 + 32) = v31;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) &= 0x8BFFFEFF;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateComputeProgramKey@<D0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  if ((a4 + 120) != a3)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 120), *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  result = vand_s8(*(a4 + 52), 0xFFFFC73B8BFFFEFFLL);
  *(a4 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v13 = a2;
  v51 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v16 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v17 = (a8 + 232);
  *(a8 + 248) = 0u;
  *(a8 + 264) = 0u;
  v40 = 0x706050403020100;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v41 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  v18 = a6;
  v19 = a7;
  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v47);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v47, a1);
  v21 = v48;
  if (a9 == 1)
  {
    v21 = 2;
  }

  LODWORD(v41) = v21;
  v42 = v50;
  if (v21 == 1)
  {
    v40 = v49[4];
    v22 = v49;
  }

  else
  {
    v46 = v21 == 2;
    v22 = v47;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v13 = a2;
  v9 = v19;
  do
  {
    v26 = 1 << v25;
    if ((v18 - 1) >= 2)
    {
      v27 = *&v22[4 * v25];
      if (v27 != 263)
      {
        v24 |= v26;
        if (!v27)
        {
          goto LABEL_15;
        }

        v28 = &texFormatUnsupported;
        if (v27 <= 0x275)
        {
          v28 = *(&off_277E23860 + v27 - 1);
        }

        *(v45 + v25) = v28;
      }
    }

    v23 |= v26;
LABEL_15:
    ++v25;
  }

  while (v25 != 8);
  HIBYTE(v39) = v24;
  DWORD2(v37) = v23;
  v10 = v18;
  v11 = a5;
LABEL_17:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v35);
  v29 = v35;
  v30 = v36;
  *v16 = v35;
  *(v16 + 16) = v30;
  *(v16 + 32) = v37;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, a1, v10, v9, a9, v29);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (v13)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v31;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, a3);
  if (v17 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v17, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) &= 0x8BFFFEFF;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateMeshProgramKey@<D0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v24 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v23;
  v18 = *&v24.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v24.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  if ((a8 + 128) != a7)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 128), *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v21;
  result = vand_s8(*(a8 + 52), 0xFFFFF1FF8BFFFEFFLL);
  *(a8 + 52) = result;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateObjectProgramKey@<D0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  if ((a6 + 128) != a5)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a6 + 128), *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  result = vand_s8(*(a6 + 52), 0xFFFFFC7F8BFFFEFFLL);
  *(a6 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::G16::Classes,AGX::G16::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) &= 0x8BFFFEFF;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::HAL200::Encoders,AGX::HAL200::Classes,AGX::HAL200::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v4 = *a2;
    v5 = a2 - v4;
    v6 = *(a2 - v4);
    if (v6 < 5)
    {
      goto LABEL_69;
    }

    v7 = -v4;
    v8 = *(v5 + 2);
    if (*(v5 + 2))
    {
      v9 = a2 + v8;
      v10 = *(a2 + v8);
      v11 = *(a2 + v8 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v8 + v10;
        v53 = *(a2 + v8);
        v54 = a2 + v8;
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_53;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = *(a2 + v14 + v15 + v18 + 4);
          if (!v19)
          {
            goto LABEL_53;
          }

          v20 = &texFormatUnsupported;
          if (v19 <= 0x285)
          {
            v20 = *(&off_277E24C08 + v19 - 1);
          }

          *(a1 + 8 * v13 + 112) = v20;
          v21 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v22 = v15 - *(v16 + 1);
          v23 = a2 + v14 + v22;
          v24 = *(v23 + 2);
          if (v24 < 0x19)
          {
            v27 = 0;
            v26 = 0;
            if (v24 < 0xF)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v25 = *(v23 + 14);
            if (v25)
            {
              v26 = *(a2 + v14 + v15 + v25 + 4);
            }

            else
            {
              v26 = 0;
            }

            if (v24 >= 0x1B && *(a2 + v14 + v22 + 30))
            {
              v27 = *(a2 + v14 + v15 + *(a2 + v14 + v22 + 30) + 4);
            }

            else
            {
              v27 = 0;
            }
          }

          v28 = *(a2 + v14 + v22 + 18);
          if (v28 && *(a2 + v14 + v15 + v28 + 4))
          {
            *(a1 + 48) |= v21;
            if ((v27 & 0xFE) == 2)
            {
              v29 = 1 << v13;
            }

            else
            {
              v29 = 0;
            }

            *(a1 + 68) |= v29;
            v30 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v30 + 2) >= 0x11u && (v31 = *(v30 + 10)) != 0)
            {
              v32 = *(a2 + v14 + v15 + v31 + 4);
            }

            else
            {
              v32 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v32);
            v10 = v53;
            v9 = v54;
          }

          v33 = 0;
          if (v26 == 2)
          {
            v34 = 1 << v13;
          }

          else
          {
            v34 = 0;
          }

          *(a1 + 56) |= v34;
          if (!v27)
          {
LABEL_35:
            v27 = 0;
            v33 = 1 << v13;
          }

          *(a1 + 52) |= v33;
          if (v26 == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          v36 = *(a1 + 64);
          v37 = *(a1 + 60) | v35;
          if ((v27 & 0xFFFFFFFD) == 1)
          {
            v38 = 1 << v13;
          }

          else
          {
            v38 = 0;
          }

          *(a1 + 60) = v37;
          *(a1 + 64) = v38 | v36;
          if (v27 == 4)
          {
            v39 = 1 << v13;
          }

          else
          {
            v39 = 0;
          }

          *(a1 + 72) |= v39;
          v40 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v40 + 2) >= 7u && (v41 = *(v40 + 5)) != 0)
          {
            v42 = *(a2 + v14 + v15 + v41 + 4);
            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v42);
            v10 = v53;
            v9 = v54;
            if (v42 > 8)
            {
              goto LABEL_59;
            }

            if (((1 << v42) & 0x168) == 0)
            {
              if (v42 == 1)
              {
                *(a1 + 78) |= v21;
LABEL_62:
                v43 = 1;
                goto LABEL_52;
              }

              if (v42 == 7)
              {
                v43 = 3;
                goto LABEL_52;
              }

LABEL_59:
              if (!v42)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            *(a1 + 78) |= v21;
          }

          else
          {
            *(a1 + v12 + 176) = 2;
          }

LABEL_51:
          v43 = 2;
LABEL_52:
          *(a1 + 76) |= v43 << v12;
          v11 = *&v9[v10];
LABEL_53:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v44 = *a2;
          v7 = -v44;
          v6 = *(a2 - v44);
          break;
        }
      }
    }

    if (v6 >= 7 && *(a2 + v7 + 6) && (v45 = *(a2 + *(a2 + v7 + 6)), (v45 & 0xFFFFFFFE) != 0))
    {
      v46 = (a1 + 92);
      if (v45 > 0x7FF)
      {
        LODWORD(v45) = 2048;
      }
    }

    else
    {
LABEL_69:
      v46 = (a1 + 92);
      LODWORD(v45) = 1;
    }

    *v46 = v45;
    v47 = (a2 - *a2);
    v48 = *v47;
    if (v48 < 0xB)
    {
      v50 = 1;
      *(a1 + 96) = 1;
      if (v48 < 9)
      {
LABEL_80:
        *(a1 + 97) = v50;
        return a1;
      }
    }

    else
    {
      if (v47[5])
      {
        v49 = *(a2 + v47[5]);
      }

      else
      {
        v49 = 1;
      }

      *(a1 + 96) = v49;
    }

    v51 = v47[4];
    if (v51)
    {
      v50 = *(a2 + v51);
    }

    else
    {
      v50 = 1;
    }

    goto LABEL_80;
  }

  return a1;
}

void *AGCTargetImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 0;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::HAL200::Encoders,AGX::HAL200::Classes,AGX::HAL200::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::HAL200::Encoders,AGX::HAL200::Classes,AGX::HAL200::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v35 = 67305985;
  v36 = 1541;
  v37 = 7;
  v38 = 0x100000000;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  bzero(&v29, 0x28uLL);
  if (!a1)
  {
    goto LABEL_25;
  }

  v9 = (a1 - *a1);
  v10 = *v9;
  if (v10 < 0xF)
  {
    goto LABEL_15;
  }

  v11 = v9[7];
  if (v9[7])
  {
    v12 = *(a1 + v11);
    v13 = (a1 + v11 + v12);
    v14 = *v13;
    if (v14)
    {
      v15 = 0;
      v16 = DWORD2(v31);
      v17 = a1 + v11 + v12;
      do
      {
        v18 = &v17[4 * v15];
        v19 = *(v18 + 1);
        v20 = v13 + v19 - *&v18[v19 + 4];
        if (*(v20 + 2) >= 5u)
        {
          v21 = *(v20 + 4);
          if (v21)
          {
            v22 = *(v13 + v19 + v21 + 4);
            if (v22)
            {
              v23 = &texFormatUnsupported;
              if (v22 <= 0x285)
              {
                v23 = *(&off_277E24C08 + v22 - 1);
              }

              *(v42 + v15) = v23;
              v16 |= 1 << v15;
            }
          }
        }

        if (v15 > 6)
        {
          break;
        }

        ++v15;
        ++v13;
      }

      while (v15 < v14);
      DWORD2(v31) = v16;
LABEL_15:
      HIBYTE(v33) = -1;
      if (v10 <= 0xA)
      {
        LOBYTE(v24) = 1;
        LOBYTE(v39) = 1;
LABEL_24:
        HIBYTE(v39) = v24;
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  HIBYTE(v33) = -1;
LABEL_18:
  if (v9[5])
  {
    v25 = *(a1 + v9[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v39) = v25;
  HIBYTE(v39) = v25;
  if (v10 >= 0xD)
  {
    v26 = v9[6];
    if (v26)
    {
      v24 = *(a1 + v26);
      if (v24)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v29);
  v27 = v30;
  *v8 = v29;
  *(v8 + 16) = v27;
  *(v8 + 32) = v31;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) &= 0x8BFFFEFF;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateComputeProgramKey@<D0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  if ((a4 + 120) != a3)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 120), *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  result = vand_s8(*(a4 + 52), 0xFFFFC73B8BFFFEFFLL);
  *(a4 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v13 = a2;
  v51 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v16 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v17 = (a8 + 232);
  *(a8 + 248) = 0u;
  *(a8 + 264) = 0u;
  v40 = 0x706050403020100;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v41 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  v18 = a6;
  v19 = a7;
  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v47);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v47, a1);
  v21 = v48;
  if (a9 == 1)
  {
    v21 = 2;
  }

  LODWORD(v41) = v21;
  v42 = v50;
  if (v21 == 1)
  {
    v40 = v49[4];
    v22 = v49;
  }

  else
  {
    v46 = v21 == 2;
    v22 = v47;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v13 = a2;
  v9 = v19;
  do
  {
    v26 = 1 << v25;
    if ((v18 - 1) >= 2)
    {
      v27 = *&v22[4 * v25];
      if (v27 != 263)
      {
        v24 |= v26;
        if (!v27)
        {
          goto LABEL_15;
        }

        v28 = &texFormatUnsupported;
        if (v27 <= 0x285)
        {
          v28 = *(&off_277E24C08 + v27 - 1);
        }

        *(v45 + v25) = v28;
      }
    }

    v23 |= v26;
LABEL_15:
    ++v25;
  }

  while (v25 != 8);
  HIBYTE(v39) = v24;
  DWORD2(v37) = v23;
  v10 = v18;
  v11 = a5;
LABEL_17:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v35);
  v29 = v35;
  v30 = v36;
  *v16 = v35;
  *(v16 + 16) = v30;
  *(v16 + 32) = v37;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, a1, v10, v9, a9, v29);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (v13)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v31;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, a3);
  if (v17 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v17, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) &= 0x8BFFFEFF;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateMeshProgramKey@<D0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v24 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v23;
  v18 = *&v24.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v24.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  if ((a8 + 128) != a7)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 128), *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v21;
  result = vand_s8(*(a8 + 52), 0xFFFFF1FF8BFFFEFFLL);
  *(a8 + 52) = result;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateObjectProgramKey@<D0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  if ((a6 + 128) != a5)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a6 + 128), *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  result = vand_s8(*(a6 + 52), 0xFFFFFC7F8BFFFEFFLL);
  *(a6 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL200::Classes,AGX::HAL200::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) &= 0x8BFFFEFF;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

uint64_t AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfig(uint64_t a1, int *a2)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 81) = 67305985;
  *(a1 + 85) = 1541;
  *(a1 + 87) = 7;
  *(a1 + 88) = 0x100000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  bzero(a1, 0x28uLL);
  if (a2)
  {
    v4 = *a2;
    v5 = a2 - v4;
    v6 = *(a2 - v4);
    if (v6 < 5)
    {
      goto LABEL_69;
    }

    v7 = -v4;
    v8 = *(v5 + 2);
    if (*(v5 + 2))
    {
      v9 = a2 + v8;
      v10 = *(a2 + v8);
      v11 = *(a2 + v8 + v10);
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v8 + v10;
        v53 = *(a2 + v8);
        v54 = a2 + v8;
        while (1)
        {
          v15 = *(a2 + v14 + 4);
          v16 = a2 + v14 + v15;
          v17 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v17 + 2) < 5u)
          {
            goto LABEL_53;
          }

          v18 = *(v17 + 4);
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = *(a2 + v14 + v15 + v18 + 4);
          if (!v19)
          {
            goto LABEL_53;
          }

          v20 = &texFormatUnsupported;
          if (v19 <= 0x28A)
          {
            v20 = *(&off_277E26030 + v19 - 1);
          }

          *(a1 + 8 * v13 + 112) = v20;
          v21 = 1 << v13;
          *(a1 + 40) |= 1 << v13;
          *(a1 + 79) |= 1 << v13;
          v22 = v15 - *(v16 + 1);
          v23 = a2 + v14 + v22;
          v24 = *(v23 + 2);
          if (v24 < 0x19)
          {
            v27 = 0;
            v26 = 0;
            if (v24 < 0xF)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v25 = *(v23 + 14);
            if (v25)
            {
              v26 = *(a2 + v14 + v15 + v25 + 4);
            }

            else
            {
              v26 = 0;
            }

            if (v24 >= 0x1B && *(a2 + v14 + v22 + 30))
            {
              v27 = *(a2 + v14 + v15 + *(a2 + v14 + v22 + 30) + 4);
            }

            else
            {
              v27 = 0;
            }
          }

          v28 = *(a2 + v14 + v22 + 18);
          if (v28 && *(a2 + v14 + v15 + v28 + 4))
          {
            *(a1 + 48) |= v21;
            if ((v27 & 0xFE) == 2)
            {
              v29 = 1 << v13;
            }

            else
            {
              v29 = 0;
            }

            *(a1 + 68) |= v29;
            v30 = a2 + v14 + v15 - *(v16 + 1);
            if (*(v30 + 2) >= 0x11u && (v31 = *(v30 + 10)) != 0)
            {
              v32 = *(a2 + v14 + v15 + v31 + 4);
            }

            else
            {
              v32 = 255;
            }

            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 192), v32);
            v10 = v53;
            v9 = v54;
          }

          v33 = 0;
          if (v26 == 2)
          {
            v34 = 1 << v13;
          }

          else
          {
            v34 = 0;
          }

          *(a1 + 56) |= v34;
          if (!v27)
          {
LABEL_35:
            v27 = 0;
            v33 = 1 << v13;
          }

          *(a1 + 52) |= v33;
          if (v26 == 1)
          {
            v35 = 1 << v13;
          }

          else
          {
            v35 = 0;
          }

          v36 = *(a1 + 64);
          v37 = *(a1 + 60) | v35;
          if ((v27 & 0xFFFFFFFD) == 1)
          {
            v38 = 1 << v13;
          }

          else
          {
            v38 = 0;
          }

          *(a1 + 60) = v37;
          *(a1 + 64) = v38 | v36;
          if (v27 == 4)
          {
            v39 = 1 << v13;
          }

          else
          {
            v39 = 0;
          }

          *(a1 + 72) |= v39;
          v40 = a2 + v14 + v15 - *(v16 + 1);
          if (*(v40 + 2) >= 7u && (v41 = *(v40 + 5)) != 0)
          {
            v42 = *(a2 + v14 + v15 + v41 + 4);
            AGX::FramebufferCompilerConfig<AGX::G13::Encoders,AGX::G13::Classes,AGX::G13::ObjClasses>::populateAttachmentLayoutInfo((a1 + v12 + 176), v42);
            v10 = v53;
            v9 = v54;
            if (v42 > 8)
            {
              goto LABEL_59;
            }

            if (((1 << v42) & 0x168) == 0)
            {
              if (v42 == 1)
              {
                *(a1 + 78) |= v21;
LABEL_62:
                v43 = 1;
                goto LABEL_52;
              }

              if (v42 == 7)
              {
                v43 = 3;
                goto LABEL_52;
              }

LABEL_59:
              if (!v42)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            *(a1 + 78) |= v21;
          }

          else
          {
            *(a1 + v12 + 176) = 2;
          }

LABEL_51:
          v43 = 2;
LABEL_52:
          *(a1 + 76) |= v43 << v12;
          v11 = *&v9[v10];
LABEL_53:
          if (v13 <= 6)
          {
            ++v13;
            v12 += 2;
            v14 += 4;
            if (v13 < v11)
            {
              continue;
            }
          }

          v44 = *a2;
          v7 = -v44;
          v6 = *(a2 - v44);
          break;
        }
      }
    }

    if (v6 >= 7 && *(a2 + v7 + 6) && (v45 = *(a2 + *(a2 + v7 + 6)), (v45 & 0xFFFFFFFE) != 0))
    {
      v46 = (a1 + 92);
      if (v45 > 0x7FF)
      {
        LODWORD(v45) = 2048;
      }
    }

    else
    {
LABEL_69:
      v46 = (a1 + 92);
      LODWORD(v45) = 1;
    }

    *v46 = v45;
    v47 = (a2 - *a2);
    v48 = *v47;
    if (v48 < 0xB)
    {
      v50 = 1;
      *(a1 + 96) = 1;
      if (v48 < 9)
      {
LABEL_80:
        *(a1 + 97) = v50;
        return a1;
      }
    }

    else
    {
      if (v47[5])
      {
        v49 = *(a2 + v47[5]);
      }

      else
      {
        v49 = 1;
      }

      *(a1 + 96) = v49;
    }

    v51 = v47[4];
    if (v51)
    {
      v50 = *(a2 + v51);
    }

    else
    {
      v50 = 1;
    }

    goto LABEL_80;
  }

  return a1;
}

void *AGCTargetImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetLegalizationPasses@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = "air-degenerate-vertex-amplification-emulation";
  v9 = 0;
  v10 = "air-raytracing-emulation,indirect-acceleration-structures";
  v11 = (*(*a1 + 24))(a1);
  v12 = "mtl-fetch-all-unaligned";
  v13 = 1;
  v14 = "air-bfloat-emulation";
  v15 = 0;
  result = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
  v6 = 0;
  v7 = 0;
  *a2 = 0;
  do
  {
    if (LOBYTE((&v8)[v6 + 1]) == 1)
    {
      result[v7++] = (&v8)[v6];
      *a2 = v7;
    }

    v6 += 2;
  }

  while (v6 != 8);
  *a3 = result;
  return result;
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateBVHBuilderProgramKey@<X0>(uint64_t a1@<X8>, int *a2@<X1>)
{
  *(a1 + 8) = 24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF830;
  *(a1 + 40) = 0;
  return AGX::BVHBuilderProgramKey::initializeWithDescriptor(a1, a2);
}

uint64_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v39 = a2 + 40;
  *a2 = &unk_2825BF7B0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfig(v42, a1);
  result = AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v4 = v43;
  v41 = v43;
  v38 = v50;
  v5 = v44;
  v35 = v45;
  v31 = (v43 >> 10) & 3;
  v6 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v31 << 32) | 0x40000000000000;
  *(a2 + 112) = v6;
  if ((~v4 & 0x1FF000) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = v4;
  v8 = v6 & 0xFFFFE00FFFFFFFFFLL | ((v4 >> 12) << 36);
  v29 = a2;
  *(a2 + 112) = v8;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = (v7 >> 12) & 0x1FF;
    v33 = v49;
    v32 = v48 & ~v47 | v46;
    v30 = v47 & ~v48 | v46;
    do
    {
      v12 = __clz(__rbit32(v5));
      v13 = *(v40 + v12);
      if ((~v13 & 0xFF000) == 0)
      {
        goto LABEL_16;
      }

      v14 = (v13 >> 12) / v34;
      v15 = *(v39 + 4 * v12) & 0xFFFFFF00 | v14;
      *(v39 + 4 * v12) = v15;
      v16 = v13 & 0x1F;
      if (v16 == 23)
      {
        goto LABEL_16;
      }

      v17 = v10;
      v18 = v15 & 0xE30000FF;
      result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12]), HIBYTE(v51[v12]), v38);
      *(v39 + 4 * v12) = v18 & 0xE3FFE0FF | (result << 16) & 0xE3FFFFFF | ((v13 & 0x1F) << 8) | (v13 >> 5 << 26);
      v19 = 1 << v12;
      v9 |= 1 << v12;
      v10 = (1 << v12) & v32 | v17;
      v20 = v33 & (1 << v12);
      v11 |= v20;
      if ((v35 & (1 << v12)) != 0)
      {
        v37 = v9;
        v36 = (v13 << 21) & 0x1C000000;
        v21 = v13 & 0x100;
        v22 = v12 + 8;
        if (((v31 != 0) & (v21 >> 8)) != 0)
        {
          v23 = 0x1000000;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 | *(v39 + 4 * (v12 + 8)) & 0xE2000000;
        v25 = v10;
        result = AGX::PBEStateEncoderGen7<kAGXRevG13>::StateFields::getDimensionality(LOBYTE(v51[v12 + 8]), HIBYTE(v51[v12 + 8]), v38);
        v26 = v25;
        *(v39 + 4 * v22) = v24 | (result << 16) | (v16 << 8) | v36 | v14;
        v9 = v37 | (256 << v12);
        v10 = v26 | (((v30 >> v12) & 1) << v22);
        v11 |= (v20 != 0) << v22;
      }

      v27 = v19 == v5;
      v5 ^= v19;
    }

    while (!v27);
    v28 = v29;
    v8 = *(v29 + 112);
  }

  else
  {
    LOWORD(v11) = 0;
    LOWORD(v10) = 0;
    LOWORD(v9) = 0;
    v28 = a2;
  }

  *(v28 + 120) = v9;
  *(v28 + 122) = v10;
  *(v28 + 124) = v11;
  *(v28 + 112) = v8 & 0xFFFFFFFF00000000 | (v9 & ~v10) | ((v11 & v9) << 16);
  return result;
}

double AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateBackgroundObjectProgramKey@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2825BF770;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfig(v5, a1);
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(v5);
  result = *v5;
  v4 = v5[1];
  *(a2 + 40) = v5[0];
  *(a2 + 56) = v4;
  *(a2 + 72) = v6;
  *(a2 + 80) = v9 | (v10 << 16) | (v7 << 24);
  *(a2 + 84) = v8;
  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateUserIntersectionProgramKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF730;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 8912896;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateDynamicLibraryKey(uint64_t a1@<X8>)
{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

{
  *(a1 + 8) = 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2825BF6F0;
  *(a1 + 40) = 512;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, char **a2@<X2>, char **a3@<X3>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 5;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2825BF998;
  *(a4 + 104) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 1985229328;
  *(a4 + 112) = 0u;
  v8 = a4 + 112;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v35 = 67305985;
  v36 = 1541;
  v37 = 7;
  v38 = 0x100000000;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  bzero(&v29, 0x28uLL);
  if (!a1)
  {
    goto LABEL_25;
  }

  v9 = (a1 - *a1);
  v10 = *v9;
  if (v10 < 0xF)
  {
    goto LABEL_15;
  }

  v11 = v9[7];
  if (v9[7])
  {
    v12 = *(a1 + v11);
    v13 = (a1 + v11 + v12);
    v14 = *v13;
    if (v14)
    {
      v15 = 0;
      v16 = DWORD2(v31);
      v17 = a1 + v11 + v12;
      do
      {
        v18 = &v17[4 * v15];
        v19 = *(v18 + 1);
        v20 = v13 + v19 - *&v18[v19 + 4];
        if (*(v20 + 2) >= 5u)
        {
          v21 = *(v20 + 4);
          if (v21)
          {
            v22 = *(v13 + v19 + v21 + 4);
            if (v22)
            {
              v23 = &texFormatUnsupported;
              if (v22 <= 0x28A)
              {
                v23 = *(&off_277E26030 + v22 - 1);
              }

              *(v42 + v15) = v23;
              v16 |= 1 << v15;
            }
          }
        }

        if (v15 > 6)
        {
          break;
        }

        ++v15;
        ++v13;
      }

      while (v15 < v14);
      DWORD2(v31) = v16;
LABEL_15:
      HIBYTE(v33) = -1;
      if (v10 <= 0xA)
      {
        LOBYTE(v24) = 1;
        LOBYTE(v39) = 1;
LABEL_24:
        HIBYTE(v39) = v24;
        goto LABEL_25;
      }

      goto LABEL_18;
    }
  }

  HIBYTE(v33) = -1;
LABEL_18:
  if (v9[5])
  {
    v25 = *(a1 + v9[5]);
  }

  else
  {
    v25 = 1;
  }

  LOBYTE(v39) = v25;
  HIBYTE(v39) = v25;
  if (v10 >= 0xD)
  {
    v26 = v9[6];
    if (v26)
    {
      v24 = *(a1 + v26);
      if (v24)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v29);
  v27 = v30;
  *v8 = v29;
  *(v8 + 16) = v27;
  *(v8 + 32) = v31;
  AGX::Impl::TileProgramKey::initCommon(a4, a1);
  *(a4 + 100) &= ~0x80u;
  if ((a4 + 160) != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = (a4 + 184);
  if ((a4 + 184) != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  *(a4 + 100) &= 0x8BFFFEFF;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateComputeProgramKey@<D0>(NSObject *a1@<X2>, char **a2@<X3>, char **a3@<X4>, uint64_t a4@<X8>, AGX *a5@<X1>)
{
  *(a4 + 8) = 6;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = &unk_2825BF9D8;
  *(a4 + 96) = 0u;
  v9 = (a4 + 96);
  *(a4 + 87) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  AGX::Impl::ComputeProgramKey::initCommon(a4, a5);
  *(a4 + 52) = vand_s8(*(a4 + 52), 0xFFFFFFFEFFFFFF7FLL);
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a4, a1);
  if (v9 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 96), *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  if ((a4 + 120) != a3)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 120), *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  result = vand_s8(*(a4 + 52), 0xFFFFC73B8BFFFEFFLL);
  *(a4 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateFragmentProgramKey@<X0>(int *a1@<X1>, int a2@<W2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned int a9)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v13 = a2;
  v51 = *MEMORY[0x277D85DE8];
  *(a8 + 8) = 4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 16) = 0;
  *a8 = &unk_2825BF948;
  *(a8 + 104) = 0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 1985229328;
  *(a8 + 112) = 0u;
  v16 = a8 + 112;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0;
  *(a8 + 232) = 0u;
  v17 = (a8 + 232);
  *(a8 + 248) = 0u;
  *(a8 + 264) = 0u;
  v40 = 0x706050403020100;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v41 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  v18 = a6;
  v19 = a7;
  AGX::SpecializableRenderPipelineState::SpecializableRenderPipelineState(v47);
  AGX::SpecializableRenderPipelineState::specialize<Air::FragmentFunctionDescriptor>(v47, a1);
  v21 = v48;
  if (a9 == 1)
  {
    v21 = 2;
  }

  LODWORD(v41) = v21;
  v42 = v50;
  if (v21 == 1)
  {
    v40 = v49[4];
    v22 = v49;
  }

  else
  {
    v46 = v21 == 2;
    v22 = v47;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v13 = a2;
  v9 = v19;
  do
  {
    v26 = 1 << v25;
    if ((v18 - 1) >= 2)
    {
      v27 = *&v22[4 * v25];
      if (v27 != 263)
      {
        v24 |= v26;
        if (!v27)
        {
          goto LABEL_15;
        }

        v28 = &texFormatUnsupported;
        if (v27 <= 0x28A)
        {
          v28 = *(&off_277E26030 + v27 - 1);
        }

        *(v45 + v25) = v28;
      }
    }

    v23 |= v26;
LABEL_15:
    ++v25;
  }

  while (v25 != 8);
  HIBYTE(v39) = v24;
  DWORD2(v37) = v23;
  v10 = v18;
  v11 = a5;
LABEL_17:
  AGX::FramebufferCompilerConfigGen3<AGX::G15::Encoders,AGX::G15::Classes,AGX::G15::ObjClasses>::buildDrawBufferState(&v35);
  v29 = v35;
  v30 = v36;
  *v16 = v35;
  *(v16 + 16) = v30;
  *(v16 + 32) = v37;
  AGX::Impl::FragmentProgramKey::initCommonScript(a8, a1, v10, v9, a9, v29);
  *(a8 + 100) &= ~0x80u;
  *(a8 + 40) &= ~0x10u;
  if (v13)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  *(a8 + 108) = *(a8 + 108) & 0xFFFFFEFF | v31;
  AGX::Impl::FragmentProgramKey::setSerializedDescriptor(a8, a3);
  if (v17 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v17, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a8 + 256);
  if ((a8 + 256) != v11)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *v11, v11[1], (v11[1] - *v11) >> 5);
  }

  *(a8 + 100) &= 0x8BFFFEFF;
  *(a8 + 108) &= 0xFFFFC7F7;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey@<D0>(AGX *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, NSObject *a5@<X5>, char **a6@<X6>, char **a7@<X7>, uint64_t a8@<X8>, char a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v24 = *(a2 + 24);
  }

  v17 = *(a2 + 48);
  *(a8 + 104) = 0u;
  *(a8 + 8) = 10;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *a8 = &unk_2825BF8B8;
  *(a8 + 152) = v23;
  v18 = *&v24.__r_.__value_.__l.__data_;
  *(a8 + 192) = *(&v24.__r_.__value_.__l + 2);
  if (a3)
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  *(a8 + 176) = v18;
  *(a8 + 200) = v17;
  *(a8 + 56) = v20 | v19 | (16 * v17);
  AGX::Impl::MeshProgramKey::initCommon(a8, a1);
  *(a8 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a8, a5);
  if ((a8 + 104) != a6)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 104), *a6, a6[1], (a6[1] - *a6) >> 5);
  }

  if ((a8 + 128) != a7)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a8 + 128), *a7, a7[1], (a7[1] - *a7) >> 5);
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(a8 + 96) = *(a8 + 96) & 0xFFFFFFFD | v21;
  result = vand_s8(*(a8 + 52), 0xFFFFF1FF8BFFFEFFLL);
  *(a8 + 52) = result;
  return result;
}

int8x8_t AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateObjectProgramKey@<D0>(int a1@<W2>, int a2@<W3>, NSObject *a3@<X4>, char **a4@<X5>, char **a5@<X6>, uint64_t a6@<X8>, AGX *a7@<X1>)
{
  *(a6 + 8) = 9;
  *(a6 + 104) = 0u;
  v11 = (a6 + 104);
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = &unk_2825BF900;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  *(a6 + 56) = v13 | v12;
  AGX::Impl::ObjectProgramKey::initCommon(a6, a7);
  *(a6 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::setSerializedDescriptor(a6, a3);
  if (v11 != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v11, *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  if ((a6 + 128) != a5)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a6 + 128), *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  result = vand_s8(*(a6 + 52), 0xFFFFFC7F8BFFFEFFLL);
  *(a6 + 52) = result;
  return result;
}

uint64_t *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateVertexProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, NSObject *a3@<X3>, char **a4@<X4>, char **a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v14 = *(a2 + 48);
  *(a7 + 8) = 3;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 76) = 0u;
  *a7 = &unk_2825BF870;
  *(a7 + 144) = v17;
  *(a7 + 168) = v18;
  *(a7 + 192) = v14;
  *(a7 + 56) = v14 << 18;
  AGX::Impl::VertexProgramKey::initCommon(a7, a1);
  *(a7 + 52) &= ~0x80u;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::setSerializedDescriptor(a7, a3);
  if ((a7 + 96) != a4)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a7 + 96), *a4, a4[1], (a4[1] - *a4) >> 5);
  }

  result = (a7 + 120);
  if ((a7 + 120) != a5)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a7 + 88) = *(a7 + 88) & 0xFFFFFFFD | v16;
  *(a7 + 52) &= 0x8BFFFEFF;
  *(a7 + 56) &= 0xFFFFF1FFF67FFFFFLL;
  return result;
}

void printIR(AGCLLVMUserObject *a1, const char *a2, const char *a3, int a4, llvm::Module *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a1 + *(*a1 - 24);
  v10 = *(v9 + 212);
  if (AGCLLVMObjectBase::dumpShaderToFile(v9))
  {
    snprintf(__str, 0x80uLL, "%s shader %u (%s)", a3, a4, a2);
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v22 = MEMORY[0x277D821F8] + 16;
    v30 = __p;
    llvm::raw_ostream::SetUnbuffered(&v22);
    llvm::Module::print();
    v11 = a5 + 24;
    v12 = *(a5 + 4);
    if (v12 == a5 + 24)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        if (v12)
        {
          v14 = v12 - 56;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 + 72;
        for (i = *(v14 + 10); i != v15; i = i[1])
        {
          if (i)
          {
            v17 = i - 3;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 + 5;
          v19 = v17[6];
          if (v19 == v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = 0;
            do
            {
              ++v20;
              v19 = v19[1];
            }

            while (v19 != v18);
          }

          v13 += v20;
        }

        v12 = *(v12 + 1);
      }

      while (v12 != v11);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(v10))
    {
      AGCTargetPrinter::printMessage(v10, "------ Start LLVM IR %s -------\n", __str);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(v10))
    {
      v21 = __p;
      if (v32 < 0)
      {
        v21 = __p[0];
      }

      AGCTargetPrinter::printMessage(v10, "%s\n", v21);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(v10))
    {
      AGCTargetPrinter::printMessage(v10, "; %u instructions", v13);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(v10))
    {
      AGCTargetPrinter::printMessage(v10, "------ End LLVM IR %s -------\n", __str);
    }

    llvm::raw_ostream::~raw_ostream(&v22);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void *AGX::G13::TextureFormatTable::chooseTextureFormatCPP(AGX::G13::TextureFormatTable *this, MTLPixelFormat a2)
{
  v2 = this - 1;
  result = &texFormatA8;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 25:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 65:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 106:
    case 107:
    case 108:
    case 110:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 125:
    case 126:
    case 127:
    case 128:
    case 135:
    case 136:
    case 137:
    case 138:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 167:
    case 168:
    case 170:
    case 172:
    case 174:
    case 176:
    case 183:
    case 200:
    case 201:
    case 218:
    case 219:
    case 236:
    case 237:
    case 238:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 250:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
LABEL_154:
      result = &texFormatUnsupported;
      break;
    case 9:
      result = &texFormatR8;
      break;
    case 10:
      result = &texFormatsR8;
      break;
    case 11:
      result = &texFormatR8_SNORM;
      break;
    case 12:
      result = &texFormatR8UI;
      break;
    case 13:
      result = &texFormatR8I;
      break;
    case 19:
      result = &texFormatR16;
      break;
    case 21:
      result = &texFormatR16_SNORM;
      break;
    case 22:
      result = &texFormatR16UI;
      break;
    case 23:
      result = &texFormatR16I;
      break;
    case 24:
      result = &texFormatR16F;
      break;
    case 29:
      result = &texFormatRG8;
      break;
    case 30:
      result = &texFormatsRG8;
      break;
    case 31:
      result = &texFormatRG8_SNORM;
      break;
    case 32:
      result = &texFormatRG8UI;
      break;
    case 33:
      result = &texFormatRG8I;
      break;
    case 39:
      result = &texFormatRGB565;
      break;
    case 40:
      result = &texFormatRGB5A1;
      break;
    case 41:
      result = &texFormatRGBA4;
      break;
    case 42:
      result = &texFormatA1RGB5;
      break;
    case 43:
      result = &texFormatBGRA4;
      break;
    case 52:
      result = &texFormatR32UI;
      break;
    case 53:
      result = &texFormatR32I;
      break;
    case 54:
      result = &texFormatR32F;
      break;
    case 59:
      result = &texFormatRG16;
      break;
    case 61:
      result = &texFormatRG16_SNORM;
      break;
    case 62:
      result = &texFormatRG16UI;
      break;
    case 63:
      result = &texFormatRG16I;
      break;
    case 64:
      result = &texFormatRG16F;
      break;
    case 69:
      result = &texFormatRGBA8;
      break;
    case 70:
      result = &texFormatsRGBA8;
      break;
    case 71:
      result = &texFormatRGBA8_SNORM;
      break;
    case 72:
      result = &texFormatRGBA8UI;
      break;
    case 73:
      result = &texFormatRGBA8I;
      break;
    case 79:
      result = &texFormatBGRA8;
      break;
    case 80:
      result = &texFormatsBGRA8;
      break;
    case 83:
      result = &texFormatARGB8;
      break;
    case 84:
      result = &texFormatsARGB8;
      break;
    case 89:
      result = &texFormatRGB10_A2;
      break;
    case 90:
      result = &texFormatRGB10_A2UI;
      break;
    case 91:
      result = &texFormatR11FG11FB10F;
      break;
    case 92:
      result = &texFormatRGB9_E5;
      break;
    case 93:
      result = &texFormatBGR10_A2;
      break;
    case 102:
      result = &texFormatRG32UI;
      break;
    case 103:
      result = &texFormatRG32I;
      break;
    case 104:
      result = &texFormatRG32F;
      break;
    case 109:
      result = &texFormatRGBA16;
      break;
    case 111:
      result = &texFormatRGBA16_SNORM;
      break;
    case 112:
      result = &texFormatRGBA16UI;
      break;
    case 113:
      result = &texFormatRGBA16I;
      break;
    case 114:
      result = &texFormatRGBA16F;
      break;
    case 122:
      result = &texFormatRGBA32UI;
      break;
    case 123:
      result = &texFormatRGBA32I;
      break;
    case 124:
      result = &texFormatRGBA32F;
      break;
    case 129:
      result = &texFormatBC1_RGBA_UNORM;
      break;
    case 130:
      result = &texFormatBC1_sRGBA_UNORM;
      break;
    case 131:
      result = &texFormatBC2_RGBA_UNORM;
      break;
    case 132:
      result = &texFormatBC2_sRGBA_UNORM;
      break;
    case 133:
      result = &texFormatBC3_RGBA_UNORM;
      break;
    case 134:
      result = &texFormatBC3_sRGBA_UNORM;
      break;
    case 139:
      result = &texFormatBC4_R_UNORM;
      break;
    case 140:
      result = &texFormatBC4_R_SNORM;
      break;
    case 141:
      result = &texFormatBC5_RG_UNORM;
      break;
    case 142:
      result = &texFormatBC5_RG_SNORM;
      break;
    case 149:
      result = &texFormatBC6H_RGB_FLOAT;
      break;
    case 150:
      result = &texFormatBC6H_RGB_UFLOAT;
      break;
    case 151:
      result = &texFormatBC7_RGBA_UNORM;
      break;
    case 152:
      result = &texFormatBC7_sRGBA_UNORM;
      break;
    case 159:
      result = &texFormatPVRTC2RGB;
      break;
    case 160:
      result = &texFormatPVRTC2sRGB;
      break;
    case 161:
      result = &texFormatPVRTC4RGB;
      break;
    case 162:
      result = &texFormatPVRTC4sRGB;
      break;
    case 163:
      result = &texFormatPVRTC2RGBA;
      break;
    case 164:
      result = &texFormatPVRTC2sRGBA;
      break;
    case 165:
      result = &texFormatPVRTC4RGBA;
      break;
    case 166:
      result = &texFormatPVRTC4sRGBA;
      break;
    case 169:
      result = &texFormatR11EAC;
      break;
    case 171:
      result = &texFormatR11EAC_SNORM;
      break;
    case 173:
      result = &texFormatRG11EAC;
      break;
    case 175:
      result = &texFormatRG11EAC_SNORM;
      break;
    case 177:
      result = &texFormatETC2RGBA8;
      break;
    case 178:
      result = &texFormatETC2sRGBA8;
      break;
    case 179:
      result = &texFormatETC2RGB8;
      break;
    case 180:
      result = &texFormatETC2sRGB8;
      break;
    case 181:
      result = &texFormatETC2RGB8A1;
      break;
    case 182:
      result = &texFormatETC2sRGB8A1;
      break;
    case 184:
      result = &texFormatASTC4x2sRGBA_UNORM;
      break;
    case 185:
      result = &texFormatASTC4x4sRGBA_UNORM;
      break;
    case 186:
      result = &texFormatASTC5x4sRGBA_UNORM;
      break;
    case 187:
      result = &texFormatASTC5x5sRGBA_UNORM;
      break;
    case 188:
      result = &texFormatASTC6x5sRGBA_UNORM;
      break;
    case 189:
      result = &texFormatASTC6x6sRGBA_UNORM;
      break;
    case 190:
      result = &texFormatASTC8x4sRGBA_UNORM;
      break;
    case 191:
      result = &texFormatASTC8x5sRGBA_UNORM;
      break;
    case 192:
      result = &texFormatASTC8x6sRGBA_UNORM;
      break;
    case 193:
      result = &texFormatASTC8x8sRGBA_UNORM;
      break;
    case 194:
      result = &texFormatASTC10x5sRGBA_UNORM;
      break;
    case 195:
      result = &texFormatASTC10x6sRGBA_UNORM;
      break;
    case 196:
      result = &texFormatASTC10x8sRGBA_UNORM;
      break;
    case 197:
      result = &texFormatASTC10x10sRGBA_UNORM;
      break;
    case 198:
      result = &texFormatASTC12x10sRGBA_UNORM;
      break;
    case 199:
      result = &texFormatASTC12x12sRGBA_UNORM;
      break;
    case 202:
      result = &texFormatASTC4x2RGBA_LP;
      break;
    case 203:
      result = &texFormatASTC4x4RGBA_LP;
      break;
    case 204:
      result = &texFormatASTC5x4RGBA_LP;
      break;
    case 205:
      result = &texFormatASTC5x5RGBA_LP;
      break;
    case 206:
      result = &texFormatASTC6x5RGBA_LP;
      break;
    case 207:
      result = &texFormatASTC6x6RGBA_LP;
      break;
    case 208:
      result = &texFormatASTC8x4RGBA_LP;
      break;
    case 209:
      result = &texFormatASTC8x5RGBA_LP;
      break;
    case 210:
      result = &texFormatASTC8x6RGBA_LP;
      break;
    case 211:
      result = &texFormatASTC8x8RGBA_LP;
      break;
    case 212:
      result = &texFormatASTC10x5RGBA_LP;
      break;
    case 213:
      result = &texFormatASTC10x6RGBA_LP;
      break;
    case 214:
      result = &texFormatASTC10x8RGBA_LP;
      break;
    case 215:
      result = &texFormatASTC10x10RGBA_LP;
      break;
    case 216:
      result = &texFormatASTC12x10RGBA_LP;
      break;
    case 217:
      result = &texFormatASTC12x12RGBA_LP;
      break;
    case 220:
      result = &texFormatASTC4x2RGBA;
      break;
    case 221:
      result = &texFormatASTC4x4RGBA;
      break;
    case 222:
      result = &texFormatASTC5x4RGBA;
      break;
    case 223:
      result = &texFormatASTC5x5RGBA;
      break;
    case 224:
      result = &texFormatASTC6x5RGBA;
      break;
    case 225:
      result = &texFormatASTC6x6RGBA;
      break;
    case 226:
      result = &texFormatASTC8x4RGBA;
      break;
    case 227:
      result = &texFormatASTC8x5RGBA;
      break;
    case 228:
      result = &texFormatASTC8x6RGBA;
      break;
    case 229:
      result = &texFormatASTC8x8RGBA;
      break;
    case 230:
      result = &texFormatASTC10x5RGBA;
      break;
    case 231:
      result = &texFormatASTC10x6RGBA;
      break;
    case 232:
      result = &texFormatASTC10x8RGBA;
      break;
    case 233:
      result = &texFormatASTC10x10RGBA;
      break;
    case 234:
      result = &texFormatASTC12x10RGBA;
      break;
    case 235:
      result = &texFormatASTC12x12RGBA;
      break;
    case 239:
      result = &texFormatYUY2_RGB;
      break;
    case 240:
      result = &texFormatUYVY_RGB;
      break;
    case 249:
      result = &texFormatD16;
      break;
    case 251:
      result = &texFormatD32;
      break;
    case 252:
    case 260:
      result = &texFormatS8;
      break;
    case 259:
      result = &texFormatD32FS8_2PLANE;
      break;
    case 299:
      result = &texFormatRGB8;
      break;
    case 300:
      result = &texFormatsRGB8;
      break;
    case 301:
      result = &texFormatRGB8_SNORM;
      break;
    case 302:
      result = &texFormatRGB8UI;
      break;
    case 303:
      result = &texFormatRGB8I;
      break;
    case 312:
      result = &texFormatRGBX16UI;
      break;
    case 313:
      result = &texFormatRGBX16I;
      break;
    case 314:
      result = &texFormatRGBX16F;
      break;
    case 322:
      result = &texFormatRGBX32UI;
      break;
    case 323:
      result = &texFormatRGBX32I;
      break;
    case 324:
      result = &texFormatRGBX32F;
      break;
    default:
      switch(&texFormatA8)
      {
        case 0x1F4u:
          result = &texFormatYCBCR8_420_2PLANE;
          break;
        case 0x1F5u:
          result = &texFormatYCBCR8_422_1PLANE;
          break;
        case 0x1F6u:
          result = &texFormatYCBCR8_422_2PLANE;
          break;
        case 0x1F7u:
          result = &texFormatYCBCR8_444_2PLANE;
          break;
        case 0x1F8u:
          result = &texFormatYCBCR10_444_1PLANE;
          break;
        case 0x1F9u:
          result = &texFormatYCBCR10_420_2PLANE;
          break;
        case 0x1FAu:
          result = &texFormatYCBCR10_422_2PLANE;
          break;
        case 0x1FBu:
          result = &texFormatYCBCR10_444_2PLANE;
          break;
        case 0x1FCu:
          result = &texFormatYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x1FDu:
          result = &texFormatYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x1FEu:
          result = &texFormatYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x208u:
          result = &texFormatsYCBCR8_420_2PLANE;
          break;
        case 0x209u:
          result = &texFormatsYCBCR8_422_1PLANE;
          break;
        case 0x20Au:
          result = &texFormatsYCBCR8_422_2PLANE;
          break;
        case 0x20Bu:
          result = &texFormatsYCBCR8_444_2PLANE;
          break;
        case 0x20Cu:
          result = &texFormatsYCBCR10_444_1PLANE;
          break;
        case 0x20Du:
          result = &texFormatsYCBCR10_420_2PLANE;
          break;
        case 0x20Eu:
          result = &texFormatsYCBCR10_422_2PLANE;
          break;
        case 0x20Fu:
          result = &texFormatsYCBCR10_444_2PLANE;
          break;
        case 0x210u:
          result = &texFormatsYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x211u:
          result = &texFormatsYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x212u:
          result = &texFormatsYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x21Cu:
          result = &texFormatRGB8_420_2PLANE;
          break;
        case 0x21Du:
          result = &texFormatRGB8_422_2PLANE;
          break;
        case 0x21Eu:
          result = &texFormatRGB8_444_2PLANE;
          break;
        case 0x21Fu:
          result = &texFormatRGB10_420_2PLANE;
          break;
        case 0x220u:
          result = &texFormatRGB10_422_2PLANE;
          break;
        case 0x221u:
          result = &texFormatRGB10_444_2PLANE;
          break;
        case 0x222u:
          result = &texFormatRGB10_420_2PLANE_PACKED;
          break;
        case 0x223u:
          result = &texFormatRGB10_422_2PLANE_PACKED;
          break;
        case 0x224u:
          result = &texFormatRGB10_444_2PLANE_PACKED;
          break;
        case 0x226u:
          result = &texFormatXRRGB10_PLANE_A8_PLANE;
          break;
        case 0x227u:
          result = &texFormatXRSRGB10_PLANE_A8_PLANE;
          break;
        case 0x228u:
          result = &texFormatARGBV16_XR10;
          break;
        case 0x229u:
          result = &texFormatsARGBV16_XR10;
          break;
        case 0x22Au:
          result = &texFormatXRRGB10;
          break;
        case 0x22Bu:
          result = &texFormatXRSRGB10;
          break;
        case 0x230u:
          result = &texFormatYCBCR8A8_444_1PLANE;
          break;
        case 0x232u:
          result = &texFormatYCBCR8_422_1PLANE_REV;
          break;
        case 0x233u:
          result = &texFormatpqYCBCR10_444_1PLANE;
          break;
        case 0x234u:
          result = &texFormatpqYCBCR10_420_2PLANE;
          break;
        case 0x235u:
          result = &texFormatpqYCBCR10_422_2PLANE;
          break;
        case 0x236u:
          result = &texFormatpqYCBCR10_444_2PLANE;
          break;
        case 0x237u:
          result = &texFormatpqYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x238u:
          result = &texFormatpqYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x239u:
          result = &texFormatpqYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x23Au:
          result = &texFormatYCBCR12_420_2PLANE;
          break;
        case 0x23Bu:
          result = &texFormatYCBCR12_422_2PLANE;
          break;
        case 0x23Cu:
          result = &texFormatYCBCR12_444_2PLANE;
          break;
        case 0x23Du:
          result = &texFormatpqYCBCR12_420_2PLANE;
          break;
        case 0x23Eu:
          result = &texFormatpqYCBCR12_422_2PLANE;
          break;
        case 0x23Fu:
          result = &texFormatpqYCBCR12_444_2PLANE;
          break;
        case 0x240u:
          result = &texFormatR10X6F;
          break;
        case 0x241u:
          result = &texFormatsR10X6F;
          break;
        case 0x242u:
          result = &texFormatRG10X12F;
          break;
        case 0x243u:
          result = &texFormatsRG10X12F;
          break;
        case 0x244u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x245u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x246u:
          result = &texFormatYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x247u:
          result = &texFormatpqYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x248u:
          result = &texFormatpqYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x249u:
          result = &texFormatpqYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x24Au:
          result = &texFormatsRGB10_A2;
          break;
        case 0x24Bu:
          result = &texFormatpqRGB10_A2;
          break;
        case 0x24Cu:
          result = &texFormatR10_1PLANE_PACKED;
          break;
        case 0x24Du:
          result = &texFormatRG10_1PLANE_PACKED;
          break;
        case 0x24Eu:
          result = &texFormatYCBCR10_444_1PLANE_XR;
          break;
        case 0x24Fu:
          result = &texFormatYCBCR10_420_2PLANE_XR;
          break;
        case 0x250u:
          result = &texFormatYCBCR10_422_2PLANE_XR;
          break;
        case 0x251u:
          result = &texFormatYCBCR10_444_2PLANE_XR;
          break;
        case 0x252u:
          result = &texFormatYCBCR10_420_2PLANE_PACKED_XR;
          break;
        case 0x253u:
          result = &texFormatYCBCR10_422_2PLANE_PACKED_XR;
          break;
        case 0x254u:
          result = &texFormatYCBCR10_444_2PLANE_PACKED_XR;
          break;
        case 0x255u:
          result = &texFormatYCBCR12_420_2PLANE_XR;
          break;
        case 0x256u:
          result = &texFormatYCBCR12_422_2PLANE_XR;
          break;
        case 0x257u:
          result = &texFormatYCBCR12_444_2PLANE_XR;
          break;
        case 0x258u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED_XR;
          break;
        case 0x259u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED_XR;
          break;
        case 0x25Au:
          result = &texFormatYCBCR12_444_2PLANE_PACKED_XR;
          break;
        case 0x25Bu:
          result = &texFormatR12X4U;
          break;
        case 0x25Cu:
          result = &texFormatpqR12X4U;
          break;
        case 0x25Du:
          result = &texFormatRG12X8U;
          break;
        case 0x25Eu:
          result = &texFormatpqR10X6U;
          break;
        case 0x274u:
          result = &texFormatsBGR10_A2;
          break;
        case 0x275u:
          result = &texFormatpqBGR10_A2;
          break;
        default:
          goto LABEL_154;
      }

      break;
  }

  return result;
}

void *AGX::G14::TextureFormatTable::chooseTextureFormatCPP(AGX::G14::TextureFormatTable *this, MTLPixelFormat a2)
{
  v2 = this - 1;
  result = &texFormatA8;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 106:
    case 107:
    case 108:
    case 110:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 125:
    case 126:
    case 127:
    case 128:
    case 135:
    case 136:
    case 137:
    case 138:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 167:
    case 168:
    case 170:
    case 172:
    case 174:
    case 176:
    case 183:
    case 200:
    case 201:
    case 218:
    case 219:
    case 236:
    case 237:
    case 238:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 250:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
LABEL_157:
      result = &texFormatUnsupported;
      break;
    case 9:
      result = &texFormatR8;
      break;
    case 10:
      result = &texFormatsR8;
      break;
    case 11:
      result = &texFormatR8_SNORM;
      break;
    case 12:
      result = &texFormatR8UI;
      break;
    case 13:
      result = &texFormatR8I;
      break;
    case 19:
      result = &texFormatR16;
      break;
    case 21:
      result = &texFormatR16_SNORM;
      break;
    case 22:
      result = &texFormatR16UI;
      break;
    case 23:
      result = &texFormatR16I;
      break;
    case 24:
      result = &texFormatR16F;
      break;
    case 25:
      result = &texFormatR16BF;
      break;
    case 29:
      result = &texFormatRG8;
      break;
    case 30:
      result = &texFormatsRG8;
      break;
    case 31:
      result = &texFormatRG8_SNORM;
      break;
    case 32:
      result = &texFormatRG8UI;
      break;
    case 33:
      result = &texFormatRG8I;
      break;
    case 39:
      result = &texFormatRGB565;
      break;
    case 40:
      result = &texFormatRGB5A1;
      break;
    case 41:
      result = &texFormatRGBA4;
      break;
    case 42:
      result = &texFormatA1RGB5;
      break;
    case 43:
      result = &texFormatBGRA4;
      break;
    case 52:
      result = &texFormatR32UI;
      break;
    case 53:
      result = &texFormatR32I;
      break;
    case 54:
      result = &texFormatR32F;
      break;
    case 59:
      result = &texFormatRG16;
      break;
    case 61:
      result = &texFormatRG16_SNORM;
      break;
    case 62:
      result = &texFormatRG16UI;
      break;
    case 63:
      result = &texFormatRG16I;
      break;
    case 64:
      result = &texFormatRG16F;
      break;
    case 65:
      result = &texFormatRG16BF;
      break;
    case 69:
      result = &texFormatRGBA8;
      break;
    case 70:
      result = &texFormatsRGBA8;
      break;
    case 71:
      result = &texFormatRGBA8_SNORM;
      break;
    case 72:
      result = &texFormatRGBA8UI;
      break;
    case 73:
      result = &texFormatRGBA8I;
      break;
    case 79:
      result = &texFormatBGRA8;
      break;
    case 80:
      result = &texFormatsBGRA8;
      break;
    case 83:
      result = &texFormatARGB8;
      break;
    case 84:
      result = &texFormatsARGB8;
      break;
    case 89:
      result = &texFormatRGB10_A2;
      break;
    case 90:
      result = &texFormatRGB10_A2UI;
      break;
    case 91:
      result = &texFormatR11FG11FB10F;
      break;
    case 92:
      result = &texFormatRGB9_E5;
      break;
    case 93:
      result = &texFormatBGR10_A2;
      break;
    case 102:
      result = &texFormatRG32UI;
      break;
    case 103:
      result = &texFormatRG32I;
      break;
    case 104:
      result = &texFormatRG32F;
      break;
    case 109:
      result = &texFormatRGBA16;
      break;
    case 111:
      result = &texFormatRGBA16_SNORM;
      break;
    case 112:
      result = &texFormatRGBA16UI;
      break;
    case 113:
      result = &texFormatRGBA16I;
      break;
    case 114:
      result = &texFormatRGBA16F;
      break;
    case 115:
      result = &texFormatRGBA16BF;
      break;
    case 122:
      result = &texFormatRGBA32UI;
      break;
    case 123:
      result = &texFormatRGBA32I;
      break;
    case 124:
      result = &texFormatRGBA32F;
      break;
    case 129:
      result = &texFormatBC1_RGBA_UNORM;
      break;
    case 130:
      result = &texFormatBC1_sRGBA_UNORM;
      break;
    case 131:
      result = &texFormatBC2_RGBA_UNORM;
      break;
    case 132:
      result = &texFormatBC2_sRGBA_UNORM;
      break;
    case 133:
      result = &texFormatBC3_RGBA_UNORM;
      break;
    case 134:
      result = &texFormatBC3_sRGBA_UNORM;
      break;
    case 139:
      result = &texFormatBC4_R_UNORM;
      break;
    case 140:
      result = &texFormatBC4_R_SNORM;
      break;
    case 141:
      result = &texFormatBC5_RG_UNORM;
      break;
    case 142:
      result = &texFormatBC5_RG_SNORM;
      break;
    case 149:
      result = &texFormatBC6H_RGB_FLOAT;
      break;
    case 150:
      result = &texFormatBC6H_RGB_UFLOAT;
      break;
    case 151:
      result = &texFormatBC7_RGBA_UNORM;
      break;
    case 152:
      result = &texFormatBC7_sRGBA_UNORM;
      break;
    case 159:
      result = &texFormatPVRTC2RGB;
      break;
    case 160:
      result = &texFormatPVRTC2sRGB;
      break;
    case 161:
      result = &texFormatPVRTC4RGB;
      break;
    case 162:
      result = &texFormatPVRTC4sRGB;
      break;
    case 163:
      result = &texFormatPVRTC2RGBA;
      break;
    case 164:
      result = &texFormatPVRTC2sRGBA;
      break;
    case 165:
      result = &texFormatPVRTC4RGBA;
      break;
    case 166:
      result = &texFormatPVRTC4sRGBA;
      break;
    case 169:
      result = &texFormatR11EAC;
      break;
    case 171:
      result = &texFormatR11EAC_SNORM;
      break;
    case 173:
      result = &texFormatRG11EAC;
      break;
    case 175:
      result = &texFormatRG11EAC_SNORM;
      break;
    case 177:
      result = &texFormatETC2RGBA8;
      break;
    case 178:
      result = &texFormatETC2sRGBA8;
      break;
    case 179:
      result = &texFormatETC2RGB8;
      break;
    case 180:
      result = &texFormatETC2sRGB8;
      break;
    case 181:
      result = &texFormatETC2RGB8A1;
      break;
    case 182:
      result = &texFormatETC2sRGB8A1;
      break;
    case 184:
      result = &texFormatASTC4x2sRGBA_UNORM;
      break;
    case 185:
      result = &texFormatASTC4x4sRGBA_UNORM;
      break;
    case 186:
      result = &texFormatASTC5x4sRGBA_UNORM;
      break;
    case 187:
      result = &texFormatASTC5x5sRGBA_UNORM;
      break;
    case 188:
      result = &texFormatASTC6x5sRGBA_UNORM;
      break;
    case 189:
      result = &texFormatASTC6x6sRGBA_UNORM;
      break;
    case 190:
      result = &texFormatASTC8x4sRGBA_UNORM;
      break;
    case 191:
      result = &texFormatASTC8x5sRGBA_UNORM;
      break;
    case 192:
      result = &texFormatASTC8x6sRGBA_UNORM;
      break;
    case 193:
      result = &texFormatASTC8x8sRGBA_UNORM;
      break;
    case 194:
      result = &texFormatASTC10x5sRGBA_UNORM;
      break;
    case 195:
      result = &texFormatASTC10x6sRGBA_UNORM;
      break;
    case 196:
      result = &texFormatASTC10x8sRGBA_UNORM;
      break;
    case 197:
      result = &texFormatASTC10x10sRGBA_UNORM;
      break;
    case 198:
      result = &texFormatASTC12x10sRGBA_UNORM;
      break;
    case 199:
      result = &texFormatASTC12x12sRGBA_UNORM;
      break;
    case 202:
      result = &texFormatASTC4x2RGBA_LP;
      break;
    case 203:
      result = &texFormatASTC4x4RGBA_LP;
      break;
    case 204:
      result = &texFormatASTC5x4RGBA_LP;
      break;
    case 205:
      result = &texFormatASTC5x5RGBA_LP;
      break;
    case 206:
      result = &texFormatASTC6x5RGBA_LP;
      break;
    case 207:
      result = &texFormatASTC6x6RGBA_LP;
      break;
    case 208:
      result = &texFormatASTC8x4RGBA_LP;
      break;
    case 209:
      result = &texFormatASTC8x5RGBA_LP;
      break;
    case 210:
      result = &texFormatASTC8x6RGBA_LP;
      break;
    case 211:
      result = &texFormatASTC8x8RGBA_LP;
      break;
    case 212:
      result = &texFormatASTC10x5RGBA_LP;
      break;
    case 213:
      result = &texFormatASTC10x6RGBA_LP;
      break;
    case 214:
      result = &texFormatASTC10x8RGBA_LP;
      break;
    case 215:
      result = &texFormatASTC10x10RGBA_LP;
      break;
    case 216:
      result = &texFormatASTC12x10RGBA_LP;
      break;
    case 217:
      result = &texFormatASTC12x12RGBA_LP;
      break;
    case 220:
      result = &texFormatASTC4x2RGBA;
      break;
    case 221:
      result = &texFormatASTC4x4RGBA;
      break;
    case 222:
      result = &texFormatASTC5x4RGBA;
      break;
    case 223:
      result = &texFormatASTC5x5RGBA;
      break;
    case 224:
      result = &texFormatASTC6x5RGBA;
      break;
    case 225:
      result = &texFormatASTC6x6RGBA;
      break;
    case 226:
      result = &texFormatASTC8x4RGBA;
      break;
    case 227:
      result = &texFormatASTC8x5RGBA;
      break;
    case 228:
      result = &texFormatASTC8x6RGBA;
      break;
    case 229:
      result = &texFormatASTC8x8RGBA;
      break;
    case 230:
      result = &texFormatASTC10x5RGBA;
      break;
    case 231:
      result = &texFormatASTC10x6RGBA;
      break;
    case 232:
      result = &texFormatASTC10x8RGBA;
      break;
    case 233:
      result = &texFormatASTC10x10RGBA;
      break;
    case 234:
      result = &texFormatASTC12x10RGBA;
      break;
    case 235:
      result = &texFormatASTC12x12RGBA;
      break;
    case 239:
      result = &texFormatYUY2_RGB;
      break;
    case 240:
      result = &texFormatUYVY_RGB;
      break;
    case 249:
      result = &texFormatD16;
      break;
    case 251:
      result = &texFormatD32;
      break;
    case 252:
    case 260:
      result = &texFormatS8;
      break;
    case 259:
      result = &texFormatD32FS8_2PLANE;
      break;
    case 299:
      result = &texFormatRGB8;
      break;
    case 300:
      result = &texFormatsRGB8;
      break;
    case 301:
      result = &texFormatRGB8_SNORM;
      break;
    case 302:
      result = &texFormatRGB8UI;
      break;
    case 303:
      result = &texFormatRGB8I;
      break;
    case 312:
      result = &texFormatRGBX16UI;
      break;
    case 313:
      result = &texFormatRGBX16I;
      break;
    case 314:
      result = &texFormatRGBX16F;
      break;
    case 322:
      result = &texFormatRGBX32UI;
      break;
    case 323:
      result = &texFormatRGBX32I;
      break;
    case 324:
      result = &texFormatRGBX32F;
      break;
    default:
      switch(&texFormatA8)
      {
        case 0x1F4u:
          result = &texFormatYCBCR8_420_2PLANE;
          break;
        case 0x1F5u:
          result = &texFormatYCBCR8_422_1PLANE;
          break;
        case 0x1F6u:
          result = &texFormatYCBCR8_422_2PLANE;
          break;
        case 0x1F7u:
          result = &texFormatYCBCR8_444_2PLANE;
          break;
        case 0x1F8u:
          result = &texFormatYCBCR10_444_1PLANE;
          break;
        case 0x1F9u:
          result = &texFormatYCBCR10_420_2PLANE;
          break;
        case 0x1FAu:
          result = &texFormatYCBCR10_422_2PLANE;
          break;
        case 0x1FBu:
          result = &texFormatYCBCR10_444_2PLANE;
          break;
        case 0x1FCu:
          result = &texFormatYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x1FDu:
          result = &texFormatYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x1FEu:
          result = &texFormatYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x208u:
          result = &texFormatsYCBCR8_420_2PLANE;
          break;
        case 0x209u:
          result = &texFormatsYCBCR8_422_1PLANE;
          break;
        case 0x20Au:
          result = &texFormatsYCBCR8_422_2PLANE;
          break;
        case 0x20Bu:
          result = &texFormatsYCBCR8_444_2PLANE;
          break;
        case 0x20Cu:
          result = &texFormatsYCBCR10_444_1PLANE;
          break;
        case 0x20Du:
          result = &texFormatsYCBCR10_420_2PLANE;
          break;
        case 0x20Eu:
          result = &texFormatsYCBCR10_422_2PLANE;
          break;
        case 0x20Fu:
          result = &texFormatsYCBCR10_444_2PLANE;
          break;
        case 0x210u:
          result = &texFormatsYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x211u:
          result = &texFormatsYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x212u:
          result = &texFormatsYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x21Cu:
          result = &texFormatRGB8_420_2PLANE;
          break;
        case 0x21Du:
          result = &texFormatRGB8_422_2PLANE;
          break;
        case 0x21Eu:
          result = &texFormatRGB8_444_2PLANE;
          break;
        case 0x21Fu:
          result = &texFormatRGB10_420_2PLANE;
          break;
        case 0x220u:
          result = &texFormatRGB10_422_2PLANE;
          break;
        case 0x221u:
          result = &texFormatRGB10_444_2PLANE;
          break;
        case 0x222u:
          result = &texFormatRGB10_420_2PLANE_PACKED;
          break;
        case 0x223u:
          result = &texFormatRGB10_422_2PLANE_PACKED;
          break;
        case 0x224u:
          result = &texFormatRGB10_444_2PLANE_PACKED;
          break;
        case 0x226u:
          result = &texFormatXRRGB10_PLANE_A8_PLANE;
          break;
        case 0x227u:
          result = &texFormatXRSRGB10_PLANE_A8_PLANE;
          break;
        case 0x228u:
          result = &texFormatARGBV16_XR10;
          break;
        case 0x229u:
          result = &texFormatsARGBV16_XR10;
          break;
        case 0x22Au:
          result = &texFormatXRRGB10;
          break;
        case 0x22Bu:
          result = &texFormatXRSRGB10;
          break;
        case 0x22Cu:
          result = &texFormatRGBA16F_XR;
          break;
        case 0x230u:
          result = &texFormatYCBCR8A8_444_1PLANE;
          break;
        case 0x232u:
          result = &texFormatYCBCR8_422_1PLANE_REV;
          break;
        case 0x233u:
          result = &texFormatpqYCBCR10_444_1PLANE;
          break;
        case 0x234u:
          result = &texFormatpqYCBCR10_420_2PLANE;
          break;
        case 0x235u:
          result = &texFormatpqYCBCR10_422_2PLANE;
          break;
        case 0x236u:
          result = &texFormatpqYCBCR10_444_2PLANE;
          break;
        case 0x237u:
          result = &texFormatpqYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x238u:
          result = &texFormatpqYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x239u:
          result = &texFormatpqYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x23Au:
          result = &texFormatYCBCR12_420_2PLANE;
          break;
        case 0x23Bu:
          result = &texFormatYCBCR12_422_2PLANE;
          break;
        case 0x23Cu:
          result = &texFormatYCBCR12_444_2PLANE;
          break;
        case 0x23Du:
          result = &texFormatpqYCBCR12_420_2PLANE;
          break;
        case 0x23Eu:
          result = &texFormatpqYCBCR12_422_2PLANE;
          break;
        case 0x23Fu:
          result = &texFormatpqYCBCR12_444_2PLANE;
          break;
        case 0x240u:
          result = &texFormatR10X6F;
          break;
        case 0x241u:
          result = &texFormatsR10X6F;
          break;
        case 0x242u:
          result = &texFormatRG10X12F;
          break;
        case 0x243u:
          result = &texFormatsRG10X12F;
          break;
        case 0x244u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x245u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x246u:
          result = &texFormatYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x247u:
          result = &texFormatpqYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x248u:
          result = &texFormatpqYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x249u:
          result = &texFormatpqYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x24Au:
          result = &texFormatsRGB10_A2;
          break;
        case 0x24Bu:
          result = &texFormatpqRGB10_A2;
          break;
        case 0x24Cu:
          result = &texFormatR10_1PLANE_PACKED;
          break;
        case 0x24Du:
          result = &texFormatRG10_1PLANE_PACKED;
          break;
        case 0x24Eu:
          result = &texFormatYCBCR10_444_1PLANE_XR;
          break;
        case 0x24Fu:
          result = &texFormatYCBCR10_420_2PLANE_XR;
          break;
        case 0x250u:
          result = &texFormatYCBCR10_422_2PLANE_XR;
          break;
        case 0x251u:
          result = &texFormatYCBCR10_444_2PLANE_XR;
          break;
        case 0x252u:
          result = &texFormatYCBCR10_420_2PLANE_PACKED_XR;
          break;
        case 0x253u:
          result = &texFormatYCBCR10_422_2PLANE_PACKED_XR;
          break;
        case 0x254u:
          result = &texFormatYCBCR10_444_2PLANE_PACKED_XR;
          break;
        case 0x255u:
          result = &texFormatYCBCR12_420_2PLANE_XR;
          break;
        case 0x256u:
          result = &texFormatYCBCR12_422_2PLANE_XR;
          break;
        case 0x257u:
          result = &texFormatYCBCR12_444_2PLANE_XR;
          break;
        case 0x258u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED_XR;
          break;
        case 0x259u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED_XR;
          break;
        case 0x25Au:
          result = &texFormatYCBCR12_444_2PLANE_PACKED_XR;
          break;
        case 0x25Bu:
          result = &texFormatR12X4U;
          break;
        case 0x25Cu:
          result = &texFormatpqR12X4U;
          break;
        case 0x25Du:
          result = &texFormatRG12X8U;
          break;
        case 0x25Eu:
          result = &texFormatpqR10X6U;
          break;
        case 0x274u:
          result = &texFormatsBGR10_A2;
          break;
        case 0x275u:
          result = &texFormatpqBGR10_A2;
          break;
        default:
          goto LABEL_157;
      }

      break;
  }

  return result;
}

void *AGX::G14X::TextureFormatTable::chooseTextureFormatCPP(AGX::G14X::TextureFormatTable *this, MTLPixelFormat a2)
{
  v2 = this - 1;
  result = &texFormatA8;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 106:
    case 107:
    case 108:
    case 110:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 125:
    case 126:
    case 127:
    case 128:
    case 135:
    case 136:
    case 137:
    case 138:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 167:
    case 168:
    case 170:
    case 172:
    case 174:
    case 176:
    case 183:
    case 200:
    case 201:
    case 218:
    case 219:
    case 236:
    case 237:
    case 238:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 250:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
LABEL_157:
      result = &texFormatUnsupported;
      break;
    case 9:
      result = &texFormatR8;
      break;
    case 10:
      result = &texFormatsR8;
      break;
    case 11:
      result = &texFormatR8_SNORM;
      break;
    case 12:
      result = &texFormatR8UI;
      break;
    case 13:
      result = &texFormatR8I;
      break;
    case 19:
      result = &texFormatR16;
      break;
    case 21:
      result = &texFormatR16_SNORM;
      break;
    case 22:
      result = &texFormatR16UI;
      break;
    case 23:
      result = &texFormatR16I;
      break;
    case 24:
      result = &texFormatR16F;
      break;
    case 25:
      result = &texFormatR16BF;
      break;
    case 29:
      result = &texFormatRG8;
      break;
    case 30:
      result = &texFormatsRG8;
      break;
    case 31:
      result = &texFormatRG8_SNORM;
      break;
    case 32:
      result = &texFormatRG8UI;
      break;
    case 33:
      result = &texFormatRG8I;
      break;
    case 39:
      result = &texFormatRGB565;
      break;
    case 40:
      result = &texFormatRGB5A1;
      break;
    case 41:
      result = &texFormatRGBA4;
      break;
    case 42:
      result = &texFormatA1RGB5;
      break;
    case 43:
      result = &texFormatBGRA4;
      break;
    case 52:
      result = &texFormatR32UI;
      break;
    case 53:
      result = &texFormatR32I;
      break;
    case 54:
      result = &texFormatR32F;
      break;
    case 59:
      result = &texFormatRG16;
      break;
    case 61:
      result = &texFormatRG16_SNORM;
      break;
    case 62:
      result = &texFormatRG16UI;
      break;
    case 63:
      result = &texFormatRG16I;
      break;
    case 64:
      result = &texFormatRG16F;
      break;
    case 65:
      result = &texFormatRG16BF;
      break;
    case 69:
      result = &texFormatRGBA8;
      break;
    case 70:
      result = &texFormatsRGBA8;
      break;
    case 71:
      result = &texFormatRGBA8_SNORM;
      break;
    case 72:
      result = &texFormatRGBA8UI;
      break;
    case 73:
      result = &texFormatRGBA8I;
      break;
    case 79:
      result = &texFormatBGRA8;
      break;
    case 80:
      result = &texFormatsBGRA8;
      break;
    case 83:
      result = &texFormatARGB8;
      break;
    case 84:
      result = &texFormatsARGB8;
      break;
    case 89:
      result = &texFormatRGB10_A2;
      break;
    case 90:
      result = &texFormatRGB10_A2UI;
      break;
    case 91:
      result = &texFormatR11FG11FB10F;
      break;
    case 92:
      result = &texFormatRGB9_E5;
      break;
    case 93:
      result = &texFormatBGR10_A2;
      break;
    case 102:
      result = &texFormatRG32UI;
      break;
    case 103:
      result = &texFormatRG32I;
      break;
    case 104:
      result = &texFormatRG32F;
      break;
    case 109:
      result = &texFormatRGBA16;
      break;
    case 111:
      result = &texFormatRGBA16_SNORM;
      break;
    case 112:
      result = &texFormatRGBA16UI;
      break;
    case 113:
      result = &texFormatRGBA16I;
      break;
    case 114:
      result = &texFormatRGBA16F;
      break;
    case 115:
      result = &texFormatRGBA16BF;
      break;
    case 122:
      result = &texFormatRGBA32UI;
      break;
    case 123:
      result = &texFormatRGBA32I;
      break;
    case 124:
      result = &texFormatRGBA32F;
      break;
    case 129:
      result = &texFormatBC1_RGBA_UNORM;
      break;
    case 130:
      result = &texFormatBC1_sRGBA_UNORM;
      break;
    case 131:
      result = &texFormatBC2_RGBA_UNORM;
      break;
    case 132:
      result = &texFormatBC2_sRGBA_UNORM;
      break;
    case 133:
      result = &texFormatBC3_RGBA_UNORM;
      break;
    case 134:
      result = &texFormatBC3_sRGBA_UNORM;
      break;
    case 139:
      result = &texFormatBC4_R_UNORM;
      break;
    case 140:
      result = &texFormatBC4_R_SNORM;
      break;
    case 141:
      result = &texFormatBC5_RG_UNORM;
      break;
    case 142:
      result = &texFormatBC5_RG_SNORM;
      break;
    case 149:
      result = &texFormatBC6H_RGB_FLOAT;
      break;
    case 150:
      result = &texFormatBC6H_RGB_UFLOAT;
      break;
    case 151:
      result = &texFormatBC7_RGBA_UNORM;
      break;
    case 152:
      result = &texFormatBC7_sRGBA_UNORM;
      break;
    case 159:
      result = &texFormatPVRTC2RGB;
      break;
    case 160:
      result = &texFormatPVRTC2sRGB;
      break;
    case 161:
      result = &texFormatPVRTC4RGB;
      break;
    case 162:
      result = &texFormatPVRTC4sRGB;
      break;
    case 163:
      result = &texFormatPVRTC2RGBA;
      break;
    case 164:
      result = &texFormatPVRTC2sRGBA;
      break;
    case 165:
      result = &texFormatPVRTC4RGBA;
      break;
    case 166:
      result = &texFormatPVRTC4sRGBA;
      break;
    case 169:
      result = &texFormatR11EAC;
      break;
    case 171:
      result = &texFormatR11EAC_SNORM;
      break;
    case 173:
      result = &texFormatRG11EAC;
      break;
    case 175:
      result = &texFormatRG11EAC_SNORM;
      break;
    case 177:
      result = &texFormatETC2RGBA8;
      break;
    case 178:
      result = &texFormatETC2sRGBA8;
      break;
    case 179:
      result = &texFormatETC2RGB8;
      break;
    case 180:
      result = &texFormatETC2sRGB8;
      break;
    case 181:
      result = &texFormatETC2RGB8A1;
      break;
    case 182:
      result = &texFormatETC2sRGB8A1;
      break;
    case 184:
      result = &texFormatASTC4x2sRGBA_UNORM;
      break;
    case 185:
      result = &texFormatASTC4x4sRGBA_UNORM;
      break;
    case 186:
      result = &texFormatASTC5x4sRGBA_UNORM;
      break;
    case 187:
      result = &texFormatASTC5x5sRGBA_UNORM;
      break;
    case 188:
      result = &texFormatASTC6x5sRGBA_UNORM;
      break;
    case 189:
      result = &texFormatASTC6x6sRGBA_UNORM;
      break;
    case 190:
      result = &texFormatASTC8x4sRGBA_UNORM;
      break;
    case 191:
      result = &texFormatASTC8x5sRGBA_UNORM;
      break;
    case 192:
      result = &texFormatASTC8x6sRGBA_UNORM;
      break;
    case 193:
      result = &texFormatASTC8x8sRGBA_UNORM;
      break;
    case 194:
      result = &texFormatASTC10x5sRGBA_UNORM;
      break;
    case 195:
      result = &texFormatASTC10x6sRGBA_UNORM;
      break;
    case 196:
      result = &texFormatASTC10x8sRGBA_UNORM;
      break;
    case 197:
      result = &texFormatASTC10x10sRGBA_UNORM;
      break;
    case 198:
      result = &texFormatASTC12x10sRGBA_UNORM;
      break;
    case 199:
      result = &texFormatASTC12x12sRGBA_UNORM;
      break;
    case 202:
      result = &texFormatASTC4x2RGBA_LP;
      break;
    case 203:
      result = &texFormatASTC4x4RGBA_LP;
      break;
    case 204:
      result = &texFormatASTC5x4RGBA_LP;
      break;
    case 205:
      result = &texFormatASTC5x5RGBA_LP;
      break;
    case 206:
      result = &texFormatASTC6x5RGBA_LP;
      break;
    case 207:
      result = &texFormatASTC6x6RGBA_LP;
      break;
    case 208:
      result = &texFormatASTC8x4RGBA_LP;
      break;
    case 209:
      result = &texFormatASTC8x5RGBA_LP;
      break;
    case 210:
      result = &texFormatASTC8x6RGBA_LP;
      break;
    case 211:
      result = &texFormatASTC8x8RGBA_LP;
      break;
    case 212:
      result = &texFormatASTC10x5RGBA_LP;
      break;
    case 213:
      result = &texFormatASTC10x6RGBA_LP;
      break;
    case 214:
      result = &texFormatASTC10x8RGBA_LP;
      break;
    case 215:
      result = &texFormatASTC10x10RGBA_LP;
      break;
    case 216:
      result = &texFormatASTC12x10RGBA_LP;
      break;
    case 217:
      result = &texFormatASTC12x12RGBA_LP;
      break;
    case 220:
      result = &texFormatASTC4x2RGBA;
      break;
    case 221:
      result = &texFormatASTC4x4RGBA;
      break;
    case 222:
      result = &texFormatASTC5x4RGBA;
      break;
    case 223:
      result = &texFormatASTC5x5RGBA;
      break;
    case 224:
      result = &texFormatASTC6x5RGBA;
      break;
    case 225:
      result = &texFormatASTC6x6RGBA;
      break;
    case 226:
      result = &texFormatASTC8x4RGBA;
      break;
    case 227:
      result = &texFormatASTC8x5RGBA;
      break;
    case 228:
      result = &texFormatASTC8x6RGBA;
      break;
    case 229:
      result = &texFormatASTC8x8RGBA;
      break;
    case 230:
      result = &texFormatASTC10x5RGBA;
      break;
    case 231:
      result = &texFormatASTC10x6RGBA;
      break;
    case 232:
      result = &texFormatASTC10x8RGBA;
      break;
    case 233:
      result = &texFormatASTC10x10RGBA;
      break;
    case 234:
      result = &texFormatASTC12x10RGBA;
      break;
    case 235:
      result = &texFormatASTC12x12RGBA;
      break;
    case 239:
      result = &texFormatYUY2_RGB;
      break;
    case 240:
      result = &texFormatUYVY_RGB;
      break;
    case 249:
      result = &texFormatD16;
      break;
    case 251:
      result = &texFormatD32;
      break;
    case 252:
    case 260:
      result = &texFormatS8;
      break;
    case 259:
      result = &texFormatD32FS8_2PLANE;
      break;
    case 299:
      result = &texFormatRGB8;
      break;
    case 300:
      result = &texFormatsRGB8;
      break;
    case 301:
      result = &texFormatRGB8_SNORM;
      break;
    case 302:
      result = &texFormatRGB8UI;
      break;
    case 303:
      result = &texFormatRGB8I;
      break;
    case 312:
      result = &texFormatRGBX16UI;
      break;
    case 313:
      result = &texFormatRGBX16I;
      break;
    case 314:
      result = &texFormatRGBX16F;
      break;
    case 322:
      result = &texFormatRGBX32UI;
      break;
    case 323:
      result = &texFormatRGBX32I;
      break;
    case 324:
      result = &texFormatRGBX32F;
      break;
    default:
      switch(&texFormatA8)
      {
        case 0x1F4u:
          result = &texFormatYCBCR8_420_2PLANE;
          break;
        case 0x1F5u:
          result = &texFormatYCBCR8_422_1PLANE;
          break;
        case 0x1F6u:
          result = &texFormatYCBCR8_422_2PLANE;
          break;
        case 0x1F7u:
          result = &texFormatYCBCR8_444_2PLANE;
          break;
        case 0x1F8u:
          result = &texFormatYCBCR10_444_1PLANE;
          break;
        case 0x1F9u:
          result = &texFormatYCBCR10_420_2PLANE;
          break;
        case 0x1FAu:
          result = &texFormatYCBCR10_422_2PLANE;
          break;
        case 0x1FBu:
          result = &texFormatYCBCR10_444_2PLANE;
          break;
        case 0x1FCu:
          result = &texFormatYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x1FDu:
          result = &texFormatYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x1FEu:
          result = &texFormatYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x208u:
          result = &texFormatsYCBCR8_420_2PLANE;
          break;
        case 0x209u:
          result = &texFormatsYCBCR8_422_1PLANE;
          break;
        case 0x20Au:
          result = &texFormatsYCBCR8_422_2PLANE;
          break;
        case 0x20Bu:
          result = &texFormatsYCBCR8_444_2PLANE;
          break;
        case 0x20Cu:
          result = &texFormatsYCBCR10_444_1PLANE;
          break;
        case 0x20Du:
          result = &texFormatsYCBCR10_420_2PLANE;
          break;
        case 0x20Eu:
          result = &texFormatsYCBCR10_422_2PLANE;
          break;
        case 0x20Fu:
          result = &texFormatsYCBCR10_444_2PLANE;
          break;
        case 0x210u:
          result = &texFormatsYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x211u:
          result = &texFormatsYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x212u:
          result = &texFormatsYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x21Cu:
          result = &texFormatRGB8_420_2PLANE;
          break;
        case 0x21Du:
          result = &texFormatRGB8_422_2PLANE;
          break;
        case 0x21Eu:
          result = &texFormatRGB8_444_2PLANE;
          break;
        case 0x21Fu:
          result = &texFormatRGB10_420_2PLANE;
          break;
        case 0x220u:
          result = &texFormatRGB10_422_2PLANE;
          break;
        case 0x221u:
          result = &texFormatRGB10_444_2PLANE;
          break;
        case 0x222u:
          result = &texFormatRGB10_420_2PLANE_PACKED;
          break;
        case 0x223u:
          result = &texFormatRGB10_422_2PLANE_PACKED;
          break;
        case 0x224u:
          result = &texFormatRGB10_444_2PLANE_PACKED;
          break;
        case 0x226u:
          result = &texFormatXRRGB10_PLANE_A8_PLANE;
          break;
        case 0x227u:
          result = &texFormatXRSRGB10_PLANE_A8_PLANE;
          break;
        case 0x228u:
          result = &texFormatARGBV16_XR10;
          break;
        case 0x229u:
          result = &texFormatsARGBV16_XR10;
          break;
        case 0x22Au:
          result = &texFormatXRRGB10;
          break;
        case 0x22Bu:
          result = &texFormatXRSRGB10;
          break;
        case 0x230u:
          result = &texFormatYCBCR8A8_444_1PLANE;
          break;
        case 0x232u:
          result = &texFormatYCBCR8_422_1PLANE_REV;
          break;
        case 0x233u:
          result = &texFormatpqYCBCR10_444_1PLANE;
          break;
        case 0x234u:
          result = &texFormatpqYCBCR10_420_2PLANE;
          break;
        case 0x235u:
          result = &texFormatpqYCBCR10_422_2PLANE;
          break;
        case 0x236u:
          result = &texFormatpqYCBCR10_444_2PLANE;
          break;
        case 0x237u:
          result = &texFormatpqYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x238u:
          result = &texFormatpqYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x239u:
          result = &texFormatpqYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x23Au:
          result = &texFormatYCBCR12_420_2PLANE;
          break;
        case 0x23Bu:
          result = &texFormatYCBCR12_422_2PLANE;
          break;
        case 0x23Cu:
          result = &texFormatYCBCR12_444_2PLANE;
          break;
        case 0x23Du:
          result = &texFormatpqYCBCR12_420_2PLANE;
          break;
        case 0x23Eu:
          result = &texFormatpqYCBCR12_422_2PLANE;
          break;
        case 0x23Fu:
          result = &texFormatpqYCBCR12_444_2PLANE;
          break;
        case 0x240u:
          result = &texFormatR10X6F;
          break;
        case 0x241u:
          result = &texFormatsR10X6F;
          break;
        case 0x242u:
          result = &texFormatRG10X12F;
          break;
        case 0x243u:
          result = &texFormatsRG10X12F;
          break;
        case 0x244u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x245u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x246u:
          result = &texFormatYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x247u:
          result = &texFormatpqYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x248u:
          result = &texFormatpqYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x249u:
          result = &texFormatpqYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x24Au:
          result = &texFormatsRGB10_A2;
          break;
        case 0x24Bu:
          result = &texFormatpqRGB10_A2;
          break;
        case 0x24Cu:
          result = &texFormatR10_1PLANE_PACKED;
          break;
        case 0x24Du:
          result = &texFormatRG10_1PLANE_PACKED;
          break;
        case 0x24Eu:
          result = &texFormatYCBCR10_444_1PLANE_XR;
          break;
        case 0x24Fu:
          result = &texFormatYCBCR10_420_2PLANE_XR;
          break;
        case 0x250u:
          result = &texFormatYCBCR10_422_2PLANE_XR;
          break;
        case 0x251u:
          result = &texFormatYCBCR10_444_2PLANE_XR;
          break;
        case 0x252u:
          result = &texFormatYCBCR10_420_2PLANE_PACKED_XR;
          break;
        case 0x253u:
          result = &texFormatYCBCR10_422_2PLANE_PACKED_XR;
          break;
        case 0x254u:
          result = &texFormatYCBCR10_444_2PLANE_PACKED_XR;
          break;
        case 0x255u:
          result = &texFormatYCBCR12_420_2PLANE_XR;
          break;
        case 0x256u:
          result = &texFormatYCBCR12_422_2PLANE_XR;
          break;
        case 0x257u:
          result = &texFormatYCBCR12_444_2PLANE_XR;
          break;
        case 0x258u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED_XR;
          break;
        case 0x259u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED_XR;
          break;
        case 0x25Au:
          result = &texFormatYCBCR12_444_2PLANE_PACKED_XR;
          break;
        case 0x25Bu:
          result = &texFormatR12X4U;
          break;
        case 0x25Cu:
          result = &texFormatpqR12X4U;
          break;
        case 0x25Du:
          result = &texFormatRG12X8U;
          break;
        case 0x25Eu:
          result = &texFormatpqR10X6U;
          break;
        case 0x274u:
          result = &texFormatsBGR10_A2;
          break;
        case 0x275u:
          result = &texFormatpqBGR10_A2;
          break;
        default:
          goto LABEL_157;
      }

      break;
  }

  return result;
}

void *AGX::G15_AGX2::TextureFormatTable::chooseTextureFormatCPP(AGX::G15_AGX2::TextureFormatTable *this, MTLPixelFormat a2)
{
  v2 = this - 1;
  result = &texFormatA8;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 106:
    case 107:
    case 108:
    case 110:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 125:
    case 126:
    case 127:
    case 128:
    case 135:
    case 136:
    case 137:
    case 138:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 167:
    case 168:
    case 170:
    case 172:
    case 174:
    case 176:
    case 183:
    case 200:
    case 201:
    case 218:
    case 219:
    case 236:
    case 237:
    case 238:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 250:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
LABEL_157:
      result = &texFormatUnsupported;
      break;
    case 9:
      result = &texFormatR8;
      break;
    case 10:
      result = &texFormatsR8;
      break;
    case 11:
      result = &texFormatR8_SNORM;
      break;
    case 12:
      result = &texFormatR8UI;
      break;
    case 13:
      result = &texFormatR8I;
      break;
    case 19:
      result = &texFormatR16;
      break;
    case 21:
      result = &texFormatR16_SNORM;
      break;
    case 22:
      result = &texFormatR16UI;
      break;
    case 23:
      result = &texFormatR16I;
      break;
    case 24:
      result = &texFormatR16F;
      break;
    case 25:
      result = &texFormatR16BF;
      break;
    case 29:
      result = &texFormatRG8;
      break;
    case 30:
      result = &texFormatsRG8;
      break;
    case 31:
      result = &texFormatRG8_SNORM;
      break;
    case 32:
      result = &texFormatRG8UI;
      break;
    case 33:
      result = &texFormatRG8I;
      break;
    case 39:
      result = &texFormatRGB565;
      break;
    case 40:
      result = &texFormatRGB5A1;
      break;
    case 41:
      result = &texFormatRGBA4;
      break;
    case 42:
      result = &texFormatA1RGB5;
      break;
    case 43:
      result = &texFormatBGRA4;
      break;
    case 52:
      result = &texFormatR32UI;
      break;
    case 53:
      result = &texFormatR32I;
      break;
    case 54:
      result = &texFormatR32F;
      break;
    case 59:
      result = &texFormatRG16;
      break;
    case 61:
      result = &texFormatRG16_SNORM;
      break;
    case 62:
      result = &texFormatRG16UI;
      break;
    case 63:
      result = &texFormatRG16I;
      break;
    case 64:
      result = &texFormatRG16F;
      break;
    case 65:
      result = &texFormatRG16BF;
      break;
    case 69:
      result = &texFormatRGBA8;
      break;
    case 70:
      result = &texFormatsRGBA8;
      break;
    case 71:
      result = &texFormatRGBA8_SNORM;
      break;
    case 72:
      result = &texFormatRGBA8UI;
      break;
    case 73:
      result = &texFormatRGBA8I;
      break;
    case 79:
      result = &texFormatBGRA8;
      break;
    case 80:
      result = &texFormatsBGRA8;
      break;
    case 83:
      result = &texFormatARGB8;
      break;
    case 84:
      result = &texFormatsARGB8;
      break;
    case 89:
      result = &texFormatRGB10_A2;
      break;
    case 90:
      result = &texFormatRGB10_A2UI;
      break;
    case 91:
      result = &texFormatR11FG11FB10F;
      break;
    case 92:
      result = &texFormatRGB9_E5;
      break;
    case 93:
      result = &texFormatBGR10_A2;
      break;
    case 102:
      result = &texFormatRG32UI;
      break;
    case 103:
      result = &texFormatRG32I;
      break;
    case 104:
      result = &texFormatRG32F;
      break;
    case 109:
      result = &texFormatRGBA16;
      break;
    case 111:
      result = &texFormatRGBA16_SNORM;
      break;
    case 112:
      result = &texFormatRGBA16UI;
      break;
    case 113:
      result = &texFormatRGBA16I;
      break;
    case 114:
      result = &texFormatRGBA16F;
      break;
    case 115:
      result = &texFormatRGBA16BF;
      break;
    case 122:
      result = &texFormatRGBA32UI;
      break;
    case 123:
      result = &texFormatRGBA32I;
      break;
    case 124:
      result = &texFormatRGBA32F;
      break;
    case 129:
      result = &texFormatBC1_RGBA_UNORM;
      break;
    case 130:
      result = &texFormatBC1_sRGBA_UNORM;
      break;
    case 131:
      result = &texFormatBC2_RGBA_UNORM;
      break;
    case 132:
      result = &texFormatBC2_sRGBA_UNORM;
      break;
    case 133:
      result = &texFormatBC3_RGBA_UNORM;
      break;
    case 134:
      result = &texFormatBC3_sRGBA_UNORM;
      break;
    case 139:
      result = &texFormatBC4_R_UNORM;
      break;
    case 140:
      result = &texFormatBC4_R_SNORM;
      break;
    case 141:
      result = &texFormatBC5_RG_UNORM;
      break;
    case 142:
      result = &texFormatBC5_RG_SNORM;
      break;
    case 149:
      result = &texFormatBC6H_RGB_FLOAT;
      break;
    case 150:
      result = &texFormatBC6H_RGB_UFLOAT;
      break;
    case 151:
      result = &texFormatBC7_RGBA_UNORM;
      break;
    case 152:
      result = &texFormatBC7_sRGBA_UNORM;
      break;
    case 159:
      result = &texFormatPVRTC2RGB;
      break;
    case 160:
      result = &texFormatPVRTC2sRGB;
      break;
    case 161:
      result = &texFormatPVRTC4RGB;
      break;
    case 162:
      result = &texFormatPVRTC4sRGB;
      break;
    case 163:
      result = &texFormatPVRTC2RGBA;
      break;
    case 164:
      result = &texFormatPVRTC2sRGBA;
      break;
    case 165:
      result = &texFormatPVRTC4RGBA;
      break;
    case 166:
      result = &texFormatPVRTC4sRGBA;
      break;
    case 169:
      result = &texFormatR11EAC;
      break;
    case 171:
      result = &texFormatR11EAC_SNORM;
      break;
    case 173:
      result = &texFormatRG11EAC;
      break;
    case 175:
      result = &texFormatRG11EAC_SNORM;
      break;
    case 177:
      result = &texFormatETC2RGBA8;
      break;
    case 178:
      result = &texFormatETC2sRGBA8;
      break;
    case 179:
      result = &texFormatETC2RGB8;
      break;
    case 180:
      result = &texFormatETC2sRGB8;
      break;
    case 181:
      result = &texFormatETC2RGB8A1;
      break;
    case 182:
      result = &texFormatETC2sRGB8A1;
      break;
    case 184:
      result = &texFormatASTC4x2sRGBA_UNORM;
      break;
    case 185:
      result = &texFormatASTC4x4sRGBA_UNORM;
      break;
    case 186:
      result = &texFormatASTC5x4sRGBA_UNORM;
      break;
    case 187:
      result = &texFormatASTC5x5sRGBA_UNORM;
      break;
    case 188:
      result = &texFormatASTC6x5sRGBA_UNORM;
      break;
    case 189:
      result = &texFormatASTC6x6sRGBA_UNORM;
      break;
    case 190:
      result = &texFormatASTC8x4sRGBA_UNORM;
      break;
    case 191:
      result = &texFormatASTC8x5sRGBA_UNORM;
      break;
    case 192:
      result = &texFormatASTC8x6sRGBA_UNORM;
      break;
    case 193:
      result = &texFormatASTC8x8sRGBA_UNORM;
      break;
    case 194:
      result = &texFormatASTC10x5sRGBA_UNORM;
      break;
    case 195:
      result = &texFormatASTC10x6sRGBA_UNORM;
      break;
    case 196:
      result = &texFormatASTC10x8sRGBA_UNORM;
      break;
    case 197:
      result = &texFormatASTC10x10sRGBA_UNORM;
      break;
    case 198:
      result = &texFormatASTC12x10sRGBA_UNORM;
      break;
    case 199:
      result = &texFormatASTC12x12sRGBA_UNORM;
      break;
    case 202:
      result = &texFormatASTC4x2RGBA_LP;
      break;
    case 203:
      result = &texFormatASTC4x4RGBA_LP;
      break;
    case 204:
      result = &texFormatASTC5x4RGBA_LP;
      break;
    case 205:
      result = &texFormatASTC5x5RGBA_LP;
      break;
    case 206:
      result = &texFormatASTC6x5RGBA_LP;
      break;
    case 207:
      result = &texFormatASTC6x6RGBA_LP;
      break;
    case 208:
      result = &texFormatASTC8x4RGBA_LP;
      break;
    case 209:
      result = &texFormatASTC8x5RGBA_LP;
      break;
    case 210:
      result = &texFormatASTC8x6RGBA_LP;
      break;
    case 211:
      result = &texFormatASTC8x8RGBA_LP;
      break;
    case 212:
      result = &texFormatASTC10x5RGBA_LP;
      break;
    case 213:
      result = &texFormatASTC10x6RGBA_LP;
      break;
    case 214:
      result = &texFormatASTC10x8RGBA_LP;
      break;
    case 215:
      result = &texFormatASTC10x10RGBA_LP;
      break;
    case 216:
      result = &texFormatASTC12x10RGBA_LP;
      break;
    case 217:
      result = &texFormatASTC12x12RGBA_LP;
      break;
    case 220:
      result = &texFormatASTC4x2RGBA;
      break;
    case 221:
      result = &texFormatASTC4x4RGBA;
      break;
    case 222:
      result = &texFormatASTC5x4RGBA;
      break;
    case 223:
      result = &texFormatASTC5x5RGBA;
      break;
    case 224:
      result = &texFormatASTC6x5RGBA;
      break;
    case 225:
      result = &texFormatASTC6x6RGBA;
      break;
    case 226:
      result = &texFormatASTC8x4RGBA;
      break;
    case 227:
      result = &texFormatASTC8x5RGBA;
      break;
    case 228:
      result = &texFormatASTC8x6RGBA;
      break;
    case 229:
      result = &texFormatASTC8x8RGBA;
      break;
    case 230:
      result = &texFormatASTC10x5RGBA;
      break;
    case 231:
      result = &texFormatASTC10x6RGBA;
      break;
    case 232:
      result = &texFormatASTC10x8RGBA;
      break;
    case 233:
      result = &texFormatASTC10x10RGBA;
      break;
    case 234:
      result = &texFormatASTC12x10RGBA;
      break;
    case 235:
      result = &texFormatASTC12x12RGBA;
      break;
    case 239:
      result = &texFormatYUY2_RGB;
      break;
    case 240:
      result = &texFormatUYVY_RGB;
      break;
    case 249:
      result = &texFormatD16;
      break;
    case 251:
      result = &texFormatD32;
      break;
    case 252:
    case 260:
      result = &texFormatS8;
      break;
    case 259:
      result = &texFormatD32FS8_2PLANE;
      break;
    case 299:
      result = &texFormatRGB8;
      break;
    case 300:
      result = &texFormatsRGB8;
      break;
    case 301:
      result = &texFormatRGB8_SNORM;
      break;
    case 302:
      result = &texFormatRGB8UI;
      break;
    case 303:
      result = &texFormatRGB8I;
      break;
    case 312:
      result = &texFormatRGBX16UI;
      break;
    case 313:
      result = &texFormatRGBX16I;
      break;
    case 314:
      result = &texFormatRGBX16F;
      break;
    case 322:
      result = &texFormatRGBX32UI;
      break;
    case 323:
      result = &texFormatRGBX32I;
      break;
    case 324:
      result = &texFormatRGBX32F;
      break;
    default:
      switch(&texFormatA8)
      {
        case 0x1F4u:
          result = &texFormatYCBCR8_420_2PLANE;
          break;
        case 0x1F5u:
          result = &texFormatYCBCR8_422_1PLANE;
          break;
        case 0x1F6u:
          result = &texFormatYCBCR8_422_2PLANE;
          break;
        case 0x1F7u:
          result = &texFormatYCBCR8_444_2PLANE;
          break;
        case 0x1F8u:
          result = &texFormatYCBCR10_444_1PLANE;
          break;
        case 0x1F9u:
          result = &texFormatYCBCR10_420_2PLANE;
          break;
        case 0x1FAu:
          result = &texFormatYCBCR10_422_2PLANE;
          break;
        case 0x1FBu:
          result = &texFormatYCBCR10_444_2PLANE;
          break;
        case 0x1FCu:
          result = &texFormatYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x1FDu:
          result = &texFormatYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x1FEu:
          result = &texFormatYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x208u:
          result = &texFormatsYCBCR8_420_2PLANE;
          break;
        case 0x209u:
          result = &texFormatsYCBCR8_422_1PLANE;
          break;
        case 0x20Au:
          result = &texFormatsYCBCR8_422_2PLANE;
          break;
        case 0x20Bu:
          result = &texFormatsYCBCR8_444_2PLANE;
          break;
        case 0x20Cu:
          result = &texFormatsYCBCR10_444_1PLANE;
          break;
        case 0x20Du:
          result = &texFormatsYCBCR10_420_2PLANE;
          break;
        case 0x20Eu:
          result = &texFormatsYCBCR10_422_2PLANE;
          break;
        case 0x20Fu:
          result = &texFormatsYCBCR10_444_2PLANE;
          break;
        case 0x210u:
          result = &texFormatsYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x211u:
          result = &texFormatsYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x212u:
          result = &texFormatsYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x21Cu:
          result = &texFormatRGB8_420_2PLANE;
          break;
        case 0x21Du:
          result = &texFormatRGB8_422_2PLANE;
          break;
        case 0x21Eu:
          result = &texFormatRGB8_444_2PLANE;
          break;
        case 0x21Fu:
          result = &texFormatRGB10_420_2PLANE;
          break;
        case 0x220u:
          result = &texFormatRGB10_422_2PLANE;
          break;
        case 0x221u:
          result = &texFormatRGB10_444_2PLANE;
          break;
        case 0x222u:
          result = &texFormatRGB10_420_2PLANE_PACKED;
          break;
        case 0x223u:
          result = &texFormatRGB10_422_2PLANE_PACKED;
          break;
        case 0x224u:
          result = &texFormatRGB10_444_2PLANE_PACKED;
          break;
        case 0x226u:
          result = &texFormatXRRGB10_PLANE_A8_PLANE;
          break;
        case 0x227u:
          result = &texFormatXRSRGB10_PLANE_A8_PLANE;
          break;
        case 0x228u:
          result = &texFormatARGBV16_XR10;
          break;
        case 0x229u:
          result = &texFormatsARGBV16_XR10;
          break;
        case 0x22Au:
          result = &texFormatXRRGB10;
          break;
        case 0x22Bu:
          result = &texFormatXRSRGB10;
          break;
        case 0x22Cu:
          result = &texFormatRGBA16F_XR;
          break;
        case 0x230u:
          result = &texFormatYCBCR8A8_444_1PLANE;
          break;
        case 0x232u:
          result = &texFormatYCBCR8_422_1PLANE_REV;
          break;
        case 0x233u:
          result = &texFormatpqYCBCR10_444_1PLANE;
          break;
        case 0x234u:
          result = &texFormatpqYCBCR10_420_2PLANE;
          break;
        case 0x235u:
          result = &texFormatpqYCBCR10_422_2PLANE;
          break;
        case 0x236u:
          result = &texFormatpqYCBCR10_444_2PLANE;
          break;
        case 0x237u:
          result = &texFormatpqYCBCR10_420_2PLANE_PACKED;
          break;
        case 0x238u:
          result = &texFormatpqYCBCR10_422_2PLANE_PACKED;
          break;
        case 0x239u:
          result = &texFormatpqYCBCR10_444_2PLANE_PACKED;
          break;
        case 0x23Au:
          result = &texFormatYCBCR12_420_2PLANE;
          break;
        case 0x23Bu:
          result = &texFormatYCBCR12_422_2PLANE;
          break;
        case 0x23Cu:
          result = &texFormatYCBCR12_444_2PLANE;
          break;
        case 0x23Du:
          result = &texFormatpqYCBCR12_420_2PLANE;
          break;
        case 0x23Eu:
          result = &texFormatpqYCBCR12_422_2PLANE;
          break;
        case 0x23Fu:
          result = &texFormatpqYCBCR12_444_2PLANE;
          break;
        case 0x240u:
          result = &texFormatR10X6F;
          break;
        case 0x241u:
          result = &texFormatsR10X6F;
          break;
        case 0x242u:
          result = &texFormatRG10X12F;
          break;
        case 0x243u:
          result = &texFormatsRG10X12F;
          break;
        case 0x244u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x245u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x246u:
          result = &texFormatYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x247u:
          result = &texFormatpqYCBCR12_420_2PLANE_PACKED;
          break;
        case 0x248u:
          result = &texFormatpqYCBCR12_422_2PLANE_PACKED;
          break;
        case 0x249u:
          result = &texFormatpqYCBCR12_444_2PLANE_PACKED;
          break;
        case 0x24Au:
          result = &texFormatsRGB10_A2;
          break;
        case 0x24Bu:
          result = &texFormatpqRGB10_A2;
          break;
        case 0x24Cu:
          result = &texFormatR10_1PLANE_PACKED;
          break;
        case 0x24Du:
          result = &texFormatRG10_1PLANE_PACKED;
          break;
        case 0x24Eu:
          result = &texFormatYCBCR10_444_1PLANE_XR;
          break;
        case 0x24Fu:
          result = &texFormatYCBCR10_420_2PLANE_XR;
          break;
        case 0x250u:
          result = &texFormatYCBCR10_422_2PLANE_XR;
          break;
        case 0x251u:
          result = &texFormatYCBCR10_444_2PLANE_XR;
          break;
        case 0x252u:
          result = &texFormatYCBCR10_420_2PLANE_PACKED_XR;
          break;
        case 0x253u:
          result = &texFormatYCBCR10_422_2PLANE_PACKED_XR;
          break;
        case 0x254u:
          result = &texFormatYCBCR10_444_2PLANE_PACKED_XR;
          break;
        case 0x255u:
          result = &texFormatYCBCR12_420_2PLANE_XR;
          break;
        case 0x256u:
          result = &texFormatYCBCR12_422_2PLANE_XR;
          break;
        case 0x257u:
          result = &texFormatYCBCR12_444_2PLANE_XR;
          break;
        case 0x258u:
          result = &texFormatYCBCR12_420_2PLANE_PACKED_XR;
          break;
        case 0x259u:
          result = &texFormatYCBCR12_422_2PLANE_PACKED_XR;
          break;
        case 0x25Au:
          result = &texFormatYCBCR12_444_2PLANE_PACKED_XR;
          break;
        case 0x25Bu:
          result = &texFormatR12X4U;
          break;
        case 0x25Cu:
          result = &texFormatpqR12X4U;
          break;
        case 0x25Du:
          result = &texFormatRG12X8U;
          break;
        case 0x25Eu:
          result = &texFormatpqR10X6U;
          break;
        default:
          goto LABEL_157;
      }

      break;
  }

  return result;
}

void *AGX::Impl::VertexProgramKey::addToSerializeStream(void *this)
{
  v1 = this;
  v2 = this + 18;
  v3 = *(this + 167);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = this[19];
    if (!v3)
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(this + 167))
  {
LABEL_6:
    this = ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(this, 0x4Bu, v2, v3);
  }

LABEL_7:
  v4 = v1 + 21;
  v5 = *(v1 + 191);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v1[22];
    if (!v5)
    {
      return this;
    }

    v4 = *v4;
  }

  else if (!*(v1 + 191))
  {
    return this;
  }

  return ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(v1, 0x4Cu, v4, v5);
}

void *ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(uint64_t a1, unsigned __int8 a2, const void *a3, size_t a4)
{
  v7 = a1 + 16;
  v8 = *(a1 + 24) - *(a1 + 16);
  std::vector<unsigned int>::resize((a1 + 16), ((((a4 + 3) >> 2) + 2) & 0x7FFFFFFFFFFFFFFELL) + (v8 >> 2));
  v9 = (*v7 + v8);
  *v9 = a2 | ((*(v7 + 8) - *v7) >> 2 << 8);
  v10 = v9 + 1;

  return memcpy(v10, a3, a4);
}

uint64_t AGX::Impl::VertexProgramKey::addToDigest(AGX::Impl::VertexProgramKey *this, CC_SHA256state_st *a2)
{
  result = AGX::defaultVertexDescriptor(this);
  v5 = result;
  v6 = *(this + 7);
  v7 = *result;
  v8 = *(result - v7);
  if (v8 < 0x15)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = *(result - v7 + 20);
    if (*(result - v7 + 20))
    {
      LODWORD(v9) = *(result + v9);
    }
  }

  if (((v6 >> 10) & 3) == v9)
  {
    v10 = -v7;
  }

  else
  {
    v34 = (v6 >> 10) & 3;
    data = 20;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
    v6 = *(this + 7);
    v11 = *v5;
    v10 = -v11;
    v8 = *(v5 - v11);
  }

  if (v8 < 0x19)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = *(v5 + v10 + 24);
    if (*(v5 + v10 + 24))
    {
      LODWORD(v12) = *(v5 + v12);
    }
  }

  if (((v6 >> 8) & 3) != v12)
  {
    v34 = (v6 >> 8) & 3;
    data = 24;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
  }

  if (*(this + 5))
  {
    LOWORD(v34) = 30;
    CC_SHA256_Update(a2, &v34, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v13 = *v5;
  v14 = *(v5 - v13);
  if (v14 < 0x21)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = *(v5 - v13 + 32);
    if (*(v5 - v13 + 32))
    {
      LODWORD(v15) = *(v5 + v15);
    }
  }

  if ((*(this + 22) & 1) == v15)
  {
    v16 = -v13;
  }

  else
  {
    LODWORD(v34) = *(this + 22) & 1;
    data = 32;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 4u);
    v17 = *v5;
    v16 = -v17;
    v14 = *(v5 - v17);
  }

  v18 = *(this + 7);
  if (v14 < 0x1D)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = *(v5 + v16 + 28);
    if (*(v5 + v16 + 28))
    {
      LODWORD(v19) = *(v5 + v19);
    }
  }

  if (((v18 >> 12) & 3) != v19)
  {
    v34 = (v18 >> 12) & 3;
    data = 28;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
    v18 = *(this + 7);
    v20 = *v5;
    v16 = -v20;
    v14 = *(v5 - v20);
  }

  if (v14 >= 0x1B && *(v5 + v16 + 26))
  {
    v21 = *(v5 + *(v5 + v16 + 26));
  }

  else
  {
    v21 = 1;
  }

  if (((v18 >> 14) & 0xF) != v21)
  {
    v34 = (v18 >> 14) & 0xF;
    data = 26;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
    v18 = *(this + 7);
    v22 = *v5;
    v16 = -v22;
    v14 = *(v5 - v22);
  }

  if (v14 >= 0x2B && *(v5 + v16 + 42))
  {
    if (((v18 & 0x80000) == 0) != (*(v5 + *(v5 + v16 + 42)) != 0))
    {
      v23 = (v18 >> 20) & 1;
      goto LABEL_42;
    }
  }

  else if ((v18 & 0x80000) == 0)
  {
    goto LABEL_41;
  }

  v34 = (v18 >> 19) & 1;
  data = 42;
  CC_SHA256_Update(a2, &data, 2u);
  result = CC_SHA256_Update(a2, &v34, 8u);
  v18 = *(this + 7);
  v24 = *v5;
  v16 = -v24;
  v14 = *(v5 - v24);
LABEL_41:
  v23 = (v18 >> 20) & 1;
  if (v14 < 9)
  {
    goto LABEL_49;
  }

LABEL_42:
  v25 = v5 + v16;
  if (*(v5 + v16 + 8))
  {
    LODWORD(v26) = 0;
    if (v14 < 0xB || !*(v5 + *(v5 + v16 + 8)))
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v14 < 0xB)
  {
LABEL_49:
    LODWORD(v26) = 0;
    goto LABEL_50;
  }

LABEL_47:
  v26 = *(v25 + 5);
  if (*(v25 + 5))
  {
    LODWORD(v26) = *(v5 + v26) == 1;
  }

LABEL_50:
  if (v23 != v26)
  {
    v34 = (v18 >> 20) & 1;
    data = 8;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
    v18 = *(this + 7);
    v27 = *v5;
    v16 = -v27;
    v14 = *(v5 - v27);
  }

  if (v14 < 0x11)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = *(v5 + v16 + 16);
    if (*(v5 + v16 + 16))
    {
      LODWORD(v28) = *(v5 + v28);
    }
  }

  if (((v18 >> 22) & 1) != v28)
  {
    v34 = (v18 >> 22) & 1;
    data = 16;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
    v18 = *(this + 7);
    v29 = *v5;
    v16 = -v29;
    v14 = *(v5 - v29);
  }

  if (v14 < 0x23 || !*(v5 + v16 + 34))
  {
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (((v18 & 0x2000000) == 0) == (*(v5 + *(v5 + v16 + 34)) != 0))
  {
LABEL_63:
    v34 = (v18 >> 25) & 1;
    data = 34;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v34, 8u);
  }

LABEL_64:
  v30 = (this + 144);
  v31 = *(this + 167);
  if (v31 < 0)
  {
    v31 = *(this + 19);
    if (!v31)
    {
      goto LABEL_70;
    }

    v30 = *v30;
    goto LABEL_69;
  }

  if (*(this + 167))
  {
LABEL_69:
    result = CC_SHA256_Update(a2, v30, v31);
  }

LABEL_70:
  v32 = (this + 168);
  v33 = *(this + 191);
  if (v33 < 0)
  {
    v33 = *(this + 22);
    if (!v33)
    {
      return result;
    }

    v32 = *v32;
    return CC_SHA256_Update(a2, v32, v33);
  }

  if (*(this + 191))
  {
    return CC_SHA256_Update(a2, v32, v33);
  }

  return result;
}

uint64_t AGX::defaultVertexDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultVertexDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultVertexDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultVertexDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultVertexDescriptor(void)::_desc;
}

void *AGX::Impl::MeshProgramKey::addToSerializeStream(void *this)
{
  v1 = this;
  v2 = this + 19;
  v3 = *(this + 175);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = this[20];
    if (!v3)
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(this + 175))
  {
LABEL_6:
    this = ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(this, 0x4Bu, v2, v3);
  }

LABEL_7:
  v4 = v1 + 22;
  v5 = *(v1 + 199);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v1[23];
    if (!v5)
    {
      return this;
    }

    v4 = *v4;
  }

  else if (!*(v1 + 199))
  {
    return this;
  }

  return ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(v1, 0x4Cu, v4, v5);
}

uint64_t AGX::Impl::MeshProgramKey::addToDigest(AGX::Impl::MeshProgramKey *this, CC_SHA256state_st *a2)
{
  v4 = AGX::defaultMeshDescriptor(this);
  result = (*(*this + 40))(this);
  v6 = *v4;
  v7 = *(v4 - v6);
  if (v7 < 0x15)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = *(v4 - v6 + 20);
    if (*(v4 - v6 + 20))
    {
      LODWORD(v8) = *(v4 + v8);
    }
  }

  if (v8 == result)
  {
    v9 = -v6;
  }

  else
  {
    LOBYTE(v31) = (*(*this + 40))(this);
    LOWORD(data) = 20;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v31, 1u);
    v10 = *v4;
    v9 = -v10;
    v7 = *(v4 - v10);
  }

  v11 = *(this + 13);
  if (v7 < 0x17 || !*(v4 + v9 + 22))
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (((*(this + 13) & 0x200) == 0) == (*(v4 + *(v4 + v9 + 22)) != 0))
  {
LABEL_13:
    data = (v11 >> 9) & 1;
    v31 = 22;
    CC_SHA256_Update(a2, &v31, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_14:
  if (*(this + 5))
  {
    LOWORD(data) = 18;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v12 = *(this + 14);
  v13 = *v4;
  v14 = -v13;
  v15 = v4 - v13;
  v16 = *(v4 - v13);
  if (v16 < 0x1D || (v17 = *(v15 + 14)) == 0)
  {
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (((*(this + 14) & 0x20) == 0) == (*(v4 + v17) != 0))
  {
LABEL_21:
    data = (v12 >> 5) & 1;
    v31 = 28;
    CC_SHA256_Update(a2, &v31, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v12 = *(this + 14);
    v19 = *v4;
    v14 = -v19;
    v16 = *(v4 - v19);
LABEL_22:
    v18 = v12 & 0xF;
    if (v16 < 0xF)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v18 = v12 & 0xF;
LABEL_23:
  if (*(v4 + v14 + 14))
  {
    v20 = *(v4 + *(v4 + v14 + 14));
    goto LABEL_26;
  }

LABEL_25:
  v20 = 1;
LABEL_26:
  if (v20 != v18)
  {
    data = v18;
    v31 = 14;
    CC_SHA256_Update(a2, &v31, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v21 = *v4;
    v14 = -v21;
    v16 = *(v4 - v21);
  }

  if (v16 < 7)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v4 + v14 + 6);
    if (*(v4 + v14 + 6))
    {
      v22 = *(v4 + v22);
    }
  }

  if (v22 != *(this + 15))
  {
    LOWORD(data) = 6;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 60, 4u);
    v23 = *v4;
    v14 = -v23;
    v16 = *(v4 - v23);
  }

  if (v16 < 9)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v4 + v14 + 8);
    if (v24)
    {
      v24 = *(v4 + v24);
    }
  }

  if (v24 != *(this + 16))
  {
    LOWORD(data) = 8;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 64, 4u);
  }

  v25 = *(this + 14);
  if ((v25 & 0x80) != 0)
  {
    data = 1;
    v31 = 0x8000;
    CC_SHA256_Update(a2, &v31, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v25 = *(this + 14);
  }

  if ((v25 & 0x100) != 0)
  {
    data = 1;
    v31 = -32767;
    CC_SHA256_Update(a2, &v31, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

  v26 = (this + 152);
  v27 = *(this + 175);
  if (v27 < 0)
  {
    v27 = *(this + 20);
    if (!v27)
    {
      goto LABEL_50;
    }

    v26 = *v26;
    goto LABEL_49;
  }

  if (*(this + 175))
  {
LABEL_49:
    result = CC_SHA256_Update(a2, v26, v27);
  }

LABEL_50:
  v28 = (this + 176);
  v29 = *(this + 199);
  if (v29 < 0)
  {
    v29 = *(this + 23);
    if (!v29)
    {
      return result;
    }

    v28 = *v28;
    return CC_SHA256_Update(a2, v28, v29);
  }

  if (*(this + 199))
  {
    return CC_SHA256_Update(a2, v28, v29);
  }

  return result;
}

uint64_t AGX::defaultMeshDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultMeshDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultMeshDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultMeshDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultMeshDescriptor(void)::_desc;
}

uint64_t AGX::Impl::ObjectProgramKey::addToDigest(AGX::Impl::ObjectProgramKey *this, CC_SHA256state_st *a2)
{
  v4 = AGX::defaultObjectDescriptor(this);
  result = (*(*this + 40))(this);
  v6 = *v4;
  v7 = *(v4 - v6);
  if (v7 < 0x15)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = *(v4 - v6 + 20);
    if (*(v4 - v6 + 20))
    {
      LODWORD(v8) = *(v4 + v8);
    }
  }

  if (v8 == result)
  {
    v9 = -v6;
  }

  else
  {
    LOBYTE(v27) = (*(*this + 40))(this);
    LOWORD(data) = 20;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v27, 1u);
    v10 = *v4;
    v9 = -v10;
    v7 = *(v4 - v10);
  }

  v11 = *(this + 13);
  if (v7 < 0x17 || !*(v4 + v9 + 22))
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (((*(this + 13) & 0x200) == 0) == (*(v4 + *(v4 + v9 + 22)) != 0))
  {
LABEL_13:
    data = (v11 >> 9) & 1;
    v27 = 22;
    CC_SHA256_Update(a2, &v27, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_14:
  if (*(this + 5))
  {
    LOWORD(data) = 18;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v12 = *(this + 14);
  v13 = *v4;
  v14 = -v13;
  v15 = v4 - v13;
  v16 = *(v4 - v13);
  if (v16 < 0x1B || (v17 = *(v15 + 13)) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (((*(v4 + v17) != 0) ^ v12))
  {
LABEL_21:
    data = *(this + 14) & 1;
    v27 = 26;
    CC_SHA256_Update(a2, &v27, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    LODWORD(v12) = *(this + 14);
    v19 = *v4;
    v14 = -v19;
    v16 = *(v4 - v19);
LABEL_22:
    v18 = (v12 >> 3) & 0xF;
    if (v16 < 0xF)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v18 = (v12 >> 3) & 0xF;
LABEL_23:
  if (*(v4 + v14 + 14))
  {
    v20 = *(v4 + *(v4 + v14 + 14));
    goto LABEL_26;
  }

LABEL_25:
  v20 = 1;
LABEL_26:
  if (v20 != v18)
  {
    data = v18;
    v27 = 14;
    CC_SHA256_Update(a2, &v27, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v21 = *v4;
    v14 = -v21;
    v16 = *(v4 - v21);
  }

  if (v16 < 7)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v4 + v14 + 6);
    if (*(v4 + v14 + 6))
    {
      v22 = *(v4 + v22);
    }
  }

  if (v22 != *(this + 15))
  {
    LOWORD(data) = 6;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 60, 4u);
    v23 = *v4;
    v14 = -v23;
    v16 = *(v4 - v23);
  }

  if (v16 < 9)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v4 + v14 + 8);
    if (v24)
    {
      v24 = *(v4 + v24);
    }
  }

  if (v24 != *(this + 16))
  {
    LOWORD(data) = 8;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 64, 4u);
  }

  v25 = *(this + 14);
  if ((v25 & 4) != 0)
  {
    data = (v25 >> 1) & 1;
    v27 = 0x8000;
    CC_SHA256_Update(a2, &v27, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    if ((*(this + 56) & 4) != 0)
    {
      data = 1;
      v27 = -32767;
      CC_SHA256_Update(a2, &v27, 2u);
      return CC_SHA256_Update(a2, &data, 4u);
    }
  }

  return result;
}

uint64_t AGX::defaultObjectDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultObjectDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultObjectDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultObjectDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultObjectDescriptor(void)::_desc;
}

void AGX::Impl::FragmentProgramKey::serialize(AGX::Impl::FragmentProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = this + 16;
  *(this + 3) = *(this + 2);
  v21 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v21);
  v7 = *(v6 + 1) - *v6;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 20);
  v8 = *v6 + v7;
  *v8 = ((*(v6 + 2) - *v6) >> 2 << 8) | 0x3F;
  *(v8 + 4) = *(v6 + 24);
  v9 = *(v6 + 40);
  v10 = *(v6 + 56);
  v11 = *(v6 + 72);
  *(v8 + 68) = *(v6 + 11);
  *(v8 + 52) = v11;
  *(v8 + 36) = v10;
  *(v8 + 20) = v9;
  v12 = *(v6 + 1) - *v6;
  std::vector<unsigned int>::resize(v6, (v12 >> 2) + 12);
  v13 = *v6 + v12;
  *v13 = ((*(v6 + 2) - *v6) >> 2 << 8) | 0x42;
  v14 = *(v6 + 6);
  v15 = *(v6 + 7);
  *(v13 + 36) = *(v6 + 16);
  *(v13 + 20) = v15;
  *(v13 + 4) = v14;
  v16 = v6 + 136;
  v17 = v6[159];
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(this + 20);
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = *v16;
    goto LABEL_6;
  }

  if (v6[159])
  {
LABEL_6:
    ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(this, 0x4Bu, v16, v17);
  }

LABEL_7:
  v18 = (this + 176);
  v19 = *(this + 199);
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (!*(this + 199))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = *(this + 23);
  if (v19)
  {
    v18 = *v18;
LABEL_12:
    ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::addTokenToStream(this, 0x4Cu, v18, v19);
  }

LABEL_13:
  v22 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v22);
  v20 = *(this + 2);
  *a2 = v20;
  *a3 = *(this + 3) - v20;
}

uint64_t AGX::Impl::FragmentProgramKey::addToDigest(AGX::Impl::FragmentProgramKey *this, CC_SHA256state_st *a2)
{
  result = AGX::defaultFragmentDescriptor(this);
  v5 = result;
  v6 = 0;
  v7 = this + 64;
  v41 = 0;
  do
  {
    if (*&v7[4 * v6])
    {
      data = 22;
      CC_SHA256_Update(a2, &data, 2u);
      CC_SHA256_Update(a2, &v41, 4u);
      v8 = &v7[4 * v41];
      data = 22;
      CC_SHA256_Update(a2, &data, 2u);
      result = CC_SHA256_Update(a2, v8, 4u);
      v6 = v41;
    }

    v41 = ++v6;
  }

  while (v6 < 8);
  if (*(this + 6))
  {
    LOWORD(v41) = 22;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, this + 48, 8u);
  }

  v9 = *(this + 10);
  v10 = *v5;
  v11 = *(v5 - v10);
  if (v11 >= 0x27 && *(v5 - v10 + 38))
  {
    v12 = *(v5 + *(v5 - v10 + 38));
    if (v12 > 0xF)
    {
      v13 = 0;
    }

    else
    {
      v13 = dword_20E745CE0[v12];
    }
  }

  else
  {
    v13 = 1;
  }

  if (((v9 >> 6) & 0x1F) == v13)
  {
    v14 = -v10;
  }

  else
  {
    v41 = (v9 >> 6) & 0x1F;
    data = 38;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
    v9 = *(this + 10);
    v15 = *v5;
    v14 = -v15;
    v11 = *(v5 - v15);
  }

  if (v11 >= 0x2B && *(v5 + v14 + 42))
  {
    v16 = *(v5 + *(v5 + v14 + 42));
    if (v16 > 7)
    {
      v17 = 0;
    }

    else
    {
      v17 = dword_20E745D20[v16];
    }
  }

  else
  {
    v17 = 1;
  }

  if (v9 >> 12 != v17)
  {
    v41 = v9 >> 12;
    data = 42;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
    v9 = *(this + 10);
    v18 = *v5;
    v14 = -v18;
    v11 = *(v5 - v18);
  }

  if (v11 < 9)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = *(v5 + v14 + 8);
    if (*(v5 + v14 + 8))
    {
      LODWORD(v19) = *(v5 + v19);
    }
  }

  if ((v9 & 1) != v19)
  {
    v41 = v9 & 1;
    data = 8;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
    v9 = *(this + 10);
    v20 = *v5;
    v14 = -v20;
    v11 = *(v5 - v20);
  }

  if (v11 < 0xB)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = *(v5 + v14 + 10);
    if (*(v5 + v14 + 10))
    {
      LODWORD(v21) = *(v5 + v21);
    }
  }

  if (((v9 >> 1) & 1) != v21)
  {
    v41 = (v9 >> 1) & 1;
    data = 10;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
    v9 = *(this + 10);
    v22 = *v5;
    v14 = -v22;
    v11 = *(v5 - v22);
  }

  v23 = (v9 >> 2) & 1;
  v24 = v5 + v14;
  if (v11 < 0x13)
  {
    if (v11 < 0x11)
    {
      goto LABEL_41;
    }
  }

  else if (*(v24 + 9) && *(v5 + *(v24 + 9)) != 1.0)
  {
    goto LABEL_41;
  }

  if (*(v24 + 8))
  {
    v25 = *(v5 + *(v24 + 8)) != 0xFFFFFFFFLL;
    goto LABEL_42;
  }

LABEL_41:
  v25 = 1;
LABEL_42:
  if (v23 != v25)
  {
    v41 = v23;
    data = 18;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
  }

  if (*(this + 7))
  {
    LOWORD(v41) = 28;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, this + 56, 8u);
  }

  v26 = *v5;
  v27 = *(v5 - v26);
  if (v27 < 0x1F)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = *(v5 - v26 + 30);
    if (*(v5 - v26 + 30))
    {
      LODWORD(v28) = *(v5 + v28);
    }
  }

  if (v28 == *(this + 224))
  {
    v29 = -v26;
  }

  else
  {
    LOWORD(v41) = 30;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, this + 224, 1u);
    v30 = *v5;
    v29 = -v30;
    v27 = *(v5 - v30);
  }

  v31 = *(this + 27);
  if (v27 >= 0x33 && *(v5 + v29 + 50))
  {
    if (((*(this + 27) & 4) == 0) != (*(v5 + *(v5 + v29 + 50)) != 0))
    {
      goto LABEL_60;
    }
  }

  else if ((v31 & 4) == 0)
  {
    goto LABEL_59;
  }

  v41 = (v31 >> 2) & 1;
  data = 50;
  CC_SHA256_Update(a2, &data, 2u);
  result = CC_SHA256_Update(a2, &v41, 4u);
  v31 = *(this + 27);
  v32 = *v5;
  v29 = -v32;
  v27 = *(v5 - v32);
LABEL_59:
  if (v27 < 0x21)
  {
    goto LABEL_63;
  }

LABEL_60:
  if (!*(v5 + v29 + 32))
  {
LABEL_63:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (((v31 & 0x40) == 0) == (*(v5 + *(v5 + v29 + 32)) != 0))
  {
LABEL_64:
    v41 = (v31 >> 6) & 1;
    data = 32;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v41, 4u);
  }

LABEL_65:
  v33 = *(this + 36);
  if (v33)
  {
    LOWORD(v41) = 22;
    CC_SHA256_Update(a2, &v41, 2u);
    CC_SHA256_Update(a2, this + 112, 0x20u);
    LOBYTE(data) = *(this + 36);
    LOWORD(v41) = 22;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, &data, 1u);
    v33 = *(this + 36);
  }

  v34 = 1;
  v35 = *v5;
  v36 = v5 - v35;
  v37 = *(v5 - v35);
  if (v37 >= 0xD)
  {
    if (*(v36 + 6))
    {
      v34 = *(v5 + *(v36 + 6));
    }

    else
    {
      v34 = 1;
    }
  }

  if (v34 == 1 << (BYTE1(v33) & 3))
  {
    v38 = -v35;
  }

  else
  {
    LOBYTE(data) = 1 << (BYTE1(v33) & 3);
    LOWORD(v41) = 12;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, &data, 1u);
    v33 = *(this + 36);
    v39 = *v5;
    v38 = -v39;
    v37 = *(v5 - v39);
  }

  v40 = (1 << ((v33 >> 10) & 3));
  if (v37 < 0xF || !*(v5 + v38 + 14) || *(v5 + *(v5 + v38 + 14)) != v40)
  {
    LOBYTE(data) = v40;
    LOWORD(v41) = 14;
    CC_SHA256_Update(a2, &v41, 2u);
    result = CC_SHA256_Update(a2, &data, 1u);
  }

  if (*(this + 109))
  {
    v41 = 1;
    data = 0x8000;
    CC_SHA256_Update(a2, &data, 2u);
    return CC_SHA256_Update(a2, &v41, 4u);
  }

  return result;
}

uint64_t AGX::defaultFragmentDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultFragmentDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultFragmentDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultFragmentDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultFragmentDescriptor(void)::_desc;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(char *result, uint64_t a2)
{
  if (result[80] == 1)
  {
    v4 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 2uLL);
    v5 = *(v4 + 6);
    if ((v5 - *(v4 + 7)) <= 1)
    {
      flatbuffers::vector_downward::reallocate(v4, 2uLL);
      v5 = *(v4 + 6);
    }

    *(v5 - 2) = 0;
    v6 = v5 - 2;
    *(v4 + 6) = v6;
    v7 = *(v4 + 8) - v6 + *(v4 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v4, a2, v7);
  }

  return result;
}

void AGX::Impl::TileProgramKey::serialize(AGX::Impl::TileProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v18 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v18);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 20);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x3F;
  *(v7 + 4) = *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  *(v7 + 68) = *(v5 + 11);
  *(v7 + 52) = v10;
  *(v7 + 36) = v9;
  *(v7 + 20) = v8;
  v11 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v11 >> 2) + 12);
  v12 = *v5 + v11;
  *v12 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x42;
  v13 = *(v5 + 6);
  v14 = *(v5 + 7);
  *(v12 + 36) = *(v5 + 16);
  *(v12 + 20) = v14;
  *(v12 + 4) = v13;
  v15 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v15 >> 2) + 4);
  v16 = *v5 + v15;
  *v16 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x43;
  *(v16 + 4) = *(v5 + 17);
  v19 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v19);
  v17 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v17;
}

uint64_t AGX::Impl::TileProgramKey::addToDigest(AGX::Impl::TileProgramKey *this, CC_SHA256state_st *a2)
{
  result = AGX::defaultTileDescriptor(this);
  v5 = result;
  if (*(this + 6))
  {
    LOWORD(data) = 14;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 48, 8u);
  }

  v6 = *v5;
  v7 = -v6;
  v8 = v5 - v6;
  v9 = *(v5 - v6);
  if (v9 < 5 || (v10 = *(v8 + 2)) == 0)
  {
    if ((*(this + 39) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((*(v5 + v10) != 0) != (*(this + 39) & 1))
  {
LABEL_8:
    data = *(this + 39) & 1;
    v25 = 4;
    CC_SHA256_Update(a2, &v25, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v11 = *v5;
    v7 = -v11;
    v9 = *(v5 - v11);
  }

LABEL_9:
  if (v9 < 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v5 + v7 + 6);
    if (v12)
    {
      v12 = *(v5 + v12);
    }
  }

  if (v12 != *(this + 38))
  {
    LOWORD(data) = 6;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 152, 4u);
  }

  if (*(this + 7))
  {
    LOWORD(data) = 16;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 56, 8u);
  }

  v13 = *(this + 27);
  v14 = (v5 - *v5);
  if (*v14 < 0x13u || (v15 = v14[9]) == 0)
  {
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (((*(this + 27) & 0x40) == 0) == (*(v5 + v15) != 0))
  {
LABEL_22:
    data = (v13 >> 6) & 1;
    v25 = 18;
    CC_SHA256_Update(a2, &v25, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_23:
  v16 = *(this + 36);
  if (v16)
  {
    LOWORD(data) = 14;
    CC_SHA256_Update(a2, &data, 2u);
    CC_SHA256_Update(a2, this + 112, 0x20u);
    LOBYTE(v25) = *(this + 36);
    LOWORD(data) = 14;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v25, 1u);
    v16 = *(this + 36);
  }

  v17 = 1;
  v18 = *v5;
  v19 = v5 - v18;
  v20 = *(v5 - v18);
  if (v20 >= 0xB)
  {
    if (*(v19 + 5))
    {
      v17 = *(v5 + *(v19 + 5));
    }

    else
    {
      v17 = 1;
    }
  }

  if (v17 == 1 << (BYTE1(v16) & 3))
  {
    v21 = -v18;
  }

  else
  {
    LOBYTE(v25) = 1 << (BYTE1(v16) & 3);
    LOWORD(data) = 10;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &v25, 1u);
    v16 = *(this + 36);
    v22 = *v5;
    v21 = -v22;
    v20 = *(v5 - v22);
  }

  v23 = (1 << ((v16 >> 10) & 3));
  if (v20 < 0xD || !*(v5 + v21 + 12) || *(v5 + *(v5 + v21 + 12)) != v23)
  {
    LOBYTE(v25) = v23;
    LOWORD(data) = 12;
    CC_SHA256_Update(a2, &data, 2u);
    return CC_SHA256_Update(a2, &v25, 1u);
  }

  return result;
}

uint64_t AGX::defaultTileDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultTileDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultTileDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultTileDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultTileDescriptor(void)::_desc;
}

void AGX::Impl::ComputeProgramKey::serialize(AGX::Impl::ComputeProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v10 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v10);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 8);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x4E;
  v8 = *(v5 + 24);
  *(v7 + 20) = *(v5 + 5);
  *(v7 + 4) = v8;
  v11 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v11);
  v9 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v9;
}

uint64_t AGX::Impl::ComputeProgramKey::addToDigest(AGX::Impl::ComputeProgramKey *this, CC_SHA256state_st *a2)
{
  result = AGX::defaultComputeDescriptor(this);
  v5 = result;
  if (*(this + 5))
  {
    LOWORD(data) = 12;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v6 = *v5;
  v7 = *(v5 - v6);
  if (v7 < 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v5 - v6 + 6);
    if (*(v5 - v6 + 6))
    {
      v8 = *(v5 + v8);
    }
  }

  if (v8 == *(this + 12))
  {
    v9 = -v6;
  }

  else
  {
    LOWORD(data) = 6;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 48, 4u);
    v10 = *v5;
    v9 = -v10;
    v7 = *(v5 - v10);
  }

  v11 = *(this + 14);
  if (v7 >= 5 && *(v5 + v9 + 4))
  {
    if ((*(v5 + *(v5 + v9 + 4)) != 0) == (*(this + 14) & 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v11)
  {
LABEL_15:
    data = *(this + 14) & 1;
    v20 = 4;
    CC_SHA256_Update(a2, &v20, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v11 = *(this + 14);
    v12 = *v5;
    v9 = -v12;
    v7 = *(v5 - v12);
  }

LABEL_16:
  if (v7 >= 0x15 && *(v5 + v9 + 20))
  {
    if (((v11 & 2) == 0) != (*(v5 + *(v5 + v9 + 20)) != 0))
    {
      v14 = this + 88;
      v13 = *(this + 88);
      goto LABEL_23;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_22;
  }

  data = (v11 >> 1) & 1;
  v20 = 20;
  CC_SHA256_Update(a2, &v20, 2u);
  result = CC_SHA256_Update(a2, &data, 4u);
  v15 = *v5;
  v9 = -v15;
  v7 = *(v5 - v15);
LABEL_22:
  v14 = this + 88;
  v13 = *(this + 88);
  if (v7 < 0xF)
  {
    LODWORD(v16) = 0;
    goto LABEL_26;
  }

LABEL_23:
  v16 = *(v5 + v9 + 14);
  if (*(v5 + v9 + 14))
  {
    LODWORD(v16) = *(v5 + v16);
  }

LABEL_26:
  if (v16 != v13)
  {
    LOWORD(data) = 14;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, v14, 1u);
    v17 = *v5;
    v9 = -v17;
    v7 = *(v5 - v17);
  }

  v18 = *(this + 14);
  if (v7 < 0x11 || !*(v5 + v9 + 16))
  {
    if ((v18 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (((*(this + 14) & 0x20) == 0) == (*(v5 + *(v5 + v9 + 16)) != 0))
  {
LABEL_33:
    data = (v18 >> 5) & 1;
    v20 = 16;
    CC_SHA256_Update(a2, &v20, 2u);
    return CC_SHA256_Update(a2, &data, 4u);
  }

  return result;
}

uint64_t AGX::defaultComputeDescriptor(AGX *this)
{
  if (atomic_load_explicit(&AGX::defaultComputeDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&AGX::defaultComputeDescriptor(void)::once, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultComputeDescriptor(void)::$_0 &&>>);
  }

  return AGX::defaultComputeDescriptor(void)::_desc;
}

uint64_t AGX::Impl::VertexProgramKey::initCommon(uint64_t result, int *a2)
{
  v2 = result;
  if (!a2)
  {
    result = AGX::defaultVertexDescriptor(result);
    a2 = result;
  }

  v3 = *(v2 + 56) | 0xFFLL;
  *(v2 + 56) = v3;
  *(v2 + 48) = 0;
  v4 = (a2 - *a2);
  if (*v4 < 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[10];
    if (v5)
    {
      v5 = (*(a2 + v5) & 3) << 10;
    }
  }

  v6 = v5 | v3 & 0xFFFFFFFFFFFFF3FFLL;
  *(v2 + 56) = v6;
  v7 = (a2 - *a2);
  if (*v7 < 0x19u)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[12];
    if (v8)
    {
      v8 = (*(a2 + v8) & 3) << 8;
    }
  }

  v9 = v8 | v6 & 0xFFFFFFFFFFFFFCFFLL;
  *(v2 + 56) = v9;
  v10 = (a2 - *a2);
  v11 = *v10;
  if (v11 <= 0x1E)
  {
    LODWORD(v23) = 0;
    *(v2 + 40) = 0;
  }

  else
  {
    v12 = v10[15];
    if (v10[15] && (v13 = *(a2 + v12), v14 = (a2 + v12 + v13), (v15 = *v14) != 0))
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v15 >= 0x1F)
      {
        v15 = 31;
      }

      v19 = 4 * v15;
      v20 = a2 + v12 + v13;
      do
      {
        result = *&v20[v16 + 4];
        v21 = &v20[v16 + result - *(&v14[v16 / 4 + 1] + result)];
        if (*(v21 + 4) >= 5u)
        {
          v22 = *(v21 + 8);
          if (v22)
          {
            result = v20[v16 + 4 + result + v22];
            if (result == 1)
            {
              result = 1 << v17;
              v18 |= 1 << v17;
            }
          }
        }

        ++v17;
        v16 += 4;
      }

      while (v19 != v16);
    }

    else
    {
      v18 = 0;
    }

    *(v2 + 40) = v18;
    if (v11 < 0x21)
    {
      LODWORD(v23) = 0;
    }

    else
    {
      v23 = v10[16];
      if (v23)
      {
        LODWORD(v23) = *(a2 + v23) & 1;
      }
    }
  }

  *(v2 + 88) = *(v2 + 88) & 0xFFFFFFFE | v23;
  v24 = (a2 - *a2);
  if (*v24 < 0x1Du)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24[14];
    if (v25)
    {
      v25 = (*(a2 + v25) & 3) << 12;
    }
  }

  v26 = v25 | v9 & 0xFFFFFFFFFFFFCFFFLL;
  *(v2 + 56) = v26;
  v27 = (a2 - *a2);
  if (*v27 >= 0x1Bu && (v28 = v27[13]) != 0)
  {
    v29 = (*(a2 + v28) & 0xFLL) << 14;
  }

  else
  {
    v29 = 0x4000;
  }

  v30 = v29 | v26 & 0xFFFFFFFFFFFC3FFFLL;
  *(v2 + 56) = v30;
  v31 = (a2 - *a2);
  if (*v31 < 0x2Bu)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31[21];
    if (v32)
    {
      v32 = (*(a2 + v32) != 0) << 19;
    }
  }

  v33 = v32 | v30 & 0xFFFFFFFFFFF7FFFFLL;
  *(v2 + 56) = v33;
  v34 = (a2 - *a2);
  v35 = *v34;
  if (v35 < 9)
  {
    goto LABEL_49;
  }

  if (!v34[4])
  {
    if (v35 >= 0xB)
    {
      goto LABEL_47;
    }

LABEL_49:
    v36 = 0;
    goto LABEL_50;
  }

  v36 = 0;
  if (v35 >= 0xB && *(a2 + v34[4]))
  {
LABEL_47:
    v37 = v34[5];
    if (v37)
    {
      v36 = (*(a2 + v37) == 1) << 20;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_50:
  v38 = v36 | v33 & 0xFFFFFFFFFFEFFFFFLL;
  *(v2 + 56) = v38;
  v39 = (a2 - *a2);
  if (*v39 < 0x11u)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39[8];
    if (v40)
    {
      v40 = (*(a2 + v40) & 1) << 22;
    }
  }

  v41 = v40 | v38 & 0xFFFFFFFFFFBFFFFFLL;
  *(v2 + 56) = v41;
  v42 = (a2 - *a2);
  if (*v42 < 0x23u)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42[17];
    if (v43)
    {
      v43 = (*(a2 + v43) != 0) << 25;
    }
  }

  *(v2 + 56) = v43 | v41 & 0xFFFFFFFFFDFFFFFFLL;
  v44 = (a2 - *a2);
  if (*v44 < 0x23u)
  {
    LODWORD(v45) = 0;
  }

  else
  {
    v45 = v44[17];
    if (v45)
    {
      LODWORD(v45) = (*(a2 + v45) != 0) << 9;
    }
  }

  *(v2 + 52) = *(v2 + 52) & 0xFFFFFDFF | v45;
  return result;
}

double AGX::Impl::FragmentProgramKey::initCommonScript(uint64_t a1, int *a2, int a3, int a4, char a5, int8x16_t a6)
{
  v9 = a2;
  if (!a2)
  {
    v9 = AGX::defaultFragmentDescriptor(a1);
  }

  *(a1 + 108) = ((a3 & 3) << 14) | ((a5 & 1) << 16) | *(a1 + 108) & 0xFFFE3FFF;
  if ((a4 == 7 || a4 == 2) && (*(a1 + 144) & 0xF00) != 0)
  {
    if (*(a1 + 144))
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_16555);
      }

      LOBYTE(a4) = 1;
    }

    else
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<Air::FragmentFunctionDescriptor>(Air::FragmentFunctionDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_17);
      }

      LOBYTE(a4) = 0;
    }
  }

  v11 = (v9 - *v9);
  if (*v11 < 0x17u)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11[11];
    if (v12)
    {
      v12 = (v12 + v9 + *(v12 + v9));
    }
  }

  v13 = 0;
  for (i = 16; i != 24; ++i)
  {
    if (!v12)
    {
      goto LABEL_102;
    }

    if (v13 >= *v12)
    {
      goto LABEL_102;
    }

    v15 = v12[i - 15];
    v16 = &v12[i] + v15;
    v17 = v15 - *(v16 - 15);
    v18 = &v12[i] + v17;
    v19 = *(v18 - 30);
    if (v19 < 5)
    {
      goto LABEL_102;
    }

    v20 = *(v18 - 28);
    if (!v20 || !*(&v12[i - 15] + v15 + v20))
    {
      goto LABEL_102;
    }

    if (v19 >= 9 && *(&v12[i - 13] + v17))
    {
      v21 = *(&v12[i - 15] + v15 + *(&v12[i - 13] + v17));
      if (v21 == 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v21 == 1;
      }
    }

    else
    {
      v22 = 0;
    }

    if ((a3 - 1) < 2)
    {
      goto LABEL_30;
    }

    if (v22 != 1)
    {
      goto LABEL_56;
    }

    if (v19 >= 0x15)
    {
      if (*(&v12[i - 10] + v17) && *(&v12[i - 15] + v15 + *(&v12[i - 10] + v17)) > 0x12u)
      {
        goto LABEL_30;
      }

LABEL_37:
      if (*(&v12[i - 11] + v17) && *(&v12[i - 15] + v15 + *(&v12[i - 11] + v17)) > 0x12u || v19 >= 0x13 && *(&v12[i - 10] + v17 - 2) && *(&v12[i - 15] + v15 + *(&v12[i - 10] + v17 - 2)) > 0x12u)
      {
        goto LABEL_30;
      }

LABEL_44:
      if (*(&v12[i - 11] + v17 - 2) && *(&v12[i - 15] + v15 + *(&v12[i - 11] + v17 - 2)) > 0x12u)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }

    if (v19 >= 0x11)
    {
      goto LABEL_37;
    }

    if (v19 >= 0xF)
    {
      goto LABEL_44;
    }

    if (v19 < 0xD)
    {
      if (v19 < 0xB)
      {
        goto LABEL_55;
      }

LABEL_52:
      v23 = *(&v12[i - 12] + v17 - 2);
      if (!v23 || (v24 = *(&v12[i - 15] + v15 + v23), v24 <= 5) && dword_20E745D90[v24])
      {
LABEL_55:
        v22 = 1;
        goto LABEL_56;
      }

      goto LABEL_30;
    }

LABEL_48:
    if (!*(&v12[i - 12] + v17) || *(&v12[i - 15] + v15 + *(&v12[i - 12] + v17)) <= 4u)
    {
      goto LABEL_52;
    }

LABEL_30:
    v22 = 2;
LABEL_56:
    v25 = *(a1 + i * 4) & 0xF7FFFFFE | ((v22 == 2) << 27);
    if ((v22 - 1) < 2)
    {
      ++v25;
    }

    *(a1 + i * 4) = v25;
    if (v22 == 1)
    {
      v26 = &v12[i] + v15 - *(v16 - 15);
      if (*(v26 - 30) >= 0x15u && (v27 = *(v26 - 20)) != 0)
      {
        v28 = *(&v12[i - 15] + v15 + v27);
        if (v28 > 0x13)
        {
          v29 = 0;
        }

        else
        {
          v29 = 2 * (dword_20E745D40[v28] & 0x1F);
        }
      }

      else
      {
        v29 = 4;
      }

      v30 = v25 & 0xFFFFFFC1 | v29;
      *(a1 + i * 4) = v30;
      v31 = v15 - *(v16 - 15);
      if (*(&v12[i - 15] + v31) >= 0x11u && (v32 = *(&v12[i - 11] + v31)) != 0)
      {
        v33 = *(&v12[i - 15] + v15 + v32);
        if (v33 > 0x13)
        {
          v34 = 0;
        }

        else
        {
          v34 = (dword_20E745D40[v33] & 0x1F) << 6;
        }
      }

      else
      {
        v34 = 64;
      }

      v35 = v30 & 0xFFFFF83F | v34;
      *(a1 + i * 4) = v35;
      v36 = &v12[i] + v15 - *(v16 - 15);
      if (*(v36 - 30) >= 0x13u && (v37 = *(v36 - 21)) != 0)
      {
        v38 = *(&v12[i - 15] + v15 + v37);
        if (v38 > 0x13)
        {
          v39 = 0;
        }

        else
        {
          v39 = (dword_20E745D40[v38] & 0x1F) << 11;
        }
      }

      else
      {
        v39 = 4096;
      }

      v40 = v35 & 0xFFFF07FF | v39;
      *(a1 + i * 4) = v40;
      v41 = v15 - *(v16 - 15);
      if (*(&v12[i - 15] + v41) >= 0xFu && (v42 = *(&v12[i - 11] + v41 - 2)) != 0)
      {
        v43 = *(&v12[i - 15] + v15 + v42);
        if (v43 > 0x13)
        {
          v44 = 0;
        }

        else
        {
          v44 = (dword_20E745D40[v43] & 0x1F) << 16;
        }
      }

      else
      {
        v44 = 0x10000;
      }

      v45 = v40 & 0xFFE0FFFF | v44;
      *(a1 + i * 4) = v45;
      v46 = &v12[i] + v15 - *(v16 - 15);
      if (*(v46 - 30) >= 0xDu && (v47 = *(v46 - 24)) != 0)
      {
        v48 = *(&v12[i - 15] + v15 + v47);
        if (v48 > 5)
        {
          v49 = 0;
        }

        else
        {
          v49 = (dword_20E745D90[v48] & 7) << 21;
        }
      }

      else
      {
        v49 = 6291456;
      }

      v50 = v45 & 0xFF1FFFFF | v49;
      *(a1 + i * 4) = v50;
      v51 = v15 - *(v16 - 15);
      if (*(&v12[i - 15] + v51) >= 0xBu && (v52 = *(&v12[i - 12] + v51 - 2)) != 0)
      {
        v53 = *(&v12[i - 15] + v15 + v52);
        if (v53 > 5)
        {
          v54 = 0;
        }

        else
        {
          v54 = (dword_20E745D90[v53] & 7) << 24;
        }
      }

      else
      {
        v54 = 50331648;
      }

      *(a1 + i * 4) = v50 & 0xF8FFFFFF | v54;
    }

    v55 = &v12[i] + v15 - *(v16 - 15);
    if (*(v55 - 30) >= 7u && (v56 = *(v55 - 27)) != 0)
    {
      v57 = *(&v12[i - 15] + v15 + v56);
    }

    else
    {
      v57 = 15;
    }

    if (a3 == 1 || (v57 & 0x10) != 0)
    {
      v62 = *(a1 + 48) & 0xFFFFFF00FFFFFFFFLL | ((BYTE4(*(a1 + 48)) | (1 << v13)) << 32);
    }

    else
    {
      v58 = __rbit32(v57);
      v59 = v58 >> 28;
      v60 = *(a1 + 48) & 0xFFFFFFFFFF000000 | (*(a1 + 48) | ((8 * v58) >> 31) & (1 << v13)) & 0xFF0000FF | *(a1 + 48) & 0xFF00 | (*(a1 + 48) | ((8 * v58) >> 31) & (1 << v13)) & 0xFF00 | (256 << v13) & ((4 * v58) >> 31) & 0xFF00FFFF | *(a1 + 48) & 0xFF0000 | (*(a1 + 48) | ((8 * v58) >> 31) & (1 << v13)) & 0xFF0000 | (256 << v13) & ((4 * v58) >> 31) & 0xFF0000 | (0x10000 << v13) & ((2 * v58) >> 31);
      if (v59 < 0)
      {
        v61 = 0x1000000 << v13;
      }

      else
      {
        v61 = 0;
      }

      v62 = v60 & 0xFFFFFFFF00FFFFFFLL | v60 & 0xFF000000 | v61;
    }

    *(a1 + 48) = v62;
LABEL_102:
    ++v13;
  }

  v63 = (v9 - *v9);
  if (*v63 >= 0x25u && (v64 = v63[18]) != 0)
  {
    v65 = *(v9 + v64);
    v66 = *(a1 + 40);
    if (v65)
    {
      v67 = v66 | 0x20;
      *(a1 + 40) = v67;
      v68 = (v9 - *v9);
      if (*v68 >= 0x27u && (v69 = v68[19]) != 0)
      {
        v70 = *(v9 + v69);
        if (v70 > 0xF)
        {
          v71 = 0;
        }

        else
        {
          v71 = dword_20E745C80[v70];
        }
      }

      else
      {
        v71 = 64;
      }

      v72 = v71 | v67 & 0xFFFFF83F;
      goto LABEL_119;
    }
  }

  else
  {
    v66 = *(a1 + 40);
  }

  v72 = v66 & 0xFFFFFFDF;
LABEL_119:
  *(a1 + 40) = v72;
  v73 = (v9 - *v9);
  if (*v73 >= 0x29u && (v74 = v73[20]) != 0 && *(v9 + v74))
  {
    v75 = v72 | 0x800;
    *(a1 + 40) = v75;
    v76 = (v9 - *v9);
    if (*v76 >= 0x2Bu && (v77 = v76[21]) != 0)
    {
      v78 = *(v9 + v77);
      if (v78 > 7)
      {
        v79 = 0;
      }

      else
      {
        v79 = dword_20E745CC0[v78];
      }
    }

    else
    {
      v79 = 4096;
    }

    v80 = v79 | v75 & 0xFFFF0FFF;
  }

  else
  {
    v80 = v72 & 0xFFFFF7FF;
  }

  *(a1 + 40) = v80;
  v81 = (v9 - *v9);
  if (*v81 < 0x2Du)
  {
    LODWORD(v82) = 0;
  }

  else
  {
    v82 = v81[22];
    if (v82)
    {
      LODWORD(v82) = (*(v9 + v82) != 0) << 16;
    }
  }

  v83 = v80 & 0xFFFEFFFF | v82;
  *(a1 + 40) = v83;
  v84 = (v9 - *v9);
  if (*v84 < 0x35u)
  {
    LODWORD(v85) = 0;
  }

  else
  {
    v85 = v84[26];
    if (v85)
    {
      LODWORD(v85) = *(v9 + v85);
    }
  }

  *(a1 + 96) = v85;
  v86 = v83 & 0xFFFBFFFF | (4 * v82);
  *(a1 + 40) = v86;
  v87 = (v9 - *v9);
  if (*v87 < 0x2Fu)
  {
    LODWORD(v88) = 0;
  }

  else
  {
    v88 = v87[23];
    if (v88)
    {
      LODWORD(v88) = 16 * (*(v9 + v88) != 0);
    }
  }

  v89 = v88 | v86 & 0xFFFFFFEF;
  *(a1 + 40) = v89;
  v90 = (v9 - *v9);
  v91 = *v90;
  if (v91 >= 0x11)
  {
    if (v90[8])
    {
      v92 = *(v9 + v90[8]);
    }

    else
    {
      v92 = -1;
    }

    goto LABEL_145;
  }

  v92 = -1;
  if (v91 >= 9)
  {
LABEL_145:
    v93 = v90[4];
    if (v93)
    {
      LODWORD(v93) = *(v9 + v93) != 0;
    }
  }

  else
  {
    LODWORD(v93) = 0;
  }

  v94 = v93 | v89 & 0xFFFFFFFE;
  *(a1 + 40) = v94;
  v95 = (v9 - *v9);
  if (*v95 < 0xBu)
  {
    LODWORD(v96) = 0;
  }

  else
  {
    v96 = v95[5];
    if (v96)
    {
      LODWORD(v96) = 2 * (*(v9 + v96) != 0);
    }
  }

  v97 = v96 | v94 & 0xFFFFFFFD;
  *(a1 + 40) = v97;
  v98 = (v9 - *v9);
  v99 = *v98;
  if (v99 < 0x31)
  {
    if (v99 < 0x13)
    {
      LODWORD(v102) = 0;
LABEL_163:
      if (v92 == -1)
      {
        v103 = v102;
      }

      else
      {
        v103 = 1;
      }

      if (v103)
      {
        v104 = 4;
      }

      else
      {
        v104 = 0;
      }

      v105 = v104 | v97 & 0xFFFFFFFB;
      goto LABEL_170;
    }

LABEL_160:
    v102 = v98[9];
    if (v102)
    {
      a6.i32[0] = *(v9 + v102);
      LODWORD(v102) = *a6.i32 != 1.0;
    }

    goto LABEL_163;
  }

  if (!v98[24] || !*(v9 + v98[24]))
  {
    goto LABEL_160;
  }

  if (v98[10] && *(v9 + v98[10]))
  {
    v100 = v98[9];
    if (v100)
    {
      a6.i32[0] = *(v9 + v100);
      if (*a6.i32 == 0.0)
      {
LABEL_158:
        LODWORD(v101) = 0;
        goto LABEL_219;
      }
    }

LABEL_218:
    LODWORD(v101) = 4;
  }

  else
  {
    v101 = v98[9];
    if (v101)
    {
      a6.i32[0] = *(v9 + v101);
      if (*a6.i32 == 1.0)
      {
        goto LABEL_158;
      }

      goto LABEL_218;
    }
  }

LABEL_219:
  v135 = v97 & 0xFFFFFFFB;
  if (v92 == -1)
  {
    v136 = v101;
  }

  else
  {
    v136 = 4;
  }

  v137 = v136 | v135;
  *(a1 + 40) = v137;
  v138 = (v9 - *v9);
  if (*v138 < 0x15u)
  {
    LODWORD(v139) = 0;
  }

  else
  {
    v139 = v138[10];
    if (v139)
    {
      LODWORD(v139) = 8 * (*(v9 + v139) != 0);
    }
  }

  v105 = v139 | v137 & 0xFFFFFFF7;
LABEL_170:
  *(a1 + 40) = v105;
  v106 = *(a1 + 108);
  *(a1 + 108) = v106 & 0xFFFFFFFE;
  v107 = (v9 - *v9);
  if (*v107 < 0x31u)
  {
    LODWORD(v108) = 0;
  }

  else
  {
    v108 = v107[24];
    if (v108)
    {
      LODWORD(v108) = 2 * (*(v9 + v108) != 0);
    }
  }

  v109 = v108 | v106 & 0xFFFFFFFC;
  *(a1 + 108) = v109;
  v110 = (v9 - *v9);
  v111 = *v110;
  if (v111 <= 0x1C)
  {
    *(a1 + 56) = 0;
LABEL_194:
    LODWORD(v125) = 0;
    *(a1 + 224) = 0;
    goto LABEL_195;
  }

  v112 = v110[14];
  if (v110[14] && (v113 = *(v9 + v112), v114 = (v9 + v112 + v113), (v115 = *v114) != 0))
  {
    v116 = 0;
    v117 = 0;
    v118 = 0;
    if (v115 >= 0x1F)
    {
      v115 = 31;
    }

    v119 = 4 * v115;
    v120 = v9 + v112 + v113;
    do
    {
      v121 = *&v120[v116 + 4];
      v122 = &v120[v116 + v121 - *(&v114[v116 / 4 + 1] + v121)];
      if (*(v122 + 2) >= 5u)
      {
        v123 = *(v122 + 4);
        if (v123)
        {
          if (v120[v116 + 4 + v121 + v123] == 1)
          {
            v118 |= 1 << v117;
          }
        }
      }

      ++v117;
      v116 += 4;
    }

    while (v119 != v116);
  }

  else
  {
    v118 = 0;
  }

  *(a1 + 56) = v118;
  if (v111 <= 0x1E)
  {
    goto LABEL_194;
  }

  v124 = v110[15];
  if (v110[15])
  {
    LOBYTE(v124) = *(v9 + v124) != 0;
  }

  *(a1 + 224) = v124;
  if (v111 < 0x33)
  {
    LODWORD(v125) = 0;
  }

  else
  {
    v125 = v110[25];
    if (v125)
    {
      LODWORD(v125) = 4 * (*(v9 + v125) != 0);
    }
  }

LABEL_195:
  v126 = v125 | v109 & 0xFFFFFFFA;
  *(a1 + 108) = v126;
  v127 = (v9 - *v9);
  if (*v127 < 0x23u)
  {
    LODWORD(v128) = 0;
  }

  else
  {
    v128 = v127[17];
    if (v128)
    {
      v129 = *(v9 + v128);
      if (v129 == 2)
      {
        LODWORD(v128) = 32;
      }

      else
      {
        LODWORD(v128) = 16 * (v129 == 1);
      }
    }
  }

  v130 = v128 | v126 & 0xFFFFFECE;
  *(a1 + 108) = v130;
  v131 = (v9 - *v9);
  if (*v131 < 0x21u)
  {
    LODWORD(v132) = 0;
  }

  else
  {
    v132 = v131[16];
    if (v132)
    {
      LODWORD(v132) = *(v9 + v132);
      if (v132)
      {
        *(a1 + 100) |= 0x200u;
        LODWORD(v132) = 64;
      }
    }
  }

  *(a1 + 108) = v132 | v130 & 0xFFFFFDBF;
  *(a1 + 40) = v105 & 0xFF8FFFFF | ((a4 & 7) << 20);
  v133 = (v9 - *v9);
  if (*v133 >= 0x39u)
  {
    v134 = v133[28];
    if (v134)
    {
      if (*(v9 + v134) == 1)
      {
        a6.i32[0] = *(a1 + 104);
        a6.i64[0] = vorrq_s8(a6, xmmword_20E70CAB0).u64[0] | 0xF000F000F000F00;
        *(a1 + 104) = a6.i32[0] | 0xF0F0F0F0;
      }
    }
  }

  return *a6.i64;
}

AGX *AGX::Impl::TileProgramKey::initCommon(AGX *result, AGX *a2)
{
  v2 = result;
  if (!a2)
  {
    result = AGX::defaultTileDescriptor(result);
    a2 = result;
  }

  v3 = *a2;
  v4 = -v3;
  v5 = a2 - v3;
  v6 = *(a2 - v3);
  if (v6 >= 0xF)
  {
    v7 = *(v5 + 7);
    if (!*(v5 + 7))
    {
      goto LABEL_15;
    }

    v8 = a2 + v7;
    v9 = *(a2 + v7);
    v10 = *(a2 + v7 + v9);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = 0;
    v12 = v7 + v9;
    do
    {
      v13 = *(a2 + v12 + 4);
      v14 = a2 + v12 + v13 - *(a2 + v12 + v13 + 4);
      result = *(v14 + 2);
      if (result >= 5)
      {
        v15 = *(v14 + 4);
        if (v15)
        {
          if (*(a2 + v12 + v13 + v15 + 4))
          {
            v16 = *(v2 + 6);
            result = (v16 & 0xFF000000 | ((257 << v11) | v16) & 0xFF000000);
            *(v2 + 6) = v16 & 0xFFFFFFFF00000000 | ((257 << v11) | v16) & 0xFFFFFFFF00FFFFFFLL | v16 & 0xFF0000 | (0x10000 << v11) | result | (0x1000000 << v11);
            v10 = *&v8[v9];
          }
        }
      }

      if (v11 > 6)
      {
        break;
      }

      ++v11;
      v12 += 4;
    }

    while (v11 < v10);
    v17 = *a2;
    v4 = -v17;
    v6 = *(a2 - v17);
  }

  if (v6 < 5)
  {
    LODWORD(v18) = 0;
    goto LABEL_18;
  }

LABEL_15:
  v18 = *(a2 + v4 + 4);
  if (*(a2 + v4 + 4))
  {
    LODWORD(v18) = *(a2 + v18) != 0;
  }

LABEL_18:
  *(v2 + 39) = *(v2 + 39) & 0xFFFFFFFE | v18;
  v19 = (a2 - *a2);
  if (*v19 < 7u)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = v19[3];
    if (v20)
    {
      LODWORD(v20) = *(a2 + v20);
    }
  }

  *(v2 + 38) = v20;
  v21 = (a2 - *a2);
  v22 = *v21;
  if (v22 <= 0x10)
  {
    LODWORD(v34) = 0;
    *(v2 + 7) = 0;
  }

  else
  {
    v23 = v21[8];
    if (v21[8] && (v24 = *(a2 + v23), v25 = (a2 + v23 + v24), (v26 = *v25) != 0))
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26 >= 0x1F)
      {
        v26 = 31;
      }

      v30 = 4 * v26;
      v31 = a2 + v23 + v24;
      do
      {
        v32 = *&v31[v27 + 4];
        result = &v31[v27 + v32 - *(&v25[v27 / 4 + 1] + v32)];
        if (*(result + 2) >= 5u)
        {
          result = *(result + 4);
          if (result)
          {
            v33 = result + v32;
            result = &v31[v27];
            if (v31[v27 + 4 + v33] == 1)
            {
              v29 |= 1 << v28;
            }
          }
        }

        ++v28;
        v27 += 4;
      }

      while (v30 != v27);
    }

    else
    {
      v29 = 0;
    }

    *(v2 + 7) = v29;
    if (v22 < 0x13)
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v34 = v21[9];
      if (v34)
      {
        LODWORD(v34) = (*(a2 + v34) != 0) << 6;
      }
    }
  }

  *(v2 + 27) = *(v2 + 27) & 0xFFFFFFBF | v34;
  v35 = (a2 - *a2);
  if (*v35 < 0x13u)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = v35[9];
    if (v36)
    {
      LODWORD(v36) = (*(a2 + v36) != 0) << 9;
    }
  }

  *(v2 + 25) = *(v2 + 25) & 0xFFFFFDFF | v36;
  return result;
}

AGX *AGX::Impl::ComputeProgramKey::initCommon(AGX *result, AGX *a2)
{
  v2 = result;
  if (!a2)
  {
    result = AGX::defaultComputeDescriptor(result);
    a2 = result;
  }

  v3 = (a2 - *a2);
  v4 = *v3;
  if (v4 < 0xD)
  {
    v11 = 0;
  }

  else
  {
    v5 = v3[6];
    if (!v3[6] || (v6 = *(a2 + v5), v7 = (a2 + v5 + v6), (v8 = *v7) == 0))
    {
      *(v2 + 5) = 0;
      goto LABEL_19;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v8 >= 0x1F)
    {
      v8 = 31;
    }

    v12 = 4 * v8;
    v13 = a2 + v5 + v6;
    do
    {
      v14 = *&v13[v9 + 4];
      result = &v13[v9 + v14 - *(&v7[v9 / 4 + 1] + v14)];
      if (*(result + 2) >= 5u)
      {
        result = *(result + 4);
        if (result)
        {
          v15 = result + v14;
          result = &v13[v9];
          if (v13[v9 + 4 + v15] == 1)
          {
            v11 |= 1 << v10;
          }
        }
      }

      ++v10;
      v9 += 4;
    }

    while (v12 != v9);
  }

  *(v2 + 5) = v11;
  if (v4 <= 6)
  {
    LODWORD(v16) = 0;
    goto LABEL_21;
  }

LABEL_19:
  v16 = v3[3];
  if (v16)
  {
    LODWORD(v16) = *(a2 + v16);
  }

LABEL_21:
  *(v2 + 12) = v16;
  v17 = (a2 - *a2);
  if (*v17 < 5u)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[2];
    if (v18)
    {
      LODWORD(v18) = *(a2 + v18) != 0;
    }
  }

  v19 = *(v2 + 14) & 0xFFFFFFFE | v18;
  *(v2 + 14) = v19;
  v20 = (a2 - *a2);
  if (*v20 < 0x15u)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20[10];
    if (v21)
    {
      LODWORD(v21) = 2 * (*(a2 + v21) != 0);
    }
  }

  v22 = v21 | v19 & 0xFFFFFFFD;
  *(v2 + 14) = v22;
  v23 = (a2 - *a2);
  v24 = *v23;
  if (v24 <= 0xE)
  {
    LODWORD(v26) = 0;
    *(v2 + 88) = 0;
  }

  else
  {
    v25 = v23[7];
    if (v23[7])
    {
      LOBYTE(v25) = *(a2 + v25) != 0;
    }

    *(v2 + 88) = v25;
    if (v24 < 0x11)
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v26 = v23[8];
      if (v26)
      {
        LODWORD(v26) = 32 * (*(a2 + v26) != 0);
      }
    }
  }

  *(v2 + 14) = v26 | v22 & 0xFFFFFFDF;
  v27 = (a2 - *a2);
  if (*v27 < 0x11u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[8];
    if (v28)
    {
      LODWORD(v28) = (*(a2 + v28) != 0) << 9;
    }
  }

  *(v2 + 13) = *(v2 + 13) & 0xFFFFFDFF | v28;
  return result;
}

AGX *AGX::Impl::MeshProgramKey::initCommon(AGX *result, AGX *a2)
{
  v2 = result;
  if (!a2)
  {
    result = AGX::defaultMeshDescriptor(result);
    a2 = result;
  }

  v3 = (a2 - *a2);
  v4 = *v3;
  if (v4 <= 0x12)
  {
    LODWORD(v16) = 0;
    *(v2 + 5) = 0;
  }

  else
  {
    v5 = v3[9];
    if (v3[9] && (v6 = *(a2 + v5), v7 = (a2 + v5 + v6), (v8 = *v7) != 0))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (v8 >= 0x1F)
      {
        v8 = 31;
      }

      v12 = 4 * v8;
      v13 = a2 + v5 + v6;
      do
      {
        v14 = *&v13[v9 + 4];
        result = &v13[v9 + v14 - *(&v7[v9 / 4 + 1] + v14)];
        if (*(result + 2) >= 5u)
        {
          result = *(result + 4);
          if (result)
          {
            v15 = result + v14;
            result = &v13[v9];
            if (v13[v9 + 4 + v15] == 1)
            {
              v11 |= 1 << v10;
            }
          }
        }

        ++v10;
        v9 += 4;
      }

      while (v12 != v9);
    }

    else
    {
      v11 = 0;
    }

    *(v2 + 5) = v11;
    if (v4 < 0x15)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = v3[10];
      if (v16)
      {
        LODWORD(v16) = *(a2 + v16) & 1;
      }
    }
  }

  *(v2 + 24) = *(v2 + 24) & 0xFFFFFFFE | v16;
  v17 = (a2 - *a2);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = *(a2 + v18) & 0xF;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v2 + 14) & 0xFFFFFFF0 | v19;
  *(v2 + 14) = v20;
  v21 = (a2 - *a2);
  if (*v21 < 0x1Du)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21[14];
    if (v22)
    {
      LODWORD(v22) = 32 * (*(a2 + v22) != 0);
    }
  }

  *(v2 + 14) = v22 | v20 & 0xFFFFFFDF;
  v23 = (a2 - *a2);
  if (*v23 < 0x17u)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[11];
    if (v24)
    {
      LODWORD(v24) = (*(a2 + v24) != 0) << 9;
    }
  }

  *(v2 + 13) = *(v2 + 13) & 0xFFFFFDFF | v24;
  v25 = (a2 - *a2);
  if (*v25 < 7u)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = v25[3];
    if (v26)
    {
      LODWORD(v26) = *(a2 + v26);
    }
  }

  *(v2 + 15) = v26;
  v27 = (a2 - *a2);
  if (*v27 < 9u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[4];
    if (v28)
    {
      LODWORD(v28) = *(a2 + v28);
    }
  }

  *(v2 + 16) = v28;
  return result;
}

AGX *AGX::Impl::ObjectProgramKey::initCommon(AGX *result, AGX *a2)
{
  v2 = result;
  if (!a2)
  {
    result = AGX::defaultObjectDescriptor(result);
    a2 = result;
  }

  v3 = (a2 - *a2);
  v4 = *v3;
  if (v4 <= 0x12)
  {
    LODWORD(v16) = 0;
    *(v2 + 5) = 0;
  }

  else
  {
    v5 = v3[9];
    if (v3[9] && (v6 = *(a2 + v5), v7 = (a2 + v5 + v6), (v8 = *v7) != 0))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (v8 >= 0x1F)
      {
        v8 = 31;
      }

      v12 = 4 * v8;
      v13 = a2 + v5 + v6;
      do
      {
        v14 = *&v13[v9 + 4];
        result = &v13[v9 + v14 - *(&v7[v9 / 4 + 1] + v14)];
        if (*(result + 2) >= 5u)
        {
          result = *(result + 4);
          if (result)
          {
            v15 = result + v14;
            result = &v13[v9];
            if (v13[v9 + 4 + v15] == 1)
            {
              v11 |= 1 << v10;
            }
          }
        }

        ++v10;
        v9 += 4;
      }

      while (v12 != v9);
    }

    else
    {
      v11 = 0;
    }

    *(v2 + 5) = v11;
    if (v4 < 0x15)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = v3[10];
      if (v16)
      {
        LODWORD(v16) = *(a2 + v16) & 1;
      }
    }
  }

  *(v2 + 24) = *(v2 + 24) & 0xFFFFFFFE | v16;
  v17 = (a2 - *a2);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = 8 * (*(a2 + v18) & 0xF);
  }

  else
  {
    v19 = 8;
  }

  v20 = *(v2 + 14) & 0xFFFFFF87 | v19;
  *(v2 + 14) = v20;
  v21 = (a2 - *a2);
  if (*v21 < 0x1Bu)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21[13];
    if (v22)
    {
      LODWORD(v22) = *(a2 + v22) != 0;
    }
  }

  *(v2 + 14) = v22 | v20 & 0xFFFFFFFE;
  v23 = (a2 - *a2);
  if (*v23 < 0x17u)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[11];
    if (v24)
    {
      LODWORD(v24) = (*(a2 + v24) != 0) << 9;
    }
  }

  *(v2 + 13) = *(v2 + 13) & 0xFFFFFDFF | v24;
  v25 = (a2 - *a2);
  if (*v25 < 7u)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = v25[3];
    if (v26)
    {
      LODWORD(v26) = *(a2 + v26);
    }
  }

  *(v2 + 15) = v26;
  v27 = (a2 - *a2);
  if (*v27 < 9u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[4];
    if (v28)
    {
      LODWORD(v28) = *(a2 + v28);
    }
  }

  *(v2 + 16) = v28;
  return result;
}

uint64_t AGX::BVHBuilderProgramKey::initializeWithDescriptor(uint64_t result, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 5u)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = v2[2];
    if (v3)
    {
      LODWORD(v3) = *(a2 + v3) & 0x3FFFFFFF;
    }
  }

  v4 = *(result + 40) & 0xC0000000 | v3;
  *(result + 40) = v4;
  v5 = (a2 - *a2);
  if (*v5 < 7u)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = v5[3];
    if (v6)
    {
      LODWORD(v6) = (*(a2 + v6) != 0) << 31;
    }
  }

  v7 = v6 | v4 & 0x7FFFFFFF;
  *(result + 40) = v7;
  v8 = (a2 - *a2);
  if (*v8 < 9u)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LODWORD(v9) = (*(a2 + v9) != 0) << 30;
    }
  }

  *(result + 40) = v9 | v7 & 0xBFFFFFFF;
  return result;
}

void __cxx_global_array_dtor()
{
  v0 = &byte_27C8D8D4F;
  v1 = -896;
  v2 = &byte_27C8D8D4F;
  do
  {
    v3 = *v2;
    v2 -= 64;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 64;
  }

  while (v1);
}

void __cxx_global_array_dtor_491()
{
  v0 = &byte_27C8D9217;
  v1 = -1216;
  v2 = &byte_27C8D9217;
  do
  {
    v3 = *v2;
    v2 -= 64;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 64;
  }

  while (v1);
}

void __cxx_global_array_dtor_586()
{
  v0 = &byte_27C8D961F;
  v1 = -1008;
  v2 = &byte_27C8D961F;
  do
  {
    v3 = *v2;
    v2 -= 56;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 56;
  }

  while (v1);
}

void __cxx_global_array_dtor_1860()
{
  v0 = &byte_27C8D9DF7;
  v1 = -1120;
  v2 = &byte_27C8D9DF7;
  do
  {
    v3 = *v2;
    v2 -= 56;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 56;
  }

  while (v1);
}

void __cxx_global_array_dtor_39()
{
  v0 = &byte_27C8D9E7F;
  v1 = -96;
  v2 = &byte_27C8D9E7F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::ReturnInst::ReturnInst()
{
  return MEMORY[0x2821F1970]();
}

{
  return MEMORY[0x2821F1980]();
}

uint64_t llvm::StructType::get()
{
  return MEMORY[0x2821F1998]();
}

{
  return MEMORY[0x2821F19A0]();
}

uint64_t llvm::StructType::create()
{
  return MEMORY[0x2821F19B0]();
}

{
  return MEMORY[0x2821F19B8]();
}

{
  return MEMORY[0x2821F19C0]();
}

{
  return MEMORY[0x2821F19C8]();
}

uint64_t llvm::CloneModule()
{
  return MEMORY[0x2821F1B50]();
}

{
  return MEMORY[0x2821F1B58]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::Instruction::moveBefore()
{
  return MEMORY[0x2821F1C10]();
}

{
  return MEMORY[0x2821F1C18]();
}

uint64_t llvm::Instruction::setMetadata()
{
  return MEMORY[0x2821F1C38]();
}

{
  return MEMORY[0x2821F1C40]();
}

void llvm::PassManager<llvm::Module,llvm::AnalysisManager<llvm::Module>>::run()
{
    ;
  }
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>()
{
    ;
  }
}

void llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,true>>()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::AnalysisManager()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::AnalysisManager()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Module>::getResultImpl()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Module>::AnalysisManager()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Function>::invalidate()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Function>::getResultImpl()
{
    ;
  }
}

void llvm::AnalysisManager<llvm::Function>::AnalysisManager()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

void llvm::DominatorTreeBase<llvm::BasicBlock,false>::DominatorTreeBase()
{
    ;
  }
}

void llvm::DominatorTreeBase<llvm::BasicBlock,false>::operator=()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::addNodeToList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList()
{
    ;
  }
}

uint64_t llvm::TargetLibraryInfoImpl::TargetLibraryInfoImpl()
{
  return MEMORY[0x2821F2EE8]();
}

{
  return MEMORY[0x2821F2EF0]();
}

{
  return MEMORY[0x2821F2EF8]();
}

uint64_t llvm::AGX::operator<<()
{
  return MEMORY[0x2821F34D0]();
}

{
  return MEMORY[0x2821F34D8]();
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::SHA256::update()
{
  return MEMORY[0x2821F4050]();
}

{
  return MEMORY[0x2821F4058]();
}

uint64_t llvm::Function::removeFnAttr()
{
  return MEMORY[0x2821F4540]();
}

{
  return MEMORY[0x2821F4548]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t llvm::AttributeList::addAttributeAtIndex()
{
  return MEMORY[0x2821F4EE0]();
}

{
  return MEMORY[0x2821F4EE8]();
}

uint64_t llvm::AttributeList::hasFnAttr()
{
  return MEMORY[0x2821F4F50]();
}

{
  return MEMORY[0x2821F4F58]();
}

void llvm::DominatorTreeBase<llvm::BasicBlock,false>::findNearestCommonDominator()
{
    ;
  }
}

void llvm::DominatorTreeBase<llvm::BasicBlock,true>::findNearestCommonDominator()
{
    ;
  }
}

void llvm::DominatorTreeBase<llvm::BasicBlock,true>::print()
{
    ;
  }
}

uint64_t llvm::CallBase::hasFnAttrOnCalledFunction()
{
  return MEMORY[0x2821F5950]();
}

{
  return MEMORY[0x2821F5958]();
}

uint64_t llvm::Function::hasFnAttribute()
{
  return MEMORY[0x2821F5A00]();
}

{
  return MEMORY[0x2821F5A08]();
}

uint64_t llvm::StringRef::split()
{
  return MEMORY[0x2821F5B68]();
}

{
  return MEMORY[0x2821F5B70]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7848]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}