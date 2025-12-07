uint64_t *llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(uint64_t *result)
{
  v1 = (result + 7);
  result[8] = result[7];
  if (result[10] != result[11])
  {
    v2 = result;
    while (1)
    {
      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitChildren(v2);
      v4 = v2[10];
      v3 = v2[11];
      v6 = *(v3 - 32);
      v5 = *(v3 - 8);
      v2[11] = v3 - 32;
      if (v4 != v3 - 32 && *(v3 - 40) > v5)
      {
        *(v3 - 40) = v5;
      }

      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(v2 + 1, &v6);
      if (v5 == *(result + 2))
      {
        break;
      }

      if (v2[10] == v2[11])
      {
        return result;
      }
    }

    do
    {
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v1, (v2[5] - 8));
      v2[5] -= 8;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(v2 + 1, (v2[8] - 8));
      *(result + 2) = -1;
    }

    while (*(v2[8] - 8) != v6);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
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
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_213C7D090)));
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
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_213C7D090)));
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      *(v14 + 2) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::StackElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitChildren(uint64_t a1)
{
  v1 = *(a1 + 88);
  for (i = *(v1 - 24); i != *(*(v1 - 32) + 24); i = *(v1 - 24))
  {
    v4 = *(v1 - 16);
    *(v1 - 24) = i + 40;
    v7[0] = i;
    v7[1] = v4;
    v5 = llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(v7);
    v8 = v5;
    v7[0] = 0;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>((a1 + 8), &v8, v7) || v7[0] == *(a1 + 8) + 16 * *(a1 + 24))
    {
      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitOne(a1, v5);
      v1 = *(a1 + 88);
    }

    else
    {
      v6 = *(v7[0] + 8);
      v1 = *(a1 + 88);
      if (*(v1 - 8) > v6)
      {
        *(v1 - 8) = v6;
      }
    }
  }
}

uint64_t llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v5, *a1);
  v6 = *(v1 + 32);
  v3 = v2(v5);
  if (v5[24] == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v5);
  }

  return v3;
}

void sub_213C0262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(&a10);
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(llvm::ValueHandleBase *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(a1, a2);
  }

  return a1;
}

void sub_213C0268C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v1);
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(llvm::ValueHandleBase *a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(a1);
    *(a1 + 24) = 0;
  }

  result = llvm::ValueHandleBase::ValueHandleBase(a1, 3u, a2);
  *(result + 24) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::InsertIntoBucketImpl<llvm::CallInst *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::InsertIntoBucketImpl<llvm::CallInst *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](8 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(a1, v4, v4 + v3);

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
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 8);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_213C7D090)));
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
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_213C7D090)));
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 72))(*(this + 9), a2, a3, a5, a6);
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

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 15, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v9 = llvm::User::operator new(0x40);
  MEMORY[0x21604B440](v9, this, a2, a3, a4);
  return v9;
}

uint64_t llvm::IRBuilderBase::CreatePHI(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v10 = 257;
  v7 = llvm::PHINode::Create(a2, a3, v9, 0, a5);
  if (llvm::FPMathOperator::classof(v7))
  {
    llvm::IRBuilderBase::setFPAttrs(this, v7, 0, *(this + 24));
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
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

llvm::BranchInst *llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v3 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  return v3;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

llvm::PHINode *llvm::PHINode::Create(llvm::PHINode *this, llvm::Type *a2, const llvm::Twine *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v7 = a2;
  v9 = llvm::User::operator new(0x40);
  llvm::PHINode::PHINode(v9, this, v7, a3, a4);
  return v9;
}

llvm::PHINode *llvm::PHINode::PHINode(llvm::PHINode *this, llvm::Type *a2, int a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  llvm::User::allocHungoffUses(this);
  return this;
}

void MTLForceInlinerPass::~MTLForceInlinerPass(MTLForceInlinerPass *this)
{
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLForceInlinerPass::runOnModule(MTLForceInlinerPass *this, llvm::Module *a2)
{
  v81[4] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 4) + 20) & 0x10) == 0)
  {
    return 0;
  }

  MTLBoundsCheck::getMetalMetadata(v44, a2);
  v2 = v45;
  if (v45 == 1)
  {
    v5 = v44[1];
    v6 = *(this + 5);
    v43 = *(this + 4);
    MEMORY[0x21604C1E0](v65, a2);
    v41 = v2;
    v79 = v81;
    v80 = 0x400000000;
    llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(&v57, v66);
    v54 = 0u;
    __p = 0u;
    *v52 = 0u;
    *v53 = 0u;
    memset(v51, 0, sizeof(v51));
    v56 = 0;
    v42 = v6;
    while (llvm::iterator_facade_base<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>,std::forward_iterator_tag,std::vector<llvm::CallGraphNode *> const,long,std::vector<llvm::CallGraphNode *> const*,std::vector<llvm::CallGraphNode *> const&>::operator!=(&v57, v51))
    {
      v7 = v61;
      v8 = v62;
      while (v7 != v8)
      {
        v9 = *v7;
        if (*v7 != v66)
        {
          v10 = v9[1];
          v50 = v10;
          if (v10)
          {
            if ((llvm::GlobalValue::isDeclaration(v10) & 1) == 0 && (*(v50 + 8) & 0xE) != 4)
            {
              Name = llvm::Value::getName(v50);
              if (v12 < 0x10)
              {
                goto LABEL_13;
              }

              if (*Name != 0x61725F7269615F5FLL || Name[1] != 0x676E696361727479)
              {
                if (v12 >= 0x17)
                {
                  if (*Name != 0x697265776F6C5F5FLL || Name[1] != 0x6E692E62696C676ELL || *(Name + 15) != 0x2E6C616E7265746ELL)
                  {
LABEL_13:
                    if (v43 && (*(v43 + 22) & 4) != 0)
                    {
                      v13 = *(v50 + 3);
                      v14 = 8 * *(v13 + 12);
                      v15 = (*(v13 + 16) + 8);
                      v16 = v14 - 8;
                      do
                      {
                        if (!v16)
                        {
                          goto LABEL_76;
                        }

                        v17 = *v15++;
                        v16 -= 8;
                      }

                      while (*(v17 + 8) != 15);
                    }

                    if (v6)
                    {
                      ++*(v6 + 100);
                    }

                    v18 = v9[2];
                    v19 = v9[3];
                    while (2)
                    {
                      if (v18 == v19)
                      {
                        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v79, &v50);
                        v6 = v42;
                        break;
                      }

                      llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v46, v18);
                      v49 = *(v18 + 32);
                      v67 = 0u;
                      v69 = 0;
                      v70 = 0;
                      v68 = 0;
                      v71 = v73;
                      v72 = 0x400000000;
                      v74[0] = &v75;
                      v74[1] = 0x800000000;
                      v76 = v78;
                      v77 = 0x800000000;
                      v78[64] = 1;
                      v20 = *(v47 - 32);
                      if (v20 && !*(v20 + 16) && *(v20 + 24) == *(v47 + 72) && (v21 = llvm::Value::getName(v20), v22 >= 0x10))
                      {
                        if (*v21 != 0x61725F7269615F5FLL || v21[1] != 0x676E696361727479)
                        {
                          if (v22 >= 0x17)
                          {
                            if (*v21 != 0x697265776F6C5F5FLL || v21[1] != 0x6E692E62696C676ELL || *(v21 + 15) != 0x2E6C616E7265746ELL)
                            {
                              goto LABEL_26;
                            }
                          }

                          else
                          {
                            if (v22 != 16)
                            {
                              goto LABEL_26;
                            }

                            if (*v21 != 0x5F7465672E6C746DLL || v21[1] != 0x64695F6567616D69)
                            {
                              goto LABEL_26;
                            }
                          }
                        }
                      }

                      else
                      {
LABEL_26:
                        llvm::InlineFunction();
                      }

                      if (v76 != v78)
                      {
                        free(v76);
                      }

                      llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(v74);
                      if (v71 != v73)
                      {
                        free(v71);
                      }

                      if (v48 == 1)
                      {
                        llvm::ValueHandleBase::~ValueHandleBase(v46);
                      }

                      v18 += 40;
                      continue;
                    }
                  }
                }

                else
                {
                  if (v12 != 16)
                  {
                    goto LABEL_13;
                  }

                  if (*Name != 0x5F7465672E6C746DLL || Name[1] != 0x64695F6567616D69)
                  {
                    goto LABEL_13;
                  }
                }
              }
            }
          }
        }

LABEL_76:
        ++v7;
      }

      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(&v57);
    }

    llvm::GlobalValue::setLinkage(*(*(v5 - 8 * *(v5 + 8)) + 128), 0);
    if (v80)
    {
      v34 = v79;
      v35 = 8 * v80;
      do
      {
        v36 = *v34;
        if ((llvm::Value::hasNUsesOrMore(*v34) & 1) == 0 && (*(v36 + 32) & 0xF) != 0)
        {
          llvm::Function::dropAllReferences(v36);
          llvm::Function::eraseFromParent(v36);
        }

        ++v34;
        v35 -= 8;
      }

      while (v35);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    v2 = v41;
    if (v53[1])
    {
      *&v54 = v53[1];
      operator delete(v53[1]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(v51 + 8, v31, v32, v33);
    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&v58, v37, v38, v39);
    if (v79 != v81)
    {
      free(v79);
    }

    MEMORY[0x21604C1F0](v65);
  }

  return v2;
}

void sub_213C035B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::~scc_iterator(&a23, a2, a3, a4);
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::~scc_iterator(&a36, v51, v52, v53);
  v54 = *(v49 - 168);
  if (v54 != a11)
  {
    free(v54);
  }

  MEMORY[0x21604C1F0](&a49);
  _Unwind_Resume(a1);
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

