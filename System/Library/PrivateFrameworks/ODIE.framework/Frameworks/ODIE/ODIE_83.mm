const mlir::Operation *llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::insert(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(a1 + 128);
  v8 = *(v6 + 16);
  v9 = *v7;
  result = *a1;
  if (*a1)
  {
    *a1 = *result;
  }

  else
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((a1 + 8), 0x20uLL, 3);
  }

  *(result + 2) = *a2;
  *(result + 3) = *a3;
  *result = v8;
  *(result + 1) = v9;
  *v7 = result;
  *(v6 + 16) = result;
  return result;
}

const mlir::Operation **llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::doFind<mlir::Operation const*>(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2 - 1;
  v6 = (a2 - 1) & mlir::OperationEquivalence::computeHash(*a3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v7 = (a1 + 16 * v6);
  {
    v20 = 1;
    while (*v7 != -4096)
    {
      v21 = v20 + 1;
      v6 = (v6 + v20) & v5;
      v7 = (a1 + 16 * v6);
      v20 = v21;
      if (isEqual)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t anonymous namespace::SimpleOperationInfo::isEqual(_anonymous_namespace_::SimpleOperationInfo *this, const mlir::Operation *a2, const mlir::Operation *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a2)
  {
    return 1;
  }

  result = 0;
  if (a2 != -4096 && this != -8192 && this != -4096 && a2 != -8192)
  {
    return mlir::OperationEquivalence::isEquivalentTo(this, a2, 1, a4, a5, a6, a7, a8);
  }

  return result;
}

unint64_t mlir::OperationEquivalence::directHashValue(unint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
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
        v6 = (a1 + 24 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<anonymous namespace::CSEDriver::replaceUsesAndDelete(llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>> &,mlir::Operation *,mlir::Operation *,BOOL)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 16);
}

const mlir::Operation **llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t *a3, const mlir::Operation ***a4)
{
  if (a2)
  {
    v7 = 1;
    v8 = a2 - 1;
    v9 = (a2 - 1) & mlir::OperationEquivalence::computeHash(*a3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v10 = (a1 + 16 * v9);
    {
      v23 = 0;
      v24 = 1;
      while (*v10 != -4096)
      {
        if (*v10 == -8192 && v23 == 0)
        {
          v25 = v10;
        }

        else
        {
          v25 = v23;
        }

        v26 = v24 + 1;
        v9 = (v9 + v24) & v8;
        v10 = (a1 + 16 * v9);
        v23 = v25;
        v7 = 1;
        v24 = v26;
        if (isEqual)
        {
          goto LABEL_11;
        }
      }

      v7 = 0;
      if (v23)
      {
        v10 = v23;
      }
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

LABEL_11:
  *a4 = v10;
  return v7;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          v20 = v29;
          *v29 = *v19;
          v20[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 2;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

void std::__split_buffer<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *,std::allocator<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *&>(unint64_t *a1, void *a2)
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

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
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

void anonymous namespace::CSE::~CSE(_anonymous_namespace_::CSE *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::CSE::runOnOperation(_anonymous_namespace_::CSE *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  v35[1] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  memset(&v35[2], 0, 24);
  v35[0] = &unk_286E76228;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v25 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID();
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((v2 + 32), &v25);
  v7 = v6 == *(v2 + 32) + 16 * *(v2 + 48) || v6 == 0;
  v8 = (v6 + 8);
  if (v7)
  {
    v8 = (v2 + 64);
  }

  v9 = *v8;
  if (*(v2 + 64) == v9)
  {
    if (v4)
    {
      v10 = mlir::detail::AnalysisMap::getAnalysisName<mlir::DominanceInfo>();
      mlir::PassInstrumentor::runBeforeAnalysis(v4, v10, v11, v25, *(v2 + 24));
    }

    operator new();
  }

  v12 = *(*(v2 + 56) + 16 * v9 + 8) + 8;
  v25 = v35;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = v12;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v13 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v36 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v37[2] = v38;
  v37[3] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0;
  v39[0] = 0;
  v39[1] = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v14 = *(v13 + 44);
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = (((v13 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v13 + 40));
    v16 = 24 * (v14 & 0x7FFFFF);
    do
    {
      v15 += 3;
      v16 -= 24;
    }

    while (v16);
    v18 = __p;
    v17 = v27;
    if (__p != v27)
    {
      do
      {
        v19 = *v18++;
        (*(*v25 + 16))(v25, v19);
      }

      while (v18 != v17);
      v17 = __p;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = v27;
  MEMORY[0x25F891030](v40, 8);
  v36 = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v37);
  if (v17 == v20)
  {
    v22 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID();
  }

  else
  {
    v21 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID();
    llvm::SmallPtrSetImpl<mlir::TypeID>::insert(&v36, (this + 56), v21);
    if ((atomic_load_explicit(&qword_27FC22D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22D80))
    {
      v23 = llvm::getTypeName<mlir::PostDominanceInfo>();
      qword_27FC22D78 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v23, v24);
      __cxa_guard_release(&qword_27FC22D80);
    }

    v22 = qword_27FC22D78;
  }

  llvm::SmallPtrSetImpl<mlir::TypeID>::insert(&v36, (this + 56), v22);
  MEMORY[0x25F891030](v30, 8);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

uint64_t mlir::detail::AnalysisMap::getAnalysisName<mlir::DominanceInfo>()
{
  if ((atomic_load_explicit(&qword_27FC22D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22D70))
  {
    qword_27FC22D60 = llvm::detail::getTypeNameImpl<mlir::DominanceInfo>();
    *algn_27FC22D68 = v4;
    __cxa_guard_release(&qword_27FC22D70);
  }

  result = qword_27FC22D60;
  if (*algn_27FC22D68 >= 6uLL)
  {
    if (*qword_27FC22D60 == 1919511661 && *(qword_27FC22D60 + 4) == 14906)
    {
      return qword_27FC22D60 + 6;
    }

    else if (*algn_27FC22D68 >= 0x17uLL && *qword_27FC22D60 == 0x6F6D796E6F6E6128 && *(qword_27FC22D60 + 8) == 0x73656D616E207375 && *(qword_27FC22D60 + 15) == 0x3A3A296563617073)
    {
      return qword_27FC22D60 + 23;
    }
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC22D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22D58))
  {
    v1 = llvm::getTypeName<mlir::DominanceInfo>();
    _MergedGlobals_47 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC22D58);
  }

  return _MergedGlobals_47;
}

uint64_t llvm::getTypeName<mlir::DominanceInfo>()
{
  if ((atomic_load_explicit(&qword_27FC22D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22D70))
  {
    qword_27FC22D60 = llvm::detail::getTypeNameImpl<mlir::DominanceInfo>();
    *algn_27FC22D68 = v1;
    __cxa_guard_release(&qword_27FC22D70);
  }

  return qword_27FC22D60;
}

const char *llvm::detail::getTypeNameImpl<mlir::DominanceInfo>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DominanceInfo]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::detail::AnalysisModel<mlir::DominanceInfo>::~AnalysisModel(void *a1)
{
  *a1 = &unk_286E98EC8;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1));
  return a1;
}

void mlir::detail::AnalysisModel<mlir::DominanceInfo>::~AnalysisModel(void *a1)
{
  *a1 = &unk_286E98EC8;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1));

  JUMPOUT(0x25F891040);
}

BOOL mlir::detail::AnalysisModel<mlir::DominanceInfo>::invalidate(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v3 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID();
  v4 = llvm::SmallPtrSetImplBase::contains_imp(a2, v3);
  if (!v4)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID();
    llvm::SmallPtrSetImplBase::erase_imp(a2, v5);
  }

  return !v4;
}

const void **llvm::SmallPtrSetImpl<mlir::TypeID>::insert(uint64_t a1, llvm::SmallPtrSetImplBase *this, char *a3)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(this, a3);
  v7 = 8;
  if (*(this + 20))
  {
    v7 = 12;
  }

  v8 = (*this + 8 * *(this + v7));
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6;
  return result;
}

uint64_t llvm::getTypeName<mlir::PostDominanceInfo>()
{
  if ((atomic_load_explicit(&qword_27FC22D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22D98))
  {
    qword_27FC22D88 = llvm::detail::getTypeNameImpl<mlir::PostDominanceInfo>();
    unk_27FC22D90 = v1;
    __cxa_guard_release(&qword_27FC22D98);
  }

  return qword_27FC22D88;
}

const char *llvm::detail::getTypeNameImpl<mlir::PostDominanceInfo>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PostDominanceInfo]";
  v6 = 85;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::InlinerPass::~InlinerPass(_anonymous_namespace_::InlinerPass *this)
{
  *this = &unk_286E98EF0;
  llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(this + 1272);
  std::__function::__value_func<void ()(mlir::OpPassManager &)>::~__value_func[abi:nn200100](this + 1240);
  *this = &unk_286E98F60;
  *(this + 130) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](this + 1192);
  llvm::cl::Option::~Option(this + 130);
  *(this + 105) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](this + 992);
  llvm::cl::Option::~Option(this + 105);
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E98EF0;
  llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(this + 1272);
  std::__function::__value_func<void ()(mlir::OpPassManager &)>::~__value_func[abi:nn200100](this + 1240);
  *this = &unk_286E98F60;
  *(this + 130) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](this + 1192);
  llvm::cl::Option::~Option(this + 130);
  *(this + 105) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](this + 992);
  llvm::cl::Option::~Option(this + 105);
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InlinerPass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((mlir::Pass::initializeOptions(a1, a2, a3, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v6 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    v8 = *(a1 + 464);
    if (v8)
    {
      std::string::__init_copy_ctor_external(&v20, *v6, v8);
LABEL_8:
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
      }

      else
      {
        v19 = v20;
      }

      operator new();
    }
  }

  else if (*(a1 + 479))
  {
    *&v20.__r_.__value_.__l.__data_ = *v6;
    v20.__r_.__value_.__r.__words[2] = *(a1 + 472);
    goto LABEL_8;
  }

  if (*(a1 + 344))
  {
    v22 = 0;
    std::__function::__value_func<void ()(mlir::OpPassManager &)>::operator=[abi:nn200100](a1 + 1240, v21);
    std::__function::__value_func<void ()(mlir::OpPassManager &)>::~__value_func[abi:nn200100](v21);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0x1000000000;
  v9 = *(a1 + 696);
  if (v9 != *(a1 + 704))
  {
    v20.__r_.__value_.__r.__words[0] = 0;
    mlir::OpPassManager::operator=(&v20, v9);
  }

  v10 = *(a1 + 1272);
  *(a1 + 1272) = 0;
  v16 = 0;
  v17 = 0;
  LODWORD(v18) = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v15 = 16;
  v20.__r_.__value_.__r.__words[0] = v10;
  v11 = *(a1 + 1280);
  *(a1 + 1280) = 0;
  v20.__r_.__value_.__l.__size_ = v11;
  v12 = *(a1 + 1288);
  *(a1 + 1288) = 0;
  v20.__r_.__value_.__r.__words[2] = v12 | 0x1000000000;
  llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(&v20);
  llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(v13);
  *(a1 + 1296) = *(a1 + 960);
  llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(&v16);
  return 1;
}

void anonymous namespace::InlinerPass::runOnOperation(_anonymous_namespace_::InlinerPass *this)
{
  v23[17] = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v16[0] = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID();
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((v2 + 32), v16);
  v7 = v6 == *(v2 + 32) + 16 * *(v2 + 48) || v6 == 0;
  v8 = (v6 + 8);
  if (v7)
  {
    v8 = (v2 + 64);
  }

  v9 = *v8;
  if (*(v2 + 64) == v9)
  {
    if (v4)
    {
      v10 = mlir::detail::AnalysisMap::getAnalysisName<mlir::CallGraph>();
      mlir::PassInstrumentor::runBeforeAnalysis(v4, v10, v11, v16[0], *(v2 + 24));
    }

    operator new();
  }

  v12 = *(*(v2 + 56) + 16 * v9 + 8);
  v13 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v13 + 6) + 32))(*(v13 + 6), v14))
  {
    v15 = *(this + 6);
    v19[0] = &unk_286E99588;
    v19[3] = v19;
    v20 = v13;
    v18[0] = &unk_286E995D0;
    v18[1] = this;
    v18[3] = v18;
    v21[0] = v12 + 8;
    v21[1] = this;
    v22[3] = v22;
    v22[4] = this + 1240;
    v21[2] = v15;
    v22[0] = &unk_286E99588;
    v23[3] = v23;
    v23[0] = &unk_286E995D0;
    v23[1] = this;
    std::__function::__value_func<BOOL ()(mlir::Inliner::ResolvedCall const&)>::~__value_func[abi:nn200100](v18);
    std::__function::__value_func<llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::~__value_func[abi:nn200100](v19);
    if ((mlir::Inliner::doInlining(&v20) & 1) == 0)
    {
      *(this + 5) |= 4uLL;
    }

    std::__function::__value_func<BOOL ()(mlir::Inliner::ResolvedCall const&)>::~__value_func[abi:nn200100](v23);
    std::__function::__value_func<llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::~__value_func[abi:nn200100](v22);
  }

  else
  {
    v17 = 257;
    mlir::Operation::emitOpError(&v20, v13, v16);
    if (v20)
    {
      mlir::Diagnostic::operator<<<76ul>(v21, " was scheduled to run under the inliner, but does not define a symbol table");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    *(this + 5) |= 4uLL;
  }
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>(uint64_t a1, char *a2, _OWORD *a3, const char **a4)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = 0;
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  v9 = (v8 + 120);
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 152) = 0;
  v10 = (v8 + 152);
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 144) = &unk_286E79070;
  *v8 = &unk_286E792E0;
  *(v8 + 184) = &unk_286E791E0;
  v11 = (v8 + 192);
  *(v8 + 192) = &unk_286E75EB0;
  *(v8 + 216) = v8 + 192;
  llvm::cl::Option::setArgStr(v8, "default-pipeline", 16, v12, v13, v14);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(v19, a1);
  *(a1 + 32) = *a3;
  v15 = *a4;
  v16 = strlen(*a4);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memcpy(&__dst, v15, v16);
  }

  __dst.__r_.__value_.__s.__data_[v17] = 0;
  std::string::operator=(v9, &__dst);
  *(a1 + 176) = 1;
  std::string::operator=(v10, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  llvm::cl::Option::addArgument(a1);
  *(a1 + 232) = 0;
  *a1 = &unk_286E75DD0;
  *(a1 + 224) = &unk_286E75E50;
  __dst.__r_.__value_.__r.__words[0] = a1 + 224;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &__dst);
  v21[0] = &unk_286E99090;
  v21[1] = a1;
  v21[3] = v21;
  std::function<void ()(std::string const&)>::operator=(v11, v21);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v21);
  return a1;
}

void mlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 224);
}

{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 224);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E99090;
  a2[1] = v2;
  return result;
}

uint64_t mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::ListOption<llvm::cl::desc>(uint64_t a1, char *a2, _OWORD *a3)
{
  v6 = llvm::cl::Option::Option(a1, 1, 0);
  *(v6 + 168) = 0;
  *(v6 + 152) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 120) = 0u;
  *v6 = &unk_286E99258;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 176) = 0;
  *(v6 + 200) = &unk_286E84D08;
  *(v6 + 208) = &unk_286E992C0;
  *(v6 + 232) = v6 + 208;
  llvm::cl::Option::setArgStr(v6, "op-pipelines", 12, v7, v8, v9);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v11);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 248) = 0;
  *a1 = &unk_286E99198;
  *(a1 + 240) = &unk_286E99218;
  *(a1 + 256) = &unk_286E84D08;
  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 168) = 1;
  }

  v11[0] = a1 + 240;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v11);
  return a1;
}

BOOL mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    for (i = *(a1 + 128); i != v12; std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](i, 0))
    {
      --i;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  *(a1 + 248) = 1;
  v14 = a1;
  v15[0] = a1 + 256;
  v16[0] = a3;
  v16[1] = a4;
  v15[1] = a1;
  v15[2] = v16;
  v15[3] = &v14;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v15) & 1) == 0;
}

void mlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

