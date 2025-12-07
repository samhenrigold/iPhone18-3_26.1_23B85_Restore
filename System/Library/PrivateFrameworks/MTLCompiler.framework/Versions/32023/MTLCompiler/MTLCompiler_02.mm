void sub_2579DA0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::handleMemoryQueryFunction(MemoryIndirectionPass *this, llvm::Value **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (llvm::GlobalValue::isDeclaration(a2))
  {
    v5 = *(this + 5);
    v7 = 257;
    llvm::BasicBlock::Create(v5, &v6, a2, 0, v4);
  }
}

BOOL MemoryIndirectionPass::shouldModifyFunction(MemoryIndirectionPass *this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  if (v4 >= 0x1A)
  {
    if (*Name == 0x6C6174656D5F5F5FLL && *(Name + 8) == 0x6E6F635F7465675FLL && *(Name + 16) == 0x696F705F6C6F7274 && *(Name + 24) == 29806)
    {
      return 0;
    }
  }

  else if (v4 < 0x15)
  {
    goto LABEL_32;
  }

  v8 = Name + v4;
  if (*(Name + v4 - 21) == 0x4E4F435F4C544D2ELL && *(Name + v4 - 13) == 0x494F505F4C4F5254 && *(Name + v4 - 8) == 0x4E465F544E494F50)
  {
    return 0;
  }

  if (v4 >= 0x1B)
  {
    v11 = *(v8 - 27);
    v12 = *(v8 - 19);
    v13 = *(v8 - 11);
    v14 = *(v8 - 8);
    v15 = v11 == 0x61705F6C6174656DLL && v12 == 0x746E6F635F686374;
    v16 = v15 && v13 == 0x6E696F705F6C6F72;
    if (v16 && v14 == 0x745F746E696F705FLL)
    {
      return 0;
    }
  }

LABEL_32:
  if (llvm::GlobalValue::isDeclaration(a2))
  {
    return 0;
  }

  return llvm::Value::getMetadata() == 0;
}

void MemoryIndirectionPass::fixupInstructions(MemoryIndirectionPass *this, llvm::Function *a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v45 = v48;
  v47 = 8;
  v2 = *(a2 + 10);
  v39 = a2 + 72;
  if (v2 != a2 + 72)
  {
    do
    {
      v4 = v2 - 24;
      if (!v2)
      {
        v4 = 0;
      }

      v46 = 0;
      v5 = v4 + 40;
      v6 = *(v4 + 6);
      if (v6 != v4 + 40)
      {
        do
        {
          v7 = (v6 - 24);
          if (!v6)
          {
            v7 = 0;
          }

          v8 = v7[16] - 60;
          v9 = v8 > 0x18;
          v10 = (1 << v8) & 0x1000003;
          if (!v9 && v10 != 0)
          {
            v42 = v7;
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v45, &v42);
          }

          v6 = *(v6 + 1);
        }

        while (v6 != v5);
        if (v46)
        {
          v12 = v45;
          v13 = 8 * v46;
          do
          {
            v14 = *v12;
            v15 = *(*v12 + 16);
            switch(v15)
            {
              case '<':
                v32 = *(v14 - 32);
                v33 = *(this + 8);
                v42 = v32;
                v40[0] = 0;
                if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v33 + 208), &v42, v40) & 1) == 0)
                {
                  if ((v34 = *v32, v35 = *v14, !*(v14 + 48)) && (*(v14 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl())
                  {
                    if (MemoryIndirectionPass::indirectAddressSpace(this, v34))
                    {
                      v36 = *(v34 + 8);
                      if ((v36 & 0xFE) == 0x12)
                      {
                        v36 = *(**(v34 + 16) + 8);
                      }

                      IndirectLoad = MemoryIndirectionPass::createIndirectLoad(this, v32, (v36 >> 8), v35, 1 << (*(v14 + 18) >> 1));
                      if (IndirectLoad != v14)
                      {
                        llvm::ReplaceInstWithInst(v14, IndirectLoad, v38);
                      }
                    }
                  }
                }

                break;
              case '=':
                v25 = *(v14 - 32);
                v26 = *(v14 - 64);
                if (!*(v14 + 48) && (*(v14 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl())
                {
                  v27 = *(this + 8);
                  v42 = v25;
                  v40[0] = 0;
                  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v27 + 208), &v42, v40) & 1) == 0)
                  {
                    v28 = *v25;
                    if (MemoryIndirectionPass::indirectAddressSpace(this, *v25))
                    {
                      v29 = *(v28 + 2);
                      if ((v29 & 0xFE) == 0x12)
                      {
                        v29 = *(**(v28 + 2) + 8);
                      }

                      IndirectStore = MemoryIndirectionPass::createIndirectStore(this, v25, (v29 >> 8), v26, 1 << (*(v14 + 18) >> 1));
                    }

                    else
                    {
                      IndirectStore = llvm::User::operator new(0x40);
                      llvm::StoreInst::StoreInst();
                    }

                    llvm::ReplaceInstWithInst(v14, IndirectStore, v30);
                  }
                }

                break;
              case 'T':
                v16 = *(v14 - 32);
                if (!v16 || *(v16 + 16) || *(v16 + 24) != *(v14 + 72))
                {
                  v16 = 0;
                }

                CheckedFunction = MemoryIndirectionPass::createCheckedFunction(this, *v12, v16);
                v18 = CheckedFunction;
                if (CheckedFunction)
                {
                  v19 = *(CheckedFunction + 24);
                  v20 = *(v14 + 20);
                  v21 = llvm::CallBase::arg_end(v14);
                  llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&v42, (v14 - 32 * (v20 & 0x7FFFFFF)), v21);
                  v41 = 257;
                  v23 = llvm::CallInst::Create(v19, v18, v42, v43, 0, 0, v40, 0);
                  if (v42 != &v44)
                  {
                    free(v42);
                  }

                  v24 = *(v23 + 9) & 0xFFFC | *(v14 + 18) & 3;
                  *(v23 + 9) = v24;
                  *(v23 + 9) = v24 & 0xF003 | *(v14 + 18) & 0xFFC;
                  llvm::ReplaceInstWithInst(v14, v23, v22);
                }

                break;
            }

            ++v12;
            v13 -= 8;
          }

          while (v13);
        }
      }

      v2 = *(v2 + 1);
    }

    while (v2 != v39);
    if (v45 != v48)
    {
      free(v45);
    }
  }
}

void sub_2579DB034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  llvm::User::operator delete(v23);
  if (a23 != a9)
  {
    free(a23);
  }

  _Unwind_Resume(a1);
}

void *llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::shrink_and_clear(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = *(result + 4);
  v6 = *(result + 2);
  v7 = 1 << (33 - __clz(v6 - 1));
  if (v7 <= 64)
  {
    v7 = 64;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v5)
  {
    result[1] = 0;
    if (v5)
    {
      v9 = 0;
      v10 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v11 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) - (v10 & 1) + 2;
      v13 = vdupq_n_s64(v11);
      v14 = (*result + 16);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v9), xmmword_257A6D000)));
        if (v15.i8[0])
        {
          *(v14 - 2) = -4096;
        }

        if (v15.i8[4])
        {
          *v14 = -4096;
        }

        v9 += 2;
        v14 += 4;
      }

      while (v12 != v9);
    }
  }

  else
  {
    llvm::deallocate_buffer(*result, (16 * v5));

    return llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::init(v4, v8);
  }

  return result;
}

void std::deque<llvm::User *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<llvm::User *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<llvm::User *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(a1, &v9);
}

void sub_2579DB3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<llvm::User **>::emplace_front<llvm::User **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<llvm::User **>::emplace_back<llvm::User **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<llvm::User **>::emplace_front<llvm::User **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<llvm::User *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<llvm::User **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<llvm::User **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL MemoryIndirectionPass::indirectAddressSpace(MemoryIndirectionPass *this, llvm::Type *a2)
{
  v2 = *(a2 + 2);
  if (v2 != 15)
  {
    return 0;
  }

  v4 = **(a2 + 2);
  if (*(v4 + 8) == 16)
  {
    if (isSpecialStructType(v4))
    {
      return 0;
    }

    v2 = *(a2 + 2);
  }

  if ((v2 & 0xFE) == 0x12)
  {
    v2 = *(**(a2 + 2) + 8);
  }

  return (v2 >> 8) - 1 < 2;
}

uint64_t MetalModulePass::getMetadata<int>(uint64_t a1, int a2, unsigned int a3)
{
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *llvm::SmallVector<llvm::Value *,8u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579DBAE8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *llvm::SmallVectorImpl<llvm::Value *>::assign(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (result[3] < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Value *,true>::growAndAssign(result, a2, a3);
  }

  v3 = result[2];
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = result[2];
  }

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) & 0x1FFFFFFFELL;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_257A6D000)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  v10 = a2 - v3;
  if (a2 > v3)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = (*result + 8 * v3 + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
      if (v14.i8[0])
      {
        *(v13 - 1) = a3;
      }

      if (v14.i8[4])
      {
        *v13 = a3;
      }

      v11 += 2;
      v13 += 2;
    }

    while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
  }

  result[2] = a2;
  return result;
}

void MemoryIndirectionPass::fixIntersectCalls(llvm::PointerType **this, llvm::Module *a2, unsigned int a3)
{
  v130[10] = *MEMORY[0x277D85DE8];
  v113 = llvm::PointerType::get();
  v128 = v130;
  v129 = 0x500000000;
  v5 = a2 + 24;
  v6 = *(a2 + 4);
  if (v6 == v5)
  {
    return;
  }

  do
  {
    if (v6)
    {
      v7 = (v6 - 56);
    }

    else
    {
      v7 = 0;
    }

    Name = llvm::Value::getName(v7);
    v121 = v8;
    if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
    {
      v125 = v7;
      LODWORD(v117) = 2;
      llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
    }

    if (v121 >= 4 && *Name == 779250017)
    {
      if (v121 < 0xD)
      {
        goto LABEL_77;
      }

      if (*Name != 0x65746E692E726961 || *(Name + 5) != 0x746365737265746ELL)
      {
        if (v121 >= 0x1C)
        {
          if (*Name == 0x657365722E726961 && *(Name + 1) == 0x737265746E695F74 && *(Name + 2) == 0x715F6E6F69746365 && *(Name + 6) == 2037540213)
          {
            v125 = v7;
            LODWORD(v117) = 1;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
            goto LABEL_77;
          }
        }

        else if (v121 < 0x17)
        {
          goto LABEL_77;
        }

        if (*(Name + v121 - 23) == 0x72656C656363615FLL && *(Name + v121 - 15) == 0x74735F6E6F697461 && *(Name + v121 - 8) == 0x6572757463757274)
        {
          if (v121 >= 0x1A && (*Name == 0x5F7465672E726961 ? (v18 = *(Name + 1) == 0x695F657571696E75) : (v18 = 0), v18 ? (v19 = *(Name + 2) == 0x65696669746E6564) : (v19 = 0), v19 ? (v20 = *(Name + 12) == 24434) : (v20 = 0), v20) || (*Name == 0x5F7465672E726961 ? (v21 = *(Name + 1) == 0x696F705F61746164) : (v21 = 0), v21 ? (v22 = *(Name + 13) == 0x5F7265746E696F70) : (v22 = 0), v22 || (*Name == 0x5F7465672E726961 ? (v23 = *(Name + 1) == 0x65636E6174736E69) : (v23 = 0), v23 ? (v24 = *(Name + 15) == 0x5F746E756F635F65) : (v24 = 0), v24)))
          {
            v125 = v7;
            LODWORD(v117) = 5;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
          }
        }

        goto LABEL_77;
      }

      if (v121 >= 0x1B && (*Name == 0x65746E692E726961 ? (v10 = *(Name + 1) == 0x69645F7463657372) : (v10 = 0), v10 ? (v11 = *(Name + 2) == 0x6363615F74636572) : (v11 = 0), v11 ? (v12 = *(Name + 19) == 0x7373656363615F74) : (v12 = 0), v12))
      {
        v125 = v7;
        LODWORD(v117) = 4;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
      }

      else
      {
        v125 = v7;
        LODWORD(v117) = 0;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
      }

LABEL_77:
      if (llvm::StringRef::find() != -1)
      {
        v125 = v7;
        LODWORD(v117) = 3;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v128, &v125, &v117);
      }
    }

    v6 = *(v6 + 8);
  }

  while (v6 != v5);
  v25 = v128;
  if (v129)
  {
    v111 = &v128[2 * v129];
    v112 = this;
    while (1)
    {
      v26 = *v25;
      v27 = v25[2];
      if (v27 <= 1)
      {
        if (!v27)
        {
LABEL_105:
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v125, v26[1], 0);
          v50 = v125;
          if (v126)
          {
            v109 = v25;
            v110 = v26;
            v51 = 8 * v126;
            do
            {
              v52 = *v50;
              if (*v50 && *(v52 + 16) == 84 && (!*(v52 + 48) && (*(v52 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
              {
                llvm::MDTuple::getImpl();
                llvm::Instruction::setMetadata();
                llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v52, 0, 0, 0);
                v53 = *(v52 - 32 * (*(v52 + 20) & 0x7FFFFFF) + 128);
                v54 = *v53;
                v119 = 257;
                PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v53, v113, &v117, v55);
                v114 = 0;
                v115 = 0;
                v116 = 0;
                MemoryIndirectionPass::unpackAccelerationStructureValue(this, PointerBitCastOrAddrSpaceCast, &Name, &v114);
                v57 = v114;
                v58 = v115;
                inserted = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
                llvm::IRBuilderBase::CreateAlignedStore(&Name, PointerBitCastOrAddrSpaceCast, inserted, 0, 0);
                v119 = 257;
                Cast = llvm::IRBuilderBase::CreateCast(&Name, 48, v58, v54, &v117);
                llvm::CallBase::setArgOperand(v52, 4u, Cast);
                if (!v27)
                {
                  MemoryIndirectionPass::generatePrimitiveDataHandle(this, v110, v52, v57, v58, v54);
                }

                if ((*(*(this[8] + 9) + 24) & 0x10) != 0)
                {
                  v62 = MemoryIndirectionPass::createValidateAccelerationStructureTypeCall(this, v52, v61);
                  llvm::Instruction::insertBefore(v62, v52);
                  llvm::CallBase::setArgOperand(v62, 0, v53);
                }

                llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v124);
                llvm::IRBuilderFolder::~IRBuilderFolder(&v123);
                if (Name != v122)
                {
                  free(Name);
                }
              }

              v50 = (v50 + 8);
              v51 -= 8;
            }

            while (v51);
            v50 = v125;
            v25 = v109;
          }

          if (v50 == v127)
          {
            goto LABEL_175;
          }

          v63 = v50;
          goto LABEL_174;
        }

        if (v27 != 1)
        {
          goto LABEL_161;
        }

        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v125, v26[1], 0);
        v28 = v125;
        if (v126)
        {
          v108 = v25;
          v29 = 8 * v126;
          do
          {
            v30 = *v28;
            if (*v28 && *(v30 + 16) == 84 && (!*(v30 + 48) && (*(v30 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
            {
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v30, 0, 0, 0);
              v31 = *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF) + 160);
              v119 = 257;
              v33 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v31, v113, &v117, v32);
              v114 = 0;
              v115 = 0;
              v116 = 0;
              MemoryIndirectionPass::unpackAccelerationStructureValue(this, v33, &Name, &v114);
              v35 = v114;
              v34 = v115;
              v36 = this[9];
              v117 = **(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF));
              v118 = v36;
              v37 = llvm::StructType::get();
              v38 = llvm::User::operator new(0x48);
              v119 = 257;
              llvm::BasicBlock::getFirstNonPHI(*(v30 + 40));
              llvm::AllocaInst::AllocaInst();
              v119 = 257;
              ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v37, v38, 0, 0, &v117);
              v119 = 257;
              v40 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v37, v38, 0, 1u, &v117);
              llvm::IRBuilderBase::CreateAlignedStore(&Name, v35, v40, 0, 0);
              this = v112;
              AlignedStore = llvm::IRBuilderBase::CreateAlignedStore(&Name, *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF)), ConstInBoundsGEP2_32, 0, 0);
              v42 = **(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF) + 160);
              v119 = 257;
              v43 = llvm::IRBuilderBase::CreateCast(&Name, 48, v34, v42, &v117);
              llvm::CallBase::setArgOperand(v30, 5u, v43);
              v44 = *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF));
              v45 = *v44;
              v119 = 257;
              llvm::IRBuilderBase::CreateCast(&Name, 49, v38, v45, &v117);
              llvm::Value::replaceAllUsesWith();
              if (*(AlignedStore - 64))
              {
                v46 = *(AlignedStore - 56);
                **(AlignedStore - 48) = v46;
                if (v46)
                {
                  *(v46 + 16) = *(AlignedStore - 48);
                }
              }

              *(AlignedStore - 64) = v44;
              v49 = v44[1];
              v48 = v44 + 1;
              v47 = v49;
              *(AlignedStore - 56) = v49;
              if (v49)
              {
                *(v47 + 16) = AlignedStore - 56;
              }

              *(AlignedStore - 48) = v48;
              *v48 = AlignedStore - 64;
              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v124);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v123);
              if (Name != v122)
              {
                free(Name);
              }
            }

            v28 = (v28 + 8);
            v29 -= 8;
          }

          while (v29);
          v28 = v125;
          v25 = v108;
        }
      }

      else
      {
        switch(v27)
        {
          case 2:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v125, v26[1], 0);
            v28 = v125;
            if (v126)
            {
              v64 = v25;
              v65 = 8 * v126;
              do
              {
                v66 = *v28;
                if (*v28 && *(v66 + 16) == 84 && (!*(v66 + 48) && (*(v66 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
                {
                  llvm::MDTuple::getImpl();
                  llvm::Instruction::setMetadata();
                  v67 = *(v66 + 32);
                  if (v67)
                  {
                    v68 = v67 == *(v66 + 40) + 40;
                  }

                  else
                  {
                    v68 = 1;
                  }

                  if (v68)
                  {
                    v69 = 0;
                  }

                  else
                  {
                    v69 = (v67 - 24);
                  }

                  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v69, 0, 0, 0);
                  v70 = this[9];
                  v117 = **(v66 - 32 * (*(v66 + 20) & 0x7FFFFFF));
                  v118 = v70;
                  v71 = llvm::StructType::get();
                  v72 = *(v66 - 32 * (*(v66 + 20) & 0x7FFFFFF));
                  v73 = llvm::PointerType::get();
                  v119 = 257;
                  v74 = llvm::IRBuilderBase::CreateCast(&Name, 49, v72, v73, &v117);
                  v119 = 257;
                  v75 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v71, v74, 0, 1u, &v117);
                  v114 = 0;
                  v115 = 0;
                  v116 = 0;
                  MemoryIndirectionPass::unpackAccelerationStructureValue(v112, v75, &Name, &v114);
                  v119 = 257;
                  v76 = llvm::IRBuilderBase::CreateCast(&Name, 48, v114, v113, &v117);
                  MemoryIndirectionPass::createIndirectPtrToBase(v112, v76, v77);
                }

                v28 = (v28 + 8);
                v65 -= 8;
              }

              while (v65);
              v28 = v125;
              v25 = v64;
            }

            break;
          case 3:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v125, v26[1], 0);
            v28 = v125;
            if (v126)
            {
              v78 = v25;
              v79 = (v125 + 8 * v126);
              do
              {
                v80 = *v28;
                if (*(*v28 + 16) == 84 && v80 != 0)
                {
                  v82 = 0;
                  v83 = *v28;
                  while (v82 < llvm::compat::getNumArgOperands(v80))
                  {
                    v84 = *(v83 - 32 * (*(v80 + 5) & 0x7FFFFFF));
                    if (*(*v84 + 8) == 15)
                    {
                      v85 = **(*v84 + 2);
                      if (*(v85 + 8) == 16)
                      {
                        Name = llvm::StructType::getName(v85);
                        v121 = v86;
                        if (llvm::StringRef::find() != -1)
                        {
                          v87 = this[9];
                          Name = *v84;
                          v121 = v87;
                          v88 = llvm::StructType::get();
                          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v80, 0, 0, 0);
                          v89 = llvm::PointerType::get();
                          v119 = 257;
                          v90 = llvm::IRBuilderBase::CreateCast(&Name, 49, v84, v89, &v117);
                          v119 = 257;
                          v91 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v88, v90, 0, 0, &v117);
                          v92 = *(v91 + 72);
                          v119 = 257;
                          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&Name, v92, v91, 0, 0, &v117);
                          v94 = v83 - 32 * (*(v80 + 5) & 0x7FFFFFF);
                          if (*v94)
                          {
                            v95 = *(v94 + 8);
                            **(v94 + 16) = v95;
                            if (v95)
                            {
                              *(v95 + 16) = *(v94 + 16);
                            }
                          }

                          *v94 = AlignedLoad;
                          if (AlignedLoad)
                          {
                            v98 = *(AlignedLoad + 8);
                            v96 = (AlignedLoad + 8);
                            v97 = v98;
                            *(v94 + 8) = v98;
                            if (v98)
                            {
                              *(v97 + 16) = v94 + 8;
                            }

                            *(v94 + 16) = v96;
                            *v96 = v94;
                          }

                          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v124);
                          llvm::IRBuilderFolder::~IRBuilderFolder(&v123);
                          if (Name != v122)
                          {
                            free(Name);
                          }
                        }
                      }
                    }

                    ++v82;
                    v83 += 32;
                  }
                }

                v28 = (v28 + 8);
              }

              while (v28 != v79);
              v28 = v125;
              v25 = v78;
            }

            break;
          case 4:
            goto LABEL_105;
          default:
