uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::CallGraphNode *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(uint64_t a1)
{
  v2 = *(a1 + 88);
  while (1)
  {
    result = *(v2 - 24);
    if (result == *(*(v2 - 32) + 48) + 8 * *(*(v2 - 32) + 56))
    {
      break;
    }

    v4 = *(v2 - 16);
    *(v2 - 24) = result + 8;
    v5 = v4();
    v8 = v5;
    v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::doFind<mlir::CallGraphNode const*>((a1 + 8), &v8);
    if (!v6 || v6 == *(a1 + 8) + 16 * *(a1 + 24))
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(a1, v5);
      v2 = *(a1 + 88);
    }

    else
    {
      v7 = *(v6 + 8);
      v2 = *(a1 + 88);
      if (*(v2 - 8) > v7)
      {
        *(v2 - 8) = v7;
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::doFind<mlir::CallGraphNode const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

void std::vector<mlir::CallGraphNode *>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::CallGraphNode *>>(a1, a2);
  }

  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100]((v5 + 8), 0);
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

void llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(char **a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 2);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 8) = *(v5 + 8);
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 4) = 0;
      v8 += 24;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = -24 * v9;
      v11 = &v5[24 * v9 - 24];
      do
      {
        v11 = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(v11) - 24;
        v10 += 24;
      }

      while (v10);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v12;
}

llvm::StringMapImpl *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *(this + 2);
    *(this + 12) = *(a2 + 12);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = *(*a2 + 8 * i);
        if (v6)
        {
          v7 = v6 == -8;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          llvm::StringMapEntry<mlir::OpPassManager>::create<llvm::MallocAllocator,mlir::OpPassManager&>((v6 + 16), *v6, this, (v6 + 8));
        }

        *(*this + 8 * i) = v6;
      }
    }
  }

  return this;
}

void llvm::StringMapEntry<mlir::OpPassManager>::create<llvm::MallocAllocator,mlir::OpPassManager&>(const void *a1, size_t a2, uint64_t a3, const mlir::detail::OpPassManagerImpl **a4)
{
  buffer = llvm::allocate_buffer((a2 + 17), 8uLL);
  v8 = buffer;
  v9 = buffer + 2;
  if (a2)
  {
    memcpy(buffer + 2, a1, a2);
  }

  *(v9 + a2) = 0;
  *v8 = a2;
  v8[1] = 0;
  mlir::OpPassManager::operator=((v8 + 1), a4);
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E815A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::setOrderIDForThread(**(a1 + 32), add);
      v5 = *(**(a1 + 48) + 8 * add);
      v6 = *(a1 + 40);
      v7 = v6[1];
      v8 = **v6;
      v9 = (*v6)[1];
      if (v8 == v9)
      {
        v11 = **v6;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v6;
      }

      v12 = (v11 - v8);
      v13 = mlir::Inliner::Impl::optimizeCallable(v7, *(*v5 + 16), *(v7 + 8) + 24 * v12, v4);
      atomic_store(0, &(**v6)[v12]);
      if ((v13 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(**(a1 + 32));
      v14 = atomic_load(*(a1 + 8));
    }

    while ((v14 & 1) == 0);
  }
}

void llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, a2);
    if (v13[16] == 1)
    {
      v4 = *a2;

      llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(a1 + 24, v4);
    }
  }

  else
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      v9 = *(a1 + 24);
      while (*v9 != v7)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = *(a1 + 24);
    }

    if (v9 == (*(a1 + 24) + 8 * v6))
    {
      v7 = *a2;
LABEL_14:
      llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(a1 + 24, v7);
      v10 = *(a1 + 32);
      if (v10 >= 2)
      {
        v11 = *v5;
        v12 = 8 * v10;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, v11++);
          v12 -= 8;
        }

        while (v12);
      }
    }
  }
}

void *anonymous namespace::CGUseList::eraseNode(int32x2_t *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = 8 * v4;
    do
    {
      if ((*v5 & 6) == 4)
      {
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = a1[3];
  v8 = a1[5].u32[0];
  if (v8)
  {
    v9 = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v10 = (*&v7 + 56 * v9);
    v11 = *v10;
    if (*v10 == a2)
    {
      goto LABEL_13;
    }

    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v8 - 1);
      v10 = (*&v7 + 56 * v9);
      v11 = *v10;
      if (*v10 == a2)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = (*&v7 + 56 * v8);
LABEL_13:
  MEMORY[0x25F891030](v10[4], 8);
  MEMORY[0x25F891030](v10[1], 8);
  *v10 = -8192;
  a1[4] = vadd_s32(a1[4], 0x1FFFFFFFFLL);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode *>(*a1, a1[2].i32[0], a2);
  if (result)
  {
    *result = -8192;
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL mlir::Operation::hasOneUse(mlir::Operation *this)
{
  v1 = *(this + 9);
  v2 = this - 16;
  if (!v1)
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = v2;
  v6 = v1;
  v7 = 0;
  if (!v1)
  {
    return 0;
  }

  mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v4);
  if (!v7)
  {
    return 0;
  }

  mlir::ResultRange::UseIterator::operator++(&v4);
  return v7 == 0;
}

_DWORD *llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::dropCallUses(mlir::CallGraphNode *,mlir::Operation *,mlir::CallGraph &)::$_0>(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = **a1;
  v4 = *(*a1 + 16);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode const*>(v3, v4, a2);
  if (result)
  {
    v6 = result == (v3 + 16 * v4);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(a1 + 8);
    --result[2];
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](v7, &v8);
    --*result;
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, *(a2 + 16));
  if (result)
  {
    v3 = *(*result + 24);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::shouldAnalyzeRecursively(mlir::InlinerInterface *this, mlir::Operation *a2)
{
  InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (!InterfaceFor)
  {
    return 1;
  }

  v3 = *(*InterfaceFor + 40);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v3 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2) + 48);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 56);

  return v2();
}

uint64_t mlir::InlinerInterface::allowSingleBlockOptimization(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v5 = a2 - 8;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, v7) + 96);

  return v8();
}

uint64_t mlir::InlinerInterface::handleArgument(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, mlir::Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 72);

  return v4();
}

uint64_t mlir::InlinerInterface::handleResult(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, mlir::Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 80);

  return v4();
}

uint64_t mlir::InlinerInterface::processInlinedCallBlocks(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 88);

  return v2();
}

uint64_t mlir::inlineCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, unsigned int a7)
{
  v132[4] = *MEMORY[0x277D85DE8];
  if (*a6 != a6)
  {
    v13 = a6[1];
    if (v13)
    {
      v14 = v13 - 8;
    }

    else
    {
      v14 = 0;
    }

    v108 = (*(a5 + 16))(a5, a4);
    v16 = v15;
    v17 = (*(a3 + 16))(a3, a2);
    v126 = v128;
    v127 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v126, v17, 0, v17, v18);
    v19 = *(a2 + 36);
    if (v19)
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    v123 = v125;
    v124 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v123, v20, 0, v20, v19);
    if (v127 == ((*(v14 + 56) - *(v14 + 48)) >> 3) && v16 == v124)
    {
      v107 = a7;
      v120 = v122;
      v121 = 0x400000000;
      if (v16 + v127 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v16 + v127, 8);
      }

      v21 = *(a2 + 16);
      v22 = *(a2 + 24);
      v117[0] = *(**v22 + 32);
      v117[1] = 0;
      v118.i64[0] = v21;
      v118.i64[1] = a2;
      v23 = *(a2 + 48);
      if (*(v23 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v24 = (*(v23 + 8) + 32);
      }

      else
      {
        v24 = (v23 + 24);
      }

      v129 = *v24;
      v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::doFind<mlir::Dialect *>((a1 + 8), &v129);
      v27 = 0;
      v106 = a1;
      if (v26 && v26 != (*(a1 + 8) + 8 * *(a1 + 24)))
      {
        v27 = *v26;
      }

      v109[0] = 0;
      v109[1] = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      if (v127)
      {
        v28 = 0;
        v29 = 8 * v127;
        while (1)
        {
          v30 = *(*(v14 + 48) + v28);
          v31 = *(v126 + v28);
          v32 = v30[1] & 0xFFFFFFFFFFFFFFF8;
          if ((*(v31 + 8) & 0xFFFFFFFFFFFFFFF8) != v32)
          {
            v31 = materializeConversion(v27, &v120, v117, *(v126 + v28), v32, v22);
            if (!v31)
            {
              break;
            }
          }

          v129 = v30;
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v109, &v129) = v31;
          v28 += 8;
          if (v29 == v28)
          {
            goto LABEL_28;
          }
        }

        if (v121)
        {
          v71 = v120;
          v72 = 8 * v121;
          do
          {
            v73 = *v71;
            v74 = (*v71 - 16);
            v129 = *(*(*v71 + 72) + 24);
            mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v74, &v129);
            if (*(v73 + 2))
            {
              *(v73 + 2) = 0;
              v76 = *v73;
              v75 = *(v73 + 1);
              *v75 = *v73;
              *(v76 + 8) = v75;
              *v73 = 0;
              *(v73 + 1) = 0;
            }

            mlir::Operation::destroy(v73);
            v71 += 8;
            v72 -= 8;
          }

          while (v72);
        }
      }

      else
      {
LABEL_28:
        v118 = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
        if (v124)
        {
          v33 = 0;
          v34 = 8 * v124;
          do
          {
            v35 = *(v123 + v33);
            v36 = *(v35 + 8) & 0xFFFFFFFFFFFFFFF8;
            if (*(v108 + v33) != v36)
            {
              v37 = materializeConversion(v27, &v120, v117, *(v123 + v33), v36, v22);
              if (!v37)
              {
                if (v121)
                {
                  v77 = v120;
                  v78 = 8 * v121;
                  do
                  {
                    v79 = *v77;
                    v80 = (*v77 - 16);
                    v129 = *(*(*v77 + 72) + 24);
                    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v80, &v129);
                    if (*(v79 + 2))
                    {
                      *(v79 + 2) = 0;
                      v82 = *v79;
                      v81 = *(v79 + 1);
                      *v81 = *v79;
                      *(v82 + 8) = v81;
                      *v79 = 0;
                      *(v79 + 1) = 0;
                    }

                    mlir::Operation::destroy(v79);
                    v77 += 8;
                    v78 -= 8;
                  }

                  while (v78);
                }

                goto LABEL_83;
              }

              v38 = v37;
              v129 = v37;
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v35, &v129);
              v39 = 0;
              v40 = v38[1] & 7;
              v41 = v40 == 7;
              if (v40 == 7)
              {
                v42 = 0;
              }

              else
              {
                v42 = v38;
              }

              if (!v41)
              {
                v43 = v42[1] & 7;
                if (v43 == 6)
                {
                  v39 = &v42[3 * v42[2] + 15];
                }

                else
                {
                  v39 = &v42[2 * v43 + 2];
                }
              }

              mlir::Operation::replaceUsesOfWith(v39, v38, v35);
            }

            v33 += 8;
          }

          while (v34 != v33);
        }

        if ((*(*v106 + 24))(v106, a2, a4, v107))
        {
          if (*a6 != a6)
          {
            v44 = *(a2 + 16);
            v104 = *(a2 + 8);
            v45 = a6[1];
            if (v45)
            {
              v46 = v45 - 8;
            }

            else
            {
              v46 = 0;
            }

            v47 = *(v46 + 48);
            v48 = *(v46 + 56);
            if (v48 == v47)
            {
LABEL_49:
              v49 = v44[3];
              if ((*(*v106 + 32))(v106, v49 & 0xFFFFFFFFFFFFFFF8, a6, v107, v109) && isLegalToInline(v106, a6, v49 & 0xFFFFFFFFFFFFFFF8, v107, v109))
              {
                v119[0] = *(***(*((v44[3] & 0xFFFFFFFFFFFFFFF8) + 16) + 24) + 32);
                v119[1] = 0;
                v50 = v104;
                v119[2] = v44;
                v119[3] = v104;
                v51 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(a6[2]);
                v105 = v51;
                if (a2)
                {
                  v53 = v51 == 0;
                }

                else
                {
                  v53 = 1;
                }

                if (!v53)
                {
                  v54 = v52;
                  v55 = (*v52)(v52, v51);
                  if (*v55 == v55)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v56 = v55[1];
                    if (v56)
                    {
                      v57 = v56 - 8;
                    }

                    else
                    {
                      v57 = 0;
                    }

                    v58 = ((*(v57 + 56) - *(v57 + 48)) >> 3);
                  }

                  v83 = mlir::DictionaryAttr::get(v119[0], 0, 0);
                  v129 = &v131;
                  v130 = 0x600000000;
                  llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(&v129, v58, v83);
                  v84 = v54[3](v54, v105);
                  if (v84)
                  {
                    v85 = *(v84 + 16);
                    if (v85)
                    {
                      v86 = 0;
                      v87 = *(v84 + 8);
                      v88 = &v87[v85];
                      do
                      {
                        v89 = *v87++;
                        v129[v86++] = v89;
                      }

                      while (v87 != v88);
                    }
                  }

                  v90 = (*v54)(v54, v105);
                  if (*v90 == v90)
                  {
                    v95 = v129;
                  }

                  else
                  {
                    v91 = v90[1];
                    v92 = v91 - 8;
                    if (!v91)
                    {
                      v92 = 0;
                    }

                    v93 = *(v92 + 48);
                    v94 = *(v92 + 56);
                    v95 = v129;
                    if (v94 != v93 && v130 != 0)
                    {
                      v97 = v93 + 8;
                      v98 = 8 * v130 - 8;
                      do
                      {
                        v132[0] = *(v97 - 8);
                        v99 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v109, v132);
                        v100 = 0;
                        if (v99 && v99 != v109[0] + 16 * v110)
                        {
                          v100 = *(v99 + 8);
                        }

                        v101 = *v95++;
                        v102 = (*(*v106 + 72))(v106, v119, a2, v105, v100, v101);
                        v132[0] = *(v97 - 8);
                        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v109, v132) = v102;
                        if (v97 == v94)
                        {
                          break;
                        }

                        v97 += 8;
                        v103 = v98;
                        v98 -= 8;
                      }

                      while (v103);
                      v95 = v129;
                    }
                  }

                  if (v95 != &v131)
                  {
                    free(v95);
                  }

                  v50 = v104;
                }

                mlir::Block::splitBlock(v44, v50);
              }
            }

            else
            {
              while (1)
              {
                v129 = *v47;
                if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v109, &v129))
                {
                  break;
                }

                if (++v47 == v48)
                {
                  goto LABEL_49;
                }
              }
            }
          }

          if (v121)
          {
            v65 = v120;
            v66 = 8 * v121;
            do
            {
              v67 = *v65;
              v68 = (*v65 - 16);
              v129 = *(*(*v65 + 72) + 24);
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v68, &v129);
              if (*(v67 + 2))
              {
                *(v67 + 2) = 0;
                v70 = *v67;
                v69 = *(v67 + 1);
                *v69 = *v67;
                *(v70 + 8) = v69;
                *v67 = 0;
                *(v67 + 1) = 0;
              }

              mlir::Operation::destroy(v67);
              v65 += 8;
              v66 -= 8;
            }

            while (v66);
          }
        }

        else if (v121)
        {
          v59 = v120;
          v60 = 8 * v121;
          do
          {
            v61 = *v59;
            v62 = (*v59 - 16);
            v129 = *(*(*v59 + 72) + 24);
            mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v62, &v129);
            if (*(v61 + 2))
            {
              *(v61 + 2) = 0;
              v64 = *v61;
              v63 = *(v61 + 1);
              *v63 = *v61;
              *(v64 + 8) = v63;
              *v61 = 0;
              *(v61 + 1) = 0;
            }

            mlir::Operation::destroy(v61);
            v59 += 8;
            v60 -= 8;
          }

          while (v60);
        }
      }

LABEL_83:
      MEMORY[0x25F891030](v114, 8);
      MEMORY[0x25F891030](v111, 8);
      MEMORY[0x25F891030](v109[0], 8);
      if (v120 != v122)
      {
        free(v120);
      }
    }

    if (v123 != v125)
    {
      free(v123);
    }

    if (v126 != v128)
    {
      free(v126);
    }
  }

  return 0;
}

uint64_t materializeConversion(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    result = (*(*result + 64))(result, a3, a4, a5, a6);
    if (result)
    {
      v7 = result;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, result);
      return v7 - 16;
    }
  }

  return result;
}