uint64_t *llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::setDefault(uint64_t *result)
{
  v1 = result;
  v2 = (result + 15);
  v3 = result[15];
  result[23] = result[22];
  for (i = result[16]; i != v3; result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](i, 0))
  {
    --i;
  }

  v1[16] = v3;
  v5 = v1[18];
  if (v5 != v1[19])
  {
    std::vector<mlir::OpPassManager>::push_back[abi:nn200100](v2, *(v5 + 8));
  }

  return result;
}

llvm::raw_ostream *mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::print(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  if (*(result + 168) != 1)
  {
    goto LABEL_12;
  }

  v4 = *(result + 19) - *(result + 18);
  v5 = v4 >> 4;
  if (v4 >> 4 != (*(result + 16) - *(result + 15)) >> 3)
  {
    goto LABEL_12;
  }

  if ((v4 & 0xFFFFFFFF0) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v4 >> 4);
    while (1)
    {
      result = llvm::cl::OptionValue<mlir::OpPassManager>::compare(*(v3 + 18) + v6, (*(v3 + 15) + v7));
      if ((result & 1) == 0)
      {
        break;
      }

      ++v8;
      v7 += 8;
      v6 += 16;
      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }

    v9 = v8;
LABEL_10:
    v5 = (*(v3 + 16) - *(v3 + 15)) >> 3;
  }

  else
  {
    v9 = 0;
  }

  if (v5 != v9)
  {
LABEL_12:
    result = llvm::raw_ostream::operator<<(this, *(v3 + 2), *(v3 + 3));
    v10 = *(result + 4);
    if (*(result + 3) - v10 > 1uLL)
    {
      *v10 = 31549;
      *(result + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "={", 2uLL);
    }

    v11 = *(v3 + 15);
    v12 = *(v3 + 16);
    if (v11 != v12)
    {
      result = mlir::OpPassManager::printAsTextualPipeline(*(v3 + 15), this);
      for (i = v11 + 1; i != v12; ++i)
      {
        v14 = *(this + 4);
        if (*(this + 3) == v14)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v14 = 44;
          ++*(this + 4);
        }

        result = mlir::OpPassManager::printAsTextualPipeline(i, this);
      }
    }

    v15 = *(this + 4);
    if (*(this + 3) == v15)
    {

      return llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v15 = 125;
      ++*(this + 4);
    }
  }

  return result;
}

uint64_t *mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>((a1 + 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

uint64_t *non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>((a1 - 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E99258;
  std::__function::__value_func<void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<mlir::OpPassManager>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<mlir::OpPassManager>::__destroy_vector::operator()[abi:nn200100](&v3);

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, size_t a6)
{
  v15 = 0;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    for (i = *(a1 + 128); i != v12; std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](i, 0))
    {
      --i;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  v13 = llvm::cl::parser<mlir::OpPassManager>::parse((a1 + 200), a1, a3, a4, a5, a6, &v15);
  if ((v13 & 1) == 0)
  {
    std::vector<mlir::OpPassManager>::push_back[abi:nn200100]((a1 + 120), v15);
  }

  std::unique_ptr<mlir::OpPassManager>::reset[abi:nn200100](&v15, 0);
  return v13;
}

void llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(uint64_t a1)
{
  *a1 = &unk_286E99258;
  std::__function::__value_func<void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<mlir::OpPassManager>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<mlir::OpPassManager>::__destroy_vector::operator()[abi:nn200100](&v3);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E99258;
  std::__function::__value_func<void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<mlir::OpPassManager>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<mlir::OpPassManager>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void std::vector<mlir::OpPassManager>::push_back[abi:nn200100](char **a1, const mlir::detail::OpPassManagerImpl **a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    *v3 = 0;
    mlir::OpPassManager::operator=(v3, a2);
  }

  v5 = (v3 - *a1) >> 3;
  if (!((v5 + 1) >> 61))
  {
    v6 = v4 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= (v5 + 1))
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OpPassManager>>(v8);
    }

    v9 = (8 * v5);
    *v9 = 0;
    mlir::OpPassManager::operator=(v9, a2);
  }

  std::vector<mlir::OpPassManager>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OpPassManager>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__value_func<void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<llvm::cl::OptionValue<mlir::OpPassManager>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 2;
        std::unique_ptr<mlir::OpPassManager>::reset[abi:nn200100](v4 - 1, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<mlir::OpPassManager>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, uint64_t *a2, size_t a3)
{
  v5 = 0;
  if ((llvm::cl::parser<mlir::OpPassManager>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3, &v5) & 1) == 0)
  {
    std::vector<mlir::OpPassManager>::push_back[abi:nn200100]((**(a1 + 24) + 120), v5);
  }

  std::unique_ptr<mlir::OpPassManager>::reset[abi:nn200100](&v5, 0);
  return 0;
}

uint64_t *std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>(uint64_t *result, const mlir::detail::OpPassManagerImpl **a2, const mlir::detail::OpPassManagerImpl **a3, unint64_t a4)
{
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if (a4 > (v6 - *result) >> 3)
  {
    if (v7)
    {
      v8 = result[1];
      v9 = *result;
      if (v8 != v7)
      {
        do
        {
          std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](--v8, 0);
        }

        while (v8 != v7);
        v9 = *v5;
      }

      v5[1] = v7;
      operator delete(v9);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OpPassManager>>(v11);
      }
    }

    std::vector<mlir::OpPassManager>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  if (a4 <= (v12 - v7) >> 3)
  {
    if (a2 != a3)
    {
      mlir::OpPassManager::operator=(v7, a2);
    }

    while (v12 != v7)
    {
      result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](--v12, 0);
    }

    v5[1] = v7;
  }

  else
  {
    v13 = (v12 + a2 - v7);
    if (v12 != v7)
    {
      mlir::OpPassManager::operator=(v7, a2);
    }

    if (v13 != a3)
    {
      *v12 = 0;
      mlir::OpPassManager::operator=(v12, v13);
    }

    result[1] = v12;
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char **a2, _OWORD *a3, int **a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E77748;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79210;
  *(v8 + 144) = &unk_286E79150;
  v9 = (v8 + 152);
  *(v8 + 152) = &unk_286E776A0;
  *(v8 + 176) = v8 + 152;
  llvm::cl::Option::setArgStr(v8, "max-iterations", 14, v10, v11, v12);
  llvm::cl::sub::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>>(a2, 0, a1);
  *(a1 + 32) = *a3;
  v13 = **a4;
  *(a1 + 120) = v13;
  *(a1 + 140) = 1;
  *(a1 + 136) = v13;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 192) = 0;
  *a1 = &unk_286E993C8;
  *(a1 + 184) = &unk_286E99448;
  v15 = a1 + 184;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 20), &v15);
  v16[0] = &unk_286E99488;
  v16[1] = a1;
  v16[3] = v16;
  std::function<void ()(unsigned int const&)>::operator=(v9, v16);
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](v16);
  return a1;
}

void mlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void **a1)
{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

  v6 = *(a1 + 120);

  return write_unsigned<unsigned long long>(this, v6, 0, 0, 0);
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 120) = *(a2 - 64);
  *(result + 192) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void **a1)
{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

char **llvm::cl::sub::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>>(char **result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a3 + 88), result, v8);
  }

  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *a2;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a3 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E99488;
  a2[1] = v2;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>(uint64_t a1, char **a2, _OWORD *a3, int **a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E77748;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79210;
  *(v8 + 144) = &unk_286E79150;
  v9 = (v8 + 152);
  *(v8 + 152) = &unk_286E776A0;
  *(v8 + 176) = v8 + 152;
  llvm::cl::Option::setArgStr(v8, "inlining-threshold", 18, v10, v11, v12);
  llvm::cl::sub::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>>(a2, 0, a1);
  *(a1 + 32) = *a3;
  v13 = **a4;
  *(a1 + 120) = v13;
  *(a1 + 140) = 1;
  *(a1 + 136) = v13;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 192) = 0;
  *a1 = &unk_286E993C8;
  *(a1 + 184) = &unk_286E99448;
  v15 = a1 + 184;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 20), &v15);
  v16[0] = &unk_286E994D0;
  v16[1] = a1;
  v16[3] = v16;
  std::function<void ()(unsigned int const&)>::operator=(v9, v16);
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](v16);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E994D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E99518;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E99518;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E99518;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  v9 = llvm::errs(v3);

  return mlir::parsePassPipeline(v7, v8, a2, v9);
}

uint64_t mlir::detail::AnalysisMap::getAnalysisName<mlir::CallGraph>()
{
  if ((atomic_load_explicit(&qword_27FC22DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22DC8))
  {
    qword_27FC22DB8 = llvm::detail::getTypeNameImpl<mlir::CallGraph>();
    unk_27FC22DC0 = v4;
    __cxa_guard_release(&qword_27FC22DC8);
  }

  result = qword_27FC22DB8;
  if (unk_27FC22DC0 >= 6uLL)
  {
    if (*qword_27FC22DB8 == 1919511661 && *(qword_27FC22DB8 + 4) == 14906)
    {
      return qword_27FC22DB8 + 6;
    }

    else if (unk_27FC22DC0 >= 0x17uLL && *qword_27FC22DB8 == 0x6F6D796E6F6E6128 && *(qword_27FC22DB8 + 8) == 0x73656D616E207375 && *(qword_27FC22DB8 + 15) == 0x3A3A296563617073)
    {
      return qword_27FC22DB8 + 23;
    }
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC22DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22DB0))
  {
    v1 = llvm::getTypeName<mlir::CallGraph>();
    _MergedGlobals_48 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC22DB0);
  }

  return _MergedGlobals_48;
}

uint64_t llvm::getTypeName<mlir::CallGraph>()
{
  if ((atomic_load_explicit(&qword_27FC22DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22DC8))
  {
    qword_27FC22DB8 = llvm::detail::getTypeNameImpl<mlir::CallGraph>();
    unk_27FC22DC0 = v1;
    __cxa_guard_release(&qword_27FC22DC8);
  }

  return qword_27FC22DB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::CallGraph>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::CallGraph]";
  v6 = 77;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::AnalysisModel<mlir::CallGraph>::~AnalysisModel(uint64_t a1)
{
  *a1 = &unk_286E99560;
  v2 = *(a1 + 192);
  if (v2 != (a1 + 208))
  {
    free(v2);
  }

  if ((*(a1 + 152) & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 160), 8);
  }

  v3 = *(a1 + 96);
  if (v3 != (a1 + 112))
  {
    free(v3);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 64), 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector((a1 + 32));
  MEMORY[0x25F891030](*(a1 + 8), 8);
  return a1;
}

void mlir::detail::AnalysisModel<mlir::CallGraph>::~AnalysisModel(uint64_t a1)
{
  *a1 = &unk_286E99560;
  v2 = *(a1 + 192);
  if (v2 != (a1 + 208))
  {
    free(v2);
  }

  if ((*(a1 + 152) & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 160), 8);
  }

  v3 = *(a1 + 96);
  if (v3 != (a1 + 112))
  {
    free(v3);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 64), 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector((a1 + 32));
  MEMORY[0x25F891030](*(a1 + 8), 8);

  JUMPOUT(0x25F891040);
}

BOOL mlir::detail::AnalysisModel<mlir::CallGraph>::invalidate(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v3 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID();
  v4 = llvm::SmallPtrSetImplBase::contains_imp(a2, v3);
  if (!v4)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID();
    llvm::SmallPtrSetImplBase::erase_imp(a2, v5);
  }

  return !v4;
}

char ***llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 1;
    v5 = 2 * v3;
    do
    {
      v6 = v4[v5];
      v4[v5] = 0;
      if (v6)
      {
        v7 = *(v6 + 6);
        if (v7 != v6 + 64)
        {
          free(v7);
        }

        if ((v6[8] & 1) == 0)
        {
          MEMORY[0x25F891030](*(v6 + 2), 8);
        }

        MEMORY[0x25F891040](v6, 0x10A0C40D4B41969);
      }

      v5 -= 2;
    }

    while (v5 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E99588;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E995D0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 1160);
  if (!v2)
  {
    return 0;
  }

  if (v2 == -1)
  {
    return 1;
  }

  v3 = **(a2 + 16);
  v4 = **(a2 + 24);
  v19 = 0;
  v18 = &v19;
  v5 = *(v3 + 8);
  if (v5 == v3)
  {
    return 1;
  }

  do
  {
    v6 = v5 - 8;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = *(v6 + 40);
    v8 = v6 + 32;
    if (v7 != v6 + 32)
    {
      do
      {
        v9 = *(v7 + 8);
        mlir::detail::walk<mlir::ForwardIterator>(v7, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v18, 1);
        v7 = v9;
      }

      while (v9 != v8);
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v3);
  v10 = v19;
  if (!v19)
  {
    return 1;
  }

  v19 = 0;
  v18 = &v19;
  v11 = *(v4 + 8);
  if (v11 == v4)
  {
    v16 = 0;
  }

  else
  {
    do
    {
      v12 = v11 - 8;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = *(v12 + 40);
      v14 = v12 + 32;
      if (v13 != v12 + 32)
      {
        do
        {
          v15 = *(v13 + 8);
          mlir::detail::walk<mlir::ForwardIterator>(v13, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v18, 1);
          v13 = v15;
        }

        while (v15 != v14);
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v4);
    v16 = 100 * v19;
  }

  return v16 / v10 <= v2;
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Inliner::ResolvedCall const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<generateLocationsFromIR(llvm::raw_ostream &,llvm::StringRef,mlir::Operation *,mlir::OpPrintingFlags const&,llvm::StringRef)::$_0>(uint64_t **result, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 4);
  if (v2)
  {
    v4 = result;
    v5 = **result;
    v6 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v5 && v6 != v2)
      {
        result = mlir::FileLineColRange::get(*result[1], *(v5 + 16 * v6 + 8), *(v5 + 16 * v6 + 12));
        v8 = v4[2];
        if (v8[1])
        {
          v9 = v4[3];
          v12[0] = *(a2 + 24);
          v12[1] = mlir::NameLoc::get(*v8, result);
          result = mlir::FusedLoc::get(v12, 2, 0, *v9);
        }

        *(a2 + 24) = result;
      }
    }

    else
    {
      v10 = 1;
      while (v7 != -4096)
      {
        v11 = v6 + v10++;
        v6 = v11 & (v2 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::impl::LocationSnapshotBase<anonymous namespace::LocationSnapshotPass>::LocationSnapshotBase(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E99688;
  v5.n128_u64[0] = "The filename to print the generated IR";
  v5.n128_u64[1] = 38;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "filename", 8, &v5);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  v5.n128_u64[0] = "A tag to use when fusing the new locations with the original. If unset, the locations are replaced.";
  v5.n128_u64[1] = 99;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 576), (a1 + 144), "tag", 3, &v5);
  *(a1 + 576) = &unk_286E98FD0;
  *(a1 + 800) = &unk_286E99050;
  v5.n128_u64[0] = "Print debug info in MLIR output";
  v5.n128_u64[1] = 31;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 816), (a1 + 144), "print-debuginfo", 15, &v5, &v4);
  *(a1 + 816) = &unk_286E76DD0;
  *(a1 + 1000) = &unk_286E76E50;
  v5.n128_u64[0] = "Print the generic op form";
  v5.n128_u64[1] = 25;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 1016), (a1 + 144), "print-op-generic", 16, &v5, &v4);
  *(a1 + 1016) = &unk_286E76DD0;
  *(a1 + 1200) = &unk_286E76E50;
  v5.n128_u64[0] = "Print with local scope and inline information (eliding aliases for attributes, types, and locations";
  v5.n128_u64[1] = 99;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 1216), (a1 + 144), "print-local-scope", 17, &v5, &v4);
  *(a1 + 1216) = &unk_286E76DD0;
  *(a1 + 1400) = &unk_286E76E50;
  v5.n128_u64[0] = "Print pretty debug info in MLIR output";
  v5.n128_u64[1] = 38;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 1416), (a1 + 144), "pretty-debuginfo", 16, &v5, &v4);
  *(a1 + 1416) = &unk_286E76DD0;
  *(a1 + 1600) = &unk_286E76E50;
  return a1;
}