LABEL_161:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v125, v26[1], 0);
            v28 = v125;
            if (v126)
            {
              v99 = 8 * v126;
              do
              {
                v100 = *v28;
                if (*v28 && *(v100 + 16) == 84 && (!*(v100 + 48) && (*(v100 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
                {
                  llvm::MDTuple::getImpl();
                  llvm::Instruction::setMetadata();
                  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v100, 0, 0, 0);
                  v101 = *(v100 - 32 * (*(v100 + 20) & 0x7FFFFFF));
                  v119 = 257;
                  v103 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v101, v113, &v117, v102);
                  v114 = 0;
                  v115 = 0;
                  v116 = 0;
                  MemoryIndirectionPass::unpackAccelerationStructureValue(this, v103, &Name, &v114);
                  v104 = v115;
                  v105 = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
                  llvm::IRBuilderBase::CreateAlignedStore(&Name, v103, v105, 0, 0);
                  v106 = **(v100 - 32 * (*(v100 + 20) & 0x7FFFFFF));
                  v119 = 257;
                  v107 = llvm::IRBuilderBase::CreateCast(&Name, 48, v104, v106, &v117);
                  llvm::CallBase::setArgOperand(v100, 0, v107);
                  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v124);
                  llvm::IRBuilderFolder::~IRBuilderFolder(&v123);
                  if (Name != v122)
                  {
                    free(Name);
                  }
                }

                v28 = (v28 + 8);
                v99 -= 8;
              }

              while (v99);
              v28 = v125;
            }

            break;
        }
      }

      if (v28 != v127)
      {
        v63 = v28;
LABEL_174:
        free(v63);
      }

LABEL_175:
      v25 += 4;
      if (v25 == v111)
      {
        v25 = v128;
        break;
      }
    }
  }

  if (v25 != v130)
  {
    free(v25);
  }
}

void sub_2579DCC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v28 = *(v26 - 192);
  if (v28 != a10)
  {
    free(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MemoryIndirectionPass::getPrimitiveDataArgIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 16);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  v6 = *(a2 - 8 * *(a2 + 8) + 16);
  do
  {
    v7 = *(v6 - 8 * v3);
    String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
    if (v9 == 18)
    {
      v10 = *String == 0x6D6972702E726961 && *(String + 8) == 0x61645F6576697469;
      if (v10 && *(String + 16) == 24948)
      {
        v12 = *(*(v7 - 8 * *(v7 + 8)) + 128);
        v13 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        v5 = *v13;
      }
    }

    ++v4;
    v3 = *(v2 + 8);
    v6 += 8;
  }

  while (v4 < v3);
  return v5;
}

uint64_t MemoryIndirectionPass::unpackAccelerationStructureValue@<X0>(void *a1@<X0>, llvm::Type **a2@<X1>, llvm::IRBuilderBase *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = llvm::PointerType::get();
  v28 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, a2, v8, v27);
  v10 = a1[12];
  v28 = 257;
  ConstInBoundsGEP1_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v10, BitOrPointerCast, 0, v27);
  v12 = a1[9];
  v13 = llvm::PointerType::get();
  v28 = 257;
  v14 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, ConstInBoundsGEP1_32, v13, v27);
  v28 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a3, v12, v14, 0, 0, v27);
  v16 = a1[12];
  v28 = 257;
  v17 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v16, BitOrPointerCast, 8u, v27);
  v18 = llvm::PointerType::get();
  v28 = 257;
  v19 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, v17, v18, v27);
  v28 = 257;
  v20 = llvm::IRBuilderBase::CreateAlignedLoad(a3, v12, v19, 0, 0, v27);
  v21 = 0;
  if ((*(*(a1[8] + 72) + 24) & 0x10) != 0)
  {
    v22 = a1[12];
    v28 = 257;
    v23 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v22, BitOrPointerCast, 0x10u, v27);
    v24 = llvm::PointerType::get();
    v28 = 257;
    v25 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, v23, v24, v27);
    v28 = 257;
    v21 = llvm::IRBuilderBase::CreateAlignedLoad(a3, v12, v25, 0, 0, v27);
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
  }

  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  llvm::MDTuple::getImpl();
  result = llvm::Instruction::setMetadata();
  *a4 = AlignedLoad;
  a4[1] = v20;
  if ((*(*(a1[8] + 72) + 24) & 0x10) != 0)
  {
    a4[2] = v21;
  }

  return result;
}

uint64_t MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(uint64_t a1, uint64_t a2, llvm::Value *this, uint64_t a4, uint64_t a5)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = a5;
  v20[0] = llvm::Value::getName(this);
  v20[1] = v8;
  v9 = llvm::StringRef::find();
  v10 = "air.get_data_pointer_instance_acceleration_structure";
  if (v9 == -1)
  {
    v10 = "air.get_data_pointer_primitive_acceleration_structure";
  }

  v11 = 52;
  if (v9 == -1)
  {
    v11 = 53;
  }

  v22[0] = v10;
  v22[1] = v11;
  v12 = *(a1 + 48);
  v20[0] = llvm::PointerType::get();
  v13 = getOrInsertFunction<llvm::StringRef &,llvm::PointerType *,llvm::Type *&>(v12, v22, v20, &v23);
  v14 = *(v13 + 24);
  v15 = *(*(v14 + 16) + 8);
  v21 = 257;
  v24[0] = llvm::IRBuilderBase::CreateCast(a2, 48, a4, v15, v20);
  v19 = 257;
  v16 = llvm::IRBuilderBase::CreateCall(a2, v14, v13, v24, 1, v18, 0);
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  return v16;
}

uint64_t MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(uint64_t a1, llvm::IRBuilderBase *this, llvm::Type **a3, llvm::Value *a4, llvm::Type **a5)
{
  v10 = *(a1 + 72);
  v26 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(this, a3, v10, v25);
  v12 = *(a1 + 72);
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateBitOrPointerCast(this, a5, v12, v25);
  v24 = 257;
  Sub = llvm::IRBuilderBase::CreateSub(this, BitOrPointerCast, v13, v23, 0, 0);
  v22 = 257;
  llvm::IRBuilderBase::CreateAdd(this, a4, Sub, v21, 0, 0);
  NullValue = llvm::Constant::getNullValue(*(a1 + 72), v15);
  v26 = 257;
  llvm::IRBuilderBase::CreateICmp(this, 32, BitOrPointerCast, NullValue, v25);
  llvm::Constant::getNullValue(*(a1 + 72), v17);
  v26 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = *a3;
  v26 = 257;
  llvm::IRBuilderBase::CreateBitOrPointerCast(this, Select, v19, v25);
  llvm::Value::replaceAllUsesWith();
  return llvm::User::setOperand(BitOrPointerCast, 0, a3);
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v7 = *(a1 + 2);
  }

  else
  {
    v5 = *a1;
    v6 = *a1 + 16 * v4;
    *v6 = *a2;
    *(v6 + 8) = *a3;
    v7 = v4 + 1;
    *(a1 + 2) = v7;
  }

  return v5 + 16 * v7 - 16;
}

void MemoryIndirectionPass::generatePrimitiveDataHandle(uint64_t *a1, llvm::Value *a2, llvm::Value *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47[1] = *MEMORY[0x277D85DE8];
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v44, this, 0, 0, 0);
  MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(a1, v44, a2, a5, a6);
  v11 = *(this + 4);
  if (v11)
  {
    v12 = v11 == *(this + 5) + 40;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v11 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint(v44, v13);
  LODWORD(v43[0]) = 4;
  v42 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue(v44, this, v43, 1, v41);
  v15 = a1[23];
  v16 = *(v15 + 24);
  v42 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v44, v16, v15, 0, 0, v41);
  v18 = a1[8];
  Name = llvm::Value::getName(a1[23]);
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v18, Name, v20);
  v43[0] = llvm::ConstantInt::get();
  v43[1] = llvm::ConstantInt::get();
  v42 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP(v44, GVBaseType, AlignedLoad, v43, 2, v41);
  v23 = *(GEP + 72);
  v42 = 257;
  v24 = llvm::IRBuilderBase::CreateAlignedLoad(v44, v23, GEP, 259, 0, v41);
  v25 = a1[8];
  v43[0] = v24;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v25 + 208, v43, v41);
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v26 = a1[9];
  v42 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v44, 47, v24, v26, v41);
  v28 = a1[9];
  v42 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v44, Value, v28, v41);
  v42 = 257;
  Sub = llvm::IRBuilderBase::CreateSub(v44, BitOrPointerCast, Cast, v41, 0, 0);
  v31 = llvm::ConstantInt::get();
  v42 = 257;
  v32 = llvm::IRBuilderBase::CreateAnd(v44, Sub, v31, v41);
  v33 = llvm::ConstantInt::get();
  v42 = 257;
  llvm::IRBuilderBase::CreateAdd(v44, v33, v32, v41, 0, 0);
  NullValue = llvm::Constant::getNullValue(a1[9], v34);
  v42 = 257;
  llvm::IRBuilderBase::CreateICmp(v44, 32, BitOrPointerCast, NullValue, v41);
  llvm::Constant::getNullValue(a1[9], v36);
  v42 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v38 = *Value;
  v42 = 257;
  v39 = llvm::IRBuilderBase::CreateBitOrPointerCast(v44, Select, v38, v41);
  LODWORD(v43[0]) = 4;
  v42 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue(v44, this, v39, v43, 1, v41);
  llvm::Value::replaceAllUsesWith();
  llvm::User::setOperand(Value, 0, this);
  llvm::User::setOperand(InsertValue, 0, this);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v47);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v46);
  if (v44[0] != &v45)
  {
    free(v44[0]);
  }
}

void sub_2579DD844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MemoryIndirectionPass::createValidateAccelerationStructureTypeCall(uint64_t a1, llvm::Instruction *a2, unsigned int a3)
{
  v17[5] = *MEMORY[0x277D85DE8];
  llvm::PointerType::get();
  v5 = (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[16];
  Module = llvm::Instruction::getModule(a2);
  Context = llvm::Value::getContext(a2);
  v15[0] = "mtl.validate_acceleration_structure_type";
  v16 = 259;
  VoidTy = llvm::Type::getVoidTy(Context, v8);
  v17[0] = *v5;
  v10 = getMangledFunction<llvm::Type *,llvm::Type *&>(Module, v15, VoidTy, v17, (a1 + 80));
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v14 = llvm::ConstantInt::get();
  if (llvm::GlobalValue::isDeclaration(v10))
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v10 + 32) = *(v10 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v15[0] = "entryBlock";
    v16 = 259;
    llvm::BasicBlock::Create(Context, v15, v10, 0, v11);
  }

  if (v10)
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = 0;
  }

  v17[0] = v5;
  v17[1] = v14;
  v16 = 257;
  return llvm::CallInst::Create(v12, v10, v17, 2, 0, 0, v15, 0);
}

void sub_2579DDE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::createIndirectPtrToBase(MemoryIndirectionPass *this, MTLBoundsCheck **a2, unsigned int a3)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  v6 = "mtl.ind_ptr_to_base";
  v7 = 259;
  v5 = llvm::PointerType::get();
  v8[0] = *a2;
  getMangledFunction<llvm::Type *>(v4, &v6, v5, v8);
}

void sub_2579DE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::User::setOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 20);
  if ((v3 & 0x40000000) != 0)
  {
    v4 = *(result - 8);
  }

  else
  {
    v4 = result - 32 * (v3 & 0x7FFFFFF);
  }

  v5 = v4 + 32 * a2;
  if (*v5)
  {
    v6 = *(v5 + 8);
    **(v5 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v5 + 16);
    }
  }

  *v5 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v5 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v5 + 8;
    }

    *(v5 + 16) = v7;
    *v7 = v5;
  }

  return result;
}

uint64_t getMangledFunction<llvm::Type *,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579DE4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateCondBr(unsigned int **a1, llvm::BasicBlock *a2, llvm::BranchInst *this, llvm::BasicBlock *a4, llvm::Instruction *a5, uint64_t a6)
{
  v9 = llvm::BranchInst::Create(this, a4, a2, 0, a5);
  v10 = llvm::IRBuilderBase::addBranchMetadata<llvm::BranchInst>(a1, v9, a5, a6);
  v13 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, v12);
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock * const&>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t llvm::IRBuilderBase::addBranchMetadata<llvm::BranchInst>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    llvm::Instruction::setMetadata();
  }

  if (a4)
  {
    llvm::Instruction::setMetadata();
  }

  return a2;
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, unsigned int a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!result)
  {
    v13[16] = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2, v13, 0);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  return result;
}

uint64_t getOrInsertFunction<llvm::StringRef &,llvm::PointerType *,llvm::Type *&>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  llvm::Module::getOrInsertFunction<llvm::Type *>(a1, *a2, a2[1], 0, *a3, *a4);
  result = v4;
  if (*(v4 + 16) == 5)
  {
    return *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = a6;
  llvm::SmallVector<llvm::Type *,1u>::SmallVector(&v9, &v8, 1);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v9 != v10)
  {
    free(v9);
  }

  return inserted;
}

void MemoryIndirectionPass::createIndirectPtrToOffset(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.ind_ptr_to_offset";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_2579DEB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::createIndirectPtrToLength(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.ind_ptr_to_length";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_2579DEEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

llvm::Instruction *llvm::IRBuilderBase::CreateShl(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 152))(*(this + 9), a2, a3, a5, a6);
    if (result)
    {
      v9 = *(result + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {

      return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, result, a4);
    }
  }

  else
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 25, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t MemoryIndirectionPass::createCheckedFunction(MemoryIndirectionPass *a1, uint64_t a2, llvm::Value *this)
{
  v53[8] = *MEMORY[0x277D85DE8];
  if (!this)
  {
    return 0;
  }

  Name = llvm::Value::getName(this);
  v41 = Name;
  v42 = v7;
  if (v7 >= 0x17)
  {
    if (*Name == 0x5F7465732E726961 && Name[1] == 0x746E656D67617266 && *(Name + 15) == 0x7265666675625F74)
    {
      return 0;
    }

LABEL_13:
    if (*Name == 0x5F7465732E726961 && Name[1] == 0x625F6C656E72656BLL && *(Name + 13) == 0x7265666675625F6CLL)
    {
      return 0;
    }

    v12 = *Name == 0x5F7465732E726961 && Name[1] == 0x625F786574726576;
    if (v12 && *(Name + 13) == 0x7265666675625F78)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (v7 >= 0x15)
  {
    goto LABEL_13;
  }

  if (v7 < 4)
  {
    return 0;
  }

LABEL_27:
  if (*Name != 779250017)
  {
    if (v7 < 5)
    {
      return 0;
    }

    if (*Name != 1836477548 || *(Name + 4) != 46)
    {
      return 0;
    }
  }

  if ((*(a2 + 48) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl())
  {
    return 0;
  }

  v17 = *(this + 3);
  v38 = **(v17 + 16);
  v51 = v53;
  v52 = xmmword_257A6DAA0;
  llvm::raw_svector_ostream::raw_svector_ostream(v39, &v51);
  llvm::raw_ostream::operator<<(v39, "mtl.indirect.", 0xDuLL);
  llvm::raw_ostream::operator<<(v39, v41, v42);
  v48 = v50;
  v49 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v48, (*(v17 + 12) - 1));
  if (v42 >= 0xB)
  {
    if (*v41 == 0x6D656D2E6D766C6CLL && *(v41 + 3) == 0x7970636D656D2E6DLL)
    {
      goto LABEL_69;
    }

    if (*v41 == 0x6D656D2E6D766C6CLL && *(v41 + 3) == 0x7465736D656D2E6DLL)
    {
      goto LABEL_69;
    }

    if (v42 != 11)
    {
      if (*v41 != 0x6D656D2E6D766C6CLL || *(v41 + 2) != 1702260589)
      {
        if (v42 >= 0x11)
        {
          v21 = *v41 == 0x6D6F74612E726961 && *(v41 + 1) == 0x61626F6C672E6369;
          if (v21 && v41[16] == 108)
          {
            v23 = llvm::StringRef::find();
            v24 = -4;
            if (v23 == -1)
            {
              v24 = -3;
            }

            v25 = v24 + v49;
            if (__CFADD__(v24, v49))
            {
              v26 = a2 + 32 * v25;
              do
              {
                v48[v25] = *(v26 - 32 * (*(a2 + 20) & 0x7FFFFFF));
                llvm::raw_ostream::operator<<(v39, ".", 1uLL);
                llvm::raw_ostream::operator<<();
                ++v25;
                v26 += 32;
              }

              while (v25 < v49);
            }
          }
        }

        goto LABEL_74;
      }

LABEL_69:
      if (v49 >= 4)
      {
        v27 = 3;
        if (v49 == 5)
        {
          v27 = 4;
        }

        v48[v27] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v27);
        llvm::raw_ostream::operator<<(v39, ".", 1uLL);
        llvm::raw_ostream::operator<<();
        if (v49 == 5)
        {
          v48[3] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 96);
          llvm::raw_ostream::operator<<(v39, ".", 1uLL);
          llvm::raw_ostream::operator<<();
        }
      }
    }
  }

LABEL_74:
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v45 = v47;
    v46 = 0x200000000;
    MTLBoundsCheck::gatherMemoryArguments(this, &v45);
    if (v46)
    {
      v28 = 0;
      v29 = v45;
      v30 = 24 * v46;
      do
      {
        v28 += MemoryIndirectionPass::indirectAddressSpace(a1, **v29);
        v29 += 3;
        v30 -= 24;
      }

      while (v30);
      if (v28 && *(v38 + 8) != 15)
      {
        v32 = *v40;
        v31 = v40[1];
        v44 = 261;
        v43[0] = v32;
        v43[1] = v31;
        v33 = llvm::Function::Create(v17, 7uLL, v43, *(a1 + 6));
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        llvm::Function::addFnAttr();
        llvm::Function::addFnAttr();
        if (v42 >= 0x18)
        {
          v35 = *v41 == 0x776172642E726961 && *(v41 + 1) == 0x64657865646E695FLL;
          if (v35 && *(v41 + 2) == 0x736568637461705FLL)
          {
            if (*(v33 + 18))
            {
              llvm::Function::BuildLazyArguments(v33);
            }

            v48[6] = *(v33 + 88) + 240;
          }
        }

        v37 = *(a1 + 5);
        v43[0] = "entry";
        v44 = 259;
        llvm::BasicBlock::Create(v37, v43, v33, 0, v34);
      }
    }

    Function = 0;
    if (v45 != v47)
    {
      free(v45);
    }
  }

  if (v48 != v50)
  {
    free(v48);
  }

  llvm::raw_ostream::~raw_ostream(v39);
  if (v51 != v53)
  {
    free(v51);
  }

  return Function;
}

void sub_2579DF7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  v58 = *(v56 - 232);
  if (v58 != v55)
  {
    free(v58);
  }

  llvm::raw_ostream::~raw_ostream(&a26);
  v59 = *(v56 - 184);
  if (v59 != v54)
  {
    free(v59);
  }

  _Unwind_Resume(a1);
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

  return this + -32 * llvm::CallBase::getNumTotalBundleOperands(this) + -32 * NumSubclassExtraOperandsDynamic - 32;
}

uint64_t MemoryIndirectionPass::createIndirectLoad(llvm::DataLayout **this, llvm::Value *a2, llvm::Type *a3, llvm::Type *a4, unsigned int a5)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v16 = llvm::PointerType::get();
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    llvm::DataLayout::getPrefTypeAlignment(this[7], a4);
    v9 = 0;
  }

  v10 = this[6];
  v17[0] = "mtl.indirect_load.";
  v17[2] = v9;
  v18 = 2051;
  v19[0] = *a2;
  v11 = getMangledFunction<llvm::Type *,llvm::PointerType *&>(v10, v17, a4, v19, &v16);
  if (llvm::GlobalValue::isDeclaration(v11))
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v11 + 32) = *(v11 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v12 = this[5];
    v18 = 257;
    llvm::BasicBlock::Create(v12, v17, v11, 0, v13);
  }

  if (v11)
  {
    v14 = *(v11 + 24);
  }

  else
  {
    v14 = 0;
  }

  v19[0] = a2;
  v19[1] = llvm::UndefValue::get();
  v18 = 257;
  return llvm::CallInst::Create(v14, v11, v19, 2, 0, 0, v17, 0);
}

void sub_2579DFC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MemoryIndirectionPass::createIndirectStore(llvm::DataLayout **this, llvm::Value *a2, llvm::Type *a3, llvm::PointerType **a4, unsigned int a5)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v21 = *a4;
  v20 = llvm::PointerType::get();
  if (a5)
  {
    PrefTypeAlignment = a5;
  }

  else
  {
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v9);
  }

  v19 = PrefTypeAlignment;
  v22[0] = "mtl.indirect_store.";
  v22[2] = &v19;
  v23 = 3075;
  v12 = this[6];
  VoidTy = llvm::Type::getVoidTy(this[5], v10);
  v24[0] = *a2;
  v14 = getMangledFunction<llvm::Type *,llvm::Type *&,llvm::PointerType *&>(v12, v22, VoidTy, v24, &v21, &v20);
  if (llvm::GlobalValue::isDeclaration(v14))
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v14 + 32) = *(v14 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v15 = this[5];
    v23 = 257;
    llvm::BasicBlock::Create(v15, v22, v14, 0, v16);
  }

  if (v14)
  {
    v17 = *(v14 + 24);
  }

  else
  {
    v17 = 0;
  }

  v24[0] = a2;
  v24[1] = a4;
  v24[2] = llvm::UndefValue::get();
  v23 = 257;
  return llvm::CallInst::Create(v17, v14, v24, 3, 0, 0, v22, 0);
}

void sub_2579DFF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::raw_svector_ostream::raw_svector_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D82200] + 16;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

void llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

unint64_t llvm::CallBase::getNumTotalBundleOperands(llvm::CallBase *this)
{
  result = llvm::CallBase::getNumOperandBundles(this);
  if (result)
  {
    v3 = *(llvm::User::getDescriptor(this) + 8);
    Descriptor = llvm::User::getDescriptor(this);
    return (*(Descriptor + v5 - 4) - v3);
  }

  return result;
}

unint64_t llvm::CallBase::getNumOperandBundles(llvm::CallBase *this)
{
  if ((*(this + 5) & 0x80000000) != 0)
  {
    Descriptor = llvm::User::getDescriptor(this);
    if ((*(this + 5) & 0x80000000) != 0)
    {
      v5 = llvm::User::getDescriptor(this);
      v3 = v5 + v6;
      return (v3 - Descriptor) >> 4;
    }
  }

  else
  {
    Descriptor = 0;
  }

  v3 = 0;
  return (v3 - Descriptor) >> 4;
}

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, a2, a3);
  return a1;
}

void sub_2579E018C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

