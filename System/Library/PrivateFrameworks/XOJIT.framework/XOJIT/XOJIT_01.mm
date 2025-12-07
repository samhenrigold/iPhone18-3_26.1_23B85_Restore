unint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(unsigned int *a1, uint64_t a2, char a3)
{
  *(a1 + 10) += a2;
  v5 = (1 << a3) - 1;
  v6 = -(1 << a3);
  if (*a1)
  {
    v7 = ((v5 + *a1) & v6) - *a1 + a2 > *(a1 + 1) - *a1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v5 + a2;
    if ((v5 + a2) > 0x1000)
    {
      v9 = operator new(v5 + a2, 8uLL);
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a1 + 16, v9, v8);
      return (v9 + v5) & v6;
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::StartNewSlab(a1);
    result = (v5 + *a1) & v6;
  }

  else
  {
    result = (v5 + *a1) & v6;
  }

  *a1 = result + a2;
  return result;
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (v6 >= result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v6 + 1, 16);
    LODWORD(v6) = v5[2];
  }

  v7 = (*v5 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++v5[2];
  return result;
}

unsigned int *llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::StartNewSlab(uint64_t a1)
{
  v2 = *(a1 + 24) >> 7;
  if (v2 >= 0x1E)
  {
    LOBYTE(v2) = 30;
  }

  v3 = 4096 << v2;
  v4 = operator new(4096 << v2, 8uLL);
  result = llvm::SmallVectorTemplateBase<void *,true>::push_back((a1 + 16), v4);
  *a1 = v4;
  *(a1 + 8) = &v4[v3];
  return result;
}

unsigned int *llvm::SmallVectorTemplateBase<void *,true>::push_back(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v4 + 1, 8);
    LODWORD(v4) = v3[2];
  }

  *(*v3 + 8 * v4) = a2;
  ++v3[2];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::jitlink::Symbol *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::jitlink::Symbol *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::grow(uint64_t *a1, int a2)
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
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
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 16;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::jitlink::Symbol *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::jitlink::Symbol *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::grow(uint64_t *a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
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
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, a2, v9);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = *a2;
    *v6 = *a2;
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v7 + 8), 1uLL);
    }

    v6[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::grow(uint64_t **a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
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
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        v15[1] = 0;
        v15[1] = v4[1];
        v4[1] = 0;
        ++*(v5 + 8);
        v14 = *v4;
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

void *llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  v12 = *a3;
  v13 = a3[1];
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v11[2] = a2;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0;
  *v11 = v14;
  v11[1] = (v16 << 8) | (8 * (__clz(__rbit64(v15)) & 0x1F)) | 1;
  v18 = v11;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v18, v19);
  return v11;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(uint64_t a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v4))
  {
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v11);
  v8 = v11;
  if (result)
  {
    v9 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::detail::DenseSetEmpty&>(a1, v11, a2);
    v8 = result;
    v9 = 1;
  }

  v10 = *a1 + 8 * *(a1 + 16);
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::detail::DenseSetEmpty&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
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
      while (v8 != -8)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::grow(uint64_t **a1, int a2)
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
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
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 16;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v14 = 0;
        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        ++*(v5 + 8);
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(uint64_t *a1)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    do
    {
      if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 += 16;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
  }

  MEMORY[0x277C69E30](v3, 8);
  return a1;
}

void llvm::jitlink::LinkGraph::removeBlock(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v3 + 32, &v5);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::grow(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
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
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 32;
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
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 32;
    }

    while (v27 != v24);
  }

  return result;
}

void *llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  v12 = *a3;
  v13 = a3[1];
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v11[2] = a2;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0;
  *v11 = v14;
  v11[1] = (v16 << 8) | (8 * (__clz(__rbit64(v15)) & 0x1F)) | 5;
  v18 = v11;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v18, v19);
  return v11;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<xojit::ReplacementManager::Plugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#2}>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(*a1 + 8);
  std::mutex::lock((v7 + 16));
  v8 = *(v5 + 8);
  *&v52[0] = *v6;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct((v8 + 88), v52);
  v10 = v9;
  v11 = *(a2 + 119);
  if (v11 >= 0)
  {
    v12 = (a2 + 96);
  }

  else
  {
    v12 = *(a2 + 96);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 119);
  }

  else
  {
    v13 = *(a2 + 104);
  }

  v14 = llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::try_emplace<>((v9 + 1), v12, v13);
  v15 = *v14;
  if (*(*v14 + 64))
  {
    v47 = a3;
    v48 = v7;
    v56[0] = 0;
    v56[1] = 0;
    v57 = 0;
    v16 = *(v15 + 72);
    if (v16)
    {
      v17 = 16 * v16;
      v18 = *(v15 + 56);
      while ((*v18 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v18 += 2;
        v17 -= 16;
        if (!v17)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v18 = *(v15 + 56);
    }

    v19 = *(v15 + 56) + 16 * v16;
    if (v18 != v19)
    {
      v20 = *v18;
LABEL_17:
      if (v20 != v18[1])
      {
        v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct(v56, v18 + 1);
        v22 = v21[1];
        if ((v22 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v23 = *v18;
        v21[1] = *v18;
        if ((v23 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v23 + 8), 1uLL);
        }
      }

      while (1)
      {
        v18 += 2;
        if (v18 == v19)
        {
          break;
        }

        v20 = *v18;
        if ((*v18 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          if (v18 != v19)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

LABEL_25:
    llvm::jitlink::LinkGraph::defined_symbols(v52, a2);
    v50[0] = v52[0];
    v50[1] = v52[1];
    v50[2] = v52[2];
    v51 = v53;
    v24 = v54;
    v25 = v55;
    v26 = v53;
    if (*&v52[0] != v54 || v53 != v55)
    {
      while (1)
      {
        v27 = *v26;
        if (**v26 && (*(v27 + 23) & 0x20) == 0)
        {
          v49[0] = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v56, v27, v49) && v49[0] != v56[0] + 16 * v57)
          {
            break;
          }
        }

LABEL_67:
        llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v50, v49);
        v26 = v51;
        if (*&v50[0] == v24 && v51 == v25)
        {
          goto LABEL_72;
        }
      }

      v29 = (v49[0] + 8);
      v30 = *(v49[0] + 8);
      v31 = v30 - 1;
      if ((v30 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v30 + 8), 1uLL);
      }

      v49[0] = 0;
      if (!llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v15 + 80), v29, v49) || (v32 = v49[0], v49[0] == *(v15 + 80) + 16 * *(v15 + 96)))
      {
        v33 = *(*(v27[1] + 24) + (v27[2] & 0x1FFFFFFFFFFFFFFLL) + 4);
        if (v31 > 0xFFFFFFFFFFFFFFDFLL)
        {
          v34 = 0;
          goto LABEL_45;
        }
      }

      else
      {
        if (v31 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v30 = *(v32 + 8);
        if ((v30 - 1) >= 0xFFFFFFFFFFFFFFE0)
        {
          v34 = 0;
          v33 = *(*(v27[1] + 24) + (v27[2] & 0x1FFFFFFFFFFFFFFLL) + 4);
          goto LABEL_45;
        }

        atomic_fetch_add((v30 + 8), 1uLL);
        v33 = *(*(v27[1] + 24) + (v27[2] & 0x1FFFFFFFFFFFFFFLL) + 4);
      }

      v34 = 1;
      atomic_fetch_add((v30 + 8), 1uLL);
LABEL_45:
      v36 = v10[11];
      v35 = v10[12];
      if (v36 >= v35)
      {
        v38 = v10[10];
        v39 = (v36 - v38) >> 4;
        v40 = v39 + 1;
        if ((v39 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v41 = v35 - v38;
        if (v41 >> 3 > v40)
        {
          v40 = v41 >> 3;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF0)
        {
          v42 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (!(v42 >> 60))
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v43 = 16 * v39;
        *v43 = v30;
        *(v43 + 8) = v33;
        if (v38 != v36)
        {
          v44 = v38;
          v45 = 0;
          do
          {
            *v45 = 0;
            *v45 = *v44;
            *v44 = 0;
            *(v45 + 8) = *(v44 + 2);
            v44 += 16;
            v45 += 16;
          }

          while (v44 != v36);
          do
          {
            if ((*v38 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v38 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v38 += 16;
          }

          while (v38 != v36);
          v38 = v10[10];
        }

        v37 = v43 + 16;
        v10[10] = 0;
        v10[11] = v43 + 16;
        v10[12] = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v36 = v30;
        *(v36 + 2) = v33;
        v37 = (v36 + 16);
      }

      v10[11] = v37;
      if (v34)
      {
        atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      goto LABEL_67;
    }

LABEL_72:
    *v47 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(v56);
    MEMORY[0x277C69E30](v56[0], 8);
    v7 = v48;
  }

  else
  {
    *a3 = 0;
  }

  std::mutex::unlock((v7 + 16));
}

double llvm::jitlink::LinkGraph::defined_symbols@<D0>(uint64_t *__return_ptr a1@<X8>, llvm::jitlink::LinkGraph *this@<X0>)
{
  v3 = *(this + 25);
  v4 = *(this + 54);
  v5 = &v3[3 * v4];
  if (*(this + 52))
  {
    if (v4)
    {
      v6 = 24 * v4;
      while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v3 += 3;
        v6 -= 24;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    v3 = v5;
  }

  v12 = v3;
  v13 = v5;
  v14 = 1;
  *&v10 = v5;
  *(&v10 + 1) = v5;
  v11 = 1;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::nested_collection_iterator(v15, &v12, &v10);
  v12 = v5;
  v13 = v5;
  v14 = 1;
  *&v10 = v5;
  *(&v10 + 1) = v5;
  v11 = 1;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::nested_collection_iterator((a1 + 8), &v12, &v10);
  v7 = v15[1];
  *a1 = v15[0];
  *(a1 + 1) = v7;
  result = *&v16;
  v9 = v17;
  *(a1 + 2) = v16;
  *(a1 + 3) = v9;
  return result;
}

__n128 llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = (*(a1 + 48) + 8);
  *(a1 + 48) = v5;
  while (v5 != v4 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    *(a1 + 48) = ++v5;
  }

  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::moveToNonEmptyInnerOrEnd(a1);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

uint64_t llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::nested_collection_iterator(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = *a2;
  *(a1 + 16) = a2[2];
  *a1 = v4;
  v5 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v5;
  if (*a2 == *a3)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*(*a2 + 16) + 56);
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::moveToNonEmptyInnerOrEnd(a1);
  return a1;
}

void *llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::moveToNonEmptyInnerOrEnd(void *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v3 + 56);
      if (v2[6] != *(v3 + 56) + 8 * *(v3 + 72))
      {
        break;
      }

      v4 = *v2;
      v5 = v2[1];
      do
      {
        v4 += 3;
        *v2 = v4;
      }

      while (v4 != v5 && *v4 >= 0xFFFFFFFFFFFFFFFELL);
      if (v4 == v2[3])
      {
        v2[6] = 0;
        v2[7] = 0;
        return result;
      }

      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v4[2] + 56);
      v1 = *v2;
      v6 = v2[3];
      v2[6] = result;
      v2[7] = v7;
    }

    while (v1 != v6);
  }

  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<xojit::ReplacementManager::Plugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#3}>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  llvm::jitlink::LinkGraph::defined_symbols(v19, this);
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v18 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v20;
  if (*&v19[0] != v21 || v20 != v22)
  {
    do
    {
      if ((*(*v7 + 23) & 0x20) != 0)
      {
        llvm::orc::addFunctionPointerRelocationsToCurrentSymbol(*v7, this, *(v4 + 64), *(v4 + 40), &v16);
        v8 = v16;
        if (v16)
        {
          v16 = 0;
          if ((*(*v8 + 48))(v8, &llvm::ErrorList::ID))
          {
            v10 = v8[1];
            v9 = v8[2];
            if (v10 != v9)
            {
              v11 = 0;
              do
              {
                v24[0] = v11;
                v12 = *v10;
                *v10 = 0;
                if ((*(*v12 + 48))(v12, &llvm::ErrorInfoBase::ID))
                {
                  (*(*v12 + 8))(v12);
                  v12 = 0;
                }

                v23 = v12;
                llvm::ErrorList::join(v24, &v23, v15);
                v11 = v15[0];
                v15[0] = 0;
                if (v23)
                {
                  (*(*v23 + 8))(v23);
                }

                if (v24[0])
                {
                  (*(*v24[0] + 8))(v24[0]);
                }

                ++v10;
              }

              while (v10 != v9);
            }
          }

          else
          {
            (*(*v8 + 48))(v8, &llvm::ErrorInfoBase::ID);
          }

          (*(*v8 + 8))(v8);
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v17, v15);
      v7 = v18;
    }

    while (*&v17[0] != v5 || v18 != v6);
  }

  *a3 = 0;
}

uint64_t llvm::orc::GenericNamedTaskImpl<xojit::ReplacementManager::~ReplacementManager()::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9A50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<xojit::ReplacementManager::~ReplacementManager()::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9A50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C69E40);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  return llvm::raw_ostream::operator<<(a1, __s, v4);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t __n)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (__n <= v6 - v5)
  {
    if (__n)
    {
      memcpy(v5, a2, __n);
      *(this + 4) += __n;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, a2, __n);
  }

  return this;
}

uint64_t llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v3 = *(a1 + 24);
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(a1);
  }

  return a1;
}