void anonymous namespace::LocationSnapshotPass::~LocationSnapshotPass(_anonymous_namespace_::LocationSnapshotPass *this)
{
  *this = &unk_286E99688;
  v2 = (this + 1416);
  *(this + 177) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1568);
  llvm::cl::Option::~Option(v2);
  *(this + 152) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1368);
  llvm::cl::Option::~Option(this + 152);
  *(this + 127) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1168);
  llvm::cl::Option::~Option(this + 127);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(this + 102);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E99688;
  v2 = (this + 1416);
  *(this + 177) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1568);
  llvm::cl::Option::~Option(v2);
  *(this + 152) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1368);
  llvm::cl::Option::~Option(this + 152);
  *(this + 127) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1168);
  llvm::cl::Option::~Option(this + 127);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(this + 102);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::LocationSnapshotPass::runOnOperation(_anonymous_namespace_::LocationSnapshotPass *this)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3 = *(this + 479);
  if (v3 >= 0)
  {
    v4 = this + 456;
  }

  else
  {
    v4 = *(this + 57);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 479);
  }

  else
  {
    v5 = *(this + 58);
  }

  mlir::OpPrintingFlags::OpPrintingFlags(&v14);
  if (*(this + 1536))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(this + 936) | v15 & 0xFFF8;
  if (*(this + 1136))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  v15 = v9;
  if (*(this + 1336) == 1)
  {
    v15 = v9 | 0x20;
  }

  v10 = (v2 & 0xFFFFFFFFFFFFFFF8);
  v26 = v28;
  v27 = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v26, v4, &v4[v5]);
  v11 = v27;
  if (v27)
  {
LABEL_16:
    memset(&v16, 0, sizeof(v16));
    mlir::openOutputFile(v26, v11);
  }

  v22 = "mlir_snapshot";
  v24 = 259;
  *&v19.__val_ = llvm::sys::fs::createTemporaryFile(&v22, "tmp.mlir", 8, &v26, 0);
  v19.__cat_ = v12;
  if (!v19.__val_)
  {
    v11 = v27;
    goto LABEL_16;
  }

  v18 = 257;
  mlir::Operation::emitError(&v22, v10, &v17);
  if (v22)
  {
    mlir::Diagnostic::operator<<<58ul>(&v23, "failed to generate temporary file for location snapshot: ");
  }

  std::error_code::message(&v16, &v19);
  if (v22)
  {
    v21 = 260;
    v20 = &v16;
    mlir::Diagnostic::operator<<(&v23, &v20);
  }

  v13 = v25 ^ 1;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  if (v26 != v28)
  {
    free(v26);
  }

  if ((v13 & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::operator=<std::string>(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 5, a2);
  data = a1[9].__r_.__value_.__l.__data_;
  if (data)
  {
    (*(*data + 48))(data, a2);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

void anonymous namespace::LoopInvariantCodeMotion::~LoopInvariantCodeMotion(_anonymous_namespace_::LoopInvariantCodeMotion *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::LoopInvariantCodeMotion::runOnOperation(_anonymous_namespace_::LoopInvariantCodeMotion *this)
{
  v1 = *(this + 5);
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::LoopLikeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LoopLikeOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (result)
  {

    return mlir::moveLoopInvariantCode(result, v3);
  }

  return result;
}

void anonymous namespace::SymbolDCE::~SymbolDCE(_anonymous_namespace_::SymbolDCE *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::SymbolDCE::runOnOperation(_anonymous_namespace_::SymbolDCE *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v2 + 48) + 32))(*(v2 + 48), v3))
  {
    v5 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v2, v4);
    v7 = *(v2 + 16);
    if (v7 && (v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (*(v8 + 16) ? (v9 = v5 == 0) : (v9 = 1), !v9))
    {
      v10 = (*(v6 + 32))(v6, v5);
    }

    else
    {
      v10 = 1;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    {
      v11[0] = &v15;
      v11[1] = this;
    }

    else
    {
      *(this + 5) |= 4uLL;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v12);
    MEMORY[0x25F891030](v12[0], 8);
    MEMORY[0x25F891030](v15, 8);
  }

  else
  {
    v14 = 257;
    mlir::Operation::emitOpError(&v15, v2, v12);
    if (v15)
    {
      mlir::Diagnostic::operator<<<74ul>(&v16, " was scheduled to run under SymbolDCE, but does not define a symbol table");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
    *(this + 5) |= 4uLL;
  }
}

BOOL anonymous namespace::SymbolDCE::computeLiveness(uint64_t a1, mlir::Operation *a2, char a3, uint64_t a4)
{
  v46[16] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 40);
  v7 = *(a1 + 44);
  v44 = v46;
  v45 = 0x1000000000;
  v9 = ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v8;
  for (i = *(v9 + 8); i != v9; i = *(i + 8))
  {
    v11 = i - 8;
    if (!i)
    {
      v11 = 0;
    }

    v12 = (v11 + 32);
    for (j = *(v11 + 40); j != v12; j = *(j + 1))
    {
      v14 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(j, a2);
      if (v14)
      {
        v16 = v14;
        v17 = v15;
        if ((a3 & 1) != 0 || (*(v15 + 32))(v15, v14)) && ((*(v17 + 112))(v17, v16))
        {
          continue;
        }

        v35[0] = j;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a4, v35, &v41);
        if (v43[0] != 1)
        {
          continue;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v44, j);
    }
  }

  while (1)
  {
    if (!v45)
    {
      v33 = 1;
      goto LABEL_46;
    }

    v18 = v44[v45 - 1];
    LODWORD(v45) = v45 - 1;
    v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v18 + 48) + 32))(*(v18 + 48), v19))
    {
      v21 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v18, v20);
      v23 = 1;
      if ((a3 & 1) == 0 && v21)
      {
        v23 = (*(v22 + 32))(v22, v21, 1);
      }

      {
        break;
      }
    }

    mlir::SymbolTable::getSymbolUses(v18, &__p);
    v24 = v40;
    if (v40)
    {
      v41 = v43;
      v42[1] = 4;
      v26 = __p;
      v25 = v39;
      if (__p != v39)
      {
        do
        {
          v42[0] = 0;
          v27 = *(v18 + 16);
          if (v27 && (v28 = *(v27 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v29 = *(v28 + 16);
          }

          else
          {
            v29 = 0;
          }

          if ((mlir::SymbolTableCollection::lookupSymbolIn(a2, v29, v26[1], &v41) & 1) != 0 && v42[0])
          {
            v30 = v41;
            v31 = 8 * v42[0];
            do
            {
              v34 = *v30;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a4, &v34, v35);
              if (v36 == 1)
              {
                llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v44, v34);
              }

              ++v30;
              v31 -= 8;
            }

            while (v31);
          }

          v26 += 2;
        }

        while (v26 != v25);
        if (v41 != v43)
        {
          free(v41);
        }
      }
    }

    else
    {
      v37 = 257;
      mlir::Operation::emitError(&v41, v18, v35);
      if (v41)
      {
        mlir::Diagnostic::operator<<<104ul>(v42, "operation contains potentially unknown symbol table, meaning that we can't reliable compute symbol uses");
      }

      v33 = (v43[184] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    }

    if (v40 == 1 && __p)
    {
      v39 = __p;
      operator delete(__p);
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v33 = 0;
LABEL_46:
  if (v44 != v46)
  {
    free(v44);
  }

  return v33;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::SymbolDCE::runOnOperation(void)::$_0>(uint64_t **a1, uint64_t a2)
{
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v6 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    for (i = *(v6 + 8); i != v6; i = *(i + 8))
    {
      v8 = i - 8;
      if (!i)
      {
        v8 = 0;
      }

      v9 = *(v8 + 40);
      v10 = (v8 + 32);
      if (v9 != (v8 + 32))
      {
        do
        {
          v11 = *(v9 + 1);
          if (mlir::SymbolOpInterface::classof(v9, v5))
          {
            v12 = *a1;
            v15 = v9;
            if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v12, &v15))
            {
              if (*(v9 + 2))
              {
                *(v9 + 2) = 0;
                v14 = *v9;
                v13 = *(v9 + 1);
                *v13 = *v9;
                *(v14 + 8) = v13;
                *v9 = 0;
                *(v9 + 1) = 0;
              }

              mlir::Operation::destroy(v9);
            }
          }

          v9 = v11;
        }

        while (v11 != v10);
      }
    }
  }
}

void anonymous namespace::ForallLowering::~ForallLowering(_anonymous_namespace_::ForallLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallLowering]";
  v6 = 99;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ForLowering::~ForLowering(_anonymous_namespace_::ForLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ForLowering::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a2;
  mlir::RewriterBase::splitBlock(a3, *(a3 + 24), *(a3 + 32));
}