uint64_t getMangledFunction<llvm::Type *,llvm::PointerType *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579E046C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *,llvm::Type *&,llvm::PointerType *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5, int64_t *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v33, this);
  MTLBoundsCheck::getMangledTypeStr(&v32, a3, v11, v12);
  v13 = std::string::insert(&v32, 0, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v35 = v13->__r_.__value_.__r.__words[2];
  v34 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v35 >= 0)
  {
    v15 = &v34;
  }

  else
  {
    v15 = v34;
  }

  if (v35 >= 0)
  {
    v16 = HIBYTE(v35);
  }

  else
  {
    v16 = *(&v34 + 1);
  }

  std::string::append(&v33, v15, v16);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v19 = 0;
  memset(&v32, 0, sizeof(v32));
  v20 = *a5;
  *&v34 = *a4;
  *(&v34 + 1) = v20;
  v35 = *a6;
  do
  {
    v31 = *(&v34 + v19);
    MTLBoundsCheck::getMangledTypeStr(&v28, v31, v17, v18);
    v21 = std::string::insert(&v28, 0, ".");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v30 >= 0)
    {
      v24 = HIBYTE(v30);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(&v33, v23, v24);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v32, &v31);
    v19 += 8;
  }

  while (v19 != 24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v26 = llvm::FunctionType::get();
    v36 = 260;
    *&v34 = &v33;
    Function = llvm::Function::Create(v26, 0, &v34, a1);
  }

  if (v32.__r_.__value_.__r.__words[0])
  {
    v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579E075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::~MTLICBIndirectionPass(MTLICBIndirectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
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

uint64_t MTLICBIndirectionPass::runOnModule(MTLICBIndirectionPass *this, llvm::Module *a2)
{
  v63[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v61, *(a2 + 4), a2 + 24);
  v4 = v61;
  if (v62)
  {
    v5 = (v61 + 8 * v62);
    while (1)
    {
      if ((llvm::GlobalValue::isDeclaration(*v4) & 1) == 0)
      {
        goto LABEL_135;
      }

      Name = llvm::Value::getName(*v4);
      if (v7 < 4 || *Name != 779250017)
      {
        goto LABEL_135;
      }

      v8 = llvm::Value::getName(*v4);
      v10 = v8;
      v11 = v9;
      if (v9 >= 0x25)
      {
        break;
      }

      if (v9 == 36)
      {
        v12 = memcmp(v8, "air.set_vertex_buffer_render_command", 0x24uLL);
        v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
        if (!v12)
        {
          goto LABEL_126;
        }

        goto LABEL_24;
      }

      if (v9 >= 0x20)
      {
        goto LABEL_24;
      }

      if (v9 >= 0x1B)
      {
        v32 = *v8 == 0x5F7465672E726961 && v8[1] == 0x6D6F635F657A6973 && v8[2] == 0x6675625F646E616DLL && *(v8 + 19) == 0x7265666675625F64;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v32)
        {
LABEL_126:
          v54 = v13;
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v58, *(*v4 + 1), 0);
          v55 = v58;
          if (v59)
          {
            v56 = 8 * v59;
            do
            {
              if (*v55 && *(*v55 + 16) == 84)
              {
                v54(this);
              }

              v55 += 8;
              v56 -= 8;
            }

            while (v56);
            v55 = v58;
          }

          if (v55 != &v60)
          {
            free(v55);
          }

          goto LABEL_135;
        }
      }

      else if (v9 < 0x18)
      {
        if (v9 != 23)
        {
          goto LABEL_135;
        }

        v19 = v8[1];
        v20 = *(v8 + 15);
        v21 = *v8 == 0x79706F632E726961;
        v22 = 0x5F7265646E65725FLL;
        goto LABEL_76;
      }

LABEL_57:
      v34 = *v10 == 0x657365722E726961 && v10[1] == 0x7265646E65725F74 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v34)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x22)
      {
        v35 = memcmp(v10, "air.draw_primitives_render_command", 0x22uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v35)
        {
          goto LABEL_126;
        }
      }

      v36 = *v10 == 0x79706F632E726961 && v10[1] == 0x5F7265646E65725FLL;
      v37 = v36 && *(v10 + 15) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v37)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x26)
      {
        v40 = memcmp(v10, "air.set_pipeline_state_compute_command", 0x26uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v40)
        {
          goto LABEL_126;
        }
      }

      else if (v11 < 0x19)
      {
        v19 = v10[1];
        v20 = v10[2];
        v21 = *v10 == 0x79706F632E726961;
        v22 = 0x657475706D6F635FLL;
LABEL_76:
        v39 = v21 && v19 == v22 && v20 == 0x646E616D6D6F635FLL;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v39)
        {
          goto LABEL_126;
        }

        goto LABEL_135;
      }

      v43 = *v10 == 0x657365722E726961 && v10[1] == 0x7475706D6F635F74 && v10[2] == 0x6E616D6D6F635F65 && *(v10 + 24) == 100;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v43)
      {
        goto LABEL_126;
      }

      v44 = *v10 == 0x79706F632E726961 && v10[1] == 0x657475706D6F635FLL;
      v45 = v44 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v45)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x31)
      {
        v46 = memcmp(v10, "air.set_threadgroup_memory_length_compute_command", 0x31uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v46)
        {
          goto LABEL_126;
        }
      }

      else if (v11 < 0x1F)
      {
        goto LABEL_135;
      }

      v49 = *v10 == 0x5F7465732E726961 && v10[1] == 0x5F72656972726162 && v10[2] == 0x5F657475706D6F63 && *(v10 + 23) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v49)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x21)
      {
        v50 = memcmp(v10, "air.clear_barrier_compute_command", 0x21uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v50)
        {
          goto LABEL_126;
        }

        if (v11 >= 0x34)
        {
          v51 = memcmp(v10, "air.concurrent_dispatch_threadgroups_compute_command", 0x34uLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v51)
          {
            goto LABEL_126;
          }
        }

        else if (v11 < 0x2F)
        {
          if (v11 < 0x27)
          {
            goto LABEL_135;
          }

          goto LABEL_125;
        }

        v52 = memcmp(v10, "air.concurrent_dispatch_threads_compute_command", 0x2FuLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v52)
        {
          goto LABEL_126;
        }

LABEL_125:
        v53 = memcmp(v10, "air.set_stage_in_region_compute_command", 0x27uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v53)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      if (++v4 == v5)
      {
        v4 = v61;
        goto LABEL_137;
      }
    }

    v14 = memcmp(v8, "air.set_kernel_buffer_compute_command", 0x25uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v14)
    {
      goto LABEL_126;
    }

    v15 = memcmp(v10, "air.set_vertex_buffer_render_command", 0x24uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v15)
    {
      goto LABEL_126;
    }

    if (v11 != 37)
    {
      v16 = memcmp(v10, "air.set_fragment_buffer_render_command", 0x26uLL);
      v13 = MTLICBIndirectionPass::replaceSetBuffer;
      if (!v16)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x27)
      {
        v17 = memcmp(v10, "air.draw_indexed_patches_render_command", 0x27uLL);
        v13 = MTLICBIndirectionPass::replaceDrawIndexedPatches;
        if (!v17)
        {
          goto LABEL_126;
        }

        if (v11 >= 0x2A)
        {
          v18 = memcmp(v10, "air.draw_indexed_primitives_render_command", 0x2AuLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v18)
          {
            goto LABEL_126;
          }
        }
      }
    }

LABEL_24:
    v25 = *v10 == 0x776172642E726961 && v10[1] == 0x736568637461705FLL && v10[2] == 0x5F7265646E65725FLL && v10[3] == 0x2E646E616D6D6F63;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v25)
    {
      goto LABEL_126;
    }

    v26 = *v10 == 0x5F7465672E726961 && v10[1] == 0x6D6F635F657A6973;
    v27 = v26 && v10[2] == 0x6675625F646E616DLL;
    v28 = v27 && *(v10 + 19) == 0x7265666675625F64;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v28)
    {
      goto LABEL_126;
    }

    if (v11 >= 0x25)
    {
      v29 = memcmp(v10, "air.set_pipeline_state_render_command", 0x25uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v29)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_57;
  }

LABEL_137:
  if (v4 != v63)
  {
    free(v4);
  }

  return 0;
}

void MTLICBIndirectionPass::replaceSetBufferWithStride(uint64_t a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  Context = llvm::Value::getContext(this);
  v6 = *(this - 4);
  if (!v6 || *(v6 + 16) || *(v6 + 24) != *(this + 9))
  {
    v6 = 0;
  }

  v19[0] = llvm::Value::getName(v6);
  v19[1] = v7;
  v8 = &v20;
  llvm::StringRef::str(v19, &v20);
  std::string::replace(&v20, 0, 3uLL, "mtl");
  size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  v10 = v20.__r_.__value_.__r.__words[0];
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v20.__r_.__value_.__l.__size_;
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  v11 = size - 4;
  if (size >= 4)
  {
    v13 = v8 + size;
    if (size >= 5)
    {
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      v14 = v10->__r_.__value_.__r.__words + 4;
      do
      {
        v15 = memchr(v14, 46, v11);
        if (!v15)
        {
          break;
        }

        if (*v15 == 46)
        {
          goto LABEL_17;
        }

        v14 = v15 + 1;
        v11 = v13 - v14;
      }

      while (v13 - v14 > 0);
    }

    v15 = v13;
LABEL_17:
    if (v15 == v13)
    {
      v12 = -1;
    }

    else
    {
      v12 = v15 - v8;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::erase(&v20, v12, 0xFFFFFFFFFFFFFFFFLL);
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v19[0] = llvm::Type::getVoidTy(Context, v16);
    v18 = llvm::PointerType::get();
    Function = getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(Module, &v20, v19, &v18, (a1 + 80), (a1 + 72), (a1 + 72), (a1 + 80));
    llvm::Function::addFnAttr();
    llvm::GlobalValue::setLinkage(Function, 0);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v6 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_2579E13B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceSetBuffer(uint64_t a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  Context = llvm::Value::getContext(this);
  v6 = *(this - 4);
  if (!v6 || *(v6 + 16) || *(v6 + 24) != *(this + 9))
  {
    v6 = 0;
  }

  v19[0] = llvm::Value::getName(v6);
  v19[1] = v7;
  v8 = &v20;
  llvm::StringRef::str(v19, &v20);
  std::string::replace(&v20, 0, 3uLL, "mtl");
  size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  v10 = v20.__r_.__value_.__r.__words[0];
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v20.__r_.__value_.__l.__size_;
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  v11 = size - 4;
  if (size >= 4)
  {
    v13 = v8 + size;
    if (size >= 5)
    {
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      v14 = v10->__r_.__value_.__r.__words + 4;
      do
      {
        v15 = memchr(v14, 46, v11);
        if (!v15)
        {
          break;
        }

        if (*v15 == 46)
        {
          goto LABEL_17;
        }

        v14 = v15 + 1;
        v11 = v13 - v14;
      }

      while (v13 - v14 > 0);
    }

    v15 = v13;
LABEL_17:
    if (v15 == v13)
    {
      v12 = -1;
    }

    else
    {
      v12 = v15 - v8;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::erase(&v20, v12, 0xFFFFFFFFFFFFFFFFLL);
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v19[0] = llvm::Type::getVoidTy(Context, v16);
    v18 = llvm::PointerType::get();
    Function = getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(Module, &v20, v19, &v18, (a1 + 80), (a1 + 72), (a1 + 80));
    llvm::Function::addFnAttr();
    llvm::GlobalValue::setLinkage(Function, 0);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v6 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_2579E15D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceDrawIndexedPatches(uint64_t a1, llvm::Instruction *this)
{
  v14[6] = *MEMORY[0x277D85DE8];
  Module = llvm::Instruction::getModule(this);
  v5 = *(this - 4);
  if (!v5 || *(v5 + 16) || (v6 = *(v5 + 24), v6 != *(this + 9)))
  {
    v5 = 0;
    v6 = MEMORY[0x18];
  }

  v13[0] = llvm::Value::getName(v5);
  v13[1] = v7;
  llvm::StringRef::str(v13, &v12);
  std::string::replace(&v12, 0, 3uLL, "mtl");
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::SmallVector<llvm::Type *,6u>::SmallVector<llvm::Type * const*,void>(v13, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    *v13[0] = llvm::PointerType::get();
    *(v13[0] + 6) = *(a1 + 72);
    v9 = llvm::FunctionType::get();
    v11 = 260;
    v10 = &v12;
    Function = llvm::Function::Create(v9, 0, &v10, Module);
    *(Function + 112) = *(v5 + 112);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v5 + 18) & 0x3FF0;
    if (v13[0] != v14)
    {
      free(v13[0]);
    }
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2579E17C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  if (a21 != &a23)
  {
    free(a21);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceICB(int a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  v5 = *(this - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(this + 9))
  {
    v5 = 0;
  }

  v9[0] = llvm::Value::getName(v5);
  v9[1] = v6;
  llvm::StringRef::str(v9, &v11);
  std::string::replace(&v11, 0, 3uLL, "mtl");
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v8 = *(v5 + 24);
    v10 = 260;
    v9[0] = &v11;
    Function = llvm::Function::Create(v8, 0, v9, Module);
    *(Function + 112) = *(v5 + 112);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v5 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2579E1944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *(a2 + 23);
  v9 = a2[1];
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (v8 < 0)
  {
    v8 = v9;
  }

  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, a2, v8, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v10;
  if (*(v10 + 16) == 5)
  {
    return *(v10 - 32 * (*(v10 + 20) & 0x7FFFFFF));
  }

  return result;
}

void MTLICBIndirectionPass::replaceFunctionCall(int a1, llvm::CallBase *this, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 24);
  v15[0] = this - 32 * (*(this + 5) & 0x7FFFFFF);
  v15[1] = llvm::CallBase::arg_end(this);
  llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *>(&v17, v15);
  if (v18)
  {
    v6 = 0;
    do
    {
      v7 = v17;
      v8 = *(v17 + v6);
      v9 = *(*(v5 + 16) + 8 * v6 + 8);
      if (*v8 != v9)
      {
        if (*(*v8 + 8) == 15 || *(v9 + 8) == 15)
        {
          v16 = 257;
          PointerCast = llvm::CastInst::CreatePointerCast();
          llvm::Instruction::insertBefore(PointerCast, this);
        }

        else
        {
          PointerCast = llvm::UndefValue::get();
        }

        v7[v6] = PointerCast;
      }

      v11 = v18;
      ++v6;
    }

    while (v18 > v6);
    if (!a3)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a3 + 24);
LABEL_14:
  v16 = 257;
  v13 = llvm::CallInst::Create(v12, a3, v17, v11, v15, 0);
  llvm::ReplaceInstWithInst(this, v13, v14);
  if (v17 != v19)
  {
    free(v17);
  }
}

void sub_2579E1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  if (a14 != &a16)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v12[0] = a6;
  v12[1] = a7;
  v12[2] = a8;
  v12[3] = a9;
  v12[4] = a10;
  llvm::SmallVector<llvm::Type *,5u>::SmallVector(&v13, v12, 5);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v13 != v14)
  {
    free(v13);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,5u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x500000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579E1CF8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *>(void *a1, char **a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579E1D5C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::CallInst::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = llvm::User::operator new(0x50);
  llvm::Instruction::Instruction();
  *(v6 + 64) = 0;
  llvm::CallInst::init();
  return v6;
}

void sub_2579E1E24(_Unwind_Exception *a1)
{
  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *(a2 + 23);
  v8 = a2[1];
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (v7 < 0)
  {
    v7 = v8;
  }

  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, a2, v7, 0, *a3, *a4, *a5, *a6, *a7);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11[0] = a6;
  v11[1] = a7;
  v11[2] = a8;
  v11[3] = a9;
  llvm::SmallVector<llvm::Type *,4u>::SmallVector(&v12, v11, 4);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v12 != v13)
  {
    free(v12);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,4u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579E201C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVector<llvm::Type *,6u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_2579E2078(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMetadata(llvm::IntegerType **a1, uint64_t a2)
{
  v3 = llvm::TypeSize::operator unsigned long long();

  return MTLMDBuilder::getMetadata<unsigned long long>(a1, v3, v4);
}

void MTLBoundsCheck::SharedPassData::skipIndirectionDeep(MTLBoundsCheck::SharedPassData *this, llvm::Value *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v18 = v20;
  v19 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v18, &v13);
  for (i = v19; v19; i = v19)
  {
    v4 = *(v18 + i - 1);
    LODWORD(v19) = i - 1;
    v12 = v4;
    v14 = 0;
    v15 = v4;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(this + 26, &v15, &v14) & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v12, &v15);
      v5 = v12;
      v6 = *(v12 + 16);
      if (v12 && v6 >= 0x1C)
      {
        v15 = **(this + 29);
        v16 = &v18;
        v17 = 0;
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        if (v16 != &v18)
        {
          free(v16);
        }

        v5 = v12;
        v6 = *(v12 + 16);
      }

      if (v6 < 0x1C)
      {
        if (v6 != 3)
        {
          if (v6 != 5)
          {
            continue;
          }

          v7 = *(v5 + 18);
          v8 = v7 > 0x31;
          v9 = (1 << v7) & 0x3800500000000;
          if (v8 || v9 == 0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v11 = v6 - 60;
      if (v11 <= 0x11)
      {
        if (((1 << v11) & 0x38005) == 0)
        {
          if (v11 == 1)
          {
            v15 = *(v5 - 32);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v18, &v15);
          }

          continue;
        }

LABEL_19:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v18, v18 + 8 * v19, *(v5 + 8), 0);
      }
    }
  }

  if (v18 != v20)
  {
    free(v18);
  }
}

void sub_2579E2348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

const llvm::Twine *MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(MTLBoundsCheck::SharedPassData *this)
{
  v15 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v9 = **(this + 29);
    v10 = &v12;
    v11 = 0;
    llvm::Type::getInt64Ty(v9, v2);
    v4 = llvm::FunctionType::get();
    v13[0] = "mtl.get_image_id";
    v14 = 259;
    v5 = llvm::Function::Create(v4, 7uLL, v13, *(this + 29));
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v6 = **(this + 29);
    v14 = 257;
    llvm::BasicBlock::Create(v6, v13, v5, 0, v7);
  }

  return Function;
}

void sub_2579E2788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v27[5] = v27[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v27);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a27);
  if (a19 != v28)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::GlobalValue::setVisibility(uint64_t this, char a2)
{
  v2 = this;
  v3 = *(this + 32) & 0xF;
  v4 = *(this + 32) & 0xFFFFFFCF | (16 * (a2 & 3));
  *(this + 32) = v4;
  if ((v3 - 7) < 2)
  {
    goto LABEL_5;
  }

  if (16 * (a2 & 3))
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_5:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

uint64_t MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, llvm::LLVMContext *a4, llvm::LLVMContext *a5)
{
  llvm::MDString::get(*a1, a2, a3);
  llvm::ValueAsMetadata::get();
  llvm::MDString::get(*a1, a4, v8);
  llvm::MDString::get(*a1, a5, v9);
  return llvm::MDTuple::getImpl();
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(MTLBoundsCheck::SharedPassData *this)
{
  v9[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.draw_id_buffer", 18);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = **(this + 29);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x21u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.draw_id_buffer");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_2579E2B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getGVBaseType(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 > 20)
  {
    if (a3 > 22)
    {
      if (a3 != 26)
      {
        if (a3 != 23)
        {
          goto LABEL_40;
        }

        v8 = *a2 == 0x747865742E6C746DLL && a2[1] == 0x676173755F657275;
        if (!v8 || *(a2 + 15) != 0x656C6261745F6567)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      v7 = "mtl.global_constants_table";
    }

    else
    {
      if (a3 == 21)
      {
        if (!memcmp(a2, "mtl.threadgroup_table", 0x15uLL))
        {
          llvm::Type::getInt32Ty(**(a1 + 232), v12);
          return llvm::StructType::get();
        }

        goto LABEL_40;
      }

      v7 = "mtl.buffer_usage_table";
    }
  }

  else
  {
    if (a3 <= 17)
    {
      if (a3 != 16)
      {
        if (a3 == 17 && !memcmp(a2, "mtl.binding_table", 0x11uLL))
        {
          Int64Ty = llvm::Type::getInt64Ty(**(a1 + 232), v4);

          return llvm::ArrayType::get(Int64Ty, 0x1F);
        }

        goto LABEL_40;
      }

      if (!memcmp(a2, "mtl.check_buffer", 0x10uLL))
      {
        v11 = **(a1 + 232);
        if ((*(*(a1 + 72) + 21) & 0x20) != 0)
        {

          return llvm::Type::getInt32Ty(v11, v10);
        }

        goto LABEL_35;
      }

      goto LABEL_40;
    }

    if (a3 == 18)
    {
      if (!memcmp(a2, "mtl.draw_id_buffer", 0x12uLL))
      {
        v11 = **(a1 + 232);
LABEL_35:

        return llvm::Type::getInt64Ty(v11, v10);
      }

LABEL_40:
      llvm::IntegerType::get();
      llvm::IntegerType::get();
      llvm::PointerType::get();
      return llvm::StructType::get();
    }

    if (a3 != 20)
    {
      goto LABEL_40;
    }

    v7 = "mtl.threadgroup_base";
  }

  if (memcmp(a2, v7, a3))
  {
    goto LABEL_40;
  }

LABEL_42:
  v13 = **(a1 + 232);

  return llvm::Type::getInt8Ty(v13, a2);
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v9[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.buffer_usage_table", 22);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = **(this + 29);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x23u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.buffer_usage_table");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_2579E2FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, unsigned int a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11, llvm::LLVMContext *a12)
{
  v12 = a8;
  v15 = a5;
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v19);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a4, v20);
  MTLMDBuilder::getMetadata<int>(a1, v15, v21);
  llvm::MDString::get(*a1, a6, v22);
  llvm::MDString::get(*a1, a7, v23);
  MTLMDBuilder::getMetadata<int>(a1, v12, v24);
  llvm::MDString::get(*a1, a9, v25);
  llvm::MDString::get(*a1, a10, v26);
  llvm::MDString::get(*a1, a11, v27);
  llvm::MDString::get(*a1, a12, v28);
  return llvm::MDTuple::getImpl();
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v9[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.texture_usage_table", 23);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = **(this + 29);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x24u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.texture_usage_table");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_2579E3358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v20 = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v3 = *(this + 29);
    v13 = *v3;
    v14 = v16;
    v15 = 0;
    DataLayout = llvm::Module::getDataLayout(v3);
    llvm::DataLayout::DataLayout(v19, DataLayout);
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.global_constants_table", 26);
    v6 = llvm::PointerType::get();
    if ((*(*(this + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(*(this + 29), v5))
    {
      GlobalVariable = llvm::User::operator new(0x58);
      llvm::UndefValue::get();
      v17[0] = "mtl.global_constants_table";
      v18 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setAlignment();
      llvm::GlobalValue::setVisibility(GlobalVariable, 1);
      llvm::Module::getOrInsertNamedMetadata();
      MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(&v13, "air.externally_initialized", GlobalVariable, "device uint64_t *", "mtl.global_constants_table");
      llvm::NamedMDNode::addOperand();
    }

    else
    {
      GlobalVariable = llvm::Module::getOrInsertGlobal();
      llvm::UndefValue::get();
      llvm::GlobalVariable::setInitializer();
      llvm::GlobalObject::setAlignment();
      *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(v19, v6);
      v9 = v8;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(v19, v6);
      v17[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v13, "air.buffer", "air.location_index", 0x2Au, 1, "air.read", "air.address_space", 2, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v9 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.global_constants_table");
      v17[1] = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
    }

    v12 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v12, v17);
    MEMORY[0x259C6A2B0](v19);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  return GlobalVariable;
}

void sub_2579E36AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  v27[5] = v27[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v27);
  MEMORY[0x259C6A2B0](va);
  if (a20 != v28)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, unsigned int a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, llvm::IntegerType *a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
{
  v17 = a8;
  v20 = a5;
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v24);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a4, v25);
  MTLMDBuilder::getMetadata<int>(a1, v20, v26);
  llvm::MDString::get(*a1, a6, v27);
  llvm::MDString::get(*a1, a7, v28);
  MTLMDBuilder::getMetadata<int>(a1, v17, v29);
  llvm::MDString::get(*a1, a9, v30);
  v31 = llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1, v31, v32);
  llvm::MDString::get(*a1, a12, v33);
  MTLMDBuilder::getMetadata<unsigned long long>(a1, a13, v34);
  llvm::MDString::get(*a1, a14, v35);
  llvm::MDString::get(*a1, a15, v36);
  llvm::MDString::get(*a1, a16, v37);
  llvm::MDString::get(*a1, a17, v38);
  return llvm::MDTuple::getImpl();
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(llvm::Module **this)
{
  v19 = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v3 = llvm::IntegerType::get();
    DataLayout = llvm::Module::getDataLayout(this[29]);
    llvm::DataLayout::DataLayout(v18, DataLayout);
    v6 = this[29];
    v13 = *v6;
    v14 = v16;
    v15 = 0;
    if ((*(this[9] + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(v6, v5))
    {
      GlobalVariable = llvm::User::operator new(0x58);
      llvm::Constant::getNullValue(v3, v7);
      v16[0] = "mtl.global_constants_handle";
      v17 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setAlignment();
      llvm::GlobalValue::setVisibility(GlobalVariable, 1);
      llvm::Module::getOrInsertNamedMetadata();
      MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(&v13, "air.externally_initialized", GlobalVariable, "uint64_t", "mtl.global_constants_handle");
      llvm::NamedMDNode::addOperand();
    }

    else
    {
      GlobalVariable = llvm::Module::getOrInsertGlobal();
      llvm::UndefValue::get();
      llvm::GlobalVariable::setInitializer();
      llvm::GlobalObject::setAlignment();
      *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(v18, v3);
      v10 = v9;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(v18, v3);
      v16[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v13, "air.buffer", "air.location_index", 0x2Au, 1, "air.read", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v10 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "long", "air.arg_name", "debug.global_constants_table");
      v16[1] = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
    }

    if (v14 != v16)
    {
      free(v14);
    }

    MEMORY[0x259C6A2B0](v18);
  }

  return GlobalVariable;
}

void sub_2579E3BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  v25[5] = v25[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v25);
  if (a19 != v26)
  {
    free(a19);
  }

  MEMORY[0x259C6A2B0](va);
  _Unwind_Resume(a1);
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v17[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.device_indirection_table", 28);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v13 = **(this + 29);
    v14 = v16;
    v15 = 0;
    v12 = MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v13, 0, "air.buffer", "air.location_index", 0, 1, "air.read_write", "air.address_space", 1, "air.arg_type_name", "void", "air.arg_name", "debug.ptr");
    v11 = 0;
    v7 = **(this + 29);
    v8 = v10;
    v9 = 0;
    LODWORD(v17[0]) = 8;
    LODWORD(v6) = 0;
    MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(&v7, &v11, v17, &v6, "void", "debug.ptr", "air.indirect_argument", &v12);
    v11 += 8;
    v6 = MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,char const*,char const*,char const*>(&v13, 1, "air.indirect_constant", "air.location_index", 1, 1, "air.read", "air.arg_type_name", "int", "air.arg_name", "debug.length");
    LODWORD(v17[0]) = v11 + 4;
    LODWORD(v5) = 0;
    MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(&v7, &v11, v17, &v5, "int", "debug.length", "air.indirect_argument", &v6);
    v11 += 4;
    Impl = llvm::MDTuple::getImpl();
    v17[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,unsigned int,char const*,int,char const*,char const*,char const*,char const*>(&v13, "air.indirect_buffer", "air.location_index", 0x33u, 1, "air.read", "air.address_space", 2, "air.struct_type_info", Impl, "air.arg_type_size", v11, "air.arg_type_align_size", 8, "air.arg_type_name", "int", "air.arg_name", "debug.device_indirection_table");
    v17[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v5 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v5, v17);
    if (v8 != v10)
    {
      free(v8);
    }

    if (v14 != v16)
    {
      free(v14);
    }
  }

  return GlobalVariable;
}

void sub_2579E3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != v24)
  {
    free(a23);
  }

  v27 = *(v25 - 120);
  if (v27 != v23)
  {
    free(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, int a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11, llvm::LLVMContext *a12, llvm::LLVMContext *a13)
{
  v15 = a6;
  v16 = a5;
  MTLMDBuilder::getMetadata<int>(a1, a2, a3);
  llvm::MDString::get(*a1, a3, v20);
  llvm::MDString::get(*a1, a4, v21);
  MTLMDBuilder::getMetadata<int>(a1, v16, v22);
  MTLMDBuilder::getMetadata<int>(a1, v15, v23);
  llvm::MDString::get(*a1, a7, v24);
  llvm::MDString::get(*a1, a8, v25);
  MTLMDBuilder::getMetadata<int>(a1, a9, v26);
  llvm::MDString::get(*a1, a10, v27);
  llvm::MDString::get(*a1, a11, v28);
  llvm::MDString::get(*a1, a12, v29);
  llvm::MDString::get(*a1, a13, v30);
  return llvm::MDTuple::getImpl();
}

unsigned int *MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, llvm::LLVMContext *a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t *a8)
{
  v24 = *MEMORY[0x277D85DE8];
  v23[0] = MTLMDBuilder::getMetadata<unsigned int>(a1, *a2, a3);
  v23[1] = MTLMDBuilder::getMetadata<unsigned int>(a1, *a3, v15);
  v23[2] = MTLMDBuilder::getMetadata<int>(a1, *a4, v16);
  v23[3] = llvm::MDString::get(*a1, a5, v17);
  v23[4] = llvm::MDString::get(*a1, a6, v18);
  v20 = llvm::MDString::get(*a1, a7, v19);
  v21 = *a8;
  v23[5] = v20;
  v23[6] = v21;
  return llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>((a1 + 8), v23, &v24);
}

uint64_t MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,char const*,char const*,char const*>(llvm::MDString **a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, llvm::LLVMContext *a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11)
{
  v13 = a6;
  v14 = a5;
  MTLMDBuilder::getMetadata<int>(a1, a2, a3);
  llvm::MDString::get(*a1, a3, v18);
  llvm::MDString::get(*a1, a4, v19);
  MTLMDBuilder::getMetadata<int>(a1, v14, v20);
  MTLMDBuilder::getMetadata<int>(a1, v13, v21);
  llvm::MDString::get(*a1, a7, v22);
  llvm::MDString::get(*a1, a8, v23);
  llvm::MDString::get(*a1, a9, v24);
  llvm::MDString::get(*a1, a10, v25);
  llvm::MDString::get(*a1, a11, v26);
  return llvm::MDTuple::getImpl();
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,unsigned int,char const*,int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, unsigned int a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, llvm::LLVMContext *a11, unsigned int a12, llvm::LLVMContext *a13, int a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v18 = a8;
  v21 = a5;
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v25);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a4, v26);
  MTLMDBuilder::getMetadata<int>(a1, v21, v27);
  llvm::MDString::get(*a1, a6, v28);
  llvm::MDString::get(*a1, a7, v29);
  MTLMDBuilder::getMetadata<int>(a1, v18, v30);
  llvm::MDString::get(*a1, a9, v31);
  llvm::MDString::get(*a1, a11, v32);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a12, v33);
  llvm::MDString::get(*a1, a13, v34);
  MTLMDBuilder::getMetadata<int>(a1, a14, v35);
  llvm::MDString::get(*a1, a15, v36);
  llvm::MDString::get(*a1, a16, v37);
  llvm::MDString::get(*a1, a17, v38);
  llvm::MDString::get(*a1, a18, v39);
  return llvm::MDTuple::getImpl();
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(llvm::Type ***this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(*this[29], v2);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v5, v6);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(MTLBoundsCheck::SharedPassData *this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.binding_table", 17);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v4, v5);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(llvm::Type ***this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt32Ty(*this[29], v2);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v5, v6);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(llvm::Type ***this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt8PtrTy(*this[29], 0);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v4, v5);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(llvm::Type ***this)
{
  v17[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(*this[29], v2);
    v4 = llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = this[29];
    v13 = *v5;
    v14 = v16;
    v15 = 0;
    DataLayout = llvm::Module::getDataLayout(v5);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v4);
    v9 = v8;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v4);
    v17[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v13, "air.buffer", "air.location_index", 0x20u, 1, "air.read_write", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v9 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.report_buffer");
    v17[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v12 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v12, v17);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  return GlobalVariable;
}

void sub_2579E4B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(MTLBoundsCheck::SharedPassData *this)
{
  v16[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.check_buffer", 16);
    v3 = llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v4 = *(this + 29);
    v12 = *v4;
    v13 = v15;
    v14 = 0;
    DataLayout = llvm::Module::getDataLayout(v4);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v3);
    v8 = v7;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v3);
    v16[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,unsigned int,char const*,char const*,char const*,char const*>(&v12, "air.buffer", "air.location_index", 0x1Fu, 1, "air.read", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v8 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.buffer_size", 0x1F0u, "air.arg_type_name", "int", "air.arg_name", "debug.data_buffer");
    v16[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v11 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v11, v16);
    if (v13 != v15)
    {
      free(v13);
    }
  }

  return GlobalVariable;
}

void sub_2579E4D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,unsigned int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, unsigned int a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, llvm::IntegerType *a13, llvm::LLVMContext *a14, unsigned int a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18, llvm::LLVMContext *a19)
{
  v19 = a8;
  v22 = a5;
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v26);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a4, v27);
  MTLMDBuilder::getMetadata<int>(a1, v22, v28);
  llvm::MDString::get(*a1, a6, v29);
  llvm::MDString::get(*a1, a7, v30);
  MTLMDBuilder::getMetadata<int>(a1, v19, v31);
  llvm::MDString::get(*a1, a9, v32);
  v33 = llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1, v33, v34);
  llvm::MDString::get(*a1, a12, v35);
  MTLMDBuilder::getMetadata<unsigned long long>(a1, a13, v36);
  llvm::MDString::get(*a1, a14, v37);
  MTLMDBuilder::getMetadata<unsigned int>(a1, a15, v38);
  llvm::MDString::get(*a1, a16, v39);
  llvm::MDString::get(*a1, a17, v40);
  llvm::MDString::get(*a1, a18, v41);
  llvm::MDString::get(*a1, a19, v42);
  return llvm::MDTuple::getImpl();
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(llvm::Module **this)
{
  v15[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_table", 21);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(this[29]);
    v11 = *this[29];
    v12 = v14;
    v13 = 0;
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, GVBaseType);
    v7 = v6;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, GVBaseType);
    v15[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v11, "air.buffer", "air.location_index", 0x22u, 1, "air.read", "air.address_space", 2, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v7 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.threadgroup_table");
    v15[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v10 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v10, v15);
    if (v12 != v14)
    {
      free(v12);
    }
  }

  return GlobalVariable;
}

