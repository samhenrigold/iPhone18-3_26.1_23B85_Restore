void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 4) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
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
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -8;
      }

      if (v29.i8[4])
      {
        *v28 = -8;
      }

      v23 += 2;
      v28 += 32;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -8)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v30);
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

    JUMPOUT(0x277C69E30);
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
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -8;
      }

      if (v29.i8[4])
      {
        *v28 = -8;
      }

      v23 += 2;
      v28 += 32;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -16;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::grow(uint64_t a1, int a2)
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
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

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -8;
      }

      if (v28.i8[4])
      {
        *v27 = -8;
      }

      v22 += 2;
      v27 += 16;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a2, *(a2 + 16), *a3, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(a2, a3, v10);
    v7 = result;
    *result = *a3;
    v8 = 1;
  }

  v9 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(a2, a3, v10);
    v7 = result;
    *result = *a3;
    v8 = 1;
  }

  v9 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
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
        v6 = (a1 + 8 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(uint64_t a1, int a2)
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
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

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 16;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::grow(a1, v6);
  v8 = 0;
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 24);
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 3);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          v21 = v31;
          v22 = *(v18 - 3);
          *(v31 + 24) = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v22;
          *(v21 + 8) = *(v18 - 2);
          *(v18 - 2) = 0;
          *(v21 + 16) = *(v18 - 2);
          *(v18 - 2) = 0;
          LODWORD(v22) = *(v21 + 20);
          *(v21 + 20) = *(v18 - 1);
          *(v18 - 1) = v22;
          LODWORD(v22) = *(v21 + 24);
          *(v21 + 24) = *v18;
          *v18 = v22;
          ++*(a1 + 8);
          MEMORY[0x277C69E30](0, 8);
        }

        v18 += 8;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 64;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_back<llvm::orc::JITDylib::EmissionDepUnit **&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v11);
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

void std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_front<llvm::orc::JITDylib::EmissionDepUnit **&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (!*(result + 1))
  {
    return result;
  }

  v3 = result[4];
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_23:
      *(v1 + 1) = 0;
      return result;
    }

    v10 = *result;
    v11 = 32 * v3;
    while (1)
    {
      if (*v10 == -8192)
      {
        goto LABEL_21;
      }

      if (*v10 != -4096)
      {
        break;
      }

LABEL_22:
      v10 += 4;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    result = MEMORY[0x277C69E30](v10[1], 8);
LABEL_21:
    *v10 = -4096;
    goto LABEL_22;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(result);
  if (!v2)
  {
    if (v1[4])
    {
      result = MEMORY[0x277C69E30](*v1, 8);
      *v1 = 0;
      *(v1 + 1) = 0;
      v1[4] = 0;
      return result;
    }

    goto LABEL_23;
  }

  v4 = 1 << (33 - __clz(v2 - 1));
  if (v4 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == v1[4])
  {
    v6 = 0;
    *(v1 + 1) = 0;
    v7 = vdupq_n_s64((v5 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
    v8 = (*v1 + 32);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
      if (v9.i8[0])
      {
        *(v8 - 4) = -4096;
      }

      if (v9.i8[4])
      {
        *v8 = -4096;
      }

      v6 += 2;
      v8 += 8;
    }

    while (((v5 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((v5 - 1) & 1) + 2 != v6);
  }

  else
  {
    MEMORY[0x277C69E30](*v1, 8);
    v12 = (4 * v5 / 3 + 1) | ((4 * v5 / 3 + 1) >> 1);
    v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
    LODWORD(v13) = (((v13 | (v13 >> 8)) >> 16) | v13 | (v13 >> 8)) + 1;
    v1[4] = v13;
    result = operator new(32 * v13, 8uLL);
    *v1 = result;
    *(v1 + 1) = 0;
    v14 = v1[4];
    if (v14)
    {
      v15 = 0;
      v16 = v14 + 0x7FFFFFFFFFFFFFFLL;
      v17 = v16 & 0x7FFFFFFFFFFFFFFLL;
      v18 = (v16 & 0x7FFFFFFFFFFFFFFLL) - (v16 & 1) + 2;
      v19 = vdupq_n_s64(v17);
      v20 = result + 8;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v15), xmmword_2750C1210)));
        if (v21.i8[0])
        {
          *(v20 - 4) = -4096;
        }

        if (v21.i8[4])
        {
          *v20 = -4096;
        }

        v15 += 2;
        v20 += 8;
      }

      while (v18 != v15);
    }
  }

  return result;
}

uint64_t std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = (v3 >> 6) & 0x3FFFFFFFFFFFFF8;
    v5 = (v2 + v4);
    v6 = v3 & 0x1FF;
    v7 = (*(v2 + v4) + 8 * v6);
    v8 = a2[5] + v3;
    v9 = (v8 >> 6) & 0x3FFFFFFFFFFFFF8;
    if ((*(v2 + v9) + 8 * (v8 & 0x1FF)) != v7)
    {
      v10 = v8 & 0x1FF | ((v9 - v4) << 6);
      v11 = v10 - v6;
      if (v10 != v6)
      {
        if (((v11 + 1) & 0x1FF) != 0)
        {
          v12 = ((v11 + 1) >> 9) + 1;
        }

        else
        {
          v12 = (v11 + 1) >> 9;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v12);
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v11 + (-MEMORY[0] >> 3);
        if (v16 < 1)
        {
          v18 = 511 - v16;
          LOWORD(v16) = ~(511 - v16);
          v17 = -8 * (v18 >> 9);
        }

        else
        {
          v17 = 8 * (v16 >> 9);
        }

        v19 = *v17 + 8 * (v16 & 0x1FF);
        if (v19)
        {
          do
          {
            v20 = v19;
            if (v15 != v17)
            {
              v20 = *v15 + 4096;
            }

            if (v13 == v20)
            {
              v20 = v13;
            }

            else
            {
              v21 = v13;
              do
              {
                v22 = *v7++;
                *v21++ = v22;
                if ((v7 - *v5) == 4096)
                {
                  v23 = v5[1];
                  ++v5;
                  v7 = v23;
                }
              }

              while (v21 != v20);
            }

            v14 += (v20 - v13) >> 3;
            if (v15 == v17)
            {
              break;
            }

            v24 = v15[1];
            ++v15;
            v13 = v24;
          }

          while (v24 != v19);
          *(a1 + 40) = v14;
        }
      }
    }
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, v8);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v6 = 0;
    *v6 = *a2;
    *a2 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  return v5;
}

uint64_t *std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::__emplace_unique_key_args<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, v8);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v6 = 0;
    *v6 = *a2;
    *a2 = 0;
    *(v6 + 7) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 1) = 0u;
  }

  return v5;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::erase(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), a2, &v4))
  {
    *v4 = -16;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::clear(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *(result + 4);
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v4;
      }

LABEL_10:
      if (v5 == v3)
      {
        v6 = 0;
        *(result + 1) = 0;
        v7 = v3 + 0x1FFFFFFFFFFFFFFFLL;
        v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
        v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
        v10 = vdupq_n_s64(v8);
        v11 = (*result + 8);
        do
        {
          v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
          if (v12.i8[0])
          {
            *(v11 - 1) = -4096;
          }

          if (v12.i8[4])
          {
            *v11 = -4096;
          }

          v6 += 2;
          v11 += 2;
        }

        while (v9 != v6);
      }

      else
      {
        result = MEMORY[0x277C69E30](*result, 8);
        if (v5)
        {
          v20 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
          v21 = v20 | (v20 >> 2) | ((v20 | (v20 >> 2)) >> 4);
          LODWORD(v21) = (((v21 | (v21 >> 8)) >> 16) | v21 | (v21 >> 8)) + 1;
          *(v1 + 4) = v21;
          result = operator new(8 * v21, 8uLL);
          *v1 = result;
          *(v1 + 1) = 0;
          v22 = *(v1 + 4);
          if (v22)
          {
            v23 = 0;
            v24 = v22 + 0x1FFFFFFFFFFFFFFFLL;
            v25 = v24 & 0x1FFFFFFFFFFFFFFFLL;
            v26 = (v24 & 0x1FFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
            v27 = vdupq_n_s64(v25);
            v28 = result + 8;
            do
            {
              v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
              if (v29.i8[0])
              {
                *(v28 - 1) = -4096;
              }

              if (v29.i8[4])
              {
                *v28 = -4096;
              }

              v23 += 2;
              v28 += 16;
            }

            while (v26 != v23);
          }
        }

        else
        {
          *v1 = 0;
          *(v1 + 1) = 0;
          *(v1 + 4) = 0;
        }
      }

      return result;
    }
  }

  else
  {
    if (!*(result + 3))
    {
      return result;
    }

    v3 = *(result + 4);
    if (v3 > 0x40)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v13 = 0;
    v14 = v3 + 0x1FFFFFFFFFFFFFFFLL;
    v15 = v14 & 0x1FFFFFFFFFFFFFFFLL;
    v16 = (v14 & 0x1FFFFFFFFFFFFFFFLL) - (v14 & 1) + 2;
    v17 = vdupq_n_s64(v15);
    v18 = (*result + 8);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_2750C1210)));
      if (v19.i8[0])
      {
        *(v18 - 1) = -4096;
      }

      if (v19.i8[4])
      {
        *v18 = -4096;
      }

      v13 += 2;
      v18 += 2;
    }

    while (v16 != v13);
  }

  *(result + 1) = 0;
  return result;
}

uint64_t *llvm::Expected<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>>::~Expected(uint64_t *a1)
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
    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(a1, a1[1]);
  }

  return a1;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::shrink_and_clear(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  if (v2)
  {
    v4 = *result;
    v5 = 16 * v2;
    do
    {
      if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  if (v3)
  {
    v6 = 1 << (33 - __clz(v3 - 1));
    if (v6 <= 64)
    {
      v7 = 64;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(result + 4);
    result = *result;
    if (v7 == v8)
    {
      v9 = 0;
      *(v1 + 1) = 0;
      v10 = vdupq_n_s64((v7 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v9), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -8;
        }

        if (v12.i8[4])
        {
          *v11 = -8;
        }

        v9 += 2;
        v11 += 32;
      }

      while (((v7 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v7 - 1) & 1) + 2 != v9);
      return result;
    }
  }

  else
  {
    if (!*(result + 4))
    {
      *(result + 1) = 0;
      return result;
    }

    v7 = 0;
    result = *result;
  }

  MEMORY[0x277C69E30](result, 8);

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::init(v1, v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::try_emplace<llvm::JITSymbolFlags const&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::JITSymbolFlags const&>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::JITSymbolFlags const&>(uint64_t a1, void *a2, uint64_t *a3, _WORD *a4)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *a3;
  *result = *a3;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v7 + 8), 1uLL);
  }

  result[4] = *a4;
  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::erase(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), a2, &v4))
  {
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void llvm::orc::GDBJITDebugInfoRegistrationPlugin::Create(llvm::orc::GDBJITDebugInfoRegistrationPlugin *this, llvm::orc::ExecutionSession *a3, llvm::orc::JITDylib *a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 11);
  if (v6 == 5)
  {
    v7 = "_llvm_orc_registerJITLoaderGDBAllocAction";
  }

  else
  {
    v7 = "llvm_orc_registerJITLoaderGDBAllocAction";
  }

  if (v6 == 5)
  {
    v8 = 41;
  }

  else
  {
    v8 = 40;
  }

  llvm::orc::ExecutionSession::intern(this, v7, v8, &v10);
  v11[0] = a3;
  v9 = v10;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFE0)
  {
    atomic_fetch_add(v10 + 1, 1uLL);
    llvm::orc::ExecutionSession::lookup(this, v11, 1uLL, &v9);
  }

  llvm::orc::ExecutionSession::lookup(this, v11, 1uLL, &v9);
}

void llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 180) == 5)
  {
    v4 = *(a3 + 160);
    v5 = v4 == 38 || v4 == 3;
    if (v5 && *(a3 + 208))
    {
      v6 = *(a3 + 216);
      if (v6)
      {
        v7 = 24 * v6;
        for (i = *(a3 + 200); *i >= 0xFFFFFFFFFFFFFFFELL; i += 3)
        {
          v7 -= 24;
          if (!v7)
          {
            return;
          }
        }
      }

      else
      {
        i = *(a3 + 200);
      }

      v9 = *(a3 + 200) + 24 * v6;
      if (i != v9)
      {
LABEL_15:
        v10 = i[2];
        if (*(v10 + 8) >= 8uLL && **v10 == 0x2C46524157445F5FLL)
        {
          operator new();
        }

        while (1)
        {
          i += 3;
          if (i == v9)
          {
            break;
          }

          if (*i < 0xFFFFFFFFFFFFFFFELL)
          {
            if (i != v9)
            {
              goto LABEL_15;
            }

            return;
          }
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EC0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::~MachODebugObjectSynthesizer(uint64_t a1)
{
  *a1 = &unk_2883EC0D8;
  v2 = *(a1 + 504);
  if (v2 != (a1 + 520))
  {
    free(v2);
  }

  v3 = *(a1 + 232);
  if (v3 != (a1 + 248))
  {
    free(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    *(a1 + 216) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(a1 + 152, *(a1 + 160));
  v6 = *(a1 + 128);
  if (v6)
  {
    *(a1 + 136) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 96);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__list_imp<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment>>::clear((a1 + 72));
  return a1;
}

void anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::~MachODebugObjectSynthesizer(uint64_t a1)
{

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::completeSynthesisAndRegister(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v4 = *(a1 + 512);
    if (v4)
    {
      v5 = *(a1 + 504);
      v6 = &v5[2 * v4];
      do
      {
        llvm::jitlink::SectionRange::SectionRange(&v30, *v5);
        v7 = v30;
        if (v30)
        {
          v8 = *v30;
        }

        else
        {
          v8 = 0;
        }

        v9 = v5[1];
        *(v9 + 32) = v8;
        v10 = v31;
        if (v31)
        {
          v10 = (*(v31 + 4) + *v31);
        }

        if (v7)
        {
          *(v9 + 40) = &v10[-*v7];
          LODWORD(v7) = *v7;
        }

        else
        {
          *(v9 + 40) = v10;
        }

        *(v9 + 48) = v7;
        v5 += 2;
      }

      while (v5 != v6);
    }

    v11 = *(a1 + 240);
    if (v11)
    {
      v12 = *(a1 + 232);
      v13 = &v12[2 * v11];
      do
      {
        if (*(*v12 + 40) != 1)
        {
          getErrorErrorCat();
          operator new();
        }

        v14 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*v12 + 32);
        v15 = *(*v14 + 32);
        v16 = v12[1];
        *(v16 + 104) = *(*v14 + 24);
        *(v16 + 112) = v15;
        *(v16 + 64) |= 0x2000000u;
        v12 += 2;
      }

      while (v12 != v13);
    }

    v17 = *(a1 + 208);
    v18 = *(a1 + 216);
    while (v17 != v18)
    {
      v19 = *v17;
      *(*(v17[1] + 8) + 16 * v17[2] + 8) = (*(*v17 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v17 + 8);
      *(*(v17[3] + 8) + 16 * v17[4] + 8) = *(v19 + 24);
      v17 += 5;
    }

    llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::write(a1 + 32, *(*(a1 + 24) + 24), *(*(a1 + 24) + 32));
    llvm::jitlink::SectionRange::SectionRange(&v26, *(*(a1 + 24) + 16));
    if (v26)
    {
      v20 = *v26;
    }

    else
    {
      v20 = 0;
    }

    if (v27)
    {
      v21 = v27[4] + *v27;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    v43 = v45;
    v44 = xmmword_2750C12E0;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v43, 0x11uLL);
    v24 = v44;
    if (v44 < 8 || (v25 = v43, *v43 = v20, (v24 & 0xFFFFFFFFFFFFFFF8) == 8) || (v25[1] = v21, v24 == 16))
    {
      getErrorErrorCat();
      v30 = 3;
      v31 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    *(v25 + 16) = 1;
    v40 = v42;
    v41 = xmmword_2750C12E0;
    if (v44)
    {
      llvm::SmallVectorImpl<char>::operator=(&v40, &v43);
      v30 = v23;
      v31 = v33;
      v32 = xmmword_2750C12E0;
      if (v41)
      {
        llvm::SmallVectorImpl<char>::operator=(&v31, &v40);
      }
    }

    else
    {
      v30 = v23;
      v31 = v33;
      v32 = xmmword_2750C12E0;
    }

    llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(&v28, &v30);
    if (v31 != v33)
    {
      free(v31);
    }

    if (v40 != v42)
    {
      free(v40);
    }

    if (v43 != v45)
    {
      free(v43);
    }

    v30 = v28;
    v31 = v33;
    v32 = xmmword_2750C12E0;
    if (v29[1])
    {
      llvm::SmallVectorImpl<char>::operator=(&v31, v29);
    }

    v34 = 0;
    v36 = 0;
    v39 = 0;
    v38 = 0u;
    v35 = &v38;
    v37 = 24;
    std::vector<llvm::orc::shared::AllocActionCallPair>::push_back[abi:nn200100](v22 + 272, &v30);
    if (v35 != &v38)
    {
      free(v35);
    }

    if (v31 != v33)
    {
      free(v31);
    }

    llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v28);
  }

  *a2 = 0;
}

void std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__list_imp<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t **llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::addSymbol(uint64_t **a1, const char *a2, uint64_t a3, char a4, char a5)
{
  v10 = a1[17];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3 == 0;
  }

  if (!v11)
  {
    *(&v24 + 1) = 0;
    v25 = 0;
    *&v24 = "";
    std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>(a1 + 15, &v24, &v24);
    v10 = a1[17];
  }

  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = v10;
  v12 = *(std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>(a1 + 15, &v24, &v24) + 12);
  v13 = a1[13];
  v14 = a1[14];
  if (v13 >= v14)
  {
    v16 = a1[12];
    v17 = v13 - v16;
    v18 = (v13 - v16) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v20 = v14 - v16;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 60))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v22 = 16 * v18;
    *v22 = v12;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    *(v22 + 6) = 0;
    *(v22 + 8) = 0;
    v15 = 16 * v18 + 16;
    memcpy(0, v16, v17);
    a1[12] = 0;
    a1[13] = v15;
    a1[14] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v13 = v12;
    *(v13 + 4) = a4;
    *(v13 + 5) = a5;
    *(v13 + 3) = 0;
    v15 = (v13 + 2);
    v13[1] = 0;
  }

  a1[13] = v15;
  return a1 + 11;
}

unint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::layout(uint64_t a1)
{
  llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::makeStringTable(a1);
  if (*(a1 + 144) != *(a1 + 152))
  {
    llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::addLoadCommand<(llvm::MachO::LoadCommandType)2>(a1);
  }

  v2 = (a1 + 40);
  v3 = *(a1 + 48);
  v4 = 32;
  if (v3 != a1 + 40)
  {
    do
    {
      v5 = (*(v3 + 112) - *(v3 + 104)) >> 3;
      v6 = (*(v3 + 28) + 80 * v5);
      *(v3 + 28) = v6;
      *(v3 + 88) = v5;
      v4 += v6;
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  while (v7 != v8)
  {
    v9 = *v7++;
    v4 += (*(*v9 + 16))(v9);
  }

  *(a1 + 20) = v4 - 32;
  v10 = *(a1 + 48);
  if (v10 == v2)
  {
    result = v4;
  }

  else
  {
    v11 = 0;
    v12 = *(a1 + 12);
    v13 = *(a1 + 48);
    result = v4;
    do
    {
      v13[6] = v11;
      v13[8] = v4;
      v15 = v13[13];
      v16 = v13[14];
      if (v15 != v16)
      {
        result = v4;
        do
        {
          v17 = *v15;
          v18 = 1 << *(*v15 + 52);
          v19 = (result + v18 - 1) & -v18;
          v20 = *(*v15 + 112);
          if (v20)
          {
            v21 = v19;
            *(v17 + 48) = v19;
          }

          else
          {
            v21 = *(v17 + 48);
          }

          *(v17 + 32) = v11 - v4 + v21;
          *(v17 + 40) = v20;
          result = v19 + v20;
          ++v15;
        }

        while (v15 != v16);
      }

      v22 = result - v4;
      v13[9] = result - v4;
      if (v12 != 1)
      {
        v22 = (v22 + *(a1 + 32) - 1) / *(a1 + 32) * *(a1 + 32);
      }

      v13[7] = v22;
      v11 += v22;
      v13 = v13[1];
      v4 = result;
    }

    while (v13 != v2);
  }

  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  if (v23 != v24)
  {
    v25 = *(a1 + 144);
    v26 = *(a1 + 96);
    do
    {
      *v26 = *(v25 + 24 * *v26 + 16);
      v26 += 16;
    }

    while (v26 != v24);
  }

  v27 = (v24 - v23) >> 4;
  if (v10 != v2)
  {
    v28 = 0;
    v29 = v10;
    do
    {
      v30 = v29[13];
      v31 = v29[14];
      while (v30 != v31)
      {
        ++v28;
        v32 = *v30;
        v32[15] = v28;
        v32[16] = v27;
        v34 = v32[17];
        v33 = v32[18];
        v35 = v33 - v34;
        if (v33 != v34)
        {
          v36 = *(a1 + 144);
          v37 = v32[4];
          do
          {
            *(v34 + 5) = v28;
            *v34 = *(v36 + 24 * *v34 + 16);
            *(v34 + 1) += v37;
            v34 += 4;
          }

          while (v34 != v33);
        }

        v27 += v35 >> 4;
        ++v30;
      }

      v29 = v29[1];
    }

    while (v29 != v2);
    v38 = 0;
    do
    {
      v39 = v10[13];
      v40 = v10[14];
      while (v39 != v40)
      {
        v41 = *v39;
        v42 = *(*v39 + 160);
        v43 = *(*v39 + 168);
        if (v42 != v43)
        {
          if (v38)
          {
            v44 = result;
          }

          else
          {
            v44 = (result + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3);
          *(v41 + 56) = v44;
          *(v41 + 60) = v45;
          do
          {
            v47 = *(v42 + 8);
            v46 = *(v42 + 16);
            if (v46 == 0xFFFFFFFFLL)
            {
              v48 = v47[15];
            }

            else
            {
              v48 = *v47 + v46;
            }

            *(v42 + 4) = v48 & 0xFFFFFF | (*(v42 + 7) << 24);
            v42 += 24;
          }

          while (v42 != v43);
          result = v44 + 8 * v45;
          v38 = 1;
        }

        ++v39;
      }

      v10 = v10[1];
    }

    while (v10 != v2);
  }

  if (v27)
  {
    result = (result + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x10] = result;
    MEMORY[0x14] = v27;
    v49 = *(a1 + 152);
    if (*(a1 + 144) != v49)
    {
      v50 = result + 16 * v27;
      v51 = *(v49 - 8) + *(v49 - 16) + 1;
      MEMORY[0x18] = v50;
      MEMORY[0x1C] = v51;
      return v51 + v50;
    }
  }

  return result;
}

void *llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::~Segment(void *a1)
{
  *a1 = &unk_2883EC108;
  v3 = (a1 + 11);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  return a1;
}

void llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::~Segment(void *a1)
{
  *a1 = &unk_2883EC108;
  v1 = (a1 + 11);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v21 = *(a1 + 16);
  v8 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (a5)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev64q_s8(v6);
    v8 = vrev64q_s8(v8);
    v7 = vrev32q_s8(v7);
  }

  v9 = a2 + a4;
  *v9 = v5;
  *(v9 + 8) = v21;
  *(v9 + 24) = v6;
  *(v9 + 40) = v8;
  *(v9 + 56) = v7;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  while (v10 != v11)
  {
    v12 = *v10;
    v14 = (*v10)[2];
    v13 = (*v10)[3];
    v15 = *(*v10)[4].i8;
    v16 = (*v10)[4].u32[2];
    if (a5)
    {
      v14 = vrev64q_s8(v14);
      v13 = vrev32q_s8(v13);
      v15 = vrev32_s8(v15);
      v16 = bswap32(v16);
    }

    v17 = v12[4].i32[3];
    v18 = a2 + a4;
    v19 = *v12;
    *(v18 + 88) = v12[1];
    *(v18 + 72) = v19;
    *(v18 + 104) = v14;
    *(v18 + 120) = v13;
    *(v18 + 136) = v15;
    *(v18 + 144) = v16;
    *(v18 + 148) = v17;
    ++v10;
    a4 += 80;
  }

  return a4 + 72;
}

void std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[20];
    if (v3)
    {
      v2[21] = v3;
      operator delete(v3);
    }

    v4 = v2[17];
    if (v4)
    {
      v2[18] = v4;
      operator delete(v4);
    }

    MEMORY[0x277C69E40](v2, 0x1072C4036453466);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>(uint64_t **a1, __int128 *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      v7 = v3[4];
      v8 = v3[5];
      v12 = *a2;
      if ((llvm::StringRef::compare(&v12, v7, v8) & 0x80000000) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    v9 = *a2;
    v10 = *(a2 + 1);
    v12 = *(v6 + 2);
    if ((llvm::StringRef::compare(&v12, v9, v10) & 0x80000000) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::makeStringTable(void *result)
{
  v1 = result[17];
  if (v1)
  {
    std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::resize(result + 18, v1);
    v3 = result[15];
    if (v3 != result + 16)
    {
      do
      {
        v4 = result[18] + 24 * v3[6];
        *v4 = *(v3 + 2);
        *(v4 + 16) = 0;
        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != result + 16);
    }

    v8 = result[18];
    v9 = result[19];
    if (v8 != v9)
    {
      v10 = 0;
      do
      {
        *(v8 + 16) = v10;
        v10 += *(v8 + 8) + 1;
        v8 += 24;
      }

      while (v8 != v9);
    }
  }
}

void std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::orc::MachOBuilderLoadCommandImplBase<(llvm::MachO::LoadCommandType)2>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = vrev32q_s8(v5);
  v8 = vrev32_s8(v6);
  if (a5)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = a2 + a4;
  *v11 = vbslq_s8(v10, v7, v5);
  *(v11 + 16) = vbsl_s8(*v10.i8, v8, v6);
  return a4 + 24;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

char *llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = ((*(a1 + 72) - *(a1 + 64)) >> 3) + *(a1 + 56);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  v7 = a1 + 40;
  v8 = *(a1 + 48);
  v9 = 32;
  while (v8 != v7)
  {
    v11 = *(v8 + 16);
    v10 = v8 + 16;
    v9 = (*(v11 + 24))(v10, a2, a3, v9, 0);
    v8 = *(v10 - 8);
  }

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  while (v12 != v13)
  {
    v14 = *v12++;
    v9 = (*(*v14 + 24))(v14, a2, a3, v9, 0);
  }

  v15 = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSectionContent(a1, a2, a3, v9);
  v16 = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeRelocations(a1, a2, a3, v15);
  result = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSymbols(a1, a2, a3, v16);
  v19 = *(a1 + 144);
  v18 = *(a1 + 152);
  if (v19 != v18)
  {
    v20 = result;
    do
    {
      result = memcpy(&v20[a2], *v19, *(v19 + 8));
      v21 = &v20[*(v19 + 8)];
      v20 = v21 + 1;
      v21[a2] = 0;
      v19 += 24;
    }

    while (v19 != v18);
  }

  return result;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSectionContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 40);
  v6 = *(a1 + 48);
  if (v6 != (a1 + 40))
  {
    do
    {
      v8 = v6[13];
      v9 = v6[14];
      while (v8 != v9)
      {
        v10 = *v8;
        v11 = *(*v8 + 104);
        if (v11)
        {
          if (a4 != *(v10 + 48))
          {
            do
            {
              *(a2 + a4++) = 0;
              v10 = *v8;
            }

            while (a4 != *(*v8 + 48));
            v11 = *(v10 + 104);
          }

          memcpy((a2 + a4), v11, *(v10 + 112));
          a4 += *(*v8 + 112);
        }

        ++v8;
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  return a4;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeRelocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 40);
  v6 = *(a1 + 48);
  if (v6 != (a1 + 40))
  {
    do
    {
      v8 = v6[13];
      v9 = v6[14];
      while (v8 != v9)
      {
        v10 = *(*v8 + 160);
        v11 = *(*v8 + 168);
        v12 = a4 & 7;
        if (v10 != v11 && v12 != 0)
        {
          bzero((a2 + a4), 8 - v12);
          a4 -= a4 | 0xFFFFFFFFFFFFFFF8;
          v10 = *(*v8 + 160);
          v11 = *(*v8 + 168);
        }

        while (v10 != v11)
        {
          v14 = *v10;
          v10 += 3;
          *(a2 + a4) = v14;
          a4 += 8;
        }

        v8 += 8;
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  return a4;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSymbols(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1[12];
  v8 = a1[13];
  v9 = v8 - v7;
  v10 = a1 + 5;
  for (i = a1[6]; i != v10; i = i[1])
  {
    for (j = i[13]; j != i[14]; ++j)
    {
      v13 = *j;
      v9 += (*(v13 + 144) - *(v13 + 136)) >> 4;
    }
  }

  if (v9)
  {
    if ((a4 & 0xF) != 0)
    {
      bzero((a2 + a4), 16 - (a4 & 0xF));
      v4 = (v4 | 0xF) + 1;
      v7 = a1[12];
      v8 = a1[13];
    }

    while (v7 != v8)
    {
      v14 = *v7++;
      *(a2 + v4) = v14;
      v4 += 16;
    }

    for (k = a1[6]; k != v10; k = k[1])
    {
      v16 = k[13];
      v17 = k[14];
      while (v16 != v17)
      {
        v18 = *(*v16 + 136);
        v19 = *(*v16 + 144);
        while (v18 != v19)
        {
          v20 = *v18++;
          *(a2 + v4) = v20;
          v4 += 16;
        }

        v16 += 8;
      }
    }
  }

  return v4;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(uint64_t *a1@<X0>, void *a2@<X8>, unint64_t *a3@<X3>)
{
  v4 = *a1;
  if (!llvm::jitlink::LinkGraph::findSectionByName(*(*a1 + 8), "__jitlink_synth_debug_object", 28, a3))
  {
    v5 = *(v4 + 8);
    if (*(v5 + 208))
    {
      v6 = *(v5 + 200);
      v7 = *(v5 + 216);
      if (v7)
      {
        v8 = 24 * v7;
        v9 = v6;
        while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v9 += 3;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v9 = v6;
      }

      v10 = &v6[3 * v7];
      if (v9 != v10)
      {
        v11 = &v33;
LABEL_12:
        v12 = v9[2];
        if (*(v12 + 8) >= 8uLL && **v12 == 0x2C46524157445F5FLL)
        {
          v28 = v11;
          v29 = v11;
          v30 = v11;
          v31 = 8;
          v32 = 0;
          v13 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v12 + 56);
          v15 = *(v12 + 56) + 8 * *(v12 + 72);
          if (v15 != v13)
          {
            v16 = v13;
            v17 = v14;
            do
            {
              v18 = *v16;
              llvm::SmallPtrSetImplBase::insert_imp(&v29, *(*v16 + 8));
              if (v19)
              {
                *(v18 + 16) |= 0x1000000000000000uLL;
              }

              do
              {
                ++v16;
              }

              while (v16 != v17 && (*v16 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v16 != v15);
          }

          v20 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v12 + 32);
          v22 = *(v12 + 32) + 8 * *(v12 + 48);
          if (v22 != v20)
          {
            v23 = v20;
            v24 = v21;
            do
            {
              v25 = *v23;
              imp = llvm::SmallPtrSetImplBase::find_imp(&v29, *v23);
              if (v30 == v29)
              {
                v27 = (&v31 + 4);
              }

              else
              {
                v27 = &v31;
              }

              if (imp == &v30[*v27])
              {
                llvm::jitlink::LinkGraph::addAnonymousSymbol(*(v4 + 8), v25, 0, 0, 0, 1);
              }

              do
              {
                ++v23;
              }

              while (v23 != v24 && (*v23 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v23 != v22);
          }

          if (v30 != v29)
          {
            free(v30);
          }

          v11 = v28;
        }

        while (1)
        {
          v9 += 3;
          if (v9 == v10)
          {
            break;
          }

          if (*v9 < 0xFFFFFFFFFFFFFFFELL)
          {
            if (v9 != v10)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }
    }
  }

LABEL_2:
  *a2 = 0;
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_1>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_1>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_2>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_2>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 123);
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 123;
  }

  v5 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(a2);
  v7 = *a2 + 8 * *(a2 + 16);
  if (v7 != v5)
  {
    v8 = v5;
    v9 = v6;
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = *(this + 4);
        if (v11 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 44);
        }

        else
        {
          *(this + 4) = v11 + 1;
          *v11 = 44;
        }
      }

      v12 = *(this + 4);
      if (v12 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 32);
      }

      else
      {
        *(this + 4) = v12 + 1;
        *v12 = 32;
      }

      v13 = *v8++;
      llvm::raw_ostream::operator<<(this, v13 + 2, *v13);
      while (v8 != v9 && (*v8 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        ++v8;
      }

      v10 = 1;
    }

    while (v8 != v7);
  }

  v14 = *(this + 4);
  if (v14 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 32);
  }

  else
  {
    *(this + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = *(this + 4);
  if (v15 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 125);
  }

  else
  {
    *(this + 4) = v15 + 1;
    *v15 = 125;
  }

  return this;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *this, size_t ***a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 91);
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 91;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        v8 = *(this + 4);
        if (v8 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 44);
        }

        else
        {
          *(this + 4) = v8 + 1;
          *v8 = 44;
        }
      }

      v9 = *(this + 4);
      if (v9 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 32);
      }

      else
      {
        *(this + 4) = v9 + 1;
        *v9 = 32;
      }

      v10 = *v6++;
      llvm::raw_ostream::operator<<(this, v10 + 2, *v10);
      v7 = 1;
    }

    while (v6 != v5);
  }

  v11 = *(this + 4);
  if (v11 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 32);
  }

  else
  {
    *(this + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = *(this + 4);
  if (v12 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 93);
  }

  else
  {
    *(this + 4) = v12 + 1;
    *v12 = 93;
  }

  return this;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *result)
{
  v1 = *(result + 4);
  if (v1 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 123);
  }

  else
  {
    *(result + 4) = v1 + 1;
    *v1 = 123;
  }

  v2 = *(result + 4);
  if (v2 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 32);
  }

  else
  {
    *(result + 4) = v2 + 1;
    *v2 = 32;
  }

  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    return llvm::raw_ostream::write(result, 125);
  }

  *(result + 4) = v3 + 1;
  *v3 = 125;
  return result;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (*(a1 + 3) == v3)
  {
    a1 = llvm::raw_ostream::write(a1, "(", 1uLL);
  }

  else
  {
    *v3 = 40;
    ++*(a1 + 4);
  }

  v4 = *(*a2 + 31);
  if (v4 >= 0)
  {
    v5 = (*a2 + 8);
  }

  else
  {
    v5 = *(*a2 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(*a2 + 31);
  }

  else
  {
    v6 = *(*a2 + 16);
  }

  v7 = llvm::raw_ostream::write(a1, v5, v6);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8236;
    *(v7 + 4) += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ", ", 2uLL);
  }

  result = llvm::orc::operator<<(v7, a2 + 8);
  v10 = *(result + 4);
  if (*(result + 3) == v10)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v10 = 41;
  ++*(result + 4);
  return result;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *result, uint64_t a2)
{
  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 123);
  }

  else
  {
    *(result + 4) = v3 + 1;
    *v3 = 123;
  }

  if (*(a2 + 8))
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 32 * v5;
      v7 = *a2;
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v7 = *a2;
    }

    v8 = &v4[4 * v5];
    if (v7 != v8)
    {
      v9 = 0;
LABEL_13:
      if (v9)
      {
        v10 = *(result + 4);
        if (v10 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 44);
        }

        else
        {
          *(result + 4) = v10 + 1;
          *v10 = 44;
        }
      }

      v11 = *(result + 4);
      if (v11 >= *(result + 3))
      {
        result = llvm::raw_ostream::write(result, 32);
      }

      else
      {
        *(result + 4) = v11 + 1;
        *v11 = 32;
      }

      result = llvm::orc::operator<<(result, v7);
      while (1)
      {
        v7 += 4;
        if (v7 == v8)
        {
          break;
        }

        if ((*v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v9 = 1;
          if (v7 != v8)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }
  }

LABEL_24:
  v12 = *(result + 4);
  if (v12 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 32);
  }

  else
  {
    *(result + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = *(result + 4);
  if (v13 >= *(result + 3))
  {
    return llvm::raw_ostream::write(result, 125);
  }

  *(result + 4) = v13 + 1;
  *v13 = 125;
  return result;
}

void *llvm::orc::EPCDynamicLibrarySearchGenerator::Load@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = (*(**(*(a1 + 72) + 128) + 16))(&v8);
  if ((v9 & 1) == 0)
  {
    operator new();
  }

  v7 = v8;
  *(a5 + 8) |= 1u;
  *a5 = v7;
  return result;
}

void llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t **a5@<X5>, void *a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3 == 1 || (v7 = a5[1], v8 = *a5, *a5 == v7))
  {
    *a6 = 0;
  }

  else
  {
    v11 = (a1 + 152);
    if (*(a1 + 144))
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      do
      {
        v13 = *(a1 + 176);
        if (v13 < 8)
        {
          goto LABEL_9;
        }

        v14 = v11;
        if ((v13 & 2) == 0)
        {
          v14 = *v11;
        }

        if ((*(v13 & 0xFFFFFFFFFFFFFFF8))(v14, v8))
        {
LABEL_9:
          v15 = *v8;
          v30 = v15;
          if ((v15 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v15 + 8), 1uLL);
          }

          llvm::orc::SymbolLookupSet::add(&v31, &v30, 1);
          if ((v30 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v8 += 2;
      }

      while (v8 != v7);
      v16 = *(a1 + 128);
      v29[0] = *(a1 + 136);
      v29[1] = &v31;
      v17 = *(v16 + 128);
      *&v26 = a1;
      *(&v26 + 1) = a4;
      v18 = *a2;
      *a2 = 0;
      v27 = v18;
      v28 = 0uLL;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__init_with_size[abi:nn200100]<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*>(&v27 + 1, v31, v32, (v32 - v31) >> 4);
      v36 = v26;
      v24 = v28;
      v25 = v27;
      v27 = 0uLL;
      v28 = 0uLL;
      v19 = operator new(0x30uLL, 8uLL);
      v39 = v38;
      v40 = v19;
      v41 = xmmword_2750C3F40;
      v37 = 0;
      v38[0] = 0;
      *v19 = v36;
      v19[1] = v25;
      v19[2] = v24;
      v38[1] = 0;
      v38[2] = 0;
      v42 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::CallbacksHolder<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0,llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0,void>::Callbacks + 4;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v39);
      v20 = v37;
      v37 = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      (*(*v17 + 24))(v17, v29, 1, &v40);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v40);
      *&v36 = &v27 + 8;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v36);
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      *a6 = 0;
      *&v36 = &v31;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v36);
    }

    else
    {
      v36 = 0uLL;
      LODWORD(v37) = 0;
      do
      {
        v21 = *(a1 + 176);
        v22 = v11;
        if ((v21 & 2) == 0)
        {
          v22 = *v11;
        }

        if ((*(v21 & 0xFFFFFFFFFFFFFFF8))(v22, v8))
        {
          v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v36, v8);
          v23[1] = 0;
          *(v23 + 8) = 0;
        }

        v8 += 2;
      }

      while (v8 != v7);
      v34 = v36;
      v36 = 0uLL;
      v35 = v37;
      LODWORD(v37) = 0;
      llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(a6, a1, a4, &v34);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v34);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v36);
    }
  }
}

uint64_t *llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 240) < 8uLL)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    operator new();
  }

  v4 = (a2 + 216);
  v7[0] = *a4;
  v7[1] = *(a4 + 8);
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = *(a4 + 16);
  *(a4 + 16) = 0;
  v5 = *(a2 + 240);
  if ((v5 & 2) == 0)
  {
    v4 = *v4;
  }

  (*(v5 & 0xFFFFFFFFFFFFFFF8))(v4, a3, v7);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v7);
}

void llvm::orc::EPCDynamicLibrarySearchGenerator::~EPCDynamicLibrarySearchGenerator(llvm::orc::EPCDynamicLibrarySearchGenerator *this)
{
  *this = &unk_2883EC168;
  v2 = (this + 152);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 27);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);

  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);
}

{
  *this = &unk_2883EC168;
  v2 = (this + 152);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 27);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);
  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::EPCDynamicLibrarySearchGenerator::EPCDynamicLibrarySearchGenerator(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  *a1 = &unk_2883EC168;
  *(a1 + 8) = 850045863;
  *(a1 + 128) = *(a2 + 72);
  *(a1 + 136) = a3;
  *(a1 + 144) = 1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 152, a4);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 184, a5);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 216, a6);
  return a1;
}

void **llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(llvm::orc::InProgressLookupState **a1, __int128 *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!(*(a2 + 24) & 1))
  {
    v27 = *(a2 + 2);
    v4 = *a2;
    *a2 = 0uLL;
    *(a2 + 2) = 0;
    v26 = v4;
    v5 = *a1;
    v23 = 0;
    memset(v24, 0, 12);
    v6 = a1[3];
    v7 = a1[4];
    if (v6 == v7)
    {
      goto LABEL_18;
    }

    v8 = *v4;
    do
    {
      if (*v8)
      {
        goto LABEL_7;
      }

      v11 = *(v5 + 26);
      if (v11 >= 8)
      {
        v12 = v5 + 184;
        if ((v11 & 2) == 0)
        {
          v12 = *(v5 + 23);
        }

        if ((*(v11 & 0xFFFFFFFFFFFFFFF8))(v12, v6))
        {
LABEL_7:
          v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v23, v6);
          v10 = *(v8 + 8);
          v9[1] = *v8;
          *(v9 + 8) = v10;
        }
      }

      v8 += 16;
      v6 += 2;
    }

    while (v6 != v7);
    if (!LODWORD(v24[0]))
    {
LABEL_18:
      v22 = 0;
      llvm::orc::LookupState::continueLookup(a1 + 2, &v22);
      v15 = v22;
      if (!v22)
      {
LABEL_20:
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v23);
        return llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(&v26);
      }
    }

    else
    {
      v13 = a1[1];
      v18 = v23;
      v19 = v24[0];
      v14 = *(v24 + 4);
      v23 = 0;
      memset(v24, 0, 12);
      v20 = v14;
      llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(&v21, v5, v13, &v18);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v18);
      v17 = v21;
      v21 = 0;
      llvm::orc::LookupState::continueLookup(a1 + 2, &v17);
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v15 = v21;
      if (!v21)
      {
        goto LABEL_20;
      }
    }

    (*(*v15 + 8))(v15);
    goto LABEL_20;
  }

  v3 = *a2;
  *a2 = 0;
  v25 = v3;
  *&v26 = 0;
  llvm::orc::LookupState::continueLookup(a1 + 2, &v25);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  return llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(&v26);
}

__n128 llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::DestroyImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v3);
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void **llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(void **a1)
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
    v4 = a1;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  return a1;
}

void std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t llvm::orc::EPCGenericDylibManager::CreateWithDefaultBootstrapSymbols@<X0>(llvm::orc::EPCGenericDylibManager *this@<X0>, uint64_t a2@<X8>)
{
  v13[9] = *MEMORY[0x277D85DE8];
  v11 = 0uLL;
  v5 = llvm::orc::rt::SimpleExecutorDylibManagerInstanceName;
  v12 = 0;
  v13[0] = &v11;
  v13[1] = llvm::orc::rt::SimpleExecutorDylibManagerInstanceName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerInstanceName)
  {
    v5 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerInstanceName);
  }

  v13[2] = v5;
  v13[3] = &v11 + 8;
  v6 = llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName;
  v13[4] = llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName)
  {
    v6 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName);
  }

  v13[5] = v6;
  v13[6] = &v12;
  v7 = llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName;
  v13[7] = llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName)
  {
    v7 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName);
  }

  v13[8] = v7;
  result = llvm::orc::ExecutorProcessControl::getBootstrapSymbols(this, v13, 3, &v10);
  v9 = v10;
  if (v10)
  {
    *(a2 + 32) |= 1u;
    this = v9;
  }

  else
  {
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) &= ~1u;
  }

  *a2 = this;
  return result;
}

void llvm::orc::EPCGenericDylibManager::open(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v10 = 0;
  v9 = 0;
  v5 = a1[2];
  v8[0] = *a1;
  v8[1] = v5;
  llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long),llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &>(llvm::orc::ExecutorAddr,llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &)::{lambda(char const*,unsigned long)#1},llvm::Expected<llvm::orc::ExecutorAddr>,llvm::orc::ExecutorAddr,llvm::StringRef,unsigned long long>(v8, &v9, a1 + 1, v7, &v6);
}

void *llvm::orc::EPCGenericDylibManager::lookupAsync(uint64_t a1, size_t a2, size_t ***a3, __int128 *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 24);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v35, a4);
  v9 = v7[3];
  v11 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
    v14 = 24;
  }

  else
  {
    v12 = 8;
    do
    {
      v13 = *v11;
      v11 += 16;
      v12 += *v13 + 9;
    }

    while (v11 != v10);
    v14 = v12 + 16;
    if ((v12 + 16) < 9)
    {
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v33, "Error serializing arguments to blob in call");
      goto LABEL_11;
    }
  }

  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v16 = v15;
  *v15 = *(a1 + 8);
  if ((v14 & 0xFFFFFFFFFFFFFFF8) == 8 || (v15[1] = a2, (v14 & 0xFFFFFFFFFFFFFFF8) == 0x10))
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v33, "Error serializing arguments to blob in call");
LABEL_10:
    free(v16);
    goto LABEL_11;
  }

  v32 = v8;
  v15[2] = (a3[1] - *a3) >> 4;
  v22 = *a3;
  v23 = a3[1];
  if (*a3 == v23)
  {
LABEL_32:
    v33 = v16;
    v34 = v14;
    v8 = v32;
    goto LABEL_11;
  }

  v24 = v14 - 24;
  v25 = v15 + 3;
  while (1)
  {
    v26 = v24 - 8;
    if (v24 < 8)
    {
      break;
    }

    v27 = (*v22 + 16);
    v28 = **v22;
    v29 = *(v22 + 2);
    *v25 = v28;
    v30 = (v25 + 1);
    if (v28)
    {
      v31 = v26 >= v28;
      v26 -= v28;
      if (!v31)
      {
        break;
      }

      memcpy(v30, v27, v28);
      v30 += v28;
    }

    if (!v26)
    {
      break;
    }

    *v30 = v29 == 0;
    v25 = (v30 + 1);
    v24 = v26 - 1;
    v22 += 16;
    if (v22 == v23)
    {
      goto LABEL_32;
    }
  }

  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v33, "Error serializing arguments to blob in call");
  v8 = v32;
  if (v14 > 8)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v34)
  {
    v37 = v33;
    if (v33)
    {
      getErrorErrorCat();
      v40 = 3;
      *&v41[0] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v36, &v35);
  v17 = v34;
  if (v34 <= 8)
  {
    v18 = &v33;
  }

  else
  {
    v18 = v33;
  }

  v40 = v9;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v41, v36);
  v42 = v40;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v43, v41);
  v44 = v42;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v45, &v43);
  v19 = operator new(0x28uLL, 8uLL);
  v37 = v19;
  v38 = xmmword_2750C12A0;
  *v19 = v44;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v19 + 1), &v45);
  v39 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSD_IJhhEEEEEEEEEESE_SE_NSC_INSD_IJNSC_IcEEbEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISM_S8_ZNS2_22EPCGenericDylibManager11lookupAsyncENS2_12ExecutorAddrERKNS2_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS2_17ExecutorSymbolDefENSX_9allocatorISZ_EEEEEEEEEE3__0JSR_SR_SS_EEEvOT0_SR_OT1_DpRKT2_EUlOT_PKcmE_S16_JSR_SR_SS_EEEvS1G_S18_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1G_EUlS4_E_S1Q_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v45);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v43);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v41);
  (*(*v7 + 40))(v7, v8, &v37, v18, v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v37);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v36);
  if (v34 >= 9)
  {
    v20 = v33;
LABEL_19:
    free(v20);
    return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v35);
  }

  if (!v34)
  {
    v20 = v33;
    if (v33)
    {
      goto LABEL_19;
    }
  }

  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v35);
}

void llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long),llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &>(llvm::orc::ExecutorAddr,llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &)::{lambda(char const*,unsigned long)#1},llvm::Expected<llvm::orc::ExecutorAddr>,llvm::orc::ExecutorAddr,llvm::StringRef,unsigned long long>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (*(a2 + 8))
  {
    *a2 = 0;
  }

  v10 = *(a4 + 8);
  v11 = v10 + 24;
  if ((v10 + 24) < 9)
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v20, "Error serializing arguments to blob in call");
    goto LABEL_13;
  }

  v12 = malloc_type_malloc(v10 + 24, 0x100004077774924uLL);
  v13 = v12;
  *v12 = *a3;
  if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF0)
  {
    v14 = *a4;
    v15 = *(a4 + 8);
    v12[1] = v15;
    v16 = v12 + 2;
    v17 = v10 + 8;
    if (v15)
    {
      v18 = v17 >= v15;
      v17 -= v15;
      if (!v18)
      {
        goto LABEL_12;
      }

      memcpy(v12 + 2, v14, v15);
      v16 = (v16 + v15);
    }

    if (v17 >= 8)
    {
      *v16 = *a5;
      v20 = v13;
      v21 = v11;
      goto LABEL_13;
    }
  }

LABEL_12:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v20, "Error serializing arguments to blob in call");
  free(v13);
LABEL_13:
  if (v21)
  {
    if (v21 <= 8)
    {
      v19 = &v20;
    }

    else
    {
      v19 = v20;
    }
  }

  else
  {
    if (v20)
    {
      getErrorErrorCat();
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v19 = &v20;
  }

  llvm::orc::ExecutorProcessControl::callWrapper(*a1, a1[1], v19, v21);
}