uint64_t isLegalToInline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  if (v5 != a2)
  {
    while (2)
    {
      v11 = v5 - 8;
      if (!v5)
      {
        v11 = 0;
      }

      v12 = v11 + 32;
      for (i = *(v11 + 40); i != v12; i = *(i + 8))
      {
        result = (*(*a1 + 40))(a1, i, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        if ((*(*a1 + 48))(a1, i))
        {
          v15 = *(i + 44);
          if ((v15 & 0x7FFFFF) != 0)
          {
            v16 = i + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 32 * *(i + 40) + 64;
            v17 = 24 * (v15 & 0x7FFFFF);
            while ((isLegalToInline(a1, v16, a3, a4, a5) & 1) != 0)
            {
              v16 += 24;
              v17 -= 24;
              if (!v17)
              {
                goto LABEL_12;
              }
            }

            return 0;
          }
        }

LABEL_12:
        ;
      }

      v5 = *(v5 + 8);
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void handleResultImpl(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v14 = mlir::DictionaryAttr::get(*a2, 0, 0);
  v40 = v42;
  v41 = 0x600000000;
  llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(&v40, a8, v14);
  v15 = (*(a6 + 32))(a6, a5);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = *(v15 + 8);
      v19 = &v18[v16];
      do
      {
        v20 = *v18++;
        v40[v17++] = v20;
      }

      while (v18 != v19);
    }
  }

  v38 = 0x600000000;
  v21 = v40;
  v34 = a7;
  v35 = 0;
  v36 = v40;
  v37 = v39;
  if (a8 && v41)
  {
    v22 = 0;
    v23 = &v40[v41];
    do
    {
      v24 = mlir::ValueRange::dereference_iterator(&v34, v22);
      v32[0] = v24;
      v32[1] = v21;
      v30[0] = 0;
      v30[1] = 0;
      v31 = 0;
      for (i = *v24; i; i = *i)
      {
        v29 = i[2];
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v30, &v29, v33);
      }

      v26 = *v21++;
      v27 = (*(*a1 + 80))(a1, a2, a3, a5, v24, v26);
      v33[0] = v30;
      mlir::Value::replaceUsesWithIf(v32, v27, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>, v33);
      MEMORY[0x25F891030](v30[0], 8);
      v35 = ++v22;
      v36 = v21;
    }

    while (v22 != a8 && v21 != v23);
    if (v37 != v39)
    {
      free(v37);
    }
  }

  if (v40 != v42)
  {
    free(v40);
  }
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  if (a1[3] >= a2)
  {
    v10 = a1[2];
    if (v10 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = a1[2];
    }

    if (v11)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (*a1 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *(v14 - 1) = a3;
        }

        if (v15.i8[4])
        {
          *v14 = a3;
        }

        v12 += 2;
        v14 += 2;
      }

      while (((v11 + 1) & 0x1FFFFFFFELL) != v12);
      v10 = a1[2];
    }

    v16 = a2 - v10;
    if (a2 > v10)
    {
      v17 = 0;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = (*a1 + 8 * v10 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v17), xmmword_25D0A0500)));
        if (v20.i8[0])
        {
          *(v19 - 1) = a3;
        }

        if (v20.i8[4])
        {
          *v19 = a3;
        }

        v17 += 2;
        v19 += 2;
      }

      while (((v16 + 1) & 0xFFFFFFFFFFFFFFFELL) != v17);
    }
  }

  else
  {
    a1[2] = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 8);
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  a1[2] = a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E815E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EEclEOSK_@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v9[0] = *a2;
  result = mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(v9);
  if (result && v5)
  {
    v7 = *(a1 + 8);
    v11 = v5;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(v9, *v7, &v11);
    if (v10)
    {
      result = mlir::CallSiteLoc::get(v5, *v7[1]);
      v9[0][1] = result;
    }

    else
    {
      result = v9[0][1];
    }

    *a3 = result;
    *(a3 + 8) = 2;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 4), *a3, &v12);
  v7 = v12;
  if (result)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v9 = *(a2 + 2);
  v10 = *(a2 + 4);
  if (4 * v9 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v9 - *(a2 + 3) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 4), *a3, &v13);
    v9 = *(a2 + 2);
    v7 = v13;
  }

  *(a2 + 2) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 3);
  }

  *v7 = *a3;
  v7[1] = 0;
  v8 = 1;
LABEL_8:
  v11 = *a2 + 16 * *(a2 + 4);
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::grow(uint64_t a1, int a2)
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
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<remapInlinedOperands(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>,mlir::IRMapping &)::$_0>(uint64_t *result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = result;
      v4 = *(a2 + 72);
      v5 = 32 * v2;
      do
      {
        v6 = *v3;
        v12 = v4[3];
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v6, &v12);
        if (result)
        {
          v7 = result == (*v6 + 16 * *(v6 + 16));
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8 = result[1];
          if (v8)
          {
            v9 = v4[1];
            if (v9)
            {
              v10 = *v4;
              *v9 = *v4;
              if (v10)
              {
                *(v10 + 8) = v4[1];
              }
            }

            v4[3] = v8;
            v11 = *v8;
            *v4 = *v8;
            v4[1] = v8;
            if (v11)
            {
              *(v11 + 8) = v4;
            }

            *v8 = v4;
          }
        }

        v4 += 4;
        v5 -= 32;
      }

      while (v5);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 16);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v2, &v4) != 0;
}

uint64_t mlir::moveLoopInvariantCode(uint64_t a1, uint64_t a2)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = a2;
  (*(a2 + 8))(&v32, a2, a1);
  v2 = v32;
  v17 = &v18;
  v31[0] = llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_0>;
  v31[1] = &v17;
  v3 = 0;
  if (v33)
  {
    v4 = &v32[v33];
    do
    {
      v30 = *v2;
      v29 = 0u;
      memset(v28, 0, sizeof(v28));
      if (*v30 != v30)
      {
        for (i = v30[1]; i != v30; i = i[1])
        {
          v6 = i - 1;
          if (!i)
          {
            v6 = 0;
          }

          if (v6[4] != v6 + 4)
          {
            break;
          }
        }

        if (i != v30)
        {
          v7 = i - 1;
          if (!i)
          {
            v7 = 0;
          }

          v8 = v7[5];
          *&v23 = v30;
          *(&v23 + 1) = i;
          *&v24 = v8;
          if (v8)
          {
            do
            {
              *&v21[0] = v8;
              std::deque<mlir::Operation *>::push_back(v28, v21);
              mlir::Region::OpIterator::operator++(&v23);
              v8 = v24;
            }

            while (v24);
            v10 = *(&v29 + 1);
            v27[0] = v31;
            for (v27[1] = &v30; *(&v29 + 1); v10 = *(&v29 + 1))
            {
              v11 = *(*(*(&v28[0] + 1) + ((v29 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v29 & 0x1FF));
              *&v29 = v29 + 1;
              *(&v29 + 1) = v10 - 1;
              if (v29 >= 0x400)
              {
                operator delete(**(&v28[0] + 1));
                *(&v28[0] + 1) += 8;
                *&v29 = v29 - 512;
              }

              v12 = *(v11 + 2);
              if (v12)
              {
                v12 = *(v12 + 24) & 0xFFFFFFFFFFFFFFF8;
              }

              if (v12 == v30 && mlir::isMemoryEffectFree(v11, v9))
              {
                if (mlir::isSpeculatable(v11, v9))
                {
                  *&v23 = llvm::function_ref<BOOL ()(mlir::Value)>::callback_fn<mlir::moveLoopInvariantCode(llvm::ArrayRef<mlir::Region *>,llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>,llvm::function_ref<BOOL ()(mlir::Operation *,mlir::Region *)>,llvm::function_ref<void ()(mlir::Operation *,mlir::Region *)>)::$_0>;
                  *(&v23 + 1) = v27;
                  *&v21[0] = &v23;
                  if (canBeHoisted(v11, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::Value)>)::$_0>, v21))
                  {
                    (*(v19 + 16))(v19, v18, v11);
                    mlir::Operation::getUsers(&v23, v11);
                    v13 = v25;
                    v14 = v26;
                    v22 = v25;
                    v21[0] = v23;
                    v21[1] = v24;
                    while (v13 != v14)
                    {
                      v20 = *(v13 + 16);
                      v15 = *(v20 + 16);
                      if (v15)
                      {
                        v15 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
                      }

                      if (v15 == v30)
                      {
                        std::deque<mlir::Operation *>::push_back(v28, &v20);
                      }

                      mlir::ResultRange::UseIterator::operator++(v21);
                      v13 = v22;
                    }

                    ++v3;
                  }
                }
              }
            }
          }
        }
      }

      std::deque<mlir::Operation *>::~deque[abi:nn200100](v28);
      ++v2;
    }

    while (v2 != v4);
    v2 = v32;
  }

  if (v2 != v34)
  {
    free(v2);
  }

  return v3;
}

BOOL canBeHoisted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a1;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a1 + 48) + 32))(*(a1 + 48), v4))
  {
    return 0;
  }

  v6[0] = &v7;
  v6[1] = v8;
  return mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>, v6, 1) != 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 68);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 72);
  v5 = v4 + 32 * v2;
  while (1)
  {
    v6 = **a1;
    v12 = *(v4 + 24);
    v7 = *(mlir::Value::getParentRegion(&v12) + 16);
    if (v6 != v7)
    {
      while (1)
      {
        v8 = *(v7 + 16);
        if (!v8)
        {
          break;
        }

        v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v9)
        {
          break;
        }

        v7 = *(v9 + 16);
        if (v7 == v6 || v7 == 0)
        {
          if (v7)
          {
            goto LABEL_14;
          }

          break;
        }
      }

      result = (*a1[1])(a1[1][1], v4);
      if (!result)
      {
        return result;
      }
    }

LABEL_14:
    v4 += 32;
    if (v4 == v5)
    {
      return 1;
    }
  }
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::LoopLikeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LoopLikeOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LoopLikeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[280];
}

uint64_t llvm::getTypeName<mlir::LoopLikeOpInterface>()
{
  {
    llvm::getTypeName<mlir::LoopLikeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface>();
    *algn_27FC188D8 = v1;
  }

  return llvm::getTypeName<mlir::LoopLikeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LoopLikeOpInterface]";
  v6 = 87;
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[295];
}

uint64_t llvm::getTypeName<mlir::SubsetOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetOpInterface>();
    unk_27FC18950 = v1;
  }

  return llvm::getTypeName<mlir::SubsetOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetOpInterface]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetExtractionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[300];
}

uint64_t llvm::getTypeName<mlir::SubsetExtractionOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetExtractionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetExtractionOpInterface>();
    *algn_27FC18978 = v1;
  }

  return llvm::getTypeName<mlir::SubsetExtractionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetExtractionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetExtractionOpInterface]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetInsertionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[290];
}

uint64_t llvm::getTypeName<mlir::SubsetInsertionOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetInsertionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetInsertionOpInterface>();
    *algn_27FC18928 = v1;
  }

  return llvm::getTypeName<mlir::SubsetInsertionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetInsertionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetInsertionOpInterface]";
  v6 = 94;
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

uint64_t mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DestinationStyleOpInterface>();
      mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[285];
}

uint64_t llvm::getTypeName<mlir::DestinationStyleOpInterface>()
{
  {
    llvm::getTypeName<mlir::DestinationStyleOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface>();
    unk_27FC18900 = v1;
  }

  return llvm::getTypeName<mlir::DestinationStyleOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestinationStyleOpInterface]";
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

void std::deque<mlir::Operation *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    std::deque<mlir::Operation *>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

uint64_t llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

void propagateLiveness(void *a1, uint64_t a2)
{
  v67[3] = *MEMORY[0x277D85DE8];
  if (*a1 != a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = (v3 - 8);
    }

    else
    {
      v4 = 0;
    }

    llvm::post_order<mlir::Block *>(v56, v4);
    llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(v51, v56);
    llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(&v47, v56);
    if ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v53, v49) & 1) == 0)
    {
      while (1)
      {
        v43 = *(v53 + 5 * v54 - 5);
        v5 = v43 + 4;
        v6 = v43[4];
        while (v6 != v5)
        {
          v7 = *(v6 + 44);
          if ((v7 & 0x7FFFFF) != 0)
          {
            v8 = (v6 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 32 * *(v6 + 40) + 64);
            v9 = 24 * (v7 & 0x7FFFFF);
            do
            {
              propagateLiveness(v8, a2);
              v8 += 3;
              v9 -= 24;
            }

            while (v9);
          }

          v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
          if ((*(**(v6 + 48) + 32))(*(v6 + 48), v10))
          {
            v45[0] = v6;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, v45, v64);
            *a2 |= v65;
            v11 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6);
            v13 = *(v6 + 40);
            if (v11)
            {
              if (v13)
              {
                v14 = v11;
                v15 = v12;
                for (i = 0; i != v13; ++i)
                {
                  (*v15)(v64, v15, v14, i);
                  if (v64[0])
                  {
                    v17 = 0;
                    v18 = 8 * v64[0];
                    do
                    {
                      v44 = *(*(*(v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 32 * i + 24) + 48) + v17);
                      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &v44, v45);
                      *a2 |= v46;
                      v17 += 8;
                    }

                    while (v18 != v17);
                  }

                  if (v66 != v67)
                  {
                    free(v66);
                  }
                }
              }
            }

            else if (v13)
            {
              v29 = 0;
              v30 = (v6 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v31 = *(v30 + 32 * v29 + 24);
                v32 = *(v31 + 48);
                v33 = *(v31 + 56);
                while (v32 != v33)
                {
                  v34 = *v32++;
                  v45[0] = v34;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, v45, v64);
                  *a2 |= v65;
                }

                ++v29;
              }

              while (v29 != v13);
            }

            goto LABEL_44;
          }

          *v64 = v6;
          if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v64))
          {
            goto LABEL_44;
          }

          if ((mlir::wouldOpBeTriviallyDead(v6, v19) & 1) == 0)
          {
            v45[0] = v6;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, v45, v64);
            *a2 |= v65;
            goto LABEL_44;
          }

          v20 = *(v6 + 36);
          if (v20)
          {
            v21 = (v6 - 16);
          }

          else
          {
            v21 = 0;
          }

          if (v20)
          {
            v22 = 0;
            v23 = (v6 - 16);
            while (1)
            {
              v24 = v21;
              if (v22)
              {
                v25 = *(v6 - 8) & 7;
                v26 = v6 - 16;
                v27 = v22;
                if (v25 == 6)
                {
                  goto LABEL_33;
                }

                v28 = (5 - v25);
                v24 = v23;
                v27 = v22 - v28;
                if (v22 > v28)
                {
                  break;
                }
              }

LABEL_34:
              processValue(v24, a2);
              ++v22;
              v23 -= 2;
              if (v20 == v22)
              {
                goto LABEL_44;
              }
            }

            v26 = v6 - 16 - 16 * v28;
LABEL_33:
            v24 = (v26 - 24 * v27);
            goto LABEL_34;
          }

LABEL_44:
          v6 = *v6;
          v5 = v43 + 4;
        }

        v35 = *((v43[3] & 0xFFFFFFFFFFFFFFF8) + 8);
        v36 = v35 ? v35 - 8 : 0;
        if (v36 != v43)
        {
          break;
        }

LABEL_64:
        if (--v54)
        {
          llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(v51);
        }

        if (llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v53, v49))
        {
          goto LABEL_67;
        }
      }

      v37 = v43[6];
      v38 = v43[7];
      while (1)
      {
        if (v37 == v38)
        {
          goto LABEL_64;
        }

        v39 = *v37;
        v40 = *(*v37 + 8) & 7;
        if (!*v37 || v40 == 7)
        {
          break;
        }

        if (v40 == 6)
        {
          v42 = &v39[3 * v39[2] + 15];
        }

        else
        {
          v42 = &v39[2 * v40 + 2];
        }

        *v64 = v42;
        if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v64))
        {
          goto LABEL_62;
        }

LABEL_63:
        v37 += 8;
      }

      *v64 = *v37;
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((a2 + 8), v64))
      {
        goto LABEL_63;
      }

LABEL_62:
      processValue(v39, a2);
      goto LABEL_63;
    }

LABEL_67:
    if (v49[0] != &v50)
    {
      free(v49[0]);
    }

    if ((v48 & 1) == 0)
    {
      free(v47);
    }

    if (v53 != &v55)
    {
      free(v53);
    }

    if ((v52 & 1) == 0)
    {
      free(v51[0]);
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    if ((v61 & 1) == 0)
    {
      free(v60);
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    if ((v57 & 1) == 0)
    {
      free(v56[0]);
    }
  }
}