void sub_2579E51F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(llvm::Module **this)
{
  v15[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_base", 20);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(this[29]);
    v11 = *this[29];
    v12 = v14;
    v13 = 0;
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, GVBaseType);
    v7 = v6;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, GVBaseType);
    v15[0] = MTLMDBuilder::getMDTuple<char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v11, "air.buffer", "air.location_index", 0, 1, "air.read_write", "air.address_space", 3, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v7 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.threadgroup_base");
    v15[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v10 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 26), &v10, v15);
    if (v12 != v14)
    {
      free(v12);
    }
  }

  return GlobalVariable;
}

void sub_2579E5454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, llvm::IntegerType *a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
{
  v17 = a8;
  v20 = a5;
  v21 = a4;
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v24);
  MTLMDBuilder::getMetadata<int>(a1, v21, v25);
  MTLMDBuilder::getMetadata<int>(a1, v20, v26);
  llvm::MDString::get(*a1, a6, v27);
  llvm::MDString::get(*a1, a7, v28);
  MTLMDBuilder::getMetadata<int>(a1, v17, v29);
  llvm::MDString::get(*a1, a9, v30);
  v31 = llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1, v31, v32);
  llvm::MDString::get(*a1, a12, v33);
  MTLMDBuilder::getMetadata<unsigned long long>(a1, a13, v34);
  llvm::MDString::get(*a1, a14, v35);
  llvm::MDString::get(*a1, a15, v36);
  llvm::MDString::get(*a1, a16, v37);
  llvm::MDString::get(*a1, a17, v38);
  return llvm::MDTuple::getImpl();
}

uint64_t MTLBoundsCheck::SharedPassData::runOnModule(MTLBoundsCheck::SharedPassData *this, llvm::Module *a2)
{
  *(this + 29) = a2;
  MTLBoundsCheck::SharedPassData::clear(this);
  v7 = "asan_data";
  v8 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &v7);
  if (NamedMetadata)
  {
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    MTLBoundsCheck::SerializedData::fromMetaData(*(this + 8), Operand);
  }

  MTLBoundsCheck::SharedPassData::earlyFragmentTests(this);
  return 1;
}

llvm **MTLBoundsCheck::SharedPassData::clear(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 8);
  llvm::SmallVectorImpl<std::string>::clear(v2);
  *(v2 + 120) = 0;
  *(v2 + 392) = 0;
  *(v2 + 600) = 0;
  *(v2 + 616) = 0;
  *(v2 + 632) = 0u;
  *(v2 + 648) = 0;
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 60, v3, v4, v5);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 34);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 39);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 11);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 16);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(this + 168);

  return llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(this + 26, v6, v7, v8);
}