uint64_t llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSD_IJhhEEEEEEEEEESE_SE_NSC_INSD_IJNSC_IcEEbEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISM_S8_ZNS2_22EPCGenericDylibManager11lookupAsyncENS2_12ExecutorAddrERKNS2_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS2_17ExecutorSymbolDefENSX_9allocatorISZ_EEEEEEEEEE3__0JSR_SR_SS_EEEvOT0_SR_OT1_DpRKT2_EUlOT_PKcmE_S16_JSR_SR_SS_EEEvS1G_S18_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1G_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, (a1 + 1));
  v5[0] = v2;
  v5[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC190;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC190;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_E3runEv(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  *v11 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  if (v11[1])
  {
    if (v11[1] <= 8)
    {
      v3 = v11;
    }

    else
    {
      v3 = v11[0];
    }
  }

  else
  {
    v14 = v11[0];
    if (v11[0])
    {
      getErrorErrorCat();
      v12 = 3;
      v13 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v11;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<unsigned char,unsigned char>>>>,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::deserialize(&v15, &v16, v3, v11[1]);
  v4 = v15;
  if (v15)
  {
    v15 = 0;
    v21 = v18 & 1;
    if (v18)
    {
      v5 = 0;
    }

    else
    {
      v5 = v16;
      v20 = v17;
      v17 = 0uLL;
    }

    v16 = 0;
    v19 = v5;
    v24 = -1;
    v22 = v4;
    v7 = *(a1 + 32);
    if ((v7 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v7 & 0xFFFFFFFFFFFFFFF8))(v2, &v22);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v22);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v19);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  else
  {
    v21 = v18 & 1;
    v6 = v16;
    if (v18)
    {
      v16 = 0;
    }

    else
    {
      v8 = v17;
      v16 = 0;
      v17 = 0uLL;
      v23 = v8;
      v20 = 0uLL;
    }

    v19 = 0;
    v24 = v18 & 1;
    v22 = v6;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, &v22);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v22);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v19);
  }

  llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v16);
  if (v11[1] >= 9)
  {
    v10 = v11[0];
LABEL_27:
    free(v10);
    return;
  }

  if (!v11[1])
  {
    v10 = v11[0];
    if (v11[0])
    {
      goto LABEL_27;
    }
  }
}

void llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<unsigned char,unsigned char>>>>,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::deserialize(void *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v40 = a4;
  *__p = 0u;
  *v37 = 0u;
  v38 = 0u;
  if (!a4)
  {
    goto LABEL_25;
  }

  v7 = *a3;
  v39 = a3 + 1;
  v40 = a4 - 1;
  v35 = v7;
  if (v7)
  {
    if (a4 - 1 < 8)
    {
      goto LABEL_25;
    }

    v8 = *(a3 + 1);
    v9 = a3 + 9;
    v10 = a4 - 9;
    v39 = a3 + 9;
    v40 = a4 - 9;
    std::vector<llvm::orc::ExecutorSymbolDef>::reserve(__p, v8);
    if (v8)
    {
      while (v10 >= 8)
      {
        v13 = *v9;
        v12 = v9 + 8;
        v11 = v13;
        v39 = v12;
        v40 = v10 - 8;
        if (v10 == 8)
        {
          break;
        }

        v16 = *v12;
        v15 = v12 + 1;
        v14 = v16;
        v17 = v10 - 9;
        v39 = v15;
        v40 = v10 - 9;
        if (v10 == 9)
        {
          break;
        }

        v18 = *v15;
        v9 = v15 + 1;
        v10 -= 10;
        v39 = v9;
        v40 = v17 - 1;
        v4 = v4 & 0xFFFFFFFFFFFF0000 | (v14 << 8) | v18;
        v19 = __p[1];
        if (__p[1] >= v37[0])
        {
          v21 = (__p[1] - __p[0]) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v23 = v37[0] - __p[0];
          if ((v37[0] - __p[0]) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(__p, v24);
          }

          v25 = (16 * v21);
          *v25 = v11;
          v25[1] = v4;
          v20 = (16 * v21 + 16);
          v26 = v25 - (__p[1] - __p[0]);
          memcpy(v26, __p[0], __p[1] - __p[0]);
          v27 = __p[0];
          __p[0] = v26;
          __p[1] = v20;
          v37[0] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *__p[1] = v11;
          v19[1] = v4;
          v20 = v19 + 2;
        }

        __p[1] = v20;
        if (!--v8)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      getErrorErrorCat();
      *&v41 = 3;
      *(&v41 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }
  }

  else if ((llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(&v39, &v37[1]) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  v29 = __p[0];
  v28 = __p[1];
  v30 = v37[0];
  __p[1] = 0;
  v37[0] = 0;
  __p[0] = 0;
  v33 = v37[1];
  v34 = HIBYTE(v38);
  v37[1] = 0;
  v38 = 0uLL;
  if (v35 != 1)
  {
    getErrorErrorCat();
    operator new();
  }

  v43 = 0;
  *(&v41 + 1) = v28;
  v42 = v30;
  *&v41 = v29;
  if (&v41 != a2)
  {
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(a2);
    v31 = v43;
    *(a2 + 24) = *(a2 + 24) & 0xFE | v43 & 1;
    if (v31)
    {
      v32 = v41;
      *&v41 = 0;
      *a2 = v32;
    }

    else
    {
      *a2 = v41;
      *(a2 + 16) = v42;
      v42 = 0;
      v41 = 0uLL;
    }
  }

  llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v41);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  *a1 = 0;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void std::vector<llvm::orc::ExecutorSymbolDef>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(a1, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void **llvm::orc::EPCGenericJITLinkMemoryManager::allocate(void *a1, uint64_t a2, llvm::jitlink::LinkGraph *a3, __int128 *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v23, a3);
  llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes(v21, &v23, *(a1[1] + 88));
  if (v22)
  {
    v20 = -1;
    v19 = v21[0];
    v6 = *(a4 + 3);
    if ((v6 & 2) == 0)
    {
      a4 = *a4;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(a4, &v19);
    llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v19);
  }

  else
  {
    v7 = a1[1];
    v8 = a1[3];
    *&v14 = a1;
    *(&v14 + 1) = v23;
    v15 = &v17;
    v16 = 0x400000000;
    if (v25)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v15, &v24);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v18, a4);
    v9 = v21[1] + v21[0];
    v10 = v7[3];
    v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    *v11 = a1[2];
    v11[1] = v9;
    v26 = v14;
    v27 = &v29;
    v28 = 0x400000000;
    if (v16)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v27, &v15);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v30, v18);
    *&v34[8] = v26;
    *v34 = v10;
    v35 = &v37;
    v36 = 0x400000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v35, &v27);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v38, v30);
    v39 = *v34;
    v40 = *&v34[16];
    v41 = &v43;
    v42 = 0x400000000;
    if (v36)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v41, &v35);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v44, v38);
    v45 = v39;
    v46 = v40;
    v47 = &v49;
    v48 = 0x400000000;
    if (v42)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v47, &v41);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v50, v44);
    v12 = operator new(0x1E8uLL, 8uLL);
    v31 = v12;
    v32 = xmmword_2750C3F80;
    *v12 = v45;
    v12[2] = v46;
    v12[3] = v12 + 5;
    v12[4] = 0x400000000;
    if (v48)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v12 + 3, &v47);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v12 + 57), v50);
    v33 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_S1M_vE9CallbacksE + 4;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v50);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v47);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v44);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v41);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v38);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v35);
    (*(*v7 + 40))(v7, v8, &v31, v11, 16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v31);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v30);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v27);
    free(v11);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v18);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v15);
  }

  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v24);
}

_BYTE *llvm::orc::EPCGenericJITLinkMemoryManager::deallocate(void *a1, void **a2, __int128 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = a1[5];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v26, a3);
  v7 = v5[3];
  v8 = a2[1] - *a2 + 16;
  if (a2[1] == *a2)
  {
    v9 = 16;
  }

  else
  {
    v9 = a2[1] - *a2 + 16;
  }

  *&v35[0] = 0;
  *(&v35[0] + 1) = v9;
  if (v9 < 9)
  {
    if (!v8)
    {
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v25, "Error serializing arguments to blob in call");
      goto LABEL_24;
    }

    v10 = v35;
  }

  else
  {
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    *&v35[0] = v10;
    v8 = v9;
  }

  *v10 = a1[2];
  if ((v8 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    v10[1] = (a2[1] - *a2) >> 3;
    v12 = *a2;
    v11 = a2[1];
    v13 = *a2 == v11;
    if ((v8 - 16) >= 8 && v12 != v11)
    {
      v15 = v10 + 2;
      v16 = v8 - 24;
      v17 = v12 + 8;
      do
      {
        *v15++ = *(v17 - 1);
        v13 = v17 == v11;
        if (v17 == v11)
        {
          break;
        }

        v17 += 8;
        v18 = v16 > 7;
        v16 -= 8;
      }

      while (v18);
    }

    if (v13)
    {
      *v25 = v35[0];
      goto LABEL_24;
    }

    v9 = *(&v35[0] + 1);
  }

  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v25, "Error serializing arguments to blob in call");
  if (v9 > 8 || !v9 && *&v35[0])
  {
    free(*&v35[0]);
  }

LABEL_24:
  if (!v25[1])
  {
    v31 = v25[0];
    if (v25[0])
    {
      getErrorErrorCat();
      *&v35[0] = 3;
      *(&v35[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v27, &v26);
  v19 = v25[1];
  if (v25[1] <= 8)
  {
    v20 = v25;
  }

  else
  {
    v20 = v25[0];
  }

  v31 = v7;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v32, v27);
  v33 = v31;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v34, v32);
  *&v35[0] = v33;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v35 + 8, v34);
  v21 = operator new(0x28uLL, 8uLL);
  v28 = v21;
  v29 = xmmword_2750C12A0;
  *v21 = *&v35[0];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v21 + 1), (v35 + 8));
  v30 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSK_9allocatorISO_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrESR_EEEvOT0_SX_OT1_DpRKT2_EUlOT_PKcmE_SW_JSX_SR_EEEvS17_SZ_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES17_EUlS4_E_S1H_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v35 + 1);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v34);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v32);
  (*(*v5 + 40))(v5, v6, &v28, v20, v19);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v28);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v27);
  if (v25[1] < 9)
  {
    if (v25[1])
    {
      goto LABEL_33;
    }

    v22 = v25[0];
    if (!v25[0])
    {
      goto LABEL_33;
    }
  }

  else
  {
    v22 = v25[0];
  }

  free(v22);
LABEL_33:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v26);
  result = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    return memset(result, 255, v24 - result);
  }

  return result;
}

uint64_t *llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2)
  {
    if (a3[1])
    {
      *a3 = 0;
    }

    v5 = a1 + 56;
    *a2 = 0;
    v61 = -1;
    v60 = v4;
    v6 = a1[59];
    if ((v6 & 2) == 0)
    {
      v5 = *v5;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(v5, &v60);
    v7 = &v60;
    return llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v7);
  }

  if (a3[1])
  {
    v8 = a1 + 56;
    v9 = *a3;
    *a3 = 0;
    v59 = -1;
    v58 = v9;
    v10 = a1[59];
    if ((v10 & 2) == 0)
    {
      v8 = *v8;
    }

    (*(v10 & 0xFFFFFFFFFFFFFFF8))(v8, &v58);
    v7 = &v58;
    return llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v7);
  }

  v49 = *a3;
  v12 = *a1;
  v54 = a1[1];
  v55 = &v57;
  v56 = 0x400000000;
  if (*(a1 + 6))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v55, (a1 + 2));
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v52, a1 + 28);
  v62 = v64;
  v63 = 0x400000000;
  if (v56)
  {
    v13 = v55;
    v14 = &v55[13 * v56];
    v15 = v49;
    do
    {
      v13[4] = v15;
      v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v54, v13[2], 0);
      v13[5] = v16;
      v17 = *v13;
      if (v63)
      {
        v18 = v62;
        v19 = v63;
        do
        {
          v20 = v19 >> 1;
          v21 = &v18[40 * (v19 >> 1)];
          v23 = *v21;
          v22 = (v21 + 40);
          v19 += ~(v19 >> 1);
          if (v23 < v17)
          {
            v18 = v22;
          }

          else
          {
            v19 = v20;
          }
        }

        while (v19);
        v24 = v63;
      }

      else
      {
        v24 = 0;
        v18 = v62;
      }

      v25 = *(v13 + 1);
      v26 = *(*(v12 + 8) + 88);
      if (v18 == v62 + 40 * v24 || *v18 != v17)
      {
        v50 = *(v13 + 1);
        v67 = 0u;
        v66 = 0u;
        LOBYTE(v65) = v17;
        if (v62 + 40 * v63 == v18)
        {
          v42 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(&v62, &v65);
          v43 = v62 + 40 * v63;
          v44 = *(v42 + 32);
          v45 = *(v42 + 16);
          *v43 = *v42;
          *(v43 + 1) = v45;
          *(v43 + 4) = v44;
          LODWORD(v63) = v63 + 1;
          v18 = v62 + 40 * v63 - 40;
        }

        else
        {
          v28 = v18 - v62;
          v29 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(&v62, &v65);
          v18 = v62 + v28;
          v30 = v62 + 40 * v63;
          *(v30 + 4) = *(v30 - 1);
          v31 = *(v30 - 24);
          *v30 = *(v30 - 40);
          *(v30 + 1) = v31;
          v32 = v62;
          v33 = v63;
          v34 = v62 + 40 * v63 - 40;
          if (v34 != v18)
          {
            v35 = v62 + 40 * v63 - 40;
            do
            {
              v36 = *(v35 - 40);
              v35 -= 40;
              *v34 = v36;
              v37 = *(v34 - 1);
              *(v34 + 8) = *(v34 - 2);
              *(v34 + 24) = v37;
              v34 = v35;
            }

            while (v35 != v18);
            v33 = v63;
            v32 = v62;
          }

          LODWORD(v63) = v33 + 1;
          if (v29 < v32 + 40 * (v33 + 1) && v29 >= v18)
          {
            v39 = 40;
          }

          else
          {
            v39 = 0;
          }

          v40 = (v29 + v39);
          *v18 = *v40;
          v41 = *(v40 + 8);
          *(v18 + 24) = *(v40 + 24);
          *(v18 + 8) = v41;
        }

        v27 = *(v13 + 1);
        v16 = v13[5];
        v25 = v50;
      }

      else
      {
        v27 = *(v13 + 1);
      }

      v15 += (vaddvq_s64(v25) + v26 - 1) / v26 * v26;
      *(v18 + 24) = v27;
      v46 = v13[4];
      *(v18 + 1) = v16;
      *(v18 + 2) = v46;
      v13 += 13;
    }

    while (v13 != v14);
  }

  llvm::jitlink::BasicLayout::apply(&v51, &v54);
  v47 = v51;
  if (!v51)
  {
    operator new();
  }

  v51 = 0;
  LOBYTE(v66) = -1;
  v65 = v47;
  if ((v53 & 2) != 0)
  {
    v48 = v52;
  }

  else
  {
    v48 = v52[0];
  }

  (*(v53 & 0xFFFFFFFFFFFFFFF8))(v48, &v65);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v65);
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v52);
  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v55);
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPvRS4_(uint64_t *a1, void **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 1);
  v6[0] = &v7;
  v6[1] = 0x400000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v6, (a1 + 3));
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v8, (a1 + 57));
  v9 = v3;
  v10 = v4;
  operator new();
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8MoveImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPvS1N_(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  a1[3] = a1 + 5;
  v5 = a1 + 3;
  *(v5 - 1) = v4;
  v5[1] = 0x400000000;
  if (*(a2 + 32))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v5, a2 + 24);
  }

  return llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 57), (a2 + 456));
}