uint64_t mlir::scf::ForOp::getODSOperands(mlir::scf::ForOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  if (*a1 + 8 * v12 == a2)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1, a3, a4, a5, a6);
    return (*a1 + v11);
  }

  else
  {
    v13 = a6 - a4;
    v14 = a6 - a4 + v12;
    if (v14 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v14, 8);
      v10 = *a1;
      v12 = *(a1 + 2);
    }

    v15 = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 >= v13)
    {
      llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v17[-v13], (v10 + 8 * v12));
      if (&v17[-v13] != v15)
      {
        memmove(&v15[8 * v13], v15, &v17[-v13] - v15);
      }

      if (a6 != v7)
      {
        v27 = (a3 + 32 * v7 + 24);
        v28 = v15;
        do
        {
          v29 = *v27;
          v27 += 4;
          *v28++ = v29;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v20 = v12 + v13;
      *(a1 + 2) = v20;
      if (v16 != v11)
      {
        memcpy((v10 + 8 * v20 - 8 * v19), v15, v18);
        v21 = (a3 + 32 * v7 + 24);
        v7 += v19;
        v22 = v15;
        do
        {
          v23 = *v21;
          v21 += 4;
          *v22++ = v23;
          --v19;
        }

        while (v19);
      }

      v24 = a6 - v7;
      if (a6 != v7)
      {
        v25 = (a3 + 32 * v7 + 24);
        do
        {
          v26 = *v25;
          v25 += 4;
          *v17++ = v26;
          --v24;
        }

        while (v24);
      }
    }
  }

  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForLowering]";
  v6 = 96;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::IfLowering::~IfLowering(_anonymous_namespace_::IfLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IfLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IfLowering]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ParallelLowering::~ParallelLowering(_anonymous_namespace_::ParallelLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ParallelLowering::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v76[8] = *MEMORY[0x277D85DE8];
  v50 = a2;
  v3 = *(a2 + 44);
  v4 = (a2 + 16 * ((v3 >> 23) & 1) + 64);
  v5 = *(((v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 32);
  v8 = *(*(v7 + 48) + 16);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
  {
    return 0;
  }

  v12 = *(a2 + 16 * ((v3 >> 23) & 1) + 76);
  v13 = (*(a2 + 16 * ((v3 >> 23) & 1) + 72) + v4[1] + *v4);
  if ((v3 & 0x800000) != 0)
  {
    v14 = *(a2 + 72);
  }

  else
  {
    v14 = 0;
  }

  v49 = *(a2 + 24);
  v66 = v68;
  v67 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v66, v14 + 32 * v13, 0, v14 + 32 * v13, (v12 + v13) - v13);
  v63 = v65;
  v64 = 0x400000000;
  v15 = *(v50 + 16 * ((*(v50 + 44) >> 23) & 1) + 72);
  if (v15 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v15, 8);
  }

  v60 = v62;
  v61 = 0x400000000;
  if (v67)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v60, &v66);
  }

  mlir::scf::ParallelOp::getInductionVars(&v69, &v50);
  v16 = *(v50 + 44);
  v17 = v50 + 16 * ((v16 >> 23) & 1);
  v20 = *(v17 + 64);
  v18 = v17 + 64;
  v19 = v20;
  if ((v16 & 0x800000) != 0)
  {
    v21 = *(v50 + 72);
    v22 = (*(v18 + 4) + v19);
    v23 = v22 - v19;
    v24 = v21 + 32 * v19;
    v25 = v21;
  }

  else
  {
    v21 = 0;
    v25 = 0;
    v22 = (*(v18 + 4) + v19);
    v23 = v22 - v19;
    v24 = 32 * v19;
  }

  v26 = v25 + 32 * v22;
  v27 = (*(v18 + 8) + v22) - v22;
  v51 = v53;
  v52 = 0x600000000;
  if (v70)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v51, &v69);
  }

  v54 = v21;
  v55 = v19;
  v56 = v24;
  v57 = v23;
  v58 = v26;
  v59 = v27;
  if (v69 != v71)
  {
    free(v69);
    v25 = v54;
    v19 = v55;
    v24 = v56;
    v23 = v57;
    v26 = v58;
    v27 = v59;
  }

  if (v52 && v19 && v23 && v27)
  {
    v28 = *(v25 + 24);
    v29 = *(v24 + 24);
    v30 = *(v26 + 24);
    v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForOp>((a3 + 1), *(**v49 + 32));
    v69 = v49;
    v70 = v31;
    v71[0] = v72;
    v71[1] = 0x400000000;
    v72[4] = v73;
    v72[5] = 0x400000000;
    v73[4] = v74;
    v73[5] = 0x400000000;
    v74[8] = 4;
    v74[9] = v75;
    v74[10] = 0x100000000;
    v75[1] = v76;
    v75[2] = 0x100000000;
    v76[1] = 0;
    v76[2] = 0;
    v76[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v76[4] = 0;
    v76[6] = 0;
    mlir::scf::ForOp::build((a3 + 1), &v69, v28, v29, v30, v66 & 0xFFFFFFFFFFFFFFF9, v67, v32, 0, v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  v69 = v71;
  v70 = 0x600000000;
  v33 = *(v50 + 36);
  if (v33 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, v33, 8);
    LODWORD(v33) = *(v50 + 36);
  }

  if (v33)
  {
    v34 = v33;
    v35 = v9 + 64;
    v36 = 24;
    v37 = 8;
    do
    {
      v38 = *(((v35 + 16 * ((*(v9 + 44) >> 23) & 1) + ((*(v9 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40) + v37);
      if (v38)
      {
        v39 = v38 - 8;
      }

      else
      {
        v39 = 0;
      }

      v40 = v9;
      v41 = *(v66 + v70);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v69, *(*(*(v39 + 32) + 72) + 24));
      (*(*a3 + 16))(a3, *(v39 + 32));
      v51 = v41;
      v9 = v40;
      v52 = *(*(v40 + 72) + v36);
      (*(*a3 + 32))(a3, v39, *(v40 + 16), v40, &v51, 2);
      v36 += 32;
      v37 += 24;
      --v34;
    }

    while (v34);
  }

  (*(*a3 + 16))(a3, v9);
  v42 = a3[3];
  v45 = *(v42 + 32);
  v43 = v42 + 32;
  v44 = v45;
  v46 = *(((v50 + 16 * ((*(v50 + 44) >> 23) & 1) + ((*(v50 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v50 + 40) + 8);
  if (v46)
  {
    v47 = v46 - 8;
  }

  else
  {
    v47 = 0;
  }

  if (v44 == v43)
  {
    (*(*a3 + 32))(a3, v47);
  }

  else
  {
    (*(*a3 + 32))(a3, v47, *(v44 + 16), v44, v63 & 0xFFFFFFFFFFFFFFF9, v64);
  }

  if (v70)
  {
    a3[4] = a3[3] + 32;
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), v49, &v69);
  }

  (**a3)(a3, v50, v60 & 0xFFFFFFFFFFFFFFF9, v61);
  if (v69 != v71)
  {
    free(v69);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (v63 != v65)
  {
    free(v63);
  }

  if (v66 != v68)
  {
    free(v66);
  }

  return 1;
}

void mlir::scf::ParallelOp::getInductionVars(uint64_t *__return_ptr a1@<X8>, mlir::scf::ParallelOp *this@<X0>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::scf::ParallelOp::getLoopInductionVars(&v3, this);
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v4)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v3);
  }

  if (v5[48] == 1 && v3 != v5)
  {
    free(v3);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ResultRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v7 = a3[1];
  v8 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v18[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v13, v8 | 4, 0, v8 | 4, v7);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

mlir::Operation *mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v11, *a3 & 0xFFFFFFFFFFFFFFF9, 0, *a3 & 0xFFFFFFFFFFFFFFF9, *(a3 + 8));
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

uint64_t mlir::scf::ParallelOp::getODSOperands(mlir::scf::ParallelOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 64);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.for";
    v6[3] = 7;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.yield";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ParallelLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ParallelLowering]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileLowering::~WhileLowering(_anonymous_namespace_::WhileLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::CondBranchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::OperandRange,mlir::Block *&,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::CondBranchOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::cf::CondBranchOp::build(v14, v18, *a3, *a5 & 0xFFFFFFFFFFFFFFF9 | 2, a5[1], *a7, a7[1], *a4, *a6);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v16;
}

uint64_t mlir::scf::ConditionOp::getODSOperands(mlir::scf::ConditionOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::scf::ConditionOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileLowering]";
  v6 = 98;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ExecuteRegionLowering::~ExecuteRegionLowering(_anonymous_namespace_::ExecuteRegionLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

mlir::Operation *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v15[0] = v16;
  v15[1] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v15, *a3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v11, 0, 0, 0, 0);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExecuteRegionLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExecuteRegionLowering]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::IndexSwitchLowering::~IndexSwitchLowering(_anonymous_namespace_::IndexSwitchLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexSwitchLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexSwitchLowering]";
  v6 = 104;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::DoWhileLowering::~DoWhileLowering(_anonymous_namespace_::DoWhileLowering *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DoWhileLowering::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
  v4 = (v3 - 8);
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4[5];
  if (v5 != v4 + 4 && *(v5 + 8) == v4 + 4)
  {
    if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v5 + 46) & 0x80) != 0)
      {
        v7 = *(v5 + 68);
        v8 = v4[6];
        v9 = v4[7];
        if (v7 == v9 - v8)
        {
          if (v7)
          {
            v10 = 0;
            v11 = (*(v5 + 72) + 24);
            while (*v11 == *v8)
            {
              v12 = v10 + 1;
              ++v8;
              if (v7 - 1 != v10)
              {
                v11 += 4;
                ++v10;
                if (v8 != v9)
                {
                  continue;
                }
              }

              goto LABEL_17;
            }

            goto LABEL_20;
          }

LABEL_16:
          v7 = 0;
          v12 = 0;
LABEL_17:
          if (v12 == v7 && v8 == v9)
          {
            mlir::RewriterBase::splitBlock(a3, a3[3], a3[4]);
          }
        }
      }

      else
      {
        v8 = v4[6];
        v9 = v4[7];
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_20:
    v6 = "do-while simplification applicable only to forwarding 'after' regions";
    goto LABEL_21;
  }

  v6 = "do-while simplification applicable only if 'after' region has no payload";
LABEL_21:
  v15 = v6;
  v16 = 259;
  v17[0] = &v15;
  v13 = a3[2];
  if (v13 && v13[2] == 1)
  {
    (*(*v13 + 88))(v13, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v17);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DoWhileLowering>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DoWhileLowering]";
  v6 = 100;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::SCFToControlFlowPass::~SCFToControlFlowPass(_anonymous_namespace_::SCFToControlFlowPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::SCFToControlFlowPass::runOnOperation(_anonymous_namespace_::SCFToControlFlowPass *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  __src = 0u;
  v4 = 0u;
  v2 = v1;
  v5 = v7;
  v6 = 0x600000000;
  v7[6] = 0;
  v7[7] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 40;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 40;
  operator new();
}

void mlir::ConversionTarget::~ConversionTarget(mlir::ConversionTarget *this)
{
  mlir::ConversionTarget::~ConversionTarget(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286E99B78;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 120);
  llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::~StringMap(this + 96);
  llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::~StringMap(this + 72);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::destroyAll(this + 48);
  MEMORY[0x25F891030](*(this + 6), 8);
  llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>::~SmallVector(this + 32);
  MEMORY[0x25F891030](*(this + 1), 8);
}

uint64_t llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v5 + 8);
          MEMORY[0x25F891030](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 40 * v1;
    result = *result + 8;
    do
    {
      if ((*(result - 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](result);
      }

      result += 40;
      v2 -= 40;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 48 * v3 - 32;
    v5 = -48 * v3;
    do
    {
      v4 = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v4) - 48;
      v5 += 48;
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

void mlir::scf::SCFDialect::SCFDialect(mlir::scf::SCFDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "scf";
  *(this + 2) = 3;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E99BE0;
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(a2, a2, a3, a4);
  mlir::scf::SCFDialect::initialize(this);
}

void mlir::scf::SCFDialect::~SCFDialect(mlir::scf::SCFDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::scf::ExecuteRegionOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  if ((*(*a1 + 568))(a1, a2 + 64))
  {
    mlir::OperationState::addRegion(a2);
  }

  return 0;
}

__n128 mlir::scf::ExecuteRegionOp::getSuccessorRegions(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1[9];
    v5 = (a1 - 4) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v4)
    {
      v5 = 4;
    }

    v11 = 0;
    v12 = v5;
    v13 = v4;
  }

  else
  {
    v7 = a1[10];
    v6 = a1[11];
    v12 = 0;
    v13 = 0;
    v11 = ((&a1[4 * ((v6 >> 23) & 1) + 17] + ((v6 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7;
  }

  v8 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v11, 1);
  v9 = (*a3 + 24 * *(a3 + 8));
  result = *v8;
  v9[1].n128_u64[0] = v8[1].n128_u64[0];
  *v9 = result;
  ++*(a3 + 8);
  return result;
}

void mlir::scf::ForOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, void, void, unint64_t, uint64_t), uint64_t a10)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v15, 0, &v15, 3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a6, 0, a6, a7);
  v15 = a6;
  v16 = 0;
  if (a7)
  {
    v13 = 0;
    do
    {
      __src = *(mlir::ValueRange::dereference_iterator(&v15, v13) + 8) & 0xFFFFFFFFFFFFFFF8;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, &__src, &v15);
      v16 = ++v13;
    }

    while (a7 != v13);
  }

  mlir::OperationState::addRegion(a2);
}

unint64_t mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(uint64_t a1)
{
  mlir::scf::ForOp::getYieldedValuesMutable(v5, a1);
  if (v6 != 1 || !v5[1])
  {
    return 0;
  }

  v1 = v5[0];
  v2 = *(v5[0] + 16);
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 72);
    v1 = v5[0] - v3;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + (v1 & 0x1FFFFFFFE0)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

llvm::raw_ostream *printInitializationList(llvm::raw_ostream *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v13 = result;
    v14 = (*(*result + 16))(result);
    llvm::raw_ostream::operator<<(v14, a6, a7);
    v15 = (*(*v13 + 16))(v13);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 40);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 40;
    }

    v30 = a4;
    if (a3)
    {
      v17 = (a4 & 0xFFFFFFFFFFFFFFF8);
      if ((a4 & 6) != 0 || !v17)
      {
        if ((a4 & 6) == 2 && v17)
        {
          v17 = v17[3];
        }
      }

      else
      {
        v17 = *v17;
      }

      (*(*v13 + 160))(v13, *a2);
      v18 = (*(*v13 + 16))(v13);
      v19 = *(v18 + 4);
      if ((*(v18 + 3) - v19) > 2)
      {
        *(v19 + 2) = 32;
        *v19 = 15648;
        *(v18 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v18, " = ", 3uLL);
      }

      (*(*v13 + 160))(v13, v17);
      v31 = 1;
      if (a3 != 1)
      {
        v20 = a5 - 1;
        v21 = a2 + 2;
        v22 = 8 * a3 - 8;
        v23 = 2;
        do
        {
          if (!v20)
          {
            break;
          }

          v24 = (*(*v13 + 16))(v13);
          v25 = *(v24 + 4);
          if (*(v24 + 3) - v25 > 1uLL)
          {
            *v25 = 8236;
            *(v24 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v24, ", ", 2uLL);
          }

          v26 = mlir::ValueRange::dereference_iterator(&v30, v23 - 1);
          (*(*v13 + 160))(v13, *(v21 - 1));
          v27 = (*(*v13 + 16))(v13);
          v28 = *(v27 + 4);
          if ((*(v27 + 3) - v28) > 2)
          {
            *(v28 + 2) = 32;
            *v28 = 15648;
            *(v27 + 4) += 3;
          }

          else
          {
            llvm::raw_ostream::write(v27, " = ", 3uLL);
          }

          (*(*v13 + 160))(v13, v26);
          v31 = v23;
          --v20;
          ++v23;
          ++v21;
          v22 -= 8;
        }

        while (v22);
      }
    }

    result = (*(*v13 + 16))(v13);
    v29 = *(result + 4);
    if (*(result + 3) == v29)
    {

      return llvm::raw_ostream::write(result, ")", 1uLL);
    }

    else
    {
      *v29 = 41;
      ++*(result + 4);
    }
  }

  return result;
}

BOOL mlir::scf::ForOp::parse(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  v32 = 0;
  memset(v29, 0, 24);
  v31 = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = 0;
  memset(v28, 0, 24);
  memset(v27, 0, 24);
  memset(v26, 0, 24);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0)
  {
    return 0;
  }

  v41 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v38) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v27, 1) & 1) == 0)
  {
    return 0;
  }

  v41 = 257;
  if (((*(*a1 + 400))(a1, "step", 4, &v38) & 1) == 0 || ((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v38 = v40;
  v39 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(&v38, v29, 1);
  v6 = v38 + 64 * v39;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[3];
  v6[2] = v5[2];
  v6[3] = v9;
  *v6 = v7;
  v6[1] = v8;
  LODWORD(v39) = v39 + 1;
  v10 = (*(*a1 + 408))(a1, "iter_args", 9);
  if ((v10 & 1) != 0 && ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) == 0 || ((*(*a1 + 560))(a1, a2 + 64) & 1) == 0))
  {
    goto LABEL_33;
  }

  if (*(a2 + 72) + 1 == v39)
  {
    if ((*(*a1 + 112))(a1))
    {
      if (((*(*a1 + 536))(a1, &v32) & 1) == 0)
      {
LABEL_33:
        v12 = 0;
        goto LABEL_34;
      }

      v11 = v32;
    }

    else
    {
      v11 = *(**v4 + 472);
      v32 = v11;
    }

    *(v38 + 4) = v11;
    if ((*(*a1 + 728))(a1, v28) & 1) != 0 && ((*(*a1 + 728))(a1, v27, v32, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v26, v32, a2 + 16))
    {
      if ((v10 & 1) == 0 || v39 == 1 || !v36 || (v15 = *(a2 + 72), !v15))
      {
LABEL_32:
        mlir::OperationState::addRegion(a2);
      }

      v16 = 0;
      v17 = v35;
      v18 = *(a2 + 64);
      v23 = (v39 << 6) - 128;
      v19 = v38 + 96;
      v22 = (v15 << 6) - 64;
      v20 = (v36 << 6) - 64;
      while (1)
      {
        *&v19[v16] = *v18;
        if (((*(*a1 + 728))(a1, v17) & 1) == 0)
        {
          break;
        }

        if (v23 != v16 && v20 != v16)
        {
          v17 += 32;
          ++v18;
          v21 = v22 == v16;
          v16 += 64;
          if (!v21)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v14 = (*(*a1 + 16))(a1);
  v24 = "mismatch in number of loop-carried values and defined values";
  v25 = 259;
  (*(*a1 + 24))(&v33, a1, v14, &v24);
  v12 = (v34 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
LABEL_34:
  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return v12;
}

uint64_t mlir::OpAsmParser::parseAssignmentList(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 824))(a1);
  if ((v2 & 0x100) == 0)
  {
    v3 = (*(*a1 + 40))(a1);
    v5 = "expected '('";
    v6 = 259;
    (*(*a1 + 24))(v7, a1, v3, &v5);
    v2 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v2;
}

uint64_t mlir::scf::ForOp::getInitsMutable(mlir::scf::ForOp *this)
{
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(this, 3u);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(*this + 72);
  }

  else
  {
    v3 = 0;
  }

  return v3 + 32 * ODSOperandIndexAndLength;
}

double std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v9[0] = a4;
  v9[1] = a5;
  v5 = *(a1 + 24);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2, &v10, v9);
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    *&result = mlir::scf::ForOp::getSuccessorRegions(v7, v8).n128_u64[0];
  }

  return result;
}

__n128 mlir::scf::ForOp::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 48);
  v7 = ((*(v5 + 56) - v6) >> 3) - 1;
  v16 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v17 = (v6 + 8) & 0xFFFFFFFFFFFFFFF9;
  v18 = v7;
  v8 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v16, 1);
  v9 = *a2 + 24 * *(a2 + 8);
  v10 = *v8;
  *(v9 + 16) = *(v8 + 16);
  *v9 = v10;
  ++*(a2 + 8);
  v11 = *(*a1 + 36);
  v12 = (*a1 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (!v11)
  {
    v12 = 4;
  }

  v16 = 0;
  v17 = v12;
  v18 = v11;
  v13 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v16, 1);
  v14 = (*a2 + 24 * *(a2 + 8));
  result = *v13;
  v14[1].n128_u64[0] = v13[1].n128_u64[0];
  *v14 = result;
  ++*(a2 + 8);
  return result;
}

void mlir::scf::ForallOp::getMixedLowerBound(mlir::scf::ForallOp *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::scf::ForallOp::getLoopLowerBounds(&v3, this);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  if (v4)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v3);
  }

  if (v5[48] == 1 && v3 != v5)
  {
    free(v3);
  }
}

void mlir::scf::ForallOp::getMixedUpperBound(mlir::scf::ForallOp *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::scf::ForallOp::getLoopUpperBounds(&v3, this);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  if (v4)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v3);
  }

  if (v5[48] == 1 && v3 != v5)
  {
    free(v3);
  }
}

void mlir::scf::ForallOp::getMixedStep(mlir::scf::ForallOp *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::scf::ForallOp::getLoopSteps(&v3, this);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  if (v4)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v3);
  }

  if (v5[48] == 1 && v3 != v5)
  {
    free(v3);
  }
}