uint64_t *llvm::orc::JITDylib::define<llvm::orc::BasicObjectLayerMaterializationUnit>(std::unique_ptr<llvm::orc::BasicObjectLayerMaterializationUnit> &&,llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>)::{lambda(void)#1}::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = llvm::orc::JITDylib::defineImpl(a2, *a1, **(a1 + 8));
  if (!*a2)
  {
    v6 = *(a1 + 16);
    if (!*v6)
    {
      llvm::orc::JITDylib::getDefaultResourceTracker(&v13, v4);
      v6 = *(a1 + 16);
      v7 = v13;
      v13 = *v6;
      v8 = v13;
      *v6 = v7;
      if (v8)
      {
        llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v8);
        v6 = *(a1 + 16);
      }
    }

    v9 = *(*(v4 + 4) + 80);
    if (!v9)
    {
LABEL_8:
      v10 = *(a1 + 8);
      v11 = *v10;
      *v10 = 0;
      v12 = v11;
      llvm::orc::JITDylib::installMaterializationUnit(v4, &v12, *v6);
    }

    result = (*(*v9 + 32))(v9, *v6, **(a1 + 8));
    if (!*a2)
    {
      v6 = *(a1 + 16);
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(uint64_t *a1)
{
  if (a1[3])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(a1);
  }

  return a1;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(uint64_t *a1)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  if (v2)
  {
    v4 = 24 * v2;
    do
    {
      if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 += 24;
      v4 -= 24;
    }

    while (v4);
    v3 = *a1;
  }

  MEMORY[0x277C69E30](v3, 8);
  return a1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
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
      while (v8 != -8)
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
        v7 = (v4 + 24 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::grow(uint64_t *a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::moveFromOldBuckets(a1, v4, &v4[3 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10 - 24;
    v13 = vdupq_n_s64(v12 / 0x18);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *result = -8;
      }

      if (v14.i8[4])
      {
        result[3] = -8;
      }

      v11 += 2;
      result += 6;
    }

    while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 24 * v6 - 24;
    v10 = vdupq_n_s64(v9 / 0x18);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v8 = -8;
      }

      if (v11.i8[4])
      {
        v8[3] = -8;
      }

      v7 += 2;
      v8 += 6;
    }

    while (((v9 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v12 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v14 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v14);
        v13 = v14;
        if ((*v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v13 = 0;
        *v13 = *v4;
        *v4 = 0;
        *(v13 + 8) = *(v4 + 1);
        ++*(v5 + 8);
        v12 = *v4;
      }

      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 3;
    }

    while (v4 != a3);
  }

  return result;
}

void anonymous namespace::LogManager::~LogManager(void **this)
{
  os_release(*this);
}

{
  os_release(*this);
}

{
  os_release(*this);
}

void xojit::XOJIT::Create()
{
  v7 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(&qword_2809A4188, memory_order_acquire) != -1)
  {
    v4[0] = &v5;
    *&v6 = v4;
    std::__call_once(&qword_2809A4188, &v6, std::__call_once_proxy[abi:nn200100]<std::tuple<xojit::XOJIT::Create(llvm::unique_function<void ()(llvm::Error)>,std::unique_ptr<llvm::orc::ExecutorProcessControl>,llvm::unique_function<llvm::Error ()(xojit::XOJIT&)>)::$_0 &&>>);
  }

  operator new();
}

void xojit::XOJIT::~XOJIT(xojit::XOJIT *this)
{
  llvm::orc::ExecutionSession::endSession(&v5, this);
  if (v5)
  {
    v4 = v5;
    v5 = 0;
    llvm::orc::ExecutionSession::reportError(this, &v4);
    if (v4)
    {
      (*(*v4 + 1))(v4);
    }

    if (v5)
    {
      (*(*v5 + 1))(v5);
    }
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(this + 78);
  std::mutex::~mutex((this + 560));
  v2 = *(this + 69);
  if (v2)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v3);
  }

  llvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer((this + 352));
  llvm::orc::ExecutionSession::~ExecutionSession(this);
}

uint64_t llvm::orc::ExecutionSession::reportError(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 88);
  v6 = *a2;
  *a2 = 0;
  v4 = *(a1 + 112);
  if ((v4 & 2) == 0)
  {
    v3 = *v3;
  }

  (*(v4 & 0xFFFFFFFFFFFFFFF8))(v3, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void xojit::XOJIT::runProgramOnMainThread(llvm::orc::ExecutionSession *a1)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v10[0] = *(a1 + 68);
  llvm::orc::ExecutionSession::intern(a1, "___xojit_executor_run_program_on_main_thread", 0x2CuLL, &v9);
  llvm::orc::ExecutionSession::lookup(a1, v10, 1uLL, &v9);
}

void xojit::XOJIT::addNullableSymbols(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 560));
  v4 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(a2);
  v6 = *a2 + 8 * *(a2 + 16);
  if (v6 != v4)
  {
    v7 = v4;
    v8 = v5;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 624, v7, &v9);
      do
      {
        ++v7;
      }

      while (v7 != v8 && (*v7 | 8) == 0xFFFFFFFFFFFFFFF8);
    }

    while (v7 != v6);
  }

  std::mutex::unlock((a1 + 560));
}

void *llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 8 * v4;
    while ((*result | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      ++result;
      v6 -= 8;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = 24 * v1;
    do
    {
      v4 = *v2;
      if ((*v2 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v5 = v2[1];
        if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
          v4 = *v2;
        }
      }

      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 3;
      v3 -= 24;
    }

    while (v3);
  }

  return result;
}

void std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

atomic_uint *llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (result && add == 1)
  {
    llvm::orc::JITDylib::~JITDylib(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<xojit::XOJIT::XOJIT(llvm::unique_function<void ()(llvm::Error)>,std::unique_ptr<llvm::orc::ExecutorProcessControl>,llvm::unique_function<llvm::Error ()(xojit::XOJIT&)>,llvm::Error&)::$_0>(uint64_t a1, uint64_t *a2)
{
  v24[7] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *a2 = 0;
  v3 = _MergedGlobals_74;
  if (os_log_type_enabled(_MergedGlobals_74, OS_LOG_TYPE_ERROR))
  {
    v22 = v2;
    *&buf = v24;
    *(&buf + 1) = 0x200000000;
    __p.__r_.__value_.__r.__words[0] = &buf;
    llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v22, &__p);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v5 = buf;
    v6 = DWORD2(buf);
    memset(&__p, 0, sizeof(__p));
    if (DWORD2(buf))
    {
      v7 = 24 * DWORD2(buf);
      v8 = DWORD2(buf) - 1;
      v9 = (buf + 23);
      v10 = v7;
      do
      {
        v11 = *v9;
        if (v11 < 0)
        {
          v11 = *(v9 - 15);
        }

        v8 += v11;
        v9 += 24;
        v10 -= 24;
      }

      while (v10);
      std::string::reserve(&__p, v8);
      v12 = *(v5 + 23);
      if (v12 >= 0)
      {
        v13 = v5;
      }

      else
      {
        v13 = *v5;
      }

      if (v12 >= 0)
      {
        v14 = *(v5 + 23);
      }

      else
      {
        v14 = *(v5 + 8);
      }

      std::string::append(&__p, v13, v14);
      if (v6 != 1)
      {
        v15 = v5 + 24;
        v16 = v7 - 24;
        do
        {
          std::string::append(&__p, "\n", 1uLL);
          v17 = *(v15 + 23);
          if (v17 >= 0)
          {
            v18 = v15;
          }

          else
          {
            v18 = *v15;
          }

          if (v17 >= 0)
          {
            v19 = *(v15 + 23);
          }

          else
          {
            v19 = *(v15 + 8);
          }

          std::string::append(&__p, v18, v19);
          v15 += 24;
          v16 -= 24;
        }

        while (v16);
      }
    }

    llvm::SmallVector<std::string,2u>::~SmallVector(&buf);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = p_p;
    _os_log_error_impl(&dword_274E5C000, v3, OS_LOG_TYPE_ERROR, "error: %s", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (v2)
  {
    v4 = *(*v2 + 8);

    v4(v2);
  }
}

uint64_t llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void *llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      *a3 = 0;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v14 = v8;
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12, a2, &v13);
          llvm::ErrorList::join(&v14, &v13, &v15);
          v8 = v15;
          *a3 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v14)
          {
            (*(*v14 + 1))(v14);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v11 = v4;
      llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11, a2, a3);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    v8 = v7;
    llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(a2, &v8, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

void llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  (*(**a2 + 24))(__p, *a2);
  v5 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v4, __p, 1);
  v6 = *v4 + 24 * *(v4 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  ++*(v4 + 8);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::string,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
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

uint64_t llvm::SmallVector<std::string,2u>::~SmallVector(uint64_t a1)
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

uint64_t llvm::detail::UniqueFunctionBase<BOOL,llvm::orc::SymbolStringPtr const&>::CallImpl<xojit::XOJIT::XOJIT(llvm::unique_function<void ()(llvm::Error)>,std::unique_ptr<llvm::orc::ExecutorProcessControl>,llvm::unique_function<llvm::Error ()(xojit::XOJIT&)>,llvm::Error&)::$_1>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  std::mutex::lock((*a1 + 560));
  v6 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v3 + 624), a2, &v6);
  std::mutex::unlock((v3 + 560));
  return v4;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::orc::JITDylib &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::CallImpl<xojit::XOJIT::XOJIT(llvm::unique_function<void ()(llvm::Error)>,std::unique_ptr<llvm::orc::ExecutorProcessControl>,llvm::unique_function<llvm::Error ()(xojit::XOJIT&)>,llvm::Error&)::$_2>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = *(a3 + 16);
  *(a3 + 16) = 0;
  v6 = *(*a1 + 72);
  v7 = *(v6 + 16);
  *&v13 = *(v6 + 8);
  *(&v13 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v11[0] = v3;
  v8 = 0;
  v9 = 0;
  v11[1] = v4;
  v12 = v5;
  v10 = 0;
  llvm::jitlink::absoluteSymbolsLinkGraph(v6 + 40, &v13, v11);
}

void llvm::orc::ObjectLinkingLayer::add(uint64_t a1, llvm::orc::JITDylib *a2, llvm::jitlink::LinkGraph **a3)
{
  llvm::orc::JITDylib::getDefaultResourceTracker(&v7, a2);
  v5 = *a3;
  *a3 = 0;
  v6 = v5;
  llvm::orc::ObjectLinkingLayer::add(a1, &v7, &v6);
}

llvm::jitlink::LinkGraph **std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](llvm::jitlink::LinkGraph **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

void llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::EPCDynamicLibrarySearchGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::EPCDynamicLibrarySearchGenerator>(std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>)::{lambda(void)#1}>(std::recursive_mutex *a1, void *a2)
{
  std::recursive_mutex::lock(a1);
  v4 = *a2;
  std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::EPCDynamicLibrarySearchGenerator,std::default_delete<llvm::orc::EPCDynamicLibrarySearchGenerator>,0>(v18, a2[1]);
  v6 = v4[24];
  v5 = v4[25];
  if (v6 >= v5)
  {
    v7 = v4[23];
    v8 = v6 - v7;
    v9 = (v6 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v19[4] = v4 + 23;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>((v4 + 23), v13);
    }

    *(16 * v9) = *v18;
    v14 = 16 * v9 + 16;
    *v18 = 0uLL;
    memcpy(0, v7, v8);
    v15 = v4[23];
    v4[23] = 0;
    v4[24] = v14;
    v16 = v4[25];
    v4[25] = 0;
    v19[2] = v15;
    v19[3] = v16;
    v19[0] = v15;
    v19[1] = v15;
    std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(v19);
    v17 = v18[1];
    v4[24] = v14;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

  else
  {
    *v6 = *v18;
    v4[24] = v6 + 16;
  }

  std::recursive_mutex::unlock(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::EPCDynamicLibrarySearchGenerator,std::default_delete<llvm::orc::EPCDynamicLibrarySearchGenerator>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<llvm::orc::EPCDynamicLibrarySearchGenerator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__shared_ptr_pointer<llvm::orc::EPCDynamicLibrarySearchGenerator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *anonymous namespace::RejectMismatchedArchitectures::modifyPassConfig(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  *&v6 = a2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v4, &v6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v6);
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<anonymous namespace::RejectMismatchedArchitectures::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1}>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(**a1 + 32) + 72);
  if (*(a2 + 160) != *(v4 + 64) || *(a2 + 180) != *(v4 + 84))
  {
    std::operator+<char>();
    v5 = std::string::append(&v19, " with triple ", 0xDuLL);
    v6 = v5->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a2 + 159);
    if (v7 >= 0)
    {
      v8 = (a2 + 136);
    }

    else
    {
      v8 = *(a2 + 136);
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 159);
    }

    else
    {
      v9 = *(a2 + 144);
    }

    v10 = std::string::append(&v20, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v21, " into process with triple ", 0x1AuLL);
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(v4 + 63);
    if (v14 >= 0)
    {
      v15 = (v4 + 40);
    }

    else
    {
      v15 = *(v4 + 40);
    }

    if (v14 >= 0)
    {
      v16 = *(v4 + 63);
    }

    else
    {
      v16 = *(v4 + 48);
    }

    v17 = std::string::append(&v22, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[2];
    v23 = *&v17->__r_.__value_.__l.__data_;
    v24 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  *a3 = 0;
}

void llvm::detail::UniqueFunctionBase<std::unique_ptr<llvm::orc::MaterializationUnit>,llvm::orc::MachOPlatform &,llvm::orc::MachOPlatform::HeaderOptions>::CallImpl<std::unique_ptr<llvm::orc::MaterializationUnit> (*)(llvm::orc::MachOPlatform &,llvm::orc::MachOPlatform::HeaderOptions)>(void (**a1)(uint64_t, void **), uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  LOBYTE(v6[0]) = 0;
  v10 = 0;
  if (*(a3 + 40) == 1)
  {
    *v6 = *a3;
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v7 = v4;
    v8 = v5;
    v9 = *(a3 + 32);
    v10 = 1;
  }

  v11 = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v13 = *(a3 + 72);
  v14 = *(a3 + 88);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *__p = *(a3 + 96);
  v16 = *(a3 + 112);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  v3(a2, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v17 = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v17);
  v17 = &v11;
  std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](&v17);
  if (v10 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::orc::MachOPlatform>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::orc::GDBJITDebugInfoRegistrationPlugin>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *llvm::orc::shared::detail::ResultDeserializer<long long,long long>::deserialize@<X0>(void *result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 <= 7)
  {
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  *result = *a2;
  *a4 = 0;
  return result;
}

char *llvm::orc::shared::WrapperFunctionResult::createOutOfBandError@<X0>(char **__return_ptr a1@<X8>, llvm::orc::shared::WrapperFunctionResult *this@<X0>)
{
  a1[1] = 0;
  v4 = strlen(this);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  result = strcpy(v5, this);
  *a1 = result;
  return result;
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,llvm::StringRef,void>::serialize(void *a1, const void *a2, size_t __n)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = __n;
  v5 = a1[1];
  v6 = (*a1 + 8);
  *a1 = v6;
  a1[1] = v5 - 8;
  if (__n)
  {
    if (v5 - 8 < __n)
    {
      return 0;
    }

    memcpy(v6, a2, __n);
    v8 = a1[1] - __n;
    *a1 += __n;
    a1[1] = v8;
  }

  return 1;
}

void std::future<llvm::orc::shared::WrapperFunctionResult>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2 >= 9)
    {
      v3 = *(a1 + 144);
LABEL_4:
      free(v3);
      goto LABEL_6;
    }

    if (!v2)
    {
      v3 = *(a1 + 144);
      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v4 = *(*a1 + 8);

  return v4(a1);
}

void llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::CallImpl<llvm::orc::ExecutorProcessControl::callWrapper(llvm::orc::ExecutorAddr,llvm::ArrayRef<char>)::{lambda(llvm::orc::shared::WrapperFunctionResult)#1}>(uint64_t **a1, uint64_t a2)
{
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::promise<llvm::orc::shared::WrapperFunctionResult>::set_value(*a1, v4);
  if (v4[1] >= 9)
  {
    v2 = v4[0];
LABEL_7:
    free(v2);
    return;
  }

  v2 = v4[0];
  if (v4[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = v4[0] == 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }
}

void std::promise<llvm::orc::shared::WrapperFunctionResult>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
  }

  else
  {
    std::__throw_future_error[abi:nn200100]();
  }

  std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::set_value<llvm::orc::shared::WrapperFunctionResult>(v3, a2);
}

void std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::set_value<llvm::orc::shared::WrapperFunctionResult>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v7.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v7), v4))
  {
    std::__throw_future_error[abi:nn200100]();
    std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::move(v5, v6);
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 144) = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void std::__assoc_state<llvm::orc::shared::WrapperFunctionResult>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v10.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v10);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v9, (a1 + 16));
    v5.__ptr_ = &v9;
    std::rethrow_exception(v5);
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>(v6, v7, v8);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