uint64_t deleteDeadness(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v57[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v7 = 0;
    v30 = &a2[3 * a3];
    do
    {
      if (*v5 != v5)
      {
        v8 = v5[1];
        v31 = v8 != v5 && v8[1] == v5;
        if (v8)
        {
          v9 = (v8 - 1);
        }

        else
        {
          v9 = 0;
        }

        llvm::post_order<mlir::Block *>(v45, v9);
        llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(v40, v45);
        llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(&v36, v45);
        v32 = v5;
        while ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v42, v38) & 1) == 0)
        {
          v10 = *(v42 + 5 * v43 - 5);
          if (!v31)
          {
            v33 = *(v10 + 32);
            v34 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v33);
            if (v34)
            {
              v12 = *(v33 + 40);
              if (v12)
              {
                v13 = v11;
                for (i = 0; i != v12; ++i)
                {
                  (*v13)(&v53, v13, v34, (v12 + ~i));
                  if (v55 + v53)
                  {
                    v15 = *(((v33 + 64 + 16 * ((*(v33 + 44) >> 23) & 1) + ((*(v33 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * (v12 + ~i) + 24);
                    v16 = -(v55 + v53);
                    v17 = v55 + v53 - 1;
                    do
                    {
                      v35 = *(*(v15 + 48) + 8 * v17);
                      if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a4 + 1, &v35))
                      {
                        mlir::MutableOperandRange::erase(&v54, v17 - v53, 1u);
                      }

                      --v17;
                    }

                    while (!__CFADD__(v16++, 1));
                  }

                  if (v56 != v57)
                  {
                    free(v56);
                  }
                }
              }
            }
          }

          v21 = *(v10 + 32);
          v19 = (v10 + 32);
          v20 = v21;
          if (v21 != v19)
          {
            do
            {
              v22 = *v20;
              v53 = v20;
              if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(a4 + 4, &v53))
              {
                v23 = *(v20 + 11);
                v24 = v23 & 0x7FFFFF;
                if ((v23 & 0x7FFFFF) != 0)
                {
                  v25 = (&v20[4 * *(v20 + 10) + 8 + 2 * ((v23 >> 23) & 1)] + ((v23 >> 21) & 0x7F8));
                }

                else
                {
                  v25 = 0;
                  v24 = 0;
                }

                v7 |= deleteDeadness(a1, v25, v24, a4);
              }

              else
              {
                mlir::Operation::dropAllUses(v20);
                (*(*a1 + 16))(a1, v20);
                v7 = 1;
              }

              v20 = v22;
            }

            while (v22 != v19);
          }

          v26 = v43-- == 1;
          v5 = v32;
          if (!v26)
          {
            llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(v40);
          }
        }

        if (v38[0] != &v39)
        {
          free(v38[0]);
        }

        if ((v37 & 1) == 0)
        {
          free(v36);
        }

        if (v42 != &v44)
        {
          free(v42);
        }

        if ((v41 & 1) == 0)
        {
          free(v40[0]);
        }

        if (v51 != &v52)
        {
          free(v51);
        }

        if ((v50 & 1) == 0)
        {
          free(v49);
        }

        if (v47 != &v48)
        {
          free(v47);
        }

        if ((v46 & 1) == 0)
        {
          free(v45[0]);
        }

        for (j = *(v5[1] + 8); j != v5; j = j[1])
        {
          if (j)
          {
            v28 = (j - 1);
          }

          else
          {
            v28 = 0;
          }

          v45[0] = a4;
        }
      }

      v5 += 3;
    }

    while (v5 != v30);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::simplifyRegions(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v4 = a2;
  v373 = *MEMORY[0x277D85DE8];
  *&v366 = &v367 + 8;
  *(&v366 + 1) = 16;
  LODWORD(v367) = 0;
  BYTE4(v367) = 1;
  v361 = v363;
  v362 = 0x100000000;
  v5 = 3 * a3;
  v328 = 3 * a3;
  if (a3 < 2)
  {
    if (!a3)
    {
      goto LABEL_68;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v361, v363, a3, 8);
  }

  v6 = 8 * v5;
  do
  {
    llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v361, v4);
    v4 += 3;
    v6 -= 24;
  }

  while (v6);
  v7 = v362;
  if (v362)
  {
    v323 = 0;
    do
    {
      v8 = *(v361 + --v7);
      LODWORD(v362) = v7;
      if (*v8 != v8)
      {
        v9 = v8[1];
        if (*(v9 + 8) != v8)
        {
          v10 = &v366;
          llvm::SmallPtrSetImplBase::clear(&v366);
          v11 = v8[1];
          if (v11)
          {
            v12 = (v11 - 8);
          }

          else
          {
            v12 = 0;
          }

          v349 = &v366;
          v351[0] = 0;
          v351[1] = 0;
          __p = 0;
          llvm::SmallPtrSetImpl<mlir::Block *>::insert(&v366, v12, &v352);
          if (v353 == 1)
          {
            *&v352 = v12;
            BYTE8(v352) = 0;
            LOBYTE(v354) = 0;
            std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&__p, &v352);
            v10 = v349;
          }

          *&v364 = v10;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v364 + 1, &__p);
          if (__p)
          {
            v351[0] = __p;
            operator delete(__p);
          }

          *&v352 = &v366;
          v353 = 0;
          v354 = 0;
          *(&v352 + 1) = 0;
          *&v345 = &v366;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v345 + 1, &v352 + 1);
          if (*(&v352 + 1))
          {
            v353 = *(&v352 + 1);
            operator delete(*(&v352 + 1));
          }

          v357 = v364;
          v358 = v365[0];
          v359 = v345;
          v360 = *v346;
          v349 = v364;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&__p, &v357 + 1);
          *&v364 = v359;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v364 + 1, &v359 + 1);
          while (1)
          {
LABEL_20:
            v13 = __p;
            v14 = v351[0];
            if (v351[0] - __p == *&v365[0] - *(&v364 + 1))
            {
              if (__p == v351[0])
              {
LABEL_41:
                if (*(&v364 + 1))
                {
                  *&v365[0] = *(&v364 + 1);
                  operator delete(*(&v364 + 1));
                  v13 = __p;
                }

                if (v13)
                {
                  v351[0] = v13;
                  operator delete(v13);
                }

                if (*(&v359 + 1))
                {
                  *&v360 = *(&v359 + 1);
                  operator delete(*(&v359 + 1));
                }

                if (*(&v357 + 1))
                {
                  *&v358 = *(&v357 + 1);
                  operator delete(*(&v357 + 1));
                }

                v25 = v8[1];
                if (v25 != v8)
                {
                  do
                  {
                    v26 = v25[1];
                    if (llvm::SmallPtrSetImplBase::contains_imp(&v366, v25 - 1))
                    {
                      v27 = v25 + 3;
                      for (i = v25[4]; i != v27; i = *(i + 8))
                      {
                        v29 = *(i + 44);
                        if ((v29 & 0x7FFFFF) != 0)
                        {
                          v30 = i + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 32 * *(i + 40) + 64;
                          v31 = 24 * (v29 & 0x7FFFFF);
                          do
                          {
                            llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v361, v30);
                            v30 += 24;
                            v31 -= 24;
                          }

                          while (v31);
                        }
                      }
                    }

                    else
                    {
                      mlir::Block::dropAllDefinedValueUses((v25 - 1));
                      (*(*a1 + 24))(a1, v25 - 1);
                      v323 = 1;
                    }

                    v25 = v26;
                  }

                  while (v26 != v8);
                }

                goto LABEL_59;
              }

              v15 = *(&v364 + 1) + 16;
              v16 = __p + 16;
              while (1)
              {
                v17 = v16 - 16;
                if (*(v16 - 2) != *(v15 - 16))
                {
                  break;
                }

                v18 = v16[8];
                v19 = *(v15 + 8);
                v20 = v18 != v19 || v18 == 0;
                if (v20)
                {
                  if (v18 != v19)
                  {
                    goto LABEL_34;
                  }
                }

                else if (*v16 != *v15)
                {
                  goto LABEL_34;
                }

                v15 += 32;
                v16 += 32;
                if (v17 + 32 == v351[0])
                {
                  goto LABEL_41;
                }
              }
            }

            do
            {
LABEL_34:
              v21 = *(v14 - 4);
              if ((*(v14 - 1) & 1) == 0)
              {
                mlir::SuccessorRange::SuccessorRange(&v352, *(v14 - 4));
                *(v14 - 3) = v352;
                *(v14 - 2) = 0;
                *(v14 - 8) = 1;
              }

              while (1)
              {
                mlir::SuccessorRange::SuccessorRange(&v352, v21);
                v22 = *(v14 - 2);
                if (v22 == *(&v352 + 1))
                {
                  break;
                }

                v23 = *(v14 - 3);
                *(v14 - 2) = v22 + 1;
                v24 = *(v23 + 32 * v22 + 24);
                llvm::SmallPtrSetImpl<mlir::Block *>::insert(v349, v24, &v352);
                if (v353 == 1)
                {
                  *&v352 = v24;
                  BYTE8(v352) = 0;
                  LOBYTE(v354) = 0;
                  std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&__p, &v352);
                  goto LABEL_20;
                }
              }

              v14 = (v351[0] - 32);
              v351[0] = v14;
            }

            while (__p != v14);
          }
        }

        v32 = v9 + 24;
        for (j = *(v9 + 32); j != v32; j = *(j + 8))
        {
          v34 = *(j + 44);
          if ((v34 & 0x7FFFFF) != 0)
          {
            v35 = j + 16 * ((v34 >> 23) & 1) + ((v34 >> 21) & 0x7F8) + 32 * *(j + 40) + 64;
            v36 = 24 * (v34 & 0x7FFFFF);
            do
            {
              llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v361, v35);
              v35 += 24;
              v36 -= 24;
            }

            while (v36);
          }
        }

LABEL_59:
        v7 = v362;
      }
    }

    while (v7);
    goto LABEL_69;
  }

LABEL_68:
  v323 = 0;
LABEL_69:
  if (v361 != v363)
  {
    free(v361);
  }

  v37 = a2;
  v38 = a3;
  if ((BYTE4(v367) & 1) == 0)
  {
    free(v366);
  }

  *&v367 = 0;
  *(&v366 + 1) = 0;
  DWORD2(v367) = 0;
  v368 = 0uLL;
  v39 = 8 * v328;
  LODWORD(v369) = 0;
  do
  {
    LOBYTE(v366) = 0;
    if (!a3)
    {
      break;
    }

    v40 = 8 * v328;
    v41 = a2;
    do
    {
      propagateLiveness(v41, &v366);
      v41 += 3;
      v40 -= 24;
    }

    while (v40);
  }

  while ((v366 & 1) != 0);
  v311 = deleteDeadness(a1, a2, a3, &v366);
  MEMORY[0x25F891030](v368, 8);
  MEMORY[0x25F891030](*(&v366 + 1), 8);
  v42 = a4;
  if (!a4)
  {
    return (v323 | v311 | v42) & 1;
  }

  LODWORD(v346[0]) = 0;
  v345 = 0u;
  v346[1] = &v348;
  v347 = 0x100000000;
  if (!a3)
  {
    goto LABEL_467;
  }

  v43 = 8 * v328;
  v44 = a2;
  do
  {
    *&v366 = v44;
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v345, &v366);
    v44 += 3;
    v43 -= 24;
  }

  while (v43);
  v45 = v347;
  if (!v347)
  {
LABEL_467:
    v310 = 0;
    goto LABEL_468;
  }

  v310 = 0;
  v329 = 8 * v328;
  do
  {
    v46 = *(v346[1] + v45 - 1);
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(&v345);
    v338 = v46;
    if (*v46 == v46)
    {
      goto LABEL_454;
    }

    v47 = v46[1];
    v48 = v47[1];
    if (v47 != v46 && v48 == v46)
    {
      goto LABEL_454;
    }

    if (v48 == v46)
    {
      v50 = 0;
      LODWORD(v53) = 0;
LABEL_453:
      llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(v50, v53);
      MEMORY[0x25F891030](v50, 8);
      goto LABEL_454;
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    LODWORD(v53) = 0;
    do
    {
      if (v48)
      {
        v54 = (v48 - 1);
      }

      else
      {
        v54 = 0;
      }

      mlir::SuccessorRange::SuccessorRange(&v366, v54);
      v349 = 0;
      v55 = llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, &v366, &v349);
      v56 = v349;
      if ((v55 & 1) == 0)
      {
        *&v352 = v349;
        if (4 * v51 + 4 >= (3 * v53))
        {
          v57 = 2 * v53;
        }

        else
        {
          v57 = v53;
          if (~v51 - v52 + v53 > v53 >> 3)
          {
LABEL_97:
            ++v51;
            v52 -= *v56 != -4096;
            *v56 = v366;
            v56[2] = v56 + 4;
            v56[3] = 0x100000000;
            goto LABEL_98;
          }
        }

        v60 = v53;
        v61 = (v57 - 1) | ((v57 - 1) >> 1);
        v62 = v61 | (v61 >> 2) | ((v61 | (v61 >> 2)) >> 4);
        v63 = ((v62 | (v62 >> 8)) >> 16) | v62 | (v62 >> 8);
        if ((v63 + 1) > 0x40)
        {
          v53 = (v63 + 1);
        }

        else
        {
          v53 = 64;
        }

        buffer = llvm::allocate_buffer((8 * (v53 + 4 * v53)), 8uLL);
        v65 = v50;
        v50 = buffer;
        v307 = v65;
        if (v65)
        {
          v66 = 0;
          do
          {
            *&buffer[v66] = xmmword_25D0A0570;
            v66 += 5;
          }

          while (5 * v53 != v66);
          v51 = 0;
          if (v60)
          {
            v67 = 40 * v60;
            v68 = v307;
            do
            {
              if ((*v68 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                *&v357 = 0;
                llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, v68, &v357);
                v69 = v357;
                *v357 = *v68;
                *(v69 + 24) = 0x100000000;
                *(v69 + 16) = v69 + 32;
                v70 = v69 + 16;
                if (*(v68 + 24))
                {
                  llvm::SmallVectorImpl<mlir::Block *>::operator=(v70, v68 + 16);
                }

                v71 = *(v68 + 16);
                if ((v68 + 32) != v71)
                {
                  free(v71);
                }

                ++v51;
              }

              v68 += 40;
              v67 -= 40;
            }

            while (v67);
          }

          MEMORY[0x25F891030](v307, 8);
          v37 = a2;
        }

        else
        {
          v72 = 40 * v53;
          v73 = buffer;
          do
          {
            *v73 = xmmword_25D0A0570;
            v73 += 5;
            v72 -= 40;
          }

          while (v72);
          v51 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, &v366, &v352);
        v52 = 0;
        v56 = v352;
        goto LABEL_97;
      }

LABEL_98:
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v56 + 2), v54);
      v48 = v48[1];
    }

    while (v48 != v46);
    if (!v51)
    {
      v38 = a3;
      goto LABEL_453;
    }

    v74 = v50;
    v38 = a3;
    if (v53)
    {
      v75 = 40 * v53;
      v74 = v50;
      while ((*v74 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v74 += 40;
        v75 -= 40;
        if (!v75)
        {
          goto LABEL_453;
        }
      }
    }

    v76 = v50 + 40 * v53;
    if (v74 == v76)
    {
      goto LABEL_453;
    }

    v77 = 0;
    while (2)
    {
      v78 = *(v74 + 24);
      if (v78 == 1)
      {
        goto LABEL_448;
      }

      v305 = v76;
      v306 = v74;
      v79 = *(v74 + 16);
      v349 = v351;
      __p = 0x100000000;
      if (!v78)
      {
        v267 = 0;
        v189 = v351;
        goto LABEL_445;
      }

      v313 = v77;
      v309 = v53;
      v308 = v50;
      v324 = (v79 + 8 * v78);
      while (2)
      {
        v335 = v79;
        v357 = *v79;
        v80 = v357;
        v358 = 0uLL;
        LODWORD(v359) = 0;
        v81 = *(v357 + 40);
        LODWORD(v364) = (*(v357 + 56) - *(v357 + 48)) >> 3;
        v82 = v357 + 32;
        if (v81 != v357 + 32)
        {
          do
          {
            v83 = *(v81 + 36);
            if (v83)
            {
              *&v352 = v81;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int &>(&v358, &v352, &v364, &v366);
              LODWORD(v364) = v364 + v83;
            }

            *&v352 = 0;
            *&v352 = mlir::OperationEquivalence::computeHash(v81, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
            v369 = 0u;
            memset(v370, 0, sizeof(v370));
            v367 = 0u;
            v368 = 0u;
            v366 = 0u;
            v371 = 0;
            v372 = 0xFF51AFD7ED558CCDLL;
            *(&v357 + 1) = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v366, 0, &v366, v370, &v357 + 1, &v352);
            v81 = *(v81 + 8);
          }

          while (v81 != v82);
          v81 = v80[5];
        }

        while (v81 != v82)
        {
          v84 = *(v81 + 44);
          v85 = v84 & 0x7FFFFF;
          if ((v84 & 0x7FFFFF) != 0)
          {
            v86 = (v81 + 16 * ((v84 >> 23) & 1) + ((v84 >> 21) & 0x7F8) + 32 * *(v81 + 40) + 64);
            v87 = 24 * v85;
            while (v86 == *v86)
            {
              v86 += 3;
              v87 -= 24;
              if (!v87)
              {
                goto LABEL_144;
              }
            }

            goto LABEL_292;
          }

LABEL_144:
          v81 = *(v81 + 8);
        }

        v88 = v80[6];
        for (k = v80[7]; v88 != k; ++v88)
        {
          v90 = *v88;
          while (1)
          {
            v90 = *v90;
            if (!v90)
            {
              break;
            }

            if (*(v90[2] + 16) != v80)
            {
              goto LABEL_292;
            }
          }
        }

        if (__p)
        {
          v91 = v349;
          v92 = v349 + 112 * __p;
          v315 = v92;
          while (1)
          {
            if (*(v91 + 1) != *(&v357 + 1))
            {
              goto LABEL_244;
            }

            v93 = *v91;
            v94 = v357;
            v95 = *(*v91 + 48);
            v96 = *(*v91 + 56);
            v97 = *(v357 + 48);
            if (v96 - v95 != *(v357 + 56) - v97)
            {
              goto LABEL_244;
            }

            while (v95 != v96)
            {
              if ((*(*v97 + 8) ^ *(*v95 + 8)) > 7)
              {
                goto LABEL_244;
              }

              v95 += 8;
              v97 += 8;
            }

            *&v366 = &v367;
            *(&v366 + 1) = 0x800000000;
            v98 = v93[5];
            v99 = *(v357 + 40);
            v100 = v357 + 32;
            v316 = v93 + 4;
            if (v98 == v93 + 4)
            {
LABEL_238:
              if (v99 != v100)
              {
LABEL_239:
                v143 = 0;
                goto LABEL_241;
              }

              if (!DWORD2(v366))
              {
LABEL_272:
                if (*(v91 + 12))
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v91 + 40), &v357, &v352);
                  if (v353 == 1)
                  {
                    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v91 + 64), v357);
                  }
                }

                else
                {
                  v157 = *(v91 + 18);
                  if (v157)
                  {
                    v158 = v357;
                    v159 = 8 * v157;
                    v160 = *(v91 + 8);
                    while (*v160 != v357)
                    {
                      ++v160;
                      v159 -= 8;
                      if (!v159)
                      {
                        goto LABEL_283;
                      }
                    }
                  }

                  else
                  {
                    v160 = *(v91 + 8);
                  }

                  if (v160 == (*(v91 + 8) + 8 * v157))
                  {
                    v158 = v357;
LABEL_283:
                    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v91 + 64), v158);
                    v161 = *(v91 + 18);
                    if (v161 >= 2)
                    {
                      v162 = *(v91 + 8);
                      v163 = 8 * v161;
                      do
                      {
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v91 + 40), v162++, &v352);
                        v143 = 1;
                        v163 -= 8;
                      }

                      while (v163);
                      goto LABEL_241;
                    }
                  }
                }

                v143 = 1;
                goto LABEL_241;
              }

              v144 = v366;
              while (1)
              {
                v145 = *(v91 + 12);
                v146 = v91 + 96;
                if (*(v91 + 11) != v91 + 96)
                {
                  v147 = *(v91 + 12);
                  v148 = v91 + 96;
                  if (v145)
                  {
                    do
                    {
                      v146 = v147;
                      v147 = *(v147 + 1);
                    }

                    while (v147);
                  }

                  else
                  {
                    do
                    {
                      v146 = *(v148 + 2);
                      v20 = *v146 == v148;
                      v148 = v146;
                    }

                    while (v20);
                  }

                  v149 = *v144;
                  v150 = *(v146 + 7);
                  v151 = v150 <= *v144;
                  if (v150 >= *v144)
                  {
                    v153 = v144[1];
                    if (!v151 || *(v146 + 8) >= v153)
                    {
                      break;
                    }
                  }
                }

                if (v145)
                {
                  v152 = v146 + 8;
                }

                else
                {
                  v152 = v91 + 96;
                }

                if (!*v152)
                {
                  goto LABEL_270;
                }

LABEL_271:
                v144 += 2;
                if (v144 == (v366 + 8 * DWORD2(v366)))
                {
                  goto LABEL_272;
                }
              }

              if (!v145)
              {
LABEL_270:
                operator new();
              }

              while (2)
              {
                while (1)
                {
                  v154 = v145;
                  v155 = *(v145 + 7);
                  if (v155 > v149)
                  {
                    break;
                  }

                  if (v155 >= v149)
                  {
                    v156 = *(v154 + 8);
                    if (v156 > v153)
                    {
                      break;
                    }

                    if (v156 >= v153)
                    {
                      goto LABEL_271;
                    }
                  }

                  v145 = v154[1];
                  if (!v145)
                  {
                    goto LABEL_270;
                  }
                }

                v145 = *v154;
                if (!*v154)
                {
                  goto LABEL_270;
                }

                continue;
              }
            }

            v101 = 0;
            v312 = v357 + 32;
            while (1)
            {
              if (v99 == v100 || !mlir::OperationEquivalence::isEquivalentTo(v98, v99, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v58, 1, v59, 0, v304))
              {
                goto LABEL_239;
              }

              v102 = *(v98 + 44);
              v103 = (v102 & 0x800000) != 0 ? *(v98 + 72) : 0;
              v317 = v99;
              if ((*(v99 + 46) & 0x80) != 0)
              {
                break;
              }

              v104 = 0;
              if ((v102 & 0x800000) != 0)
              {
                goto LABEL_166;
              }

LABEL_229:
              v139 = *(v317 + 36);
              if (v139)
              {
                v140 = (v317 - 16);
              }

              else
              {
                v140 = 0;
              }

              if (std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(v140, 0, v140, v139, v94))
              {
                goto LABEL_240;
              }

              v141 = *(v98 + 36);
              if (v141)
              {
                v142 = (v98 - 16);
              }

              else
              {
                v142 = 0;
              }

              v37 = a2;
              if (std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(v142, 0, v142, v141, v93))
              {
                goto LABEL_239;
              }

              v98 = *(v98 + 8);
              v99 = *(v317 + 8);
              ++v101;
              v100 = v312;
              if (v98 == v316)
              {
                goto LABEL_238;
              }
            }

            v104 = *(v99 + 72);
            if ((v102 & 0x800000) == 0)
            {
              goto LABEL_229;
            }