void mlir::scf::promote(uint64_t a1, uint64_t a2)
{
  v69[8] = *MEMORY[0x277D85DE8];
  v57 = a2;
  v46 = *(a1 + 24);
  v47 = a1 + 24;
  v3 = (a1 + 8);
  v4 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 32);
  mlir::scf::ForallOp::getLowerBound(&v57, v3, &v61);
  v7 = *(v57 + 44);
  v8 = (v57 + 16 * ((v7 >> 23) & 1));
  v9 = v8[27];
  v10 = (v8[25] + v8[24] + v8[26]);
  if ((v7 & 0x800000) != 0)
  {
    v11 = *(v57 + 72);
    v12 = v11 + 32 * v10;
  }

  else
  {
    v11 = 0;
    v12 = 32 * v10;
  }

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v61, v12, 0, v11 + 32 * v10, (v10 + v9) - v10);
  v13 = *(((v57 + 16 * ((*(v57 + 44) >> 23) & 1) + ((*(v57 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 40) + 8);
  if (v13)
  {
    v14 = v13 - 8;
  }

  else
  {
    v14 = 0;
  }

  (*(*a1 + 32))(a1, v14, *(v57 + 16), v57, v61 & 0xFFFFFFFFFFFFFFF9, v62);
  v15 = v57;
  v45 = a1;
  *(a1 + 24) = vextq_s8(*(v57 + 8), *(v57 + 8), 8uLL);
  v58 = v60;
  v59 = 0x600000000;
  v16 = *(v15 + 36);
  if (v16 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v16, 8);
  }

  v44 = v6;
  v17 = *(((v6 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v6 + 40) + 8);
  if (v17)
  {
    v18 = v17 - 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v18 + 40);
  if (v19 != v18 + 32)
  {
    v48 = v18 + 32;
    do
    {
      v20 = *(v19 + 104);
      v21 = *(v19 + 72);
      v22 = *(v19 + 80);
      v55 = *(v21 + 32 * v20 + 24);
      v56 = *(v21 + 24);
      v23 = *(v57 + 24);
      v53 = *(v55 + 8);
      v24 = (*(v19 + 108) + v20);
      v25 = (*(v19 + 112) + v24);
      v54 = v25 - v24;
      v49 = v21 + 32 * v24;
      v52 = (*(v19 + 116) + v25) - v25;
      v26 = vaddvq_s32(*(v19 + 104));
      v27 = v21 + 32 * v25;
      v28 = v21 + 32 * v26;
      v51 = *(v19 + 120) + v26 - v26;
      v50 = *(v22 + 24);
      v29 = *(v22 + 32) >> 3;
      v30 = *(v19 + 88);
      v31 = *(v19 + 96);
      v32 = *(v30 + 24);
      v33 = *(v30 + 32) >> 3;
      v34 = *(v31 + 24);
      v35 = *(v31 + 32) >> 3;
      inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(v3, *(**v23 + 32));
      v64[0] = v23;
      v64[1] = inserted;
      v64[2] = v65;
      v64[3] = 0x400000000;
      v65[4] = v66;
      v65[5] = 0x400000000;
      v66[4] = v67;
      v66[5] = 0x400000000;
      v67[8] = 4;
      v67[9] = v68;
      v67[10] = 0x100000000;
      v68[1] = v69;
      v68[2] = 0x100000000;
      v69[1] = 0;
      v69[2] = 0;
      v69[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v69[4] = 0;
      v69[6] = 0;
      mlir::tensor::InsertSliceOp::build(v3, v64, v53 & 0xFFFFFFFFFFFFFFF8, v56, v55, v49 & 0xFFFFFFFFFFFFFFF9 | 2, v54, v37, v27 & 0xFFFFFFFFFFFFFFF9 | 2, v52, v28 & 0xFFFFFFFFFFFFFFF9 | 2, v51, v50, v29, v32, v33, v34, v35);
      v38 = mlir::Operation::create(v64);
      mlir::OpBuilder::insert(v3, v38);
      v39 = *(*(v38 + 6) + 16);
      mlir::OperationState::~OperationState(v64);
      if (v39 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
      {
        v40 = (v38 - 16);
      }

      else
      {
        v40 = -16;
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v58, v40);
      v19 = *(v19 + 8);
    }

    while (v19 != v48);
  }

  v41 = *(v57 + 36);
  if (v41)
  {
    v42 = (v57 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v42 = 4;
  }

  v43 = v45;
  mlir::RewriterBase::replaceAllUsesWith(v45, v42, v41, v58 & 0xFFFFFFFFFFFFFFF9, v59);
  (*(*v43 + 16))(v43, v44);
  (*(*v43 + 16))(v43, v57);
  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != &v63)
  {
    free(v61);
  }

  if (v46)
  {
    *v47 = v46;
  }

  else
  {
    *v47 = 0;
    *(v47 + 8) = 0;
  }
}

uint64_t mlir::scf::ForallOp::getRegionIterArgs(mlir::scf::ForallOp *this)
{
  v1 = *(this + 11);
  v2 = this + 16 * ((v1 >> 23) & 1);
  v3 = *((&v2[((v1 >> 21) & 0x7F8) + 71] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  return *(v4 + 48) + 8 * (*(*(v2 + 9) + 32) >> 3);
}

void mlir::scf::ForallOp::getOutputsMutable(mlir::scf::ForallOp *this, uint64_t a2)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = v4[24];
  v6 = v4[25];
  v4 += 24;
  v7 = v4[3];
  v8 = v6 + v5 + v4[2];
  v9 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  v10 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v4, 4);
  __src = 3;
  v12 = v9;
  v13 = v10;
  *this = a2;
  *(this + 2) = v8;
  *(this + 3) = v7;
  *(this + 2) = this + 32;
  *(this + 3) = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(this + 4, &__src, &v14);
}

void mlir::scf::ForallOp::getLowerBound(mlir::scf::ForallOp *this@<X0>, mlir::OpBuilder *a2@<X1>, void *a3@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = *(*this + 24);
  mlir::scf::ForallOp::getMixedLowerBound(this, &v6);
  mlir::getValueOrCreateConstantIndexOp(a2, v5, v6, v7, a3);
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::scf::replaceAndCastForOpIterArg(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v28 = a3;
  v29 = &v31;
  v30 = 0x600000000;
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v28, 3u);
  v11 = HIDWORD(ODSOperandIndexAndLength);
  v32 = a3;
  v33 = ODSOperandIndexAndLength;
  v34 = v36;
  v35 = 0x100000000;
  if ((*(a3 + 46) & 0x80) != 0)
  {
    v12 = *(a3 + 72);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v12 + 32 * ODSOperandIndexAndLength;
    v14 = (v13 + 24);
    v15 = 32 * v11;
    do
    {
      v16 = *(v14 - 1);
      if ((*(v16 + 46) & 0x80) != 0)
      {
        v17 = *(v16 + 72);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a4 + 16);
      if ((*(v18 + 46) & 0x80) != 0)
      {
        v19 = *(v18 + 72);
      }

      else
      {
        v19 = 0;
      }

      v20 = a5;
      if (((v13 - v17) >> 5) != ((a4 - v19) >> 5))
      {
        v20 = *v14;
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v29, v20);
      v13 += 32;
      v14 += 4;
      v15 -= 32;
    }

    while (v15);
    if (v34 != v36)
    {
      free(v34);
    }
  }

  v21 = *(a3 + 24);
  v22 = *(mlir::scf::ForOp::getODSOperands(&v28, 0) + 24);
  v23 = *(mlir::scf::ForOp::getODSOperands(&v28, 1u) + 24);
  v24 = *(mlir::scf::ForOp::getODSOperands(&v28, 2u) + 24);
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForOp>(a2 + 8, *(**v21 + 32));
  v32 = v21;
  v33 = v25;
  v34 = v36;
  v35 = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v40[6] = 0;
  mlir::scf::ForOp::build(a2 + 8, &v32, v22, v23, v24, v29 & 0xFFFFFFFFFFFFFFF9, v30, v26, 0, v27);
}

uint64_t mlir::scf::ForOp::getConstantStep(mlir::scf::ForOp *this, mlir::scf::ForOp *a2)
{
  v12 = 0;
  result = mlir::scf::ForOp::getODSOperands(a2, 2u);
  v4 = *(result + 24);
  v11 = &v12;
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v11, v7);
  if (!result)
  {
LABEL_11:
    v10 = 0;
    *this = 0;
    goto LABEL_13;
  }

  v8 = *(v12 + 24);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *(v12 + 16);
  *(this + 2) = v8;
  *this = v9;
  v10 = 1;
LABEL_13:
  *(this + 16) = v10;
  return result;
}

uint64_t mlir::scf::ForOp::getYieldedValuesMutable(uint64_t this, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if ((*(v4 + 44) & 0x800000) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *this = v6;
  *(this + 8) = v5;
  *(this + 16) = 1;
  return this;
}

void mlir::scf::ForallOp::getInductionVars(mlir::scf::ForallOp *this, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::scf::ForallOp::getLoopInductionVars(&v3, a2);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  if (v4)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(this, &v3);
  }

  if (v5[48] == 1 && v3 != v5)
  {
    free(v3);
  }
}

uint64_t mlir::scf::ForallOp::getRegionOutArgs(mlir::scf::ForallOp *this)
{
  v1 = *(this + 11);
  v2 = this + 16 * ((v1 >> 23) & 1);
  v3 = *((&v2[((v1 >> 21) & 0x7F8) + 71] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  return *(v4 + 48) + 8 * (*(*(v2 + 9) + 32) >> 3);
}

BOOL mlir::scf::ForallOp::parse(uint64_t a1, uint64_t a2)
{
  v43[32] = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 32))(a1);
  v20[1] = v4;
  memset(&v20[2], 0, 24);
  v5 = *(*v4 + 472);
  v41 = v43;
  v42 = 0x400000000;
  v6 = 0;
  if (((*(*a1 + 768))(a1, &v41, 1, 0, 0) & 1) == 0)
  {
    goto LABEL_44;
  }

  v19 = 0;
  v20[0] = 0;
  v18 = 0;
  v38 = v40;
  v39 = 0x100000000;
  v35 = v37;
  v36 = 0x100000000;
  v32 = v34;
  v33 = 0x100000000;
  if ((*(*a1 + 408))(a1, "in", 2))
  {
    v28 = 0;
    if (mlir::parseDynamicIndexList(a1, &v35, &v19, &v28, 0))
    {
      if (v36)
      {
        v7 = v35;
        v8 = 32 * v36;
        while (((*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1) != 0)
        {
          v7 += 32;
          v8 -= 32;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_37;
      }

LABEL_8:
      v9 = v42;
      v28 = v30;
      v29 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v28, v42, 0);
      v20[0] = mlir::detail::DenseArrayAttrImpl<long long>::get(v4, v28, v29);
      if (v28 != v30)
      {
        free(v28);
      }

      v28 = v30;
      v29 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v28, v9, 1);
      v18 = mlir::detail::DenseArrayAttrImpl<long long>::get(v4, v28, v29);
      if (v28 != v30)
      {
        free(v28);
      }

LABEL_12:
      v28 = v30;
      v29 = 0x400000000;
      v25 = v27;
      v26 = 0x400000000;
      v10 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 408))(a1, "shared_outs", 11) & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v26 == *(a2 + 72))
      {
        if ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) != 0 && ((*(*a1 + 568))(a1, a2 + 64) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,4u> &>(a1, v25, v26, *(a2 + 64), *(a2 + 72), v10, a2 + 16))
        {
LABEL_17:
          v21[0] = v22;
          v21[1] = 0x400000000;
          operator new();
        }

        v6 = 0;
      }

      else
      {
        v23 = "mismatch between out operands and types";
        v24 = 259;
        (*(*a1 + 24))(v21, a1, v10, &v23);
        v6 = (v22[184] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
      }

      if (v25 != v27)
      {
        free(v25);
      }

      if (v28 != v30)
      {
        free(v28);
      }

      goto LABEL_38;
    }
  }

  else if ((*(*a1 + 136))(a1))
  {
    v28 = 0;
    if (mlir::parseDynamicIndexList(a1, &v38, v20, &v28, 0))
    {
      if (v39)
      {
        v11 = v38;
        v12 = 32 * v39;
        while (((*(*a1 + 728))(a1, v11, v5, a2 + 16) & 1) != 0)
        {
          v11 += 32;
          v12 -= 32;
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_37;
      }

LABEL_24:
      v31 = 257;
      if ((*(*a1 + 400))(a1, "to", 2, &v28))
      {
        v28 = 0;
        if (mlir::parseDynamicIndexList(a1, &v35, &v19, &v28, 0))
        {
          if (v36)
          {
            v13 = v35;
            v14 = 32 * v36;
            while (((*(*a1 + 728))(a1, v13, v5, a2 + 16) & 1) != 0)
            {
              v13 += 32;
              v14 -= 32;
              if (!v14)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_37;
          }

LABEL_30:
          v31 = 257;
          if ((*(*a1 + 400))(a1, "step", 4, &v28))
          {
            v28 = 0;
            if (mlir::parseDynamicIndexList(a1, &v32, &v18, &v28, 0))
            {
              if (v33)
              {
                v15 = v32;
                v16 = 32 * v33;
                while (((*(*a1 + 728))(a1, v15, v5, a2 + 16) & 1) != 0)
                {
                  v15 += 32;
                  v16 -= 32;
                  if (!v16)
                  {
                    goto LABEL_12;
                  }
                }

                goto LABEL_37;
              }

              goto LABEL_12;
            }
          }
        }
      }
    }
  }

LABEL_37:
  v6 = 0;
LABEL_38:
  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

LABEL_44:
  if (v41 != v43)
  {
    free(v41);
  }

  return v6;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,4u> &>(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a3;
  if (a3 == a5)
  {
    if (a3)
    {
      v9 = a4;
      v11 = 32 * a3;
      while (((*(*a1 + 728))(a1, a2, *v9, a7) & 1) != 0)
      {
        a2 += 32;
        ++v9;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v18[16] = 257;
    (*(*a1 + 24))(&v21, a1, a6, v18, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<48ul>(v22, "number of operands and types do not match: got ");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v21, &v20);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<15ul>((v13 + 1), " operands and ");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v14, &v19);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<7ul>((v15 + 1), " types");
    }

    v12 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  return v12;
}

mlir::Operation *mlir::scf::ForallOp::ensureTerminator(void *a1, void *a2, uint64_t a3)
{
  result = mlir::impl::ensureRegionTerminator(a1, a2, a3, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator);
  v6 = a1[1];
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 32);
  if (*(*(v8 + 48) + 16) != &unk_27FC22EA0)
  {
    v8 = 0;
  }

  v9 = (((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40));
  if (*v9 == v9)
  {

    mlir::OpBuilder::createBlock(a2, v9, 0, 2, 0, 0, 0);
  }

  return result;
}

void mlir::scf::ForallOp::build(uint64_t **a1, mlir::OperationState *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void (*a13)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a14)
{
  v55[6] = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = 0x600000000;
  v50 = &v52;
  v51 = 0x600000000;
  v47 = &v49;
  v48 = 0x600000000;
  v44 = &v46;
  v45 = 0x600000000;
  v41 = &v43;
  v42 = 0x600000000;
  v38 = &v40;
  v39 = 0x600000000;
  if (a4)
  {
    v21 = 8 * a4;
    do
    {
      v22 = *a3++;
      mlir::dispatchIndexOpFoldResult(v22, &v44, &v53);
      v21 -= 8;
    }

    while (v21);
  }

  if (a6)
  {
    v23 = 8 * a6;
    do
    {
      v24 = *a5++;
      mlir::dispatchIndexOpFoldResult(v24, &v41, &v50);
      v23 -= 8;
    }

    while (v23);
  }

  if (a8)
  {
    v25 = 8 * a8;
    do
    {
      v26 = *a7++;
      mlir::dispatchIndexOpFoldResult(v26, &v38, &v47);
      v25 -= 8;
    }

    while (v25);
  }

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, v44 & 0xFFFFFFFFFFFFFFF9, 0, v44 & 0xFFFFFFFFFFFFFFF9, v45);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, v41 & 0xFFFFFFFFFFFFFFF9, 0, v41 & 0xFFFFFFFFFFFFFFF9, v42);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, v38 & 0xFFFFFFFFFFFFFFF9, 0, v38 & 0xFFFFFFFFFFFFFFF9, v39);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a9, 0, a9, a10);
  if (a10)
  {
    v27 = a9 & 0xFFFFFFFFFFFFFFF8;
    if ((a9 & 6) == 4 && v27)
    {
      v28 = v27 | 6;
    }

    else
    {
      if (v27)
      {
        v29 = (a9 & 6) == 2;
      }

      else
      {
        v29 = 0;
      }

      if (v29)
      {
        v28 = v27 | 4;
      }

      else
      {
        v28 = a9 & 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, v28, 0, v28, a10);
  v30 = *(*(*(a2 + 1) + 96) + 8);
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v53, v54);
  mlir::NamedAttrList::push_back(a2 + 112, v30, v31);
  v32 = *(*(*(a2 + 1) + 96) + 24);
  v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v50, v51);
  mlir::NamedAttrList::push_back(a2 + 112, v32, v33);
  v34 = *(*(*(a2 + 1) + 96) + 16);
  v35 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v47, v48);
  mlir::NamedAttrList::push_back(a2 + 112, v34, v35);
  v37[0] = v45;
  v37[1] = v42;
  v37[2] = v39;
  v37[3] = a10;
  v36 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, v37, 4);
  mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v36);
  if (a12)
  {
    mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 1) + 96), a11);
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::scf::ForallOp::getCombiningOps(void *result, uint64_t a2, uint64_t a3)
{
  *result = result + 2;
  result[1] = 0x600000000;
  v3 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(((*(v4 + 32) + 16 * ((*(*(v4 + 32) + 44) >> 23) & 1) + ((*(*(v4 + 32) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v4 + 32) + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 32;
  v8 = *(v6 + 40);
  if (v8 != v6 + 32)
  {
    do
    {
      if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id && *(*(v8 + 72) + 32 * *(v8 + 104) + 24) == a3)
      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(result, v8);
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v7);
  }
}

void mlir::scf::ForallOp::getLoopInductionVars(mlir::scf::ForallOp *this, uint64_t a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v5 = *(((v4 + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = (*(v6 + 56) - v7) >> 3;
  v9 = *(*(v4 + 72) + 32) >> 3;
  if (v8 >= v9)
  {
    v8 = v9;
  }

  v10 = v12;
  v11 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::BlockArgument const*,void>(&v10, v7, &v7[8 * v8]);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(this, &v10);
  }

  *(this + 64) = 1;
  if (v10 != v12)
  {
    free(v10);
  }
}

void mlir::scf::ForallOp::getLoopLowerBounds(uint64_t *__return_ptr a1@<X8>, mlir::scf::ForallOp *this@<X0>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v3 = *(*this + 44);
  if ((v3 & 0x800000) != 0)
  {
    v5 = *(*this + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v5 = 2;
  }

  v4 = *this + 16 * ((v3 >> 23) & 1);
  mlir::getMixedValues(*(*(v4 + 72) + 24), *(*(v4 + 72) + 32) >> 3, v5, *(v4 + 96), *(***(*this + 24) + 32), &v6);
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, &v6);
  }

  *(a1 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::scf::ForallOp::getLoopUpperBounds(uint64_t *__return_ptr a1@<X8>, mlir::scf::ForallOp *this@<X0>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*this + 24) + 32);
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::scf::ForallOp::getODSOperands(this, 1u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, &v9);
  }

  *(a1 + 64) = 1;
  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::scf::ForallOp::getLoopSteps(uint64_t *__return_ptr a1@<X8>, mlir::scf::ForallOp *this@<X0>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*this + 24) + 32);
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::scf::ForallOp::getODSOperands(this, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, &v9);
  }

  *(a1 + 64) = 1;
  if (v9 != v11)
  {
    free(v9);
  }
}

__n128 mlir::scf::ForallOp::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v3 = *(a1 + 44);
  v12 = 0;
  v13 = 0;
  v11 = ((a1 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v4;
  v5 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v11, 1);
  v6 = *a2 + 24 * *(a2 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a2 + 8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v11, 1);
  v9 = (*a2 + 24 * *(a2 + 8));
  result = *v8;
  v9[1].n128_u64[0] = v8[1].n128_u64[0];
  *v9 = result;
  ++*(a2 + 8);
  return result;
}

void mlir::scf::InParallelOp::parse(uint64_t a1, uint64_t a2)
{
  v4[64] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = v4;
  v3 = 0x800000000;
  operator new();
}

uint64_t mlir::scf::IfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a1 & 6) == 4 || (a1 & 6) == 2;
  v4 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if (v3 && v4 != 0)
  {
    v4 = *v4;
  }

  if (*v4 == v4)
  {
    return 0;
  }

  v6 = v4[1];
  v7 = v6 - 8;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v7 + 32);
  if (v8 == v7 + 32 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    return 0;
  }

  if ((*(v8 + 46) & 0x80) != 0 && (v10 = *(v8 + 68), v10))
  {
    v11 = *(v8 + 72) & 0xFFFFFFFFFFFFFFF8;
    v3 = v11 == 0;
    v12 = v11 | 4;
    if (v3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a3, v13, 0, v13, v10);
  return 1;
}