uint64_t _GLOBAL__sub_I_XOJIT_cpp()
{
  _MergedGlobals_74 = os_log_create("com.apple.XOJIT", "XOJIT");
}

uint64_t XOJIT_XOJIT_LoadDylib(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(**(*(a1 + 72) + 128) + 16))(&v5);
  if (v6)
  {
    return v5;
  }

  result = 0;
  *a3 = v5;
  return result;
}

atomic_uint *XOJIT_XOJIT_GetPlatformJITDylibRetained(uint64_t a1)
{
  v1 = *(a1 + 544);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v1);
  }

  else
  {
    atomic_fetch_add_explicit(0, 1u, memory_order_relaxed);
  }

  return v1;
}

void XOJIT_OrcRTJITDlopen(uint64_t a1, const char *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 544);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    operator new();
  }

  operator new();
}

void XOJIT_XOJIT_RunAsMain(llvm::orc::ExecutionSession *a1, char *__s, const char *a3, unsigned int a4, const char **a5, _DWORD *a6)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = v14;
  v13[1] = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v14, a4, 16);
  }

  if (a4 >= 1)
  {
    v11 = a4;
    do
    {
      if (*a5)
      {
        v12 = strlen(*a5);
      }

      else
      {
        v12 = 0;
      }

      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(v13, *a5++, v12);
      --v11;
    }

    while (v11);
  }

  if (__s)
  {
    strlen(__s);
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else if (!a3)
  {
LABEL_13:
    xojit::XOJIT::runProgramOnMainThread(a1);
  }

  strlen(a3);
  goto LABEL_13;
}

void XOJIT_XOJIT_RunOnAnyThread(llvm::orc::ExecutionSession *a1, const char *a2, const char *a3, int a4, char **a5, _DWORD *a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 68);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  v9.__begin_ = v7;
  llvm::orc::ExecutionSession::intern(a1, "___xojit_executor_run_program_wrapper", 0x25uLL, &v8);
  llvm::orc::ExecutionSession::lookup(a1, &v9, 1uLL, &v8);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v10);
    }

    v12 = (24 * v7);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *a2, *(a2 + 1));
    }

    else
    {
      v13 = *a2;
      v12->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    v11 = v12 + 1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12 + 1;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = (v5 + 24);
  }

  *(a1 + 8) = v11;
}

void XOJIT_XOJIT_RunNewInitializers(llvm::orc::ExecutionSession *a1, uint64_t a2)
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 68);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
    v3[0] = v2;
    llvm::orc::ExecutionSession::lookup(a1, v3, 1uLL, "___orc_rt_jit_dlopen_wrapper", 0x1CuLL);
  }

  v3[0] = 0;
  llvm::orc::ExecutionSession::lookup(a1, v3, 1uLL, "___orc_rt_jit_dlopen_wrapper", 0x1CuLL);
}

xojit::ReplacementManager *XOJIT_DisposeReplacementManager(xojit::ReplacementManager *result)
{
  if (result)
  {
    xojit::ReplacementManager::~ReplacementManager(result);
  }

  return result;
}

uint64_t XOJIT_ReplacementManager_AddObjectFile(uint64_t *a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = a3;
  xojit::ReplacementManager::addWithReplacement(a1, a2, &v6, &v7);
  v3 = v6;
  v4 = v7;
  v6 = 0;
  v7 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return v4;
}

uint64_t XOJIT_Error_Destroy(uint64_t a1)
{
  v2 = a1;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

uint64_t XOJIT_Error_IsFailedToMaterialize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))(result, &llvm::orc::FailedToMaterialize::ID);
  }

  return result;
}

uint64_t XOJIT_Error_IsUnsatisfiedSymbolDependencies(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))(result, &llvm::orc::UnsatisfiedSymbolDependencies::ID);
  }

  return result;
}

char *XOJIT_Error_ToMessage(char *a1)
{
  v1 = a1;
  if (a1)
  {
    *__s1 = 0;
    v14 = 0;
    v15 = 0;
    v5 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v4 = &unk_2883EB8F0;
    v12 = __s1;
    llvm::raw_ostream::SetUnbuffered(&v4);
    (*(*v1 + 16))(v1, &v4);
    llvm::raw_ostream::~raw_ostream(&v4);
    if (SHIBYTE(v15) < 0)
    {
      v2 = *__s1;
      v1 = strdup(*__s1);
      operator delete(v2);
    }

    else
    {
      return strdup(__s1);
    }
  }

  return v1;
}

char *XOJIT_Error_DestroyToMessage(uint64_t a1)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v20 = a1;
  v21 = v23;
  v22 = 0x200000000;
  v19.__r_.__value_.__r.__words[0] = &v21;
  llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v20, &v19);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v1 = v21;
  v2 = v22;
  memset(&v19, 0, sizeof(v19));
  if (v22)
  {
    v3 = 24 * v22;
    v4 = v22 - 1;
    v5 = v21 + 23;
    v6 = v3;
    do
    {
      v7 = *v5;
      if (v7 < 0)
      {
        v7 = *(v5 - 15);
      }

      v4 += v7;
      v5 += 24;
      v6 -= 24;
    }

    while (v6);
    std::string::reserve(&v19, v4);
    v8 = v1[23];
    if (v8 >= 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = *v1;
    }

    if (v8 >= 0)
    {
      v10 = *(v1 + 23);
    }

    else
    {
      v10 = *(v1 + 1);
    }

    std::string::append(&v19, v9, v10);
    if (v2 != 1)
    {
      v11 = v1 + 24;
      v12 = v3 - 24;
      do
      {
        std::string::append(&v19, "\n", 1uLL);
        v13 = v11[23];
        if (v13 >= 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = *v11;
        }

        if (v13 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = *(v11 + 1);
        }

        std::string::append(&v19, v14, v15);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }

  llvm::SmallVector<std::string,2u>::~SmallVector(&v21);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return strdup(&v19);
  }

  v17 = v19.__r_.__value_.__r.__words[0];
  v16 = strdup(v19.__r_.__value_.__l.__data_);
  operator delete(v17);
  return v16;
}

uint64_t XOJIT_MemoryBuffer_CreateWithIdentifierFromPath(const char *a1, const char *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  v6 = 1;
  HIBYTE(v12) = 1;
  if (*a2)
  {
    v11[0] = a2;
    v6 = 3;
  }

  LOBYTE(v12) = v6;
  llvm::sys::fs::openNativeFileForRead(v11, 0, 0, &v15);
  if (v16)
  {
    return v15;
  }

  v8 = v15;
  v9 = 1;
  HIBYTE(v12) = 1;
  if (*v5)
  {
    v11[0] = v5;
    v9 = 3;
  }

  LOBYTE(v12) = v9;
  getOpenFileImpl<llvm::MemoryBuffer>(&v13, v15, v11, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
  llvm::sys::Process::SafelyCloseFileDescriptor(v8);
  if (v14)
  {
    v12 = 773;
    v11[0] = "Could not create MemoryBuffer for path ";
    v11[1] = 39;
    v11[2] = a2;
    operator new();
  }

  v7 = 0;
  *a3 = v13;
  return v7;
}

uint64_t XOJIT_MemoryBuffer_Destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *XOJIT_SymbolString_WithStringRepresentationsDo(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5++;
      result = (*(a3 + 16))(a3, v6, v6 + 2, *v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

void XOJIT_XOJIT_CreateFromXPCWithOOPJITType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v7[13] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  xojit::createXPCEPC(a5, a6, v7);
}

xojit::XOJIT **XOJIT_XOJIT_Destroy(llvm::orc::ExecutionSession *a1)
{
  v5 = a1;
  llvm::orc::ExecutionSession::endSession(&v4, a1);
  if (v4)
  {
    v3 = v4;
    v4 = 0;
    llvm::orc::ExecutionSession::reportError(a1, &v3);
    if (v3)
    {
      (*(*v3 + 1))(v3);
    }

    if (v4)
    {
      (*(*v4 + 1))(v4);
    }
  }

  return std::unique_ptr<xojit::XOJIT>::~unique_ptr[abi:nn200100](&v5);
}

xojit::XOJIT **std::unique_ptr<xojit::XOJIT>::~unique_ptr[abi:nn200100](xojit::XOJIT **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xojit::XOJIT::~XOJIT(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t XOJIT_XOJIT_GetTargetTriple(uint64_t a1)
{
  v1 = *(a1 + 72);
  result = v1 + 40;
  if (*(v1 + 63) < 0)
  {
    return *result;
  }

  return result;
}

atomic_uint *XOJIT_XOJIT_GetProgramJITDylibRetained(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v1);
  }

  else
  {
    atomic_fetch_add_explicit(0, 1u, memory_order_relaxed);
  }

  return v1;
}

void XOJIT_XOJIT_CreateJITDylib(std::recursive_mutex *a1, char *__s, uint64_t a3, atomic_uint **a4)
{
  v41.__r_.__value_.__s.__data_[0] = 0;
  v44 = 0;
  *__p = 0u;
  memset(v46, 0, sizeof(v46));
  *__dst = 0u;
  v48 = 0;
  if (a3)
  {
    if (*(a3 + 40))
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *a3, *(a3 + 8));
      }

      else
      {
        v41 = *a3;
      }

      v42 = *(a3 + 24);
      v43 = *(a3 + 32);
      v44 = 1;
    }

    if (&v41 != a3)
    {
      v7 = *(a3 + 48);
      v8 = *(a3 + 56);
      v9 = v8 - v7;
      v10 = *&v46[0];
      v11 = __p[0];
      if (*&v46[0] - __p[0] < v8 - v7)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
        if (__p[0])
        {
          v13 = __p[1];
          v14 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v15 = *(v13 - 25);
              v13 -= 6;
              if (v15 < 0)
              {
                operator delete(*v13);
              }
            }

            while (v13 != v11);
            v14 = __p[0];
          }

          __p[1] = v11;
          operator delete(v14);
          v10 = 0;
          __p[0] = 0;
          __p[1] = 0;
          *&v46[0] = 0;
        }

        if (v12 <= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
          v17 = 2 * v16;
          if (2 * v16 <= v12)
          {
            v17 = v12;
          }

          if (v16 >= 0x2AAAAAAAAAAAAAALL)
          {
            v18 = 0x555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18 <= 0x555555555555555)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>>(v18);
          }
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v19 = __p[1];
      if ((__p[1] - __p[0]) >= v9)
      {
        if (v7 != v8)
        {
          do
          {
            std::string::operator=(v11, v7);
            v25 = *(v7 + 24);
            LODWORD(v11[1].__r_.__value_.__r.__words[1]) = *(v7 + 32);
            v11[1].__r_.__value_.__r.__words[0] = v25;
            LODWORD(v11[1].__r_.__value_.__r.__words[2]) = *(v7 + 40);
            v7 += 48;
            v11 += 2;
          }

          while (v7 != v8);
          v19 = __p[1];
        }

        while (v19 != v11)
        {
          v26 = *(v19 - 25);
          v19 -= 6;
          if (v26 < 0)
          {
            operator delete(*v19);
          }
        }

        __p[1] = v11;
      }

      else
      {
        v20 = (v7 + __p[1] - __p[0]);
        if (__p[1] != __p[0])
        {
          do
          {
            std::string::operator=(v11, v7);
            v21 = *(v7 + 24);
            LODWORD(v11[1].__r_.__value_.__r.__words[1]) = *(v7 + 32);
            v11[1].__r_.__value_.__r.__words[0] = v21;
            LODWORD(v11[1].__r_.__value_.__r.__words[2]) = *(v7 + 40);
            v7 += 48;
            v11 += 2;
          }

          while (v7 != v20);
          v19 = __p[1];
        }

        v22 = v19;
        if (v20 != v8)
        {
          v22 = v19;
          v23 = v19;
          do
          {
            Dylib = std::construct_at[abi:nn200100]<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd,llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd&,llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd*>(v23, v20);
            v20 += 3;
            v23 = Dylib + 2;
            v22 += 6;
          }

          while (v20 != v8);
        }

        __p[1] = v22;
      }

      std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>((v46 + 8), *(a3 + 72), *(a3 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 80) - *(a3 + 72)) >> 3));
      v27 = *(a3 + 96);
      v28 = *(a3 + 104);
      v29 = v28 - v27;
      v30 = v48;
      v31 = __dst[0];
      if (v48 - __dst[0] < v28 - v27)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2);
        if (__dst[0])
        {
          __dst[1] = __dst[0];
          operator delete(__dst[0]);
          v30 = 0;
          __dst[0] = 0;
          __dst[1] = 0;
          v48 = 0;
        }

        if (v32 <= 0x1555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
          v34 = 2 * v33;
          if (2 * v33 <= v32)
          {
            v34 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2);
          }

          if (v33 >= 0xAAAAAAAAAAAAAAALL)
          {
            v35 = 0x1555555555555555;
          }

          else
          {
            v35 = v34;
          }

          if (v35 <= 0x1555555555555555)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::BuildVersionOpts>>(v35);
          }
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v36 = __dst[1];
      v37 = __dst[1] - __dst[0];
      if ((__dst[1] - __dst[0]) >= v29)
      {
        if (v28 != v27)
        {
          memmove(__dst[0], v27, v28 - v27);
        }

        v39 = &v31[v29];
      }

      else
      {
        v38 = &v27[v37];
        if (__dst[1] != __dst[0])
        {
          memmove(__dst[0], v27, v37);
          v36 = __dst[1];
        }

        if (v28 != v38)
        {
          memmove(v36, v38, v28 - v38);
        }

        v39 = &v36[v28 - v38];
      }

      __dst[1] = v39;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v40, __s);
  llvm::orc::ExecutionSession::createBareJITDylib(a1, v40);
}