void MTLBoundsCheck::SharedPassData::earlyFragmentTests(MTLBoundsCheck::SharedPassData *this)
{
  v49 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 9) + 20) & 2) == 0)
  {
    return;
  }

  v2 = *(this + 5);
  if (!v2)
  {
    return;
  }

  if (*v2)
  {
    return;
  }

  MTLBoundsCheck::getMetalMetadata(&v43, *(this + 29));
  if (v43 != 1)
  {
    return;
  }

  v42 = v44;
  v3 = *(v44 - 8 * *(v44 + 8) + 8);
  v4 = *(v3 + 8);
  if (!v4)
  {
    v7 = 0;
LABEL_23:
    v13 = *(this + 29);
    v14 = v13 + 24;
    v15 = *(v13 + 32);
    if (v15 == v13 + 24)
    {
LABEL_97:
      if ((v7 & 1) == 0)
      {
        v39 = (v42 - 8 * *(v42 + 8));
        v40 = *(v39 + 2);
        v45 = *v39;
        v46 = v40;
        v47 = llvm::MDString::get();
        llvm::MDTuple::getImpl();
        v41 = *(this + 29);
        *&v45 = "air.fragment";
        v48 = 259;
        llvm::Module::getNamedMetadata(v41, &v45);
        llvm::NamedMDNode::setOperand();
      }

      return;
    }

LABEL_24:
    v16 = v15 - 56;
    if (!v15)
    {
      v16 = 0;
    }

    v17 = v16 + 72;
    v18 = *(v16 + 80);
    if (v18 == v16 + 72)
    {
      v20 = 0;
    }

    else
    {
      do
      {
        v19 = v18 - 24;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = *(v19 + 48);
        if (v20 != v19 + 40)
        {
          break;
        }

        v18 = *(v18 + 8);
      }

      while (v18 != v17);
    }

    while (1)
    {
      if (v18 == v17)
      {
        v15 = *(v15 + 8);
        if (v15 == v14)
        {
          goto LABEL_97;
        }

        goto LABEL_24;
      }

      v21 = v20 ? v20 - 24 : 0;
      v22 = *(v21 + 16);
      if (v22 != 61)
      {
        break;
      }

      v26 = *(v21 - 32);
LABEL_45:
      v27 = *v26;
      if (v27)
      {
        v28 = *(v27 + 8);
        if ((v28 & 0xFE) == 0x12)
        {
          v28 = *(**(v27 + 16) + 8);
        }

        if ((v28 & 0xFFFFFF00) == 0x100)
        {
          return;
        }
      }

LABEL_49:
      v20 = *(v20 + 8);
      v29 = v18 - 24;
      if (!v18)
      {
        v29 = 0;
      }

      while (v20 == v29 + 40)
      {
        v18 = *(v18 + 8);
        if (v18 == v17)
        {
          break;
        }

        v29 = v18 - 24;
        if (!v18)
        {
          v29 = 0;
        }

        v20 = *(v29 + 48);
      }
    }

    if (v22 != 84)
    {
      goto LABEL_49;
    }

    v23 = *(v21 - 32);
    if (!v23 || *(v23 + 16) || *(v23 + 24) != *(v21 + 72))
    {
      goto LABEL_49;
    }

    *&v45 = llvm::Value::getName(v23);
    *(&v45 + 1) = v24;
    if (llvm::compat::getNumArgOperands(v21))
    {
      v25 = *(**(v21 - 32 * (*(v21 + 20) & 0x7FFFFFF)) + 8) != 15;
    }

    else
    {
      v25 = 1;
    }

    v30 = *(&v45 + 1);
    if (*(&v45 + 1) >= 0xAuLL)
    {
      if (*v45 != 0x6D6F74612E726961 || *(v45 + 8) != 25449)
      {
LABEL_64:
        if (*v45 == 0x726F74732E726961 && *(v45 + 8) == 101)
        {
          v38 = (v21 - 32 * (*(v21 + 20) & 0x7FFFFFF) + 32);
LABEL_95:
          v26 = *v38;
          goto LABEL_45;
        }

        if (v30 < 0xB || (*v45 == 0x6D656D2E6D766C6CLL ? (v33 = *(v45 + 3) == 0x7970636D656D2E6DLL) : (v33 = 0), !v33 && (*v45 == 0x6D656D2E6D766C6CLL ? (v34 = *(v45 + 3) == 0x7465736D656D2E6DLL) : (v34 = 0), !v34)))
        {
          if (*v45 == 0x746972772E726961 && *(v45 + 8) == 101)
          {
            return;
          }

          if (v30 >= 0x14)
          {
            v36 = *v45 == 0x637369642E726961 && *(v45 + 8) == 0x676172665F647261;
            if (v36 && *(v45 + 16) == 1953391981)
            {
              return;
            }
          }

          goto LABEL_49;
        }

LABEL_94:
        v38 = (v21 - 32 * (*(v21 + 20) & 0x7FFFFFF));
        goto LABEL_95;
      }

      if (llvm::StringRef::find() == -1 && !v25)
      {
        goto LABEL_94;
      }

      v30 = *(&v45 + 1);
    }

    if (v30 < 9)
    {
      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = -8 * v4;
  do
  {
    String = llvm::MDString::getString(*(*(v3 + v8) - 8 * *(*(v3 + v8) + 8)));
    switch(v10)
    {
      case 15:
        v7 |= memcmp(String, "air.sample_mask", 0xFuLL) == 0;
        break;
      case 11:
        v6 |= memcmp(String, "air.stencil", 0xBuLL) == 0;
        break;
      case 9:
        v12 = *String == 0x747065642E726961 && String[8] == 104;
        v5 |= v12;
        break;
    }

    v8 += 8;
  }

  while (v8);
  if (((v5 | v6) & 1) == 0)
  {
    goto LABEL_23;
  }
}

void sub_2579E5C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForString(uint64_t a1, const void *a2, const void *a3)
{
  v9[0] = a2;
  v9[1] = a3;
  Key = llvm::StringMapImpl::FindKey();
  if (Key != -1 && Key != *(a1 + 248))
  {
    return *(*(*(a1 + 240) + 8 * Key) + 8);
  }

  v8 = *(*(a1 + 64) + 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>((a1 + 240), a2, a3, &v8);
  llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(*(a1 + 64), v9);
  return v8;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _DWORD *a4)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v11 = MEMORY[0x259C6A8D0](a3 + 17, 8);
  v12 = v11;
  v13 = v11 + 16;
  if (a3)
  {
    memcpy((v11 + 16), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  *(v12 + 8) = *a4;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDISubProgram(uint64_t a1, unsigned __int8 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((a1 + 312), &v24);
  if (!v3)
  {
    v4 = *&v24[-8 * *(v24 + 2) + 16];
    if (v4)
    {
      String = llvm::MDString::getString(v4);
      v7 = v6;
    }

    else
    {
      String = 0;
      v7 = 0;
    }

    HIDWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, String, v7);
    v8 = v24;
    if (*v24 == 15 || (v8 = *&v24[-8 * *(v24 + 2)]) != 0)
    {
      v9 = *&v8[-8 * *(v8 + 2)];
      if (v9)
      {
        v9 = llvm::MDString::getString(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = &unk_257A6F51A;
    }

    v27[4] = 261;
    v25 = v9;
    *&v26 = v10;
    if (llvm::sys::path::is_absolute())
    {
      v11 = v24;
      if (*v24 == 15 || (v11 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v12 = *&v11[-8 * *(v11 + 2)];
        if (v12)
        {
          v13 = llvm::MDString::getString(v12);
          v15 = v14;
        }

        else
        {
          v15 = 0;
          v13 = 0;
        }
      }

      else
      {
        v15 = 0;
        v13 = &unk_257A6F51A;
      }

      LODWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, v13, v15);
    }

    else
    {
      v25 = v27;
      v26 = xmmword_257A6DAC0;
      v16 = v24;
      v17 = *v24;
      v18 = v24;
      if (v17 == 15 || (v18 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v19 = *&v18[-8 * *(v18 + 2) + 8];
        if (v19)
        {
          llvm::MDString::getString(v19);
          v16 = v24;
          v17 = *v24;
        }

        if (v17 == 15)
        {
          goto LABEL_26;
        }
      }

      v16 = *&v16[-8 * *(v16 + 2)];
      if (v16)
      {
LABEL_26:
        v20 = *&v16[-8 * *(v16 + 2)];
        if (v20)
        {
          llvm::MDString::getString(v20);
        }
      }

      llvm::sys::path::append();
      LODWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, v25, v26);
      if (v25 != v27)
      {
        free(v25);
      }
    }

    v23 = *(v24 + 6);
    v25 = *(*(a1 + 64) + 392);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>((a1 + 312), &v24, &v24, &v25);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(*(a1 + 64) + 384, &v22);
  }

  return *(v3 + 6);
}

void sub_2579E6140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDILocation(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((a1 + 272), &v14);
  if (!v3)
  {
    Subprogram = llvm::DILocalScope::getSubprogram(*(v14 - 8 * *(v14 + 8)));
    v5 = MTLBoundsCheck::SharedPassData::indexForDISubProgram(a1, Subprogram);
    v6 = *(v14 + 8);
    v11 = __PAIR64__(*(v14 + 4), v5);
    v12 = *(v14 + 2);
    if (v6 == 2 && (v7 = *(v14 - 8)) != 0)
    {
      v8 = MTLBoundsCheck::SharedPassData::indexForDILocation(a1, v7);
    }

    else
    {
      v8 = -1;
    }

    v13 = v8;
    v10 = *(*(a1 + 64) + 120);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>((a1 + 272), &v14, &v14, &v10);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(*(a1 + 64) + 112, &v11);
  }

  return *(v3 + 6);
}

llvm::MDString *MTLBoundsCheck::SharedPassData::getNameOfParentFunction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    return &unk_257A6F51A;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return &unk_257A6F51A;
  }

  Subprogram = llvm::Function::getSubprogram(*(v2 + 56));
  if (!Subprogram)
  {
    return llvm::Value::getName(v3);
  }

  result = *(Subprogram - 8 * *(Subprogram + 8) + 16);
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForInstruction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  if ((*(*(this + 8) + 650) & 1) == 0 && (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && (v4 = llvm::Instruction::getMetadataImpl()) != 0)
  {

    return MTLBoundsCheck::SharedPassData::indexForDILocation(this, v4);
  }

  else if ((*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl() && (MetadataImpl = llvm::Instruction::getMetadataImpl(), (v7 = *(MetadataImpl - 8 * *(MetadataImpl + 8))) != 0))
  {
    v8 = *(v7 + 128);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    return *v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void MTLBoundsCheck::SharedPassData::expandConstantExprUsers(MTLBoundsCheck::SharedPassData *this, llvm::GlobalVariable *a2)
{
  v55[4] = *MEMORY[0x277D85DE8];
  llvm::Constant::removeDeadConstantUsers(a2);
  v42 = v46;
  v43 = v46;
  v44 = 8;
  v45 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v50, *(a2 + 1), 0);
  while (v51)
  {
    v3 = *(v50 + --v51);
    v6 = v3[16];
    if (v3)
    {
      v7 = v6 >= 0x1C;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::SmallPtrSetImpl<llvm::Instruction *>::insert(&v42, v3, &v53);
    }

    else
    {
      if (v6 == 5)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      v49 = v8;
      if (v8)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v40, &v49, &v53);
        llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v50, *(v49 + 1), 0);
      }
    }
  }

  if (v43 == v42)
  {
    v9 = (&v44 + 4);
  }

  else
  {
    v9 = &v44;
  }

  v10 = *v9;
  if (v10)
  {
    v11 = 8 * v10;
    v12 = v43;
    while (*v12 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
    v12 = v43;
  }

  v13 = &v43[v10];
  while (v12 != v13)
  {
    v47 = *v12;
    llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(&v53, 1, &v47);
    v14 = v54;
    do
    {
      v15 = v53[--v14];
      v54 = v14;
      v16 = *(v15 + 20) & 0x7FFFFFF;
      if (v16)
      {
        v17 = 0;
        v18 = 8 * v16;
        v19 = 8;
        do
        {
          v20 = *(v15 + 20);
          if ((v20 & 0x40000000) != 0)
          {
            v21 = *(v15 - 8);
          }

          else
          {
            v21 = v15 - 32 * (v20 & 0x7FFFFFF);
          }

          v22 = *(v21 + v19 - 8);
          if (v22)
          {
            v23 = *(v22 + 16) == 5;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            v48 = 0;
            v49 = v22;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(v40, &v49, &v48))
            {
              v24 = v15;
              if (*(v15 + 16) == 83)
              {
                v25 = *(v15 + 20);
                if ((v25 & 0x40000000) != 0)
                {
                  v26 = *(v15 - 8);
                }

                else
                {
                  v26 = v15 - 32 * (v25 & 0x7FFFFFF);
                }

                v27 = *(v26 + 32 * *(v15 + 60) + v17);
                v28 = *(v27 + 40);
                if (v28 == v27 + 40)
                {
                  v24 = 0;
                }

                else
                {
                  v29 = (v28 - 24);
                  if (v28)
                  {
                    v30 = v28 - 24;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (*(v30 + 16) - 29 >= 0xB)
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = v29;
                  }
                }
              }

              AsInstruction = llvm::ConstantExpr::getAsInstruction(v22, 0);
              llvm::Instruction::insertBefore(AsInstruction, v24);
              v32 = *(v15 + 20);
              if ((v32 & 0x40000000) != 0)
              {
                v33 = *(v15 - 8);
              }

              else
              {
                v33 = v15 - 32 * (v32 & 0x7FFFFFF);
              }

              v34 = (v33 + v19);
              v35 = (v33 + v19 - 8);
              if (*v35)
              {
                v36 = *v34;
                *v34[1] = *v34;
                if (v36)
                {
                  *(v36 + 16) = v34[1];
                }
              }

              *v35 = AsInstruction;
              if (AsInstruction)
              {
                v37 = AsInstruction + 1;
                v38 = AsInstruction[1];
                v39 = (v33 + v19);
                *v39 = v38;
                if (v38)
                {
                  *(v38 + 16) = v39;
                }

                v39[1] = v37;
                *v37 = v35;
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v53, AsInstruction);
              if (!*(v22 + 8))
              {
                llvm::Constant::destroyConstant(v22);
              }
            }
          }

          v17 += 8;
          v19 += 32;
        }

        while (v18 != v17);
        v14 = v54;
      }
    }

    while (v14);
    if (v53 != v55)
    {
      free(v53);
    }

    do
    {
      ++v12;
    }

    while (v12 != v13 && *v12 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_67:
  if (v50 != &v52)
  {
    free(v50);
  }

  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(v40, v3, v4, v5);
  if (v43 != v42)
  {
    free(v43);
  }
}

void sub_2579E6738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(&a9, a2, a3, a4);
  if (a13 != a12)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

void *llvm::SmallPtrSetImpl<llvm::Instruction *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = *(a1 + 1);
  v8 = 16;
  if (v7 == *a1)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a1 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v6;
  return result;
}

unsigned int *llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(unsigned int *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result[3])
  {
    v4 = result;
    v5 = result[2];
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
          result = llvm::deallocate_buffer(result, (*result + 17));
        }

        *(v8 + v6) = 0;
        v6 += 8;
      }

      while (v7 != v6);
    }

    v4[3] = 0;
    v4[4] = 0;
  }

  return result;
}

uint64_t MakeMDResolver<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC3D8;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<BOOL>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC420;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<llvm::Value *>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC468;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

llvm::MDString *getStaticBoundsInfo@<X0>(llvm::MDString *result@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = a2 + 8;
  *(a2 + 12) = 0;
  v4 = a2 + 12;
  *(a2 + 16) = 0;
  *(a2 + 20) = 256;
  v5 = a2 + 20;
  *(a2 + 22) = 0;
  v6 = a2 + 22;
  v7 = *(result + 2);
  if (v7)
  {
    v8 = result;
    for (i = 0; i < v7; ++i)
    {
      result = *(v8 + i - v7);
      if (!*result)
      {
        v25[0] = llvm::MDString::getString(result);
        v25[1] = v10;
        memset(v26, 0, sizeof(v26));
        v27 = 0;
        v24[0] = &off_2868EC4B0;
        v24[1] = v4;
        v24[3] = v24;
        v11 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v25, "location_index", 14, v24);
        v23[0] = &unk_2868EC420;
        v23[1] = v5;
        v23[3] = v23;
        v12 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v11, "is_safe", 7, v23);
        v22[0] = &unk_2868EC3D8;
        v22[1] = v3;
        v22[3] = v22;
        v13 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v12, "deref", 5, v22);
        v21[0] = &unk_2868EC468;
        v21[1] = a2;
        v21[3] = v21;
        v14 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v13, "base_pointer", 12, v21);
        v20[0] = &unk_2868EC420;
        v20[1] = a2 + 21;
        v20[3] = v20;
        v15 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v14, "allowGEPFold", 12, v20);
        v19[0] = &unk_2868EC420;
        v19[1] = v6;
        v19[3] = v19;
        v16 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v15, "isArgumentBuffer", 16, v19);
        v18[0] = &unk_2868EC4F8;
        v18[3] = v18;
        if (*(v16 + 48))
        {
          v17 = (v16 + 16);
        }

        else
        {
          v17 = v18;
        }

        std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](v28, v17);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v18);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v19);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v20);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v21);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v22);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v23);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v24);
        if (v27 == 1)
        {
          std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v26);
        }

        std::function<void ()(llvm::Metadata *)>::operator()(v28, *(v8 + ++i - *(v8 + 2)));
        result = std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v28);
        v7 = *(v8 + 2);
      }
    }
  }

  return result;
}

void sub_2579E6BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](&a30);
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](va);
  if (*(v34 - 136) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v33 + 16);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (v6 == a3 && (!v6 || !memcmp(*a1, a2, v6)))
    {
      llvm::optional_detail::OptionalStorage<std::function<void ()(llvm::Metadata *)>,false>::operator=(a1 + 16, a4);
    }
  }

  return a1;
}

uint64_t std::function<void ()(llvm::Metadata *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

BOOL isSpecialStructType(llvm::StructType *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  Name = llvm::StructType::getName(a1);
  v3 = Name;
  v4 = v2;
  if (v2 >= 0x10)
  {
    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F65727574786574)
    {
      return 1;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F72656C706D6173)
    {
      return 1;
    }
  }

  else if (v2 < 0xE)
  {
    return 0;
  }

  if (*Name != 0x5F2E746375727473 || *(Name + 6) != 0x5F68747065645F2ELL)
  {
    if (v2 >= 0x18)
    {
      if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F646E616D6D6F63 && *(Name + 16) == 0x745F726566667562)
      {
        return 1;
      }

      if (v2 >= 0x1F)
      {
        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x705F7265646E6572 && *(Name + 16) == 0x5F656E696C657069 && *(Name + 23) == 0x745F65746174735FLL)
        {
          return 1;
        }

        if (v2 == 31)
        {
          if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
          {
            return 1;
          }

          v18 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v19 = v18 && *(Name + 16) == 0x6575715F6E6F6974;
          if (v19 && *(Name + 24) == 1952414066)
          {
            return 1;
          }

          goto LABEL_113;
        }

        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F657475706D6F63 && *(Name + 16) == 0x656E696C65706970 && *(Name + 24) == 0x745F65746174735FLL)
        {
          return 1;
        }

        v28 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F656C6269736976;
        v29 = v28 && *(Name + 16) == 0x6E6F6974636E7566;
        if (v29 && *(Name + 24) == 0x745F656C6261745FLL)
        {
          return 1;
        }
      }
    }

    else if (v2 < 0x15)
    {
      if (v2 < 0xF)
      {
        return 0;
      }

      goto LABEL_123;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
    {
      return 1;
    }

    if (v2 >= 0x25)
    {
      if (!memcmp(Name, "struct._intersection_function_table_t", 0x25uLL))
      {
        return 1;
      }
    }

    else if (v2 < 0x1C)
    {
LABEL_123:
      v34 = *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
      return v34 || v4 >= 0x21 && !memcmp(v3, "struct._MTLAxisAlignedBoundingBox", 0x21uLL);
    }

    if (*v3 == 0x5F2E746375727473 && v3[1] == 0x6365737265746E69 && v3[2] == 0x6575715F6E6F6974 && *(v3 + 6) == 1952414066)
    {
      return 1;
    }

    if (v4 >= 0x2A)
    {
      if (!memcmp(v3, "struct._primitive_acceleration_structure_t", 0x2AuLL))
      {
        return 1;
      }
    }

    else if (v4 != 41)
    {
      if (v4 < 0x1D)
      {
        return *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
      }

      goto LABEL_113;
    }

    if (!memcmp(v3, "struct._instance_acceleration_structure_t", 0x29uLL))
    {
      return 1;
    }

LABEL_113:
    if (*v3 == 0x5F2E746375727473 && v3[1] == 0x6365737265746E69 && v3[2] == 0x7365725F6E6F6974 && *(v3 + 21) == 0x745F746C75736572)
    {
      return 1;
    }

    goto LABEL_123;
  }

  return 1;
}

uint64_t getPointerOperand(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 5)
  {
    v2 = *(a1 + 18);
    if (v2 == 49 || v2 == 34)
    {
      v3 = *(a1 + 20);
      goto LABEL_6;
    }

    return 0;
  }

  v5 = 0;
  if (a1 && v1 >= 0x1C)
  {
    if (v1 == 77 || v1 == 62)
    {
      v3 = *(a1 + 20);
      if ((v3 & 0x40000000) != 0)
      {
        v4 = *(a1 - 8);
        return *v4;
      }

LABEL_6:
      v4 = a1 - 32 * (v3 & 0x7FFFFFF);
      return *v4;
    }

    return 0;
  }

  return v5;
}

void MTLRAUWUtility::replaceAllUsesWith(uint64_t a1, void **a2, uint64_t a3)
{
  v71[4] = *MEMORY[0x277D85DE8];
  v64 = a2[1];
  v65 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v69, &v64);
  v5 = v70;
  if (v70)
  {
    v57 = a3;
    do
    {
      v6 = v69[v5 - 1];
      v70 = v5 - 1;
      v7 = v6[16];
      if (v7 <= 0x1B)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }

      v60 = v8;
      if (v8)
      {
        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(&v64, &v60);
        if (*(v60 + 16) == 83 && v60 != 0)
        {
          v10 = *(v60 + 5);
          v11 = v10 & 0x7FFFFFF;
          if ((v10 & 0x7FFFFFF) != 0)
          {
            v12 = 0;
            while (1)
            {
              v13 = v60 - 32 * v11;
              if ((v10 & 0x40000000) != 0)
              {
                v13 = *(v60 - 1);
              }

              if (*&v13[32 * v12] == a2)
              {
                break;
              }

              if (++v12 == v11)
              {
                goto LABEL_94;
              }
            }

            v19 = *&v13[32 * *(v60 + 15) + 8 * v12];
            v20 = *(v19 + 40);
            if (v20 == v19 + 40)
            {
              v23 = 0;
            }

            else
            {
              v21 = (v20 - 24);
              if (v20)
              {
                v22 = v20 - 24;
              }

              else
              {
                v22 = 0;
              }

              if (*(v22 + 16) - 29 >= 0xB)
              {
                v23 = 0;
              }

              else
              {
                v23 = v21;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(&v64, v23);
          }
        }

LABEL_94:
        v56 = *(a3 + 24);
        if (!v56)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v56 + 48))(v56, &v64);
        llvm::User::replaceUsesOfWith();
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
        if (v64 != v66)
        {
          free(v64);
        }
      }

      else
      {
        if (v7 == 5)
        {
          v14 = v6;
        }

        else
        {
          v14 = 0;
        }

        v59 = v14;
        if (v14)
        {
          v64 = v66;
          v65 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v64, &v59);
          v15 = v65;
          if (v65)
          {
            v16 = 0;
            do
            {
              v17 = *(*(v64 + v16) + 8);
              if (v17)
              {
                do
                {
                  v18 = *(v17 + 24);
                  if (v18[16] != 5)
                  {
                    v18 = 0;
                  }

                  v61 = v18;
                  if (v18)
                  {
                    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v64, &v61);
                  }

                  v17 = *(v17 + 8);
                }

                while (v17);
                v15 = v65;
              }

              ++v16;
            }

            while (v15 > v16);
          }

          else
          {
            v15 = 0;
          }

          v24 = v64;
          v25 = v64 + 8 * v15;
          while (v25 != v24)
          {
            v27 = *(v25 - 1);
            v25 -= 8;
            v26 = v27;
            v58[0] = *(v27 + 1);
            v58[1] = 0;
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v61, v58);
            v28 = v61;
            if (v62)
            {
              v29 = v61 + 8 * v62;
              do
              {
                v30 = *v28;
                AsInstruction = llvm::ConstantExpr::getAsInstruction(v26, 0);
                v58[0] = AsInstruction;
                v32 = *(v30 + 16);
                if (v32 != 83 || v30 == 0)
                {
                  if (v32 < 0x1C || v30 == 0)
                  {
                    llvm::Value::dump(v26);
                    llvm::Value::dump(v30);
                  }

                  else
                  {
                    llvm::Instruction::insertBefore(AsInstruction, v30);
                  }
                }

                else
                {
                  v35 = *(v30 + 20);
                  v36 = v35 & 0x7FFFFFF;
                  if ((v35 & 0x7FFFFFF) != 0)
                  {
                    v37 = 0;
                    v38 = 0;
                    v39 = 32 * v36;
                    v40 = v30 - 32 * v36;
                    while (1)
                    {
                      v41 = v40;
                      if ((v35 & 0x40000000) != 0)
                      {
                        v41 = *(v30 - 8);
                      }

                      if (*(v41 + v38) == v26)
                      {
                        break;
                      }

                      v38 += 32;
                      v37 += 8;
                      if (v39 == v38)
                      {
                        goto LABEL_82;
                      }
                    }

                    v42 = *(v41 + 32 * *(v30 + 60) + v37);
                    v43 = *(v42 + 40);
                    if (v43 == v42 + 40)
                    {
                      v46 = 0;
                    }

                    else
                    {
                      v44 = (v43 - 24);
                      if (v43)
                      {
                        v45 = v43 - 24;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      if (*(v45 + 16) - 29 >= 0xB)
                      {
                        v46 = 0;
                      }

                      else
                      {
                        v46 = v44;
                      }
                    }

                    llvm::Instruction::insertBefore(AsInstruction, v46);
                    v47 = *(v30 + 20);
                    if ((v47 & 0x40000000) != 0)
                    {
                      v48 = *(v30 - 8);
                    }

                    else
                    {
                      v48 = v30 - 32 * (v47 & 0x7FFFFFF);
                    }

                    v49 = v58[0];
                    v50 = v48 + v38;
                    if (*(v48 + v38))
                    {
                      v51 = *(v50 + 8);
                      **(v50 + 16) = v51;
                      if (v51)
                      {
                        *(v51 + 16) = *(v50 + 16);
                      }
                    }

                    *v50 = v49;
                    if (v49)
                    {
                      v54 = *(v49 + 8);
                      v52 = (v49 + 8);
                      v53 = v54;
                      v55 = v48 + v38;
                      *(v55 + 8) = v54;
                      if (v54)
                      {
                        *(v53 + 16) = v55 + 8;
                      }

                      *(v55 + 16) = v52;
                      *v52 = v50;
                    }
                  }
                }

LABEL_82:
                llvm::User::replaceUsesOfWith();
                if (v26 == v59)
                {
                  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v69, v58);
                }

                v28 += 8;
              }

              while (v28 != v29);
              v28 = v61;
            }

            if (v28 != &v63)
            {
              free(v28);
            }

            llvm::User::dropAllReferences(v26);
          }

          if (v64 != v66)
          {
            free(v64);
          }

          a3 = v57;
        }

        else
        {
          llvm::Value::dump(v6);
        }
      }

      v5 = v70;
    }

    while (v70);
  }

  if (v69 != v71)
  {
    free(v69);
  }
}

uint64_t llvm::User::dropAllReferences(uint64_t this)
{
  v1 = *(this + 20);
  if ((v1 & 0x40000000) != 0)
  {
    v3 = *(this - 8);
    v2 = v1 & 0x7FFFFFF;
    if (!v2)
    {
      return this;
    }
  }

  else
  {
    v2 = v1 & 0x7FFFFFF;
    v3 = this - 32 * v2;
    if (!v2)
    {
      return this;
    }
  }

  v4 = 32 * v2;
  v5 = (v3 + 16);
  do
  {
    if (*(v5 - 2))
    {
      v6 = *(v5 - 1);
      **v5 = v6;
      if (v6)
      {
        *(v6 + 16) = *v5;
      }
    }

    *(v5 - 2) = 0;
    v5 += 4;
    v4 -= 32;
  }

  while (v4);
  return this;
}

void MTLBoundsCheck::SharedPassData::~SharedPassData(MTLBoundsCheck::SharedPassData *this)
{
  *this = &unk_2868EC338;
  v2 = this + 88;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 312);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 272);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 240, v3, v4, v5);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(this + 208, v6, v7, v8);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(this + 168);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 128);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC338;
  v2 = this + 88;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 312);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 272);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 240, v3, v4, v5);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(this + 208, v6, v7, v8);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(this + 168);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 128);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