void mlir::scf::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v8, 0, &v8, 1);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v7, 0, &v7, 1);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::IfOp::parse(uint64_t a1, mlir::OperationState *this)
{
  if (*(this + 59) <= 1u)
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(this + 224, 2uLL);
  }

  mlir::OperationState::addRegion(this);
}

uint64_t llvm::SmallVectorImpl<mlir::InvocationBounds>::emplace_back<int,int>(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(result, a2, a3);
  }

  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 4) = a3 | 0x100000000;
  ++*(result + 8);
  return result;
}

uint64_t mlir::scf::IfOp::elseYield(mlir::scf::IfOp *this)
{
  v1 = ((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  v2 = *(v1 + 24);
  if (v2 == v1 + 24 || v2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 - 8;
  }

  return *(v4 + 32);
}

void mlir::scf::ParallelOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, unint64_t), uint64_t a12)
{
  v16 = a4;
  v26[8] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a7, 0, a7, a8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a9, 0, a9, a10);
  v24 = __PAIR64__(a6, v16);
  v25 = __PAIR64__(a10, a8);
  v20 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, &v24, 4);
  mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v20);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>((a2 + 8), a9, 0, a9, a10);
  v21 = *(**a1 + 472);
  v24 = v26;
  v25 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Type>::assign(&v24, a8, v21);
  v22[0] = &v23;
  v22[1] = 0x800000000;
  llvm::SmallVectorImpl<mlir::Location>::assign(v22, a8, *a2);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::ParallelOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12[0] = a9;
  v12[1] = a10;
  v11 = v12;
  if (a9)
  {
    v10 = llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::scf::ParallelOp::build(mlir::OpBuilder &,mlir::OperationState &,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>)::$_0>;
  }

  else
  {
    v10 = 0;
  }

  mlir::scf::ParallelOp::build(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0, v10, &v11);
}

uint64_t mlir::scf::ParallelOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v28[36] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  v26 = v28;
  v27 = 0x400000000;
  if ((*(*a1 + 768))(a1, &v26, 1, 0, 0))
  {
    v23 = v25;
    v24 = 0x400000000;
    if ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 720))(a1, &v23, 1, 1, v27))
    {
      if (v24)
      {
        v5 = *(**v4 + 472);
        v6 = v23;
        v7 = 32 * v24;
        while (((*(*a1 + 728))(a1, v6, v5, a2 + 16) & 1) != 0)
        {
          v6 += 32;
          v7 -= 32;
          if (!v7)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v20 = v22;
        v21 = 0x400000000;
        v19[8] = 257;
        if ((*(*a1 + 400))(a1, "to", 2, &v17) & 1) != 0 && ((*(*a1 + 720))(a1, &v20, 1, 1, v27))
        {
          if (v21)
          {
            v8 = *(**v4 + 472);
            v9 = v20;
            v10 = 32 * v21;
            while (((*(*a1 + 728))(a1, v9, v8, a2 + 16) & 1) != 0)
            {
              v9 += 32;
              v10 -= 32;
              if (!v10)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            v17 = v19;
            v18 = 0x400000000;
            v16[8] = 257;
            if ((*(*a1 + 400))(a1, "step", 4, v15) & 1) != 0 && ((*(*a1 + 720))(a1, &v17, 1, 1, v27))
            {
              if (v18)
              {
                v11 = *(**v4 + 472);
                v12 = v17;
                v13 = 32 * v18;
                while (((*(*a1 + 728))(a1, v12, v11, a2 + 16) & 1) != 0)
                {
                  v12 += 32;
                  v13 -= 32;
                  if (!v13)
                  {
                    goto LABEL_20;
                  }
                }
              }

              else
              {
LABEL_20:
                v15[0] = v16;
                v15[1] = 0x400000000;
                if (((*(*a1 + 408))(a1, "init", 4) & 1) == 0 || ((*(*a1 + 720))(a1, v15, 1, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 568))(a1, a2 + 64))
                {
                  mlir::OperationState::addRegion(a2);
                }

                if (v15[0] != v16)
                {
                  free(v15[0]);
                }
              }
            }

            if (v17 != v19)
            {
              free(v17);
            }
          }
        }

        if (v20 != v22)
        {
          free(v20);
        }
      }
    }

    if (v23 != v25)
    {
      free(v23);
    }
  }

  if (v26 != v28)
  {
    free(v26);
  }

  return 0;
}

void mlir::scf::ParallelOp::getLoopInductionVars(uint64_t *__return_ptr a1@<X8>, mlir::scf::ParallelOp *this@<X0>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::BlockArgument const*,void>(&v7, v5, v6);
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v7);
  }

  *(a1 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }
}

__n128 mlir::scf::ParallelOp::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v3 = *(a1 + 44);
  v12 = 0;
  v13 = 0;
  v11 = ((a1 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v4;
  v5 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v11, 1);
  v6 = *a2 + 24 * *(a2 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a2 + 8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a2, &v11, 1);
  v9 = (*a2 + 24 * *(a2 + 8));
  result = *v8;
  v9[1].n128_u64[0] = v8[1].n128_u64[0];
  *v9 = result;
  ++*(a2 + 8);
  return result;
}

void mlir::scf::WhileOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
  v19[0] = v20;
  v19[1] = 0x400000000;
  if (a6 < 5)
  {
    v17 = a5;
    v18 = 0;
    if (!a6)
    {
LABEL_15:
      mlir::OperationState::addRegion(a2);
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v20, a6, 8);
    v17 = a5;
    v18 = 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = mlir::ValueRange::dereference_iterator(&v17, v11);
    if ((~*(v12 + 8) & 7) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(v13 + 8) & 7;
      if (v14 != 6)
      {
        v15 = v13 + 16 * v14 + 16;
LABEL_13:
        v16 = (v15 + 24);
        goto LABEL_14;
      }

      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    v16 = (v12 + 32);
LABEL_14:
    llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(v19, *v16);
    v11 = v18 + 1;
    v18 = v11;
    if (v11 == a6)
    {
      goto LABEL_15;
    }
  }
}

uint64_t mlir::scf::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    v8 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v18 = v8;
    if (*v8 != v8)
    {
      v7 = v8[1];
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v5 = *a1;
  v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (v6 + 3 != a2)
  {
    v9 = *(v5 + 36);
    v10 = v5 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    v17 = v9;
    llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v16);
    v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v18 = v11 + 24;
    if (*(v11 + 24) != v11 + 24)
    {
      v7 = *(v11 + 32);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v18 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  if (*v6 == v6)
  {
    goto LABEL_14;
  }

  v7 = v6[1];
LABEL_11:
  v12 = v7 - 8;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = *(v12 + 48);
  v14 = (*(v12 + 56) - v13) >> 3;
LABEL_15:
  v16 = v13;
  v17 = v14;
  return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v18, &v16);
}

void mlir::scf::WhileOp::parse(uint64_t a1, mlir::OperationState *this)
{
  v5[32] = *MEMORY[0x277D85DE8];
  v4[16] = v5;
  v4[17] = 0x400000000;
  v2 = v4;
  v3 = 0x400000000;
  mlir::OperationState::addRegion(this);
}

BOOL mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(mlir::Operation **a1, uint64_t a2, const char **a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 32);
  v7 = *(*(v6 + 48) + 16);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v14 = *(v6 + 68);
      v15 = *a1;
      if (v14 == *(*a1 + 9))
      {
        if (v14)
        {
          v16 = 0;
          v17 = *(v6 + 72) + 24;
          for (i = v15 - 16; ; i -= 16)
          {
            v19 = v15 - 16;
            if (v16)
            {
              v20 = *(v15 - 1) & 7;
              v21 = v15 - 16;
              v22 = v16;
              if (v20 == 6)
              {
                goto LABEL_22;
              }

              v23 = (5 - v20);
              v19 = i;
              v22 = v16 - v23;
              if (v16 > v23)
              {
                break;
              }
            }

LABEL_23:
            v24 = *(v19 + 1) & 0xFFFFFFFFFFFFFFF8;
            v25 = *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8;
            v33 = v16;
            v34[0] = v24;
            v34[1] = v25;
            if (v24 != v25)
            {
              v35[0] = "expected result #";
              v36 = 259;
              mlir::Operation::emitOpError(&v38, v15, v35);
              v26 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v33);
              v27 = v26;
              if (*v26)
              {
                mlir::Diagnostic::operator<<<23ul>((v26 + 1), " of each region to be ");
                if (*v27)
                {
                  mlir::Diagnostic::operator<<<mlir::Type &>((v27 + 1), v34);
                }
              }

              mlir::Diagnostic::attachNote(v27 + 1, *(v8 + 24), 1);
            }

            ++v16;
            v17 += 32;
            if (v14 == v16)
            {
              return 1;
            }
          }

          v21 = v15 - 16 * v23 - 16;
LABEL_22:
          v19 = (v21 - 24 * v22);
          goto LABEL_23;
        }

        return 1;
      }
    }

    else
    {
      v15 = *a1;
      if (!*(*a1 + 9))
      {
        return 1;
      }
    }

    v35[0] = "expected each region to return ";
    v36 = 259;
    mlir::Operation::emitOpError(&v38, v15, v35);
    v37 = *(*a1 + 9);
    v28 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v38, &v37);
    v29 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<<14ul>((v28 + 1), " values, but ");
      if (*v29)
      {
        mlir::Diagnostic::operator<<((v29 + 1), a3);
        if (*v29)
        {
          mlir::Diagnostic::operator<<<10ul>((v29 + 1), " returns ");
        }
      }
    }

    if ((*(v6 + 46) & 0x80) != 0)
    {
      v30 = *(v6 + 68);
    }

    else
    {
      v30 = 0;
    }

    v33 = v30;
    v31 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v29, &v33);
    mlir::Diagnostic::attachNote((v31 + 8), *(v6 + 24), 1);
  }

  v35[0] = "expected region to end with scf.yield, but got ";
  v36 = 259;
  mlir::Operation::emitOpError(&v38, *a1, v35);
  if (v38)
  {
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = v10 - 8;
    }

    else
    {
      v11 = 0;
    }

    mlir::Diagnostic::operator<<(v39, *(*(v11 + 32) + 48));
  }

  v12 = (v39[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  return v12;
}

unint64_t mlir::scf::ConditionOp::getODSOperandIndexAndLength(mlir::scf::ConditionOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

void mlir::scf::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::scf::__mlir_ods_local_type_constraint_SCFOps1(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    return 1;
  }

  v12 = 261;
  v11[0] = "operand";
  v11[1] = 7;
  mlir::Operation::emitOpError(&v16, a1, v11);
  if (v16)
  {
    mlir::Diagnostic::operator<<<3ul>(v17, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<42ul>((v5 + 1), " must be 1-bit signless integer, but got ");
    if (*v6)
    {
      v14 = 4;
      v15 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v14, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v4 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v4;
}

BOOL mlir::scf::ConditionOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[16] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  v9 = ((*(*a1 + 280))(a1, a2, a3, a4) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v16 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v13) & 1) != 0) && (v7 = (*(*a1 + 32))(a1), v8 = mlir::IntegerType::get(*v7, 1, 0), ((*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, v13, v6, a2 + 16);
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

unint64_t mlir::scf::ForOp::getODSOperandIndexAndLength(mlir::scf::ForOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 4) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 3) << 32;
  }

  return v8 | v7;
}

BOOL mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (a2[2] >> 30)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_3:
  v13 = 261;
  v12[0] = "operand";
  v12[1] = 7;
  mlir::Operation::emitOpError(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<3ul>(v18, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<45ul>((v5 + 1), " must be signless integer or index, but got ");
    if (*v6)
    {
      v15 = 4;
      v16 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v15, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v10 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v10;
}

BOOL mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__4;
  v8 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v23, v20, 1, v17) & 1) == 0)
  {
    v20[0] = "region #";
    v21 = 259;
    mlir::Operation::emitOpError(v23, a1, v20);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
    v10 = v9;
    if (a4)
    {
      v16 = 1283;
      v15[0] = " ('";
      v15[2] = a3;
      v15[3] = a4;
      v11 = v15;
      v17[2] = "') ";
      v12 = 2;
      v13 = 3;
    }

    else
    {
      v12 = 3;
      v11 = " ";
      v13 = 1;
    }

    v19 = v13;
    v17[0] = v11;
    v18 = v12;
    if (*v9)
    {
      mlir::Diagnostic::operator<<((v9 + 1), v17);
      if (*v10)
      {
        mlir::Diagnostic::operator<<<50ul>((v10 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v8 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  return v8;
}

BOOL mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v6 = a1[2];
    if (v6)
    {
      v7 = a1[1];
      v8 = 8 * v6;
      while (*v7)
      {
        v9 = **v7;
        v10 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a2(&v14, a3);
  if (v14)
  {
    mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
    if (v14)
    {
      v13 = 261;
      v12[0] = "mapping";
      v12[1] = 7;
      mlir::Diagnostic::operator<<(v15, v12);
      if (v14)
      {
        mlir::Diagnostic::operator<<<63ul>(v15, "' failed to satisfy constraint: Device Mapping array attribute");
      }
    }
  }

  v5 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v5;
}

BOOL mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v7 = a1[1];
      if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 64)
      {
        return 1;
      }
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<58ul>(v13, "' failed to satisfy constraint: i64 dense array attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::scf::ForallOp::getODSOperands(mlir::scf::ForallOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 96);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

BOOL mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(mlir::Operation *a1, uint64_t a2, unsigned int a3)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v12 = 261;
  v11[0] = "operand";
  v11[1] = 7;
  mlir::Operation::emitOpError(&v16, a1, v11);
  if (v16)
  {
    mlir::Diagnostic::operator<<<3ul>(v17, " #");
  }

  v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
  v5 = v4;
  if (*v4)
  {
    mlir::Diagnostic::operator<<<37ul>((v4 + 1), " must be variadic of index, but got ");
    if (*v5)
    {
      v14 = 4;
      v15 = a2;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v5 + 3), &v14, 1);
      v7 = v5[3] + 24 * *(v5 + 8);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(v5 + 8);
    }
  }

  v9 = (v5[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v9;
}

BOOL mlir::scf::IndexSwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8, "cases", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::scf::IndexSwitchOp::parse(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  v5 = 0;
  v4 = 0;
  __src = &v11;
  v10 = 0x100000000;
  v6 = &v8;
  v7 = 0x200000000;
  operator new();
}

BOOL mlir::scf::ReduceOp::parse(uint64_t a1, void *a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v16[0] = v17;
  v16[1] = 0x400000000;
  v14[0] = &v15;
  v14[1] = 0x100000000;
  v11 = &v13;
  v12 = 0x200000000;
  if ((*(*a1 + 288))())
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v16, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v14) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  v5 = (*(*a1 + 792))(a1, &v10, 0, 0, 0);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        mlir::Region::~Region(v8);
        MEMORY[0x25F891040]();
      }

      goto LABEL_18;
    }

    llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v11, &v10);
    if ((*(*a1 + 128))(a1))
    {
      operator new();
    }
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    mlir::Region::~Region(v6);
    MEMORY[0x25F891040]();
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    mlir::OperationState::addRegions(a2, v11, v12);
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v16, v14, v4, (a2 + 2));
    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