void XOJIT_XOJIT_SetLoadableAtPathViaRegex(uint64_t a1, void *a2, char *__s, char *a4)
{
  v7 = *(a1 + 344);
  if (__s)
  {
    v8 = strlen(__s);
    if (a4)
    {
LABEL_3:
      v9 = strlen(a4);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  llvm::orc::MachOPlatform::setLoadableAtPathRegexMatcher(v7, a2, __s, v8, a4, v9);
}

atomic_uint *XOJIT_JITDylib_Release(atomic_uint *result)
{
  if (result)
  {
    v1 = result;
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(result);

    return llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v1);
  }

  else
  {
    atomic_fetch_add(0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t XOJIT_JITDylib_GetName(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void XOJIT_XOJIT_RemoveJITDylibAndRelease(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(a2);
  atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  operator new();
}

llvm::object::COFFObjectFile *XOJIT_XOJIT_AddObjectFile(uint64_t a1, llvm::orc::JITDylib *a2, uint64_t a3)
{
  v5 = a3;
  llvm::orc::ObjectLayer::add(a1 + 352, a2, &v5, &v6);
  v3 = v6;
  v6 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v3;
}

uint64_t XOJIT_XOJIT_LinkStaticArchive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  llvm::orc::StaticLibraryDefinitionGenerator::Create(a1 + 352, &v10, v13, v12, &v14);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v12);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v13);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v14;
  v14 = 0;
  if ((v15 & 1) == 0)
  {
    v9 = v5;
    v6 = *(a2 + 32);
    v11[0] = a2;
    v11[1] = &v9;
    llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::StaticLibraryDefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::StaticLibraryDefinitionGenerator>(std::unique_ptr<llvm::orc::StaticLibraryDefinitionGenerator>)::{lambda(void)#1}>(v6, v11);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v5 = 0;
  }

  llvm::Expected<std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>>::~Expected(&v14);
  return v5;
}

uint64_t XOJIT_XOJIT_LinkStaticArchiveWithForceLoad(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (a4)
  {
    *&v19 = a1 + 352;
    *(&v19 + 1) = a2;
    v20 = a4 == 2;
    v21 = llvm::detail::UniqueFunctionBase<llvm::Expected<BOOL>,llvm::object::Archive &,llvm::MemoryBufferRef,unsigned long>::CallbacksHolder<llvm::orc::ForceLoadMachOArchiveMembers,llvm::orc::ForceLoadMachOArchiveMembers,void>::Callbacks + 2;
    v7 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v22);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v7, &v19);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v19);
  }

  v14 = a3;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v16, &v22);
  memset(v15, 0, sizeof(v15));
  llvm::orc::StaticLibraryDefinitionGenerator::Create(a1 + 352, &v14, v16, v15, &v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v17;
  v17 = 0;
  if ((v18 & 1) == 0)
  {
    v13 = v9;
    v10 = *(a2 + 32);
    *&v19 = a2;
    *(&v19 + 1) = &v13;
    llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::StaticLibraryDefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::StaticLibraryDefinitionGenerator>(std::unique_ptr<llvm::orc::StaticLibraryDefinitionGenerator>)::{lambda(void)#1}>(v10, &v19);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v9 = 0;
  }

  llvm::Expected<std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>>::~Expected(&v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v22);
  return v9;
}

void XOJIT_XOJIT_SymbolLookup(uint64_t a1, uint64_t a2, uint64_t *a3, char *__s, int a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(__p, 0, sizeof(__p));
  v10 = *a3;
  if (*a3)
  {
    v11 = a3 + 2;
    do
    {
      v12 = *(v11 - 2);
      *&v22 = v10;
      DWORD2(v22) = v12;
      std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::push_back[abi:nn200100](__p, &v22);
      v13 = *v11;
      v11 += 2;
      v10 = v13;
    }

    while (v13);
  }

  v18 = 0uLL;
  v19 = 0;
  if (__s)
  {
    v14 = strlen(__s);
  }

  else
  {
    v14 = 0;
  }

  llvm::orc::ExecutionSession::intern(a1, __s, v14, &v17);
  llvm::orc::SymbolLookupSet::add(&v18, &v17, a5);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v17 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v15 = v18;
  v16 = v19;
  v18 = 0uLL;
  v19 = 0;
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__value_func[abi:nn200100](v21, &llvm::orc::NoDependenciesToRegister);
  llvm::orc::ExecutionSession::lookup();
}

void std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, v10);
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

uint64_t XOJIT_XOJIT_LoadLinkableFile(uint64_t a1, char *__s, const char *a3, int a4, uint64_t *a5, unsigned int *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = a4 == 1;
  }

  if (__s)
  {
    v12 = strlen(__s);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 72);
  v20[0] = a3;
  if (a3)
  {
    v14 = strlen(a3);
  }

  else
  {
    v14 = 0;
  }

  v20[1] = v14;
  LOBYTE(v21) = 1;
  llvm::orc::loadLinkableFile(__s, v12, (v13 + 40), v11, v20, &v24);
  if (v26)
  {
    v15 = v24;
    v24 = 0;
  }

  else
  {
    if (v25 >= 2)
    {
      v17 = " does not contain a mach-o relocatable object file or archive";
      if (*__s)
      {
        v21 = " does not contain a mach-o relocatable object file or archive";
        v18 = 3;
        v17 = __s;
      }

      else
      {
        v18 = 1;
      }

      v20[0] = v17;
      v22 = 3;
      v23 = v18;
      getErrorErrorCat();
      operator new();
    }

    v15 = 0;
    *a6 = v25;
    v16 = v24;
    v24 = 0;
    *a5 = v16;
  }

  llvm::Expected<std::pair<std::unique_ptr<llvm::MemoryBuffer>,llvm::orc::LinkableFileKind>>::~Expected(&v24);
  return v15;
}

size_t *XOJIT_XOJIT_Intern(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  llvm::orc::ExecutionSession::intern(a1, __s, v4, &v6);
  return v6;
}

uint64_t XOJIT_ObjectLinkingLayer_AddPlugin(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  llvm::orc::ObjectLinkingLayer::addPlugin(a1, &v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t XOJIT_MachOHeaderOptions_Destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    if (v2)
    {
      *(v1 + 104) = v2;
      operator delete(v2);
    }

    v3 = (v1 + 72);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (v1 + 48);
    std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](&v3);
    if (*(v1 + 40) == 1 && *(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    return MEMORY[0x277C69E40](v1, 0x1032C40F5F4C4DBLL);
  }

  return result;
}

double XOJIT_MachOHeaderOptions_SetIDDylib(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v7, *a2);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    result = *&v7;
    *a1 = v7;
    v5 = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    *(a1 + 32) = v10;
  }

  else
  {
    result = *&v7;
    *a1 = v7;
    v6 = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v6;
    *(a1 + 32) = v10;
    *(a1 + 40) = 1;
  }

  return result;
}

void XOJIT_MachOHeaderOptions_AddLoadDylib(void *a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, *a2);
  v27 = *(a2 + 8);
  v4 = *(a2 + 24) != 0;
  v28 = *(a2 + 16);
  v29 = v4;
  v5 = a1[7];
  v6 = a1[8];
  if (v5 >= v6)
  {
    v10 = a1[6];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v10) >> 4);
    v12 = v11 + 1;
    if (v11 + 1 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>>(v14);
    }

    v15 = 48 * v11;
    v16 = *__p;
    *(v15 + 16) = v26;
    *v15 = v16;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v17 = v27;
    *(v15 + 32) = v28;
    *(v15 + 24) = v17;
    *(v15 + 40) = v29;
    v9 = 48 * v11 + 48;
    v18 = a1[6];
    v19 = a1[7];
    v20 = v15 + v18 - v19;
    if (v18 != v19)
    {
      v21 = a1[6];
      v22 = v15 + v18 - v19;
      do
      {
        v23 = *v21;
        *(v22 + 16) = *(v21 + 2);
        *v22 = v23;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *v21 = 0;
        v24 = *(v21 + 3);
        *(v22 + 32) = *(v21 + 8);
        *(v22 + 24) = v24;
        *(v22 + 40) = *(v21 + 10);
        v21 += 3;
        v22 += 48;
      }

      while (v21 != v19);
      do
      {
        if (*(v18 + 23) < 0)
        {
          operator delete(*v18);
        }

        v18 += 48;
      }

      while (v18 != v19);
      v18 = a1[6];
    }

    a1[6] = v20;
    a1[7] = v9;
    a1[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v7 = *__p;
    *(v5 + 16) = v26;
    *v5 = v7;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v8 = v28;
    *(v5 + 24) = v27;
    *(v5 + 32) = v8;
    *(v5 + 40) = v29;
    v9 = v5 + 48;
  }

  a1[7] = v9;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void XOJIT_MachOHeaderOptions_AddRPath(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  std::vector<std::string>::push_back[abi:nn200100](a1 + 72, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t XOJIT_MachOHeaderOptions_AddBuildVersionsForExecutor(void *a1, uint64_t a2, const llvm::Triple *a3, unsigned int a4)
{
  v6 = llvm::orc::MachOPlatform::HeaderOptions::BuildVersionOpts::fromTriple(*(a2 + 72) + 40, a3);
  if ((v7 & 0x100000000) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Could not identify build version for ");
    v8 = *(a2 + 72);
    v11 = *(v8 + 40);
    v9 = v8 + 40;
    v10 = v11;
    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v15 = std::string::append(&v32, v13, v14);
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v34 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    getErrorErrorCat();
    operator new();
  }

  v17 = v6;
  v19 = a1[13];
  v18 = a1[14];
  if (v19 >= v18)
  {
    v21 = a1[12];
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 2);
    v23 = v22 + 1;
    if (v22 + 1 > 0x1555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v21) >> 2);
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0xAAAAAAAAAAAAAAALL)
    {
      v25 = 0x1555555555555555;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::BuildVersionOpts>>(v25);
    }

    v26 = 12 * v22;
    *v26 = v17;
    *(v26 + 8) = v7;
    v20 = 12 * v22 + 12;
    v27 = a1[12];
    v28 = a1[13] - v27;
    v29 = (12 * v22 - v28);
    memcpy(v29, v27, v28);
    v30 = a1[12];
    a1[12] = v29;
    a1[13] = v20;
    a1[14] = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v19 = v6;
    *(v19 + 8) = v7;
    v20 = v19 + 12;
  }

  a1[13] = v20;
  return 0;
}

uint64_t XOJIT_AddNullableSymbolsFromPath(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 1;
  v9 = 1;
  if (*a2)
  {
    v7 = a2;
    v3 = 3;
  }

  v8 = v3;
  llvm::orc::getDylibInterface(a1, &v7, &v10);
  result = v10;
  if (v13)
  {
    v10 = 0;
    return result;
  }

  v5[0] = v10;
  v5[1] = v11;
  v10 = 0;
  v11 = 0;
  v6 = v12;
  v12 = 0;
  xojit::XOJIT::addNullableSymbols(a1, v5);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v5);
  if (v13)
  {
    result = v10;
    v10 = 0;
    if (!result)
    {
      return result;
    }

    (*(*result + 8))(result);
  }

  else
  {
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v10);
  }

  return 0;
}

void std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void *llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void *result@<X0>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      *a3 = 0;
      v5 = v4[1];
      v6 = v4[2];
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v11 = v7;
          v8 = *v5;
          *v5 = 0;
          if ((*(*v8 + 48))(v8, &llvm::ErrorInfoBase::ID))
          {
            (*(*v8 + 8))(v8);
            v8 = 0;
          }

          v10 = v8;
          llvm::ErrorList::join(&v11, &v10, &v12);
          v7 = v12;
          *a3 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v11)
          {
            (*(*v11 + 1))(v11);
          }

          ++v5;
        }

        while (v5 != v6);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v9 = v4;
      llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v9, a3);
      result = v9;
      v9 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  result = *a1;
  *a1 = 0;
  if (v4)
  {
    *a2 = 0;
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

llvm::raw_ostream *llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  v1 = this;
  v3 = (this + 16);
  v2 = *(this + 2);
  v4 = *(this + 4);
  v5 = v4 - v2;
  if (v4 != v2)
  {
    *(this + 4) = v2;
    this = llvm::raw_ostream::flush_tied_then_write(this, v2, v5);
  }

  if (*(v1 + 14) == 1)
  {
    this = *v3;
    if (*v3)
    {
      this = MEMORY[0x277C69E10](this, 0x1000C8077774924, v5);
    }
  }

  *(v1 + 14) = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  return this;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<createErrorReporter(XOJIT_XOJIT_ErrorReporterCallback)::$_0>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  return (*a1)(*(a1 + 8), v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,xojit::XOJIT &>::CallImpl<wrapCallback(XOJIT_XOJIT_MutatingCallback)::$_0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*a1)(a2, *(a1 + 8));
  *a3 = result;
  return result;
}

std::string *std::construct_at[abi:nn200100]<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd,llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd&,llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd*>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v5;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = *(a2 + 10);
  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOPlatform::HeaderOptions::BuildVersionOpts>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_uint *std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::clear[abi:nn200100](atomic_uint *result)
{
  v1 = result;
  v2 = *result;
  for (i = *(result + 1); i != v2; i -= 8)
  {
    v4 = *(i - 8);
    result = v4;
    if (v4)
    {
      result = llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(result);
    }
  }

  *(v1 + 1) = v2;
  return result;
}

void SymbolTableCallbackPlugin::~SymbolTableCallbackPlugin(SymbolTableCallbackPlugin *this)
{
  *this = &unk_2883E9B88;
  (*(this + 2))(*(this + 3));
}

{
  *this = &unk_2883E9B88;
  (*(this + 2))(*(this + 3));

  JUMPOUT(0x277C69E40);
}

void *SymbolTableCallbackPlugin::modifyPassConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 32);
  *&v6 = a1;
  *(&v6 + 1) = v4;
  v7 = &llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<SymbolTableCallbackPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1},SymbolTableCallbackPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1},void>::Callbacks + 2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100]((a4 + 96), &v6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v6);
}