char ***llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[3 * v3 - 3];
    do
    {
      llvm::ValueHandleBase::~ValueHandleBase(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::InlineFunctionInfo::~InlineFunctionInfo(llvm::InlineFunctionInfo *this)
{
  v2 = *(this + 38);
  if (v2 != this + 320)
  {
    free(v2);
  }

  llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(this + 12);
  v3 = *(this + 6);
  if (v3 != this + 64)
  {
    free(v3);
  }
}

void MTLHoistStaticAllocasPass::~MTLHoistStaticAllocasPass(MTLHoistStaticAllocasPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLHoistStaticAllocasPass::runOnModule(MTLHoistStaticAllocasPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = a2 + 24;
  v5 = *(a2 + 4);
  if (v5 == v4)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (v5)
      {
        v7 = (v5 - 56);
      }

      else
      {
        v7 = 0;
      }

      v6 |= MTLHoistStaticAllocasPass::runOnFunction(this, v7);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  return v6 & 1;
}

BOOL MTLHoistStaticAllocasPass::runOnFunction(MTLHoistStaticAllocasPass *this, llvm::Function *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 10);
  if (v2 == (a2 + 72))
  {
    return 0;
  }

  v18 = v20;
  v19 = 0x400000000;
  if (v2)
  {
    v3 = (v2 - 24);
  }

  else
  {
    v3 = 0;
  }

  FirstNonPHIOrDbgOrLifetime = llvm::BasicBlock::getFirstNonPHIOrDbgOrLifetime(v3);
  if (!FirstNonPHIOrDbgOrLifetime)
  {
    goto LABEL_38;
  }

  v5 = v3 + 40;
  v6 = FirstNonPHIOrDbgOrLifetime + 24;
  if ((FirstNonPHIOrDbgOrLifetime + 24) != (v3 + 40))
  {
    do
    {
      if (v6)
      {
        v7 = v6 - 24;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v7 + 16);
      if (v8 == 59 || (v9 = llvm::isa_impl_wrap<llvm::DbgInfoIntrinsic,llvm::Instruction const,llvm::Instruction const>::doit(v7), v8 = *(v7 + 16), v9))
      {
        if (v6 && v8 == 59)
        {
          if (!llvm::AllocaInst::isStaticAlloca((v6 - 24)))
          {
            goto LABEL_21;
          }

          v8 = *(v7 + 16);
        }
      }

      else if (v8 != 84)
      {
        goto LABEL_21;
      }

      if (v6 && v8 == 84 && (llvm::Function::hasFnAttribute() & 1) == 0)
      {
        break;
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }

  if (v6 == v5)
  {
    goto LABEL_38;
  }

LABEL_21:
  v10 = v6;
  do
  {
    if (v10)
    {
      v11 = v10 - 24;
    }

    else
    {
      v11 = 0;
    }

    if (v10 && *(v11 + 16) == 59 && llvm::AllocaInst::isStaticAlloca((v10 - 24)))
    {
      llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v18, v10 - 24);
    }

    v10 = *(v10 + 8);
  }

  while (v10 != v5);
  v12 = v6 ? (v6 - 24) : 0;
  if (v19)
  {
    v13 = v18;
    v14 = 8 * v19;
    do
    {
      v15 = *v13;
      llvm::Instruction::removeFromParent(*v13);
      llvm::Instruction::insertBefore(v15, v12);
      ++v13;
      v14 -= 8;
    }

    while (v14);
    v16 = v19 != 0;
  }

  else
  {
LABEL_38:
    v16 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v16;
}

void sub_213C03B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void MTLRemoveThreadgroupGlobalsPass::~MTLRemoveThreadgroupGlobalsPass(MTLRemoveThreadgroupGlobalsPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLRemoveThreadgroupGlobalsPass::runOnModule(MTLRemoveThreadgroupGlobalsPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  MTLRemoveThreadgroupGlobalsPass::removeThreadgroupGlobalsFromLLVMUsedList(this, a2);
  return 1;
}

void MTLRemoveThreadgroupGlobalsPass::removeThreadgroupGlobalsFromLLVMUsedList(MTLRemoveThreadgroupGlobalsPass *this, llvm::Module *a2)
{
  v2 = 0;
  v24[2] = *MEMORY[0x277D85DE8];
  v24[0] = "llvm.used";
  v24[1] = "llvm.compiler.used";
  do
  {
    if (v24[v2])
    {
      strlen(v24[v2]);
    }

    GlobalVariable = llvm::Module::getGlobalVariable();
    v4 = GlobalVariable;
    if (GlobalVariable)
    {
      v21 = v23;
      v22 = 0x800000000;
      v5 = *(GlobalVariable - 32);
      v6 = v5[5];
      if ((v6 & 0x40000000) != 0)
      {
        v8 = *(v5 - 1);
        v7 = v6 & 0x7FFFFFF;
        if (!v7)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v7 = v6 & 0x7FFFFFF;
        v8 = &v5[-8 * v7];
        if (!v7)
        {
          goto LABEL_33;
        }
      }

      v9 = &v8[4 * v7];
      do
      {
        v10 = *(*v8 + 16);
        v11 = *v8;
        if (*v8)
        {
          v12 = v10 == 3;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          while (1)
          {
            v13 = *(v11 + 16);
            if (v13 != 5)
            {
              break;
            }

            v14 = *(v11 + 18);
            v15 = v14 > 0x32;
            v16 = (1 << v14) & 0x6000400000000;
            if (!v15 && v16 != 0)
            {
              v11 = *(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF));
              if (v11)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          if (v13 != 3)
          {
            goto LABEL_25;
          }
        }

        v18 = *v11;
        v19 = *(*v11 + 8);
        if ((v19 & 0xFE) == 0x12)
        {
          v19 = *(**(v18 + 16) + 8);
        }

        if ((v19 & 0xFFFFFF00) != 0x300)
        {
LABEL_25:
          if (v10 >= 0x15)
          {
            v20 = 0;
          }

          else
          {
            v20 = *v8;
          }

          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v21, v20);
        }

        v8 += 4;
      }

      while (v8 != v9);
      if (v22)
      {
        if (v22 != (v5[5] & 0x7FFFFFF))
        {
          llvm::ArrayType::get(*(*v5 + 24), v22);
          llvm::User::operator new(0x58);
          llvm::ConstantArray::get();
          llvm::GlobalVariable::GlobalVariable();
          llvm::Value::takeName();
          llvm::GlobalObject::setSection();
          llvm::GlobalVariable::removeFromParent(v4);
        }

        goto LABEL_34;
      }

LABEL_33:
      llvm::GlobalVariable::dropAllReferences(v4);
      llvm::GlobalVariable::eraseFromParent(v4);
LABEL_34:
      if (v21 != v23)
      {
        free(v21);
      }
    }

    ++v2;
  }

  while (v2 != 2);
}

void sub_213C04018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v17[5] = v17[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v17);
  if (a17 != v18)
  {
    free(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLVertexOutputPackingPass::vertexOutputPacking(MTLCompilerErrorObject **a1, llvm::Module *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(a1, a12, a13))
  {
    return 0;
  }

  v77 = a3;
  v16 = a3[1] - *a3;
  v17 = (v16 >> 5);
  LODWORD(v89.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v85, v17, &v89);
  v89.__r_.__value_.__r.__words[0] = "air.vertex";
  v90 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &v89);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v73 = v16;
  v79 = *(Operand - 8 * *(Operand + 8) + 8);
  v20 = *(v79 + 8);
  v89.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::vector(&__p, v20, &v89);
  v74 = *a2;
  v82 = 0;
  v83 = 0;
  __src = 0;
  v71 = a2;
  v72 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v70 = *(v72 + 3);
  v22 = **(v70 + 16);
  if (v20)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v79 - 8 * *(v79 + 8) + 8 * v23);
      String = llvm::MDString::getString(*(v24 - 8 * *(v24 + 8)));
      if (v26 <= 16)
      {
        if (v26 == 12)
        {
          if (!memcmp(String, "air.position", 0xCuLL))
          {
            ++a8;
            a9 += 4;
          }
        }

        else if (v26 == 14 && !memcmp(String, "air.point_size", 0xEuLL))
        {
          ++a8;
          ++a9;
        }

        goto LABEL_32;
      }

      if (v26 == 29)
      {
        break;
      }

      if (v26 != 17)
      {
        goto LABEL_32;
      }

      if (*String != 0x747265762E726961 || String[1] != 0x757074756F5F7865 || *(String + 16) != 116)
      {
        if (!memcmp(String, "air.clip_distance", 0x11uLL))
        {
          if (*(v22 + 8) == 16 && (v29 = *(*(v22 + 16) + 8 * v23)) != 0 && *(v29 + 8) == 17)
          {
            v30 = *(v29 + 32);
            v31 = (v30 + 3) >> 2;
          }

          else
          {
            LODWORD(v30) = 1;
            LODWORD(v31) = 1;
          }

          a8 += v31;
          a9 += v30;
        }

        goto LABEL_32;
      }

      LODWORD(v89.__r_.__value_.__l.__data_) = 0;
      MatchingFragmentInput = MTLFrameworkPass::findMatchingFragmentInput(a1, &v89, v22, v23, v24, v77, a5);
      if (MatchingFragmentInput == 1)
      {
        *(v85[0] + LODWORD(v89.__r_.__value_.__l.__data_)) = v23 + 1;
        goto LABEL_44;
      }

      if (MatchingFragmentInput == 2)
      {
        v68 = 0;
        goto LABEL_94;
      }

LABEL_45:
      if (v20 == ++v23)
      {
        goto LABEL_49;
      }
    }

    if (!memcmp(String, "air.render_target_array_index", 0x1DuLL))
    {
      dataTypeFromMetadata(1u, v24);
    }

LABEL_32:
    v33 = v82;
    if (v82 >= v83)
    {
      v35 = __src;
      v36 = v82 - __src;
      v37 = (v82 - __src) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v39 = v83 - __src;
      if ((v83 - __src) >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      v40 = v39 >= 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v40)
      {
        v41 = v38;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v41);
      }

      v42 = (4 * v37);
      v43 = &v42[-((v82 - __src) >> 2)];
      *v42 = v23;
      v34 = (v42 + 1);
      memcpy(v43, v35, v36);
      v44 = __src;
      __src = v43;
      v82 = v34;
      v83 = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v82 = v23;
      v34 = v33 + 4;
    }

    v82 = v34;
LABEL_44:
    *(__p + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    goto LABEL_45;
  }

LABEL_49:
  if ((v73 & 0x1FFFFFFFE0) != 0)
  {
    v45 = 0;
    while (*(v85[0] + v45))
    {
      v45 += 4;
      if (!--v17)
      {
        goto LABEL_53;
      }
    }

    v48 = *v77 + 8 * v45;
    v49 = *(v48 + 8);
    if (v49)
    {
      v50 = *(v48 + 16);
      if (v50 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v87) = *(v48 + 16);
      if (v50)
      {
        memmove(__dst, v49, v50);
      }

      *(__dst + v50) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v87 = 0;
    }

    MTLFrameworkPass::attribute_name(__dst, &v89);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__dst[0]);
    }

    v63 = &v89;
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v89.__r_.__value_.__r.__words[0];
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: fragment input %s was not found in vertex shader outputs", v63);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_53:
    v46 = a10;
    if (a8 <= a10)
    {
      v46 = a11;
      if (a9 <= a11)
      {
        v51 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v69 = v82 - __src;
        v52 = (v82 - __src) >> 2;
        v53 = v52 - 1431655765 * ((a4[1] - *a4) >> 3);
        if (v53)
        {
          v54 = (*(v70 + 12) - 1);
          std::vector<llvm::Type *>::vector[abi:ne200100](&v80, v54);
          if (v54)
          {
            v55 = 0;
            do
            {
              *(v80 + v55) = *(*(v70 + 16) + v55 + 8);
              v55 += 8;
            }

            while (8 * v54 != v55);
          }

          v89.__r_.__value_.__r.__words[0] = &v89.__r_.__value_.__r.__words[2];
          v89.__r_.__value_.__l.__size_ = 0x1000000000;
          if (v51)
          {
            v56 = 0;
            do
            {
              v57 = *a4;
              v58 = *(v22 + 8);
              v59 = v22;
              if (v58 == 16)
              {
                v59 = *(*(v22 + 16) + 8 * (*(v85[0] + *(v57 + v56 + 6)) - 1));
                v58 = *(v59 + 8);
              }

              if ((v58 & 0xFE) == 0x12)
              {
                v59 = **(v59 + 16);
              }

              v60 = v57 + v56;
              *(v60 + 16) = v59;
              if (*(v60 + 2) >= 2uLL)
              {
                v59 = llvm::VectorType::get();
              }

              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v89, v59);
              v56 += 24;
            }

            while (24 * v51 != v56);
          }

          if (v52)
          {
            v61 = 0;
            do
            {
              v62 = v22;
              if (*(v22 + 8) == 16)
              {
                v62 = *(*(v22 + 16) + 8 * *(__src + v61));
              }

              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v89, v62);
              v61 += 4;
            }

            while ((v69 & 0x3FFFFFFFCLL) != v61);
          }

          if (v53 != 1)
          {
            llvm::StructType::get();
          }

          v65 = llvm::FunctionType::get();
          *(v72 + 8) = *(v72 + 8) & 0xFFFFBFC0 | 0x4007;
          __dst[0] = "air.packedVertexFunction";
          v88 = 259;
          v66 = llvm::Function::Create(v65, 0, __dst, v71);
          __dst[0] = "Body";
          v88 = 259;
          llvm::BasicBlock::Create(v74, __dst, v66, 0, v67);
        }

        v68 = 1;
        goto LABEL_94;
      }

      v47 = "varying components";
      a8 = a9;
    }

    else
    {
      v47 = "varyings";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: number of shader %s (%u) exceeds limit (%u). Note that on macOS the following attributes count towards the limit: [[position]], [[clip_distance]], [[point_size]], [[point_coord]], and, when read in the fragment shader, [[viewport_array_index]] & [[render_target_array_index]].", v47, a8, v46);
  }

  v68 = 0;
LABEL_94:
  if (__src)
  {
    v82 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  return v68;
}

void sub_213C050A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a60);
  if (STACK[0x220] != a18)
  {
    free(STACK[0x220]);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a2[16] > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractValueInst::Create(a2, a3, a4, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, a5);
  }

  v7 = (*(**(a1 + 72) + 344))(*(a1 + 72));
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a5);
}

uint64_t llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v13 = 257;
    v11 = llvm::InsertValueInst::Create(a2, a3, a4, a5, v12, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a6);
  }

  v8 = (*(**(a1 + 72) + 352))(*(a1 + 72));
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a6);
}

llvm::UnaryInstruction *llvm::ExtractValueInst::Create(llvm::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Instruction *a5)
{
  v7 = llvm::User::operator new(0x60);
  IndexedType = llvm::ExtractValueInst::getIndexedType();
  llvm::UnaryInstruction::UnaryInstruction(v7, IndexedType, 64, a1, a5);
  *(v7 + 8) = v7 + 80;
  *(v7 + 9) = 0x400000000;
  llvm::ExtractValueInst::init();
  return v7;
}

void sub_213C0550C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, uint64_t a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v6 = (this - 32);
  result = llvm::Instruction::Instruction();
  if (*(result - 32))
  {
    v8 = *(result - 24);
    **(result - 16) = v8;
    if (v8)
    {
      *(v8 + 16) = *(result - 16);
    }
  }

  *v6 = a4;
  if (a4)
  {
    v11 = *(a4 + 1);
    v10 = (a4 + 8);
    v9 = v11;
    *(result - 24) = v11;
    if (v11)
    {
      *(v9 + 16) = result - 24;
    }

    *(result - 16) = v10;
    *v10 = v6;
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateExtractElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractElementInst::Create(a2, a3, v11, 0, a5);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a4);
  }

  v7 = (*(*this[9] + 320))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateInsertElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u || !a4 || *(a4 + 16) > 0x14u)
  {
    v13 = 257;
    v11 = llvm::InsertElementInst::Create(a2, a3, a4, v12, 0, a6);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v11, a5);
  }

  v8 = (*(*this[9] + 328))(this[9]);
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v8, a5);
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v5 = llvm::User::operator new(0x40);
  llvm::ExtractElementInst::ExtractElementInst();
  return v5;
}

uint64_t llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = llvm::User::operator new(0x40);
  MEMORY[0x21604BB00](v11, this, a2, a3, a4, a5);
  return v11;
}

uint64_t llvm::InsertValueInst::Create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = llvm::User::operator new(0x60);
  llvm::Instruction::Instruction();
  *(v6 + 64) = v6 + 80;
  *(v6 + 72) = 0x400000000;
  llvm::InsertValueInst::init();
  return v6;
}