LABEL_19:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v11);
  if (v14[0] != &v15)
  {
    free(v14[0]);
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return v7;
}

BOOL mlir::scf::ReduceReturnOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::scf::WhileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::scf::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v10 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  return v5;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::getODSOperands(mlir::tensor::ParallelInsertSliceOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::scf::detail::IfOpGenericAdaptorBase::IfOpGenericAdaptorBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  if (a2)
  {
    mlir::OperationName::OperationName(v5, "scf.if", 6, *(**a2 + 32));
    *(a1 + 16) = 1;
  }

  return a1;
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::BlockArgument const*,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ConditionOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ConditionOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v6 = a1;
  ODSOperandIndexAndLength = mlir::scf::ConditionOp::getODSOperandIndexAndLength(&v6, 1u);
  *a2 = a1;
  a2[1] = ODSOperandIndexAndLength;
  a2[2] = a2 + 4;
  *&result = 0x100000000;
  a2[3] = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ConditionOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6 && (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

  if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v10 = *(v9 + 8), *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v10[2] != 1)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v11 = (v9 + 16);
  v12 = *(v9 + 24);
  if (v12 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v9 + 16)) == v12)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (*v11)
  {
LABEL_13:
    v13 = ((&v8[4 * ((v8[11] >> 23) & 1) + 17] + ((v8[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v8[10];
    v23 = v13 + 24;
    if (*(v13 + 24) == v13 + 24)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v14 = *(v13 + 32);
      v15 = v14 - 8;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = *(v15 + 48);
      v17 = (*(v15 + 56) - v16) >> 3;
    }

    v21 = v16;
    v22 = v17;
    result = llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a5, &v23, &v21);
    if (!v9)
    {
      goto LABEL_24;
    }

    v12 = *(v9 + 24);
    v11 = (v9 + 16);
    if (v12 <= 0x40)
    {
      if (*v11)
      {
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    result = llvm::APInt::countLeadingZerosSlowCase(v11);
    if (result != v12)
    {
      return result;
    }
  }

LABEL_24:
  v19 = v8[9];
  v20 = v8 - 4;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = v19;
  return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a5, &v21);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22EC0))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl>(void)::Empty>>();
    qword_27FC22EB8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC22EC0);
  }

  v10[4] = qword_27FC22EB8;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[10] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22ED8))
  {
    qword_27FC22EC8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl>(void)::Empty>>();
    unk_27FC22ED0 = v1;
    __cxa_guard_release(&qword_27FC22ED8);
  }

  return qword_27FC22EC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<Empty>]";
  v6 = 119;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v40 = a2;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "(", 1uLL);
  }

  else
  {
    *v8 = 40;
    ++*(v7 + 4);
  }

  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v40, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ")", 1uLL);
  }

  else
  {
    *v11 = 41;
    ++*(v10 + 4);
  }

  v41 = v43;
  v42 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v40);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v41, v42);
  mlir::scf::ConditionOp::getODSOperands(&v40, 1u);
  if (v13)
  {
    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    v16 = mlir::scf::ConditionOp::getODSOperands(&v40, 1u);
    v18 = v17;
    v19 = (*(*a3 + 16))(a3);
    if (v18)
    {
      v20 = v19;
      (*(*a3 + 160))(a3, *(v16 + 24));
      v21 = v18 - 1;
      if (v21)
      {
        v22 = (v16 + 56);
        do
        {
          v23 = *(v20 + 4);
          if (*(v20 + 3) - v23 > 1uLL)
          {
            *v23 = 8236;
            *(v20 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v20, ", ", 2uLL);
          }

          v24 = *v22;
          v22 += 4;
          (*(*a3 + 160))(a3, v24);
          --v21;
        }

        while (v21);
      }
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if (*(v27 + 3) == v28)
    {
      llvm::raw_ostream::write(v27, ":", 1uLL);
    }

    else
    {
      *v28 = 58;
      ++*(v27 + 4);
    }

    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if (v30 >= *(v29 + 3))
    {
      llvm::raw_ostream::write(v29, 32);
    }

    else
    {
      *(v29 + 4) = v30 + 1;
      *v30 = 32;
    }

    v31 = mlir::scf::ConditionOp::getODSOperands(&v40, 1u);
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      (*(*a3 + 32))(a3, *(*(v31 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v35 = v34 - 1;
      if (v35)
      {
        v36 = (v33 + 56);
        do
        {
          v37 = (*(*a3 + 16))(a3);
          v38 = *(v37 + 4);
          if (*(v37 + 3) - v38 > 1uLL)
          {
            *v38 = 8236;
            *(v37 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v37, ", ", 2uLL);
          }

          v39 = *v36;
          v36 += 4;
          (*(*a3 + 32))(a3, *(v39 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v35;
        }

        while (v35);
      }
    }
  }

  if (v41 != v43)
  {
    free(v41);
  }
}

uint64_t mlir::Op<mlir::scf::ConditionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v26[25] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v23 = 257;
    mlir::Operation::emitOpError(&v25, a1, v22);
    if (v25)
    {
      mlir::Diagnostic::operator<<<19ul>(v26, "expects parent op ");
    }

    v21 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v25, &v21);
    v24[0] = "scf.while";
    v24[1] = 9;
    v20[0] = v24;
    v20[1] = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v20);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    if ((v11 & 1) == 0)
    {
LABEL_16:
      v25 = a1;
      ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v25, 0);
      if (!v15)
      {
LABEL_20:
        mlir::scf::ConditionOp::getODSOperands(&v25, 1u);
        IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v19);
        return IsTerminator & 1;
      }

      v16 = v15;
      v17 = 0;
      v18 = ODSOperands + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps1(v25, (*(*v18 + 8) & 0xFFFFFFFFFFFFFFF8), v17))
      {
        ++v17;
        v18 += 32;
        if (v16 == v17)
        {
          goto LABEL_20;
        }
      }
    }
  }

  IsTerminator = 0;
  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ExecuteRegionOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ExecuteRegionOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = *(a2 + 9);
  v8 = (a2 - 16);
  if (!v7)
  {
    v8 = 0;
  }

  v13[0] = v8;
  v13[1] = 0;
  v13[2] = v8;
  v13[3] = v7;
  if (v7)
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a3, v13);
  }

  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  (*(*a3 + 224))(a3, ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10), 0, 1, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  return (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
}

uint64_t mlir::Op<mlir::scf::ExecuteRegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v4))
  {
    v5 = (((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    if (*v5 == v5)
    {
      v8 = "region needs to have at least one block";
    }

    else
    {
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 - 8;
      }

      else
      {
        v7 = 0;
      }

      if (((*(v7 + 56) - *(v7 + 48)) & 0x7FFFFFFF8) == 0)
      {
        v9 = 1;
        return v9 & 1;
      }

      v8 = "region cannot have any arguments";
    }

    v11 = v8;
    v12 = 259;
    mlir::Operation::emitOpError(v13, a1, &v11);
    v9 = v14 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v2, &v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::promoteIfSingleIteration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a2;
  v4 = *(mlir::scf::ForOp::getODSOperands(&v22, 0) + 24);
  v5 = *(mlir::scf::ForOp::getODSOperands(&v22, 1u) + 24);
  ODSOperands = mlir::scf::ForOp::getODSOperands(&v22, 2u);
  v7 = mlir::constantTripCount(v4 | 4, v5 | 4, *(ODSOperands + 24) | 4);
  result = 0;
  if ((v9 & 1) != 0 && v7 == 1)
  {
    v10 = *(v22 + 36);
    v11 = *(((v22 + 16 * ((*(v22 + 44) >> 23) & 1) + ((*(v22 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v22 + 40) + 8);
    if (v11)
    {
      v12 = v11 - 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 32);
    if (v10)
    {
      v14 = (v22 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    }

    else
    {
      v14 = 4;
    }

    YieldedValues = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(v22);
    mlir::RewriterBase::replaceAllUsesWith(a3, v14, v10, YieldedValues, v16);
    v23 = v25;
    v24 = 0x600000000;
    v17 = mlir::scf::ForOp::getODSOperands(&v22, 0);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v23, *(v17 + 24));
    v18 = mlir::scf::ForOp::getODSOperands(&v22, 3u);
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v23, v23 + 8 * v24, v18, 0, v18, v19);
    v20 = *(((v22 + 16 * ((*(v22 + 44) >> 23) & 1) + ((*(v22 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v22 + 40) + 8);
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    (*(*a3 + 32))(a3, v21, *(v22 + 16), v22, v23 & 0xFFFFFFFFFFFFFFF9, v24);
    (*(*a3 + 16))(a3, v13);
    (*(*a3 + 16))(a3, v22);
    if (v23 != v25)
    {
      free(v23);
    }

    return 1;
  }

  return result;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopInductionVars(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v3 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = **(v4 + 48);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopLowerBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v3 = a1;
  __src = *(mlir::scf::ForOp::getODSOperands(&v3, 0) + 24) | 4;
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v5, &__src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopSteps(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v3 = a1;
  __src = *(mlir::scf::ForOp::getODSOperands(&v3, 2u) + 24) | 4;
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v5, &__src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopUpperBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v3 = a1;
  __src = *(mlir::scf::ForOp::getODSOperands(&v3, 1u) + 24) | 4;
  v5 = v7;
  v6 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v5, &__src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v6)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v5);
  }

  *(a2 + 64) = 1;
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48) + 8;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getLoopResults(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (!v2)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::replaceWithAdditionalYields(void x0_0, mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[7] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v9 = a2 + 8;
  *(a2 + 24) = *(a1 + 2);
  *(a2 + 32) = a1;
  ODSOperands = mlir::scf::ForOp::getODSOperands(&v18, 3u);
  v19 = &v21;
  v20 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v19, ODSOperands, 0, ODSOperands, v11);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v19, a3, 0, a3, a4);
  v12 = *(v18 + 3);
  v13 = *(mlir::scf::ForOp::getODSOperands(&v18, 0) + 24);
  v14 = *(mlir::scf::ForOp::getODSOperands(&v18, 1u) + 24);
  v15 = *(mlir::scf::ForOp::getODSOperands(&v18, 2u) + 24);
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForOp>(v9, *(**v12 + 32));
  v22[0] = v12;
  v22[1] = v16;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::scf::ForOp::build(v9, v22, v13, v14, v15, v19 & 0xFFFFFFFFFFFFFFF9, v20, v17, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_0>, v28);
}

BOOL mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = *(mlir::Value::getParentRegion(&v9) + 16);
  if (v3 == a1)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v3 = *(v5 + 16);
    v6 = v3 != 0;
    if (v3 == a1 || v3 == 0)
    {
      return !v6;
    }
  }

  v6 = 0;
  return !v6;
}

uint64_t mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::scf::ForOp>::getSpeculatability(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  mlir::scf::ForOp::getConstantStep(&v7, &v6);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v2 = v8;
  if (v8 >= 0x41)
  {
    if (v2 - llvm::APInt::countLeadingZerosSlowCase(&v7) > 0x40)
    {
      goto LABEL_8;
    }

    v3 = v7;
  }

  else
  {
    v3 = &v7;
  }

  if (*v3 == 1)
  {
    v4 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v4 = 1;
LABEL_9:
  if (v2 >= 0x41)
  {
    if (v7)
    {
      MEMORY[0x25F891010](v7, 0x1000C8000313F17);
    }
  }

  if (v4)
  {
    return 0;
  }

  return 2;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::scf::ForOp::getSuccessorRegions(&v6, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::scf::ForOp::getSuccessorRegions(&v5, a4).n128_u64[0];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[12] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22EE8))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>();
    qword_27FC22EE0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC22EE8);
  }

  v10[3] = qword_27FC22EE0;
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[11] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F00))
  {
    qword_27FC22EF0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>();
    *algn_27FC22EF8 = v1;
    __cxa_guard_release(&qword_27FC22F00);
  }

  return qword_27FC22EF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AtLeastNOperands<3>::Impl<Empty>]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC22F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F10))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>();
    qword_27FC22F08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC22F10);
  }

  return qword_27FC22F08;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F28))
  {
    qword_27FC22F18 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>();
    unk_27FC22F20 = v1;
    __cxa_guard_release(&qword_27FC22F28);
  }

  return qword_27FC22F18;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<Empty>]";
  v6 = 139;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[51];
}