void **_ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE11DestroyImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPv(uint64_t a1)
{
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));

  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector((a1 + 24));
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC208;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v2 = *(a1 + 496);
  if (v2 >= 9)
  {
    v3 = *(a1 + 488);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 488);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector((a1 + 24));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC208;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v2 = *(a1 + 496);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 488);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 488);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector((a1 + 24));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_E3runEv(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *v8 = *(a1 + 488);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  v14 = 0;
  v13 = 0;
  if (v8[1])
  {
    if (v8[1] <= 8)
    {
      v2 = v8;
    }

    else
    {
      v2 = v8[0];
    }
  }

  else
  {
    v9 = v8[0];
    if (v8[0])
    {
      getErrorErrorCat();
      v11 = 3;
      v12 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v2 = v8;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::Expected<llvm::orc::ExecutorAddr>>::deserialize(&v13, v2, v8[1], &v10);
  if (v10)
  {
    v9 = v10;
    v10 = 0;
    LOBYTE(v12) = v14 & 1;
    v3 = v13;
    if (v14)
    {
      v13 = 0;
    }

    v11 = v3;
    llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()((a1 + 8), &v9, &v11);
    if ((v12 & 1) != 0 && v11)
    {
      (*(*v11 + 8))(v11);
    }

    v5 = v9;
    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    (*(*v5 + 8))(v5);
    goto LABEL_20;
  }

  v10 = 0;
  LOBYTE(v12) = v14 & 1;
  v4 = v13;
  if (v14)
  {
    v13 = 0;
  }

  v11 = v4;
  llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()((a1 + 8), &v10, &v11);
  if (v12)
  {
    v5 = v11;
    if (v11)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v14)
  {
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (v8[1] >= 9)
  {
    v7 = v8[0];
LABEL_29:
    free(v7);
    return;
  }

  if (!v8[1])
  {
    v7 = v8[0];
    if (v8[0])
    {
      goto LABEL_29;
    }
  }
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSK_9allocatorISO_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrESR_EEEvOT0_SX_OT1_DpRKT2_EUlOT_PKcmE_SW_JSX_SR_EEEvS17_SZ_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES17_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, (a1 + 1));
  v5[0] = v2;
  v5[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC250;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC250;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_E3runEv(uint64_t a1)
{
  v2 = (a1 + 8);
  *v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = 0;
  if (v10[1])
  {
    if (v10[1] <= 8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v10[0];
    }
  }

  else
  {
    v11[3] = v10[0];
    if (v10[0])
    {
      getErrorErrorCat();
      v11[0] = 3;
      v11[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v10;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v12, v3, v10[1], &v13);
  v4 = v13;
  if (v13)
  {
    v12 = 0;
    v13 = 0;
    v11[0] = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    if (v11[0])
    {
      (*(*v11[0] + 8))(v11[0]);
    }

    v6 = v13;
    if (v13)
    {
LABEL_11:
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    v11[0] = v8;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    v6 = v11[0];
    if (v11[0])
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v10[1] >= 9)
  {
    v7 = v10[0];
LABEL_18:
    free(v7);
    return;
  }

  if (!v10[1])
  {
    v7 = v10[0];
    if (v10[0])
    {
      goto LABEL_18;
    }
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 40 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 40);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 40);
    }
  }

  return v2;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>>::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 2);
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
      goto LABEL_21;
    }

    v7 = a2 + 1;
    v8 = *(a2 + 2);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        v10 = *a1;
        v11 = v4 + 40 * v8;
        do
        {
          *v10 = *v4;
          v12 = *(v4 + 8);
          *(v10 + 24) = *(v4 + 24);
          *(v10 + 8) = v12;
          v4 += 40;
          v10 += 40;
        }

        while (v4 != v11);
      }

      goto LABEL_20;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        v13 = v4 + 40 * v9;
        v14 = *a1;
        do
        {
          *v14 = *v4;
          v15 = *(v4 + 8);
          *(v14 + 24) = *(v4 + 24);
          *(v14 + 8) = v15;
          v4 += 40;
          v14 += 40;
        }

        while (v4 != v13);
LABEL_18:
        v16 = *v7 - v9;
        if (v16)
        {
          memcpy((*a1 + 40 * v9), &(*a2)[40 * v9], 40 * v16);
        }

LABEL_20:
        *(a1 + 8) = v8;
LABEL_21:
        *v7 = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 40);
    }

    v9 = 0;
    goto LABEL_18;
  }

  return a1;
}

void llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::~InFlightAlloc(llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc *this)
{
  *this = &unk_2883EC298;
  v2 = *(this + 4);
  if (v2 != this + 48)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EC298;
  v2 = *(this + 4);
  if (v2 != this + 48)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::abandon(uint64_t a1, __int128 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 40);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v15, a2);
  v6 = *(a1 + 8);
  v7 = v4[3];
  v8 = malloc_type_malloc(0x18uLL, 0x100004077774924uLL);
  *v8 = *(v6 + 16);
  v8[1] = 1;
  v8[2] = *(a1 + 24);
  v13 = v8;
  v14 = 24;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v16, v15);
  v9 = v13;
  v20 = v7;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v21, v16);
  v22 = v20;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v23, v21);
  v24 = v22;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v25, v23);
  v10 = operator new(0x28uLL, 8uLL);
  v17 = v10;
  v18 = xmmword_2750C12A0;
  *v10 = v24;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v10 + 1), v25);
  v19 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSM_SM_E_JNS2_12ExecutorAddrENS_8ArrayRefISQ_EEEEEvOT0_SQ_OT1_DpRKT2_EUlOT_PKcmE_SP_JSQ_SS_EEEvS12_SU_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES12_EUlS4_E_S1C_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v25);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v21);
  (*(*v4 + 40))(v4, v5, &v17, v9, 24);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16);
  if (v14 >= 9)
  {
    v11 = v13;
LABEL_5:
    free(v11);
    return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
  }

  if (!v14)
  {
    v11 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
}

void llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::finalize(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  memset(v51, 0, sizeof(v51));
  *__p = 0u;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 32);
    v46 = a2;
    v47 = v7 + 40 * v4;
    do
    {
      v8 = (*v7 & 0xF8) == 8;
      v9 = *(v7 + 24);
      v10 = *(*(v2[1] + 8) + 88);
      v11 = (v9 + *(v7 + 32) + v10 - 1) / v10 * v10;
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      v14 = v5 - v6;
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0x666666666666666)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (0x999999999999999ALL * (-v6 >> 3) > v16)
      {
        v16 = 0x999999999999999ALL * (-v6 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v6 >> 3) >= 0x333333333333333)
      {
        v17 = 0x666666666666666;
      }

      else
      {
        v17 = v16;
      }

      __src = v6;
      if (v17)
      {
        if (v17 <= 0x666666666666666)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v18 = 40 * v15;
      *v18 = *v7 & 7;
      *(v18 + 4) = v8;
      *(v18 + 8) = v13;
      *(v18 + 16) = v11;
      *(v18 + 24) = v12;
      *(v18 + 32) = v9;
      memcpy((40 * v15 + 40 * (v14 / -40)), v6, v14);
      if (__src)
      {
        operator delete(__src);
      }

      v19 = 40 * v15 + 40 * (v14 / -40);
      v6 = v19;
      v2 = a1;
      v7 += 40;
      v5 = 40 * v15 + 40;
    }

    while (v7 != v47);
    __p[0] = v19;
    __p[1] = (40 * v15 + 40);
    v3 = *(v51 + 8);
    v20 = *(&v51[1] + 1);
    a2 = v46;
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[2];
  *(v51 + 8) = *(v21 + 272);
  *(v21 + 272) = v3;
  *(&v51[1] + 1) = *(v21 + 288);
  *(v21 + 288) = v20;
  v22 = v2[1];
  v23 = *(v22 + 8);
  v24 = *(v22 + 32);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v53, a2);
  v54 = v2[3];
  v25 = __p[0];
  v26 = *(&v51[0] + 1);
  v27 = 8;
  while (v25 != __p[1])
  {
    v27 += v25[4] + 25;
    v25 += 5;
  }

  v28 = v2[1];
  v29 = 8;
  while (v26 != *&v51[1])
  {
    v29 += *(v26 + 16) + *(v26 + 72) + 32;
    v26 += 112;
  }

  v30 = v23[3];
  v31 = v29 + v27;
  v32 = v29 + v27 + 8;
  *&v66[0] = 0;
  *(&v66[0] + 1) = v32;
  if (v32 != 8 && (v29 + v27) < 0xFFFFFFFFFFFFFFF8)
  {
    v33 = malloc_type_malloc(v32, 0x100004077774924uLL);
    *&v66[0] = v33;
    *v33 = *(v28 + 16);
    v63 = (v33 + 1);
    *&v64[0] = v31;
    v34 = v31 - 8;
    if (v31 >= 8)
    {
      v35 = __p[0];
      v33[1] = 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3);
      v36 = v33 + 2;
      v63 = (v33 + 2);
      *&v64[0] = v31 - 8;
      while (v35 != __p[1])
      {
        if (!v34)
        {
          goto LABEL_44;
        }

        v37 = (v35[4] & 1) != 0 ? *v35 & 7 | 8 : *v35 & 7;
        *v36 = v37;
        v38 = v63;
        v39 = *&v64[0];
        ++v63;
        --*&v64[0];
        if ((v39 - 1) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 1) = *(v35 + 1);
        v63 = v38 + 9;
        *&v64[0] = v39 - 9;
        if ((v39 - 9) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 9) = *(v35 + 2);
        v63 = v38 + 17;
        *&v64[0] = v39 - 17;
        if ((v39 - 17) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 17) = *(v35 + 4);
        v36 = (v38 + 25);
        v34 = v39 - 25;
        v63 = v38 + 25;
        *&v64[0] = v39 - 25;
        v40 = *(v35 + 4);
        if (v40)
        {
          v41 = v34 >= v40;
          v34 -= v40;
          if (!v41)
          {
            goto LABEL_44;
          }

          memcpy((v38 + 25), *(v35 + 3), *(v35 + 4));
          v36 += v40;
          v63 = v36;
          *&v64[0] = v34;
        }

        v35 += 40;
      }

      if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,std::vector<llvm::orc::shared::AllocActionCallPair>,void>::serialize(&v63, v51 + 1))
      {
        *v52 = v66[0];
        goto LABEL_48;
      }
    }
  }

  else
  {
    v63 = v66;
    *&v64[0] = v29 + v27 + 8;
    if (!v31)
    {
      *&v66[0] = *(v28 + 16);
      v63 = v66 + 8;
      *&v64[0] = 0;
    }
  }

LABEL_44:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v52, "Error serializing arguments to blob in call");
  if (*(&v66[0] + 1) > 8uLL || !*(&v66[0] + 1) && *&v66[0])
  {
    free(*&v66[0]);
  }

LABEL_48:
  if (!v52[1])
  {
    v60 = v52[0];
    if (v52[0])
    {
      getErrorErrorCat();
      v63 = 3;
      *&v64[0] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v55, &v53);
  v56 = v54;
  v42 = v52[1];
  if (v52[1] <= 8)
  {
    v43 = v52;
  }

  else
  {
    v43 = v52[0];
  }

  v60 = v30;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v61, v55);
  v62 = v56;
  v63 = v60;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v64, v61);
  v65 = v62;
  *&v66[0] = v63;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v66 + 8, v64);
  v67 = v65;
  v44 = operator new(0x30uLL, 8uLL);
  v57 = v44;
  v58 = xmmword_2750C3F40;
  *v44 = *&v66[0];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v44 + 1), (v66 + 8));
  v44[5] = v67;
  v59 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_S1P_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v66 + 1);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v64);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v61);
  (*(*v23 + 40))(v23, v24, &v57, v43, v42);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v57);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v55);
  if (v52[1] >= 9)
  {
    v45 = v52[0];
LABEL_56:
    free(v45);
    goto LABEL_57;
  }

  if (!v52[1])
  {
    v45 = v52[0];
    if (v52[0])
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v53);
  *&v66[0] = v51 + 8;
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](v66);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSM_SM_E_JNS2_12ExecutorAddrENS_8ArrayRefISQ_EEEEEvOT0_SQ_OT1_DpRKT2_EUlOT_PKcmE_SP_JSQ_SS_EEEvS12_SU_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES12_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, (a1 + 1));
  v5[0] = v2;
  v5[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC2C8;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC2C8;
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

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_E3runEv(uint64_t a1)
{
  v2 = (a1 + 8);
  *v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = 0;
  if (v10[1])
  {
    if (v10[1] <= 8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v10[0];
    }
  }

  else
  {
    v11[3] = v10[0];
    if (v10[0])
    {
      getErrorErrorCat();
      v11[0] = 3;
      v11[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v10;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v12, v3, v10[1], &v13);
  v4 = v13;
  if (v13)
  {
    v12 = 0;
    v13 = 0;
    v11[0] = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    if (v11[0])
    {
      (*(*v11[0] + 8))(v11[0]);
    }

    v6 = v13;
    if (v13)
    {
LABEL_11:
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    v11[0] = v8;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    v6 = v11[0];
    if (v11[0])
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v10[1] >= 9)
  {
    v7 = v10[0];
LABEL_18:
    free(v7);
    return;
  }

  if (!v10[1])
  {
    v7 = v10[0];
    if (v10[0])
    {
      goto LABEL_18;
    }
  }
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a1 + 1));
  v6 = a1[5];
  v7[0] = v3;
  v7[1] = v4;
  operator new();
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8MoveImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_EEvPvS1Q_(void *a1, uint64_t a2)
{
  *a1 = *a2;
  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 1), (a2 + 8));
  a1[5] = *(a2 + 40);
  return result;
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC310;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2 >= 9)
  {
    v3 = *(a1 + 48);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC310;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_E3runEv(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  *v11 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v13 = 0;
  if (v11[1])
  {
    if (v11[1] <= 8)
    {
      v3 = v11;
    }

    else
    {
      v3 = v11[0];
    }
  }

  else
  {
    v12[3] = v11[0];
    if (v11[0])
    {
      getErrorErrorCat();
      v12[0] = 3;
      v12[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v11;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v13, v3, v11[1], v12);
  v4 = v12[0];
  if (v12[0])
  {
    v12[0] = 0;
    v13 = 0;
    v15 = -1;
    v14 = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, &v14);
    if (v15)
    {
      v6 = v14;
      v14 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v7 = v12[0];
    if (!v12[0])
    {
      goto LABEL_24;
    }

LABEL_23:
    (*(*v7 + 8))(v7);
    goto LABEL_24;
  }

  v8 = v13;
  v13 = 0;
  if (v8)
  {
    v15 = -1;
    v14 = v8;
    v9 = *(a1 + 32);
  }

  else
  {
    v15 = 0;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
  }

  if ((v9 & 2) == 0)
  {
    v2 = *v2;
  }

  (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, &v14);
  if (v15)
  {
    v7 = v14;
    v14 = 0;
    if (v7)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v11[1] >= 9)
  {
    v10 = v11[0];
LABEL_30:
    free(v10);
    return;
  }

  if (!v11[1])
  {
    v10 = v11[0];
    if (v11[0])
    {
      goto LABEL_30;
    }
  }
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFCCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(result + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return result;
}

uint64_t llvm::GlobalValue::setVisibility(uint64_t result, char a2)
{
  v2 = result;
  v3 = *(result + 32) & 0xF;
  v4 = *(result + 32) & 0xFFFFFFCF | (16 * (a2 & 3));
  *(result + 32) = v4;
  if ((v3 - 7) < 2)
  {
    goto LABEL_5;
  }

  if (16 * (a2 & 3))
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_5:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return result;
}

uint64_t *llvm::orc::StaticLibraryDefinitionGenerator::Create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 8);
  v11 = *(*a2 + 16) - v10;
  v12 = (*(**a2 + 16))();
  *&v25 = v10;
  *(&v25 + 1) = v11;
  v26 = v12;
  v27 = v13;
  llvm::object::createBinary(&v25, 0, 1, &v35);
  v14 = v35;
  if (v36)
  {
    v35 = 0;
    *(a5 + 8) |= 1u;
    *a5 = v14;
  }

  else
  {
    v15 = *(v35 + 2);
    if (v15 == 1)
    {
      llvm::orc::getMachOSliceRangeForTriple(v31, v35, (*(*(a1 + 8) + 72) + 40));
      if ((v32 & 1) == 0)
      {
        v20 = v31[1];
        v21 = *(*a2 + 8) + v31[0];
        v22 = (*(**a2 + 16))();
        *&v25 = v21;
        *(&v25 + 1) = v20;
        v26 = v22;
        v27 = v23;
        llvm::object::Archive::create(&v25);
      }

      v17 = v31[0];
      *(a5 + 8) |= 1u;
      *a5 = v17;
    }

    else
    {
      if (v15)
      {
        v18 = (*(**a2 + 16))();
        *&v25 = "Unrecognized file type for ";
        v26 = v18;
        v27 = v19;
        v28 = 1283;
        getErrorErrorCat();
        operator new();
      }

      v16 = *a2;
      *a2 = 0;
      v29 = v14;
      v30 = v16;
      v35 = 0;
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v34, a3);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v33, a4);
      llvm::orc::StaticLibraryDefinitionGenerator::Create(a1, &v29, v34, a5);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v33);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v34);
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }
  }

  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v35);
}