void sub_213C05950(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

BOOL MTLBoundsCheck::isLibraryModule(MTLBoundsCheck *this, llvm::Module *a2)
{
  v4[0] = "air.vertex";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.fragment";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.kernel";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.object";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.mesh";
  v5 = 259;
  return llvm::Module::getNamedMetadata(this, v4) == 0;
}

void MTLBoundsCheck::getMangledTypeStr(std::string *__return_ptr a1@<X8>, MTLBoundsCheck *this@<X0>, llvm::Type *a3@<X1>, BOOL a4@<W2>)
{
  v68 = *MEMORY[0x277D85DE8];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v6 = *(this + 2);
  v7 = *(this + 2);
  if (this && v7 == 15)
  {
    if (v6 >= 0x100)
    {
      v14 = v6 >> 8;
      v8 = &v67.__r_.__value_.__s.__data_[21];
      do
      {
        *--v8 = (v14 % 0xA) | 0x30;
        v11 = v14 > 9;
        v14 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v8 = &v67.__r_.__value_.__s.__data_[20];
      v67.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v8, &v67.__r_.__value_.__s.__data_[21], &v67.__r_.__value_.__r.__words[2] + 5 - v8);
    v15 = std::string::insert(&__dst, 0, "p");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, **(this + 2), v17, v18);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v67;
    }

    else
    {
      v19 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v67.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v65, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_68;
  }

  if (this && v7 == 17)
  {
    v9 = *(this + 4);
    if (v9)
    {
      v10 = &v67.__r_.__value_.__s.__data_[21];
      do
      {
        *--v10 = (v9 % 0xA) | 0x30;
        v11 = v9 > 9;
        v9 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v10 = &v67.__r_.__value_.__s.__data_[20];
      v67.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v10, &v67.__r_.__value_.__s.__data_[21], &v67.__r_.__value_.__r.__words[2] + 5 - v10);
    v34 = std::string::insert(&__dst, 0, "a");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, *(this + 3), v36, v37);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v67;
    }

    else
    {
      v38 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v67.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v65, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_68;
  }

  if (this && v7 == 16)
  {
    if ((v6 & 0x400) != 0)
    {
      std::string::append(a1, "sl_");
      v53 = *(this + 3);
      if (v53)
      {
        v54 = *(this + 2);
        v55 = 8 * v53;
        do
        {
          MTLBoundsCheck::getMangledTypeStr(&__p, *v54, v51, v52);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &__p;
          }

          else
          {
            v56 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(a1, v56, v57);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v54;
          v55 -= 8;
        }

        while (v55);
      }
    }

    else
    {
      std::string::append(a1, "s_");
      Name = llvm::StructType::getName(this);
      std::string::append(a1, Name, v13);
    }

    std::string::append(a1, "s");
    return;
  }

  if (this && v7 == 14)
  {
    MTLBoundsCheck::getMangledTypeStr(&v65, **(this + 2), a3, a4);
    v25 = std::string::insert(&v65, 0, "f_");
    v26 = *&v25->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v27, v28);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (*(this + 3) != 1)
    {
      v31 = 0;
      do
      {
        MTLBoundsCheck::getMangledTypeStr(&__p, *(*(this + 2) + 8 * v31 + 8), v29, v30);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &__p;
        }

        else
        {
          v32 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v32, v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v31;
      }

      while (v31 < (*(this + 3) - 1));
    }

    if (*(this + 2) > 0xFFu)
    {
      std::string::append(a1, "vararg");
    }

    std::string::append(a1, "f");
    return;
  }

  if (this && v7 == 18)
  {
    llvm::utostr(&__dst, *(this + 8), 0);
    v43 = std::string::insert(&__dst, 0, "v");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, *(this + 3), v45, v46);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v67;
    }

    else
    {
      v47 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v67.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v65, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

LABEL_68:
    std::string::append(a1, p_p, v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v42 = __dst.__r_.__value_.__r.__words[0];
LABEL_76:
      operator delete(v42);
      return;
    }

    return;
  }

  v58 = *(this + 2);
  if (v58 <= 4)
  {
    if (*(this + 2) <= 1u)
    {
      if (*(this + 2))
      {
        v59 = "bf16";
      }

      else
      {
        v59 = "f16";
      }
    }

    else if (v58 == 2)
    {
      v59 = "f32";
    }

    else if (v58 == 3)
    {
      v59 = "f64";
    }

    else
    {
      v59 = "f80";
    }

    goto LABEL_132;
  }

  if (*(this + 2) <= 6u)
  {
    if (v58 == 5)
    {
      v59 = "f128";
    }

    else
    {
      v59 = "ppcf128";
    }

    goto LABEL_132;
  }

  if (v58 == 7)
  {
    v59 = "isVoid";
    goto LABEL_132;
  }

  if (v58 == 9)
  {
    v59 = "Metadata";
LABEL_132:
    std::string::append(a1, v59);
    return;
  }

  llvm::utostr(&v65, (v6 >> 8), 0);
  v60 = std::string::insert(&v65, 0, "i");
  v61 = *&v60->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v62, v63);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    v42 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_76;
  }
}

void sub_213C06330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::utostr@<X0>(void *__return_ptr a1@<X8>, llvm *this@<X0>, int a3@<W1>)
{
  v4 = this;
  v9 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v5 = &v8;
    v8 = 48;
    if (!a3)
    {
      return std::string::__init_with_size[abi:ne200100]<char *,char *>(a1, v5, &v9, &v9 - v5);
    }

    goto LABEL_5;
  }

  v5 = &v9;
  do
  {
    *--v5 = (v4 % 0xA) | 0x30;
    v6 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v6);
  if (a3)
  {
LABEL_5:
    *--v5 = 45;
  }

  return std::string::__init_with_size[abi:ne200100]<char *,char *>(a1, v5, &v9, &v9 - v5);
}

void MTLBoundsCheck::gatherMemoryArguments(uint64_t a1, uint64_t *a2)
{
  v50[15] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *v4;
  llvm::Module::getDataLayout(v4);
  if ((*(a1 + 18) & 1) == 0)
  {
    v6 = *(a1 + 88);
LABEL_4:
    v7 = v6;
    goto LABEL_6;
  }

  llvm::Function::BuildLazyArguments(a1);
  v6 = *(a1 + 88);
  if ((*(a1 + 18) & 1) == 0)
  {
    goto LABEL_4;
  }

  llvm::Function::BuildLazyArguments(a1);
  v7 = *(a1 + 88);
LABEL_6:
  v8 = *(a1 + 96);
  Name = llvm::Value::getName(a1);
  v46[1] = Name;
  v46[2] = v10;
  if (v10 < 0xB)
  {
    if (v10 == 10)
    {
      if (*Name != 0x6D6F74612E726961 || *(Name + 8) != 25449)
      {
        goto LABEL_59;
      }

      goto LABEL_70;
    }

    if (v10 < 9)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v13 = *Name != 0x6D656D2E6D766C6CLL || *(Name + 3) != 0x7970636D656D2E6DLL;
  v14 = 0x6C6C766D2E6D656DLL;
  v15 = bswap64(*Name);
  if (v15 == 0x6C6C766D2E6D656DLL && (v14 = 0x6D2E6D656D636D70, v15 = bswap64(*(Name + 3)), v15 == 0x6D2E6D656D636D70))
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v15 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (!v13)
    {
      goto LABEL_54;
    }
  }

  if (!v16)
  {
LABEL_54:
    v47 = v6;
    v27 = v16 == 0;
    v43 = v6 + 40;
    v46[0] = (v6 + 80);
    LODWORD(v44) = 1;
    v45 = 1;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v44, &v45);
    if (v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    LODWORD(v44) = v28;
    v45 = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, v46, &v44, &v45);
    return;
  }

  if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
  {
    v47 = v6;
    v43 = v6 + 80;
    LODWORD(v46[0]) = 2;
    LODWORD(v44) = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, &v43, v46, &v44);
    return;
  }

  if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
  {
LABEL_70:
    v46[0] = v6;
    v47 = v49;
    v48 = 0x500000000;
    llvm::StringRef::split();
    llvm::StringRef::find();
    v39 = v47;
    if (v47 == v49)
    {
      return;
    }

LABEL_108:
    free(v39);
    return;
  }

  if (v10 >= 0x14)
  {
    v19 = *Name == 0x646D69732E726961 && *(Name + 8) == 0x616D5F70756F7267;
    if (v19 && *(Name + 16) == 2020176500)
    {
      v47 = v49;
      v48 = 0xA00000000;
      llvm::StringRef::split();
      v21 = v50;
      v22 = 2;
      do
      {
        if (!*v21)
        {
          break;
        }

        v23 = **(v21 - 1) - 102;
        v24 = v23 > 0xF;
        v25 = (1 << v23) & 0xA009;
        if (v24 || v25 == 0)
        {
          break;
        }

        ++v22;
        v21 += 2;
      }

      while (3 - v48 + v22 != 2);
      if (llvm::StringRef::find() == -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          goto LABEL_115;
        }

        v42 = 2;
        v41 = 1;
      }

      else
      {
        v41 = 0;
        v42 = 1;
      }

      LODWORD(v44) = v41;
      v45 = v42;
      v43 = &v6[40 * v41];
      llvm::Type::getInt32Ty(v5, v40);
      v46[0] = llvm::ConstantInt::get();
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v45, &v44);
LABEL_115:
      v39 = v47;
      if (v47 == v49)
      {
        return;
      }

      goto LABEL_108;
    }
  }

LABEL_59:
  if (*Name != 0x776172642E726961 || *(Name + 8) != 95)
  {
LABEL_63:
    LODWORD(v46[0]) = 0;
    while (v6 != &v7[40 * v8])
    {
      v47 = v6;
      if (*(*v6 + 8) == 15)
      {
        v30 = **(*v6 + 16);
        if (*(v30 + 8) != 16 || !isSpecialStructType(v30))
        {
          llvm::Type::getInt32Ty(v5, v10);
          v43 = llvm::ConstantInt::get();
          LODWORD(v44) = 0;
          llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, &v43, &v44, v46);
        }
      }

      v6 += 40;
      ++LODWORD(v46[0]);
    }

    return;
  }

  v47 = 0;
  v48 = 0;
  v49[0] = 0;
  if (v10 < 0x1B)
  {
    if (v10 < 0x10)
    {
      goto LABEL_101;
    }

LABEL_85:
    if (*Name == 0x776172642E726961 && *(Name + 8) == 0x736568637461705FLL)
    {
      LODWORD(v43) = 5;
      std::vector<int>::push_back[abi:ne200100](&v47, &v43);
      LODWORD(v43) = 8;
      std::vector<int>::push_back[abi:ne200100](&v47, &v43);
    }

    else if (v10 >= 0x18)
    {
      v35 = *Name == 0x776172642E726961 && *(Name + 8) == 0x64657865646E695FLL;
      if (v35 && *(Name + 16) == 0x736568637461705FLL)
      {
        LODWORD(v43) = 5;
        std::vector<int>::push_back[abi:ne200100](&v47, &v43);
        LODWORD(v43) = 9;
        std::vector<int>::push_back[abi:ne200100](&v47, &v43);
      }
    }

    goto LABEL_101;
  }

  if (*Name != 0x776172642E726961 || *(Name + 8) != 0x64657865646E695FLL || *(Name + 16) != 0x6974696D6972705FLL || *(Name + 19) != 0x7365766974696D69)
  {
    goto LABEL_85;
  }

  LODWORD(v43) = 4;
  std::vector<int>::push_back[abi:ne200100](&v47, &v43);
LABEL_101:
  v37 = v47;
  v38 = v48;
  if (v47 != v48)
  {
    do
    {
      LODWORD(v44) = *v37;
      v43 = &v6[40 * v44];
      llvm::Type::getInt32Ty(v5, v10);
      v46[0] = llvm::ConstantInt::get();
      v45 = 1;
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v45, &v44);
      ++v37;
    }

    while (v37 != v38);
    v37 = v47;
  }

  if (v37)
  {
    v48 = v37;
    operator delete(v37);
  }
}

void sub_213C07228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t *a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = *(a1 + 2);
  if (v5 >= *(a1 + 3))
  {
    return llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a1, a2, a3, a4, a5);
  }

  v6 = *a1;
  v7 = *a1 + 24 * v5;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 20) = v10;
  v11 = v5 + 1;
  *(a1 + 2) = v11;
  return v6 + 24 * v11 - 24;
}

llvm::FixedVectorType *getPtrTypeFromIntrinsicNameSuffix(uint64_t a1, llvm::LLVMContext *a2, llvm::Type *this)
{
  Int32Ty = llvm::Type::getInt32Ty(this, a2);
  Int16Ty = llvm::Type::getInt16Ty(this, v7);
  FloatTy = llvm::Type::getFloatTy(this, v9);
  Int64Ty = llvm::Type::getInt64Ty(this, v11);
  HalfTy = llvm::Type::getHalfTy(this, v13);
  v15 = llvm::FixedVectorType::get();
  v16 = llvm::FixedVectorType::get();
  if (a2 >= 4)
  {
    v17 = a2 + a1;
    if (*(a2 + a1 - 4) == 842230062 || *(v17 - 1) == 1952805727)
    {
      return Int32Ty;
    }

    v18 = a2 < 6;
    if (a2 >= 6)
    {
      v19 = *(v17 - 6);
      v20 = *(v17 - 1);
      if (v19 == 1701602094 && v20 == 29281)
      {
        return Int32Ty;
      }

      v18 = 0;
    }
  }

  else
  {
    if (a2 < 2)
    {
      return Int16Ty;
    }

    v18 = 1;
  }

  v22 = a2 + a1;
  if (*(a2 + a1 - 2) != 29998 && *(v22 - 1) != 29486)
  {
    if (a2 >= 4)
    {
      if (*(v22 - 1) == 842229294)
      {
        return FloatTy;
      }

      if (*(v22 - 1) == 875981102)
      {
        return Int64Ty;
      }

      if (v18)
      {
        return Int16Ty;
      }
    }

    else if (v18)
    {
      return Int16Ty;
    }

    if (*(v22 - 6) == 909207086 && *(v22 - 1) == 31060)
    {
      return HalfTy;
    }

    if (*(v22 - 6) == 1765045806 && *(v22 - 1) == 12851)
    {
      return v15;
    }

    v25 = *(v22 - 6);
    v26 = *(v22 - 1);
    if (v25 == 1714714158 && v26 == 12851)
    {
      return v16;
    }

    return Int16Ty;
  }

  return Int32Ty;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void MTLBoundsCheck::gatherMemoryOperands(uint64_t a1, uint64_t a2)
{
  Module = llvm::Instruction::getModule(a1);
  v5 = *Module;
  DataLayout = llvm::Module::getDataLayout(Module);
  v8 = *(a1 + 16);
  if (a1 && v8 == 84)
  {
    v9 = *(a1 - 32);
    if (v9)
    {
      if (!*(v9 + 16) && *(v9 + 24) == *(a1 + 72))
      {
        v10 = *(a2 + 8);
        MTLBoundsCheck::gatherMemoryArguments(v9, a2);
        v11 = *(a2 + 8);
        if (v11 != v10)
        {
          v12 = 0;
          v13 = v11 - v10;
          v14 = *a2 + 24 * v10;
          do
          {
            *(v14 + 20) = v12;
            if (*v14)
            {
              v15 = *(*v14 + 16) == 21;
            }

            else
            {
              v15 = 0;
            }

            if (v15)
            {
              *v14 = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(*v14 + 32));
            }

            v16 = *(v14 + 8);
            if (v16)
            {
              v17 = *(v16 + 16) == 21;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              *(v14 + 8) = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(v16 + 32));
            }

            ++v12;
            v14 += 24;
          }

          while (v13 != v12);
        }
      }
    }
  }

  else
  {
    if (v8 == 61)
    {
      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v19 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 1;
      v21 = 2;
    }

    else
    {
      if (v8 != 60)
      {
        return;
      }

      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v18 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 0;
      v21 = 1;
    }

    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v24, &v22, &v21, &v20);
  }
}