LABEL_166:
            v105 = *(v98 + 68);
            if (!v105)
            {
              goto LABEL_229;
            }

            v106 = 0;
            v319 = *(v98 + 68);
            v321 = v104;
            while (2)
            {
              v107 = *(v103 + 32 * v106 + 24);
              v108 = *(v104 + 32 * v106 + 24);
              if (v107 == v108)
              {
                goto LABEL_210;
              }

              v109 = *(v107 + 8);
              v110 = *(v108 + 8);
              if ((v110 ^ v109) > 7)
              {
                goto LABEL_240;
              }

              if ((~v109 & 7) != 0)
              {
                v111 = *(v103 + 32 * v106 + 24);
              }

              else
              {
                v111 = 0;
              }

              if (v111)
              {
                v112 = *(v111 + 8) & 7;
                if (v112 == 6)
                {
                  v113 = v111 + 24 * *(v111 + 16) + 120;
                  if (v111 + 24 * *(v111 + 16) == -120)
                  {
                    goto LABEL_176;
                  }
                }

                else
                {
                  v113 = v111 + 16 * v112 + 16;
                }
              }

              else
              {
LABEL_176:
                v113 = *(v103 + 32 * v106 + 24);
              }

              if ((~v110 & 7) != 0)
              {
                v114 = *(v104 + 32 * v106 + 24);
              }

              else
              {
                v114 = 0;
              }

              if (v114)
              {
                v115 = *(v114 + 8) & 7;
                if (v115 == 6)
                {
                  v116 = v114 + 24 * *(v114 + 16) + 120;
                  if (v114 + 24 * *(v114 + 16) == -120)
                  {
                    goto LABEL_184;
                  }
                }

                else
                {
                  v116 = v114 + 16 * v115 + 16;
                }
              }

              else
              {
LABEL_184:
                v116 = *(v104 + 32 * v106 + 24);
              }

              v117 = *(v113 + 16);
              if ((v117 == v93) == (*(v116 + 16) != v94))
              {
                goto LABEL_240;
              }

              if (v117 == v93)
              {
                v121 = v93;
                v122 = v94;
                v123 = v98;
                v124 = v103;
                v125 = v101;
                v105 = v319;
                v104 = v321;
                v20 = OrderOf == v127;
                v101 = v125;
                v103 = v124;
                v98 = v123;
                v94 = v122;
                v93 = v121;
                if (!v20)
                {
                  goto LABEL_240;
                }

                goto LABEL_210;
              }

              if (v111)
              {
                v118 = *(v111 + 8) & 7;
                if (v118 == 6)
                {
                  v119 = v111 + 24 * *(v111 + 16) + 120;
                  if (v111 + 24 * *(v111 + 16) == -120)
                  {
                    goto LABEL_191;
                  }
                }

                else
                {
                  v119 = v111 + 16 * v118 + 16;
                }

                v120 = v119;
              }

              else
              {
LABEL_191:
                v119 = 0;
                v120 = *(v103 + 32 * v106 + 24);
              }

              if (v119 != *(*(v120 + 16) + 32))
              {
                goto LABEL_197;
              }

              if (v111)
              {
                v131 = *(v111 + 8) & 7;
                if (v131 == 6)
                {
                  v132 = v111 + 24 * *(v111 + 16) + 120;
                  if (v132)
                  {
                    v107 = v132;
                  }
                }

                else
                {
                  v107 = v111 + 16 * v131 + 16;
                }
              }

              v137 = *v93;
              if (!*v93)
              {
LABEL_197:
                if (!v114)
                {
                  goto LABEL_200;
                }

                v128 = *(v114 + 8) & 7;
                if (v128 == 6)
                {
                  v129 = v114 + 24 * *(v114 + 16) + 120;
                  if (v114 + 24 * *(v114 + 16) == -120)
                  {
LABEL_200:
                    v129 = 0;
                    v130 = *(v104 + 32 * v106 + 24);
LABEL_207:
                    if (v129 == *(*(v130 + 16) + 32))
                    {
                      if (v114)
                      {
                        v135 = *(v114 + 8) & 7;
                        if (v135 == 6)
                        {
                          v136 = v114 + 24 * *(v114 + 16) + 120;
                          if (v136)
                          {
                            v108 = v136;
                          }
                        }

                        else
                        {
                          v108 = v114 + 16 * v135 + 16;
                        }
                      }

                      v138 = *v94;
                      if (*v94)
                      {
                        while (*(v138[2] + 16) != *(v108 + 16))
                        {
                          v138 = *v138;
                          if (!v138)
                          {
                            goto LABEL_208;
                          }
                        }

                        goto LABEL_240;
                      }
                    }

LABEL_208:
                    v133 = DWORD2(v366);
                    if (DWORD2(v366) >= HIDWORD(v366))
                    {
                      llvm::SmallVectorTemplateBase<std::pair<int,int>,true>::push_back(&v366, (v106 << 32) | v101);
                      v105 = v319;
                      v104 = v321;
                    }

                    else
                    {
                      v134 = (v366 + 8 * DWORD2(v366));
                      *v134 = v101;
                      v134[1] = v106;
                      DWORD2(v366) = v133 + 1;
                    }

LABEL_210:
                    if (++v106 == v105)
                    {
                      goto LABEL_229;
                    }

                    continue;
                  }
                }

                else
                {
                  v129 = v114 + 16 * v128 + 16;
                }

                v130 = v129;
                goto LABEL_207;
              }

              break;
            }

            while (*(v137[2] + 16) != *(v107 + 16))
            {
              v137 = *v137;
              if (!v137)
              {
                goto LABEL_197;
              }
            }

LABEL_240:
            v143 = 0;
            v37 = a2;
LABEL_241:
            if (v366 != &v367)
            {
              free(v366);
            }

            v92 = v315;
            if (v143)
            {
              goto LABEL_292;
            }

LABEL_244:
            v91 += 112;
            if (v91 == v92)
            {
              v164 = __p;
              goto LABEL_289;
            }
          }
        }

        v164 = 0;
LABEL_289:
        if (v164 >= HIDWORD(__p))
        {
          *&v366 = 0;
          v169 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v349, v351, 0, 112, &v366);
          v170 = &v169[112 * __p];
          *v170 = v357;
          *(v170 + 8) = 0;
          *(v170 + 2) = 0;
          *(v170 + 3) = 0;
          *(v170 + 2) = v358;
          *&v358 = 0;
          *(v170 + 6) = DWORD2(v358);
          DWORD2(v358) = 0;
          v171 = *(v170 + 7);
          *(v170 + 7) = HIDWORD(v358);
          HIDWORD(v358) = v171;
          v172 = *(v170 + 8);
          *(v170 + 8) = v359;
          LODWORD(v359) = v172;
          *(v170 + 12) = 0;
          v170 += 96;
          *(v170 - 7) = 0;
          *(v170 - 6) = 0;
          *(v170 - 10) = 0;
          *(v170 - 4) = v170 - 16;
          *(v170 - 3) = 0x100000000;
          *(v170 + 1) = 0;
          *(v170 - 1) = v170;
          v173 = v349;
          if (__p)
          {
            v174 = 0;
            v175 = 112 * __p;
            do
            {
              v176 = &v173[v174];
              v177 = &v169[v174];
              *v177 = *&v173[v174];
              *(v177 + 8) = 0;
              *(v177 + 2) = 0;
              *(v177 + 3) = 0;
              *(v177 + 2) = *&v173[v174 + 16];
              *(v176 + 2) = 0;
              *(v177 + 6) = *&v173[v174 + 24];
              *(v176 + 6) = 0;
              v178 = *&v169[v174 + 28];
              *(v177 + 7) = *&v173[v174 + 28];
              *(v176 + 7) = v178;
              v179 = *&v169[v174 + 32];
              *(v177 + 8) = *&v173[v174 + 32];
              *(v176 + 8) = v179;
              *(v177 + 5) = 0;
              *(v177 + 6) = 0;
              *(v177 + 14) = 0;
              *(v177 + 5) = *&v173[v174 + 40];
              *(v176 + 5) = 0;
              *(v177 + 12) = *&v173[v174 + 48];
              *(v176 + 12) = 0;
              *&v169[v174 + 64] = &v169[v174 + 80];
              v180 = &v169[v174 + 64];
              v181 = *&v169[v174 + 52];
              *(v180 - 12) = *&v173[v174 + 52];
              *(v176 + 13) = v181;
              v182 = *&v169[v174 + 56];
              *(v177 + 14) = *&v173[v174 + 56];
              *(v176 + 14) = v182;
              *(v180 + 8) = 0x100000000;
              if (*&v173[v174 + 72])
              {
                llvm::SmallVectorImpl<mlir::Block *>::operator=(v180, (v176 + 64));
              }

              *(v177 + 11) = *(v176 + 11);
              v183 = v176 + 96;
              v184 = *(v176 + 12);
              *(v177 + 12) = v184;
              v185 = v177 + 96;
              v186 = *(v176 + 13);
              *(v177 + 13) = v186;
              if (v186)
              {
                *(v184 + 16) = v185;
                *(v176 + 11) = v183;
                *v183 = 0;
                *(v176 + 13) = 0;
              }

              else
              {
                *(v177 + 11) = v185;
              }

              v174 += 112;
            }

            while (v175 != v174);
            v173 = v349;
            v187 = __p;
          }

          else
          {
            v187 = 0;
          }

          v188 = v366;
          if (v349 != v351)
          {
            free(v349);
          }

          v349 = v169;
          v168 = __p + 1;
          HIDWORD(__p) = v188;
        }

        else
        {
          v165 = v349 + 112 * v164;
          *v165 = v357;
          *(v165 + 8) = 0;
          *(v165 + 2) = 0;
          *(v165 + 3) = 0;
          *(v165 + 2) = v358;
          *&v358 = 0;
          *(v165 + 6) = DWORD2(v358);
          DWORD2(v358) = 0;
          v166 = *(v165 + 7);
          *(v165 + 7) = HIDWORD(v358);
          HIDWORD(v358) = v166;
          v167 = *(v165 + 8);
          *(v165 + 8) = v359;
          LODWORD(v359) = v167;
          *(v165 + 12) = 0;
          v165 += 96;
          *(v165 - 7) = 0;
          *(v165 - 6) = 0;
          *(v165 - 10) = 0;
          *(v165 - 4) = v165 - 16;
          *(v165 - 3) = 0x100000000;
          *(v165 + 1) = 0;
          *(v165 - 1) = v165;
          v168 = __p + 1;
        }

        LODWORD(__p) = v168;