llvm::DataLayout *llvm::DataLayout::DataLayout(llvm::DataLayout *this, const llvm::DataLayout *a2)
{
  *(this + 40) = xmmword_257A6DAD0;
  *(this + 9) = 0x1000000000;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 4) = this + 56;
  *(this + 8) = this + 80;
  *(this + 26) = 0;
  *(this + 216) = 0u;
  *(this + 29) = this + 248;
  *(this + 30) = 0x800000000;
  *(this + 47) = 0;
  *(this + 48) = this + 400;
  *(this + 49) = 0x800000000;
  llvm::DataLayout::operator=(this, a2);
  return this;
}

void sub_2579E7938(_Unwind_Exception *exception_object)
{
  v7 = v2;
  v9 = *(v1 + 384);
  if (v9 != v7)
  {
    free(v9);
  }

  v10 = *(v1 + 232);
  if (v10 != v6)
  {
    free(v10);
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*v5);
  }

  v11 = *(v1 + 64);
  if (v11 != v4)
  {
    free(v11);
  }

  v12 = *(v1 + 32);
  if (v12 != v3)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DataLayout::operator=(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::clear(a1);
  std::string::operator=((a1 + 208), (a2 + 208));
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = *(a2 + 24);
  llvm::SmallVectorImpl<unsigned char>::operator=(a1 + 32, a2 + 32);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 64, a2 + 64);
  llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(a1 + 232, a2 + 232);
  llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 384, a2 + 384);
  return a1;
}

uint64_t llvm::SmallVectorImpl<unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, *(a1 + 8));
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4 - 2);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5 - 2);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 16 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 16 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 16 * v5), (*a2 + 16 * v5), 16 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = *(a2 + 8);
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, 4 * v6);
        }
      }

      else
      {
        if (*(a1 + 12) < v6)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7)
        {
          memmove(*a1, v4, 4 * v7);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(a2 + 8) - v7;
        if (v8)
        {
          memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
        }
      }

      *(a1 + 8) = v6;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<llvm::CallInst *>::assignRemote(a1, a2);
    }
  }

  return a1;
}

void *llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579E7DA0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorImpl<std::string>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 24 * v2 - 1;
    v4 = -24 * v2;
    v5 = v3;
    do
    {
      v6 = *v5;
      v5 -= 24;
      if (v6 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 = v5;
      v4 += 24;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t MTLMDBuilder::getMetadata<int>(llvm::IntegerType **a1, int a2, unsigned int a3)
{
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

void *std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
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

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
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

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x1000000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a2, a3);
  return a1;
}

void sub_2579E84D4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC3D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC420;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3 != 0;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC468;
  a2[1] = v2;
  return result;
}

uint64_t llvm::optional_detail::OptionalStorage<std::function<void ()(llvm::Metadata *)>,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](a1, a2);
  }

  else
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1},std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1}>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2868EC4B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1},std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1}>,void ()(llvm::Metadata *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v7 = 0;
  v8[0] = &unk_2868EC3D8;
  v8[1] = &v7;
  v8[3] = v8;
  std::function<void ()(llvm::Metadata *)>::operator()(v8, v3);
  v4 = *(a1 + 8);
  v5 = v7;
  if ((*(v4 + 4) & 1) == 0)
  {
    *(v4 + 4) = 1;
  }

  *v4 = v5;
  return std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v8);
}

void sub_2579E8B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t MTLDebugSymbolCollectionPass::runOnModule(MTLDebugSymbolCollectionPass *this, llvm::Module *a2, unsigned int a3)
{
  v3 = *(a2 + 4);
  v19 = (a2 + 24);
  if (v3 == (a2 + 24))
  {
    return 0;
  }

  v5 = 0;
  v6 = *a2;
  do
  {
    v7 = v3 - 56;
    if (!v3)
    {
      v7 = 0;
    }

    v20 = v3;
    if ((v7[33] & 0x20) == 0)
    {
      v8 = *(v7 + 10);
      for (i = v7 + 72; v8 != i; v8 = *(v8 + 8))
      {
        v9 = v8 - 24;
        if (!v8)
        {
          v9 = 0;
        }

        v10 = v9 + 40;
        for (j = *(v9 + 48); j != v10; j = *(j + 8))
        {
          if (j)
          {
            v12 = j - 24;
          }

          else
          {
            v12 = 0;
          }

          v13 = *(v12 + 16) - 60;
          v14 = v13 > 0x18;
          v15 = (1 << v13) & 0x1000003;
          v16 = v14 || v15 == 0;
          if (!v16 && (*(v12 + 48) || (*(v12 + 23) & 0x20) != 0))
          {
            MetadataImpl = llvm::Instruction::getMetadataImpl();
            if (MetadataImpl)
            {
              MTLBoundsCheck::SharedPassData::indexForDILocation(*(this + 8), MetadataImpl);
              llvm::ConstantInt::get();
              llvm::ValueAsMetadata::get();
              v5 = 1;
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
            }
          }
        }
      }
    }

    v3 = *(v20 + 1);
  }

  while (v3 != v19);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  MTLBoundsCheck::SerializedData::toMetaData(*(*(this + 8) + 64), v6, a3);
  llvm::Module::getOrInsertNamedMetadata();
  llvm::NamedMDNode::addOperand();
  return 1;
}

void MTLDebugSymbolCollectionPass::~MTLDebugSymbolCollectionPass(MTLDebugSymbolCollectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
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

void MTLFoldExpansionPass::~MTLFoldExpansionPass(MTLFoldExpansionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
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

uint64_t MTLFoldExpansionPass::runOnModule(MTLFoldExpansionPass *this, llvm::Module *a2)
{
  v24[16] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  v22 = v24;
  v23 = 0x1000000000;
  v4 = *(a2 + 4);
  if (v4 == (a2 + 24))
  {
    v19 = *(this + 184);
  }

  else
  {
    do
    {
      v5 = v4 - 7;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = v5 + 9;
      for (i = v5[10]; i != v6; i = i[1])
      {
        v8 = i - 3;
        if (!i)
        {
          v8 = 0;
        }

        v9 = v8 + 5;
        for (j = v8[6]; j != v9; j = j[1])
        {
          if (j)
          {
            v11 = (j - 3);
          }

          else
          {
            v11 = 0;
          }

          if (*(v11 + 16) == 84)
          {
            v12 = *(v11 - 32);
            if (v12)
            {
              if (!*(v12 + 16) && *(v12 + 24) == *(v11 + 72))
              {
                Name = llvm::Value::getName(v12);
                if (v14 >= 0xB && *Name == 0x662E73646E756F62 && *(Name + 3) == 0x646C6F662E73646ELL)
                {
                  *(this + 184) = 1;
                  MTLFoldExpansionPass::createGEPFromFold(this, v11);
                  llvm::Value::replaceAllUsesWith();
                  v21 = v11;
                  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v22, &v21);
                }
              }
            }
          }

          if (*(v11 + 48) || (*(v11 + 23) & 0x20) != 0)
          {
            if (llvm::Instruction::getMetadataImpl())
            {
              llvm::Instruction::setMetadata();
            }
          }
        }
      }

      v4 = v4[1];
    }

    while (v4 != (a2 + 24));
    v16 = v22;
    if (v23)
    {
      v17 = 8 * v23;
      do
      {
        v18 = *v16;
        llvm::User::dropAllReferences(*v16);
        llvm::Instruction::eraseFromParent(v18);
        ++v16;
        v17 -= 8;
      }

      while (v17);
      v16 = v22;
    }

    v19 = *(this + 184);
    if (v16 != v24)
    {
      free(v16);
    }
  }

  return v19 & 1;
}

void sub_2579E9328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != a10)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFoldExpansionPass::createGEPFromFold(MetalModulePass *a1, llvm::Value *a2)
{
  v57[7] = *MEMORY[0x277D85DE8];
  v49 = a2;
  MTLIRBuilder::MTLIRBuilder<llvm::CallInst *&>(v54, &v49);
  v3 = (v49 - 32 * (*(v49 + 5) & 0x7FFFFFF));
  v4 = *v3;
  v5 = v3[12];
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = v3[4];
  v8 = *v4;
  v9 = **(*v4 + 16);
  TypeForStride = MetalModulePass::getTypeForStride(a1, *v6);
  if (TypeForStride)
  {
    v11 = TypeForStride;
  }

  else
  {
    v11 = v9;
  }

  if (v11 != v8)
  {
    v11 = llvm::PointerType::get();
  }

  v53 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v54, 49, v4, v11, &v50);
  v13 = **(*Cast + 16);
  v53 = 257;
  v14 = llvm::IRBuilderBase::CreateInBoundsGEP(v54, v13, Cast, v7, &v50);
  v47[0] = *(v49 + 1);
  v47[1] = 0;
  llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v50, v47);
  for (i = v51; v51; i = v51)
  {
    v16 = *(v50 + i - 1);
    v17 = i - 1;
    v51 = i - 1;
    v18 = *(v16 + 16);
    if (v16 && v18 == 62)
    {
      if ((*(v16 + 20) & 0x7FFFFFF) == 2)
      {
        v19 = *v49;
        v48 = 257;
        llvm::IRBuilderBase::CreateCast(v54, 49, v4, v19, v47);
        llvm::User::replaceUsesOfWith();
        v20 = *(v16 - 32 * (*(v16 + 20) & 0x7FFFFFF) + 32);
        v21 = *(a1 + 10);
        v48 = 257;
        v22 = llvm::IRBuilderBase::CreateCast(v54, 38, v20, v21, v47);
        v46 = 257;
        NSWFoldAdd = MTLIRBuilder::CreateNSWFoldAdd(v54, v7, v22, v45);
        v24 = *(a1 + 9);
        v44[16] = 257;
        v25 = llvm::IRBuilderBase::CreateCast(v54, 39, NSWFoldAdd, v24, v44);
        v26 = v16 - 32 * (*(v16 + 20) & 0x7FFFFFF);
        v27 = (v26 + 32);
        if (*(v26 + 32))
        {
          v28 = *(v26 + 40);
          **(v26 + 48) = v28;
          if (v28)
          {
            *(v28 + 16) = *(v26 + 48);
          }
        }

        *v27 = v25;
        if (v25)
        {
          v31 = *(v25 + 8);
          v29 = (v25 + 8);
          v30 = v31;
          *(v26 + 40) = v31;
          if (v31)
          {
            *(v30 + 16) = v26 + 40;
          }

          *(v26 + 48) = v29;
          *v29 = v27;
        }
      }
    }

    else if (v16 && v18 == 77)
    {
      llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v50, v50 + 8 * v17, *(v16 + 8), 0);
    }

    else if (v16 && v18 == 60 || v16 && v18 == 61)
    {
      v32 = **(v16 - 32);
      v48 = 257;
      llvm::IRBuilderBase::CreateCast(v54, 49, v14, v32, v47);
      llvm::User::replaceUsesOfWith();
    }

    else if (v18 == 84 && v16 != 0)
    {
      for (j = 0; j < llvm::compat::getNumArgOperands(v16); ++j)
      {
        v35 = *(v16 - 32 * (*(v16 + 20) & 0x7FFFFFF) + 32 * j);
        v36 = *v35;
        if (*(*v35 + 8) == 15)
        {
          v37 = *(v35 + 16);
          if (v37 >= 0x1C)
          {
            do
            {
              if (v37 != 77)
              {
                break;
              }

              v38 = *(v35 + 20);
              v39 = (v38 & 0x40000000) != 0 ? *(v35 - 8) : (v35 - 32 * (v38 & 0x7FFFFFF));
              v35 = *v39;
              v37 = *(v35 + 16);
            }

            while (v35 && v37 > 0x1B);
          }

          if (v35 == v49)
          {
            v48 = 257;
            v41 = llvm::IRBuilderBase::CreateCast(v54, 49, v14, v36, v47);
            llvm::CallBase::setArgOperand(v16, j, v41);
          }
        }
      }
    }
  }

  v42 = llvm::UndefValue::get();
  if (v50 != &v52)
  {
    free(v50);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v57);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v56);
  if (v54[0] != &v55)
  {
    free(v54[0]);
  }

  return v42;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::CallInst *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

void MTLGVEmulation::~MTLGVEmulation(MTLGVEmulation *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280, v5, v6, v7);
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200, v8, v9, v10);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v12, v13, v14);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v15, v16, v17);

  llvm::Pass::~Pass(this);
}

{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280, v5, v6, v7);
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200, v8, v9, v10);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v12, v13, v14);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v15, v16, v17);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGVEmulation::runOnModule(MTLGVEmulation *this, llvm::Module *a2, uint64_t a3, unint64_t a4)
{
  v48[8] = *MEMORY[0x277D85DE8];
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 35, a2, a3, a4);
  MetalModulePass::runOnModule(this, a2);
  MTLGVEmulation::createFwdStructType(this, v6, v7);
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (MTLBoundsCheck::isLibraryModule(a2, v9))
  {
    EntryFunction = 0;
  }

  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v11 = GlobalVariable;
    v12 = *(GlobalVariable - 32);
    v46 = v48;
    v47 = 0x400000000;
    v13 = *(v12 + 20) & 0x7FFFFFF;
    if ((*(v12 + 20) & 0x7FFFFFF) != 0)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v44[0] = *(v12 - 32 * v13 + v14);
        v16 = MTLBoundsCheck::lookThroughPointerOps(v44[0], v44);
        v17 = v16;
        v18 = *(v16 + 16) != 3 || v16 == 0;
        if (!v18 && (Name = llvm::Value::getName(v16), v20 >= 4) && *Name == 778859629)
        {
          llvm::UndefValue::get();
          llvm::Constant::handleOperandChange();
          v12 = *(v11 - 4);
          if (!v12 || *(v12 + 16) - 11 < 2)
          {
            break;
          }
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v46, &v45);
        }

        ++v15;
        v13 = *(v12 + 20) & 0x7FFFFFF;
        v14 += 32;
      }

      while (v15 < v13);
    }

    llvm::GlobalVariable::eraseFromParent(v11);
    if (v47)
    {
      llvm::appendToUsed();
    }

    if (v46 != v48)
    {
      free(v46);
    }
  }

  MTLGVEmulation::gatherGVs(this);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 35, v21, v22, v23);
  v44[0] = *(a2 + 4);
  v44[1] = a2 + 24;
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v46, v44);
  v24 = v46;
  if (v47)
  {
    v25 = 8 * v47;
    do
    {
      v26 = *v24;
      shouldModifyFunction = MTLGVEmulation::shouldModifyFunction(this, *v24);
      if (v26 == EntryFunction)
      {
        v28 = 0;
      }

      else
      {
        v28 = shouldModifyFunction;
      }

      if (v28)
      {
        v45 = v26;
        v44[0] = 0;
        v29 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 17, &v45, v44);
        if (v44[0] == *(this + 17) + 16 * *(this + 38))
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        if (v30 == 1)
        {
          v31 = *(v44[0] + 8);
        }

        else
        {
          v31 = 0;
        }

        updated = MTLGVEmulation::updateFunction(this, v26, v31);
        v44[0] = v26;
        llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v44)[1] = updated;
      }

      ++v24;
      v25 -= 8;
    }

    while (v25);
    v24 = v46;
  }

  if (v24 != v48)
  {
    free(v24);
  }

  if (EntryFunction)
  {
    MTLGVEmulation::updateEntryPoint(this, EntryFunction);
  }

  MTLGVEmulation::updateIntersectionFunctions(this);
  MTLGVEmulation::updateIntersectCalls(this);
  MTLGVEmulation::updateAIRFunctionMetadata(this);
  MTLGVEmulation::removeGVUsages(this);
  MTLGVEmulation::updateAIRDyldTable(this);
  if (*(this + 72))
  {
    v33 = *(this + 35);
    v34 = *(this + 74);
    v35 = v33;
    if (v34)
    {
      v36 = 16 * v34;
      v35 = *(this + 35);
      while ((*v35 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v35 += 2;
        v36 -= 16;
        if (!v36)
        {
          v37 = 1;
          goto LABEL_54;
        }
      }
    }

    v38 = &v33[2 * v34];
    if (v35 == v38)
    {
      v39 = 0;
    }

    else
    {
      do
      {
        MTLGVEmulation::updateFunctionUses(this, *v35, v35[1]);
        MTLGVEmulation::updateIndirectCalls(this, v35[1]);
        llvm::Value::takeName();
        do
        {
          v35 += 2;
        }

        while (v35 != v38 && (*v35 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v35 != v38);
      v33 = *(this + 35);
      v34 = *(this + 74);
      v39 = *(this + 72) == 0;
    }

    v37 = v34;
    if (!v39)
    {
LABEL_54:
      i = v33;
      if (v37)
      {
        v41 = 16 * v34;
        for (i = v33; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 2)
        {
          v41 -= 16;
          if (!v41)
          {
            return 1;
          }
        }
      }

      v43 = &v33[2 * v34];
      while (i != v43)
      {
        llvm::UndefValue::get();
        llvm::Value::replaceNonMetadataUsesWith();
        **i = *i[1];
        llvm::ValueAsMetadata::handleRAUW();
        llvm::Function::eraseFromParent(*i);
        do
        {
          i += 2;
        }

        while (i != v43 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }
  }

  return 1;
}

void sub_2579E9EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 25));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void MTLGVEmulation::createFwdStructType(MTLGVEmulation *this, uint64_t a2, unsigned int a3)
{
  v85 = *MEMORY[0x277D85DE8];
  llvm::PointerType::get();
  llvm::StructType::get();
  v4 = llvm::PointerType::get();
  v5 = llvm::PointerType::get();
  v42 = "mtl.device_indirection_table";
  v43 = 28;
  v44[0] = 0;
  v45 = v4;
  v46 = "mtl.draw_id_buffer";
  v47 = 18;
  v48 = 1;
  v49 = llvm::PointerType::get();
  v50 = "mtl.report_buffer";
  v51 = 17;
  v52 = 2;
  v53 = llvm::PointerType::get();
  v54 = "mtl.check_buffer";
  v55 = 16;
  v56 = 3;
  v57 = v5;
  v58 = "mtl.texture_usage_table";
  v59 = 23;
  v60 = 4;
  v61 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v62 = "mtl.buffer_usage_table";
  v63 = 22;
  v64 = 5;
  v7 = *(this + 10);
  v65 = v6;
  v66 = "mtl.stack_depth";
  v67 = 15;
  v68 = 10;
  v69 = v7;
  v70 = "mtl.acceleration_structure_payload";
  v71 = 34;
  v72 = 11;
  v73 = llvm::PointerType::get();
  Int8PtrTy = llvm::Type::getInt8PtrTy(**(this + 6), 0);
  v74 = "mtl.stack_trace";
  v75 = 15;
  v76 = 12;
  v77 = Int8PtrTy;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.binding_table", 17);
  v78 = "mtl.binding_table";
  v79 = 17;
  v80 = 13;
  v81 = llvm::PointerType::get();
  llvm::StringMapImpl::StringMapImpl(&v82);
  for (i = 0; i != 80; i += 8)
  {
    v40 = *(&v42 + i * 4);
    v41 = *&v44[i];
    llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(&v82, v40, *(&v40 + 1), &v41);
  }

  v13 = *(this + 25);
  *(this + 25) = v82;
  v82 = v13;
  v14 = *(this + 26);
  *(this + 26) = v83;
  v83 = v14;
  LODWORD(v13) = *(this + 54);
  *(this + 54) = v84;
  v84 = v13;
  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(&v82, v10, v11, v12);
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_table", 21);
  v15 = llvm::PointerType::get();
  if (!llvm::Module::getGlobalVariable())
  {
    v15 = llvm::PointerType::get();
  }

  v16 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_table", 0x15uLL);
  *(v16 + 8) = 6;
  *(v16 + 16) = v15;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_base", 20);
  v17 = llvm::PointerType::get();
  v19 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_base", 0x14uLL);
  *(v19 + 8) = 7;
  *(v19 + 16) = v17;
  v20 = "mtl.global_constants_handle";
  v21 = "mtl.global_constants_table";
  if ((*(*(*(this + 8) + 72) + 23) & 0x40) != 0)
  {
    isLibraryModule = MTLBoundsCheck::isLibraryModule(*(this + 6), v18);
    if (isLibraryModule)
    {
      v23 = 33;
    }

    else
    {
      v23 = 26;
    }

    if (isLibraryModule)
    {
      v21 = "mtl.global_constants_table.unused";
      v22 = 34;
    }

    else
    {
      v22 = 27;
    }

    if (isLibraryModule)
    {
      v20 = "mtl.global_constants_handle.unused";
    }
  }

  else
  {
    v22 = 27;
    v23 = 26;
  }

  v25 = llvm::PointerType::get();
  v26 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v21, v23);
  *(v26 + 8) = 8;
  *(v26 + 16) = v25;
  v27 = *(this + 9);
  v28 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v20, v22);
  *(v28 + 8) = 9;
  *(v28 + 16) = v27;
  if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v29))
  {
    v30 = *(this + 8);
    v31 = *(*(v30 + 9) + 20);
    if ((v31 & 0x800000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(v30);
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(*(this + 8));
      if ((*(*(*(this + 8) + 72) + 20) & 0x200000001) != 0)
      {
        MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(*(this + 8));
        MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(*(this + 8));
      }
    }

    else if ((v31 & 0x10000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(v30);
    }

    else
    {
      MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(v30);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(*(this + 8));
    MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(*(this + 8));
  }

  MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
  v32 = llvm::StructType::create();
  v42 = v44;
  v43 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v42, *(this + 53));
  v33 = *(this + 52);
  if (v33)
  {
      ;
    }
  }

  else
  {
    j = *(this + 25);
  }

  v36 = *(this + 25) + 8 * v33;
  if (j != v36)
  {
    v37 = *j;
    do
    {
      *(v42 + *(v37 + 8)) = *(v37 + 16);
      do
      {
        v38 = j[1];
        ++j;
        v37 = v38;
        if (v38)
        {
          v39 = v37 == -8;
        }

        else
        {
          v39 = 1;
        }
      }

      while (v39);
    }

    while (j != v36);
  }

  llvm::StructType::setBody();
  *(this + 23) = v32;
  *(this + 24) = llvm::PointerType::get();
  if (v42 != v44)
  {
    free(v42);
  }
}