uint64_t MTLBoundsCheck::lookThroughPointerOps(uint64_t result, uint64_t *a2)
{
  v2 = 0;
  v3 = *(result + 16);
  if (result && v3 >= 0x1C)
  {
    v2 = 0;
    while (v3 - 77 < 2)
    {
      v4 = *(result + 20);
      if ((v4 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      v5 = *(result - 8);
LABEL_10:
      v2 = result;
      result = *v5;
LABEL_11:
      v3 = *(result + 16);
      if (!result || v3 <= 0x1B)
      {
        goto LABEL_13;
      }
    }

    if (v3 != 62)
    {
      goto LABEL_11;
    }

    v4 = *(result + 20);
LABEL_9:
    v5 = (result - 32 * (v4 & 0x7FFFFFF));
    goto LABEL_10;
  }

LABEL_13:
  if (v3 == 5)
  {
    do
    {
      v6 = *(result + 18);
      v7 = v6 > 0x32;
      v8 = (1 << v6) & 0x6000400000000;
      if (!v7 && v8 != 0)
      {
        v2 = result;
        result = *(result - 32 * (*(result + 20) & 0x7FFFFFF));
      }
    }

    while (result && *(result + 16) == 5);
  }

  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

BOOL MTLBoundsCheck::checkAddressSpace(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if ((v1 & 0xFE) == 0x12)
  {
    v1 = *(**(*a1 + 16) + 8);
  }

  return (v1 >> 8) - 1 < 2;
}

uint64_t MTLBoundsCheck::gpuOperationToResourceUsage(unsigned int a1)
{
  if (a1 > 4)
  {
    return 3;
  }

  else
  {
    return dword_213C7D0F4[a1];
  }
}

llvm::NamedMDNode *MTLBoundsCheck::getQualifiedFunctionsMetadata@<X0>(MTLBoundsCheck *this@<X0>, llvm::Module *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = 1;
  v12 = 1;
  if (*a2)
  {
    v10[0] = a2;
    v4 = 3;
  }

  v11 = v4;
  result = llvm::Module::getNamedMetadata(this, v10);
  v6 = result;
  if (result)
  {
    result = llvm::NamedMDNode::getNumOperands(result);
    v7 = result;
    if (result)
    {
      v8 = 0;
      do
      {
        Operand = llvm::NamedMDNode::getOperand(v6);
        v10[0] = *(*(Operand - 8 * *(Operand + 8)) + 128);
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a3, v10);
        *(result + 1) = Operand;
        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

llvm::NamedMDNode *MTLBoundsCheck::getMetalMetadata@<X0>(uint64_t *__return_ptr a1@<X8>, MTLBoundsCheck *this@<X0>)
{
  v13[0] = "air.vertex";
  v14 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.kernel";
  v14 = 259;
  v5 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.fragment";
  v14 = 259;
  v6 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.intersection";
  v14 = 259;
  v7 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.visible";
  v14 = 259;
  v8 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.mesh";
  v14 = 259;
  v9 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.object";
  v14 = 259;
  result = llvm::Module::getNamedMetadata(this, v13);
  if (NamedMetadata)
  {
    result = llvm::NamedMDNode::getOperand(NamedMetadata);
    *a1 = 0;
  }

  else
  {
    if (v5)
    {
      result = llvm::NamedMDNode::getOperand(v5);
      v11 = 2;
    }

    else
    {
      if (v6)
      {
        result = llvm::NamedMDNode::getOperand(v6);
        v12 = 1;
        *a1 = 1;
        a1[1] = result;
        goto LABEL_7;
      }

      if (v9)
      {
        result = llvm::NamedMDNode::getOperand(v9);
        v11 = 5;
      }

      else if (result)
      {
        result = llvm::NamedMDNode::getOperand(result);
        v11 = 6;
      }

      else if (v7)
      {
        result = llvm::NamedMDNode::getOperand(v7);
        v11 = 3;
      }

      else
      {
        if (!v8)
        {
          v12 = 0;
          *a1 = 0;
          goto LABEL_7;
        }

        result = llvm::NamedMDNode::getOperand(v8);
        v11 = 4;
      }
    }

    *a1 = v11;
  }

  a1[1] = result;
  v12 = 1;
LABEL_7:
  *(a1 + 16) = v12;
  return result;
}

uint64_t MTLBoundsCheck::SerializedData::fromMetaData(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 - 8 * *(a2 + 8));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(*v3 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = (*(v9 - 8 * v7) - 8 * *(*(v9 - 8 * v7) + 8));
      v11 = *(*v10 + 128);
      v12 = (v11 + 24);
      if (*(v11 + 32) >= 0x41u)
      {
        v12 = *v12;
      }

      LODWORD(String) = *v12;
      v13 = *(v10[1] + 128);
      v14 = (v13 + 24);
      if (*(v13 + 32) >= 0x41u)
      {
        v14 = *v14;
      }

      HIDWORD(String) = *v14;
      v15 = *(v10[2] + 128);
      v16 = (v15 + 24);
      if (*(v15 + 32) >= 0x41u)
      {
        v16 = *v16;
      }

      LODWORD(v34) = *v16;
      v17 = *(v10[3] + 128);
      v18 = (v17 + 24);
      if (*(v17 + 32) >= 0x41u)
      {
        v18 = *v18;
      }

      HIDWORD(v34) = *v18;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(v2 + 112, &String);
      ++v8;
      v7 = *(v5 + 8);
      v9 += 8;
    }

    while (v8 < v7);
  }

  v19 = *(v4 + 8);
  if (v19)
  {
    v20 = 0;
    v21 = v4;
    do
    {
      v22 = (*(v21 - 8 * v19) - 8 * *(*(v21 - 8 * v19) + 8));
      v23 = *(*v22 + 128);
      v24 = (v23 + 24);
      if (*(v23 + 32) >= 0x41u)
      {
        v24 = *v24;
      }

      LODWORD(String) = *v24;
      v25 = *(v22[1] + 128);
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      HIDWORD(String) = *v26;
      v27 = *(v22[2] + 128);
      v28 = (v27 + 24);
      if (*(v27 + 32) >= 0x41u)
      {
        v28 = *v28;
      }

      LODWORD(v34) = *v28;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(v2 + 384, &String);
      ++v20;
      v19 = *(v4 + 8);
      v21 += 8;
    }

    while (v20 < v19);
  }

  v29 = *(v6 + 8);
  if (v29)
  {
    v30 = 0;
    v31 = v6;
    do
    {
      String = llvm::MDString::getString(*(v31 - 8 * v29));
      v34 = v32;
      result = llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(v2, &String);
      ++v30;
      v29 = *(v6 + 8);
      v31 += 8;
    }

    while (v30 < v29);
  }

  *(v2 + 650) = 1;
  return result;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, a2[1]);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 16 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 16 * v4 - 16;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(a1, *a2, *(a2 + 2));
    v6 = *(a1 + 8);
  }

  else
  {
    v4 = *a1 + 12 * v3;
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
  }

  return *a1 + 12 * v6 - 12;
}

uint64_t llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<std::string,false>::growAndEmplaceBack<llvm::StringRef>(a1, a2);
  }

  v4 = a2[1];
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = (*a1 + 24 * v3);
  v6 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v5[23] = v4;
  if (v4)
  {
    memmove(v5, v6, v4);
  }

  v5[v4] = 0;
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

uint64_t MTLBoundsCheck::SerializedData::dump(MTLBoundsCheck::SerializedData *this)
{
  result = printf("threadgroupArgumentOffset: %d\nthreadgroupArgumentMask: %X\nserializedFromMetadata: %d\n", *(this + 158), *(this + 159), *(this + 650));
  v3 = *(this + 30);
  if (v3)
  {
    v4 = *(this + 14);
    v5 = &v4[4 * v3];
    do
    {
      v6 = (*(this + 48) + 12 * *v4);
      v7 = *this + 24 * *v6;
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = *this + 24 * v6[1];
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      result = printf("Location: %s:%d  :: %s, line: %d, col: %d, inlinedAt: %d\n", v7, v6[2], v8, v4[1], v4[2], v4[3]);
      v4 += 4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t MTLBoundsCheck::SerializedData::toMetaData(MTLBoundsCheck::SerializedData *this, llvm::LLVMContext *a2, unsigned int a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  llvm::IntegerType::get();
  v25[0] = v26;
  v25[1] = 0x1000000000;
  v23[0] = v24;
  v23[1] = 0x1000000000;
  v21[0] = v22;
  v21[1] = 0x1000000000;
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 14);
    v6 = v5 + 16 * v4;
    do
    {
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v16 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v17 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v18 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(&v19, &Impl, 4);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v25, &Impl);
      if (v19 != v20)
      {
        free(v19);
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  v7 = *(this + 98);
  if (v7)
  {
    v8 = *(this + 48);
    v9 = v8 + 12 * v7;
    do
    {
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v16 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v17 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v19, &Impl, 3);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v21, &Impl);
      if (v19 != v20)
      {
        free(v19);
      }

      v8 += 12;
    }

    while (v8 != v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    v11 = *this;
    v12 = 24 * v10;
    do
    {
      v19 = llvm::MDString::get();
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v23, &v19);
      v11 += 24;
      v12 -= 24;
    }

    while (v12);
  }

  Impl = llvm::MDTuple::getImpl();
  v16 = llvm::MDTuple::getImpl();
  v17 = llvm::MDTuple::getImpl();
  llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v19, &Impl, 3);
  v13 = llvm::MDTuple::getImpl();
  if (v19 != v20)
  {
    free(v19);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v13;
}

void sub_213C08420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a14 != &a16)
  {
    free(a14);
  }

  if (a20 != v40)
  {
    free(a20);
  }

  if (a38 != v39)
  {
    free(a38);
  }

  v43 = *(v41 - 232);
  if (v43 != v38)
  {
    free(v43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::getLocationIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 18)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974 && *(String + 16) == 30821;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::getAddressSpace(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 17)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x726464612E726961 && *(String + 8) == 0x636170735F737365 && *(String + 16) == 101;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::setLocationIndex(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a1 - 8 * v2 + 8 * v4);
    if (!*v5)
    {
      String = llvm::MDString::getString(v5);
      if (v7 == 18)
      {
        v8 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
        if (v8 && *(String + 16) == 30821)
        {
          break;
        }
      }
    }

    ++v4;
    v2 = *(a1 + 8);
    if (v4 >= v2)
    {
      return 0;
    }
  }

  v11 = *(a1 + 16);
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 4) != 0)
  {
    v12 = *v12;
  }

  llvm::Type::getInt32Ty(v12, 0x12);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDNode::replaceOperandWith();
  return 1;
}

uint64_t MTLBoundsCheck::getArgTypeName@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *(v8 - 8 * v5);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 17)
        {
          v11 = *result == 0x5F6772612E726961 && *(result + 8) == 0x6D616E5F65707974 && *(result + 16) == 101;
          v5 = *(v6 + 8);
          if (v11)
          {
            result = llvm::MDString::getString(*(v8 - 8 * v5 + 8));
            *a3 = result;
            *(a3 + 8) = v12;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = *(v6 + 8);
        }
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

llvm::MDString *MTLBoundsCheck::getArgName@<X0>(llvm::MDString *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 2);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *(v8 - v5);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 12)
        {
          v10 = *result == 0x5F6772612E726961 && *(result + 2) == 1701667182;
          v5 = *(v6 + 2);
          if (v10)
          {
            result = llvm::MDString::getString((v8 - v5)[1]);
            *a3 = result;
            *(a3 + 8) = v11;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = *(v6 + 2);
        }
      }

      ++v7;
      v8 = (v8 + 8);
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

__n128 MTLBoundsCheck::getArgAccessType@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * v5);
      if (!*v9)
      {
        String = llvm::MDString::getString(v9);
        v13 = String;
        v14 = v11;
        if (v11 == 14)
        {
          if (!memcmp(String, "air.read_write", 0xEuLL) || (*v13 == 0x746972772E726961 ? (v15 = *(v13 + 6) == 0x796C6E6F5F657469) : (v15 = 0), v15))
          {
LABEL_19:
            *a3 = v13;
            *(a3 + 8) = v14;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else if (v11 == 9)
        {
          if (!memcmp(String, "air.write", 9uLL))
          {
            goto LABEL_19;
          }
        }

        else if (v11 == 8 && *String == 0x646165722E726961)
        {
          goto LABEL_19;
        }
      }

      ++v7;
      v5 = *(a1 + 8);
      v8 += 8;
    }

    while (v7 < v5);
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[1].n128_u64[0];
  return result;
}

uint64_t MTLBoundsCheck::getStructTypeInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1;
  do
  {
    v5 = *(v4 - 8 * v1);
    if (!*v5)
    {
      String = llvm::MDString::getString(v5);
      if (v7 == 20)
      {
        v9 = *String == 0x757274732E726961 && *(String + 8) == 0x5F657079745F7463 && *(String + 16) == 1868983913;
        v1 = *(a1 + 8);
        if (v9)
        {
          return *(v4 - 8 * v1 + 8);
        }
      }

      else
      {
        v1 = *(a1 + 8);
      }
    }

    ++v3;
    v4 += 8;
  }

  while (v3 < v1);
  return 0;
}

void MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(uint64_t a1, MTLBoundsCheck::SharedPassData *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::onceToken != -1)
  {
    MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM();
  }

  (*(*a1 + 16))(a1, a2);
  v5 = MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::printPasses;
  if (MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::printPasses == 1)
  {
    v31.__r_.__value_.__r.__words[0] = &unk_213C7E907;
    v31.__r_.__value_.__l.__size_ = 0;
    std::string::basic_string[abi:ne200100]<0>(&v34, "++++++++++++++++++ ");
    llvm::StringRef::str(&v31.__r_.__value_.__l.__data_, &__p);
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

    v8 = std::string::append(&v34, p_p, size);
    v9 = std::string::append(v8, " ++++++++++++++++++\n");
    if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = *&v9->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v10;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "\x1B[1;33m------------------ ");
    llvm::StringRef::str(&v31.__r_.__value_.__l.__data_, &v32);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v32;
    }

    else
    {
      v11 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v32.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&__p, v11, v12);
    v14 = std::string::append(v13, " ------------------\x1B[0m\n");
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, v14->__r_.__value_.__l.__data_, v14->__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = *&v14->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v15;
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    BarrierNoopPass = llvm::createBarrierNoopPass(v14);
    (*(*a1 + 16))(a1, BarrierNoopPass);
    operator new();
  }

  v31.__r_.__value_.__r.__words[0] = "02_HoistStaticAllocas";
  v31.__r_.__value_.__l.__size_ = 21;
  std::string::basic_string[abi:ne200100]<0>(&v34, "++++++++++++++++++ ");
  llvm::StringRef::str(&v31.__r_.__value_.__l.__data_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v34, v17, v18);
  v20 = std::string::append(v19, " ++++++++++++++++++\n");
  if (SHIBYTE(v20->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v20->__r_.__value_.__l.__data_, v20->__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = *&v20->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v21;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "\x1B[1;33m------------------ ");
  llvm::StringRef::str(&v31.__r_.__value_.__l.__data_, &v32);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v32.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&__p, v22, v23);
  v25 = std::string::append(v24, " ------------------\x1B[0m\n");
  if (SHIBYTE(v25->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v25->__r_.__value_.__l.__data_, v25->__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = *&v25->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v26;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v5 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((v5 & 1) == 0)
  {
LABEL_60:
    createMTLHoistStaticAllocasPass(a2);
  }

  v27 = llvm::createBarrierNoopPass(v25);
  (*(*a1 + 16))(a1, v27);
  VerifierPass = llvm::createVerifierPass(1);
  v29 = (*(*a1 + 16))(a1, VerifierPass);
  v30 = llvm::createBarrierNoopPass(v29);
  (*(*a1 + 16))(a1, v30);
  goto LABEL_60;
}

void sub_213C0EABC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  MEMORY[0x21604C990](v39, 0x10F3C400E3EA1ECLL, a3, a4, a5, a6, a7, a8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN14MTLBoundsCheck29MTLAddBoundsCheckPipelineToPMERN4llvm6legacy11PassManagerEPNS_14SharedPassDataERKNS_7OptionsEPNS_10StatisticsE_block_invoke()
{
  v0 = getenv("MTL_BOUNDS_PRINT_PASSES");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::printPasses = result != 0;
  return result;
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  result = 16;
  switch(*(a2 + 2))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      return result;
    case 8u:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 2) >> 8;
    case 0xFu:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v7 = *llvm::DataLayout::getStructLayout();
      goto LABEL_14;
    case 0x11u:
      v8 = *(a2 + 4);
      v7 = v8 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_14:
      result = 8 * v7;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x21604C490](a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v5);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

void IndirectNameRenamePass::~IndirectNameRenamePass(IndirectNameRenamePass *this)
{
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t IndirectNameRenamePass::runOnModule(IndirectNameRenamePass *this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 == a2 + 24)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v3)
      {
        v6 = (v3 - 56);
      }

      else
      {
        v6 = 0;
      }

      v5 |= IndirectNameRenamePass::runOnFunction(this, v6);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return v5 & 1;
}

uint64_t IndirectNameRenamePass::runOnFunction(IndirectNameRenamePass *this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  if (v3 < 0x11)
  {
    return 0;
  }

  v4 = *Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572;
  if (!v4 || *(Name + 16) != 46)
  {
    return 0;
  }

  v11[0] = (Name + 17);
  v11[1] = (v3 - 17);
  llvm::StringRef::str(v11, __p);
  v10 = 260;
  v9 = __p;
  llvm::Value::setName();
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_213C0F39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLVertexFetchAnalysisPass::~MTLVertexFetchAnalysisPass(MTLVertexFetchAnalysisPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL MTLVertexFetchAnalysisPass::runOnModule(MTLVertexFetchAnalysisPass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(&v5, a2);
  v3 = v6 == 1 && v5 == 0;
  return v3 && (*(*(this + 4) + 20) & 0x80) != 0 && llvm::Module::getFunction() != 0;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v13[0] = *a2;
  v13[1] = v6;
  v14 = v7;
  v15 = v8;
  v9 = llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(a1, v13, 1);
  v10 = *a1 + 24 * *(a1 + 8);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 16);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 24 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_213C7D090)));
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(uint64_t result, uint64_t a2, int a3)
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

void llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(__int128 **a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      a2 += 24;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 24 * v6 - 1;
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 24;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 24;
      }

      while (v8);
    }
  }
}

uint64_t llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C0F978(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C0F9D8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DumpModulePass::DumpModulePass(uint64_t a1, void *__src, size_t __len, char a4, char a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = &DumpModulePass::ID;
  *(a1 + 24) = 4;
  *a1 = &unk_282633C30;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = (a1 + 32);
  *(a1 + 55) = __len;
  if (__len)
  {
    memmove(v9, __src, __len);
  }

  *(v9 + __len) = 0;
  *(a1 + 56) = a4;
  *(a1 + 57) = a5;
  return a1;
}

void DumpModulePass::~DumpModulePass(void **this)
{
  *this = &unk_282633C30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633C30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t DumpModulePass::runOnModule(DumpModulePass *this, llvm::Module *a2)
{
  v4 = MTLGetShaderCachePath();
  v32[0] = "air.requestHash";
  LOWORD(v35[0].__locale_) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, v32);
  if (NamedMetadata)
  {
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    v32[0] = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    v32[1] = v7;
    llvm::StringRef::str(v32, &v38);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
    v8 = [v4 UTF8String];
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "/bounds-logs", 12);
    std::stringbuf::str();
    v31 = 260;
    v30.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "/", 1);
    if ((v40 & 0x80u) == 0)
    {
      v11 = &v38;
    }

    else
    {
      v11 = v38;
    }

    if ((v40 & 0x80u) == 0)
    {
      v12 = v40;
    }

    else
    {
      v12 = v39;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    std::stringbuf::str();
    v31 = 260;
    v30.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    v32[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v32 + *(v32[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v33 = v13;
    v34 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(v35[7].__locale_);
    }

    v34 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v35);
    std::iostream::~basic_iostream();
    v14 = MEMORY[0x21604C920](&v37);
    if (v40 < 0)
    {
      operator delete(v38);
    }
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v27, &unk_213C7E907);
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&v27.__r_.__value_.__s + 23))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v27.__r_.__value_.__l.__size_)
  {
LABEL_21:
    if (*(this + 56) == 1 && (*(this + 57) & 1) == 0)
    {
      v23 = llvm::dbgs(v14);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v27;
      }

      else
      {
        v24 = v27.__r_.__value_.__r.__words[0];
      }

      v25 = llvm::raw_ostream::write(v23, v24);
      llvm::raw_ostream::operator<<(v25, "\n", 1uLL);
    }

    else
    {
      LODWORD(v38) = 0;
      v39 = std::system_category();
      std::operator+<char>();
      v15 = std::string::append(&v30, ".ll");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v33 = v15->__r_.__value_.__r.__words[2];
      *v32 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      if (v33 >= 0)
      {
        v18 = HIBYTE(v33);
      }

      else
      {
        v18 = v32[1];
      }

      std::string::append(&v27, v17, v18);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v19 = llvm::raw_fd_ostream::raw_fd_ostream();
      if (*(this + 57) == 1)
      {
        if (*(this + 56) == 1)
        {
          v20 = llvm::dbgs(v19);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v27;
          }

          else
          {
            v21 = v27.__r_.__value_.__r.__words[0];
          }

          v22 = llvm::raw_ostream::write(v20, v21);
          llvm::raw_ostream::operator<<(v22, "\n", 1uLL);
        }

        llvm::Module::print();
      }

      MEMORY[0x21604B9A0](v32);
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_213C1005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_213C10398(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x21604C920](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21604C8D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_213C10454(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21604C820](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x21604C830](v13);
  return a1;
}

void sub_213C106C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x21604C830](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x213C106A4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_213C108F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t a3)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (a3 <= v6 - v5)
  {
    if (a3)
    {
      memcpy(v5, a2, a3);
      *(this + 4) += a3;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2);
  }
}

uint64_t std::__function::__value_func<BOOL ()(llvm::Function const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MemoryIndirectionPass::~MemoryIndirectionPass(MemoryIndirectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633CD0;
  v5 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216, a2, a3, a4);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192, v6, v7, v8);
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v9, v10, v11);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v12, v13, v14);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633CD0;
  v5 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216, a2, a3, a4);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192, v6, v7, v8);
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v9, v10, v11);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v12, v13, v14);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MemoryIndirectionPass::runOnModule(MTLBoundsCheck **this, llvm::Module *a2)
{
  v52[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 24, v4, v5, v6);
  this[31] = 0;
  *(this + 60) = llvm::Module::getMDKindID();
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 27, v7, v8, v9);
  this[23] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
  MemoryIndirectionPass::markGlobalsForSkip(this);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v11 = GlobalVariable;
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
    this[31] = inserted;
    v13 = this[8];
    Operand = inserted;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13 + 88, &Operand, &v43);
    if ((*(*(this[8] + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(this[6], v14))
    {
      v15 = llvm::Module::getOrInsertNamedMetadata();
      v43 = v45;
      v44 = 0x400000000;
      NumOperands = llvm::NamedMDNode::getNumOperands(v15);
      if (HIDWORD(v44) < NumOperands)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = llvm::NamedMDNode::getNumOperands(v15);
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          Operand = llvm::NamedMDNode::getOperand(v15);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v43, &Operand);
        }
      }

      llvm::NamedMDNode::clearOperands(v15);
      v19 = v44;
      if (v44)
      {
        v20 = 0;
        do
        {
          if (*(*(*(v43 + v20) - 8 * *(*(v43 + v20) + 8) + 8) + 128) != v11)
          {
            llvm::NamedMDNode::addOperand();
            v19 = v44;
          }

          ++v20;
        }

        while (v20 < v19);
      }

      if (v43 != v45)
      {
        free(v43);
      }
    }

    v43 = v11[1];
    v44 = 0;
    llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&Operand, &v43);
    v21 = Operand;
    if (v51)
    {
      v22 = 8 * v51;
      do
      {
        v23 = *v21;
        if (*v21 && v23[16] == 60)
        {
          v24 = llvm::User::operator new(0x40);
          LOWORD(v46) = 257;
          llvm::LoadInst::LoadInst();
          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&v43, v23, 0, 0, 0);
          v25 = *v23;
          v42[16] = 257;
          llvm::IRBuilderBase::CreateCast(&v43, 48, v24, v25, v42);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v23);
          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v49);
          llvm::IRBuilderFolder::~IRBuilderFolder(&v48);
          if (v43 != v45)
          {
            free(v43);
          }
        }

        else
        {
          llvm::UndefValue::get();
          llvm::User::replaceUsesOfWith();
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
          if (v23[16] >= 0x1Cu)
          {
            llvm::Instruction::eraseFromParent(v23);
          }
        }

        ++v21;
        v22 -= 8;
      }

      while (v22);
      v21 = Operand;
    }

    if (v21 != v52)
    {
      free(v21);
    }

    llvm::GlobalVariable::eraseFromParent(v11);
  }

  else
  {
    this[31] = 0;
  }

  if (MetalModulePass::getEntryFunction(this))
  {
    if (!MTLBoundsCheck::isLibraryModule(this[6], v26))
    {
      v43 = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
      v44 = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(this[8]);
      v45[0] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
      v45[1] = MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(this[8]);
      v46 = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
      v47 = MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(this[8]);
      llvm::appendToUsed();
      if ((*(*(this[8] + 9) + 20) & 0x200000001) != 0)
      {
        v43 = MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(this[8]);
        v44 = MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(this[8]);
        v45[0] = MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(this[8]);
        llvm::appendToUsed();
      }
    }
  }

  MemoryIndirectionPass::fixupIntersectionFunctions(this, v26, v27);
  v28 = a2 + 24;
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v43, *(a2 + 4), a2 + 24);
  v29 = v43;
  if (v44)
  {
    v30 = 8 * v44;
    do
    {
      v31 = *v29;
      Name = llvm::Value::getName(*v29);
      if (v33 >= 0x11 && (*Name == 0x726575712E6C746DLL ? (v34 = *(Name + 8) == 0x79726F6D656D5F79) : (v34 = 0), v34 ? (v35 = *(Name + 16) == 46) : (v35 = 0), v35))
      {
        MemoryIndirectionPass::handleMemoryQueryFunction(this, v31);
      }

      else if (MemoryIndirectionPass::shouldModifyFunction(this, v31))
      {
        MemoryIndirectionPass::fixupInstructions(this, v31);
      }

      ++v29;
      v30 -= 8;
    }

    while (v30);
    v29 = v43;
  }

  if (v29 != v45)
  {
    free(v29);
  }

  for (j = *(a2 + 4); j != v28; j = *(j + 8))
  {
    llvm::Value::setMetadata();
  }

  if (*(this + 56))
  {
    v37 = *(this + 58);
    if (v37)
    {
      v38 = 16 * v37;
      for (k = this[27]; (*k | 0x1000) == 0xFFFFFFFFFFFFF000; k = (k + 16))
      {
        v38 -= 16;
        if (!v38)
        {
          return 1;
        }
      }
    }

    else
    {
      k = this[27];
    }

    v41 = (this[27] + 16 * v37);
    while (k != v41)
    {
      llvm::UndefValue::get();
      llvm::Value::replaceNonMetadataUsesWith();
      **k = **(k + 1);
      llvm::ValueAsMetadata::handleRAUW();
      llvm::Function::eraseFromParent(*k);
      do
      {
        k = (k + 16);
      }

      while (k != v41 && (*k | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

  return 1;
}

void sub_213C11328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a14 != v31)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::init(void *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = MEMORY[0x21604BA70](16 * v4, 8);
    *v2 = result;
    *(v2 + 8) = 0;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 2;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_213C7D090)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result[1])
  {
    v4 = *(result + 4);
    if (v4 <= 4 * *(result + 2) || v4 < 0x41)
    {
      if (v4)
      {
        v5 = 0;
        v6 = v4 + 0xFFFFFFFFFFFFFFFLL;
        v7 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v8 = (v6 & 0xFFFFFFFFFFFFFFFLL) - (v6 & 1) + 2;
        v9 = vdupq_n_s64(v7);
        v10 = (*result + 16);
        do
        {
          v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v5), xmmword_213C7D090)));
          if (v11.i8[0])
          {
            *(v10 - 2) = -4096;
          }

          if (v11.i8[4])
          {
            *v10 = -4096;
          }

          v5 += 2;
          v10 += 4;
        }

        while (v8 != v5);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::shrink_and_clear(result, a2, a3, a4);
    }
  }

  return result;
}