LABEL_292:
        MEMORY[0x25F891030](v358, 8);
        v38 = a3;
        v79 = (v335 + 8);
        if ((v335 + 8) != v324)
        {
          continue;
        }

        break;
      }

      v189 = v349;
      if (!__p)
      {
        v267 = 0;
        v50 = v308;
        LODWORD(v53) = v309;
        v77 = v313;
        goto LABEL_445;
      }

      v322 = (v349 + 112 * __p);
      v50 = v308;
      LODWORD(v53) = v309;
      v77 = v313;
      do
      {
        v190 = *(v189 + 18);
        if (!v190)
        {
          goto LABEL_336;
        }

        v191 = *v189;
        v192 = *v189;
        if (!*(v189 + 13))
        {
          v314 = v77;
          goto LABEL_315;
        }

        while (1)
        {
          v192 = *v192;
          if (!v192)
          {
            break;
          }

          if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(*(v192 + 2) + 16) + 32)))
          {
            LODWORD(v190) = 0;
            goto LABEL_336;
          }
        }

        v200 = *(v189 + 18);
        v314 = v77;
        if (!v200)
        {
          v361 = v363;
          v362 = 0x200000000;
          goto LABEL_339;
        }

        v201 = *(v189 + 8);
        v202 = &v201[v200];
LABEL_328:
        v203 = *v201;
        do
        {
          v203 = *v203;
          if (!v203)
          {
            if (++v201 == v202)
            {
              v204 = *(v189 + 18);
              v361 = v363;
              v362 = 0x200000000;
              if (v204 >= 2)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v361, v363, v204 + 1, 8);
              }

LABEL_339:
              llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(&v361, *(v191 + 5));
              v205 = *(v189 + 18);
              if (v205)
              {
                v206 = *(v189 + 8);
                v207 = 8 * v205;
                do
                {
                  v208 = *v206++;
                  llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(&v361, *(v208 + 40));
                  v207 -= 8;
                }

                while (v207);
                v209 = *(v189 + 18) + 1;
              }

              else
              {
                v209 = 1;
              }

              v210 = *(v189 + 13);
              *&v366 = &v367;
              *(&v366 + 1) = 0x800000000;
              llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v366, v210);
              *&v357 = &v358;
              *(&v357 + 1) = 0x200000000;
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(&v357, v209, &v366);
              if (v366 != &v367)
              {
                free(v366);
              }

              v318 = *(v191 + 6);
              v320 = *(v191 + 7);
              v211 = *(v189 + 11);
              v336 = v189;
              if (v211 != (v189 + 96))
              {
                v212 = 0;
                v213 = 0;
                while (1)
                {
                  v214 = *(v211 + 7);
                  if (v362)
                  {
                    break;
                  }

                  v223 = v211[1];
                  if (v223)
                  {
                    do
                    {
                      v224 = v223;
                      v223 = *v223;
                    }

                    while (v223);
                  }

                  else
                  {
                    do
                    {
                      v224 = v211[2];
                      v20 = *v224 == v211;
                      v211 = v224;
                    }

                    while (!v20);
                  }

                  ++v213;
                  v212 = v214;
                  v211 = v224;
                  if (v224 == (v189 + 96))
                  {
                    goto LABEL_370;
                  }
                }

                if (v214 == v212)
                {
                  v215 = *v361;
                }

                else
                {
                  v215 = *v361;
                  v216 = (v214 - v212) + 1;
                  do
                  {
                    v215 = *(v215 + 8);
                    --v216;
                  }

                  while (v216 > 1);
                  *v361 = v215;
                }

                v217 = *(*(v215 + 72) + 32 * *(v211 + 8) + 24);
                *(*v357 + 8 * v213) = v217;
                v218 = *(v217 + 8);
                if ((~*(v217 + 8) & 7) != 0)
                {
                  v219 = v217;
                }

                else
                {
                  v219 = 0;
                }

                if (v219)
                {
                  v220 = *(v219 + 8) & 7;
                  if (v220 == 6)
                  {
                    v221 = v219 + 24 * *(v219 + 16) + 120;
                    if (!v221)
                    {
                      goto LABEL_360;
                    }
                  }

                  else
                  {
                    v221 = v219 + 16 * v220 + 16;
                  }

                  v222 = (v221 + 24);
                }

                else
                {
LABEL_360:
                  v222 = (v217 + 32);
                }

                mlir::Block::addArgument(v191, v218 & 0xFFFFFFFFFFFFFFF8, *v222);
              }

LABEL_370:
              *&v364 = v365;
              *(&v364 + 1) = 0x800000000;
              *&v366 = &v367;
              *(&v366 + 1) = 0x200000000;
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(&v366, DWORD2(v357), &v364);
              if (v364 != v365)
              {
                free(v364);
              }

              v225 = DWORD2(v357);
              v37 = a2;
              if (!DWORD2(v357))
              {
                *&v352 = &v353;
                *(&v352 + 1) = 0x200000000;
                v38 = a3;
                goto LABEL_428;
              }

              v226 = *(v357 + 8);
              v343[0] = 0;
              v343[1] = 0;
              v344 = 0;
              v341[0] = 0;
              v341[1] = 0;
              v342 = 0;
              v340 = 0;
              if (v226)
              {
                v227 = 0;
                v229 = v318;
                v228 = v320;
                do
                {
                  v339 = *(*v357 + 8 * v227);
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>(v341, &v339, &v340, &v364);
                  v227 = v340 + 1;
                  v340 = v227;
                }

                while (v227 < v226);
                v230 = 0;
                LODWORD(v339) = 0;
                if (v225 <= 2)
                {
                  v231 = 2;
                }

                else
                {
                  v231 = v225;
                }

                do
                {
                  v232 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](v341, (*v357 + 8 * v230));
                  v233 = *v232;
                  v234 = v339;
                  if (*v232 == v339)
                  {
                    v234 = *v232;
                  }

                  else
                  {
                    if (v225 == 1)
                    {
                      goto LABEL_382;
                    }

                    v237 = 1;
                    v238 = 1;
                    do
                    {
                      while (!v238)
                      {
                        v238 = 0;
                        if (++v237 == v231)
                        {
                          goto LABEL_393;
                        }
                      }

                      v239 = *(v357 + 80 * v237);
                      v240 = *(v239 + 8 * v233);
                      v241 = *(v239 + 8 * v339);
                      v238 = v240 == v241;
                      ++v237;
                    }

                    while (v237 != v231);
                    if (v240 == v241)
                    {
LABEL_382:
                      *&v364 = 0;
                      v235 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v343, &v339, &v364);
                      inserted = v364;
                      if (v235)
                      {
                        v234 = v339;
                      }

                      else
                      {
                        inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(v343, &v339, v364);
                        v234 = v339;
                        *inserted = v339;
                      }

                      inserted[1] = v233;
                    }
                  }

LABEL_393:
                  v230 = v234 + 1;
                  LODWORD(v339) = v230;
                }

                while (v230 < v226);
              }

              else
              {
                v229 = v318;
                v228 = v320;
              }

              v242 = 0;
              v243 = (v228 - v229) >> 3;
              while (!v226)
              {
LABEL_408:
                if (++v242 == v225)
                {
                  *&v364 = v365;
                  *(&v364 + 1) = 0xC00000000;
                  v249 = *(v191 + 6);
                  v250 = *(v191 + 7);
                  v38 = a3;
                  if (v249 != v250)
                  {
                    v251 = 0;
                    do
                    {
                      if (v344)
                      {
                        v252 = (v344 - 1) & (37 * v251);
                        v253 = *(v343[0] + 8 * v252);
                        if (v253 == v251)
                        {
LABEL_413:
                          v254 = *(*(v191 + 6) + 8 * (v251 + v243));
                          LODWORD(v339) = v251;
                          v255 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](v343, &v339);
                          mlir::RewriterBase::replaceAllUsesWith(a1, v254, *(*(v191 + 6) + 8 * (*v255 + v243)));
                          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v364, v251 + v243);
                        }

                        else
                        {
                          v256 = 1;
                          while (v253 != -1)
                          {
                            v257 = v252 + v256++;
                            v252 = v257 & (v344 - 1);
                            v253 = *(v343[0] + 8 * v252);
                            if (v253 == v251)
                            {
                              goto LABEL_413;
                            }
                          }
                        }
                      }

                      ++v251;
                      v249 += 8;
                    }

                    while (v249 != v250);
                    if (DWORD2(v364))
                    {
                      v258 = 4 * DWORD2(v364);
                      v259 = v364 - 4;
                      do
                      {
                        mlir::Block::eraseArgument(v191, *(v259 + v258));
                        v258 -= 4;
                      }

                      while (v258);
                    }
                  }

                  *&v352 = &v353;
                  *(&v352 + 1) = 0x200000000;
                  if (DWORD2(v366))
                  {
                    llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(&v352, &v366);
                  }

                  v37 = a2;
                  if (v364 != v365)
                  {
                    free(v364);
                  }

                  MEMORY[0x25F891030](v341[0], 8);
                  MEMORY[0x25F891030](v343[0], 4);
LABEL_428:
                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v366);
                  llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(&v357, &v352);
                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v352);
                  v260 = *v191;
                  if (*v191)
                  {
                    do
                    {
                      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v260[2] + 16) + 32));
                      (*InterfaceFor)(&v366);
                      mlir::MutableOperandRange::append(&v366 + 8, *v357 & 0xFFFFFFFFFFFFFFF9, *(v357 + 8));
                      if (*(&v367 + 1) != (&v368 + 8))
                      {
                        free(*(&v367 + 1));
                      }

                      v260 = *v260;
                    }

                    while (v260);
                  }

                  v262 = *(v336 + 18);
                  if (v262)
                  {
                    v263 = 0;
                    do
                    {
                      v264 = *(*(v336 + 8) + 8 * v263++);
                      v265 = *v264;
                      if (*v264)
                      {
                        do
                        {
                          v266 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v265[2] + 16) + 32));
                          (*v266)(&v366);
                          mlir::MutableOperandRange::append(&v366 + 8, *(v357 + 80 * v263) & 0xFFFFFFFFFFFFFFF9, *(v357 + 80 * v263 + 8));
                          if (*(&v367 + 1) != (&v368 + 8))
                          {
                            free(*(&v367 + 1));
                          }

                          v265 = *v265;
                        }

                        while (v265);
                      }
                    }

                    while (v263 != v262);
                  }

                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v357);
                  if (v361 != v363)
                  {
                    free(v361);
                  }

                  v189 = v336;
                  v190 = *(v336 + 18);
                  v50 = v308;
                  LODWORD(v53) = v309;
                  if (!v190)
                  {
LABEL_325:
                    LODWORD(v190) = 1;
                    goto LABEL_335;
                  }

LABEL_315:
                  v193 = *(v189 + 8);
                  v194 = &v193[v190];
                  do
                  {
                    v195 = *v193;
                    while (1)
                    {
                      v196 = *v195;
                      if (!*v195)
                      {
                        break;
                      }

                      v197 = v196[1];
                      if (v197)
                      {
                        v198 = *v196;
                        *v197 = *v196;
                        if (v198)
                        {
                          *(v198 + 8) = v196[1];
                        }
                      }

                      v196[3] = v191;
                      v196[1] = v191;
                      v199 = *v191;
                      *v196 = *v191;
                      if (v199)
                      {
                        v199[1] = v196;
                      }

                      *v191 = v196;
                    }

                    (*(*a1 + 24))(a1);
                    ++v193;
                  }

                  while (v193 != v194);
                  goto LABEL_325;
                }
              }

              v244 = 0;
              while (2)
              {
                if (v344)
                {
                  v245 = (v344 - 1) & (37 * v244);
                  v246 = *(v343[0] + 8 * v245);
                  if (v244 != v246)
                  {
                    v247 = 1;
                    while (v246 != -1)
                    {
                      v248 = v245 + v247++;
                      v245 = v248 & (v344 - 1);
                      v246 = *(v343[0] + 8 * v245);
                      if (v244 == v246)
                      {
                        goto LABEL_407;
                      }
                    }

                    goto LABEL_406;
                  }
                }

                else
                {
LABEL_406:
                  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v366 + 80 * v242, *(*(v357 + 80 * v242) + 8 * v244));
                }

LABEL_407:
                if (++v244 == v226)
                {
                  goto LABEL_408;
                }

                continue;
              }
            }

            goto LABEL_328;
          }
        }

        while (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v203[2] + 16) + 32)));
        LODWORD(v190) = 0;
        LODWORD(v53) = v309;
LABEL_335:
        v77 = v314;
LABEL_336:
        v77 |= v190;
        v189 = (v189 + 112);
      }

      while (v189 != v322);
      v189 = v349;
      v267 = __p;
LABEL_445:
      if (v349 != v351)
      {
        free(v349);
      }

      v76 = v305;
      v74 = v306;
      do
      {
LABEL_448:
        v74 += 40;
        if (v74 == v76)
        {
          goto LABEL_451;
        }
      }

      while ((*v74 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v74 != v76)
      {
        continue;
      }

      break;
    }

LABEL_451:
    llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(v50, v53);
    MEMORY[0x25F891030](v50, 8);
    if (v77)
    {
      llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v345, &v338);
      v310 = 1;
    }

LABEL_454:
    v268 = v338;
    for (m = v338[1]; m != v268; m = *(m + 8))
    {
      v270 = m - 8;
      if (!m)
      {
        v270 = 0;
      }

      v271 = v270 + 32;
      for (n = *(v270 + 40); n != v271; n = *(n + 8))
      {
        v273 = *(n + 44);
        if ((v273 & 0x7FFFFF) != 0)
        {
          v274 = n + 16 * ((v273 >> 23) & 1) + ((v273 >> 21) & 0x7F8) + 32 * *(n + 40) + 64;
          v275 = 24 * (v273 & 0x7FFFFF);
          do
          {
            *&v366 = v274;
            llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v345, &v366);
            v274 += 24;
            v275 -= 24;
          }

          while (v275);
        }
      }
    }

    v45 = v347;
    v39 = v329;
  }

  while (v347);
LABEL_468:
  if (v346[1] != &v348)
  {
    free(v346[1]);
  }

  MEMORY[0x25F891030](v345, 8);
  LODWORD(v353) = 0;
  v352 = 0u;
  v354 = v356;
  v355 = 0x100000000;
  if (!v38)
  {
    goto LABEL_521;
  }

  do
  {
    *&v366 = v37;
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v352, &v366);
    v37 += 3;
    v39 -= 24;
  }

  while (v39);
  v276 = v355;
  if (v355)
  {
    v277 = 0;
    do
    {
      v278 = *(v354 + v276 - 1);
      llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(&v352);
      v279 = *(v278 + 8);
      for (ii = v278; v279 != ii; v279 = *(v330 + 8))
      {
        v330 = v279;
        if (v279)
        {
          v280 = (v279 - 8);
        }

        else
        {
          v280 = 0;
        }

        *&v366 = &v367;
        *(&v366 + 1) = 0x600000000;
        v281 = v280[6];
        v333 = v280[7];
        v337 = v280;
        if (v281 == v333)
        {
          v298 = 0;
        }

        else
        {
          v327 = v277;
          v282 = 0;
          do
          {
            v283 = *v337;
            if (*v337)
            {
              v284 = 0;
              v285 = 1;
              while (1)
              {
                v286 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(*(v283[2] + 16) + 32));
                if (!v286)
                {
                  break;
                }

                (*v287)(&v357, v287, v286, (v283 - ((v283[2] + 16 * ((*(v283[2] + 44) >> 23) & 1) + ((*(v283[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5);
                v288 = *(*(*(&v357 + 1) + 72) + 32 * v358 + 32 * v282 + 24);
                v289 = v288 == v284 || v284 == 0;
                if (v284)
                {
                  v290 = 4 * (v288 != v284);
                }

                else
                {
                  v284 = *(*(*(&v357 + 1) + 72) + 32 * v358 + 32 * v282 + 24);
                  v290 = 6;
                }

                if (*(&v358 + 1) != (&v359 + 8))
                {
                  free(*(&v358 + 1));
                }

                v285 &= v289;
                if (v290 == 6 || v290 == 0)
                {
                  v283 = *v283;
                  if (v283)
                  {
                    continue;
                  }
                }

                if (((v284 != 0) & v285) == 1)
                {
                  llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v366, v282);
                  mlir::RewriterBase::replaceAllUsesWith(a1, *v281, v284);
                }

                break;
              }
            }

            ++v282;
            ++v281;
          }

          while (v281 != v333);
          v292 = v366;
          if (DWORD2(v366))
          {
            v293 = v366 + 8 * DWORD2(v366);
            do
            {
              v295 = *(v293 - 8);
              v293 -= 8;
              v294 = v295;
              mlir::Block::eraseArgument(v337, v295);
              v296 = *v337;
              if (*v337)
              {
                do
                {
                  v297 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v296[2] + 16) + 32));
                  (*v297)(&v357);
                  mlir::MutableOperandRange::erase((&v357 + 8), v294 - v357, 1u);
                  if (*(&v358 + 1) != (&v359 + 8))
                  {
                    free(*(&v358 + 1));
                  }

                  v296 = *v296;
                }

                while (v296);
              }
            }

            while (v293 != v292);
            v292 = v366;
            v298 = DWORD2(v366) != 0;
          }

          else
          {
            v298 = 0;
          }

          v277 = v327;
          if (v292 != &v367)
          {
            free(v292);
          }
        }

        for (jj = *(v337 + 5); jj != (v337 + 32); jj = *(jj + 8))
        {
          v300 = *(jj + 44);
          if ((v300 & 0x7FFFFF) != 0)
          {
            v301 = jj + 16 * ((v300 >> 23) & 1) + ((v300 >> 21) & 0x7F8) + 32 * *(jj + 40) + 64;
            v302 = 24 * (v300 & 0x7FFFFF);
            do
            {
              *&v366 = v301;
              llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v352, &v366);
              v301 += 24;
              v302 -= 24;
            }

            while (v302);
          }
        }

        v277 |= v298;
      }

      v276 = v355;
    }

    while (v355);
  }

  else
  {
LABEL_521:
    v277 = 0;
  }

  if (v354 != v356)
  {
    free(v354);
  }

  MEMORY[0x25F891030](v352, 8);
  v42 = v310 | v277;
  return (v323 | v311 | v42) & 1;
}