void sub_2579EA5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::gatherGVs(uint64_t this)
{
  *(this + 240) = 0;
  v1 = *(this + 48);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    v4 = this;
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 33) & 0x1C) != 0)
      {
        this = llvm::Value::getName(v5);
        if (v6 >= 4 && *this == 778859629)
        {
          Key = llvm::StringMapImpl::FindKey();
          if (Key == -1 || Key == *(v4 + 208))
          {
            this = llvm::Value::dump(v5);
            __break(1u);
            return this;
          }

          v8 = v5;
          this = llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v4 + 232, &v8);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t MTLGVEmulation::shouldModifyFunction(MTLGVEmulation *this, llvm::Function *a2)
{
  v10 = 0;
  v11 = a2;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 20, &v11, &v10))
  {
    return 0;
  }

  Name = llvm::Value::getName(a2);
  v6 = v5;
  if (llvm::GlobalValue::isDeclaration(a2))
  {
    if (v6 >= 0x11)
    {
      if (*Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572 && *(Name + 16) == 46)
      {
        return 1;
      }
    }

    else if (v6 < 4)
    {
      return 1;
    }

    if (*Name == 779250017)
    {
      return 0;
    }

    if (v6 >= 5 && *Name == 1836477548 && *(Name + 4) == 46)
    {
      return 0;
    }

    if (*Name == 778859629)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t MTLGVEmulation::updateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 40);
  v18 = v20;
  v19 = 0x800000000;
  llvm::AttrBuilder::addAttribute();
  llvm::AttrBuilder::addAttribute();
  v6 = *(a1 + 40);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(a1 + 56), *(a1 + 184));
  v16 = v7;
  v8 = llvm::TypeSize::operator unsigned long long();
  llvm::Attribute::getWithDereferenceableBytes(v6, v8);
  llvm::AttrBuilder::addAttribute();
  v9 = llvm::AttributeSet::get();
  inserted = MetalModulePass::insertArgument(a1, a2, *(a1 + 192), v9, 1, "shader_validation_args", 0);
  v11 = inserted;
  TypeAllocSize = inserted;
  if (*(inserted + 9))
  {
    llvm::Function::BuildLazyArguments(inserted);
  }

  v12 = *(v11 + 11);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((a1 + 304), &TypeAllocSize)[1] = v12;
  if (a3)
  {
    MetalModulePass::insertFunctionArgumentMD(a1, a3, "air.visible_input", "mtl.shader_validation_args", "shader_validation_args", 0, 0, 0);
  }

  v13 = TypeAllocSize;
  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void sub_2579EA960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLGVEmulation::updateEntryPoint(MTLGVEmulation *this, llvm::Function *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v16 = a2;
  v3 = *(a2 + 10);
  if (v3)
  {
    v4 = (v3 - 24);
  }

  else
  {
    v4 = 0;
  }

  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v4);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v17, FirstNonPHI, 0, 0, 0);
  v6 = *(this + 23);
  v15[16] = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v17, v6, 0, v15);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v16)[1] = Alloca;
  v8 = v16 + 72;
  v9 = *(v16 + 10);
  if (v9 == v16 + 72)
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v10 = v9 - 24;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = *(v10 + 6);
      if (v11 != v10 + 40)
      {
        break;
      }

      v9 = *(v9 + 1);
    }

    while (v9 != v8);
  }

  while (v9 != v8)
  {
    if (v11)
    {
      v12 = v11 - 24;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12[16] == 84)
      {
        v13 = *(v12 - 4);
        if (!v13 || *(v13 + 16) || *(v13 + 24) != *(v12 + 9) || MTLGVEmulation::shouldModifyFunction(this, v13))
        {
          *(v12 + 9) &= 0xFFFCu;
        }
      }
    }

    v11 = *(v11 + 1);
    v14 = v9 - 24;
    if (!v9)
    {
      v14 = 0;
    }

    while (v11 == v14 + 40)
    {
      v9 = *(v9 + 1);
      if (v9 == v8)
      {
        break;
      }

      v14 = v9 - 24;
      if (!v9)
      {
        v14 = 0;
      }

      v11 = *(v14 + 6);
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v20);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v19);
  if (v17[0] != &v18)
  {
    free(v17[0]);
  }
}

void sub_2579EAB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIntersectionFunctions(MTLGVEmulation *this)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v68[1] = ((llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3);
  v69 = v4 == 1;
  PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *(this + 23));
  if (!*(this + 42))
  {
    return;
  }

  v6 = *(this + 44);
  if (v6)
  {
    v7 = 16 * v6;
    for (i = *(this + 20); (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 2)
    {
      v7 -= 16;
      if (!v7)
      {
        return;
      }
    }
  }

  else
  {
    i = *(this + 20);
  }

  v9 = *(this + 20) + 16 * v6;
  if (i == v9)
  {
    return;
  }

  v61 = PrefTypeAlignment | 0x100000000;
  do
  {
    v10 = i[1];
    v68[0] = *i;
    PayloadArg = MTLGVEmulation::getPayloadArg(this, v68[0], v10);
    if (!PayloadArg)
    {
      v70 = *(this + 5);
      v71 = &v73;
      v72 = 0x800000000;
      llvm::AttrBuilder::addAttribute();
      llvm::AttrBuilder::addAttribute();
      v36 = *(this + 5);
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(this + 7), *(this + 23));
      LODWORD(v76) = v37;
      v38 = llvm::TypeSize::operator unsigned long long();
      llvm::Attribute::getWithDereferenceableBytes(v36, v38);
      llvm::AttrBuilder::addAttribute();
      v39 = llvm::AttributeSet::get();
      v40 = v68[0];
      v41 = llvm::PointerType::get();
      inserted = MetalModulePass::insertArgument(this, v40, v41, v39, v64 & 0xFFFFFFFFFFFFFF00 | 1, "shader_validation_args", 1);
      v42 = *(inserted + 10);
      if (v42)
      {
        v43 = (v42 - 24);
      }

      else
      {
        v43 = 0;
      }

      FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v43);
      llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, FirstNonPHI, 0, 0, 0);
      v64 = v64 & 0xFFFFFFFFFFFFFF00 | 1;
      v45 = inserted;
      if (*(inserted + 9))
      {
        llvm::Function::BuildLazyArguments(inserted);
      }

      v46 = *(v45 + 11);
      v47 = *(v45 + 12);
      v48 = *(this + 23);
      v66 = 257;
      Alloca = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v48, 0, v65);
      v50 = llvm::TypeSize::operator unsigned long long();
      v62 = v62 & 0xFFFFFFFFFFFF0000 | 0x103;
      v63 = v63 & 0xFFFFFFFFFFFF0000 | 0x103;
      llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, Alloca, 0x103u, v46 + 40 * v47 - 40, 0x103u, v50, 0, 0, 0, 0, 0);
      llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &inserted)[1] = Alloca;
      v51 = llvm::TypeSize::operator unsigned long long();
      MetalModulePass::insertFunctionArgumentMD(this, v10, "air.payload", "mtl.shader_validation_args", "shader_validation_args", 1, v51 | 0x100000000, v61);
      v52 = inserted;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v68)[1] = v52;
      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v79);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v78);
      if (TypeAllocSize != v77)
      {
        free(TypeAllocSize);
      }

      v53 = v71;
      v54 = &v73;
      goto LABEL_48;
    }

    v13 = v11;
    TypeAllocSize = *(this + 23);
    v76 = **(*PayloadArg + 16);
    v14 = llvm::StructType::get();
    v15 = *(v10 - 8 * *(v10 + 8) + 16);
    v16 = *(v15 - 8 * *(v15 + 8) + 8 * v13);
    v17 = *(v16 + 8);
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = 0;
    while (1)
    {
      v19 = *(v16 - 8 * v17 + 8 * v18);
      if (!*v19)
      {
        break;
      }

LABEL_25:
      if (++v18 >= v17)
      {
        goto LABEL_26;
      }
    }

    String = llvm::MDString::getString(v19);
    if (v21 != 17)
    {
      v17 = *(v16 + 8);
      goto LABEL_25;
    }

    v23 = *String == 0x5F6772612E726961 && *(String + 8) == 0x7A69735F65707974 && *(String + 16) == 101;
    v17 = *(v16 + 8);
    if (!v23)
    {
      goto LABEL_25;
    }

LABEL_26:
    if (v17 > v18)
    {
      TypeAllocSize = ((llvm::DataLayout::getTypeSizeInBits(*(this + 7), v14) + 7) >> 3);
      LODWORD(v76) = v24 == 1;
      v25 = llvm::TypeSize::operator unsigned long long();
      MetalModulePass::getMetadata<unsigned int>(this, v25, v26);
      llvm::MDNode::replaceOperandWith();
    }

LABEL_28:
    v27 = *(v68[0] + 10);
    if (v27)
    {
      v28 = (v27 - 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = llvm::BasicBlock::getFirstNonPHI(v28);
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, v29, 0, 0, 0);
    v30 = *(this + 23);
    v74 = 257;
    v31 = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v30, 0, &v70);
    v32 = llvm::PointerType::get();
    v74 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&TypeAllocSize, PayloadArg, v32, &v70);
    v74 = 257;
    llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v14, BitOrPointerCast, 0, 1u, &v70);
    llvm::Value::replaceAllUsesWith();
    v34 = *(BitOrPointerCast + 5);
    if ((v34 & 0x40000000) != 0)
    {
      v35 = *(BitOrPointerCast - 1);
    }

    else
    {
      v35 = &BitOrPointerCast[-4 * (v34 & 0x7FFFFFF)];
    }

    if (*v35)
    {
      v55 = v35[1];
      *v35[2] = v55;
      if (v55)
      {
        *(v55 + 2) = v35[2];
      }
    }

    *v35 = PayloadArg;
    v58 = *(PayloadArg + 8);
    v57 = (PayloadArg + 8);
    v56 = v58;
    v35[1] = v58;
    if (v58)
    {
      *(v56 + 2) = v35 + 1;
    }

    v35[2] = v57;
    *v57 = v35;
    v74 = 257;
    ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v14, BitOrPointerCast, 0, 0, &v70);
    v60 = llvm::TypeSize::operator unsigned long long();
    v1 = v1 & 0xFFFFFFFFFFFF0000 | 0x103;
    v2 = v2 & 0xFFFFFFFFFFFF0000 | 0x103;
    llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, v31, v1, ConstInBoundsGEP2_32, v2, v60, 0, 0, 0, 0, 0);
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, v68)[1] = v31;
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v79);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v78);
    v53 = TypeAllocSize;
    v54 = v77;
LABEL_48:
    if (v53 != v54)
    {
      free(v53);
    }

    MTLGVEmulation::updateIndirectCalls(this, v68[0]);
    do
    {
      i += 2;
    }

    while (i != v9 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (i != v9);
}

void sub_2579EB188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a38);
  if (a28 != a16)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIntersectCalls(MTLGVEmulation *this)
{
  v59[4] = *MEMORY[0x277D85DE8];
  v57 = v59;
  v58 = 0x400000000;
  v51 = &v57;
  llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v51, *(*(this + 6) + 32), *(this + 6) + 24);
  v2 = v57;
  if (v58)
  {
    v3 = 8 * v58;
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 32);
      if (!v5 || *(v5 + 16) || *(v5 + 24) != *(v4 + 72))
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      v53 = v6;
      if (llvm::StringRef::find() == -1)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }

      if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
      {
        ++v7;
      }

      v8 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
      v9 = *(v8 + 32 * v7);
      if (v9)
      {
        v10 = *(v9 + 16) == 19;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v4 + 40));
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, FirstNonPHI, 0, 0, 0);
        v48 = *(*(v4 + 40) + 56);
        v35 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v48)[1];
        v36 = llvm::PointerType::get();
        v50 = 257;
        BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v35, v36, &v48);
        v48 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v49 = v38 == 1;
        llvm::CallBase::setArgOperand(v4, v7, BitOrPointerCast);
        llvm::TypeSize::operator unsigned long long();
        v39 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v39);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v56);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v55);
        if (Name != v54)
        {
          free(Name);
        }
      }

      else
      {
        v11 = *(v8 + 32 * (v7 + 1));
        if (*(v11 + 16) == 16)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        Name = *(this + 23);
        v46 = v12;
        v13 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v13 = *(v12 + 24);
        }

        v47 = (v12 + 24);
        v53 = llvm::ArrayType::get(*(this + 12), *v13);
        v14 = llvm::StructType::get();
        Name = *(*(v4 + 40) + 56);
        v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &Name)[1];
        v16 = *(*(*(v4 + 40) + 56) + 80);
        if (v16)
        {
          v17 = (v16 - 24);
        }

        else
        {
          v17 = 0;
        }

        llvm::BasicBlock::getFirstNonPHI(v17);
        v18 = llvm::User::operator new(0x48);
        v54[8] = 257;
        llvm::AllocaInst::AllocaInst();
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v4, 0, 0, 0);
        v50 = 257;
        ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v14, v18, 0, 0, &v48);
        v20 = llvm::PointerType::get();
        v50 = 257;
        v21 = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v15, v20, &v48);
        v48 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v49 = v22 == 1;
        v23 = llvm::TypeSize::operator unsigned long long();
        v44 = v44 & 0xFFFFFFFFFFFF0000 | 0x103;
        v45 = v45 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, ConstInBoundsGEP2_32, 0x103u, v21, 0x103u, v23, 0, 0, 0, 0, 0);
        v50 = 257;
        v24 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v14, v18, 0, 1u, &v48);
        v25 = v47;
        if (*(v46 + 32) >= 0x41u)
        {
          v25 = *v47;
        }

        v42 = v42 & 0xFFFFFFFFFFFF0000 | 0x103;
        v43 = v43 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v24, 0x103u, v9, 0x103u, *v25, 0, 0, 0, 0, 0);
        v26 = llvm::PointerType::get();
        v50 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&Name, 49, v18, v26, &v48);
        llvm::CallBase::setArgOperand(v4, v7, Cast);
        v48 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v14) + 7) >> 3;
        v49 = v28 == 1;
        llvm::TypeSize::operator unsigned long long();
        v29 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v29);
        v30 = *(v4 + 32);
        if (v30)
        {
          v31 = v30 == *(v4 + 40) + 40;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = (v30 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&Name, v32);
        v33 = v47;
        if (*(v46 + 32) >= 0x41u)
        {
          v33 = *v47;
        }

        v40 = v40 & 0xFFFFFFFFFFFF0000 | 0x103;
        v41 = v41 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v9, 0x103u, v24, 0x103u, *v33, 0, 0, 0, 0, 0);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v56);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v55);
        if (Name != v54)
        {
          free(Name);
        }
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    v2 = v57;
  }

  if (v2 != v59)
  {
    free(v2);
  }
}

void sub_2579EB814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v33 = *(v31 - 144);
  if (v33 != v30)
  {
    free(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::updateAIRFunctionMetadata(MTLGVEmulation *this)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = off_27984E540[i];
    v4 = *(this + 6);
    v11 = 257;
    if (*v3)
    {
      v10[0] = v3;
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    LOBYTE(v11) = v5;
    result = llvm::Module::getNamedMetadata(v4, v10);
    if (result)
    {
      v7 = result;
      result = llvm::NamedMDNode::getNumOperands(result);
      if (result)
      {
        v8 = result;
        for (j = 0; j != v8; ++j)
        {
          result = llvm::NamedMDNode::getOperand(v7);
          if (!*(*(result - 8 * *(result + 8)) + 128))
          {
            break;
          }

          v10[0] = *(*(result - 8 * *(result + 8)) + 128);
          v12 = 0;
          result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, v10, &v12);
          if (result)
          {
            result = *(v12 + 8);
            if (result)
            {
              llvm::ValueAsMetadata::get();
              result = llvm::MDNode::replaceOperandWith();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTLGVEmulation::removeGVUsages(uint64_t this)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v1 = *(this + 240);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 232);
    v4 = &v3[v1];
    do
    {
      Name = llvm::Value::getName(*v3);
      llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((v2 + 200), Name, v6);
      v21[0] = *(*v3 + 1);
      v21[1] = 0;
      llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v26, v21);
      v7 = v26;
      if (v27)
      {
        v8 = 8 * v27;
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 16);
          if (*v7 && v10 == 61)
          {
            v23 = *(*(v9 + 5) + 56);
            v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((v2 + 304), &v23)[1];
            v12 = **(*v11 + 16);
            v24 = llvm::ConstantInt::get();
            v25 = llvm::ConstantInt::get();
            v22 = 257;
            v13 = llvm::GetElementPtrInst::Create(v12, v11, &v24, 2, v21, 0);
            llvm::GetElementPtrInst::setIsInBounds(v13);
            llvm::Instruction::insertBefore(v13, v9);
            v14 = llvm::User::operator new(0x40);
            llvm::StoreInst::StoreInst();
            llvm::ReplaceInstWithInst(v9, v14, v15);
          }

          else
          {
            if (v10 != 60)
            {
              v9 = 0;
            }

            v23 = *(*(v9 + 5) + 56);
            v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((v2 + 304), &v23)[1];
            v17 = **(*v16 + 16);
            v24 = llvm::ConstantInt::get();
            v25 = llvm::ConstantInt::get();
            v22 = 257;
            v18 = llvm::GetElementPtrInst::Create(v17, v16, &v24, 2, v21, 0);
            llvm::GetElementPtrInst::setIsInBounds(v18);
            llvm::Instruction::insertBefore(v18, v9);
            v19 = llvm::User::operator new(0x40);
            v22 = 257;
            llvm::LoadInst::LoadInst();
            llvm::ReplaceInstWithInst(v9, v19, v20);
          }

          v7 += 8;
          v8 -= 8;
        }

        while (v8);
        v7 = v26;
      }

      if (v7 != v28)
      {
        free(v7);
      }

      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      this = llvm::GlobalVariable::eraseFromParent(*v3++);
    }

    while (v3 != v4);
  }

  return this;
}

void MTLGVEmulation::updateAIRDyldTable(MTLGVEmulation *this)
{
  v21[8] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v3 = GlobalVariable;
    if ((llvm::GlobalValue::isDeclaration(GlobalVariable) & 1) == 0)
    {
      v4 = *(v3 - 4);
      v5 = *(v4 + 5);
      v18 = 0;
      llvm::SmallVector<llvm::Constant *,8u>::SmallVector(&v19, v5 & 0x7FFFFFF, &v18);
      v6 = *(v4 + 5) & 0x7FFFFFF;
      if ((*(v4 + 5) & 0x7FFFFFF) != 0)
      {
        v7 = 0;
        v8 = v4;
        do
        {
          *(v19 + v7++) = *(v8 - 4 * v6);
          v6 = *(v4 + 5) & 0x7FFFFFF;
          v8 = (v8 + 32);
        }

        while (v7 < v6);
      }

      v9 = v19;
      if (v20)
      {
        v10 = (v19 + 8 * v20);
        do
        {
          for (i = *v9; ; i = *(i - 4 * (*(i + 5) & 0x7FFFFFF)))
          {
            v12 = *(i + 16);
            if (v12 != 5)
            {
              break;
            }

            isCast = llvm::ConstantExpr::isCast(i);
            if ((isCast & 1) == 0)
            {
              v14 = llvm::dbgs(isCast);
              llvm::raw_ostream::operator<<(v14, "non-cast constexpr in air.dyld_flat_table", 0x29uLL);
              llvm::Value::dump(i);
              v12 = *(i + 16);
              break;
            }
          }

          if (!v12)
          {
            v17 = 0;
            v18 = i;
            v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, &v18, &v17);
            if ((v15 & 1) != 0 && (v15 = *(v17 + 8)) != 0)
            {
              *v9 = llvm::ConstantExpr::getPointerCast();
            }

            else
            {
              v16 = llvm::dbgs(v15);
              llvm::raw_ostream::operator<<(v16, "Missing replacement for function in air.dyld_flat_table", 0x37uLL);
              llvm::Value::dump(v3);
              llvm::Value::dump(*v9);
            }
          }

          ++v9;
        }

        while (v9 != v10);
      }

      llvm::ConstantArray::get();
      llvm::GlobalVariable::setInitializer();
      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      llvm::Constant::destroyConstant(v4);
      if (v19 != v21)
      {
        free(v19);
      }
    }
  }
}

void MTLGVEmulation::updateFunctionUses(MTLGVEmulation *this, llvm::Function *a2, llvm::Function *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v38 = *(a2 + 1);
  v39 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v41, &v38);
  v5 = v41;
  if (!v42)
  {
    goto LABEL_48;
  }

  v6 = (v41 + 8 * v42);
  do
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    if (!*v5 || v8 != 84)
    {
      if (v7)
      {
        v14 = v8 > 0x14;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        if (llvm::Value::hasNUsesOrMore(*v5))
        {
          llvm::ConstantExpr::getBitCast();
          llvm::Constant::handleOperandChange();
        }

        goto LABEL_46;
      }

LABEL_14:
      if (*(a2 + 3) != *(a3 + 3))
      {
        v40[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        v16 = PointerCast;
        if (*(v7 + 16) != 83 || v7 == 0)
        {
          llvm::Instruction::insertBefore(PointerCast, v7);
        }

        else
        {
          v20 = *(v7 + 5);
          v21 = v20 & 0x7FFFFFF;
          if ((v20 & 0x7FFFFFF) != 0)
          {
            v22 = 0;
            v23 = 0;
            v24 = v7;
            do
            {
              if ((v20 & 0x40000000) != 0)
              {
                v25 = *(v7 - 1);
                if (*&v25[v22] == a2)
                {
                  goto LABEL_32;
                }
              }

              else if (*(v24 - 4 * v21) == a2)
              {
                v25 = v7 - 32 * v21;
LABEL_32:
                v26 = *&v25[32 * *(v7 + 15) + 8 * v23];
                v27 = *(v26 + 40);
                if (v27 == v26 + 40)
                {
                  v30 = 0;
                }

                else
                {
                  v28 = (v27 - 24);
                  if (v27)
                  {
                    v29 = v27 - 24;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (*(v29 + 16) - 29 >= 0xB)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v28;
                  }
                }

                llvm::Instruction::insertBefore(v16, v30);
                v20 = *(v7 + 5);
              }

              ++v23;
              v21 = v20 & 0x7FFFFFF;
              v24 = (v24 + 32);
              v22 += 32;
            }

            while (v23 < v21);
          }
        }
      }

      llvm::User::replaceUsesOfWith();
      goto LABEL_46;
    }

    if (*(v7 - 4) != a2)
    {
      goto LABEL_14;
    }

    v9 = *(a3 + 12);
    v35[0] = 0;
    llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v38, v9, v35);
    v37 = *(*(v7 + 5) + 56);
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v37);
    v11 = 0;
    *v38 = v10[1];
    v12 = v7;
    while (v11 < llvm::compat::getNumArgOperands(v7))
    {
      v13 = v38 + 8 * v11++;
      *(v13 + 1) = *(v12 - 4 * (*(v7 + 5) & 0x7FFFFFF));
      v12 = (v12 + 32);
    }

    if (a3)
    {
      v19 = *(a3 + 3);
    }

    else
    {
      v19 = 0;
    }

    v36 = 257;
    v31 = llvm::CallInst::Create(v19, a3, v38, v39, 0, 0, v35, 0);
    v32 = *(v31 + 9) & 0xFFFC | *(v7 + 9) & 3;
    *(v31 + 9) = v32;
    *(v31 + 9) = v32 & 0xF003 | *(v7 + 9) & 0xFFC;
    llvm::ReplaceInstWithInst(v7, v31, v33);
    if (v38 != v40)
    {
      free(v38);
    }