void MemoryIndirectionPass::markGlobalsForSkip(MemoryIndirectionPass *this)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x400000000;
  v1 = *(this + 6);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    do
    {
      if (v3)
      {
        v5 = v3 - 56;
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 33) & 0x1C) == 0 && MemoryIndirectionPass::indirectAddressSpace(this, *(v5 + 24)))
      {
        v12[0] = v5;
        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v13, v12);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    while (1)
    {
      do
      {
        if (!v14)
        {
          goto LABEL_18;
        }

        v6 = *(v13 + v14 - 1);
        LODWORD(v14) = v14 - 1;
        v10 = v6;
        v11 = 0;
        v7 = *(this + 8);
        v12[0] = v6;
      }

      while ((llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>((v7 + 88), v12, &v11) & 1) != 0);
      llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(this + 8) + 88, &v10, v12);
      v8 = v10;
      v9 = *(v10 + 16);
      if (v9 == 61)
      {
        v12[0] = *(v10 - 64);
        if (*(v12[0] + 16) == 59)
        {
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v13, v12);
          v8 = v10;
        }

LABEL_16:
        llvm::SmallVectorImpl<llvm::Value *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v13, v13 + 8 * v14, *(v8 + 8), 0);
      }

      else if (v9 != 84)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v13 != v15)
  {
    free(v13);
  }
}

void sub_213C11754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void MemoryIndirectionPass::fixupIntersectionFunctions(llvm::Module **this, uint64_t a2, unsigned int a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  MemoryIndirectionPass::fixIntersectCalls(this, this[6], a3);
  if (*(this + 42))
  {
    v4 = *(this + 44);
    if (v4)
    {
      v5 = 16 * v4;
      for (i = this[20]; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i = (i + 16))
      {
        v5 -= 16;
        if (!v5)
        {
          return;
        }
      }
    }

    else
    {
      i = this[20];
    }

    v7 = (this[20] + 16 * v4);
    while (i != v7)
    {
      v8 = *(i + 1);
      v32 = *i;
      PrimitiveDataArgIndex = MemoryIndirectionPass::getPrimitiveDataArgIndex(this, v8);
      if ((PrimitiveDataArgIndex & 0x80000000) == 0)
      {
        v10 = *(v32 + 10);
        if (v10)
        {
          v11 = (v10 - 24);
        }

        else
        {
          v11 = 0;
        }

        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v11);
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v37, FirstNonPHI, 0, 0, 0);
        if (*(v32 + 9))
        {
          llvm::Function::BuildLazyArguments(v32);
        }

        MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(this, v37, (*(v32 + 11) + 40 * PrimitiveDataArgIndex));
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v40);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v39);
        if (v37[0] != v38)
        {
          free(v37[0]);
        }
      }

      UserDataBufferArgIndex = MemoryIndirectionPass::getUserDataBufferArgIndex(this, v8);
      v14 = llvm::Function::args(v32);
      v16 = v15;
      if (v14 != v15)
      {
        v17 = (v14 + 8);
        do
        {
          if (PrimitiveDataArgIndex)
          {
            if (UserDataBufferArgIndex)
            {
              v18 = (v17 - 1);
              if (*(*(v17 - 1) + 8) == 15 && MemoryIndirectionPass::indirectAddressSpace(this, *(v17 - 1)))
              {
                v19 = *(v32 + 10);
                if (v19)
                {
                  v20 = (v19 - 24);
                }

                else
                {
                  v20 = 0;
                }

                llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v37, v20, 0, 0, 0);
                v21 = llvm::BasicBlock::getFirstNonPHI(v20);
                llvm::IRBuilderBase::SetInsertPoint(v37, v21);
                v22 = this[8];
                BitOrPointerCast = (v17 - 1);
                llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v22 + 88, &BitOrPointerCast, v34);
                v23 = llvm::PointerType::get();
                v35 = 257;
                BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v37, v17 - 1, v23, v34);
                llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this[8] + 88, &BitOrPointerCast, v34);
                v24 = **(*BitOrPointerCast + 16);
                v35 = 257;
                AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v37, v24, BitOrPointerCast, 259, 0, v34);
                v26 = this[8];
                v33 = AlignedLoad;
                llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v26 + 88, &v33, v34);
                if (v18 != BitOrPointerCast)
                {
                  llvm::Value::replaceAllUsesWith();
                  v27 = BitOrPointerCast;
                  v28 = (BitOrPointerCast - 32);
                  if (*(BitOrPointerCast - 4))
                  {
                    v29 = *(BitOrPointerCast - 3);
                    **(BitOrPointerCast - 2) = v29;
                    if (v29)
                    {
                      *(v29 + 16) = *(v27 - 2);
                    }
                  }

                  *(v27 - 4) = v18;
                  v30 = *v17;
                  *(v27 - 3) = *v17;
                  if (v30)
                  {
                    *(v30 + 2) = v27 - 24;
                  }

                  *(v27 - 2) = v17;
                  *v17 = v28;
                }

                llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v40);
                llvm::IRBuilderFolder::~IRBuilderFolder(&v39);
                if (v37[0] != v38)
                {
                  free(v37[0]);
                }
              }
            }
          }

          --PrimitiveDataArgIndex;
          --UserDataBufferArgIndex;
          v31 = v17 + 4;
          v17 += 5;
        }

        while (v31 != v16);
      }

      do
      {
        i = (i + 16);
      }

      while (i != v7 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }
}

void sub_213C11B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
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
  v12[8] = *MEMORY[0x277D85DE8];
  v9 = v12;
  v11 = 8;
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      v4 = v3 - 24;
      if (!v3)
      {
        v4 = 0;
      }

      v10 = 0;
      v5 = v4 + 40;
      for (i = *(v4 + 6); i != v5; i = i[1])
      {
        v7 = (i - 3);
        if (!i)
        {
          v7 = 0;
        }

        if (*(v7 + 16) == 84)
        {
          v8 = v7;
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v9, &v8);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
    if (v9 != v12)
    {
      free(v9);
    }
  }
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
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v9), xmmword_213C7D090)));
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

char *llvm::SmallVectorImpl<llvm::Value *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a3, a4);
    return (*a1 + v8);
  }

  else
  {
    if (a3 == a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v12 = a3;
      do
      {
        ++v10;
        v12 = *(v12 + 8);
      }

      while (v12 != a4);
    }

    if (v10 + v9 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v7 + v8);
    v13 = 8 * v9;
    v14 = (v7 + 8 * v9);
    v15 = 8 * v9 - v8;
    v16 = v15 >> 3;
    if (v15 >> 3 >= v10)
    {
      llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(a1, &v14[-v10], (v7 + 8 * v9));
      if (&v14[-v10] != v11)
      {
        memmove(&v11[8 * v10], v11, &v14[-v10] - v11);
      }

      if (v5 != a4)
      {
        v19 = v11;
        do
        {
          *v19++ = *(v5 + 24);
          v5 = *(v5 + 8);
        }

        while (v5 != a4);
      }
    }

    else
    {
      v17 = v9 + v10;
      *(a1 + 2) = v17;
      if (v13 != v8)
      {
        memcpy((v7 + 8 * v17 - 8 * v16), v11, v15);
        v18 = v11;
        do
        {
          *v18++ = *(v5 + 24);
          v5 = *(v5 + 8);
          --v16;
        }

        while (v16);
      }

      while (v5 != a4)
      {
        *v14++ = *(v5 + 24);
        v5 = *(v5 + 8);
      }
    }
  }

  return v11;
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

void *llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_213C12E04(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(uint64_t a1, llvm::Value *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Context = llvm::Value::getContext(this);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x200000000;
  *(a1 + 64) = Context;
  *(a1 + 72) = a1 + 120;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 100) = 512;
  *(a1 + 102) = 7;
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 120) = MEMORY[0x277D821C8] + 16;
  *(a1 + 128) = MEMORY[0x277D82210] + 16;
  llvm::IRBuilderBase::SetInsertPoint(a1, this);
  return a1;
}