void llvm::post_order<mlir::Block *>(uint64_t a1, char *a2)
{
  v40[40] = *MEMORY[0x277D85DE8];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&__src, a2);
  memset(&v16[1], 0, 328);
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v16[0] = &v16[2];
  HIDWORD(v16[1]) = 8;
  v3 = v20;
  if (v20 == 1)
  {
    v33 = v37;
    v4 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      memmove(v37, __src, 8 * HIDWORD(v18));
    }
  }

  else
  {
    v33 = __src;
    __src = &v21;
    v4 = HIDWORD(v18);
  }

  v34 = __PAIR64__(v4, v18);
  v35 = v19;
  v36 = v3;
  v18 = 8;
  v19 = 0;
  v20 = 1;
  v38 = v40;
  v39 = 0x800000000;
  if (v23)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v38, &v22);
  }

  v25 = v29;
  v26 = 8;
  v27 = v11;
  v28 = 1;
  v30 = v32;
  v31 = 0x800000000;
  if (LODWORD(v16[1]))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v30, v16);
  }

  v5 = v36;
  if (v36 == 1)
  {
    *a1 = a1 + 24;
    v6 = HIDWORD(v34);
    if (HIDWORD(v34))
    {
      memmove((a1 + 24), v33, 8 * HIDWORD(v34));
    }
  }

  else
  {
    *a1 = v33;
    v33 = v37;
    v6 = HIDWORD(v34);
  }

  *(a1 + 88) = a1 + 104;
  v7 = v35;
  *(a1 + 8) = v34;
  *(a1 + 12) = v6;
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  v34 = 8;
  v35 = 0;
  v36 = 1;
  *(a1 + 96) = 0x800000000;
  if (v39)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a1 + 88), &v38);
  }

  v8 = v28;
  if (v28 == 1)
  {
    *(a1 + 424) = a1 + 448;
    v9 = HIDWORD(v26);
    if (HIDWORD(v26))
    {
      memmove((a1 + 448), v25, 8 * HIDWORD(v26));
    }
  }

  else
  {
    *(a1 + 424) = v25;
    v25 = v29;
    v9 = HIDWORD(v26);
  }

  v10 = v27;
  *(a1 + 432) = v26;
  *(a1 + 436) = v9;
  *(a1 + 440) = v10;
  *(a1 + 444) = v8;
  v26 = 8;
  v27 = 0;
  v28 = 1;
  *(a1 + 512) = a1 + 528;
  *(a1 + 520) = 0x800000000;
  if (v31)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a1 + 512), &v30);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if ((v28 & 1) == 0)
  {
    free(v25);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if ((v36 & 1) == 0)
  {
    free(v33);
  }

  if (v16[0] != &v16[2])
  {
    free(v16[0]);
  }

  if (v22 != &v24)
  {
    free(v22);
  }

  if ((v20 & 1) == 0)
  {
    free(__src);
  }
}

uint64_t *llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(const void **a1, llvm::SmallPtrSetImplBase *a2)
{
  v3 = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 3, a2);
  *(v3 + 11) = v3 + 104;
  result = (v3 + 88);
  result[1] = 0x800000000;
  if (*(a2 + 24))
  {

    return llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, a2 + 11);
  }

  return result;
}

uint64_t *llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(const void **a1, uint64_t a2)
{
  v3 = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 3, (a2 + 424));
  *(v3 + 11) = v3 + 104;
  result = (v3 + 88);
  result[1] = 0x800000000;
  if (*(a2 + 520))
  {

    return llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, (a2 + 512));
  }

  return result;
}

void *processValue(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    while (1)
    {
      v5 = v2[2];
      v6 = (*(v5 + 46) & 0x80) != 0 ? *(v5 + 72) : 0;
      v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
      if (!(*(**(v5 + 48) + 32))(*(v5 + 48), v7) || (v8 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v5)) == 0 || (v10 = (*(v9 + 8))(v9, v8, (v2 - v6) >> 5), (v11 & 1) == 0) || (v15[0] = v10, (result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((a2 + 8), v15)) != 0))
      {
        v15[0] = v2[2];
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v15);
        if (result)
        {
          break;
        }
      }

      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    if (!v4 || (v12 = v4[1] & 7, v12 == 7))
    {
      v14 = v4;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &v14, v15);
    }

    else
    {
      if (v12 == 6)
      {
        v13 = &v4[3 * v4[2] + 15];
      }

      else
      {
        v13 = &v4[2 * v12 + 2];
      }

      v14 = v13;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v14, v15);
    }

    *a2 |= v16;
  }

  return result;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(uint64_t a1, char *a2)
{
  v7 = a2;
  *a1 = a1 + 24;
  *(a1 + 8) = 8;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 88) = a1 + 104;
  v4 = a1 + 88;
  *(a1 + 96) = 0x800000000;
  llvm::SmallPtrSetImpl<mlir::Block *>::insert(a1, a2, v8);
  mlir::SuccessorRange::SuccessorRange(v8, a2);
  v6 = v8[0];
  mlir::SuccessorRange::SuccessorRange(v8, a2);
  llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v4, &v7, &v6, v8);
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(a1);
  return a1;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t result)
{
  v1 = result + 88;
  v2 = *(result + 88) + 40 * *(result + 96);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v7 = *(v5 + 32 * v3 + 24);
      result = llvm::SmallPtrSetImpl<mlir::Block *>::insert(v4, v7, &v8);
      if (v9 == 1)
      {
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        v6 = v8;
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v7, &v6, &v8);
      }

      v2 = *(v4 + 88) + 40 * *(v4 + 96);
      v3 = *(v2 - 24);
    }

    while (v3 != *(v2 - 8));
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<deleteDeadness(mlir::RewriterBase &,llvm::MutableArrayRef<mlir::Region>,anonymous namespace::LiveMap &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((v2 + 8), &v4) == 0;
}

void llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(void *result, uint64_t *a2)
{
  if (*(result + 2))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>(result, a2, v12);
    if (v12[16] == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back((result + 3), *a2);
    }
  }

  else
  {
    v4 = (result + 3);
    v5 = *(result + 8);
    if (v5)
    {
      v6 = *a2;
      v7 = 8 * v5;
      v8 = result[3];
      while (*v8 != v6)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v8 = result[3];
    }

    if (v8 == (result[3] + 8 * v5))
    {
      v6 = *a2;
LABEL_12:
      llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back((result + 3), v6);
      v9 = *(result + 8);
      if (v9 >= 2)
      {
        v10 = *v4;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>(result, v10++, v12);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::InsertIntoBucketImpl<mlir::Region *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::InsertIntoBucketImpl<mlir::Region *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

int32x2_t *llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(int32x2_t *result)
{
  v1 = result[4].u32[0];
  v2 = result[2].i32[0];
  if (v2)
  {
    v3 = *result;
    v4 = *(*&result[3] + 8 * v1 - 8);
    v5 = v2 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v2 - 1);
    v7 = *(*result + 8 * v6);
    if (v7 == v4)
    {
LABEL_3:
      *(v3 + 8 * v6) = -8192;
      result[1] = vadd_s32(result[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(v3 + 8 * v6);
        if (v7 == v4)
        {
          goto LABEL_3;
        }
      }
    }
  }

  result[4].i32[0] = v1 - 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(uint64_t a1, int a2, void *a3, unint64_t *a4)
{
  v4 = a4;
  v46 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v16 = 0;
    result = 0;
    goto LABEL_37;
  }

  v7 = a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0;
  if (v9)
  {
    v11 = v9 - 1;
    if ((v9 - 1) >= 7)
    {
      v11 = 7;
    }

    v12 = v11 + 1;
    v13 = 8 * v11 + 8;
    v14 = (v8 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *&__src[v10] = v15;
      v10 += 8;
    }

    while (v13 != v10);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v9)
  {
    v18 = llvm::hashing::detail::hash_short(__src, v10, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v43[0] = xmmword_25D0A0610;
    v43[1] = xmmword_25D0A0620;
    v43[2] = xmmword_25D0A0630;
    v44 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v43, __src, a3, a4);
    v19 = v9 - 1;
    v20 = v8 + 24;
    v21 = 64;
    do
    {
      v22 = 0;
      v23 = (v20 + 32 * v12);
      do
      {
        v24 = v12;
        v25 = v22 + 8;
        v26 = *v23;
        v23 += 4;
        *&__src[v22] = v26;
        ++v12;
        if (v19 == v24)
        {
          break;
        }

        v27 = v22 >= 0x31;
        v22 += 8;
      }

      while (!v27);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v25], &v46);
      llvm::hashing::detail::hash_state::mix(v43, __src, v28, v29);
      v21 += v25;
    }

    while (v19 != v24);
    v18 = llvm::hashing::detail::hash_state::finalize(v43, v21);
    v7 = a1;
    v4 = a4;
  }

  v30 = 0;
  v31 = (a2 - 1) & v18;
  v32 = *a3;
  v33 = a3[1];
  for (i = 1; ; ++i)
  {
    v16 = (v7 + 40 * v31);
    v35 = *v16;
    if (*v16 != -8192)
    {
      break;
    }

    if (v32 == -8192)
    {
      goto LABEL_36;
    }

LABEL_29:
    if (v30)
    {
      v39 = 0;
    }

    else
    {
      v39 = v35 == -8192;
    }

    if (v39)
    {
      v30 = (v7 + 40 * v31);
    }

    v40 = v31 + i;
    v31 = v40 & (a2 - 1);
  }

  if (v35 != -4096)
  {
    if (v33 == v16[1])
    {
      if (!v33)
      {
        goto LABEL_36;
      }

      v36 = (v35 + 24);
      v37 = (*a3 + 24);
      v38 = a3[1];
      while (*v37 == *v36)
      {
        v36 += 4;
        v37 += 4;
        if (!--v38)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_29;
  }

  if (v32 == -4096)
  {
LABEL_36:
    result = 1;
    goto LABEL_37;
  }

  result = 0;
  if (v30)
  {
    v16 = v30;
  }

LABEL_37:
  *v4 = v16;
  return result;
}

uint64_t anonymous namespace::BlockEquivalenceData::getOrderOf(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) & 7;
  if (a2 && v4 == 7)
  {
    return *(a2 + 24);
  }

  if (v4 == 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v6 += 24 * *(v6 + 16) + 120;
    }

    else
    {
      v6 += 16 * v7 + 16;
    }
  }

  v13 = v6;
  v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>((a1 + 16), &v13);
  v9 = *(a1 + 16) + 16 * *(a1 + 32);
  if (v8)
  {
    v9 = v8;
  }

  v10 = *(v9 + 8);
  v11 = *(a2 + 8);
  if ((v11 & 7) == 6)
  {
    v12 = *(a2 + 16) + 6;
  }

  else
  {
    v12 = v11 & 7;
  }

  return (v12 + v10);
}

void llvm::SmallVectorTemplateBase<std::pair<int,int>,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a4)
  {
    return 0;
  }

LABEL_3:
  if (!a2)
  {
    v10 = a1;
    goto LABEL_12;
  }

  if (!a1)
  {
    v7 = 0;
    v8 = a2;
    goto LABEL_10;
  }

  v6 = a1[1] & 7;
  v7 = a1;
  v8 = a2;
  if (v6 == 6)
  {
    goto LABEL_10;
  }

  v9 = (5 - v6);
  v8 = a2 - v9;
  if (a2 > v9)
  {
    v7 = &a1[-2 * v9];
LABEL_10:
    v10 = &v7[-3 * v8];
    goto LABEL_12;
  }

  v10 = &a1[-2 * a2];
  do
  {
LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      if (++a2 == a4)
      {
        return 0;
      }

      goto LABEL_3;
    }
  }

  while (*(v10[2] + 16) == a5);
  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<anonymous namespace::BlockMergeCluster,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      std::__tree<std::pair<int,int>>::destroy(*(v2 - 16));
      v4 = *(v2 - 48);
      if ((v2 - 32) != v4)
      {
        free(v4);
      }

      MEMORY[0x25F891030](*(v2 - 72), 8);
      result = MEMORY[0x25F891030](*(v2 - 96), 8);
      v2 -= 112;
    }

    while (v2 != v3);
  }

  return result;
}

void std::__tree<std::pair<int,int>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<int,int>>::destroy(*a1);
    std::__tree<std::pair<int,int>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(char **a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 3) >= a2)
  {
    v15 = *(a1 + 2);
    if (v15 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = *(a1 + 2);
    }

    if (v16)
    {
      v17 = *a1;
      do
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v17, a3);
        v17 += 80;
        --v16;
      }

      while (v16);
      v15 = *(a1 + 2);
    }

    v18 = v15 - a2;
    if (v15 >= a2)
    {
      if (v15 > a2)
      {
        v21 = 5 * v15;
        v22 = &(*a1)[16 * v21 - 80];
        v23 = 80 * a2 - 16 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
      }
    }

    else
    {
      v19 = &(*a1)[80 * v15];
      do
      {
        *v19 = v19 + 16;
        *(v19 + 1) = 0x800000000;
        if (*(a3 + 8))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v19, a3);
        }

        v19 += 80;
      }

      while (!__CFADD__(v18++, 1));
    }
  }

  else
  {
    v24 = 0;
    v6 = (a1 + 2);
    v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 80, &v24);
    v8 = v7;
    v9 = a2;
    do
    {
      *v8 = v8 + 2;
      v8[1] = 0x800000000;
      if (*(a3 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v8, a3);
      }

      v8 += 10;
      --v9;
    }

    while (v9);
    v10 = *a1;
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = &v10[80 * v11 - 80];
      v13 = -80 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 10;
        v13 += 80;
      }

      while (v13);
      v10 = *a1;
    }

    v14 = v24;
    if (v10 != v6)
    {
      free(v10);
    }

    *a1 = v7;
    *(a1 + 3) = v14;
  }

  *(a1 + 2) = a2;
}

char *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](uint64_t *a1, unsigned int *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, v7);
    *inserted = *a2;
  }

  return (inserted + 1);
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*a1 + 80 * v2 - 80);
    v4 = -80 * v2;
    do
    {
      if (v3 + 2 != *v3)
      {
        free(*v3);
      }

      v3 -= 10;
      v4 += 80;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v8 = a3;
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

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 4uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
    v15 = vdupq_n_s64(v13);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v11);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A0500)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 4) = -1;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 2) = -1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A04F0)))).i32[1])
      {
        *v16 = -1;
        *(v16 + 2) = -1;
      }

      v11 += 4;
      v16 += 4;
    }

    while (v14 != v11);
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
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
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