uint64_t llvm::orc::StaticLibraryDefinitionGenerator::Create@<X0>(uint64_t a1@<X0>, llvm::object::Archive **a3@<X2>, void *a4@<X3>, uint64_t *a6@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  if (a4[3] >= 8uLL)
  {
    v72 = 0;
    llvm::object::Archive::children(&v89, *a3, &v72, 1);
    llvm::object::Archive::Child::Child(&Next, &v89);
    v88 = v92;
    llvm::object::Archive::Child::Child(&v80, &v93);
    v10 = 0;
    v83 = v95;
    v11 = *a6;
    v12 = *(a6 + 8);
    while ((v88 > 7 || v83 >= 8) && v86 != v82)
    {
      llvm::object::Archive::Child::Child(&v69, &Next);
      llvm::object::Archive::Child::getMemoryBufferRef(&v77, &v69);
      if (v79)
      {
        v13 = v77;
        *&v77 = 0;
        *&v68[0] = v13;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v68);
        if (*&v68[0])
        {
          (*(**&v68[0] + 8))(*&v68[0]);
        }

        v14 = 1;
        v15 = v10;
      }

      else
      {
        v16 = *a3;
        v68[0] = v77;
        v68[1] = v78;
        v17 = a4[3];
        v18 = a4;
        if ((v17 & 2) == 0)
        {
          v18 = *a4;
        }

        v15 = v10 + 1;
        (*(v17 & 0xFFFFFFFFFFFFFFF8))(&v75, v18, v16, v68, v10);
        if (v76)
        {
          v14 = 0;
          v11 = v75;
          v12 |= 1u;
        }

        else
        {
          if ((v75 & 1) == 0)
          {
            v67 = v70 - *(v69 + 16) + v71;
            llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v73, &v67, v68);
            if (v76)
            {
              v19 = v75;
              v75 = 0;
              if (v19)
              {
                (*(*v19 + 8))(v19);
              }
            }
          }

          v14 = 1;
        }
      }

      v20 = *(&v69 + 1);
      *(&v69 + 1) = 0;
      if (v20)
      {
        (*(*v20 + 16))(v20);
      }

      if (!v14)
      {
        *(a6 + 8) = v12;
        *a6 = v11;
        v47 = v81;
        v81 = 0;
        if (v47)
        {
          (*(*v47 + 16))(v47);
        }

        v48 = v85;
        v85 = 0;
        if (v48)
        {
          (*(*v48 + 16))(v48);
        }

        v49 = v94;
        v94 = 0;
        if (v49)
        {
          (*(*v49 + 16))(v49);
        }

        v50 = v89.n128_u64[1];
        v89.n128_u64[1] = 0;
        if (v50)
        {
          (*(*v50 + 16))(v50);
        }

        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        return MEMORY[0x277C69E30](v73[0], 8);
      }

      llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&Next);
      v10 = v15;
    }

    *(a6 + 8) = v12;
    *a6 = v11;
    v21 = v81;
    v81 = 0;
    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    v22 = v85;
    v85 = 0;
    if (v22)
    {
      (*(*v22 + 16))(v22);
    }

    v23 = v94;
    v94 = 0;
    if (v23)
    {
      (*(*v23 + 16))(v23);
    }

    v24 = v89.n128_u64[1];
    v89.n128_u64[1] = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

    v25 = v72;
    if (v72)
    {
      *(a6 + 8) = v12 | 1;
      *a6 = v25;
      return MEMORY[0x277C69E30](v73[0], 8);
    }
  }

  v69 = 0uLL;
  LODWORD(v70) = 0;
  v77 = 0uLL;
  LODWORD(v78) = 0;
  v75 = 0;
  llvm::object::Archive::children(&v89, *a3, &v75, 1);
  llvm::object::Archive::Child::Child(&Next, &v89);
  v88 = v92;
  llvm::object::Archive::Child::Child(&v80, &v93);
  v26 = 0;
  v27 = 0;
  v83 = v95;
  while ((v88 > 7 || v83 >= 8) && v86 != v82)
  {
    v72 = v86 - *(Next + 2) + v87;
    *&v68[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(v73, &v72, v68))
    {
      goto LABEL_45;
    }

    v28 = v86 - *(Next + 2) + v87;
    *&v68[0] = 0;
    v29 = v78;
    v30 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v26, v78, v28, v68);
    v31 = *&v68[0];
    if ((v30 & 1) == 0)
    {
      if (4 * DWORD2(v77) + 4 >= 3 * v29)
      {
        v32 = 2 * v29;
      }

      else
      {
        if (v29 + ~DWORD2(v77) - HIDWORD(v77) > v29 >> 3)
        {
LABEL_41:
          ++DWORD2(v77);
          if (*v31 != -1)
          {
            --HIDWORD(v77);
          }

          *v31 = v28;
          v31[1] = 0;
          goto LABEL_44;
        }

        v32 = v29;
      }

      llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(&v77, v32);
      *&v68[0] = 0;
      v26 = v77;
      llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v77, v78, v28, v68);
      v31 = *&v68[0];
      goto LABEL_41;
    }

LABEL_44:
    v31[1] = v27;
LABEL_45:
    ++v27;
    llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&Next);
  }

  v33 = v81;
  v81 = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = v85;
  v85 = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  v35 = v94;
  v94 = 0;
  if (v35)
  {
    (*(*v35 + 16))(v35);
  }

  v36 = v89.n128_u64[1];
  v89.n128_u64[1] = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  v37 = v75;
  if (v75)
  {
    *(a6 + 8) |= 1u;
    *a6 = v37;
    MEMORY[0x277C69E30](v26, 8);
    goto LABEL_102;
  }

  v38 = *(a1 + 8);
  v39 = *a3;
  llvm::object::Archive::symbol_begin(*a3);
  v41 = v40;
  v43 = v42;
  NumberOfSymbols = llvm::object::Archive::getNumberOfSymbols(v39);
  v45 = NumberOfSymbols;
  Next = v41;
  v85 = v43;
  if (v41 == v39 && NumberOfSymbols == v43)
  {
LABEL_61:
    v46 = 1;
    goto LABEL_98;
  }

  while (2)
  {
    llvm::object::Archive::Symbol::getMember(&v89, &Next);
    v51 = v89.n128_u64[0];
    if ((v92 & 1) == 0)
    {
      v52 = v90 - *(v89.n128_u64[0] + 16);
      v80 = 0;
      v53 = v77;
      v54 = v78;
      if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v77, v78, v52 + v91, &v80))
      {
        v55 = v80 == (v53 + 16 * v54);
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        goto LABEL_91;
      }

      v56 = v80[1];
      v57 = *(Next + 6);
      if (v57)
      {
        v58 = strlen((v57 + HIDWORD(v85)));
      }

      else
      {
        v58 = 0;
      }

      llvm::orc::ExecutionSession::intern(v38, (v57 + HIDWORD(v85)), v58, v68);
      v80 = 0;
      v59 = v70;
      v60 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v69, v70, *&v68[0], &v80);
      v61 = v80;
      if (v60)
      {
        v62 = *&v68[0];
        goto LABEL_89;
      }

      if (4 * DWORD2(v69) + 4 >= 3 * v59)
      {
        v65 = 2 * v59;
      }

      else
      {
        if (v59 + ~DWORD2(v69) - HIDWORD(v69) > v59 >> 3)
        {
LABEL_84:
          ++DWORD2(v69);
          v63 = *v61;
          if (*v61 != -8)
          {
            --HIDWORD(v69);
          }

          if ((v63 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v63 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v62 = 0;
          *v61 = 0;
          v61[1] = 0;
          *v61 = *&v68[0];
          *&v68[0] = 0;
LABEL_89:
          v61[1] = v56;
          if ((v62 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

LABEL_91:
          llvm::Expected<llvm::object::Archive::Child>::~Expected(&v89);
          Next = llvm::object::Archive::Symbol::getNext(&Next);
          v85 = v64;
          if (Next == v39 && v45 == v64)
          {
            goto LABEL_61;
          }

          continue;
        }

        v65 = v59;
      }

      llvm::DenseMap<llvm::orc::SymbolStringPtr,unsigned long,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,unsigned long>>::grow(&v69, v65);
      v80 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v69, v70, *&v68[0], &v80);
      v61 = v80;
      goto LABEL_84;
    }

    break;
  }

  v89.n128_u64[0] = 0;
  *(a6 + 8) |= 1u;
  *a6 = v51;
  llvm::Expected<llvm::object::Archive::Child>::~Expected(&v89);
  v46 = 0;
LABEL_98:
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  MEMORY[0x277C69E30](v77, 8);
  if (v46)
  {
    operator new();
  }

LABEL_102:
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v69);
  return MEMORY[0x277C69E30](v73[0], 8);
}

double llvm::object::Archive::children@<D0>(uint64_t *__return_ptr a1@<X8>, llvm::object::Archive *this@<X0>, llvm::Error *a3@<X1>, BOOL a4@<W2>)
{
  v18 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::child_begin(v15, this, a3, a4);
  llvm::object::Archive::child_end(v12);
  v5 = v16;
  v6 = v17;
  v7 = v13;
  v8 = v14;
  v9 = v15[1];
  *a1 = v15[0];
  *(a1 + 1) = v9;
  *(a1 + 16) = v5;
  a1[5] = v6;
  result = *v12;
  v11 = v12[1];
  *(a1 + 3) = v12[0];
  *(a1 + 4) = v11;
  *(a1 + 40) = v7;
  a1[11] = v8;
  return result;
}

llvm::object::Archive::ChildFallibleIterator *llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(llvm::object::Archive::ChildFallibleIterator *a1)
{
  llvm::object::Archive::ChildFallibleIterator::inc(&v4, a1);
  v2 = v4;
  if (v4)
  {
    v4 = 0;
    *(*(a1 + 5) & 0xFFFFFFFFFFFFFFF8) = v2;
    *(a1 + 5) = *(a1 + 5) & 3 | 4;
  }

  else
  {
    *(*(a1 + 5) & 0xFFFFFFFFFFFFFFF8) = 0;
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t llvm::orc::StaticLibraryDefinitionGenerator::tryToGenerate@<X0>(uint64_t result@<X0>, int a2@<W2>, llvm::orc::JITDylib *a3@<X3>, uint64_t **a4@<X5>, uint64_t *a5@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a2 || (v6 = result, !*(result + 176)))
  {
    *a5 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v8 = *a4;
    v9 = a4[1];
    if (*a4 != v9)
    {
      v10 = 0;
      while (1)
      {
        *&v64 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v6 + 184), *(v6 + 200), *v8, &v64))
        {
          v11 = v64 == *(v6 + 184) + 16 * *(v6 + 200);
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          goto LABEL_24;
        }

        v12 = *(v64 + 8);
        *&v64 = 0;
        v13 = v59;
        if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v10, v59, v12, &v64))
        {
          goto LABEL_24;
        }

        llvm::object::Archive::findSym(*(v6 + 176), (*v8 + 16), **v8, &v64);
        if (v68)
        {
          v51 = v64;
          *&v64 = 0;
          goto LABEL_88;
        }

        if (v67)
        {
          break;
        }

LABEL_23:
        llvm::Expected<std::optional<llvm::object::Archive::Child>>::~Expected(&v64);
LABEL_24:
        v8 += 2;
        if (v8 == v9)
        {
          goto LABEL_29;
        }
      }

      llvm::object::Archive::Child::getMemoryBufferRef(&v61, &v64);
      if (v63)
      {
        v51 = v61;
LABEL_88:
        *a5 = v51;
        llvm::Expected<std::optional<llvm::object::Archive::Child>>::~Expected(&v64);
        return MEMORY[0x277C69E30](v57, 8);
      }

      v60 = 0;
      v14 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v10, v13, v12, &v60);
      v15 = v60;
      if (v14)
      {
LABEL_20:
        v16 = v61;
        *(v15 + 24) = v62;
        *(v15 + 8) = v16;
        if ((v63 & 1) != 0 && v61)
        {
          (*(*v61 + 8))(v61);
        }

        goto LABEL_23;
      }

      if (4 * v58 + 4 >= 3 * v13)
      {
        v17 = 2 * v13;
      }

      else
      {
        if (v13 + ~v58 - HIDWORD(v58) > v13 >> 3)
        {
LABEL_17:
          LODWORD(v58) = v58 + 1;
          if (*v15 != -1)
          {
            --HIDWORD(v58);
          }

          *v15 = v12;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          goto LABEL_20;
        }

        v17 = v13;
      }

      llvm::DenseMap<unsigned long,llvm::MemoryBufferRef,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::MemoryBufferRef>>::grow(&v57, v17);
      v60 = 0;
      v10 = v57;
      llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v57, v59, v12, &v60);
      v15 = v60;
      goto LABEL_17;
    }

LABEL_29:
    v61 = 0uLL;
    *&v62 = 0;
    if (*(v6 + 192))
    {
      v18 = *(v6 + 200);
      if (v18)
      {
        v19 = 16 * v18;
        v20 = *(v6 + 184);
        while ((*v20 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v20 += 2;
          v19 -= 16;
          if (!v19)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        v20 = *(v6 + 184);
      }

      v21 = *(v6 + 184) + 16 * v18;
      if (v20 != v21)
      {
LABEL_37:
        if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v57, v59, v20[1], &v64))
        {
          v22 = *(&v61 + 1);
          if (*(&v61 + 1) >= v62)
          {
            v25 = (*(&v61 + 1) - v61) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v27 = v62 - v61;
            if ((v62 - v61) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            v66 = &v61;
            if (v28)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&v61, v28);
            }

            v29 = (8 * v25);
            *&v64 = 0;
            *(&v64 + 1) = v29;
            v65 = (8 * v25);
            v30 = *v20;
            *v29 = *v20;
            if ((v30 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v30 + 8), 1uLL);
              v29 = v65;
            }

            *&v65 = v29 + 1;
            std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(&v61, &v64);
            v24 = *(&v61 + 1);
            std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(&v64);
          }

          else
          {
            v23 = *v20;
            **(&v61 + 1) = *v20;
            if ((v23 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v23 + 8), 1uLL);
            }

            v24 = v22 + 8;
          }

          *(&v61 + 1) = v24;
        }

        while (1)
        {
          v20 += 2;
          if (v20 == v21)
          {
            break;
          }

          if ((*v20 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v20 != v21)
            {
              goto LABEL_37;
            }

            break;
          }
        }

        v32 = *(&v61 + 1);
        for (i = v61; i != v32; ++i)
        {
          v33 = *i;
          *&v64 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v6 + 184), *(v6 + 200), v33, &v64))
          {
            v34 = v64;
            if ((*v64 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v64 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            *v34 = -16;
            *(v6 + 192) = vadd_s32(*(v6 + 192), 0x1FFFFFFFFLL);
          }
        }
      }
    }

LABEL_63:
    *&v64 = &v61;
    std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v64);
    if (!v58)
    {
      goto LABEL_84;
    }

    if (v59)
    {
      v35 = 40 * v59;
      v36 = v57;
      while (*v36 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v36 += 40;
        v35 -= 40;
        if (!v35)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v36 = v57;
    }

    v37 = v57 + 40 * v59;
    if (v36 == v37)
    {
LABEL_84:
      *a5 = 0;
      return MEMORY[0x277C69E30](v57, 8);
    }

LABEL_71:
    v38 = *(v6 + 176);
    v39 = *(v36 + 24);
    v64 = *(v36 + 8);
    v65 = v39;
    llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(v38, &v64, *v36, &v60);
    v40 = *(*(v6 + 128) + 8);
    v41 = v60;
    v42 = *(v60 + 1);
    v43 = *(v60 + 2) - v42;
    v44 = (*(*v60 + 16))(v60);
    *&v61 = v42;
    *(&v61 + 1) = v43;
    *&v62 = v44;
    *(&v62 + 1) = v45;
    v46 = v6 + 136;
    v47 = *(v6 + 160);
    if ((v47 & 2) == 0)
    {
      v46 = *(v6 + 136);
    }

    (*(v47 & 0xFFFFFFFFFFFFFFF8))(&v64, v46, v40, &v61);
    if (v66)
    {
      v52 = v64;
      *&v64 = 0;
      *a5 = v52;
      llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v64);
      (*(*v41 + 8))(v41);
      return MEMORY[0x277C69E30](v57, 8);
    }

    v48 = *(v6 + 128);
    v60 = 0;
    v53 = v64;
    v64 = 0uLL;
    v54 = v65;
    LODWORD(v65) = 0;
    v55 = *(&v65 + 1);
    v56 = v41;
    *(&v65 + 1) = 0;
    llvm::orc::ObjectLayer::add(v48, a3, &v56, &v53);
    if ((v55 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v53);
    v49 = v56;
    v56 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    v50 = *a5;
    llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v64);
    if (v60)
    {
      (*(*v60 + 8))(v60);
    }

    if (!v50)
    {
      while (1)
      {
        v36 += 40;
        if (v36 == v37)
        {
          goto LABEL_84;
        }

        if (*v36 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v36 != v37)
          {
            goto LABEL_71;
          }

          goto LABEL_84;
        }
      }
    }

    return MEMORY[0x277C69E30](v57, 8);
  }

  return result;
}

void llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v25 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = 773;
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = "[";
  v14[0] = v12;
  v14[2] = &v25;
  v15 = 2562;
  v16[0] = v14;
  v16[2] = "](";
  v17 = 770;
  v18 = v16;
  v19 = *(a2 + 1);
  v20 = 1282;
  v21[0] = &v18;
  v21[2] = ")";
  v22 = 770;
  llvm::Twine::str(v21, v23);
  v9 = v24;
  v10 = v23[0];
  if (v24 >= 0)
  {
    v10 = v23;
  }

  if (v24 < 0)
  {
    v9 = v23[1];
  }

  v27 = 261;
  v26[0] = v10;
  v26[1] = v9;
  v28 = v26;
  v11 = operator new(24, &v28);
  *v11 = &unk_2883EB078;
  *(v11 + 1) = v5;
  *(v11 + 2) = v5 + v6;
  *a4 = v11;
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void *llvm::jitlink::LinkGraph::addAbsoluteSymbol(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v16 = *(a1 + 120);
  std::mutex::lock(v16);
  v20 = 0;
  v17 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v16[1], a2, a3, &v20);
  v19 = v17;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v17 + 1, 1uLL);
  }

  std::mutex::unlock(v16);
  result = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a1, &v19, a4, a5, v10, v9, v8);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v19 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::orc::StaticLibraryDefinitionGenerator::~StaticLibraryDefinitionGenerator(llvm::orc::StaticLibraryDefinitionGenerator *this)
{
  *this = &unk_2883EC358;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 23);
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 17);

  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);
}

{
  *this = &unk_2883EC358;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 23);
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 17);
  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::object::Archive::Child::Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 8);
  if (v3)
  {
    (**v3)(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    if (v5)
    {
      (*(*v5 + 16))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 16))(v6);
      }
    }
  }

  return a1;
}

void *llvm::jitlink::LinkGraph::addAbsoluteSymbol(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7)
{
  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
  v15 = v14[1] & 0xFFFFFFFFFFFFFFFCLL | 2;
  *v14 = a3;
  v14[1] = v15;
  v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  v17 = v16;
  *v16 = 0;
  *v16 = *a2;
  *a2 = 0;
  v18 = 0x1000000000000000;
  if (!a7)
  {
    v18 = 0;
  }

  v16[1] = v14;
  v16[2] = ((a5 & 1) << 57) | ((a6 & 3) << 58) | v18;
  v16[3] = a4;
  v20 = v16;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 62), &v20, v21);
  return v17;
}

uint64_t *llvm::Expected<llvm::object::Archive::Child>::~Expected(uint64_t *a1)
{
  if (a1[5])
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
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  return a1;
}

uint64_t *llvm::object::Archive::ChildFallibleIterator::inc@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::object::Archive::ChildFallibleIterator *this@<X0>)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::Child::getNext(v6, this);
  if (v7)
  {
    v4 = *&v6[0];
    *&v6[0] = 0;
  }

  else
  {
    llvm::object::Archive::Child::operator=(this, v6);
    v4 = 0;
  }

  *a1 = v4;
  return llvm::Expected<llvm::object::Archive::Child>::~Expected(v6);
}

uint64_t llvm::object::Archive::Child::operator=(uint64_t a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v4 = *a2;
    *(a2 + 1) = 0;
    v5 = *(a1 + 8);
    *a1 = v4;
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    *(a1 + 16) = a2[1];
    *(a1 + 32) = *(a2 + 16);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::grow(uint64_t *a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {

    return memset(result, 255, 8 * v10);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    result = memset(*result, 255, 8 * v6);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(v5, a2, &v7);
      *v7 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
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
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
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

char *llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
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
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
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
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 16;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -1;
      }

      if (v28.i8[4])
      {
        *v27 = -1;
      }

      v22 += 2;
      v27 += 32;
    }

    while (v25 != v22);
  }

  return result;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,unsigned long,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,unsigned long>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          if ((*v31 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v31 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v20 = 0;
          *v21 = 0;
          v22 = v19[1];
          *v21 = *v19;
          *v19 = 0;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        if ((v20 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL);
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
        *(v29 - 2) = -8;
      }

      if (v30.i8[4])
      {
        *v29 = -8;
      }

      v24 += 2;
      v29 += 32;
    }

    while (v27 != v24);
  }

  return result;
}

void *llvm::DenseMap<unsigned long,llvm::MemoryBufferRef,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::MemoryBufferRef>>::grow(uint64_t a1, int a2)
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
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[5] = -1;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          *v25 = *v16;
          v19 = *(v16 + 8);
          *(v18 + 3) = *(v16 + 24);
          *(v18 + 1) = v19;
          ++*(a1 + 8);
        }

        v16 += 40;
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 40 * v20 - 40;
    v23 = vdupq_n_s64(v22 / 0x28);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *result = -1;
      }

      if (v24.i8[4])
      {
        result[5] = -1;
      }

      v21 += 2;
      result += 10;
    }

    while (((v22 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Expected<llvm::orc::MaterializationUnit::Interface>,llvm::orc::ExecutionSession &,llvm::MemoryBufferRef>::CallImpl<llvm::Expected<llvm::orc::MaterializationUnit::Interface> (*)(llvm::orc::ExecutionSession &,llvm::MemoryBufferRef)>(uint64_t (**a1)(uint64_t, _OWORD *), uint64_t a2, _OWORD *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return v3(a2, v6);
}

uint64_t llvm::Expected<std::unique_ptr<llvm::jitlink::LinkGraph>>::~Expected(uint64_t a1)
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
    std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

_WORD *llvm::orc::addInitSymbol(uint64_t *a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = 0;
  do
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v14 = &unk_2883EB8F0;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v14);
    if ((v17 - v18) > 1)
    {
      *v18 = 11812;
      v18 += 2;
    }

    else
    {
      llvm::raw_ostream::write(&v14, "$.", 2uLL);
    }

    llvm::raw_ostream::operator<<(&v14, a3, a4);
    v9 = v18;
    if ((v17 - v18) > 8)
    {
      *(v18 + 8) = 46;
      *v9 = *".__inits.";
      v18 += 9;
    }

    else
    {
      llvm::raw_ostream::write(&v14, ".__inits.", 9uLL);
    }

    write_unsigned<unsigned long>(&v14, v8, 0, 0, 0);
    llvm::raw_ostream::~raw_ostream(&v14);
    if (v25 >= 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if (v25 >= 0)
    {
      v11 = SHIBYTE(v25);
    }

    else
    {
      v11 = v24;
    }

    llvm::orc::ExecutionSession::intern(a2, v10, v11, &v14);
    v12 = a1[3];
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    a1[3] = v14;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p);
    }

    v14 = 0;
    ++v8;
  }

  while ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a1 + 3, &v14) & 1) != 0);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(a1, a1 + 3);
  result[4] = 0x4000;
  return result;
}

uint64_t *llvm::orc::getObjectFileInterface@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, llvm::object::COFFObjectFile **a3@<X8>)
{
  v130 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v119 = *a2;
  v120 = v5;
  llvm::object::ObjectFile::createObjectFile(&v119, 0, 1, &v121);
  v6 = v121;
  if ((v122 & 1) == 0)
  {
    v7 = *(v121 + 8);
    if (v121)
    {
      v8 = (v7 - 21) >= 0xFFFFFFFC;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      if (v121 && (v7 - 17) >= 0xFFFFFFFC)
      {
        v119 = 0uLL;
        LODWORD(v120) = 0;
        *(&v120 + 1) = 0;
        v9 = (*(*v121 + 48))(v121);
        v11 = v10;
        v12 = (*(*v6 + 56))(v6);
        v117 = v9;
        v118 = v11;
        if (v9 == v12)
        {
LABEL_10:
          v13 = (*(*v6 + 352))(v6);
          v15 = v14;
          v16 = (*(*v6 + 360))(v6);
          v117 = v13;
          v118 = v15;
          if (v15 == v17 && v13 == v16)
          {
            goto LABEL_77;
          }

          v19 = v16;
          v20 = v17;
          while (1)
          {
            (*(*v15 + 144))(&v125, v15, v13);
            if (v127)
            {
              v21 = v125;
              v125 = 0;
              if (v21)
              {
                (*(*v21 + 8))(v21);
              }
            }

            else if (llvm::orc::isELFInitializerSection(v125, v126))
            {
              llvm::orc::addInitSymbol(&v119, a1, *(v6 + 32), *(v6 + 40));
              if (v127)
              {
                v112 = v125;
                v125 = 0;
                if (v112)
                {
                  (*(*v112 + 8))(v112);
                }
              }

              goto LABEL_77;
            }

            (*(*v118 + 136))(v118, &v117);
            v13 = v117;
            v15 = v118;
            if (v118 == v20 && v117 == v19)
            {
              goto LABEL_77;
            }
          }
        }

        v56 = v12;
        while (1)
        {
          (*(*v118 + 40))(&v128);
          if (v129)
          {
            break;
          }

          if ((v128 & 3) != 2)
          {
            goto LABEL_88;
          }

          (*(*v118 + 120))(&v125);
          if (v126)
          {
            goto LABEL_85;
          }

          if (v125 == 4)
          {
LABEL_88:
            v58 = 3;
            goto LABEL_89;
          }

          (*(*v118 + 80))(&v125);
          if (v127)
          {
LABEL_85:
            v57 = v125;
            goto LABEL_86;
          }

          llvm::JITSymbolFlags::fromObjectSymbol(&v117, &v123);
          if (v124)
          {
            v60 = v123;
            *(a3 + 32) |= 1u;
            *a3 = v60;
            v58 = 1;
          }

          else
          {
            if ((*(*v118 + 456))(v118, v117) == 10)
            {
              BYTE1(v123) |= 2u;
            }

            llvm::orc::ExecutionSession::intern(a1, v125, v126, &v116);
            v61 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v119, &v116);
            v61[4] = v123;
            if (v116 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v116 + 1, 0xFFFFFFFFFFFFFFFFLL);
              if (v124)
              {
                if (v123)
                {
                  (*(*v123 + 8))(v123);
                }
              }
            }

            v58 = 0;
          }

          if (v127)
          {
            v62 = v125;
            v125 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }
          }

LABEL_89:
          if (v129)
          {
            v59 = v128;
            v128 = 0;
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }
          }

          if (v58 != 3 && v58)
          {
            goto LABEL_225;
          }

          (*(*v118 + 24))(v118, &v117);
          if (v117 == v56)
          {
            goto LABEL_10;
          }
        }

        v57 = v128;
        v128 = 0;
LABEL_86:
        *(a3 + 32) |= 1u;
        *a3 = v57;
        v58 = 1;
        goto LABEL_89;
      }

      if (v121 && v7 == 10)
      {
        v119 = 0uLL;
        LODWORD(v120) = 0;
        *(&v120 + 1) = 0;
        v37 = *(v121 + 48);
        if (v37)
        {
          v38 = *(v37 + 2);
          if (v38 == 0xFFFF)
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = *(*(v121 + 56) + 44);
        }

        if (v38 != -1)
        {
          operator new();
        }

        v70 = (*(*v121 + 48))(v121);
        v72 = v71;
        v73 = (*(*v6 + 56))(v6);
        v117 = v70;
        v118 = v72;
        if (v70 != v73)
        {
          v74 = v73;
          do
          {
            (*(*v118 + 40))(&v128);
            if (v129)
            {
              v75 = v128;
              v128 = 0;
LABEL_144:
              *(a3 + 32) |= 1u;
              *a3 = v75;
              v76 = 1;
              goto LABEL_203;
            }

            v77 = *(v6 + 96);
            if (v77)
            {
              v78 = v117;
            }

            else
            {
              v78 = 0;
            }

            if (v77)
            {
              v79 = 0;
            }

            else
            {
              v79 = v117;
            }

            if (v78)
            {
              if (!*(v78 + 17) || *(v78 + 16) != 3)
              {
                goto LABEL_164;
              }

              v80 = v78 + 18;
              v81 = *(v78 + 12);
              if (v81 >> 8 <= 0xFE)
              {
                v82 = *(v78 + 12);
              }

              else
              {
                v82 = v81;
              }
            }

            else
            {
              if (!*(v79 + 19) || *(v79 + 18) != 3)
              {
                goto LABEL_167;
              }

              v80 = v79 + 20;
              v82 = *(v79 + 12);
            }

            llvm::object::COFFObjectFile::getSection(&v125, v6, v82);
            v75 = v125;
            if (v126)
            {
              goto LABEL_144;
            }

            if ((*(v125 + 37) & 0x10) != 0 && *(v80 + 14) != 5)
            {
              if (v78)
              {
                v87 = *(v78 + 12);
                if (v87 >> 8 > 0xFE)
                {
                  v87 = v87;
                }
              }

              else
              {
                v87 = *(v79 + 12);
              }

              v95 = 19 * v87;
              v96 = *(v95 + 18);
              v97 = *(v80 + 16);
              *v95 = *v80;
              *(v95 + 16) = v97;
              if ((v96 & 1) == 0)
              {
                *(v95 + 18) = 1;
              }

LABEL_202:
              v76 = 3;
              goto LABEL_203;
            }

            if (v78)
            {
LABEL_164:
              v83 = *(v78 + 12);
              if (v83 + 256) >= 0x101u && (*(19 * *(v78 + 12) + 0x12))
              {
                goto LABEL_169;
              }

              goto LABEL_171;
            }

LABEL_167:
            v83 = *(v79 + 12);
            if (v83 >= 1 && *(19 * v83 + 0x12) == 1)
            {
LABEL_169:
              v84 = 19 * v83;
              v85 = *(v84 + 14) != 1;
              *(v84 + 18) = 0;
              if ((v128 & 2) == 0)
              {
                goto LABEL_202;
              }

              goto LABEL_173;
            }

LABEL_171:
            if (v128)
            {
              goto LABEL_202;
            }

            v85 = 0;
            if ((v128 & 2) == 0)
            {
              goto LABEL_202;
            }

LABEL_173:
            (*(*v118 + 120))(&v125);
            if (v126)
            {
              goto LABEL_174;
            }

            if (v125 == 4)
            {
              goto LABEL_202;
            }

            (*(*v118 + 80))(&v125);
            if (v127)
            {
LABEL_174:
              v75 = v125;
              goto LABEL_144;
            }

            llvm::JITSymbolFlags::fromObjectSymbol(&v117, &v123);
            if (v124)
            {
              v86 = v123;
              *(a3 + 32) |= 1u;
              *a3 = v86;
              v76 = 1;
            }

            else
            {
              v88 = BYTE1(v123);
              v89 = BYTE1(v123) | 0x10;
              BYTE1(v123) |= 0x10u;
              v90 = (v78 + 16);
              if (!v78)
              {
                v90 = (v79 + 18);
              }

              v91 = *v90;
              if (((v91 != 105) & ~v85) == 0)
              {
                v92 = v88 | 0x30;
                if (v91 == 105)
                {
                  v89 = v92;
                }

                if (v85)
                {
                  v89 |= 2u;
                }

                BYTE1(v123) = v89;
              }

              llvm::orc::ExecutionSession::intern(a1, v125, v126, &v116);
              v93 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v119, &v116);
              v93[4] = v123;
              if (v116 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add(v116 + 1, 0xFFFFFFFFFFFFFFFFLL);
                if (v124)
                {
                  if (v123)
                  {
                    (*(*v123 + 8))(v123);
                  }
                }
              }

              v76 = 0;
            }

            if (v127)
            {
              v94 = v125;
              v125 = 0;
              if (v94)
              {
                (*(*v94 + 8))(v94);
              }
            }

LABEL_203:
            if (v129)
            {
              v98 = v128;
              v128 = 0;
              if (v98)
              {
                (*(*v98 + 8))(v98);
              }
            }

            if (v76 != 3 && v76)
            {
              goto LABEL_225;
            }

            (*(*v118 + 24))(v118, &v117);
          }

          while (v117 != v74);
        }

        v99 = (*(*v6 + 352))(v6);
        v101 = v100;
        v102 = (*(*v6 + 360))(v6);
        v117 = v99;
        v118 = v101;
        if (v101 == v103 && v99 == v102)
        {
          v107 = *(a3 + 32);
        }

        else
        {
          v105 = v102;
          v106 = v103;
          v115 = *a3;
          v107 = *(a3 + 32);
          while (1)
          {
            (*(*v101 + 144))(&v125, v101, v99);
            if (v127)
            {
              v113 = v125;
              *(a3 + 32) = v107 | 1;
              *a3 = v113;
              goto LABEL_225;
            }

            if (v126 >= 4 && *v125 == *".CRT")
            {
              break;
            }

            (*(*v118 + 136))(v118, &v117);
            v99 = v117;
            v101 = v118;
            if (v118 == v106 && v117 == v105)
            {
              goto LABEL_224;
            }
          }

          llvm::orc::addInitSymbol(&v119, a1, *(v6 + 32), *(v6 + 40));
          if (v127)
          {
            v114 = v125;
            v125 = 0;
            if (v114)
            {
              (*(*v114 + 8))(v114);
            }

            *(a3 + 32) = v107;
            *a3 = v115;
          }
        }