LABEL_46:
    ++v5;
  }

  while (v5 != v6);
  v5 = v41;
LABEL_48:
  if (v5 != v43)
  {
    free(v5);
  }
}

void MTLGVEmulation::updateIndirectCalls(MTLGVEmulation *this, llvm::Function *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v29 = v31;
  v30 = 0x400000000;
  v3 = a2 + 72;
  v4 = *(a2 + 10);
  if (v4 == a2 + 72)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v4 - 24;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = *(v5 + 6);
      if (v6 != v5 + 40)
      {
        break;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  if (v4 != v3)
  {
    do
    {
      v7 = v6 - 24;
      if (!v6)
      {
        v7 = 0;
      }

      if (v7[16] == 84)
      {
        v26 = v7;
        v8 = *(v7 - 4);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v7 + 9))
        {
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v29, &v26);
        }
      }

      v6 = *(v6 + 1);
      v9 = v4 - 24;
      if (!v4)
      {
        v9 = 0;
      }

      while (v6 == v9 + 40)
      {
        v4 = *(v4 + 1);
        if (v4 == v3)
        {
          break;
        }

        v9 = v4 - 24;
        if (!v4)
        {
          v9 = 0;
        }

        v6 = *(v9 + 6);
      }
    }

    while (v4 != v3);
    v10 = v29;
    if (v30)
    {
      v11 = v29 + 8 * v30;
      do
      {
        v12 = *v10;
        inserted = MetalModulePass::insertArgumentType(this, *(*v10 + 72), *(this + 24), 0);
        llvm::PointerType::get();
        v28[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        llvm::Instruction::insertBefore(PointerCast, v12);
        NumArgOperands = llvm::compat::getNumArgOperands(v12);
        v23[0] = 0;
        llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v26, (NumArgOperands + 1), v23);
        v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v25);
        v17 = 0;
        *v26 = v16[1];
        v18 = v12;
        while (v17 < llvm::compat::getNumArgOperands(v12))
        {
          v19 = v26 + 8 * v17++;
          *(v19 + 1) = *(v18 - 32 * (*(v12 + 20) & 0x7FFFFFF));
          v18 += 32;
        }

        v24 = 257;
        v20 = llvm::CallInst::Create(inserted, PointerCast, v26, v27, 0, 0, v23, 0);
        v21 = *(v20 + 9) & 0xF003 | (4 * ((*(v12 + 18) >> 2) & 0x3FF));
        *(v20 + 9) = v21;
        *(v20 + 9) = v21 & 0xFFFC | *(v12 + 18) & 3;
        llvm::ReplaceInstWithInst(v12, v20, v22);
        llvm::User::replaceUsesOfWith();
        if (v26 != v28)
        {
          free(v26);
        }

        v10 += 8;
      }

      while (v10 != v11);
      v10 = v29;
    }

    if (v10 != v31)
    {
      free(v10);
    }
  }
}

void sub_2579EC610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27 != a9)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _OWORD *a4)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v11 = MEMORY[0x259C6A8D0](a3 + 25, 8);
  v12 = v11;
  v13 = v11 + 24;
  if (a3)
  {
    memcpy((v11 + 24), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  *(v12 + 8) = *a4;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v9 = MEMORY[0x259C6A8D0](a3 + 25, 8);
  v10 = v9;
  v11 = v9 + 24;
  if (a3)
  {
    memcpy((v9 + 24), a2, a3);
  }

  *(v11 + a3) = 0;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = a3;
  *i = v10;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void *llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579EC8B8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateAlloca(llvm::BasicBlock **this, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  Module = llvm::BasicBlock::getModule(this[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v9 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v9, a4);
}

uint64_t MTLGVEmulation::getPayloadArg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8 * *(a3 + 8) + 16);
  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v3 - 8 * v4 + 8 * v6);
    String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
    if (v9 == 11 && *String == 0x6C7961702E726961 && *(String + 3) == 0x64616F6C7961702ELL)
    {
      break;
    }

    ++v6;
    v4 = *(v3 + 8);
    if (v6 >= v4)
    {
      return 0;
    }
  }

  v12 = *(*(v7 - 8 * *(v7 + 8)) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if (*(a2 + 18))
  {
    llvm::Function::BuildLazyArguments(a2);
  }

  return *(a2 + 88) + 40 * v14;
}

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2, unsigned __int16 a3, uint64_t a4, unsigned __int16 a5, llvm::IntegerType *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
}

uint64_t *llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t *llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = v2 - 24;
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(uint64_t *a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (result)
  {
    if (!*(result + 16) && *(result + 24) == *(a2 + 72))
    {
      result = llvm::Value::getName(result);
      if (v5 >= 0xD && *result == 0x65746E692E726961 && *(result + 5) == 0x746365737265746ELL)
      {
        v7 = *a1;
        v8 = a2;
        return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v7, &v8);
      }
    }
  }

  return result;
}

void *llvm::SmallVector<llvm::Constant *,8u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579ECD28(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

llvm::Module *MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(int a1, llvm::Module *this, int a3, int a4, int *a5, llvm::CmpInst ***a6, int a7)
{
  v149 = a6;
  v150 = a5;
  LODWORD(v154) = a4;
  v205[38] = *MEMORY[0x277D85DE8];
  v157 = *this;
  v191[0] = "air.vertex";
  v192[8] = 259;
  v151 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v191);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  memset(v181, 0, sizeof(v181));
  std::vector<BOOL>::reserve(v181, *(v11 + 96));
  v179 = 0;
  v178 = 0;
  v180 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v178, *(v11 + 96));
  v175 = 0;
  v176 = 0;
  v177 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v175, *(v11 + 96));
  v12 = *(Operand + 8);
  if (v12 >= 4 && (v13 = *(Operand - 8 * v12 + 24), v14 = *(v13 + 8), v14 >= 2) && (v15 = llvm::MDString::getString(*(v13 - 8 * v14)), v16 == 9) && (*v15 == 0x637461702E726961 ? (v17 = *(v15 + 8) == 104) : (v17 = 0), v17))
  {
    String = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8) + 8));
    if (v131 == 8)
    {
      v19 = 0;
      v132 = bswap64(*String);
      v133 = v132 >= 0x747269616E676C65;
      v134 = v132 > 0x747269616E676C65;
      v135 = !v133;
      v18 = v134 == v135;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v172 = 0;
  v173 = 0;
  v174 = 0;
  std::vector<BuiltInInfo>::reserve(&v172, 0xAuLL);
  LOBYTE(v191[0]) = -1;
  std::vector<signed char>::vector[abi:ne200100](v171, 10, v191);
  std::vector<unsigned int>::vector[abi:ne200100](v170, *(v11 + 96));
  MTLFrameworkPass::getArgumentMetadataIndices(*(Operand - 8 * *(Operand + 8) + 16), v170);
  Int32Ty = *(Operand - 8 * *(Operand + 8) + 16);
  v20 = *(v11 + 96);
  if (*(v11 + 18))
  {
    llvm::Function::BuildLazyArguments(v11);
  }

  LODWORD(v140) = v19;
  LODWORD(v139) = v18;
  LODWORD(v141) = a7;
  LODWORD(v138) = a3;
  v145 = v11;
  v136 = NamedMetadata;
  v142 = Operand;
  if (v20 < 1)
  {
    v155 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v155 = 0;
    v156 = 0;
    v23 = 0;
    v24 = *(v145 + 11);
    Int8Ty = &v190;
    Int64Ty = v20 & 0x7FFFFFFF;
    do
    {
      if (*(v170[0] + v21) != -1)
      {
        DataLayout = llvm::Module::getDataLayout(v151);
        llvm::DataLayout::DataLayout(v191, DataLayout);
        MTLArgumentData::MTLArgumentData(&v184);
      }

      LOBYTE(v191[0]) = 0;
      std::vector<BOOL>::push_back(v181, v191);
      if (v23 >= v156)
      {
        v152 = v21;
        v26 = v22;
        v27 = v23 - v155;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v155) >> 2);
        v29 = v28 + 1;
        if (v28 + 1 > 0x1555555555555555)
        {
          std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v156 - v155) >> 2) > v29)
        {
          v29 = 0x5555555555555556 * ((v156 - v155) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v30 = 0x1555555555555555;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          if (v30 <= 0x1555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v31 = 12 * v28;
        v156 = 0;
        *v31 = 0;
        *(v31 + 1) = 11;
        *(v31 + 4) = -1;
        *(v31 + 8) = 0;
        v23 = 12 * v28 + 12;
        memcpy((12 * v28 + 12 * (v27 / -12)), v155, v27);
        if (v155)
        {
          operator delete(v155);
        }

        v155 = (12 * v28 + 12 * (v27 / -12));
        v22 = v26;
        v21 = v152;
      }

      else
      {
        *v23 = 0;
        *(v23 + 1) = 11;
        *(v23 + 4) = -1;
        *(v23 + 8) = 0;
        v23 += 12;
      }

      v24 += 40;
      v21 = (v21 + 1);
    }

    while (v21 != Int64Ty);
  }

  LOBYTE(v191[0]) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v168, 10, v191);
  v168[1] = 1;
  v33 = v157;
  v34 = v145;
  if (v140)
  {
    *v168 = 1;
  }

  else
  {
    v168[3] = 1;
    if (v139)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v168[4] = v35;
  }

  if (v141)
  {
    v168[8] = 1;
  }

  if (v154)
  {
    Int8Ty = 0;
    v36 = -1;
  }

  else
  {
    Int8Ty = llvm::Type::getInt8Ty(v33, v32);
    v37 = llvm::PointerType::get();
    v38 = v179;
    v39 = v179 - v178;
    if (v179 >= v180)
    {
      v41 = v39 >> 3;
      v42 = (v39 >> 3) + 1;
      if (v42 >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v43 = (v180 - v178) >> 2;
      if (v43 <= v42)
      {
        v43 = (v39 >> 3) + 1;
      }

      if (v180 - v178 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v178, v44);
      }

      *(8 * v41) = v37;
      v40 = 8 * v41 + 8;
      v45 = (8 * v41 - (v179 - v178));
      memcpy(v45, v178, v179 - v178);
      v46 = v178;
      v178 = v45;
      v179 = v40;
      v180 = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v179 = v37;
      v40 = (v38 + 8);
    }

    v179 = v40;
    MTLFrameworkPass::appendBufferMetadata(v157, &v175, v138, 0);
    v36 = (v39 >> 3);
    v33 = v157;
  }

  *&v47 = -1;
  *(&v47 + 1) = -1;
  v167[3] = v47;
  v167[4] = v47;
  v167[1] = v47;
  v167[2] = v47;
  v167[0] = v47;
  v48 = v33;
  Int1Ty = llvm::Type::getInt1Ty(v33, v32);
  v138 = v36;
  Int32Ty = llvm::Type::getInt32Ty(v48, v50);
  Int64Ty = llvm::Type::getInt64Ty(v48, v51);
  MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v172, v171, &v168);
  if ((v154 & 1) == 0)
  {
    v53 = v172;
    for (i = v173; v53 != i; *(v167 + v56) = v52)
    {
      LLVMVectorType = MTLFrameworkPass::getLLVMVectorType(v157, *(v53 + 1), v53[1]);
      v52 = MTLFrameworkPass::addBuiltInParameter(v157, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v53], &v178, &v175, LLVMVectorType, *(v53 + 1), v53[1]);
      v56 = *v53;
      v53 += 8;
    }
  }

  v137 = Int1Ty;
  v140 = &v136;
  v57 = **(*(v34 + 3) + 16);
  v143 = v192;
  v144 = v57;
  v191[0] = v192;
  v191[1] = 0x200000000;
  v195 = v157;
  v196 = &v204;
  v197 = v205;
  v198 = 0;
  v199 = 0;
  v200 = 512;
  v201 = 7;
  v194 = 0;
  v193 = 0;
  v141 = &v204;
  v203 = 0;
  v202 = 0;
  v204 = MEMORY[0x277D821C8] + 16;
  v139 = v205;
  v205[0] = MEMORY[0x277D82210] + 16;
  MEMORY[0x28223BE20](v52);
  if ((v61 & 0x7FFFFFE00) != 0)
  {
    v62 = v59;
  }

  else
  {
    v62 = v58;
  }

  v156 = &v136 - v60;
  bzero(&v136 - v60, v62);
  v152 = 0;
  v148 = 0;
  if ((v154 & 1) == 0)
  {
    llvm::Type::getVoidTy(v157, v63);
    v64 = llvm::FunctionType::get();
    *&v184 = "air.vertexDumpFunction";
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 259;
    v65 = llvm::Function::Create(v64, 0, &v184, v151);
    createDebugInfoForWrapperFunction(v157, v191, v65, v34);
    v67 = v172;
    v68 = v173;
    if (v172 == v173)
    {
LABEL_69:
      *&v184 = "Body";
      LOWORD(v185.__r_.__value_.__r.__words[2]) = 259;
      llvm::BasicBlock::Create(v157, &v184, v65, 0, v66);
    }

    while (1)
    {
      v69 = *(v67 + 1);
      if (v69 > 0x29)
      {
        break;
      }

      if (((1 << v69) & 0x10008) == 0)
      {
        if (((1 << v69) & 0x2020000000) == 0 && ((1 << v69) & 0x20200000000) == 0)
        {
          break;
        }

        llvm::Function::addParamAttr();
      }

      v67 += 8;
      if (v67 == v68)
      {
        goto LABEL_69;
      }
    }

    abort();
  }

  v145 = 0;
  v137 = 0;
  v138 = 0;
  *v150 = 0;
  v71 = v168;
  v70 = v169;
  if (v169 != v168)
  {
    v72 = 0;
    v73 = 0;
    do
    {
      if (v71[v73])
      {
        v74 = &v172[8 * *(v171[0] + (v72 >> 56))];
        VectorDataType = MTLDataTypeGetVectorDataType(*(v74 + 1), v74[1]);
        v76 = MTLFrameworkPass::getLLVMVectorType(v157, *(v74 + 1), v74[1]);
        v77 = v76;
        if (v154)
        {
          v78 = 0;
        }

        else
        {
          v78 = *&v156[8 * *(v167 + *v74)];
        }

        *&v184 = llvm::Type::getPrimitiveSizeInBits(v76);
        DWORD2(v184) = v79;
        v80 = llvm::TypeSize::operator unsigned long long() >> 3;
        if (v80 <= 4)
        {
          LODWORD(v80) = 4;
        }

        v81 = *v150;
        *v150 += (v80 + 3) & 0xFFFFFFFC;
        std::string::basic_string[abi:ne200100]<0>(&v165, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v74]);
        std::string::basic_string[abi:ne200100]<0>(&v163, &unk_257A6F51A);
        PostVertexDumpOutput::PostVertexDumpOutput(&v184, v77, v78, &v165, VectorDataType, 0, VectorDataType, &v163, v81);
        std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v149, &v184);
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }

        if (v164 < 0)
        {
          operator delete(v163);
        }

        if (v166 < 0)
        {
          operator delete(v165);
        }

        v71 = v168;
        v70 = v169;
      }

      ++v73;
      v72 += 0x100000000000000;
    }

    while (v73 < v70 - v71);
  }

  v82 = *(v142 - 8 * *(v142 + 8) + 8);
  if (v154)
  {
    v83 = 0;
  }

  else
  {
    v83 = v191;
  }

  std::string::basic_string[abi:ne200100]<0>(v161, &unk_257A6F51A);
  std::string::basic_string[abi:ne200100]<0>(v159, &unk_257A6F51A);
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke;
  v158[3] = &__block_descriptor_48_e320_v96__0r__Type___LLVMContext_b8b24I___Type__8__Value___Type___Use_Cb1b7Sb27b1b1b1b1b1_16_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___24Q48Q56Q64_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___72l;
  v158[4] = v150;
  v158[5] = v149;
  iterateAllContainedValues(v83, v144, v148, v82, v161, 0, 0, 0, v159, v158);
  v84 = v145;
  if (v160 < 0)
  {
    operator delete(v159[0]);
  }

  if (v162 < 0)
  {
    operator delete(v161[0]);
  }

  if ((v154 & 1) == 0)
  {
    v85 = llvm::ConstantInt::get();
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP(v191, Int8Ty, v84, v85, &v184);
    v87 = llvm::ConstantInt::get();
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    Mul = llvm::IRBuilderBase::CreateMul(v191, v152, v87, &v184, 0, 0);
    v89 = *(GEP + 9);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    v90 = llvm::IRBuilderBase::CreateGEP(v191, v89, GEP, Mul, &v184);
    v92 = *v149;
    v156 = v149[1];
    if (v92 != v156)
    {
      v93 = v90;
      v154 = v90;
      do
      {
        v184 = *v92;
        if (*(v92 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *(v92 + 16), *(v92 + 24));
        }

        else
        {
          v94 = *(v92 + 16);
          v185.__r_.__value_.__r.__words[2] = *(v92 + 32);
          *&v185.__r_.__value_.__l.__data_ = v94;
        }

        v95 = *(v92 + 40);
        v187 = *(v92 + 56);
        v186 = v95;
        if (*(v92 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v188, *(v92 + 64), *(v92 + 72));
        }

        else
        {
          v96 = *(v92 + 64);
          v188.__r_.__value_.__r.__words[2] = *(v92 + 80);
          *&v188.__r_.__value_.__l.__data_ = v96;
        }

        v189 = *(v92 + 88);
        v97 = *(&v184 + 1);
        v98 = *(v93 + 9);
        v99 = llvm::ConstantInt::get();
        v183 = 257;
        v100 = llvm::IRBuilderBase::CreateGEP(v191, v98, v93, v99, v182);
        v101 = llvm::PointerType::get();
        v183 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v191, 49, v100, v101, v182);
        v104 = *v97;
        if ((*(*v97 + 8) & 0xFE) == 0x12)
        {
          v105 = *(v104 + 32);
          v106 = *(v104 + 24);
          llvm::Type::getInt32Ty(*v104, v102);
          v107 = llvm::PointerType::get();
          v183 = 257;
          v108 = llvm::IRBuilderBase::CreateCast(v191, 49, Cast, v107, v182);
          if (v105)
          {
            v109 = v108;
            for (j = 0; j != v105; ++j)
            {
              v111 = llvm::ConstantInt::get();
              v183 = 257;
              Element = llvm::IRBuilderBase::CreateExtractElement(v191, v97, v111, v182, v112);
              v183 = 257;
              v114 = llvm::IRBuilderBase::CreateGEP(v191, v106, v109, v111, v182);
              llvm::IRBuilderBase::CreateAlignedStore(v191, Element, v114, 0, 0);
            }
          }
        }

        else
        {
          llvm::IRBuilderBase::CreateAlignedStore(v191, v97, Cast, 258, 0);
        }

        v93 = v154;
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }

        v92 += 96;
      }

      while (v92 != v156);
    }

    v115 = v138;
    v116 = llvm::BranchInst::Create(v138, 0, v91);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    llvm::IRBuilderBase::Insert<llvm::CastInst>(v191, v116, &v184);
    llvm::IRBuilderBase::SetInsertPoint(v191, v115, v115 + 40);
    v117 = v142;
    v119 = llvm::ReturnInst::Create(v195, 0, 0, v118);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    v120 = llvm::IRBuilderBase::Insert<llvm::CastInst>(v191, v119, &v184);
    v121 = *(v117 + 8);
    MEMORY[0x28223BE20](v120);
    v123 = (&v136 - ((v122 + 15) & 0xFFFFFFFF0));
    if (v122 >= 0x200)
    {
      v124 = 512;
    }

    else
    {
      v124 = v122;
    }

    bzero(&v136 - ((v122 + 15) & 0xFFFFFFFF0), v124);
    *v123 = llvm::ValueAsMetadata::get();
    v123[1] = llvm::MDTuple::getImpl();
    v123[2] = llvm::MDTuple::getImpl();
    if (v121 >= 4)
    {
      v125 = (v117 - 8 * *(v117 + 8) + 24);
      v126 = v123 + 3;
      v127 = v121 - 3;
      do
      {
        v128 = *v125++;
        *v126++ = v128;
        --v127;
      }

      while (v127);
    }

    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::eraseFromParent(v136);
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v139);
  llvm::IRBuilderFolder::~IRBuilderFolder(v141);
  if (v191[0] != v143)
  {
    free(v191[0]);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v170[0])
  {
    v170[1] = v170[0];
    operator delete(v170[0]);
  }

  if (v171[0])
  {
    v171[1] = v171[0];
    operator delete(v171[0]);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  if (v155)
  {
    operator delete(v155);
  }

  if (v181[0])
  {
    operator delete(v181[0]);
  }

  return v151;
}