char **llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 == a2 + 2)
    {
      v10 = *(a2 + 2);
      v11 = *(a1 + 2);
      if (v11 >= v10)
      {
        v22 = *a1;
        if (v10)
        {
          v23 = 80 * v10;
          do
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v22, v5);
            v5 += 80;
            v22 += 80;
            v23 -= 80;
          }

          while (v23);
          v24 = *a1;
          LODWORD(v11) = *(a1 + 2);
        }

        else
        {
          v24 = *a1;
        }

        v27 = v24 + 80 * v11;
        while (v27 != v22)
        {
          v29 = *(v27 - 80);
          v27 -= 80;
          v28 = v29;
          if ((v27 + 16) != v29)
          {
            free(v28);
          }
        }
      }

      else
      {
        if (*(a1 + 3) >= v10)
        {
          if (v11)
          {
            v25 = *a1;
            v26 = 80 * v11;
            do
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(v25, v5);
              v5 += 80;
              v25 += 80;
              v26 -= 80;
            }

            while (v26);
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(a1);
          v37 = 0;
          v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v10, 80, &v37);
          v13 = v12;
          v14 = *a1;
          v15 = *(a1 + 2);
          if (v15)
          {
            v16 = 80 * v15;
            v17 = v12;
            do
            {
              *v17 = v17 + 2;
              v17[1] = 0x800000000;
              if (*(v14 + 2))
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(v17, v14);
              }

              v17 += 10;
              v14 += 10;
              v16 -= 80;
            }

            while (v16);
            v14 = *a1;
            v18 = *(a1 + 2);
            if (v18)
            {
              v19 = &v14[10 * v18 - 10];
              v20 = -80 * v18;
              do
              {
                if (v19 + 2 != *v19)
                {
                  free(*v19);
                }

                v19 -= 10;
                v20 += 80;
              }

              while (v20);
              v14 = *a1;
            }
          }

          v21 = v37;
          if (v14 != (a1 + 2))
          {
            free(v14);
          }

          v11 = 0;
          *a1 = v13;
          *(a1 + 3) = v21;
        }

        v30 = *(a2 + 2);
        if (v11 != v30)
        {
          v31 = *a2;
          v32 = *a1;
          v33 = 80 * v11;
          v34 = 80 * v30;
          do
          {
            v35 = (v32 + v33);
            *v35 = v32 + v33 + 16;
            v35[1] = 0x800000000;
            if (*(v31 + v33 + 8))
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(v35, v31 + v33);
            }

            v32 += 80;
            v34 -= 80;
            v31 += 80;
          }

          while (v33 != v34);
        }
      }

      *(a1 + 2) = v10;
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(a2);
    }

    else
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = &v6[80 * v7 - 80];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      a1[1] = a2[1];
      *a2 = v4;
      a2[1] = 0;
    }
  }

  return a1;
}

char ***llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[10 * v3 - 10];
    v5 = -80 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 10;
      v5 += 80;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 40 * a2;
    v3 = (a1 + 32);
    do
    {
      if ((*(v3 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 5;
      v2 -= 40;
    }

    while (v2);
  }
}

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<mlir::BlockArgument *>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v4 != a3);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void llvm::SetVector<mlir::CallGraphNode::Edge,llvm::SmallVector<mlir::CallGraphNode::Edge,4u>,llvm::SmallDenseSet<mlir::CallGraphNode::Edge,4u,mlir::CallGraphNode::EdgeKeyInfo>,0u>::insert(unsigned int *a1, unint64_t *a2)
{
  v10 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, *a2, &v10))
  {
    return;
  }

  v4 = v10;
  v11 = v10;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_14;
  }

  if (v7 + ~v6 - a1[1] <= v7 >> 3)
  {
LABEL_14:
    llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, *a2, &v11);
    v5 = *a1;
    v4 = v11;
  }

  *a1 = v5 + 2;
  if (*v4 != -2)
  {
    --a1[1];
  }

  v8 = *a2;
  *v4 = v8;
  v9 = a1[12];
  if (v9 >= a1[13])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 10), a1 + 14, v9 + 1, 8);
    LODWORD(v9) = a1[12];
  }

  *(*(a1 + 5) + 8 * v9) = v8;
  ++a1[12];
}

mlir::CallGraph *mlir::CallGraph::CallGraph(mlir::CallGraph *this, mlir::Operation *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  v5 = *(this + 12);
  v4 = (this + 48);
  *v4 = v5 | 1;
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(v4);
  *(this + 11) = this + 104;
  *(this + 12) = 0x400000000;
  *(this + 17) = 0;
  *(this + 36) |= 1u;
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(this + 36);
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  computeCallGraph(a2, this, v7, 0, 0);
  computeCallGraph(a2, this, v7, 0, 1);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v7);
  MEMORY[0x25F891030](v7[0], 8);
  return this;
}

void computeCallGraph(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (a4 && a5 && v10)
  {
    v39 = (mlir::CallGraph::resolveCallable(a2, v10, v11, a3) & 0xFFFFFFFFFFFFFFF9 | 2);
    llvm::SetVector<mlir::CallGraphNode::Edge,llvm::SmallVector<mlir::CallGraphNode::Edge,4u>,llvm::SmallDenseSet<mlir::CallGraphNode::Edge,4u,mlir::CallGraphNode::EdgeKeyInfo>,0u>::insert((a4 + 8), &v39);
    return;
  }

  if (!v10)
  {
    v12 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
    if (!v12)
    {
LABEL_20:
      v30 = *(a1 + 44);
      if ((v30 & 0x7FFFFF) != 0)
      {
        v31 = (((a1 + 16 * ((v30 >> 23) & 1) + ((v30 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
        v32 = &v31[3 * (v30 & 0x7FFFFF)];
        do
        {
          if (*v31 != v31)
          {
            for (i = v31[1]; i != v31; i = *(i + 8))
            {
              v34 = i - 8;
              if (!i)
              {
                v34 = 0;
              }

              if (*(v34 + 32) != v34 + 32)
              {
                break;
              }
            }

            if (i != v31)
            {
              v35 = i - 8;
              if (!i)
              {
                v35 = 0;
              }

              v36 = *(v35 + 40);
              v39 = v31;
              v40 = i;
              for (j = v36; j; v36 = j)
              {
                computeCallGraph(v36, a2, a3, a4, a5);
                mlir::Region::OpIterator::operator++(&v39);
              }
            }
          }

          v31 += 3;
        }

        while (v31 != v32);
      }

      return;
    }

    v14 = (*v13)(v13, v12);
    if (!v14)
    {
      return;
    }

    v15 = v14;
    v38 = 0;
    v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a2, a2[4], v14, &v38);
    v17 = v38;
    if (v16)
    {
      v18 = *(v38 + 8);
LABEL_17:
      v27 = *(a2 + 3) + 16 * v18;
      v29 = *(v27 + 8);
      v28 = (v27 + 8);
      if (!v29)
      {
        operator new();
      }

      a4 = *v28;
      goto LABEL_20;
    }

    v39 = v38;
    v19 = a2[2];
    v20 = a2[4];
    if (4 * v19 + 4 >= 3 * v20)
    {
      v20 *= 2;
    }

    else if (v20 + ~v19 - a2[3] > v20 >> 3)
    {
LABEL_12:
      a2[2] = v19 + 1;
      if (*v17 != -4096)
      {
        --a2[3];
      }

      *v17 = v15;
      *(v17 + 8) = 0;
      v22 = (a2 + 6);
      v21 = *(a2 + 3);
      v38 = 0;
      v39 = v15;
      v40 = 0;
      v23 = a2[8];
      if (v23 >= a2[9])
      {
        if (v21 <= &v39 && v21 + 16 * v23 > &v39)
        {
          v37 = &v39 - v21;
          llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow((a2 + 6), v23 + 1);
          v21 = *v22;
          v24 = &v37[*v22];
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow((a2 + 6), v23 + 1);
          v21 = *v22;
          v24 = &v39;
        }
      }

      else
      {
        v24 = &v39;
      }

      v25 = a2[8];
      v26 = *v24;
      v24[1] = 0;
      *(v21 + 16 * v25) = v26;
      a2[8] = v25 + 1;
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](&v40, 0);
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](&v38, 0);
      v18 = a2[8] - 1;
      *(v17 + 8) = v18;
      goto LABEL_17;
    }

    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(a2, v20);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a2, a2[4], v15, &v39);
    v19 = a2[2];
    v17 = v39;
    goto LABEL_12;
  }
}

uint64_t *std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3 != (v2 + 64))
    {
      free(v3);
    }

    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x25F891030](*(v2 + 16), 8);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t mlir::CallGraph::lookupNode(mlir::CallGraph *this, mlir::Region *a2)
{
  v8 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::doFind<mlir::Region const*>(this, &v8);
  v4 = v3 == *this + 16 * *(this + 4) || v3 == 0;
  v5 = (v3 + 8);
  if (v4)
  {
    v5 = (this + 32);
  }

  v6 = *v5;
  if (v6 == *(this + 8))
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 16 * v6 + 8);
  }
}

uint64_t mlir::CallGraph::resolveCallable(mlir::CallGraph *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a3 + 32))(a3, a2, a4);
  if (!v5)
  {
    return a1 + 136;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(v5);
  if (!v7)
  {
    return a1 + 136;
  }

  v8 = (*v6)(v6, v7);
  result = mlir::CallGraph::lookupNode(a1, v8);
  if (!result)
  {
    return a1 + 136;
  }

  return result;
}

BOOL llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(void *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v4 = a2[10];
  if (v2 - v3 != a2[11] - v4)
  {
    return 1;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 8) != *(v4 + 8) || *(v3 + 24) != *(v4 + 24))
    {
      return 1;
    }

    v3 += 32;
    v4 += 32;
  }

  v7 = a1 + 7;
  v6 = a1[7];
  v8 = v7[1] - v6;
  v10 = a2 + 7;
  v9 = a2[7];
  if (v8 == v10[1] - v9)
  {
    return memcmp(v6, v9, v8) != 0;
  }

  return 1;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(_DWORD *a1)
{
  v1 = *a1;
  *a1 = *a1 & 1;
  if (v1)
  {
    v3 = a1 + 2;
    v2 = 4;
  }

  else
  {
    v2 = a1[4];
    if (!v2)
    {
      return;
    }

    v3 = *(a1 + 1);
  }

  memset_pattern16(v3, &memset_pattern, 8 * v2);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 9) ^ a2);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -2)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -16;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(uint64_t a1, unsigned int a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v13 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v6, &v6[v7]);

    JUMPOUT(0x25F891030);
  }

  v8 = v14;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if (v10 != -16 && v10 != -2)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v14, v8);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(_DWORD *a1, unint64_t *a2, unint64_t *a3)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(a1);
  while (a2 != a3)
  {
    v6 = *a2;
    if (*a2 != -16 && v6 != -2)
    {
      v8 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, v6, &v8);
      *v8 = *a2;
      *a1 += 2;
    }

    ++a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(uint64_t a1, int a2)
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
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[16 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      *(v5 + 1) = 0;
      *v8++ = v9;
      v5 += 16;
    }

    while (v5 != v7);
    v10 = (v7 - 8);
    v11 = -16 * v6;
    do
    {
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](v10, 0);
      v10 -= 2;
      v11 += 16;
    }

    while (v11);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::doFind<mlir::Region const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t std::__find[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::Value,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  for (i = a2; a4 != v5; i = ++v5)
  {
    if (*a5 == mlir::ValueRange::dereference_iterator(&v10, v5))
    {
      break;
    }
  }

  return a1;
}

uint64_t mlir::Liveness::build(mlir::Liveness *this)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v2 = *this;
  v38 = 0;
  v37 = 0u;
  v39 = &v41;
  v40 = 0;
  v41 = &v33;
  v42 = &v37;
  v3 = v40;
  if (v40)
  {
    while (1)
    {
      v4 = *(v39 + v3 - 1);
      if (v38)
      {
        v5 = ((v4 >> 4) ^ (v4 >> 9)) & (v38 - 1);
        v6 = *(v37 + 8 * v5);
        if (v6 == v4)
        {
LABEL_4:
          *(v37 + 8 * v5) = -8192;
          *(&v37 + 1) = vadd_s32(*(&v37 + 8), 0x1FFFFFFFFLL);
        }

        else
        {
          v20 = 1;
          while (v6 != -4096)
          {
            v21 = v5 + v20++;
            v5 = v21 & (v38 - 1);
            v6 = *(v37 + 8 * v5);
            if (v6 == v4)
            {
              goto LABEL_4;
            }
          }
        }
      }

      LODWORD(v40) = v3 - 1;
      v36 = v4;
      v41 = 0;
      v8 = v41;
      if (v7)
      {
        v9 = v41[1];
      }

      else
      {
        *v8 = v4;
        bzero(v8 + 1, 0x268uLL);
        v9 = 0;
        v8[2] = (v8 + 5);
        v8[21] = (v8 + 24);
        v8[40] = (v8 + 43);
        v8[59] = (v8 + 62);
        *(v8 + 6) = 16;
        *(v8 + 36) = 1;
        *(v8 + 44) = 16;
        *(v8 + 188) = 1;
        *(v8 + 82) = 16;
        *(v8 + 340) = 1;
        *(v8 + 120) = 16;
        *(v8 + 492) = 1;
      }

      mlir::SuccessorRange::SuccessorRange(&v41, v9);
      v10 = v42;
      if (v42)
      {
        break;
      }

LABEL_18:
      {
        v19 = *v36;
        if (*v36)
        {
          do
          {
            v41 = *(v19[2] + 16);
            llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(&v37, &v41);
            v19 = *v19;
          }

          while (v19);
        }
      }

      v3 = v40;
      if (!v40)
      {
        goto LABEL_27;
      }
    }

    v11 = 0;
    v12 = v41;
    while (1)
    {
      if (!v35)
      {
        goto LABEL_16;
      }

      v13 = v12[4 * v11 + 3];
      v14 = ((v13 >> 4) ^ (v13 >> 9)) & (v35 - 1);
      v15 = &v33[78 * v14];
      v16 = *v15;
      if (*v15 != v13)
      {
        break;
      }

LABEL_17:
      llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(v8 + 21, (v15 + 2));
      if (++v11 == v10)
      {
        goto LABEL_18;
      }
    }

    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & (v35 - 1);
      v15 = &v33[78 * v14];
      v16 = *v15;
      if (*v15 == v13)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    v15 = &v33[78 * v35];
    goto LABEL_17;
  }

LABEL_27:
  if (v39 != &v41)
  {
    free(v39);
  }

  MEMORY[0x25F891030](v37, 8);
  v22 = v33;
  v23 = v35;
  if (v34)
  {
    v24 = v33;
    if (v35)
    {
      v25 = 624 * v35;
      v24 = v33;
      while ((*v24 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v24 += 78;
        v25 -= 624;
        if (!v25)
        {
          goto LABEL_51;
        }
      }
    }

    v26 = &v33[78 * v35];
    if (v24 != v26)
    {
LABEL_36:
      v41 = 0;
      v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*(this + 1), *(this + 6), *v24, &v41);
      v28 = v41;
      if (v27)
      {
        goto LABEL_42;
      }

      *&v37 = v41;
      v29 = *(this + 4);
      v30 = *(this + 6);
      if (4 * v29 + 4 >= 3 * v30)
      {
        v30 *= 2;
      }

      else if (v30 + ~v29 - *(this + 5) > v30 >> 3)
      {
LABEL_39:
        *(this + 4) = v29 + 1;
        if (*v28 != -4096)
        {
          --*(this + 5);
        }

        *v28 = *v24;
        *(v28 + 3) = 0u;
        *(v28 + 7) = 0u;
        *(v28 + 9) = 0u;
        *(v28 + 11) = 0u;
        *(v28 + 13) = 0u;
        *(v28 + 15) = 0u;
        *(v28 + 17) = 0u;
        *(v28 + 19) = 0u;
        *(v28 + 21) = 0u;
        *(v28 + 23) = 0u;
        *(v28 + 25) = 0u;
        *(v28 + 27) = 0u;
        *(v28 + 29) = 0u;
        *(v28 + 31) = 0u;
        v28[39] = 0;
        *(v28 + 1) = 0u;
        *(v28 + 33) = 0u;
        *(v28 + 35) = 0u;
        *(v28 + 37) = 0u;
        *(v28 + 5) = 0u;
        v28[2] = (v28 + 5);
        *(v28 + 6) = 16;
        *(v28 + 36) = 1;
        v28[21] = (v28 + 24);
        *(v28 + 44) = 16;
        *(v28 + 188) = 1;
LABEL_42:
        v28[1] = v24[1];
        if (v24 != v28)
        {
          llvm::SmallPtrSetImplBase::moveFrom((v28 + 2), v28 + 5, 16, (v24 + 5), (v24 + 2));
          llvm::SmallPtrSetImplBase::moveFrom((v28 + 21), v28 + 24, 16, (v24 + 24), (v24 + 21));
        }

        while (1)
        {
          v24 += 78;
          if (v24 == v26)
          {
            break;
          }

          if ((*v24 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v24 != v26)
            {
              goto LABEL_36;
            }

            break;
          }
        }

        v23 = v35;
        v22 = v33;
        goto LABEL_51;
      }

      llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(this + 8, v30);
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*(this + 1), *(this + 6), *v24, &v37);
      v29 = *(this + 4);
      v28 = v37;
      goto LABEL_39;
    }
  }