LABEL_224:
        *(a3 + 32) = v107 & 0xFE;
        *a3 = v119;
        v119 = 0uLL;
        *(a3 + 4) = v120;
        LODWORD(v120) = 0;
        a3[3] = *(&v120 + 1);
        *(&v120 + 1) = 0;
LABEL_225:
        v47 = *(&v120 + 1);
        goto LABEL_226;
      }

      v119 = 0uLL;
      LODWORD(v120) = 0;
      *(&v120 + 1) = 0;
      v48 = (*(*v121 + 48))(v121);
      v50 = v49;
      v51 = (*(*v6 + 56))(v6);
      v117 = v48;
      v118 = v50;
      if (v48 == v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
LABEL_231:
        v111 = 0;
        *(a3 + 32) &= ~1u;
        *a3 = v54;
        v119 = 0uLL;
        a3[1] = v55;
        *(a3 + 4) = v53;
        LODWORD(v120) = 0;
        a3[3] = v52;
        *(&v120 + 1) = 0;
LABEL_232:
        if ((v111 - 1) > 0xFFFFFFFFFFFFFFDFLL)
        {
          goto LABEL_229;
        }

        v109 = (v111 + 8);
        goto LABEL_228;
      }

      v63 = v51;
      while (1)
      {
        (*(*v118 + 40))(&v128);
        if (v129)
        {
          break;
        }

        if ((v128 & 3) != 2)
        {
          goto LABEL_117;
        }

        (*(*v118 + 120))(&v125);
        if (v126)
        {
          goto LABEL_114;
        }

        if (v125 == 4)
        {
LABEL_117:
          v65 = 3;
          goto LABEL_118;
        }

        (*(*v118 + 80))(&v125);
        if (v127)
        {
LABEL_114:
          v64 = v125;
          goto LABEL_115;
        }

        llvm::JITSymbolFlags::fromObjectSymbol(&v117, &v123);
        if (v124)
        {
          v67 = v123;
          *(a3 + 32) |= 1u;
          *a3 = v67;
          v65 = 1;
        }

        else
        {
          llvm::orc::ExecutionSession::intern(a1, v125, v126, &v116);
          v68 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v119, &v116);
          v68[4] = v123;
          if (v116 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v116 + 1, 0xFFFFFFFFFFFFFFFFLL);
            if (v124)
            {
              if (v123)
              {
                (*(*v123 + 8))(v123);
              }
            }
          }

          v65 = 0;
        }

        if (v127)
        {
          v69 = v125;
          v125 = 0;
          if (v69)
          {
            (*(*v69 + 8))(v69);
          }
        }

LABEL_118:
        if (v129)
        {
          v66 = v128;
          v128 = 0;
          if (v66)
          {
            (*(*v66 + 8))(v66);
          }
        }

        if (v65 != 3 && v65)
        {
          v111 = *(&v120 + 1);
          goto LABEL_232;
        }

        (*(*v118 + 24))(v118, &v117);
        if (v117 == v63)
        {
          v55 = *(&v119 + 1);
          v54 = v119;
          v53 = v120;
          v52 = *(&v120 + 1);
          goto LABEL_231;
        }
      }

      v64 = v128;
      v128 = 0;
LABEL_115:
      *(a3 + 32) |= 1u;
      *a3 = v64;
      v65 = 1;
      goto LABEL_118;
    }

    v119 = 0uLL;
    LODWORD(v120) = 0;
    *(&v120 + 1) = 0;
    v23 = (*(*v121 + 48))(v121);
    v25 = v24;
    v26 = (*(*v6 + 56))(v6);
    v117 = v23;
    v118 = v25;
    if (v23 == v26)
    {
LABEL_26:
      v27 = (*(*v6 + 352))(v6);
      v29 = v28;
      v30 = (*(*v6 + 360))(v6);
      v117 = v27;
      v118 = v29;
      if (v29 != v31 || v27 != v30)
      {
        v33 = v30;
        v34 = v31;
        do
        {
          if (getSectionFlags(v6, v27) == 9 || ((v35 = *(*(v6 + 80) + 8 * v117), !*(v35 + 31)) ? (v36 = strlen((v35 + 16))) : (v36 = 16), (*(*v6 + 144))(&v125, v6, v117), (llvm::orc::isMachOInitializerSection((v35 + 16), v36, v125, v126) & 1) != 0))
          {
            llvm::orc::addInitSymbol(&v119, a1, *(v6 + 32), *(v6 + 40));
            break;
          }

          (*(*v118 + 136))(v118, &v117);
          LODWORD(v27) = v117;
        }

        while (v118 != v34 || v117 != v33);
      }

LABEL_77:
      v47 = 0;
      *(a3 + 32) &= ~1u;
      *a3 = v119;
      *(a3 + 4) = v120;
      a3[3] = *(&v120 + 1);
      a3[1] = *(&v119 + 1);
      v119 = 0uLL;
      LODWORD(v120) = 0;
      *(&v120 + 1) = 0;
LABEL_226:
      if ((v47 - 1) > 0xFFFFFFFFFFFFFFDFLL)
      {
LABEL_229:
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v119);
        return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v121);
      }

      v109 = (v47 + 8);
LABEL_228:
      atomic_fetch_add(v109, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_229;
    }

    v39 = v26;
    while (1)
    {
      (*(*v118 + 40))(&v128);
      if (v129)
      {
        break;
      }

      if ((v128 & 3) != 2)
      {
        goto LABEL_53;
      }

      (*(*v118 + 120))(&v125);
      if (v126)
      {
        goto LABEL_50;
      }

      if (v125 == 4)
      {
LABEL_53:
        v41 = 3;
        goto LABEL_54;
      }

      (*(*v118 + 80))(&v125);
      if (v127)
      {
LABEL_50:
        v40 = v125;
        goto LABEL_51;
      }

      llvm::JITSymbolFlags::fromObjectSymbol(&v117, &v123);
      if (v124)
      {
        v43 = v123;
        *(a3 + 32) |= 1u;
        *a3 = v43;
        v41 = 1;
      }

      else
      {
        if (v126)
        {
          v44 = v125;
          if (*v125 == 108)
          {
            BYTE1(v123) &= 0x6Fu;
          }
        }

        else
        {
          v44 = v125;
        }

        llvm::orc::ExecutionSession::intern(a1, v44, v126, &v116);
        v45 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v119, &v116);
        v45[4] = v123;
        if (v116 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v116 + 1, 0xFFFFFFFFFFFFFFFFLL);
          if (v124)
          {
            if (v123)
            {
              (*(*v123 + 8))(v123);
            }
          }
        }

        v41 = 0;
      }

      if (v127)
      {
        v46 = v125;
        v125 = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }

LABEL_54:
      if (v129)
      {
        v42 = v128;
        v128 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      if (v41 != 3 && v41)
      {
        goto LABEL_225;
      }

      (*(*v118 + 24))(v118, &v117);
      if (v117 == v39)
      {
        goto LABEL_26;
      }
    }

    v40 = v128;
    v128 = 0;
LABEL_51:
    *(a3 + 32) |= 1u;
    *a3 = v40;
    v41 = 1;
    goto LABEL_54;
  }

  v121 = 0;
  *(a3 + 32) |= 1u;
  *a3 = v6;
  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v121);
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(a1, v7, a2);
  }

  return v5;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(uint64_t a1, void *a2, void *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *result = 0;
  *result = *a3;
  *a3 = 0;
  result[4] = 0;
  return result;
}

double llvm::object::MachOUniversalBinary::objects(llvm::object::MachOUniversalBinary *this, const llvm::object::MachOUniversalBinary *a2)
{
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v6, a2, 0);
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(this + 64, 0, 0);
  v3 = v6[1];
  *this = v6[0];
  *(this + 1) = v3;
  result = *&v7;
  v5 = v8;
  *(this + 2) = v7;
  *(this + 3) = v5;
  return result;
}

uint64_t *llvm::orc::getDylibInterface@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v6 = llvm::identify_magic(a2, &v57);
  if (v6)
  {
    llvm::errorCodeToError(v6, v7, &v76);
    *&v80 = v76;
    llvm::FileError::build(a2, 0, 0, &v80);
  }

  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  if (v57 != 14)
  {
    if (v57 == 32)
    {
      v10 = *(a2 + 1);
      v66[0] = *a2;
      v66[1] = v10;
      v67 = a2[4];
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      getFileAux<llvm::MemoryBuffer>(v66, 0, &v68, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
      if (v69)
      {
        *&v11.__val_ = *(&v68 + 1);
        llvm::errorCodeToError(v68, v11, &v80);
        llvm::FileError::build(v66, 0, 0, &v80);
      }

      v16 = *(v68 + 8);
      v17 = *(v68 + 16) - v16;
      v18 = (*(*v68 + 16))(v68);
      *&v80 = v16;
      *(&v80 + 1) = v17;
      *&v81 = v18;
      *(&v81 + 1) = v19;
      llvm::object::TapiUniversal::create();
    }

    if (v57 != 20)
    {
      v13 = *(a2 + 32);
      if (v13 == 1)
      {
        v21 = "Cannot get interface for ";
        *&v76 = "Cannot get interface for ";
        LOWORD(v78) = 259;
        v14 = 3;
      }

      else
      {
        if (!*(a2 + 32))
        {
          v14 = 0;
          LOWORD(v78) = 256;
          v15 = 1;
          goto LABEL_23;
        }

        v22 = *a2;
        v23 = a2[1];
        v14 = 2;
        if (*(a2 + 33) != 1)
        {
          LOBYTE(v13) = 2;
          v22 = a2;
        }

        *&v76 = "Cannot get interface for ";
        *&v77 = v22;
        *(&v77 + 1) = v23;
        LOBYTE(v78) = 3;
        BYTE1(v78) = v13;
        v21 = &v76;
      }

      *&v80 = v21;
      *&v81 = " unrecognized file type";
      v15 = 3;
LABEL_23:
      LOBYTE(v82) = v14;
      BYTE1(v82) = v15;
      getErrorErrorCat();
      operator new();
    }
  }

  v8 = *(a2 + 1);
  v68 = *a2;
  v69 = v8;
  v70 = a2[4];
  llvm::MachO::getCPUType(&v90, (*(a1 + 72) + 40));
  if (v91)
  {
    v9 = v90;
    *(a3 + 24) |= 1u;
    *a3 = v9;
    return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v55);
  }

  llvm::MachO::getCPUSubType(&v88, (*(a1 + 72) + 40));
  if ((v89 & 1) == 0)
  {
    getFileAux<llvm::MemoryBuffer>(&v68, 0, v71, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
    if (v72)
    {
      *&v20.__val_ = v71[1];
      llvm::errorCodeToError(v71[0], v20, &v80);
      llvm::FileError::build(&v68, 0, 0, &v80);
    }

    v24 = v71[0];
    v25 = *(v71[0] + 1);
    v26 = *(v71[0] + 2) - v25;
    v27 = (*(*v71[0] + 16))(v71[0]);
    *&v80 = v25;
    *(&v80 + 1) = v26;
    *&v81 = v27;
    *(&v81 + 1) = v28;
    llvm::object::createBinary(&v80, 0, 1, &v86);
    v29 = v86;
    if (v87)
    {
      v86 = 0;
      *(a3 + 24) |= 1u;
      *a3 = v29;
      llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v86);
    }

    else
    {
      v30 = *(v86 + 2);
      if ((v30 - 17) > 3)
      {
        if (v30 == 1)
        {
          llvm::object::MachOUniversalBinary::objects(&v80, v86);
          v76 = v80;
          v77 = v81;
          v78 = v82;
          v79 = v83;
          v39 = v84;
          v40 = v85;
          v41 = v80;
          v42 = DWORD2(v80);
          if (v80 != v84 || DWORD2(v80) != v85)
          {
            v43 = v90;
            v44 = v88;
            do
            {
              v45 = *(v41 + 48);
              v46 = 32;
              if (v45 == -889275714)
              {
                v46 = 12;
              }

              if (*(&v76 + v46) == v43)
              {
                v48 = v45 == -889275714;
                v47 = 36;
                if (v48)
                {
                  v47 = 16;
                }

                if ((*(&v76 + v47) & 0xFFFFFF) == v44)
                {
                  llvm::object::MachOUniversalBinary::ObjectForArch::getAsObjectFile(&v76, v41, v38);
                }
              }

              llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v76, v41, v42 + 1);
              v41 = v76;
              v42 = DWORD2(v76);
              v48 = v76 == v39 && DWORD2(v76) == v40;
            }

            while (!v48);
          }

          *&v66[0] = "MachO universal binary at ";
          LOWORD(v67) = 259;
          llvm::operator+(v66, &v68, v73);
          v63 = " does not contain a slice for ";
          v65 = 259;
          llvm::operator+(v73, &v63, &v76);
          v49 = *(a1 + 72) + 40;
          v62 = 260;
          v60[0] = v49;
          llvm::operator+(&v76, v60, &v80);
          getErrorErrorCat();
          v58 = 3;
          v59 = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        v73[0] = "File at ";
        v75 = 259;
        llvm::operator+(v73, &v68, &v76);
        *&v66[0] = " is not a MachO";
        LOWORD(v67) = 259;
        llvm::operator+(&v76, v66, &v80);
        getErrorErrorCat();
        v63 = 3;
        v64 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v86 = 0;
      if (*(v29 + 15) != 6)
      {
        v73[0] = "MachO at ";
        v75 = 259;
        llvm::operator+(v73, &v68, &v76);
        *&v66[0] = " is not a dylib";
        LOWORD(v67) = 259;
        llvm::operator+(&v76, v66, &v80);
        getErrorErrorCat();
        v63 = 3;
        v64 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v76 = 0uLL;
      LODWORD(v77) = 0;
      v31 = (*(*v29 + 48))(v29);
      v33 = v32;
      v34 = (*(*v29 + 56))(v29);
      *&v66[0] = v31;
      *(&v66[0] + 1) = v33;
      if (v31 == v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
LABEL_64:
        *(a3 + 24) &= ~1u;
        *a3 = v36;
        v76 = 0uLL;
        *(a3 + 8) = v37;
        *(a3 + 16) = v35;
        LODWORD(v77) = 0;
      }

      else
      {
        v50 = v34;
        while (1)
        {
          (*(**(&v66[0] + 1) + 80))(v73);
          if (v74)
          {
            break;
          }

          llvm::orc::ExecutionSession::intern(a1, v73[0], v73[1], &v63);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v76, &v63, &v80);
          if ((v63 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v63 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v74)
          {
            v51 = v73[0];
            v73[0] = 0;
            if (v51)
            {
              (*(*v51 + 8))(v51);
            }
          }

          (*(**(&v66[0] + 1) + 24))(*(&v66[0] + 1), v66);
          if (*&v66[0] == v50)
          {
            v37 = *(&v76 + 1);
            v36 = v76;
            v35 = v77;
            goto LABEL_64;
          }
        }

        v53 = v73[0];
        *(a3 + 24) |= 1u;
        *a3 = v53;
      }

      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v76);
      v54 = v72;
      (*(*v29 + 8))(v29);
      llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v86);
      if (v54)
      {
        goto LABEL_27;
      }

      v24 = v71[0];
      if (!v71[0])
      {
        goto LABEL_27;
      }
    }

    (*(*v24 + 8))(v24);
LABEL_27:
    if ((v89 & 1) != 0 && v88)
    {
      (*(*v88 + 8))(v88);
    }

    goto LABEL_30;
  }

  v12 = v88;
  *(a3 + 24) |= 1u;
  *a3 = v12;
LABEL_30:
  if ((v91 & 1) != 0 && v90)
  {
    (*(*v90 + 8))(v90);
  }

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v55);
}

uint64_t *llvm::MachO::SymbolSet::exports@<X0>(llvm::MachO::SymbolSet *this@<X0>, uint64_t a2@<X8>)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_2883EC380;
  v12[3] = v12;
  v3 = *(this + 12);
  v4 = *(this + 28);
  if (*(this + 26))
  {
    v8.i64[0] = *(this + 12);
    v8.i64[1] = v3 + 32 * v4;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v8);
    v6 = v8;
    v3 = *(this + 12);
    v4 = *(this + 28);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  v8 = v6;
  v9 = v3 + 32 * v4;
  v10 = v9;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v11, v12);
  llvm::make_filter_range<llvm::iterator_range<llvm::MachO::SymbolSet::const_symbol_iterator>,std::function<BOOL ()(llvm::MachO::Symbol const*)>>(v8.i64, v11, a2);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v11);
  return std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v12);
}