void sub_213C12EFC(_Unwind_Exception *a1)
{
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v3);
  llvm::IRBuilderFolder::~IRBuilderFolder(v2);
  if (*v1 != v4)
  {
    free(*v1);
  }

  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::fixIntersectCalls(llvm::PointerType **this, llvm::Module *a2, unsigned int a3)
{
  v74[10] = *MEMORY[0x277D85DE8];
  v61 = llvm::PointerType::get();
  v72 = v74;
  v73 = 0x500000000;
  v5 = *(a2 + 4);
  if (v5 == (a2 + 24))
  {
    return;
  }

  do
  {
    if (v5)
    {
      v6 = (v5 - 7);
    }

    else
    {
      v6 = 0;
    }

    Name = llvm::Value::getName(v6);
    v65 = v7;
    if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
    {
      v69 = v6;
      v62[0] = 2;
      llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
    }

    if (v65 >= 4 && *Name == 779250017)
    {
      if (v65 < 0xD)
      {
        goto LABEL_77;
      }

      if (*Name != 0x65746E692E726961 || *(Name + 5) != 0x746365737265746ELL)
      {
        if (v65 >= 0x1C)
        {
          if (*Name == 0x657365722E726961 && *(Name + 1) == 0x737265746E695F74 && *(Name + 2) == 0x715F6E6F69746365 && *(Name + 6) == 2037540213)
          {
            v69 = v6;
            v62[0] = 1;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
            goto LABEL_77;
          }
        }

        else if (v65 < 0x17)
        {
          goto LABEL_77;
        }

        if (*(Name + v65 - 23) == 0x72656C656363615FLL && *(Name + v65 - 15) == 0x74735F6E6F697461 && *(Name + v65 - 8) == 0x6572757463757274)
        {
          if (v65 >= 0x1A && (*Name == 0x5F7465672E726961 ? (v17 = *(Name + 1) == 0x695F657571696E75) : (v17 = 0), v17 ? (v18 = *(Name + 2) == 0x65696669746E6564) : (v18 = 0), v18 ? (v19 = *(Name + 12) == 24434) : (v19 = 0), v19) || (*Name == 0x5F7465672E726961 ? (v20 = *(Name + 1) == 0x696F705F61746164) : (v20 = 0), v20 ? (v21 = *(Name + 13) == 0x5F7265746E696F70) : (v21 = 0), v21 || (*Name == 0x5F7465672E726961 ? (v22 = *(Name + 1) == 0x65636E6174736E69) : (v22 = 0), v22 ? (v23 = *(Name + 15) == 0x5F746E756F635F65) : (v23 = 0), v23)))
          {
            v69 = v6;
            v62[0] = 5;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
          }
        }

        goto LABEL_77;
      }

      if (v65 >= 0x1B && (*Name == 0x65746E692E726961 ? (v9 = *(Name + 1) == 0x69645F7463657372) : (v9 = 0), v9 ? (v10 = *(Name + 2) == 0x6363615F74636572) : (v10 = 0), v10 ? (v11 = *(Name + 19) == 0x7373656363615F74) : (v11 = 0), v11))
      {
        v69 = v6;
        v62[0] = 4;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
      }

      else
      {
        v69 = v6;
        v62[0] = 0;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
      }

LABEL_77:
      if (llvm::StringRef::find() != -1)
      {
        v69 = v6;
        v62[0] = 3;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v72, &v69, v62);
      }
    }

    v5 = v5[1];
  }

  while (v5 != (a2 + 24));
  v24 = v72;
  if (v73)
  {
    v60 = &v72[2 * v73];
    while (1)
    {
      v25 = *v24;
      v26 = v24[2];
      if (v26 <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v69, *(v25 + 8), 0);
        v27 = v69;
        if (!v70)
        {
          goto LABEL_144;
        }

        v46 = 8 * v70;
        do
        {
          v47 = *v27;
          if (*v27 && *(v47 + 16) == 84 && (!*(v47 + 48) && (*(v47 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
          {
            llvm::MDTuple::getImpl();
            llvm::Instruction::setMetadata();
            v48 = *(v47 + 32);
            v49 = !v48 || v48 == *(v47 + 40) + 40;
            v50 = v49 ? 0 : (v48 - 24);
            llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v50, 0, 0, 0);
            MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(this, &Name, v47);
            llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
            llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
            if (Name != v66)
            {
              free(Name);
            }
          }

          ++v27;
          v46 -= 8;
        }

        while (v46);
        goto LABEL_143;
      }

      if (v26 != 3)
      {
        if (v26 != 4)
        {
LABEL_133:
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v69, *(v25 + 8), 0);
          v27 = v69;
          if (v70)
          {
            v51 = 8 * v70;
            do
            {
              v52 = *v27;
              if (*v27 && *(v52 + 16) == 84 && (!*(v52 + 48) && (*(v52 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
              {
                llvm::MDTuple::getImpl();
                llvm::Instruction::setMetadata();
                llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v52, 0, 0, 0);
                v53 = *(v52 - 32 * (*(v52 + 20) & 0x7FFFFFF));
                v63 = 257;
                PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v53, v61, v62, v54);
                v56 = MemoryIndirectionPass::unpackAccelerationStructureValue(this, PointerBitCastOrAddrSpaceCast, &Name);
                inserted = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
                llvm::IRBuilderBase::CreateAlignedStore(&Name, PointerBitCastOrAddrSpaceCast, inserted, 0, 0);
                v58 = **(v52 - 32 * (*(v52 + 20) & 0x7FFFFFF));
                v63 = 257;
                Cast = llvm::IRBuilderBase::CreateCast(&Name, 48, v56, v58, v62);
                llvm::CallBase::setArgOperand(v52, 0, Cast);
                llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
                llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
                if (Name != v66)
                {
                  free(Name);
                }
              }

              ++v27;
              v51 -= 8;
            }

            while (v51);
            goto LABEL_143;
          }

LABEL_144:
          if (v27 != &v71)
          {
            free(v27);
          }

          goto LABEL_146;
        }

LABEL_100:
        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v69, *(v25 + 8), 0);
        v27 = v69;
        if (v70)
        {
          v36 = 8 * v70;
          do
          {
            v37 = *v27;
            if (*v27 && *(v37 + 16) == 84 && (!*(v37 + 48) && (*(v37 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
            {
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v37, 0, 0, 0);
              v38 = *(v37 - 32 * (*(v37 + 20) & 0x7FFFFFF) + 128);
              v39 = *v38;
              v63 = 257;
              v41 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v38, v61, v62, v40);
              v42 = MemoryIndirectionPass::unpackAccelerationStructureValue(this, v41, &Name);
              v63 = 257;
              v43 = llvm::IRBuilderBase::CreateCast(&Name, 48, v42, v39, v62);
              llvm::CallBase::setArgOperand(v37, 4u, v43);
              if (!v26)
              {
                MemoryIndirectionPass::generatePrimitiveDataHandle(this, v37);
              }

              if ((*(*(this[8] + 9) + 24) & 0x10) != 0)
              {
                v45 = MemoryIndirectionPass::createValidateAccelerationStructureTypeCall(this, v37, v44);
                llvm::Instruction::insertBefore(v45, v37);
                llvm::CallBase::setArgOperand(v45, 0, v38);
              }

              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
              if (Name != v66)
              {
                free(Name);
              }
            }

            ++v27;
            v36 -= 8;
          }

          while (v36);
          v27 = v69;
        }

        goto LABEL_144;
      }

LABEL_146:
      v24 += 4;
      if (v24 == v60)
      {
        v24 = v72;
        goto LABEL_148;
      }
    }

    if (!v26)
    {
      goto LABEL_100;
    }

    if (v26 != 1)
    {
      goto LABEL_133;
    }

    llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v69, *(v25 + 8), 0);
    v27 = v69;
    if (!v70)
    {
      goto LABEL_144;
    }

    v28 = 8 * v70;
    do
    {
      v29 = *v27;
      if (*v27 && *(v29 + 16) == 84 && (!*(v29 + 48) && (*(v29 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl()))
      {
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v29, 0, 0, 0);
        v30 = *(v29 - 32 * (*(v29 + 20) & 0x7FFFFFF) + 160);
        v63 = 257;
        v32 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v30, v61, v62, v31);
        v33 = MemoryIndirectionPass::unpackAccelerationStructureValue(this, v32, &Name);
        v34 = **(v29 - 32 * (*(v29 + 20) & 0x7FFFFFF) + 160);
        v63 = 257;
        v35 = llvm::IRBuilderBase::CreateCast(&Name, 48, v33, v34, v62);
        llvm::CallBase::setArgOperand(v29, 5u, v35);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
        if (Name != v66)
        {
          free(Name);
        }
      }

      ++v27;
      v28 -= 8;
    }

    while (v28);
LABEL_143:
    v27 = v69;
    goto LABEL_144;
  }

LABEL_148:
  if (v24 != v74)
  {
    free(v24);
  }
}

void sub_213C13954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = *(v35 - 192);
  if (v37 != a9)
  {
    free(v37);
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

uint64_t MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(uint64_t a1, llvm::IRBuilderBase *this, llvm::Type **a3)
{
  v6 = *(a1 + 72);
  v18 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(this, a3, v6, v17);
  v8 = llvm::ConstantInt::get();
  v18 = 257;
  v9 = llvm::IRBuilderBase::CreateAnd(this, BitOrPointerCast, v8, v17);
  v10 = llvm::ConstantInt::get();
  v18 = 257;
  llvm::IRBuilderBase::CreateAdd(this, v10, v9, v17, 0, 0);
  NullValue = llvm::Constant::getNullValue(*(a1 + 72), v11);
  v18 = 257;
  llvm::IRBuilderBase::CreateICmp(this, 32, BitOrPointerCast, NullValue, v17);
  llvm::Constant::getNullValue(*(a1 + 72), v13);
  v18 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v15 = *a3;
  v18 = 257;
  llvm::IRBuilderBase::CreateBitOrPointerCast(this, Select, v15, v17);
  llvm::Value::replaceAllUsesWith();
  return llvm::User::setOperand(BitOrPointerCast, 0, a3);
}

uint64_t MemoryIndirectionPass::getUserDataBufferArgIndex(uint64_t a1, uint64_t a2)
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
    if (v9 == 20)
    {
      v10 = *String == 0x726573752E726961 && *(String + 8) == 0x75625F617461645FLL;
      if (v10 && *(String + 16) == 1919247974)
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

uint64_t llvm::Function::args(llvm::Function *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    return *(this + 11);
  }

  llvm::Function::BuildLazyArguments(this);
  v2 = *(this + 11);
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
  }

  return v2;
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

uint64_t MemoryIndirectionPass::unpackAccelerationStructureValue(void *a1, llvm::Type **a2, llvm::IRBuilderBase *a3)
{
  v6 = llvm::PointerType::get();
  v20 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, a2, v6, v19);
  v8 = a1[9];
  v9 = a1[12];
  v20 = 257;
  ConstInBoundsGEP1_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v9, BitOrPointerCast, 8u, v19);
  v11 = llvm::PointerType::get();
  v20 = 257;
  v12 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, ConstInBoundsGEP1_32, v11, v19);
  v20 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a3, v8, v12, 0, 0, v19);
  if ((*(*(a1[8] + 72) + 24) & 0x10) != 0)
  {
    v14 = a1[12];
    v20 = 257;
    v15 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v14, BitOrPointerCast, 0x10u, v19);
    v16 = llvm::PointerType::get();
    v20 = 257;
    v17 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, v15, v16, v19);
    v20 = 257;
    llvm::IRBuilderBase::CreateAlignedLoad(a3, v8, v17, 0, 0, v19);
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
  }

  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  return AlignedLoad;
}

void MemoryIndirectionPass::generatePrimitiveDataHandle(uint64_t a1, llvm::Value *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v23, a2, 0, 0, 0);
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = v4 == *(a2 + 5) + 40;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v4 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint(v23, v6);
  v20 = 4;
  v22 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue(v23, a2, &v20, 1, v21);
  v8 = *(a1 + 72);
  v22 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v23, Value, v8, v21);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd(v23, BitOrPointerCast, v10, v21);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  llvm::IRBuilderBase::CreateAdd(v23, v12, v11, v21, 0, 0);
  NullValue = llvm::Constant::getNullValue(*(a1 + 72), v13);
  v22 = 257;
  llvm::IRBuilderBase::CreateICmp(v23, 32, BitOrPointerCast, NullValue, v21);
  llvm::Constant::getNullValue(*(a1 + 72), v15);
  v22 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v17 = *Value;
  v22 = 257;
  v18 = llvm::IRBuilderBase::CreateBitOrPointerCast(v23, Select, v17, v21);
  v20 = 4;
  v22 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue(v23, a2, v18, &v20, 1, v21);
  llvm::Value::replaceAllUsesWith();
  llvm::User::setOperand(Value, 0, a2);
  llvm::User::setOperand(InsertValue, 0, a2);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v26);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v25);
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }
}

void sub_213C142D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
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
  v11 = llvm::ConstantInt::get();
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
    llvm::BasicBlock::Create(Context, v15, v10, 0, v12);
  }

  if (v10)
  {
    v13 = *(v10 + 24);
  }

  else
  {
    v13 = 0;
  }

  v17[0] = v5;
  v17[1] = v11;
  v16 = 257;
  return llvm::CallInst::Create(v13, v10, v17, 2, 0, 0, v15, 0);
}

void sub_213C1489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
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

void sub_213C14B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

void MemoryIndirectionPass::createTaggedPtrToEndPtr(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.tag_ptr_to_end";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_213C150A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::createTaggedPtrToBasePtr(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.tag_ptr_to_base";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_213C15400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateNot(unsigned int **this, llvm::Value *a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    Not = llvm::BinaryOperator::CreateNot();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
  }

  v6 = (*(*this[9] + 208))(this[9], a2, a3, a4);
  if (v6)
  {
    v7 = *(v6 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return v6;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a3);
}

uint64_t llvm::IRBuilderBase::CreateLShr(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 160))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
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

void MTLICBIndirectionPass::~MTLICBIndirectionPass(MTLICBIndirectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLICBIndirectionPass::runOnModule(MTLICBIndirectionPass *this, llvm::Module *a2)
{
  v80[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v78, *(a2 + 4), a2 + 24);
  v4 = v78;
  if (v79)
  {
    v5 = (v78 + 8 * v79);
    while (1)
    {
      if ((llvm::GlobalValue::isDeclaration(*v4) & 1) == 0)
      {
        goto LABEL_197;
      }

      Name = llvm::Value::getName(*v4);
      if (v7 < 4 || *Name != 779250017)
      {
        goto LABEL_197;
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
          goto LABEL_188;
        }

        goto LABEL_29;
      }

      if (v9 >= 0x20)
      {
        goto LABEL_29;
      }

      if (v9 >= 0x1B)
      {
        v30 = *v8 == 0x5F7465672E726961 && v8[1] == 0x6D6F635F657A6973 && v8[2] == 0x6675625F646E616DLL && *(v8 + 19) == 0x7265666675625F64;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v30)
        {
LABEL_188:
          v71 = v13;
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v75, *(*v4 + 1), 0);
          v72 = v75;
          if (v76)
          {
            v73 = 8 * v76;
            do
            {
              if (*v72 && *(*v72 + 16) == 84)
              {
                v71(this);
              }

              v72 += 8;
              v73 -= 8;
            }

            while (v73);
            v72 = v75;
          }

          if (v72 != &v77)
          {
            free(v72);
          }

          goto LABEL_197;
        }
      }

      else if (v9 < 0x18)
      {
        if (v9 != 23)
        {
          goto LABEL_197;
        }

        v20 = *v8 == 0x79706F632E726961 && v8[1] == 0x5F7265646E65725FLL && *(v8 + 15) == 0x646E616D6D6F635FLL;
        goto LABEL_86;
      }

LABEL_62:
      v32 = *v10 == 0x657365722E726961 && v10[1] == 0x7265646E65725F74 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v32)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x22)
      {
        v33 = memcmp(v10, "air.draw_primitives_render_command", 0x22uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v33)
        {
          goto LABEL_188;
        }
      }

      v34 = *v10 == 0x79706F632E726961 && v10[1] == 0x5F7265646E65725FLL;
      v35 = v34 && *(v10 + 15) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v35)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x26)
      {
        v37 = memcmp(v10, "air.set_pipeline_state_compute_command", 0x26uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v37)
        {
          goto LABEL_188;
        }
      }

      else if (v11 < 0x19)
      {
        v20 = *v10 == 0x79706F632E726961 && v10[1] == 0x657475706D6F635FLL && v10[2] == 0x646E616D6D6F635FLL;
LABEL_86:
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v20)
        {
          goto LABEL_188;
        }

        goto LABEL_197;
      }

      v40 = *v10 == 0x657365722E726961 && v10[1] == 0x7475706D6F635F74 && v10[2] == 0x6E616D6D6F635F65 && *(v10 + 24) == 100;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v40)
      {
        goto LABEL_188;
      }

      v41 = *v10 == 0x79706F632E726961 && v10[1] == 0x657475706D6F635FLL;
      v42 = v41 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v42)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x31)
      {
        v43 = memcmp(v10, "air.set_threadgroup_memory_length_compute_command", 0x31uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v43)
        {
          goto LABEL_188;
        }
      }

      else if (v11 < 0x1F)
      {
        goto LABEL_197;
      }

      v46 = *v10 == 0x5F7465732E726961 && v10[1] == 0x5F72656972726162 && v10[2] == 0x5F657475706D6F63 && *(v10 + 23) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v46)
      {
        goto LABEL_188;
      }

      if (v11 < 0x21)
      {
        if (v11 != 32)
        {
          goto LABEL_197;
        }

        v49 = *v10 == 0x5F7465732E726961 && v10[1] == 0x646F6D5F6C6C7563 && v10[2] == 0x7265646E65725F65 && v10[3] == 0x646E616D6D6F635FLL;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v49)
        {
          goto LABEL_188;
        }

        v20 = *v10 == 0x5F7465732E726961 && v10[1] == 0x74726F7077656976 && v10[2] == 0x7265646E65725F73 && v10[3] == 0x646E616D6D6F635FLL;
        goto LABEL_86;
      }

      v52 = memcmp(v10, "air.clear_barrier_compute_command", 0x21uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v52)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x34)
      {
        v53 = memcmp(v10, "air.concurrent_dispatch_threadgroups_compute_command", 0x34uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v53)
        {
          goto LABEL_188;
        }
      }

      else if (v11 < 0x2F)
      {
        if (v11 < 0x27)
        {
          goto LABEL_152;
        }

        goto LABEL_149;
      }

      v54 = memcmp(v10, "air.concurrent_dispatch_threads_compute_command", 0x2FuLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v54)
      {
        goto LABEL_188;
      }

LABEL_149:
      v55 = memcmp(v10, "air.set_stage_in_region_compute_command", 0x27uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v55)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x2A)
      {
        v56 = memcmp(v10, "air.set_depth_stencil_state_render_command", 0x2AuLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v56)
        {
          goto LABEL_188;
        }
      }