const llvm::jitlink::Section *llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<SymbolTableCallbackPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  llvm::jitlink::LinkGraph::defined_symbols(v18, this);
  v16[0] = v18[0];
  v16[1] = v18[1];
  v16[2] = v18[2];
  v17 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v19;
  if (*&v18[0] != v20 || v19 != v21)
  {
    do
    {
      v11 = *v10;
      if (*v11)
      {
        (*(v6 + 8))(*(v6 + 24), *v11, (*(v11 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v11 + 8));
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v16, &v15);
      v10 = v17;
    }

    while (*&v16[0] != v8 || v17 != v9);
  }

  result = llvm::jitlink::LinkGraph::findSectionByName(this, "__TEXT,__swift5_entry", 21, v7);
  if (result)
  {
    llvm::jitlink::SectionRange::SectionRange(v18, result);
    llvm::orc::ExecutionSession::intern(a2[1], "__swift5_entry_relative_start", 0x1DuLL, v16);
    if (*&v18[0])
    {
      v14 = **&v18[0];
    }

    else
    {
      v14 = 0;
    }

    result = (*(v6 + 8))(*(v6 + 24), *&v16[0], v14);
    if ((*&v16[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*&v16[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  *a3 = 0;
  return result;
}

unint64_t **llvm::jitlink::SectionRange::SectionRange(unint64_t **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  if ((*(a2 + 32) + 8 * *(a2 + 48)) != llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32))
  {
    v4 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
    v5 = *v4;
    *a1 = *v4;
    a1[1] = v5;
    v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
    v8 = *(a2 + 32) + 8 * *(a2 + 48);
    if (v8 != v6)
    {
      v9 = *a1;
      v10 = a1[1];
      do
      {
        v11 = *v6;
        v12 = **v6;
        if (v12 < *v9)
        {
          *a1 = v11;
          v9 = v11;
        }

        if (v12 > *v10)
        {
          a1[1] = v11;
          v10 = v11;
        }

        do
        {
          ++v6;
        }

        while (v6 != v7 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<llvm::orc::SymbolStringPool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E9D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::orc::SymbolStringPool>::__on_zero_shared(uint64_t a1)
{
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(a1 + 88);

  std::mutex::~mutex((a1 + 24));
}

uint64_t llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          MEMORY[0x277C69E30]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

BOOL llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(void *a1, uint64_t a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  **a1 = v2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = v8 == 0;
  if (v8)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8 - 1;
    do
    {
      v12 = *v7++;
      *v3 = v12;
      v3 = (*a1 + 1);
      v13 = a1[1] - 1;
      *a1 = v3;
      a1[1] = v13;
      v9 = v11 == 0;
      if (!v11)
      {
        break;
      }

      --v11;
    }

    while (v13);
  }

  return v9;
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,int>,std::string,int>(uint64_t a1@<X0>, _DWORD *a2@<X1>, char **a3@<X8>)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = v6 + 12;
  *&v10 = 0;
  *(&v10 + 1) = v6 + 12;
  if ((v6 + 12) <= 8)
  {
    v8 = &v10;
  }

  else
  {
    v8 = malloc_type_malloc(v6 + 12, 0x100004077774924uLL);
    *&v10 = v8;
  }

  v9[0] = v8;
  v9[1] = v7;
  if (llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,int>::serialize<std::string,int>(v9, a1, a2))
  {
    *a3 = v10;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a3, "Error serializing arguments to blob in call");
    if (*(&v10 + 1) > 8uLL || !*(&v10 + 1) && v10)
    {
      free(v10);
    }
  }
}

BOOL llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,int>::serialize<std::string,int>(void *a1, uint64_t a2, _DWORD *a3)
{
  result = llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(a1, a2);
  if (result)
  {
    if (a1[1] < 4uLL)
    {
      return 0;
    }

    else
    {
      **a1 = *a3;
      v6 = a1[1] - 4;
      *a1 += 4;
      a1[1] = v6;
      return 1;
    }
  }

  return result;
}

uint64_t llvm::orc::GenericNamedTaskImpl<XOJIT_ReplacementManager_AddObjectFileAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9BE0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<XOJIT_ReplacementManager_AddObjectFileAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9BE0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::orc::GenericNamedTaskImpl<XOJIT_ReplacementManager_AddObjectFileAsync::$_0>::run(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v9 = a1[3];
  xojit::ReplacementManager::addWithReplacement(v2, v3, &v9, &v10);
  v4 = v9;
  v9 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = v10;
  v10 = 0;
  v6(v5, v7);
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::orc::SelfExecutorProcessControl>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t llvm::Expected<std::unique_ptr<xojit::XOJIT>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<xojit::XOJIT>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

uint64_t llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_AddObjectFileAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9C28;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_AddObjectFileAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9C28;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  JUMPOUT(0x277C69E40);
}

llvm::object::COFFObjectFile *llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_AddObjectFileAsync::$_0>::run(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v8 = a1[3];
  llvm::orc::ObjectLayer::add(v3 + 352, v2, &v8, &v9);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v5 = a1[4];
  v4 = a1[5];
  v6 = v9;
  v9 = 0;
  v5(v4, v6);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::StaticLibraryDefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::StaticLibraryDefinitionGenerator>(std::unique_ptr<llvm::orc::StaticLibraryDefinitionGenerator>)::{lambda(void)#1}>(std::recursive_mutex *a1, void *a2)
{
  std::recursive_mutex::lock(a1);
  v4 = *a2;
  std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::StaticLibraryDefinitionGenerator,std::default_delete<llvm::orc::StaticLibraryDefinitionGenerator>,0>(v18, a2[1]);
  v6 = v4[24];
  v5 = v4[25];
  if (v6 >= v5)
  {
    v7 = v4[23];
    v8 = v6 - v7;
    v9 = (v6 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v19[4] = v4 + 23;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>((v4 + 23), v13);
    }

    *(16 * v9) = *v18;
    v14 = 16 * v9 + 16;
    *v18 = 0uLL;
    memcpy(0, v7, v8);
    v15 = v4[23];
    v4[23] = 0;
    v4[24] = v14;
    v16 = v4[25];
    v4[25] = 0;
    v19[2] = v15;
    v19[3] = v16;
    v19[0] = v15;
    v19[1] = v15;
    std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(v19);
    v17 = v18[1];
    v4[24] = v14;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

  else
  {
    *v6 = *v18;
    v4[24] = v6 + 16;
  }

  std::recursive_mutex::unlock(a1);
}

uint64_t *std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::StaticLibraryDefinitionGenerator,std::default_delete<llvm::orc::StaticLibraryDefinitionGenerator>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<llvm::orc::StaticLibraryDefinitionGenerator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__shared_ptr_pointer<llvm::orc::StaticLibraryDefinitionGenerator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9CA8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9CA8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveAsync::$_0>::run(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  v13 = a1[3];
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  llvm::orc::StaticLibraryDefinitionGenerator::Create(v2 + 352, &v13, v16, v15, &v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v18)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = v17;
    v17 = 0;
    v6(v5, v7);
  }

  else
  {
    v8 = v17;
    v17 = 0;
    v12 = v8;
    v9 = *(v3 + 32);
    v14[0] = v3;
    v14[1] = &v12;
    llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::StaticLibraryDefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::StaticLibraryDefinitionGenerator>(std::unique_ptr<llvm::orc::StaticLibraryDefinitionGenerator>)::{lambda(void)#1}>(v9, v14);
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    (a1[4])(a1[5], 0);
  }

  return llvm::Expected<std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>>::~Expected(&v17);
}

uint64_t *llvm::detail::UniqueFunctionBase<llvm::Expected<BOOL>,llvm::object::Archive &,llvm::MemoryBufferRef,unsigned long>::CallImpl<llvm::orc::ForceLoadMachOArchiveMembers>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return llvm::orc::ForceLoadMachOArchiveMembers::operator()(a1, a2, v7, a4, a5);
}

uint64_t llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveWithForceLoadAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9CF0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveWithForceLoadAsync::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883E9CF0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::orc::GenericNamedTaskImpl<XOJIT_XOJIT_LinkStaticArchiveWithForceLoadAsync::$_0>::run(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v25 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    *&v21 = v3 + 352;
    *(&v21 + 1) = v2;
    v22 = v5 == 2;
    v23 = llvm::detail::UniqueFunctionBase<llvm::Expected<BOOL>,llvm::object::Archive &,llvm::MemoryBufferRef,unsigned long>::CallbacksHolder<llvm::orc::ForceLoadMachOArchiveMembers,llvm::orc::ForceLoadMachOArchiveMembers,void>::Callbacks + 2;
    v6 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v24);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, &v21);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v21);
  }

  v16 = v4;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v21, &v24);
  memset(v18, 0, sizeof(v18));
  llvm::orc::StaticLibraryDefinitionGenerator::Create(v3 + 352, &v16, &v21, v18, &v19);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v18);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v21);
  v7 = v16;
  v16 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v20)
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = v19;
    v19 = 0;
    v9(v8, v10);
  }

  else
  {
    v11 = v19;
    v19 = 0;
    v15 = v11;
    v12 = *(v2 + 32);
    v17[0] = v2;
    v17[1] = &v15;
    llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::StaticLibraryDefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::StaticLibraryDefinitionGenerator>(std::unique_ptr<llvm::orc::StaticLibraryDefinitionGenerator>)::{lambda(void)#1}>(v12, v17);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    (*(a1 + 40))(*(a1 + 48), 0);
  }

  llvm::Expected<std::unique_ptr<llvm::orc::EPCDynamicLibrarySearchGenerator>>::~Expected(&v19);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v24);
}

uint64_t *llvm::Expected<std::pair<std::unique_ptr<llvm::MemoryBuffer>,llvm::orc::LinkableFileKind>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void xojit::XOJITXPC::~XOJITXPC(xojit::XOJITXPC *this)
{
  *this = &unk_2883E9D70;
  v1 = (this + 8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 11);
  std::mutex::~mutex(v1);
}

{
  *this = &unk_2883E9D70;
  v1 = (this + 8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 11);
  std::mutex::~mutex(v1);

  JUMPOUT(0x277C69E40);
}

void xojit::XOJITXPC::start(xojit::XOJITXPC *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 9);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN5xojit8XOJITXPC5startEv_block_invoke;
  handler[3] = &__block_descriptor_tmp;
  handler[4] = this;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_resume(*(this + 9));
  *a2 = 0;
}

void *___ZN5xojit8XOJITXPC5startEv_block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (MEMORY[0x277C6A910](a2) != MEMORY[0x277D86468])
  {
    if (a2 != MEMORY[0x277D863F8])
    {
      getErrorErrorCat();
      operator new();
    }

    v5 = 0;
LABEL_36:
    std::mutex::lock((v3 + 8));
    xpc_release(*(v3 + 72));
    *(v3 + 72) = 0;
    std::mutex::unlock((v3 + 8));
    v16 = *(v3 + 80);
    v25 = v5;
    (*(*v16 + 24))(v16, &v25);
    result = v25;
    if (v25)
    {
      result = (*(*v25 + 8))(v25);
    }

    v17 = *(v3 + 112);
    if (v17 >= 8)
    {
      v18 = (v3 + 88);
      v19 = v18;
      if ((v17 & 2) == 0)
      {
        v19 = *v18;
      }

      (*(v17 & 0xFFFFFFFFFFFFFFF8))(&v23, v19, 0);
      v30 = 0;
      if (v18 != &__dst)
      {
        v20 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v18);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v20, &__dst);
      }

      return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&__dst);
    }

    return result;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "opc");
  v21 = uint64;
  if (uint64 >= 2)
  {
    getErrorErrorCat();
    __dst = 3;
    *&v29 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[38],std::error_code>(&length, "XOJIT XPC message opcode unrecognized", &__dst);
  }

  if (uint64)
  {
    std::mutex::lock((v3 + 8));
    v6 = *(v3 + 112);
    std::mutex::unlock((v3 + 8));
    if (v6 <= 7)
    {
      __dst = "No handler for opcode ";
      *(&v29 + 1) = &v21;
      v31 = 3075;
      getErrorErrorCat();
      operator new();
    }

    v12 = (v3 + 88);
    v13 = *(v3 + 112);
    if ((v13 & 2) == 0)
    {
      v12 = *v12;
    }

    (*(v13 & 0xFFFFFFFFFFFFFFF8))(&length, v12, a2);
  }

  else
  {
    v7 = xpc_dictionary_get_uint64(a2, "opd");
    v8 = xpc_dictionary_get_uint64(a2, "seq");
    v9 = xpc_dictionary_get_uint64(a2, "tag");
    length = 0;
    data = xpc_dictionary_get_data(a2, "buf", &length);
    __dst = &v30;
    v29 = xmmword_2750C1290;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&__dst, length);
    if (data && length)
    {
      memcpy(__dst, data, length);
    }

    v11 = *(v3 + 80);
    v25 = v27;
    v26 = xmmword_2750C1290;
    if (v29)
    {
      llvm::SmallVectorImpl<char>::operator=(&v25, &__dst);
    }

    (*(*v11 + 16))(&v23, v11, v7, v8, v9, &v25);
    if (v25 != v27)
    {
      free(v25);
    }

    if (__dst != &v30)
    {
      free(__dst);
    }

    if (v24)
    {
      length = v23;
    }

    else if (v23 == 1)
    {
      (*(*v3 + 32))(v3);
      length = 0;
      if (v24)
      {
        v14 = v23;
        v23 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }
    }

    else
    {
      length = 0;
    }
  }

  __dst = 0;
  v25 = length;
  length = 0;
  llvm::ErrorList::join(&__dst, &v25, &v23);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (__dst)
  {
    (*(*__dst + 8))(__dst);
  }

  result = length;
  v5 = v23;
  v23 = 0;
  if (length)
  {
    result = (*(*length + 8))(length);
  }

  if (v5)
  {
    goto LABEL_36;
  }

  return result;
}

void xojit::XOJITXPC::sendMessage(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, size_t a6@<X5>, void *a7@<X8>)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "opc", 0);
  xpc_dictionary_set_uint64(empty, "opd", a2);
  xpc_dictionary_set_uint64(empty, "seq", a3);
  xpc_dictionary_set_uint64(empty, "tag", a4);
  xpc_dictionary_set_data(empty, "buf", a5, a6);
  std::mutex::lock((a1 + 8));
  v15 = *(a1 + 72);
  if (!v15)
  {
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  xpc_connection_send_message(v15, empty);
  std::mutex::unlock((a1 + 8));
  *a7 = 0;
  xpc_release(empty);
}

void xojit::XOJITXPC::disconnect(xojit::XOJITXPC *this)
{
  std::mutex::lock((this + 8));
  v2 = *(this + 9);
  if (v2)
  {
    xpc_connection_cancel(v2);
  }

  std::mutex::unlock((this + 8));
}

void xojit::createXPCEPC(void *a1, int a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!*a3)
  {
    dispatch_get_global_queue(25, 0);
    _xojit_defaultConcurrency();
    operator new();
  }

  v4 = 0;
  v5 = 0x40000000;
  *a3 = 0;
  v7 = &v4;
  v8 = &v5;
  v9 = &v6;
  v10 = _MergedGlobals_2 + 2;
  *&v11 = xojit::createMemAccess;
  v12 = off_2815A4248 + 2;
  operator new();
}

uint64_t xojit::createMemAccess@<X0>(xojit *this@<X0>, uint64_t a2@<X8>)
{
  v8[15] = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v8[0] = &v5;
  v8[1] = "__xojit_memaccess_write_uint8s";
  v8[2] = 30;
  v8[3] = &v5 + 8;
  v8[4] = "__xojit_memaccess_write_uint16s";
  v8[5] = 31;
  v8[6] = &v6;
  v8[7] = "__xojit_memaccess_write_uint32s";
  v8[8] = 31;
  v8[9] = &v6 + 8;
  v8[10] = "__xojit_memaccess_write_uint64s";
  v8[11] = 31;
  v8[12] = &v7;
  v8[13] = "__xojit_memaccess_write_buffers";
  v8[14] = 31;
  llvm::orc::ExecutorProcessControl::getBootstrapSymbols(this, v8, 5, &v4);
  result = v4;
  if (!v4)
  {
    operator new();
  }

  *(a2 + 8) |= 1u;
  *a2 = result;
  return result;
}

uint64_t llvm::orc::ExecutorProcessControl::getBootstrapSymbols@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v6 = result;
    v7 = (a2 + 16);
    v8 = 24 * a3;
    do
    {
      result = llvm::StringMapImpl::FindKey((v6 + 160), *(v7 - 1), *v7);
      if (result == -1 || result == *(v6 + 168))
      {
        v12 = 1283;
        v9 = *(v7 - 1);
        v10 = *v7;
        v11[0] = "Symbol ";
        v11[2] = v9;
        v11[3] = v10;
        v13 = v11;
        v14 = " not found in bootstrap symbols map";
        v15 = 770;
        getErrorErrorCat();
        operator new();
      }

      **(v7 - 2) = *(*(*(v6 + 160) + 8 * result) + 8);
      v7 += 3;
      v8 -= 24;
    }

    while (v8);
  }

  *a4 = 0;
  return result;
}