uint64_t llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>();
    unk_27FC1B1B0 = v1;
  }

  return llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LoopLikeOpInterface::Trait<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, llvm::raw_ostream *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v53 = a2;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  v9 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  (*(*a3 + 160))(a3, **(v10 + 48));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 15648;
    *(v11 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v11, " = ", 3uLL);
  }

  ODSOperands = mlir::scf::ForOp::getODSOperands(&v53, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 3uLL)
  {
    *v15 = 544175136;
    *(v14 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v14, " to ", 4uLL);
  }

  v16 = mlir::scf::ForOp::getODSOperands(&v53, 1u);
  (*(*a3 + 160))(a3, *(v16 + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if ((*(v17 + 3) - v18) > 5)
  {
    *(v18 + 4) = 8304;
    *v18 = 1702130464;
    *(v17 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v17, " step ", 6uLL);
  }

  v19 = mlir::scf::ForOp::getODSOperands(&v53, 2u);
  (*(*a3 + 160))(a3, *(v19 + 24));
  v20 = *(((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = ((*(v21 + 56) - v22) >> 3) - 1;
  v24 = mlir::scf::ForOp::getODSOperands(&v53, 3u);
  printInitializationList(a3, (v22 + 8), v23, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25, " iter_args", 0xAuLL);
  mlir::scf::ForOp::getODSOperands(&v53, 3u);
  if (v26)
  {
    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 4)
    {
      *(v28 + 4) = 40;
      *v28 = 540945696;
      *(v27 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v27, " -> (", 5uLL);
    }

    v29 = mlir::scf::ForOp::getODSOperands(&v53, 3u);
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      (*(*a3 + 32))(a3, *(*(v29 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v33 = v32 - 1;
      if (v33)
      {
        v34 = (v31 + 56);
        do
        {
          v35 = (*(*a3 + 16))(a3);
          v36 = *(v35 + 4);
          if (*(v35 + 3) - v36 > 1uLL)
          {
            *v36 = 8236;
            *(v35 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v35, ", ", 2uLL);
          }

          v37 = *v34;
          v34 += 4;
          (*(*a3 + 32))(a3, *(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v33;
        }

        while (v33);
      }
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (v39 >= *(v38 + 3))
    {
      llvm::raw_ostream::write(v38, 41);
    }

    else
    {
      *(v38 + 4) = v39 + 1;
      *v39 = 41;
    }
  }

  v40 = (*(*a3 + 16))(a3);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = *(((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10) + 8);
  if (v42)
  {
    v43 = v42 - 8;
  }

  else
  {
    v43 = 0;
  }

  v44 = *(**(v43 + 48) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v45 = (*(*a3 + 16))(a3);
    v46 = *(v45 + 4);
    if ((*(v45 + 3) - v46) > 2)
    {
      *(v46 + 2) = 32;
      *v46 = 14880;
      *(v45 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v45, " : ", 3uLL);
    }

    (*(*a3 + 32))(a3, v44);
    v47 = (*(*a3 + 16))(a3);
    v48 = *(v47 + 4);
    if (v48 >= *(v47 + 3))
    {
      llvm::raw_ostream::write(v47, 32);
    }

    else
    {
      *(v47 + 4) = v48 + 1;
      *v48 = 32;
    }
  }

  v49 = ((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10);
  mlir::scf::ForOp::getODSOperands(&v53, 3u);
  (*(*a3 + 224))(a3, v49, 0, v50 != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v53);
  return (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
}

uint64_t mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 3) & 1) == 0)
  {
    goto LABEL_35;
  }

  v4 = *(a1 + 11);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) == 0)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_10;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v34 = 257;
      mlir::Operation::emitOpError(&v35, a1, v33);
      if (v35)
      {
        mlir::Diagnostic::operator<<<26ul>(&v36, "expects a non-empty block");
      }

      v11 = v37;
      goto LABEL_18;
    }

LABEL_10:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_19;
    }
  }

  LODWORD(v32) = v6;
  v33[0] = "expects region #";
  v34 = 259;
  mlir::Operation::emitOpError(&v35, a1, v33);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v35, &v32);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_18:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  if (v11)
  {
LABEL_35:
    v29 = 0;
  }

  else
  {
LABEL_19:
    v32 = a1;
    ODSOperands = mlir::scf::ForOp::getODSOperands(&v32, 0);
    v14 = v13;
    if (v13)
    {
      v15 = 0;
      v16 = ODSOperands + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v32, (*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8), v15))
      {
        ++v15;
        v16 += 32;
        if (v14 == v15)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_35;
    }

LABEL_23:
    v17 = mlir::scf::ForOp::getODSOperands(&v32, 1u);
    if (v18)
    {
      v19 = v18;
      v20 = v17 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v32, (*(*v20 + 8) & 0xFFFFFFFFFFFFFFF8), v14))
      {
        LODWORD(v14) = v14 + 1;
        v20 += 32;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_35;
    }

LABEL_27:
    v21 = mlir::scf::ForOp::getODSOperands(&v32, 2u);
    if (v22)
    {
      v23 = v22;
      v24 = v21 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v32, (*(*v24 + 8) & 0xFFFFFFFFFFFFFFF8), v14))
      {
        LODWORD(v14) = v14 + 1;
        v24 += 32;
        if (!--v23)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    mlir::scf::ForOp::getODSOperands(&v32, 3u);
    v25 = *(*(mlir::scf::ForOp::getODSOperands(&v32, 0) + 24) + 8);
    if ((*(*(mlir::scf::ForOp::getODSOperands(&v32, 1u) + 24) + 8) ^ v25) <= 7 && (v26 = *(*(mlir::scf::ForOp::getODSOperands(&v32, 1u) + 24) + 8), (*(*(mlir::scf::ForOp::getODSOperands(&v32, 2u) + 24) + 8) ^ v26) <= 7) && (v27 = *(*(mlir::scf::ForOp::getODSOperands(&v32, 2u) + 24) + 8), (*(*(mlir::scf::ForOp::getODSOperands(&v32, 0) + 24) + 8) ^ v27) < 8))
    {
      if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(v32, ((v32 + 16 * ((*(v32 + 11) >> 23) & 1) + ((*(v32 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v32 + 10), "region", 6, 0))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33[0] = "failed to verify that all of {lowerBound, upperBound, step} have same type";
      v34 = 259;
      mlir::Operation::emitOpError(&v35, v32, v33);
      v28 = v37;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
      if (v28)
      {
        goto LABEL_35;
      }
    }

    v32 = a1;
    mlir::scf::ForOp::getODSOperands(&v32, 3u);
    if (v31 == *(v32 + 9))
    {
      v29 = 1;
    }

    else
    {
      v33[0] = "mismatch in number of loop-carried values and defined values";
      v34 = 259;
      mlir::Operation::emitOpError(&v35, v32, v33);
      v29 = v37 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    }
  }

  return v29 & 1;
}

uint64_t mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
        {
          v44 = 1283;
          v43[0] = "expects regions to end with '";
          v43[2] = "scf.yield";
          v43[3] = 9;
          v45[0] = v43;
          v45[2] = "', found '";
          v46 = 770;
          v37 = *(v8 + 8);
          *v47 = v45;
          v48 = *(v37 + 16);
          v49 = 1282;
          v50[0] = v47;
          v50[2] = "'";
          v51 = 770;
          mlir::Operation::emitOpError(&v54, this, v50);
          mlir::Diagnostic::attachNote(v55, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if ((mlir::detail::verifyLoopLikeOpInterface(this, a2) & 1) == 0 || (mlir::detail::verifyTypesAlongControlFlowEdges(this, v9) & 1) == 0)
  {
    v22 = 0;
    return v22 & 1;
  }

  v50[0] = this;
  v10 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(**(v11 + 48) + 8);
  if ((*(*(mlir::scf::ForOp::getODSOperands(v50, 0) + 24) + 8) ^ v12) >= 8)
  {
    v52[0] = "expected induction variable to be same type as bounds and step";
    v53 = 259;
    v13 = v50[0];
LABEL_48:
    mlir::Operation::emitOpError(&v54, v13, v52);
    v39 = v56;
    goto LABEL_49;
  }

  v13 = v50[0];
  v14 = *(((v50[0] + 16 * ((*(v50[0] + 11) >> 23) & 1) + ((*(v50[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v50[0] + 10) + 8);
  if (v14)
  {
    v15 = v14 - 8;
  }

  else
  {
    v15 = 0;
  }

  if (((*(v15 + 56) - *(v15 + 48)) >> 3) - 1 != *(v50[0] + 9))
  {
    v52[0] = "mismatch in number of basic block args and defined values";
    v53 = 259;
    goto LABEL_48;
  }

  ODSOperands = mlir::scf::ForOp::getODSOperands(v50, 3u);
  v18 = *(v50[0] + 9);
  v19 = *(((v50[0] + 16 * ((*(v50[0] + 11) >> 23) & 1) + ((*(v50[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v50[0] + 10) + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v50[0] - 16;
  }

  else
  {
    v21 = 0;
  }

  v22 = 1;
  if (!v16)
  {
    return v22 & 1;
  }

  v23 = *(v20 + 48);
  v24 = *(v20 + 56);
  v25 = v23 + 8 == v24 || v18 == 0;
  if (v25)
  {
    return v22 & 1;
  }

  v26 = 0;
  v27 = v23 + 16;
  v28 = v18 - 1;
  v29 = ODSOperands + 24;
  v30 = v50[0] - 16;
  while (1)
  {
    v31 = v21;
    if (!v26)
    {
      goto LABEL_36;
    }

    v32 = *(v50[0] - 1) & 7;
    v33 = v50[0] - 16;
    v34 = v26;
    if (v32 != 6)
    {
      v35 = (5 - v32);
      v31 = v30;
      v34 = v26 - v35;
      if (v26 <= v35)
      {
        goto LABEL_36;
      }

      v33 = v50[0] - 16 * v35 - 16;
    }

    v31 = &v33[-24 * v34];
LABEL_36:
    v36 = *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v36 != (*(v31 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      break;
    }

    if ((*(*(v23 + 8 * v26 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v36)
    {
      v47[0] = v26;
      v53 = 257;
      mlir::Operation::emitOpError(&v54, v50[0], v52);
      if (v54)
      {
        mlir::Diagnostic::operator<<<24ul>(v55, "types mismatch between ");
      }

      v42 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v54, v47);
      v41 = v42;
      if (*v42)
      {
        mlir::Diagnostic::operator<<<37ul>((v42 + 1), "th iter region arg and defined value");
      }

      goto LABEL_58;
    }

    if (v16 - 1 != v26 && v27 != v24)
    {
      v27 += 8;
      v30 -= 16;
      v29 += 32;
      v25 = v28 == v26++;
      if (!v25)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  v47[0] = v26;
  v53 = 257;
  mlir::Operation::emitOpError(&v54, v50[0], v52);
  if (v54)
  {
    mlir::Diagnostic::operator<<<24ul>(v55, "types mismatch between ");
  }

  v40 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v54, v47);
  v41 = v40;
  if (*v40)
  {
    mlir::Diagnostic::operator<<<34ul>((v40 + 1), "th iter operand and defined value");
  }

LABEL_58:
  v39 = *(v41 + 200);
LABEL_49:
  v22 = v39 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return v22 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 15)
  {
    if (a4 == 7)
    {
      if (*a3 != 1886413165 || *(a3 + 3) != 1735289200)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    }

    else
    {
      v5 = 0;
      if (a4 != 10)
      {
        return v5 | v4;
      }

      if (*a3 != 0x7453636974617473 || *(a3 + 8) != 28773)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
    }

LABEL_44:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 16)
  {
    if (*a3 == 0x6F4C636974617473 && *(a3 + 8) == 0x646E756F42726577)
    {
      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    }

    else
    {
      if (*a3 != 0x7055636974617473 || *(a3 + 8) != 0x646E756F42726570)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
    }

    goto LABEL_44;
  }

  if (a4 == 19)
  {
    v6 = *(a3 + 11);
    v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
    v8 = 1400139365;
  }

  else
  {
    v5 = 0;
    if (a4 != 21)
    {
      return v5 | v4;
    }

    v6 = *(a3 + 13);
    v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
    v8 = 1935635566;
  }

  v12 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v12)
  {
LABEL_41:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96, 4);
  v5 = v4 & 0xFFFFFFFFFFFFFF00;
  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 <= 15)
  {
    if (v5 == 7)
    {
      v25 = *v4;
      v26 = *(v4 + 3);
      if (v25 == 1886413165 && v26 == 1735289200)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v30 = a4;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v30;
      }
    }

    else if (v5 == 10)
    {
      v10 = *v4;
      v11 = *(v4 + 4);
      if (v10 == 0x7453636974617473 && v11 == 28773)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v13[2] == 64)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v14;
      }
    }
  }

  else if (v5 == 16)
  {
    if (*v4 == 0x6F4C636974617473 && *(v4 + 1) == 0x646E756F42726577)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v28 = *(a4 + 8), *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v28[2] == 64)
        {
          v29 = a4;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v29;
    }

    else
    {
      v17 = *v4;
      v16 = *(v4 + 1);
      if (v17 == 0x7055636974617473 && v16 == 0x646E756F42726570)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v19 = *(a4 + 8), *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v19[2] == 64)
          {
            v20 = a4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v20;
      }
    }
  }

  else
  {
    if (v5 == 19)
    {
      v6 = *v4 ^ 0x53646E617265706FLL;
      v7 = *(v4 + 1) ^ 0x6953746E656D6765;
      v8 = *(v4 + 11);
      v9 = 1400139365;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v6 = *v4 ^ 0x5F646E617265706FLL;
      v7 = *(v4 + 1) ^ 0x5F746E656D676573;
      v8 = *(v4 + 13);
      v9 = 1935635566;
    }

    if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
    {
      v21 = 1;
    }

    else
    {
      v21 = a4 == 0;
    }

    if (!v21 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v22 = *(a4 + 8);
      if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v22[2] == 32 && *(a4 + 16) == 4)
      {
        v23 = *(a4 + 32);
        if (v23 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96), *(a4 + 24), v23 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v26 = 261;
    v24 = "mapping";
    v25 = 7;
    v10 = mlir::StringAttr::get(v9, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v26 = 261;
    v24 = "staticLowerBound";
    v25 = 16;
    v13 = mlir::StringAttr::get(v12, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v26 = 261;
    v24 = "staticStep";
    v25 = 10;
    v16 = mlir::StringAttr::get(v15, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v26 = 261;
    v24 = "staticUpperBound";
    v25 = 16;
    v19 = mlir::StringAttr::get(v18, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 4), 4);
  v21 = *(**v20 + 32);
  v26 = 261;
  v24 = "operandSegmentSizes";
  v25 = 19;
  v23 = mlir::StringAttr::get(v21, &v24, v22);
  mlir::NamedAttrList::push_back(a3, v23, v20);
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v14, "staticLowerBound", 0x10, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v17, "staticStep", 0xA, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0)
        {
          return 1;
        }

        v20 = v18[1];
        if (!v20 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v20, "staticUpperBound", 0x10, a4, a5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v34, a6, a2, a3);
    if (v34)
    {
      mlir::Diagnostic::operator<<<42ul>(v35, "expected DictionaryAttr to set properties");
    }

    goto LABEL_43;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "mapping", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v34, a6);
        if (v34)
        {
          goto LABEL_41;
        }

LABEL_43:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
        return 0;
      }

      *a3 = v12;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticLowerBound", 0x10uLL);
  if (v14)
  {
    v12 = *(v13 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v12[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        a5(&v34, a6);
        if (!v34)
        {
          goto LABEL_43;
        }

LABEL_40:
        mlir::Diagnostic::operator<<<62ul>(v35, v28);
        goto LABEL_41;
      }

      a3[1] = v12;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticStep", 0xAuLL);
  if (v17)
  {
    v12 = *(v16 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v18 = v12[1], *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v18[2] != 64)
      {
        a5(&v34, a6);
        if (!v34)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (v34)
        {
          v32 = 0;
          v33 = v12;
          v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
          v30 = v36 + 24 * v37;
          v31 = *v29;
          *(v30 + 16) = *(v29 + 16);
          *v30 = v31;
          ++v37;
        }

        goto LABEL_43;
      }

      a3[2] = v12;
    }
  }

  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticUpperBound", 0x10uLL);
  if (v20)
  {
    v12 = *(v19 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v21 = v12[1];
        if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v21[2] == 64)
        {
          a3[3] = v12;
          goto LABEL_28;
        }
      }

      a5(&v34, a6);
      if (!v34)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

LABEL_28:
  v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v23 & 1) == 0 || (v24 = *(v22 + 8)) == 0)
  {
    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v26 & 1) == 0)
    {
      return 1;
    }

    v24 = *(v25 + 8);
    if (!v24)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 4, 4, v24, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v28 = v30;
  v29 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "mapping";
    v26 = 7;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "staticLowerBound";
    v26 = 16;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "staticStep";
    v26 = 10;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "staticUpperBound";
    v26 = 16;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v18, v16);
  }

  v19 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 4), 4);
  v20 = *(**v19 + 32);
  v27 = 261;
  v25 = "operandSegmentSizes";
  v26 = 19;
  v22 = mlir::StringAttr::get(v20, &v25, v21);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v22, v19);
  if (v29)
  {
    v23 = mlir::DictionaryAttr::get(v3, v28, v29);
  }

  else
  {
    v23 = 0;
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v23;
}

__n128 mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2] || a3[3] != a2[3])
  {
    return 0;
  }

  return a3[4] == a2[4] && a3[5] == a2[5];
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::hashProperties(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a2[2];
  v7 = a2[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v18 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = a2[5];
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (a2[4] ^ v13 ^ 0xFF51AFD7ED558CCDLL);
  v16 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47))) ^ v12;
  memset(v21, 0, sizeof(v21));
  v22 = 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v20, 0, v21, &v21[3] + 8, &v19, &v18, &v17, &v16);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 5)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 4, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 3) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 4uLL) & 1) != 0);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 32, 4);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  (*(*a3 + 16))(a3, *(v6 + 24));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 32), 4);
  }

  return result;
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v2, &v3);
}