LABEL_152:
      v57 = memcmp(v10, "air.set_depth_bias_render_command", 0x21uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v57)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x26)
      {
        v58 = memcmp(v10, "air.set_depth_clip_mode_render_command", 0x26uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v58)
        {
          goto LABEL_188;
        }
      }

      v59 = *v10 == 0x5F7465732E726961 && v10[1] == 0x646F6D5F6C6C7563;
      v60 = v59 && v10[2] == 0x7265646E65725F65;
      v61 = v60 && v10[3] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v61)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x2B)
      {
        v62 = memcmp(v10, "air.set_front_facing_winding_render_command", 0x2BuLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v62)
        {
          goto LABEL_188;
        }
      }

      else if (v11 < 0x29)
      {
        if (v11 < 0x24)
        {
          goto LABEL_174;
        }

        goto LABEL_173;
      }

      v63 = memcmp(v10, "air.set_triangle_fill_mode_render_command", 0x29uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v63)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x2F)
      {
        v64 = memcmp(v10, "air.set_stencil_reference_values_render_command", 0x2FuLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v64)
        {
          goto LABEL_188;
        }
      }

LABEL_173:
      v65 = memcmp(v10, "air.set_scissor_rects_render_command", 0x24uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v65)
      {
        goto LABEL_188;
      }

LABEL_174:
      v68 = *v10 == 0x5F7465732E726961 && v10[1] == 0x74726F7077656976 && v10[2] == 0x7265646E65725F73 && v10[3] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v68)
      {
        goto LABEL_188;
      }

      if (v11 != 33)
      {
        v69 = memcmp(v10, "air.set_blend_color_render_command", 0x22uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v69)
        {
          goto LABEL_188;
        }

        if (v11 >= 0x28)
        {
          v70 = memcmp(v10, "air.set_depth_test_bounds_render_command", 0x28uLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v70)
          {
            goto LABEL_188;
          }
        }
      }

LABEL_197:
      if (++v4 == v5)
      {
        v4 = v78;
        goto LABEL_199;
      }
    }

    v14 = memcmp(v8, "air.set_kernel_buffer_compute_command", 0x25uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v14)
    {
      goto LABEL_188;
    }

    v15 = memcmp(v10, "air.set_vertex_buffer_render_command", 0x24uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v15)
    {
      goto LABEL_188;
    }

    if (v11 != 37)
    {
      v16 = memcmp(v10, "air.set_fragment_buffer_render_command", 0x26uLL);
      v13 = MTLICBIndirectionPass::replaceSetBuffer;
      if (!v16)
      {
        goto LABEL_188;
      }

      if (v11 >= 0x27)
      {
        v17 = memcmp(v10, "air.draw_indexed_patches_render_command", 0x27uLL);
        v13 = MTLICBIndirectionPass::replaceDrawIndexedPatches;
        if (!v17)
        {
          goto LABEL_188;
        }

        if (v11 >= 0x2A)
        {
          v18 = memcmp(v10, "air.draw_indexed_primitives_render_command", 0x2AuLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v18)
          {
            goto LABEL_188;
          }
        }
      }
    }

LABEL_29:
    v23 = *v10 == 0x776172642E726961 && v10[1] == 0x736568637461705FLL && v10[2] == 0x5F7265646E65725FLL && v10[3] == 0x2E646E616D6D6F63;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v23)
    {
      goto LABEL_188;
    }

    v24 = *v10 == 0x5F7465672E726961 && v10[1] == 0x6D6F635F657A6973;
    v25 = v24 && v10[2] == 0x6675625F646E616DLL;
    v26 = v25 && *(v10 + 19) == 0x7265666675625F64;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v26)
    {
      goto LABEL_188;
    }

    if (v11 >= 0x25)
    {
      v27 = memcmp(v10, "air.set_pipeline_state_render_command", 0x25uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v27)
      {
        goto LABEL_188;
      }
    }

    goto LABEL_62;
  }

LABEL_199:
  if (v4 != v80)
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

void sub_213C16618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_213C16838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceDrawIndexedPatches(uint64_t a1, llvm::Instruction *this)
{
  v3 = a1;
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

  MTLICBIndirectionPass::replaceFunctionCall(v3, this, Function);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_213C16A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t *a21, uint64_t a22, uint64_t a23)
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

void sub_213C16B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

void sub_213C16DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
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

void sub_213C16F50(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
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

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *>(void *a1, char **a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_213C170C0(_Unwind_Exception *exception_object)
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

uint64_t llvm::CallInst::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = llvm::User::operator new(0x50);
  llvm::Instruction::Instruction();
  *(v6 + 64) = 0;
  llvm::CallInst::init();
  return v6;
}

void sub_213C1720C(_Unwind_Exception *a1)
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

void sub_213C17404(_Unwind_Exception *exception_object)
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

void sub_213C17460(_Unwind_Exception *exception_object)
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
  llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v18, &v13);
  for (i = v19; v19; i = v19)
  {
    v4 = *(v18 + i - 1);
    LODWORD(v19) = i - 1;
    v12 = v4;
    v14 = 0;
    v15 = v4;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(this + 11, &v15, &v14) & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v12, &v15);
      v5 = v12;
      v6 = *(v12 + 16);
      if (v12 && v6 >= 0x1C)
      {
        v15 = **(this + 14);
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
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v18, &v15);
          }

          continue;
        }

LABEL_19:
        llvm::SmallVectorImpl<llvm::Value *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v18, v18 + 8 * v19, *(v5 + 8), 0);
      }
    }
  }

  if (v18 != v20)
  {
    free(v18);
  }
}

void sub_213C17730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t addMetadataRecursive(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = result;
  if (result)
  {
    result = llvm::GlobalValue::isDeclaration(result);
    if ((result & 1) == 0)
    {
      result = std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::find<llvm::Function *>(a5, &v20);
      if (!result)
      {
        std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(a5, &v20, &v20);
        result = llvm::Value::setMetadata();
        v9 = v20 + 72;
        v10 = *(v20 + 80);
        if (v10 == v20 + 72)
        {
          v12 = 0;
        }

        else
        {
          do
          {
            v11 = v10 - 24;
            if (!v10)
            {
              v11 = 0;
            }

            v12 = *(v11 + 48);
            if (v12 != v11 + 40)
            {
              break;
            }

            v10 = *(v10 + 8);
          }

          while (v10 != v9);
        }

        while (v10 != v9)
        {
          v13 = v12 - 24;
          if (!v12)
          {
            v13 = 0;
          }

          v14 = *(v13 + 16) - 33;
          v15 = v14 > 0x33;
          v16 = (1 << v14) & 0x8000000000041;
          if (!v15 && v16 != 0)
          {
            v18 = *(v13 - 32);
            if (v18)
            {
              if (!*(v18 + 16) && *(v18 + 24) == *(v13 + 72))
              {
                result = llvm::GlobalValue::isDeclaration(v18);
                if ((result & 1) == 0)
                {
                  result = addMetadataRecursive(v18, a2, a3, a4, a5);
                }
              }
            }
          }

          v12 = *(v12 + 8);
          v19 = v10 - 24;
          if (!v10)
          {
            v19 = 0;
          }

          while (v12 == v19 + 40)
          {
            v10 = *(v10 + 8);
            if (v10 == v9)
            {
              break;
            }

            v19 = v10 - 24;
            if (!v10)
            {
              v19 = 0;
            }

            v12 = *(v19 + 48);
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::addMetadataToAllCallees(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  Impl = llvm::MDTuple::getImpl();
  addMetadataRecursive(a2, a3, a4, Impl, v9);
  return std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(v9);
}

void sub_213C179B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a11 != v12)
  {
    free(a11);
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

const llvm::Twine *MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(MTLBoundsCheck::SharedPassData *this)
{
  v15 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v9 = **(this + 14);
    v10 = &v12;
    v11 = 0;
    llvm::Type::getInt64Ty(v9, v2);
    v4 = llvm::FunctionType::get();
    v13[0] = "mtl.get_image_id";
    v14 = 259;
    v5 = llvm::Function::Create(v4, 7uLL, v13, *(this + 14));
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v6 = **(this + 14);
    v14 = 257;
    llvm::BasicBlock::Create(v6, v13, v5, 0, v7);
  }

  return Function;
}

void sub_213C17DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
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
    v5 = **(this + 14);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x21u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.draw_id_buffer");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_213C18154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateConstGEP1_64(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, uint64_t a4, const llvm::Twine *a5)
{
  llvm::Type::getInt64Ty(this[8], a2);
  v12 = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, &v12, 1, 0);
  if (!result)
  {
    v11[16] = 257;
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v12, 1, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getGVBaseType(uint64_t a1, char *__s1, uint64_t __n)
{
  if (__n > 20)
  {
    if (__n <= 22)
    {
      if (__n != 21)
      {
        if (!memcmp(__s1, "mtl.texture_type_table", 0x16uLL))
        {
LABEL_29:
          v13 = **(a1 + 112);

          return llvm::Type::getInt8Ty(v13, __s1);
        }

        v6 = "mtl.buffer_usage_table";
        goto LABEL_28;
      }

      if (!memcmp(__s1, "mtl.threadgroup_table", 0x15uLL))
      {
        llvm::Type::getInt32Ty(**(a1 + 112), v12);
        return llvm::StructType::get();
      }

LABEL_33:
      llvm::IntegerType::get();
      llvm::IntegerType::get();
      llvm::PointerType::get();
      return llvm::StructType::get();
    }

    if (__n != 26)
    {
      if (__n == 23)
      {
        v7 = *__s1 == 0x747865742E6C746DLL && *(__s1 + 1) == 0x676173755F657275;
        if (v7 && *(__s1 + 15) == 0x656C6261745F6567)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v6 = "mtl.global_constants_table";
LABEL_28:
    if (!memcmp(__s1, v6, __n))
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  switch(__n)
  {
    case 17:
      if (memcmp(__s1, "mtl.binding_table", 0x11uLL))
      {
        goto LABEL_33;
      }

      Int64Ty = llvm::Type::getInt64Ty(**(a1 + 112), v9);

      return llvm::ArrayType::get(Int64Ty, 0x1F);
    case 18:
      if (memcmp(__s1, "mtl.draw_id_buffer", 0x12uLL))
      {
        goto LABEL_33;
      }

      v15 = **(a1 + 112);

      return llvm::Type::getInt64Ty(v15, v14);
    case 20:
      v6 = "mtl.threadgroup_base";
      goto LABEL_28;
    default:
      goto LABEL_33;
  }
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
    v5 = **(this + 14);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x23u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.buffer_usage_table");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_213C186E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
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
    v5 = **(this + 14);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x24u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.texture_usage_table");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_213C18A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v9[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.texture_type_table", 22);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = **(this + 14);
    v6 = v8;
    v7 = 0;
    v9[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v5, "air.buffer", "air.location_index", 0x25u, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.texture_type_table");
    v9[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v4, v9);
    if (v6 != v8)
    {
      free(v6);
    }
  }

  return GlobalVariable;
}

void sub_213C18C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
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
    v3 = *(this + 14);
    v13 = *v3;
    v14 = v16;
    v15 = 0;
    DataLayout = llvm::Module::getDataLayout(v3);
    llvm::DataLayout::DataLayout(v19, DataLayout);
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.global_constants_table", 26);
    v6 = llvm::PointerType::get();
    if ((*(*(this + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(*(this + 14), v5))
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v12, v17);
    MEMORY[0x21604B470](v19);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  return GlobalVariable;
}

void sub_213C18F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  v27[5] = v27[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v27);
  MEMORY[0x21604B470](va);
  if (a20 != v28)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, unsigned int a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
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
    DataLayout = llvm::Module::getDataLayout(this[14]);
    llvm::DataLayout::DataLayout(v18, DataLayout);
    v6 = this[14];
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

    MEMORY[0x21604B470](v18);
  }

  return GlobalVariable;
}

void sub_213C194C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  v25[5] = v25[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v25);
  if (a19 != v26)
  {
    free(a19);
  }

  MEMORY[0x21604B470](va);
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
    v13 = **(this + 14);
    v14 = v16;
    v15 = 0;
    v12 = MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v13, 0, "air.buffer", "air.location_index", 0, 1, "air.read_write", "air.address_space", 1, "air.arg_type_name", "void", "air.arg_name", "debug.ptr");
    v11 = 0;
    v7 = **(this + 14);
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v5, v17);
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

void sub_213C198B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
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
    llvm::Type::getInt64Ty(*this[14], v2);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v5, v6);
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v4, v5);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(llvm::Type ***this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt32Ty(*this[14], v2);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v5, v6);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(llvm::Type ***this)
{
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt8PtrTy(*this[14], 0);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v4 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v4, v5);
  }

  return GlobalVariable;
}

llvm::GlobalVariable *MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(llvm::Type ***this)
{
  v17[3] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(*this[14], v2);
    v4 = llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v5 = this[14];
    v13 = *v5;
    v14 = v16;
    v15 = 0;
    DataLayout = llvm::Module::getDataLayout(v5);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v4);
    v9 = v8;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v4);
    v17[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v13, "air.buffer", "air.location_index", 0x36u, 1, "air.read_write", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v9 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.report_counter");
    v17[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v12 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v12, v17);
    if (v14 != v16)
    {
      free(v14);
    }
  }

  return GlobalVariable;
}

void sub_213C1A3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
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
    DataLayout = llvm::Module::getDataLayout(this[14]);
    v11 = *this[14];
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v10, v15);
    if (v12 != v14)
    {
      free(v12);
    }
  }

  return GlobalVariable;
}

void sub_213C1A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
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
    DataLayout = llvm::Module::getDataLayout(this[14]);
    v11 = *this[14];
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>((this + 11), &v10, v15);
    if (v12 != v14)
    {
      free(v12);
    }
  }

  return GlobalVariable;
}

void sub_213C1A8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
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
  *(this + 14) = a2;
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
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 30, v3, v4, v5);
  std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(this + 19);
  std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(this + 24);

  return llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(this + 11, v6, v7, v8);
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

  MTLBoundsCheck::getMetalMetadata(&v43, *(this + 14));
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
    v13 = *(this + 14);
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
        v41 = *(this + 14);
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