void *llvm::orc::EPCGenericMemoryAccess::writeUInt8sAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(v8, a4, v7);
}

void *llvm::orc::EPCGenericMemoryAccess::writeUInt16sAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 24);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(v8, a4, v7);
}

void *llvm::orc::EPCGenericMemoryAccess::writeUInt32sAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(v8, a4, v7);
}

void *llvm::orc::EPCGenericMemoryAccess::writeUInt64sAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(v8, a4, v7);
}

void *llvm::orc::EPCGenericMemoryAccess::writeBuffersAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrENS3_IcEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS9_NSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SI_JSM_EEEvSX_SO_DpRKT1_(v8, a4, v7);
}

void *llvm::orc::EPCGenericMemoryAccess::writePointersAsync(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 8) + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = v5;
  return _ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES5_EEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSL_EEEvSW_SN_DpRKT1_(v8, a4, v7);
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned char>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned char>>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned char>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned char>>>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1];
  v5 = 9 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 17;
  v6 = 8;
  if (v4)
  {
    v6 = 9 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 17;
  }

  *&v9 = 0;
  *(&v9 + 1) = v6;
  if (v4)
  {
    v7 = malloc_type_malloc(9 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 17, 0x100004077774924uLL);
    *&v9 = v7;
  }

  else
  {
    v7 = &v9;
    v5 = 8;
  }

  v8[0] = v7;
  v8[1] = v5;
  if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned char>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned char>>,void>::serialize(v8, a1))
  {
    *a2 = v9;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a2, "Error serializing arguments to blob in call");
    if (*(&v9 + 1) > 8uLL || !*(&v9 + 1) && v9)
    {
      free(v9);
    }
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned char>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned char>>,void>::serialize(void *a1, uint64_t *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = a2[1];
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = a2[1];
  if (!v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = *a2 + 16 * v4;
  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned char>::serialize<llvm::orc::ExecutorAddr,unsigned char>(a1, v5, (v5 + 8));
    if (!result)
    {
      break;
    }

    v5 += 16;
  }

  while (v5 != v6);
  return result;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned char>::serialize<llvm::orc::ExecutorAddr,unsigned char>(void *a1, void *a2, _BYTE *a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  if (!v4)
  {
    return 0;
  }

  *v3 = *a3;
  v5 = a1[1] - 1;
  ++*a1;
  a1[1] = v5;
  return 1;
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1H_14default_deleteIS1J_EEEES11_S13_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9DF8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9DF8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

uint64_t _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_(void *a1, void *a2)
{
  v2 = a1;
  if (!a2[1])
  {
    if (*a2)
    {
      getErrorErrorCat();
      v5[0] = 3;
      v5[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  v5[0] = 0;
  v3 = a1[3];
  if ((v3 & 2) == 0)
  {
    v2 = *a1;
  }

  (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2, v5);
  result = v5[0];
  if (v5[0])
  {
    return (*(*v5[0] + 8))(v5[0]);
  }

  return result;
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned short>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned short>>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned short>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned short>>>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1];
  v5 = 10 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 18;
  v6 = 8;
  if (v4)
  {
    v6 = 10 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 18;
  }

  *&v9 = 0;
  *(&v9 + 1) = v6;
  if (v4)
  {
    v7 = malloc_type_malloc(10 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 18, 0x100004077774924uLL);
    *&v9 = v7;
  }

  else
  {
    v7 = &v9;
    v5 = 8;
  }

  v8[0] = v7;
  v8[1] = v5;
  if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned short>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned short>>,void>::serialize(v8, a1))
  {
    *a2 = v9;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a2, "Error serializing arguments to blob in call");
    if (*(&v9 + 1) > 8uLL || !*(&v9 + 1) && v9)
    {
      free(v9);
    }
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned short>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned short>>,void>::serialize(void *a1, uint64_t *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = a2[1];
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = a2[1];
  if (!v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = *a2 + 16 * v4;
  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned short>::serialize<llvm::orc::ExecutorAddr,unsigned short>(a1, v5, (v5 + 8));
    if (!result)
    {
      break;
    }

    v5 += 16;
  }

  while (v5 != v6);
  return result;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned short>::serialize<llvm::orc::ExecutorAddr,unsigned short>(void *a1, void *a2, _WORD *a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  if (v4 < 2)
  {
    return 0;
  }

  *v3 = *a3;
  v5 = a1[1] - 2;
  *a1 += 2;
  a1[1] = v5;
  return 1;
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteItEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteItEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteItEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteItEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteItEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteItEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1H_14default_deleteIS1J_EEEES11_S13_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9E40;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9E40;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEtEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteItEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned int>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned int>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1];
  v5 = 12 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 20;
  v6 = 8;
  if (v4)
  {
    v6 = 12 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 20;
  }

  *&v9 = 0;
  *(&v9 + 1) = v6;
  if (v4)
  {
    v7 = malloc_type_malloc(12 * ((v4 - 1) & 0xFFFFFFFFFFFFFFFLL) + 20, 0x100004077774924uLL);
    *&v9 = v7;
  }

  else
  {
    v7 = &v9;
    v5 = 8;
  }

  v8[0] = v7;
  v8[1] = v5;
  if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned int>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>,void>::serialize(v8, a1))
  {
    *a2 = v9;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a2, "Error serializing arguments to blob in call");
    if (*(&v9 + 1) > 8uLL || !*(&v9 + 1) && v9)
    {
      free(v9);
    }
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned int>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>,void>::serialize(void *a1, uint64_t *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = a2[1];
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = a2[1];
  if (!v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = *a2 + 16 * v4;
  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned int>::serialize<llvm::orc::ExecutorAddr,unsigned int>(a1, v5, (v5 + 8));
    if (!result)
    {
      break;
    }

    v5 += 16;
  }

  while (v5 != v6);
  return result;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned int>::serialize<llvm::orc::ExecutorAddr,unsigned int>(void *a1, void *a2, _DWORD *a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  if (v4 < 4)
  {
    return 0;
  }

  *v3 = *a3;
  v5 = a1[1] - 4;
  *a1 += 4;
  a1[1] = v5;
  return 1;
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1H_14default_deleteIS1J_EEEES11_S13_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9E88;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9E88;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEjEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIjEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSM_EEEvSX_SO_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned long long>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned long long>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1];
  v5 = (16 * v4) | 8;
  *&v8 = 0;
  *(&v8 + 1) = v5;
  if (16 * v4)
  {
    v6 = malloc_type_malloc((16 * v4) | 8, 0x100004077774924uLL);
    *&v8 = v6;
  }

  else
  {
    v6 = &v8;
    v5 = 8;
  }

  v7[0] = v6;
  v7[1] = v5;
  if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned long long>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>,void>::serialize(v7, a1))
  {
    *a2 = v8;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a2, "Error serializing arguments to blob in call");
    if (*(&v8 + 1) > 8uLL || !*(&v8 + 1) && v8)
    {
      free(v8);
    }
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned long long>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>,void>::serialize(void *a1, uint64_t *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = a2[1];
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = a2[1];
  if (!v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = *a2 + 16 * v4;
  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned long long>::serialize<llvm::orc::ExecutorAddr,unsigned long long>(a1, v5, v5 + 1);
    if (!result)
    {
      break;
    }

    v5 += 2;
  }

  while (v5 != v6);
  return result;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned long long>::serialize<llvm::orc::ExecutorAddr,unsigned long long>(void *a1, void *a2, void *a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  if (v4 < 8)
  {
    return 0;
  }

  *v3 = *a3;
  v5 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v5;
  return 1;
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSL_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS15_SM_JSR_EEEvS12_ST_DpRKT1_EUlSK_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SO_JST_EEEvS14_SV_DpRKT1_EUlSM_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS18_SP_JSU_EEEvS15_SW_DpRKT1_EUlSN_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS13_SK_JSP_EEEvS10_SR_DpRKT1_EUlSI_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1H_14default_deleteIS1J_EEEES11_S13_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9ED0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9ED0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrEyEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIyEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS14_SL_JSQ_EEEvS11_SS_DpRKT1_EUlSJ_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrENS3_IcEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS9_NSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SI_JSM_EEEvSX_SO_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrENS4_IcEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS9_ENSD_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISF_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S3_E_JSO_EEEvSZ_SQ_S18_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrENS4_IcEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS9_ENSD_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISF_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S3_E_JSO_EEEvSZ_SQ_S18_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,llvm::ArrayRef<llvm::orc::tpctypes::BufferWrite>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSM_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,llvm::ArrayRef<llvm::orc::tpctypes::BufferWrite>>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = 24 * v4;
    v6 = (*a1 + 16);
    v7 = 8;
    do
    {
      v8 = *v6;
      v6 += 3;
      v7 += v8 + 16;
      v5 -= 24;
    }

    while (v5);
    v12[0] = 0;
    v12[1] = v7;
    if (v7 > 8)
    {
      v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
      v12[0] = v9;
      goto LABEL_8;
    }
  }

  else
  {
    *v12 = xmmword_2750C12B0;
    v7 = 8;
  }

  v9 = v12;
LABEL_8:
  v11[0] = v9;
  v11[1] = v7;
  if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>,llvm::ArrayRef<llvm::orc::tpctypes::BufferWrite>,void>::serialize(v11, a1))
  {
    *a2 = *v12;
    v12[0] = 0;
    v12[1] = 0;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a2, "Error serializing arguments to blob in call");
  }

  if (v12[1] >= 9)
  {
    v10 = v12[0];
LABEL_15:
    free(v10);
    return;
  }

  if (!v12[1])
  {
    v10 = v12[0];
    if (v12[0])
    {
      goto LABEL_15;
    }
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>,llvm::ArrayRef<llvm::orc::tpctypes::BufferWrite>,void>::serialize(void *a1, uint64_t *a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = a2[1];
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  v4 = a2[1];
  if (!v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = *a2 + 24 * v4;
  do
  {
    result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::StringRef>(a1, v5, (v5 + 1));
    if (!result)
    {
      break;
    }

    v5 += 3;
  }

  while (v5 != v6);
  return result;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::StringRef>(void *a1, void *a2, uint64_t a3)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  **a1 = *a2;
  v3 = a1[1] - 8;
  *a1 += 8;
  a1[1] = v3;
  return llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,llvm::StringRef,void>::serialize(a1, *a3, *(a3 + 8));
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EEvS10_SS_SR_NSM_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrENS9_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSE_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISJ_E9callAsyncIS15_SN_JSR_EEEvS12_ST_DpRKT1_EUlSL_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrENS9_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSE_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISJ_E9callAsyncIS15_SN_JSR_EEEvS12_ST_DpRKT1_EUlSL_S8_E_JSR_EEEvS12_ST_S1B_EUlNS6_21WrapperFunctionResultEE_EES2_S12_EUlS1D_E_EES12_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes11BufferWriteEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes11BufferWriteEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS3_E_EENS7_18IncomingWFRHandlerES14_EUlS3_E_EES13_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS13_E4typeES5_EE5valueEvE4typeEPNS1J_IXsr3std11disjunctionINS1I_7is_voidIvEENS1I_7is_sameIDTclclsr3stdE7declvalIS13_EEclL_ZNS1I_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS13_ELi0EEEvEEEEvEENS1S_IKS1V_vEENS1I_14is_convertibleIS1V_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes11BufferWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS18_SQ_JSU_EEEvS15_SW_DpRKT1_EUlSO_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes11BufferWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS18_SQ_JSU_EEEvS15_SW_DpRKT1_EUlSO_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_EES14_NS5_8CalledAsISV_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes11BufferWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS18_SQ_JSU_EEEvS15_SW_DpRKT1_EUlSO_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_S1I_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSC_IcEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSH_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes11BufferWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISM_E9callAsyncIS18_SQ_JSU_EEEvS15_SW_DpRKT1_EUlSO_SB_E_JSU_EEEvS15_SW_S1E_EUlS4_E_EENS7_18IncomingWFRHandlerES15_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENS7_IcEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSC_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S6_E_JSP_EEEvS10_SR_S19_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS8_IcEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSD_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1H_14default_deleteIS1J_EEEES11_S13_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS8_IcEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSD_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9F18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS8_IcEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSD_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9F18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS8_IcEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSD_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes11BufferWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S7_E_JSQ_EEEvS11_SS_S1A_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES11_ENUlS1C_E_clES1C_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

void *_ZN4llvm3orc6shared15WrapperFunctionIFvNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES5_EEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIS8_NSB_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_SH_JSL_EEEvSW_SN_DpRKT1_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES6_EEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS11_SJ_JSN_EEEvSY_SP_DpRKT1_EUlSH_S3_E_JSN_EEEvSY_SP_S17_(a1, v6, a3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

void _ZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES6_EEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS11_SJ_JSN_EEEvSY_SP_DpRKT1_EUlSH_S3_E_JSN_EEEvSY_SP_S17_(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::orc::shared::detail::serializeViaSPSToWrapperFunctionResult<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,unsigned long long>>>,llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>>(a3, &v7);
  if (!v8 && v7)
  {
    getErrorErrorCat();
    *&v9[0] = 3;
    *(&v9[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a2);
  if (v8 <= 8)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7;
  }

  _ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EEvSZ_SR_SQ_NSL_IcEE(*a1, a1 + 2, a1[1], v9, v5, v8);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9);
  if (v8 >= 9)
  {
    v6 = v7;
LABEL_9:
    free(v6);
    return;
  }

  if (!v8)
  {
    v6 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }
}

void *_ZN4llvm3orc22ExecutorProcessControl16callWrapperAsyncINS1_9RunAsTaskEZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EEvSZ_SR_SQ_NSL_IcEE(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  _ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerESZ_(a2, a4, v11);
  (*(*a1 + 40))(a1, a3, v11, a5, a6);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v11);
}

void *_ZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerESZ_@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, a2);
  _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrESB_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S8_E_JSQ_EEEvS11_SS_S1A_EUlNS6_21WrapperFunctionResultEE_EES2_S11_EUlS1C_E_EES11_(a3, &v5);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
}

uint64_t _ZN4llvm3orc22ExecutorProcessControl18IncomingWFRHandlerC2IZNS1_9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS6_8SPSEmptyENS6_11SPSSequenceINS6_8SPSTupleIJNS6_15SPSExecutorAddrESB_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSD_ES4_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS7_ISI_E9callAsyncIS14_SM_JSQ_EEEvS11_SS_DpRKT1_EUlSK_S8_E_JSQ_EEEvS11_SS_S1A_EUlNS6_21WrapperFunctionResultEE_EES2_S11_EUlS1C_E_EES11_(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes12PointerWriteEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS16_SO_JSS_EEEvS13_SU_DpRKT1_EUlSM_SB_E_JSS_EEEvS13_SU_S1C_EUlS3_E_EENS7_18IncomingWFRHandlerES13_EUlS3_E_EES12_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS12_E4typeES5_EE5valueEvE4typeEPNS1I_IXsr3std11disjunctionINS1H_7is_voidIvEENS1H_7is_sameIDTclclsr3stdE7declvalIS12_EEclL_ZNS1H_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS12_ELi0EEEvEEEEvEENS1R_IKS1U_vEENS1H_14is_convertibleIS1U_vEEEE5valueEvE4typeE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionResultEEEC2IZNS1_22ExecutorProcessControl9RunAsTaskclIZNS2_15WrapperFunctionIFNS2_8SPSEmptyENS2_11SPSSequenceINS2_8SPSTupleIJNS2_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS0_IFvNS_5ErrorEEEEJNS_8ArrayRefINS1_8tpctypes12PointerWriteEEEEEEvOT0_NS1_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS16_SO_JSS_EEEvS13_SU_DpRKT1_EUlSM_SB_E_JSS_EEEvS13_SU_S1C_EUlS3_E_EENS7_18IncomingWFRHandlerES13_EUlS3_E_EES12_PNSt3__19enable_ifIXntsr3std7is_sameINS_12remove_cvrefIS12_E4typeES5_EE5valueEvE4typeEPNS1I_IXsr3std11disjunctionINS1H_7is_voidIvEENS1H_7is_sameIDTclclsr3stdE7declvalIS12_EEclL_ZNS1H_7declvalB8nn200100IS3_EEDTclsr3stdE9__declvalIS12_ELi0EEEvEEEEvEENS1R_IKS1U_vEENS1H_14is_convertibleIS1U_vEEEE5valueEvE4typeE(uint64_t a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a2 + 1));
  _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes12PointerWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS4_E_EENS7_18IncomingWFRHandlerES14_EUlS4_E_S1H_EES13_NS5_8CalledAsISU_EE(a1, &v4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  return a1;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEEC2IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes12PointerWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS4_E_EENS7_18IncomingWFRHandlerES14_EUlS4_E_S1H_EES13_NS5_8CalledAsISU_EE(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x28uLL, 8uLL);
  *a1 = v4;
  *(a1 + 8) = xmmword_2750C12A0;
  *v4 = *a2;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 1), (a2 + 8));
  *(a1 + 24) = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes12PointerWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS4_E_EENS7_18IncomingWFRHandlerES14_EUlS4_E_S1H_vE9CallbacksE + 4;
  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSEmptyENS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrESE_EEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncIFvSG_ES8_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS2_8tpctypes12PointerWriteEEEEEEvOT0_NS2_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNSA_ISL_E9callAsyncIS17_SP_JST_EEEvS14_SV_DpRKT1_EUlSN_SB_E_JST_EEEvS14_SV_S1D_EUlS4_E_EENS7_18IncomingWFRHandlerES14_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerESZ_ENUlS1A_E_clES1A_(a1, v2);
}

void _ZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_8SPSEmptyENS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrES9_EEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncIFvSB_ES2_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS5_ISG_E9callAsyncIS12_SK_JSO_EEEvSZ_SQ_DpRKT1_EUlSI_S6_E_JSO_EEEvSZ_SQ_S18_EUlNS4_21WrapperFunctionResultEE_EENS1_18IncomingWFRHandlerESZ_ENUlS1A_E_clES1A_(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, (a1 + 1));
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  _ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrESA_EEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S7_E_JSP_EEEvS10_SR_S19_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_EUlvE_EENSt3__110unique_ptrINS0_16GenericNamedTaskENS1G_14default_deleteIS1I_EEEES10_S12_();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrESA_EEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S7_E_JSP_EEEvS10_SR_S19_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883E9F60;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrESA_EEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S7_E_JSP_EEEvS10_SR_S19_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883E9F60;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSEmptyENS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrESA_EEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncIFvSC_ES3_NS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes12PointerWriteEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS6_ISH_E9callAsyncIS13_SL_JSP_EEEvS10_SR_DpRKT1_EUlSJ_S7_E_JSP_EEEvS10_SR_S19_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES10_ENUlS1B_E_clES1B_EUlvE_E3runEv(uint64_t a1)
{
  *v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _ZZN4llvm3orc6shared15WrapperFunctionIFNS1_8SPSEmptyENS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrEhEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncIFvS8_ENSC_9RunAsTaskENS_15unique_functionIFvNS_5ErrorEEEEJNS_8ArrayRefINS0_8tpctypes9UIntWriteIhEEEEEEEvOT0_NS0_12ExecutorAddrEOT1_DpRKT2_EUlOT_PKcmE_ZNS2_ISE_E9callAsyncIS12_SJ_JSO_EEEvSZ_SQ_DpRKT1_EUlSH_S3_E_JSO_EEEvSZ_SQ_S18_ENUlNS1_21WrapperFunctionResultEE_clES1A_((a1 + 8), v3);
  if (v3[1] >= 9)
  {
    v1 = v3[0];
LABEL_7:
    free(v1);
    return;
  }

  v1 = v3[0];
  if (v3[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = v3[0] == 0;
  }

  if (!v2)
  {
    goto LABEL_7;
  }
}

void llvm::SmallVectorImpl<char>::resizeImpl<false>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (a1[2] < a2)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, a2, 1);
        v2 = a1[1];
      }

      if (a2 != v2)
      {
        bzero((*a1 + v2), a2 - v2);
      }
    }

    a1[1] = a2;
  }
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 3;
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = a2[1];
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, a2[1]);
        }
      }

      else
      {
        if (*(a1 + 16) >= v6)
        {
          if (v7)
          {
            memmove(*a1, v4, *(a1 + 8));
          }
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v6, 1);
          v7 = 0;
        }

        v8 = a2[1];
        if (v8 != v7)
        {
          memcpy((*a1 + v7), *a2 + v7, v8 - v7);
        }
      }

      *(a1 + 8) = v6;
      a2[1] = 0;
    }

    else
    {
      llvm::SmallVectorImpl<char>::assignRemote(a1, a2);
    }
  }

  return a1;
}