LABEL_51:
  if (v23)
  {
    v31 = 624 * v23;
    do
    {
      if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if ((*(v22 + 492) & 1) == 0)
        {
          free(*(v22 + 472));
        }

        if ((*(v22 + 340) & 1) == 0)
        {
          free(*(v22 + 320));
        }

        if ((*(v22 + 188) & 1) == 0)
        {
          free(*(v22 + 168));
        }

        if ((*(v22 + 36) & 1) == 0)
        {
          free(*(v22 + 16));
        }
      }

      v22 += 624;
      v31 -= 624;
    }

    while (v31);
    v22 = v33;
  }

  return MEMORY[0x25F891030](v22, 8);
}

mlir::Operation *mlir::LivenessBlockInfo::getEndOperation(uint64_t a1, void *a2, mlir::Operation *a3)
{
  if (llvm::SmallPtrSetImplBase::contains_imp((a1 + 160), a2))
  {
    return *(*a1 + 32);
  }

  v6 = *a2;
  if (*a2)
  {
    do
    {
      v7 = v6[2];
      while (1)
      {
        v8 = *(v7 + 2);
        if (v8 == *a1)
        {
          break;
        }

        if (v8)
        {
          v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v9)
          {
            v7 = *(v9 + 16);
            if (v7)
            {
              continue;
            }
          }
        }

        goto LABEL_12;
      }

      if (mlir::Operation::isBeforeInBlock(a3, v7))
      {
        a3 = v7;
      }

LABEL_12:
      v6 = *v6;
    }

    while (v6);
  }

  return a3;
}

void std::vector<mlir::Operation *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

BOOL mlir::Liveness::isDeadAfter(uint64_t a1, void *a2, mlir::Operation *a3)
{
  v13 = *(a3 + 2);
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>((a1 + 8), &v13);
  v7 = *(a1 + 24);
  v8 = *(a1 + 8) + 320 * v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(a1 + 8) + 320 * v7;
  }

  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 8;
  }

  if (llvm::SmallPtrSetImplBase::contains_imp((v10 + 160), a2))
  {
    return 0;
  }

  EndOperation = mlir::LivenessBlockInfo::getEndOperation(v10, a2, a3);
  return EndOperation == a3 || mlir::Operation::isBeforeInBlock(EndOperation, a3);
}

BOOL anonymous namespace::BlockInfoBuilder::updateLiveIn(_anonymous_namespace_::BlockInfoBuilder *this)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v5, v9, (this + 464));
  llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v5, this + 160);
  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v5, (this + 312));
  v2 = v6 - v7;
  v3 = *(this + 5) - *(this + 6);
  if (&v5 != (this + 8) && v2 != v3)
  {
    llvm::SmallPtrSetImplBase::moveFrom(this + 8, this + 32, 16, v9, &v5);
  }

  if ((v8 & 1) == 0)
  {
    free(v5);
  }

  return v2 != v3;
}

uint64_t llvm::function_ref<void ()(mlir::Block *)>::callback_fn<buildBlockMapping(mlir::Operation *,llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>> &)::$_0>(uint64_t **a1, void *a2)
{
  v3 = a1;
  v33 = a2;
  v34 = 0;
  v4 = *a1;
  v6 = v34;
  if ((v5 & 1) == 0)
  {
    *v6 = a2;
    v6[1] = a2;
    v6[2] = v6 + 5;
    *(v6 + 6) = 16;
    *(v6 + 28) = 0;
    *(v6 + 36) = 1;
    v6[21] = v6 + 24;
    v7 = (v6 + 21);
    *(v6 + 44) = 16;
    *(v6 + 180) = 0;
    *(v6 + 188) = 1;
    v6[40] = v6 + 43;
    v6[41] = 16;
    *(v6 + 84) = 0;
    *(v6 + 340) = 1;
    v6[59] = v6 + 62;
    v6[60] = 16;
    *(v6 + 122) = 0;
    *(v6 + 492) = 1;
    v8 = a2[6];
    v9 = a2[7];
    while (v8 != v9)
    {
      v10 = *v8;
      llvm::SmallPtrSetImpl<mlir::Value>::insert((v6 + 40), *v8, v35);
      v11 = v10;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        v12 = *(*(v11 + 2) + 16);
        while (1)
        {
          v13 = v12[3] & 0xFFFFFFFFFFFFFFF8;
          if (v13 == (a2[3] & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          if (!v13)
          {
            v12 = 0;
            break;
          }

          v12 = *(v13 + 16);
          if (v12)
          {
            v12 = v12[2];
            if (v12)
            {
              continue;
            }
          }

          break;
        }

        if (v12 != a2)
        {
          llvm::SmallPtrSetImpl<mlir::Value>::insert(v7, v10, v35);
          break;
        }
      }

      ++v8;
    }

    v14 = a2 + 4;
    v15 = a2[5];
    if (v15 != a2 + 4)
    {
      v32 = v3;
      while (1)
      {
        v16 = *(v15 + 36);
        v17 = v15 - 16;
        v18 = v16 ? v15 - 16 : 0;
        if (v16)
        {
          break;
        }

LABEL_41:
        v15 = *(v15 + 8);
        if (v15 == v14)
        {
          v15 = a2[5];
          v3 = v32;
          goto LABEL_43;
        }
      }

      v19 = 0;
      while (1)
      {
        v20 = v18;
        if (!v19)
        {
          goto LABEL_29;
        }

        v21 = *(v15 - 8) & 7;
        v22 = v15 - 16;
        v23 = v19;
        if (v21 == 6)
        {
          goto LABEL_27;
        }

        v24 = (5 - v21);
        v23 = v19 - v24;
        if (v19 > v24)
        {
          break;
        }

        v20 = (v17 - 16 * v19);
LABEL_29:
        v25 = v20;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          v26 = *(*(v25 + 2) + 16);
          while (1)
          {
            v27 = v26[3] & 0xFFFFFFFFFFFFFFF8;
            if (v27 == (a2[3] & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            if (!v27)
            {
              v26 = 0;
              break;
            }

            v26 = *(v27 + 16);
            if (v26)
            {
              v26 = v26[2];
              if (v26)
              {
                continue;
              }
            }

            break;
          }

          if (v26 != a2)
          {
            llvm::SmallPtrSetImpl<mlir::Value>::insert(v7, v20, v35);
            break;
          }
        }

        if (++v19 == v16)
        {
          goto LABEL_41;
        }
      }

      v22 = v17 - 16 * v24;
LABEL_27:
      v20 = (v22 - 24 * v23);
      goto LABEL_29;
    }

LABEL_43:
    v35[0] = (v6 + 1);
    if (v15 != v14)
    {
      do
      {
        v28 = *(v15 + 8);
        v15 = v28;
      }

      while (v28 != v14);
    }

    llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>((v6 + 59), (v6 + 40));
  }

  if (result)
  {
    v30 = *v33;
    if (*v33)
    {
      v31 = v3[1];
      do
      {
        v35[0] = *(v30[2] + 16);
        result = llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(v31, v35);
        v30 = *v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 624 * v5);
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
        v6 = (a1 + 624 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
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

  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((624 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 624 * v10 - 624;
      v13 = vdupq_n_s64(v12 / 0x270);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[78] = -4096;
        }

        v11 += 2;
        result += 156;
      }

      while (((v12 / 0x270 + 2) & 0xFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      v16 = 624 * v3;
      do
      {
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          v18 = v25;
          *v25 = v17;
          v19 = v4 + v15;
          v18[1] = *(v4 + v15 + 8);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 2), v18 + 5, 16, v4 + v15 + 40, v4 + v15 + 16);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 21), v18 + 24, 16, v19 + 192, v19 + 168);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 40), v18 + 43, 16, v19 + 344, v19 + 320);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 59), v18 + 62, 16, v19 + 496, v19 + 472);
          ++*(a1 + 8);
          if ((*(v4 + v15 + 492) & 1) == 0)
          {
            free(*(v19 + 472));
          }

          if ((*(v19 + 340) & 1) == 0)
          {
            free(*(v19 + 320));
          }

          if ((*(v4 + v15 + 188) & 1) == 0)
          {
            free(*(v19 + 168));
          }

          if ((*(v4 + v15 + 36) & 1) == 0)
          {
            free(*(v19 + 16));
          }
        }

        v15 += 624;
      }

      while (v16 != v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 624 * v20 - 624;
    v23 = vdupq_n_s64(v22 / 0x270);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[78] = -4096;
      }

      v21 += 2;
      result += 156;
    }

    while (((v22 / 0x270 + 2) & 0xFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

const void **llvm::SmallPtrSetImpl<mlir::Value>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = (*a1 + 8 * *(a1 + v7));
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

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(uint64_t this, llvm::SmallPtrSetImplBase *a2)
{
  v3 = this;
  v4 = *(this + 12);
  if (v4 - *(this + 16) >= (*(a2 + 3) - *(a2 + 4)))
  {
    v8 = 8;
    if (*(a2 + 20))
    {
      v8 = 12;
    }

    v9 = *(a2 + v8);
    if (v9)
    {
      v10 = 8 * v9;
      for (i = *a2; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v10 -= 8;
        if (!v10)
        {
          return this;
        }
      }
    }

    else
    {
      i = *a2;
    }

    v15 = *a2 + 8 * v9;
LABEL_26:
    if (i != v15)
    {
      v16 = *i++;
      this = llvm::SmallPtrSetImplBase::erase_imp(v3, v16);
      while (i != v15)
      {
        if (*i < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_26;
        }

        ++i;
      }
    }
  }

  else if (*(this + 20) == 1)
  {
    if (v4)
    {
      v5 = *this;
      v6 = *this + 8 * v4;
      do
      {
        this = llvm::SmallPtrSetImplBase::contains_imp(a2, *v5);
        if (this)
        {
          v7 = *(v6 - 8);
          v6 -= 8;
          *v5 = v7;
          --*(v3 + 12);
        }

        else
        {
          ++v5;
        }
      }

      while (v5 != v6);
    }
  }

  else
  {
    v12 = *(this + 8);
    if (v12)
    {
      v13 = *this;
      v14 = 8 * v12;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          this = llvm::SmallPtrSetImplBase::contains_imp(a2, *v13);
          if (this)
          {
            *v13 = -2;
            ++*(v3 + 16);
          }
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }
  }

  return this;
}

const void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::BlockInfoBuilder::BlockInfoBuilder(mlir::Block *)::{lambda(mlir::Operation *)#1}>(const void **result, uint64_t a2)
{
  v3 = *result;
  v4 = *(a2 + 36);
  v5 = (a2 - 16);
  if (v4)
  {
    v6 = (a2 - 16);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 0;
    v8 = v6;
    while (1)
    {
      v9 = v6;
      if (v7)
      {
        v10 = *(a2 - 8) & 7;
        v11 = v5;
        v12 = v7;
        if (v10 == 6)
        {
          goto LABEL_10;
        }

        v13 = (5 - v10);
        v9 = v8;
        v12 = v7 - v13;
        if (v7 > v13)
        {
          break;
        }
      }

LABEL_11:
      result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 312), v9, v25);
      ++v7;
      v8 -= 16;
      if (v4 == v7)
      {
        goto LABEL_12;
      }
    }

    v11 = &v6[-16 * v13];
LABEL_10:
    v9 = &v11[-24 * v12];
    goto LABEL_11;
  }

LABEL_12:
  v14 = *(a2 + 44);
  if ((v14 & 0x800000) != 0)
  {
    v15 = *(a2 + 68);
    if (v15)
    {
      v16 = (*(a2 + 72) + 24);
      do
      {
        v17 = *v16;
        v16 += 4;
        result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 464), v17, v25);
        --v15;
      }

      while (v15);
      v14 = *(a2 + 44);
    }
  }

  if ((v14 & 0x7FFFFF) != 0)
  {
    v18 = ((a2 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v19 = v18 + 24 * (v14 & 0x7FFFFF);
    do
    {
      for (i = *(v18 + 8); i != v18; i = *(i + 8))
      {
        v21 = i - 8;
        if (!i)
        {
          v21 = 0;
        }

        v22 = *(v21 + 48);
        v23 = *(v21 + 56);
        while (v22 != v23)
        {
          v24 = *v22++;
          result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 312), v24, v25);
        }
      }

      v18 += 24;
    }

    while (v18 != v19);
  }

  return result;
}

const void **llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = 8;
  if (*(a2 + 20))
  {
    v3 = 12;
  }

  v4 = *(a2 + v3);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *a2; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    i = *a2;
  }

  v7 = *a2 + 8 * v4;
LABEL_10:
  if (i != v7)
  {
    v8 = *i++;
    result = llvm::SmallPtrSetImpl<mlir::Value>::insert(v2, v8, v9);
    while (i != v7)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_10;
      }

      ++i;
    }
  }

  return result;
}

uint64_t llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 320 * v5);
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
        v6 = (a1 + 320 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((320 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 320 * v10 - 320;
      v13 = vdupq_n_s64(v12 / 0x140);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[40] = -4096;
        }

        v11 += 2;
        result += 80;
      }

      while (((v12 / 0x140 + 2) & 0x1FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      v16 = 320 * v3;
      do
      {
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v17, &v25);
          v18 = v4 + v15;
          v19 = v25;
          *v25 = *(v4 + v15);
          v19[1] = *(v4 + v15 + 8);
          llvm::SmallPtrSetImplBase::moveHelper((v19 + 2), v19 + 5, 16, v4 + v15 + 40, v4 + v15 + 16);
          llvm::SmallPtrSetImplBase::moveHelper((v19 + 21), v19 + 24, 16, v18 + 192, v18 + 168);
          ++*(a1 + 8);
          if ((*(v4 + v15 + 188) & 1) == 0)
          {
            free(*(v18 + 168));
          }

          if ((*(v18 + 36) & 1) == 0)
          {
            free(*(v18 + 16));
          }
        }

        v15 += 320;
      }

      while (v16 != v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 320 * v20 - 320;
    v23 = vdupq_n_s64(v22 / 0x140);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[40] = -4096;
      }

      v21 += 2;
      result += 80;
    }

    while (((v22 / 0x140 + 2) & 0x1FFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 320 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 320 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v5, a2, &v15);
      v14 = a2[1];
      *v15 = *a2;
      v15[1] = v14;
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

void mlir::walkSlice(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, a1, 0, a1, a2);
  v20[0] = 1;
  v8 = 1;
  v9 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *&v20[v8] = v9;
    v8 += 2;
  }

  while (v8 != 17);
  v10 = v23;
  if (v23)
  {
    while (1)
    {
      v11 = *(v22 + v10 - 1);
      LODWORD(v23) = v10 - 1;
      v18 = 0;
      if (!llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v20, v11, &v18))
      {
        break;
      }

LABEL_17:
      v10 = v23;
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    v12 = v18;
    v19 = v18;
    v13 = v20[0];
    v14 = LODWORD(v20[0]) >> 1;
    v15 = v20[0] & 1;
    if (v20[0])
    {
      v16 = 16;
    }

    else
    {
      v16 = v21;
    }

    if (4 * v14 + 4 >= 3 * v16)
    {
      v16 *= 2;
    }

    else if (v16 + ~v14 - HIDWORD(v20[0]) > v16 >> 3)
    {
LABEL_10:
      LODWORD(v20[0]) = (v13 & 0xFFFFFFFE) + v15 + 2;
      if (*v12 != -4096)
      {
        --HIDWORD(v20[0]);
      }

      *v12 = v11;
      a3(a4, v11);
      if (*a5 != 2)
      {
        if (!*a5)
        {
          goto LABEL_22;
        }

        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v22, *(a5 + 8), (*(a5 + 8) + 8 * *(a5 + 16)));
      }

      v17 = *(a5 + 8);
      if (v17 != (a5 + 24))
      {
        free(v17);
      }

      goto LABEL_17;
    }

    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(v20, v16);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v20, v11, &v19);
    v13 = v20[0];
    v12 = v19;
    v15 = v20[0] & 1;
    goto LABEL_10;
  }

LABEL_21:
  *a5 = 2;
  *(a5 + 8) = a5 + 24;
  *(a5 + 16) = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a5 + 8), 0, 0, 0, 0);
LABEL_22:
  if ((v20[0] & 1) == 0)
  {
    MEMORY[0x25F891030](v20[1], 8);
  }

  if (v22 != v24)
  {
    free(v22);
  }
}