__n128 llvm::SmallVectorImpl<char>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 24);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a2 + 24;
  return result;
}

void anonymous namespace::GCDTaskDispatcher::~GCDTaskDispatcher(_anonymous_namespace_::GCDTaskDispatcher *this)
{
  *this = &unk_2883E9FA8;
  dispatch_release(*(this + 2));
  dispatch_release(*(this + 1));
  std::deque<std::unique_ptr<llvm::orc::Task>>::~deque[abi:nn200100](this + 13);
  std::mutex::~mutex((this + 24));
}

{

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::GCDTaskDispatcher::dispatch(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 24));
  std::deque<std::unique_ptr<llvm::orc::Task>>::push_back((a1 + 104), a2);
  v4 = *(a1 + 96);
  if (v4 < *(a1 + 88))
  {
    *(a1 + 96) = v4 + 1;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN12_GLOBAL__N_117GCDTaskDispatcher8dispatchENSt3__110unique_ptrIN4llvm3orc4TaskENS1_14default_deleteIS5_EEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_52;
    block[4] = a1;
    dispatch_group_async(v5, v6, block);
  }

  std::mutex::unlock((a1 + 24));
}

uint64_t std::deque<std::unique_ptr<llvm::orc::Task>>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *>>::~__split_buffer(uint64_t a1)
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

void std::deque<std::unique_ptr<llvm::orc::Task>>::push_back(unint64_t *result, uint64_t *a2)
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
    std::deque<std::unique_ptr<llvm::orc::Task>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
  v10 = *a2;
  *a2 = 0;
  *(v9 + 8 * (v8 & 0x1FF)) = v10;
  result[5] = v7 + 1;
}

void ___ZN12_GLOBAL__N_117GCDTaskDispatcher8dispatchENSt3__110unique_ptrIN4llvm3orc4TaskENS1_14default_deleteIS5_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (1)
  {
    std::mutex::lock((v1 + 24));
    if (!*(v1 + 144))
    {
      break;
    }

    v2 = *(*(v1 + 112) + ((*(v1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8));
    v3 = *(v1 + 136) & 0x1FFLL;
    v4 = *(v2 + 8 * v3);
    *(v2 + 8 * v3) = 0;
    std::deque<std::unique_ptr<llvm::orc::Task>>::pop_front((v1 + 104));
    std::mutex::unlock((v1 + 24));
    (*(*v4 + 48))(v4);
    (*(*v4 + 8))(v4);
  }

  --*(v1 + 96);

  std::mutex::unlock((v1 + 24));
}

uint64_t std::deque<std::unique_ptr<llvm::orc::Task>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + ((v2 >> 6) & 0x3FFFFFFFFFFFFF8));
  v4 = *(v3 + 8 * (v2 & 0x1FF));
  *(v3 + 8 * (v2 & 0x1FF)) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return std::deque<std::unique_ptr<llvm::orc::Task>>::__maybe_remove_front_spare[abi:nn200100](a1, 1);
}

void std::deque<std::unique_ptr<llvm::orc::Task>>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *>>::emplace_back<std::unique_ptr<llvm::orc::Task> *&>(a1, &v9);
}

void std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *>>::emplace_back<std::unique_ptr<llvm::orc::Task> *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v11);
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

void std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *>>::emplace_front<std::unique_ptr<llvm::orc::Task> *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *> &>::emplace_back<std::unique_ptr<llvm::orc::Task> *>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1[4], v11);
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

void std::__split_buffer<std::unique_ptr<llvm::orc::Task> *,std::allocator<std::unique_ptr<llvm::orc::Task> *> &>::emplace_front<std::unique_ptr<llvm::orc::Task> *&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1[4], v9);
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

uint64_t std::deque<std::unique_ptr<llvm::orc::Task>>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t *llvm::Expected<std::unique_ptr<xojit::XOJITXPC>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager>>,llvm::orc::SimpleRemoteEPC &>::CallImpl<xojit::createXPCEPC(_xpc_connection_s *,unsigned int,std::unique_ptr<llvm::orc::TaskDispatcher>)::$_0>@<X0>(uint64_t **a1@<X0>, llvm::orc::SimpleRemoteEPC *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = **a1;
  v6 = *a1[2];
  v40 = *a1[1];
  v39 = v6;
  if (v6 >= 3)
  {
    *&v48 = "Unrecognized OOP-JIT type ";
    *&v49 = v6;
    LOWORD(v50) = 2051;
    getErrorErrorCat();
    operator new();
  }

  v38 = 0;
  result = llvm::orc::ExecutorProcessControl::getBootstrapMapValue<BOOL,BOOL>(&v48, a2, "IsSandboxed", 0xBuLL, &v38, a4);
  v10 = v48;
  if (!v48)
  {
    if ((v38 & 0x100) == 0)
    {
      getErrorErrorCat();
      *&v48 = 3;
      *(&v48 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    v37 = 0;
    result = llvm::orc::ExecutorProcessControl::getBootstrapMapValue<BOOL,BOOL>(&v48, a2, "UseOOPJIT", 9uLL, &v37, v9);
    v10 = v48;
    if (!v48)
    {
      if ((v37 & 0x100) == 0)
      {
        getErrorErrorCat();
        *&v48 = 3;
        *(&v48 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[38],std::error_code>(&v44, "Bootstrap map missing UseOOPJIT value", &v48);
      }

      v11 = v38;
      memset(&v57, 0, sizeof(v57));
      if (*(a2 + 20) == 23 || (v38 & 1) == 0)
      {
        v12 = confstr(65537, 0, 0);
        if (!v12)
        {
          v24 = __error();
          v25 = strerror(*v24);
          LOWORD(v50) = 773;
          *&v48 = "Could not get _CS_DARWIN_USER_TEMP_DIR: ";
          *(&v48 + 1) = 40;
          *&v49 = v25;
          getErrorErrorCat();
          operator new();
        }

        v13 = v12;
        std::string::resize(&v57, v12 - 1, 0);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v57;
        }

        else
        {
          v14 = v57.__r_.__value_.__r.__words[0];
        }

        confstr(65537, v14, v13);
        std::string::append(&v57, "/OOPJit/", 8uLL);
      }

      else
      {
        *(&v57.__r_.__value_.__s + 23) = 20;
        LODWORD(v57.__r_.__value_.__r.__words[2]) = 796158282;
        *&v57.__r_.__value_.__l.__data_ = *"/private/var/OOPJit/";
      }

      v15 = strlen(*(&oop_jit_conversion + v6));
      std::string::append(&v57, *(&oop_jit_conversion + v6), v15);
      LOWORD(v50) = 260;
      *&v48 = &v57;
      *&v47.__val_ = llvm::sys::fs::create_directories(&v48, 1, 511);
      v47.__cat_ = v16;
      if (v47.__val_)
      {
        *&v41 = "Could not create oop-jit code file directory ";
        *(&v41 + 1) = 45;
        *&v42 = &v57;
        v43 = 1029;
        *&v44 = &v41;
        *&v45 = ": ";
        LOWORD(v46) = 770;
        std::error_code::message(&v56, &v47);
        *&v48 = &v44;
        *&v49 = &v56;
        LOWORD(v50) = 1026;
        getErrorErrorCat();
        operator new();
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v57.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&v56, size + 7);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v56;
      }

      else
      {
        v18 = v56.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v57;
        }

        else
        {
          v19 = v57.__r_.__value_.__r.__words[0];
        }

        memmove(v18, v19, size);
      }

      strcpy(v18 + size, "/XXXXXX");
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v56;
      }

      else
      {
        v20 = v56.__r_.__value_.__r.__words[0];
      }

      v21 = mkdtemp(v20);
      if (v21)
      {
        v22 = v21;
        v23 = open(v21, 0x100000);
        if (v23 != -1)
        {
          v55 &= ~1u;
          LODWORD(v53) = v23;
          std::string::basic_string[abi:nn200100]<0>(v54, v22);
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          if (v55)
          {
            v29 = v53;
            v53 = 0;
            v56.__r_.__value_.__r.__words[0] = v29;
          }

          else
          {
            if ((v52 & 1) == 0)
            {
              if ((v37 | v11))
              {
                v36 = 0;
                *&v44 = &v36;
                {
                  getErrorErrorCat();
                  *&v44 = 3;
                  *(&v44 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
                  llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
                }

                *&v41 = &v44;
                {
                  getErrorErrorCat();
                  *&v41 = 3;
                  *(&v41 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
                  llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
                }

                if (csops_audittoken())
                {
                  v30 = *__error();
                  v31 = std::generic_category();
                  LODWORD(v41) = v30;
                  *(&v41 + 1) = v31;
                  llvm::make_error<llvm::StringError,std::error_code,char const(&)[30]>(&v47.__val_, &v41);
                }

                if (v11)
                {
                  v41 = v44;
                  v42 = v45;
                  v32 = sandbox_extension_issue_file_to_process();
                  if (v32)
                  {
                    *&v47.__val_ = 0;
                    v56.__r_.__value_.__r.__words[0] = v32;
                    v56.__r_.__value_.__l.__size_ = strlen(v32);
                    *&v41 = a2;
                    *(&v41 + 1) = v51;
                    llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>),llvm::Error &,llvm::orc::ExecutorAddr &,llvm::StringRef>(llvm::orc::ExecutorAddr,llvm::Error &,llvm::orc::ExecutorAddr &,llvm::StringRef &&)::{lambda(char const*,unsigned long)#1},llvm::Error,llvm::orc::ExecutorAddr,llvm::StringRef>(&v35, &v41, &v47, &v48, &v56);
                  }

                  v33 = *__error();
                  v34 = std::generic_category();
                  LODWORD(v41) = v33;
                  *(&v41 + 1) = v34;
                  llvm::make_error<llvm::StringError,std::error_code,char const(&)[41]>(&v47.__val_, &v41);
                }
              }
            }

            v56.__r_.__value_.__r.__words[0] = v48;
            close(v53);
          }

          result = llvm::Expected<std::pair<int,std::string>>::~Expected(&v53);
          v10 = v56.__r_.__value_.__r.__words[0];
          goto LABEL_11;
        }

        v43 = 773;
        *&v41 = "Could not open code file directory";
        *(&v41 + 1) = 34;
        *&v42 = v22;
        v26 = ": ";
      }

      else
      {
        v43 = 773;
        *&v41 = "Could not create code file directory ";
        *(&v41 + 1) = 37;
        *&v42 = 0;
        v26 = " for session: ";
      }

      *&v44 = &v41;
      *&v45 = v26;
      LOWORD(v46) = 770;
      v27 = __error();
      v28 = strerror(*v27);
      if (*v28)
      {
        *&v48 = &v44;
        *&v49 = v28;
        LOWORD(v50) = 770;
      }

      else
      {
        v48 = v44;
        v49 = v45;
        v50 = v46;
      }

      getErrorErrorCat();
      operator new();
    }
  }

LABEL_11:
  *(a3 + 8) = *(a3 + 8) & 0xFE | 1;
  *a3 = v10;
  return result;
}

uint64_t llvm::orc::ExecutorProcessControl::getBootstrapMapValue<BOOL,BOOL>(uint64_t *a1, uint64_t a2, uint64_t *a3, size_t a4, uint64_t a5, __n128 a6)
{
  if (*(a5 + 1) == 1)
  {
    *(a5 + 1) = 0;
  }

  result = llvm::StringMapImpl::FindKey((a2 + 136), a3, a4);
  if (result != -1 && result != *(a2 + 144))
  {
    v12 = *(*(a2 + 136) + 8 * result);
    v13 = *(v12 + 8);
    if (*(v12 + 16) == v13)
    {
      v17 = 1283;
      v14 = "Could not deserialize value for key ";
      v15 = a3;
      v16 = a4;
      getErrorErrorCat();
      operator new();
    }

    *a5 = *v13 | 0x100;
  }

  *a1 = 0;
  return result;
}

double anonymous namespace::XPCMemoryManager::getUsingDefaultNames(_anonymous_namespace_::XPCMemoryManager *this, llvm::orc::SimpleRemoteEPC *a2)
{
  v10[18] = *MEMORY[0x277D85DE8];
  v8 = 0u;
  *v9 = 0u;
  v7 = 0u;
  v10[0] = &v7;
  v10[1] = "__xojit_xpcmemmgr_instance";
  v10[2] = 26;
  v10[3] = &v7 + 8;
  v10[4] = "__xojit_xpcmemmgr_acquire_slab";
  v10[5] = 30;
  v10[6] = &v8;
  v10[7] = "__xojit_xpcmemmgr_release_slab";
  v10[8] = 30;
  v10[9] = &v8 + 8;
  v10[10] = "__xojit_xpcmemmgr_deallocate";
  v10[11] = 28;
  v10[12] = v9;
  v10[13] = "__xojit_xpcmemmgr_make_read_only";
  v10[14] = 32;
  v10[15] = &v9[1];
  v10[16] = "__xojit_xpcmemmgr_apply_sandbox_extension";
  v10[17] = 41;
  llvm::orc::ExecutorProcessControl::getBootstrapSymbols(a2, v10, 6, &v6);
  v4 = v6;
  if (v6)
  {
    *(this + 48) |= 1u;
    *this = v4;
  }

  else
  {
    *(this + 48) &= ~1u;
    v5 = v8;
    *this = v7;
    *(this + 1) = v5;
    result = v9[0];
    *(this + 2) = *v9;
  }

  return result;
}

BOOL xojit::XOJITXPC::withConnectionDo<anonymous namespace::XPCMemoryManager::CreateUsingDefaultNames(llvm::orc::SimpleRemoteEPC &,xojit::XOJITXPC&,unsigned long long,unsigned int)::$_1>(uint64_t a1, pid_t **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  if (v4)
  {
    **a2 = xpc_connection_get_pid(*(a1 + 72));
  }

  std::mutex::unlock((a1 + 8));
  return v4 == 0;
}

BOOL xojit::XOJITXPC::withConnectionDo<anonymous namespace::XPCMemoryManager::CreateUsingDefaultNames(llvm::orc::SimpleRemoteEPC &,xojit::XOJITXPC&,unsigned long long,unsigned int)::$_2>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  v3 = *(a1 + 72);
  if (v3)
  {
    xpc_connection_get_audit_token();
  }

  std::mutex::unlock((a1 + 8));
  return v3 == 0;
}

uint64_t llvm::consumeError(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>),llvm::Error &,llvm::orc::ExecutorAddr &,llvm::StringRef>(llvm::orc::ExecutorAddr,llvm::Error &,llvm::orc::ExecutorAddr &,llvm::StringRef &&)::{lambda(char const*,unsigned long)#1},llvm::Error,llvm::orc::ExecutorAddr,llvm::StringRef>(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  *a3 = 0;
  v8 = *(a5 + 8);
  v9 = v8 + 16;
  v14[0] = 0;
  v14[1] = (v8 + 16);
  if ((v8 + 16) <= 8)
  {
    v10 = v14;
  }

  else
  {
    v10 = malloc_type_malloc(v8 + 16, 0x100004077774924uLL);
    v14[0] = v10;
  }

  v13[0] = v10;
  v13[1] = v9;
  if (llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>::serialize<llvm::orc::ExecutorAddr,llvm::StringRef>(v13, a4, a5))
  {
    *v12 = *v14;
  }

  else
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v12, "Error serializing arguments to blob in call");
    if (v14[1] > 8 || !v14[1] && v14[0])
    {
      free(v14[0]);
    }
  }

  if (v12[1])
  {
    if (v12[1] <= 8)
    {
      v11 = v12;
    }

    else
    {
      v11 = v12[0];
    }
  }

  else
  {
    v13[0] = v12[0];
    if (v12[0])
    {
      getErrorErrorCat();
      v14[0] = 3;
      v14[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v11 = v12;
  }

  llvm::orc::ExecutorProcessControl::callWrapper(*a2, a2[1], v11, v12[1]);
}

void llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  v8[0] = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if ((llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError,void>::deserialize(v12, v8) & 1) == 0)
  {
    getErrorErrorCat();
    v12[2] = 3;
    v12[3] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  __p = v9;
  v7 = HIBYTE(v11);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v8[0] == 1)
  {
    getErrorErrorCat();
    operator new();
  }

  *a1 = 0;
  if (v7 < 0)
  {
    operator delete(__p);
  }

  *a4 = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v9);
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError,void>::deserialize(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1)++;
  a1[1] = v2 - 1;
  *a2 = v3;
  if (v3)
  {
    return llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(a1, (a2 + 8));
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 8);
  v3 = v2 >= 8;
  v4 = v2 - 8;
  if (!v3)
  {
    return 0;
  }

  v7 = **a1;
  *a1 += 8;
  *(a1 + 8) = v4;
  std::string::reserve(this, v7);
  if (!v7)
  {
    return 1;
  }

  do
  {
    v8 = *(a1 + 8);
    v10 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v9 = *(*a1)++;
    *(a1 + 8) = v8 - 1;
    std::string::push_back(this, v9);
    --v7;
  }

  while (v7);
  return v10;
}

void anonymous namespace::XPCMemoryManager::~XPCMemoryManager(_anonymous_namespace_::XPCMemoryManager *this)
{
  *this = &unk_2883E9FD8;
  close(*(this + 32));
  v3 = 260;
  v2 = this + 104;
  llvm::sys::fs::remove_directories(&v2, 1);
}

{
}

void **anonymous namespace::XPCMemoryManager::allocate(uint64_t a1, uint64_t a2, llvm::jitlink::LinkGraph *a3, __int128 *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v22, a3);
  if (v24)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v23;
    do
    {
      v12 = *v11;
      v13 = v12 & 7;
      if (v13 >= 4 && v13 != 5)
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if ((v12 & 1) == 0)
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v15 = *(*(a1 + 8) + 88);
      if (!(v15 >> v11[8]))
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v16 = *(v11 + 3) + *(v11 + 2);
      if (v12 > 7)
      {
        if (v13 >= 4)
        {
          v9 += v16;
        }

        else
        {
          v8 += (v15 + v16 - 1) / v15 * v15;
        }
      }

      else if (v13 >= 4)
      {
        v10 += v16;
      }

      else
      {
        v7 += (v15 + v16 - 1) / v15 * v15;
      }

      v11 += 104;
    }

    while (v11 != &v23[104 * v24]);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  v18[0] = v7;
  v18[1] = v8;
  v18[2] = v10;
  v18[3] = v9;
  v18[4] = v22;
  v19[0] = &v20;
  v19[1] = 0x400000000;
  if (v24)
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v19, &v23);
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v21, a4);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v21);
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(v19);
  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v23);
}

void anonymous namespace::XPCMemoryManager::deallocate(void *a1, uint64_t **a2, __int128 *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v40 = a3;
    __src = 0;
    v42 = 0;
    v43 = 0;
    std::vector<llvm::orc::ExecutorAddr>::reserve(&__src, v4 - v3);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 == v8)
    {
      v9 = v42;
    }

    else
    {
      v9 = v42;
      do
      {
        v10 = *v7;
        *v7 = -1;
        if (v9 >= v43)
        {
          v11 = __src;
          v12 = v9 - __src;
          v13 = (v9 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v15 = v43 - __src;
          if ((v43 - __src) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(&__src, v16);
          }

          v17 = (v9 - __src) >> 3;
          v18 = (8 * v13);
          v19 = (8 * v13 - 8 * v17);
          *v18 = v10;
          v9 = (v18 + 1);
          memcpy(v19, v11, v12);
          v20 = __src;
          __src = v19;
          v42 = v9;
          v43 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 8;
        }

        v42 = v9;
        ++v7;
      }

      while (v7 != v8);
    }

    v22 = a1[1];
    v23 = a1[6];
    v46[0] = a1;
    v46[1] = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    if (v9 != __src)
    {
      std::vector<llvm::orc::ExecutorAddr>::__vallocate[abi:nn200100](&v46[1], (v9 - __src) >> 3);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v48, v40);
    v24 = v22[3];
    v25 = v42 + 16 - __src;
    if (__src == v42)
    {
      v26 = 16;
    }

    else
    {
      v26 = v42 + 16 - __src;
    }

    *&v61 = 0;
    *(&v61 + 1) = v26;
    if (v26 < 9)
    {
      if (v42 + 16 == __src)
      {
        llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v45, "Error serializing arguments to blob in call");
        goto LABEL_46;
      }

      v27 = &v61;
    }

    else
    {
      v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
      *&v61 = v27;
      v25 = v26;
    }

    *v27 = a1[3];
    if ((v25 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v28 = __src;
      *(v27 + 1) = (v42 - __src) >> 3;
      v29 = v42;
      v30 = v28 == v42;
      if ((v25 - 16) >= 8 && v28 != v42)
      {
        v31 = v27 + 1;
        v32 = v25 - 24;
        v33 = v28 + 8;
        do
        {
          *v31++ = *(v33 - 1);
          v30 = v33 == v29;
          if (v33 == v29)
          {
            break;
          }

          v33 += 8;
          v34 = v32 > 7;
          v32 -= 8;
        }

        while (v34);
      }

      if (v30)
      {
        *v45 = v61;
        goto LABEL_46;
      }

      v26 = *(&v61 + 1);
    }

    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v45, "Error serializing arguments to blob in call");
    if (v26 > 8 || !v26 && v61)
    {
      free(v61);
    }

LABEL_46:
    if (!v45[1])
    {
      *v55 = v45[0];
      if (v45[0])
      {
        getErrorErrorCat();
        *&v61 = 3;
        *(&v61 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }
    }

    *v49 = *v46;
    v50 = *__dst;
    __dst[0] = 0;
    __dst[1] = 0;
    v46[1] = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v51, &v48);
    v35 = v45[1];
    if (v45[1] <= 8)
    {
      v36 = v45;
    }

    else
    {
      v36 = v45[0];
    }

    *v55 = v24;
    *&v55[8] = *v49;
    *&v55[24] = v50;
    v49[1] = 0;
    v50 = 0uLL;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v56, v51);
    v57 = *v55;
    v58 = *&v55[16];
    v59 = *&v55[32];
    memset(&v55[16], 0, 24);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v60, v56);
    v61 = v57;
    v62 = v58;
    v63 = v59;
    v58 = 0uLL;
    v59 = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v64, v60);
    v37 = operator new(0x48uLL, 8uLL);
    v52 = v37;
    v53 = xmmword_2750C12C0;
    v38 = v62;
    *v37 = v61;
    v37[1] = v38;
    *(v37 + 4) = v63;
    v62 = 0uLL;
    v63 = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v37 + 40, v64);
    v54 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZN12_GLOBAL__N_116XPCMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSL_9allocatorISP_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrENSM_ISY_NSQ_ISY_EEEEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_S10_EEEvS1A_S12_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1A_EUlS4_E_S1K_vE9CallbacksE + 4;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v64);
    if (v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v60);
    if (v58)
    {
      *(&v58 + 1) = v58;
      operator delete(v58);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v56);
    if (*&v55[16])
    {
      *&v55[24] = *&v55[16];
      operator delete(*&v55[16]);
    }

    (*(*v22 + 40))(v22, v23, &v52, v36, v35);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v52);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v51);
    if (v49[1])
    {
      *&v50 = v49[1];
      operator delete(v49[1]);
    }

    if (v45[1] < 9)
    {
      if (v45[1])
      {
        goto LABEL_65;
      }

      v39 = v45[0];
      if (!v45[0])
      {
        goto LABEL_65;
      }
    }

    else
    {
      v39 = v45[0];
    }

    free(v39);
LABEL_65:
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v48);
    if (v46[1])
    {
      __dst[0] = v46[1];
      operator delete(v46[1]);
    }

    if (__src)
    {
      v42 = __src;
      operator delete(__src);
    }

    return;
  }

  v44 = 0;
  v21 = *(a3 + 3);
  if ((v21 & 2) == 0)
  {
    a3 = *a3;
  }

  (*(v21 & 0xFFFFFFFFFFFFFFF8))(a3, &v44);
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }
}