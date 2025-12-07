int *llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(int *a1, llvm::hashing::detail ***a2, void *a3)
{
  v4 = (*a3 - *a2) >> 4;
  v5 = 1 << -__clz(v4 - 1);
  if (v4 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 5 || (v7 = -__clz(v6 - 1) & 0x1F, v7 <= 2))
  {
    *a1 = 1;
    v12 = a1 + 2;
    v14 = a1 + 18;
    v15 = 48;
    v16 = "ZN10PadGOCAtomC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_13unordered_mapI7NodeKeyIPK12ZinIrOpLayerENS0_10shared_ptrI10ZinPatternEENS0_4hashISE_EENS0_8equal_toISE_EENS4_INS0_4pairIKSE_SH_EEEEEEE3$_0" + 162;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = (1 << v7);
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer(16 * v10, 8uLL);
    *(a1 + 1) = buffer;
    v12 = a1 + 2;
    *(a1 + 2) = v10;
    v13 = *a1;
    *a1 = *a1 & 1;
    if (v13)
    {
      a3 = v9;
      a2 = v8;
      v14 = a1 + 18;
      v15 = 48;
      v16 = "NS0_4hashISE_EENS0_8equal_toISE_EENS4_INS0_4pairIKSE_SH_EEEEEEE3$_0";
    }

    else
    {
      v14 = &buffer[2 * v10];
      v12 = buffer;
      a3 = v9;
      a2 = v8;
      v15 = 16 * v10 - 16;
      v16 = "ZN10PadGOCAtomC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_13unordered_mapI7NodeKeyIPK12ZinIrOpLayerENS0_10shared_ptrI10ZinPatternEENS0_4hashISE_EENS0_8equal_toISE_EENS4_INS0_4pairIKSE_SH_EEEEEEE3$_0" + 162;
      if (v15 < 0x30)
      {
        v17 = buffer;
LABEL_15:
        v22 = *(v16 + 156);
        do
        {
          *v17++ = v22;
        }

        while (v17 != v14);
        goto LABEL_17;
      }
    }
  }

  v18 = (v15 >> 4) + 1;
  v17 = &v12[2 * (v18 & 0x1FFFFFFFFFFFFFFCLL)];
  v19 = v12 + 4;
  v20 = *(v16 + 156);
  v21 = v18 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v19 - 2) = v20;
    *(v19 - 1) = v20;
    *v19 = v20;
    v19[1] = v20;
    v19 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v18 != (v18 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_17:
  v23 = *a2;
  for (i = *a3; v23 != i; v23 += 2)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v23, v26);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(int *a1@<X0>, llvm::hashing::detail **a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v17);
  v7 = v17;
  if (result)
  {
    v8 = a1 + 2;
    if (*a1)
    {
      v9 = 4;
    }

    else
    {
      v8 = *(a1 + 1);
      v9 = a1[4];
    }

    v13 = 0;
    v14 = &v8[4 * v9];
    goto LABEL_17;
  }

  v18 = v17;
  v10 = *a1;
  v11 = *a1 >> 1;
  if (*a1)
  {
    v12 = 4;
  }

  else
  {
    v12 = a1[4];
  }

  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_19;
  }

  if (v12 + ~v11 - a1[1] <= v12 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v18);
    v10 = *a1;
    v7 = v18;
  }

  *a1 = v10 + 2;
  if (*v7 != -1)
  {
    --a1[1];
  }

  *v7 = *a2;
  v15 = a1 + 2;
  if (*a1)
  {
    v16 = 4;
  }

  else
  {
    v15 = *(a1 + 1);
    v16 = a1[4];
  }

  v14 = &v15[4 * v16];
  v13 = 1;
LABEL_17:
  *a3 = v7;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, llvm::hashing::detail **a2, char ***a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
    v8 = 3;
    v9 = *a2;
    v10 = a2[1];
    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_11:
    if (v9 != -2)
    {
      v21 = 0;
      v23 = 1;
      v24 = HashValue & v8;
      v13 = v5 + 16 * (HashValue & v8);
      v25 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_33;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v26 = 0;
          }

          else
          {
            v26 = v25 + 2 == 0;
          }

          if (v26)
          {
            v21 = v13;
          }

          v27 = v23 + v24;
          ++v23;
          v24 = v27 & v8;
          v13 = v5 + 16 * (v27 & v8);
          v25 = *v13;
        }

        while (*v13 == -2);
LABEL_33:
        if (v25 == -1)
        {
          goto LABEL_20;
        }

        if (v10 == *(v13 + 8) && !memcmp(v9, v25, v10))
        {
          goto LABEL_46;
        }
      }
    }

    v16 = 1;
    v17 = HashValue & v8;
    v13 = v5 + 16 * (HashValue & v8);
    v18 = *v13;
    if (*v13 != -2)
    {
      while (v18 != -1)
      {
        if (v10 != *(v13 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v18, v10))
        {
          v19 = v16 + v17;
          ++v16;
          v17 = v19 & v8;
          v13 = v5 + 16 * (v19 & v8);
          v18 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      goto LABEL_19;
    }

LABEL_46:
    result = 1;
    goto LABEL_47;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v13 = 0;
    result = 0;
    goto LABEL_47;
  }

  v5 = *(a1 + 8);
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = v6 - 1;
  v9 = *a2;
  v10 = a2[1];
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 != -2)
  {
    v21 = 0;
    v28 = 1;
    v29 = HashValue & v8;
    v13 = v5 + 16 * (HashValue & v8);
    v30 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_44;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30 + 2 == 0;
        }

        if (v31)
        {
          v21 = v13;
        }

        v32 = v28 + v29;
        ++v28;
        v29 = v32 & v8;
        v13 = v5 + 16 * (v32 & v8);
        v30 = *v13;
      }

      while (*v13 == -2);
LABEL_44:
      if (v30 == -1)
      {
        goto LABEL_20;
      }

      if (!*(v13 + 8))
      {
        goto LABEL_46;
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = v5 + 16 * (HashValue & v8);
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_46;
  }

  while (v14 != -1)
  {
    if (*(v13 + 8))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = v5 + 16 * (v15 & v8);
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

LABEL_19:
  v21 = 0;
LABEL_20:
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v22;
    result = 0;
  }

LABEL_47:
  *a3 = v13;
  return result;
}

int *llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(int *result, unsigned int a2)
{
  v2 = result;
  v38[7] = *MEMORY[0x1E69E9840];
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

  if ((*result & 1) == 0)
  {
    v7 = result + 2;
    v6 = *(result + 1);
    v8 = result[4];
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v25;
      v27 = *v2;
      v9 = (v6 + 16 * v8);
      *v2 = *v2 & 1;
      if (v27)
      {
        v10 = (v2 + 72);
        v11 = 48;
      }

      else
      {
        v10 = &buffer[v25];
        v7 = buffer;
        v11 = 16 * v25 - 16;
        if (v11 < 0x30)
        {
          v29 = buffer;
          goto LABEL_41;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *result = 1;
      v10 = result + 18;
      v11 = 48;
    }

    v28 = (v11 >> 4) + 1;
    v29 = &v7[v28 & 0x1FFFFFFFFFFFFFFCLL];
    v30 = v7 + 2;
    v31 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v30 - 2) = xmmword_1A75AD9C0;
      *(v30 - 1) = xmmword_1A75AD9C0;
      *v30 = xmmword_1A75AD9C0;
      v30[1] = xmmword_1A75AD9C0;
      v30 += 4;
      v31 -= 4;
    }

    while (v31);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_42:
      if (v8)
      {
        v35 = v6;
        do
        {
          if (*v35 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *&v37 = 0;
            llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v35, &v37);
            *v37 = *v35;
            *v2 += 2;
          }

          v35 += 2;
        }

        while (v35 != v9);
      }

      llvm::deallocate_buffer(v6, (16 * v8));
    }

    do
    {
LABEL_41:
      *v29++ = xmmword_1A75AD9C0;
    }

    while (v29 != v10);
    goto LABEL_42;
  }

  v12 = result + 2;
  v13 = &v37;
  if (*(result + 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = *v12;
    v13 = v38;
    v14 = result + 6;
    if (*(result + 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      v15 = result + 10;
      if (*(result + 5) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = result + 6;
    if (*(result + 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v13 = *v14;
  v13 += 2;
  v15 = result + 10;
  if (*(result + 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    v16 = result + 14;
    if (*(result + 7) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v13 = *v15;
  v13 += 2;
  v16 = result + 14;
  if (*(result + 7) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v17 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *v13 = *v16;
  v13 += 2;
  v17 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v17 & 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v19 = (v2 + 72);
    v20 = 48;
    goto LABEL_16;
  }

LABEL_30:
  *result = v17 & 0xFFFFFFFE;
  v32 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v32;
  v33 = *v2;
  *v2 = *v2 & 1;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = *(v2 + 16);
  if (!v18)
  {
    goto LABEL_34;
  }

  v12 = *(v2 + 8);
  v19 = &v12[v18];
  v20 = v19 - v12 - 16;
  if (v20 < 0x30)
  {
    v22 = *(v2 + 8);
    do
    {
LABEL_33:
      *v22 = xmmword_1A75AD9C0;
      v22 += 16;
    }

    while (v22 != v19);
    goto LABEL_34;
  }

LABEL_16:
  v21 = (v20 >> 4) + 1;
  v22 = &v12[v21 & 0x1FFFFFFFFFFFFFFCLL];
  v23 = v12 + 2;
  v24 = v21 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v23 - 2) = xmmword_1A75AD9C0;
    *(v23 - 1) = xmmword_1A75AD9C0;
    *v23 = xmmword_1A75AD9C0;
    v23[1] = xmmword_1A75AD9C0;
    v23 += 4;
    v24 -= 4;
  }

  while (v24);
  if (v21 != (v21 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (&v37 != v13)
  {
    v34 = &v37;
    do
    {
      if (*v34 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = 0;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v34, &v36);
        *v36 = *v34;
        *v2 += 2;
      }

      v34 += 2;
    }

    while (v34 != v13);
  }

  return result;
}

const void **llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t a1, llvm::hashing::detail **a2)
{
  v3 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
    v6 = 3;
    v7 = *a2;
    v8 = a2[1];
    if (!v8)
    {
LABEL_4:
      v9 = 1;
      if (v7 == -2)
      {
        v10 = HashValue & v6;
        v11 = (v3 + 16 * (HashValue & v6));
        v12 = *v11;
        if (*v11 == -2)
        {
          return v11;
        }

        while (v12 != -1)
        {
          if (v11[1])
          {
            v13 = v9 + v10;
            ++v9;
            v10 = v13 & v6;
            v11 = (v3 + 16 * (v13 & v6));
            v12 = *v11;
            if (*v11 != -2)
            {
              continue;
            }
          }

          return v11;
        }

        goto LABEL_31;
      }

      while (1)
      {
        v11 = (v3 + 16 * (HashValue & v6));
        if (*v11 != -2)
        {
          if (*v11 == -1)
          {
            goto LABEL_31;
          }

          if (!v11[1])
          {
            return v11;
          }
        }

        HashValue = v9 + (HashValue & v6);
        ++v9;
      }
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      return 0;
    }

    v3 = *(a1 + 8);
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
    v6 = v4 - 1;
    v7 = *a2;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  v14 = 1;
  if (v7 == -2)
  {
    v15 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v16 = *v11;
    if (*v11 == -2)
    {
      return v11;
    }

    while (v16 != -1)
    {
      if (v8 != v11[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v16, v8))
      {
        v17 = v14 + v15;
        ++v14;
        v15 = v17 & v6;
        v11 = (v3 + 16 * (v17 & v6));
        v16 = *v11;
        if (*v11 != -2)
        {
          continue;
        }
      }

      return v11;
    }

LABEL_31:
    if (v7 != -1)
    {
      return 0;
    }

    return v11;
  }

  while (1)
  {
    v19 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v20 = *v11;
    if (*v11 != -2)
    {
      if (v20 == -1)
      {
        goto LABEL_31;
      }

      if (v8 == v11[1] && !memcmp(v7, v20, v8))
      {
        return v11;
      }
    }

    HashValue = v14 + v19;
    ++v14;
  }
}

void llvm::toHex(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v17[2] = *MEMORY[0x1E69E9840];
  __src = v17;
  *__len = xmmword_1A75DA800;
  v5 = 2 * a2;
  if (2 * a2)
  {
    if (v5 >= 0x11)
    {
      v6 = a1;
      v7 = a2;
      v8 = a3;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v17, v5, 1);
      a3 = v8;
      a1 = v6;
      a2 = v7;
    }

    __len[0] = v5;
  }

  if (a2)
  {
    v9 = 0;
    if (a3)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v11 = *a1++;
      *(__src + v9) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 >> 4] | v10;
      *(__src + v9 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 & 0xF] | v10;
      v9 += 2;
      --a2;
    }

    while (a2);
    v12 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = __src;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v12;
  if (!v12)
  {
    *a4 = 0;
    v14 = __src;
    if (__src == v17)
    {
      return;
    }

    goto LABEL_14;
  }

  memmove(a4, v13, v12);
  *(a4 + v12) = 0;
  v14 = __src;
  if (__src != v17)
  {
LABEL_14:
    free(v14);
  }
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOptionalLocationSpecifier(llvm::raw_ostream *result, uint64_t a2)
{
  if (*(result + 72))
  {
    v3 = *(result + 2);
    v4 = v3[4];
    if (v3[3] == v4)
    {
      v6 = result;
      v7 = a2;
      llvm::raw_ostream::write(v3, " ", 1uLL);
      a2 = v7;
      v5 = v6 + 16;
    }

    else
    {
      *v4 = 32;
      ++v3[4];
      v5 = result + 16;
    }

    return mlir::AsmPrinter::Impl::printLocation(v5, a2, 1);
  }

  return result;
}

void *anonymous namespace::OperationPrinter::printNewline(_anonymous_namespace_::OperationPrinter *this)
{
  v2 = *(this + 2);
  ++*(this + 20);
  v3 = *(v2 + 4);
  if (v3 >= *(v2 + 3))
  {
    llvm::raw_ostream::write(v2, 10);
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  else
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  return llvm::raw_ostream::indent(v4, v5);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegionArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  (*(*a1 + 160))(a1);
  if (a5)
  {
    goto LABEL_10;
  }

  v11 = a1 + 16;
  v10 = *(a1 + 16);
  v12 = v10[4];
  if (v10[3] - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
    v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = *v11;
    v15 = *(*v11 + 32);
    if (*(*v11 + 24) - v15 > 0xCuLL)
    {
      qmemcpy(v15, "<<NULL TYPE>>", 13);
      v14[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v14, "<<NULL TYPE>>", 0xDuLL);
    }

    goto LABEL_10;
  }

  *v12 = 8250;
  v10[4] += 2;
  v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((mlir::AsmPrinter::Impl::printAlias(a1 + 16, v13) & 1) == 0)
  {
    mlir::AsmPrinter::Impl::printTypeImpl((a1 + 16), v13);
  }

LABEL_10:
  result = (*(*a1 + 192))(a1, a3, a4, 0, 0);
  if ((*(a1 + 72) & 1) == 0)
  {
    return result;
  }

  v17 = *(a2 + 32);
  v18 = *(a1 + 16);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v19 = 32;
    ++v18[4];
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_13:
      v20 = *(a1 + 16);
      v21 = v20[4];
      if (v20[3] - v21 > 3uLL)
      {
        *v21 = 677605228;
        v20[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v20, "loc(", 4uLL);
      }

      mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v17, 0, 1);
      result = *(a1 + 16);
      v22 = *(result + 4);
      if (v22 >= *(result + 3))
      {

        return llvm::raw_ostream::write(result, 41);
      }

      else
      {
        *(result + 4) = v22 + 1;
        *v22 = 41;
      }

      return result;
    }
  }

  return mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v17, 1, 1);
}

void *anonymous namespace::OperationPrinter::printSuccessor(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2)
{
  result = *(this + 2);
  v4 = *(this + 3);
  v5 = *(v4 + 392);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(v4 + 376);
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(v6 + 32 * v7);
  if (v8 != a2)
  {
    v14 = 1;
    while (v8 != -4096)
    {
      v15 = v7 + v14++;
      v7 = v15 & (v5 - 1);
      v8 = *(v6 + 32 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    v10 = result + 4;
    v9 = result[4];
    v11 = "INVALIDBLOCK";
    v12 = 12;
    if (result[3] - v9 > 0xBuLL)
    {
LABEL_11:
      result = memcpy(v9, v11, v12);
      *v10 += v12;
      return result;
    }

    goto LABEL_7;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v13 = v6 + 32 * v7;
  v11 = *(v13 + 16);
  v12 = *(v13 + 24);
  v10 = result + 4;
  v9 = result[4];
  if (v12 <= result[3] - v9)
  {
    if (!v12)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_7:

  return llvm::raw_ostream::write(result, v11, v12);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printSuccessorAndUseList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (a1 + 16);
  v11 = *(v9 + 392);
  if (v11)
  {
    v12 = *(v9 + 376);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_3:
      if (v13 != v11)
      {
        v19 = v12 + 32 * v13;
        v17 = *(v19 + 16);
        v18 = *(v19 + 24);
        v16 = (result + 32);
        v15 = *(result + 4);
        if (v18 <= *(result + 3) - v15)
        {
          if (!v18)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_7:
        result = llvm::raw_ostream::write(result, v17, v18);
        goto LABEL_10;
      }
    }

    else
    {
      v38 = 1;
      while (v14 != -4096)
      {
        v39 = v13 + v38++;
        v13 = v39 & (v11 - 1);
        v14 = *(v12 + 32 * v13);
        if (v14 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v16 = (result + 32);
  v15 = *(result + 4);
  v17 = "INVALIDBLOCK";
  v18 = 12;
  if (*(result + 3) - v15 <= 0xBuLL)
  {
    goto LABEL_7;
  }

LABEL_9:
  result = memcpy(v15, v17, v18);
  *v16 += v18;
LABEL_10:
  if (!a4)
  {
    return result;
  }

  v20 = *v10;
  v21 = *(*v10 + 32);
  if (v21 >= *(*v10 + 24))
  {
    llvm::raw_ostream::write(v20, 40);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
  }

  v22 = *(a1 + 16);
  v40 = a3;
  v41 = 0;
  v23 = mlir::ValueRange::dereference_iterator(&v40, 0);
  if (++v41 != a4)
  {
    do
    {
      v27 = v22[4];
      if (v22[3] - v27 <= 1uLL)
      {
        llvm::raw_ostream::write(v22, ", ", 2uLL);
      }

      else
      {
        *v27 = 8236;
        v22[4] += 2;
      }

      v26 = mlir::ValueRange::dereference_iterator(&v40, v41);
      ++v41;
    }

    while (v41 != a4);
  }

  v24 = *v10;
  v25 = *(*v10 + 32);
  if ((*(*v10 + 24) - v25) > 2)
  {
    *(v25 + 2) = 32;
    *v25 = 14880;
    v24[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v24, " : ", 3uLL);
  }

  v28 = *v10;
  v40 = a3;
  v41 = 0;
  v29 = *(mlir::ValueRange::dereference_iterator(&v40, 0) + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(v10, v29 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(v10, v30);
      if (++v41 != a4)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (++v41 != a4)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  v31 = *v10;
  v32 = *(*v10 + 32);
  if (*(*v10 + 24) - v32 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v31, "<<NULL TYPE>>", 0xDuLL);
    goto LABEL_29;
  }

  qmemcpy(v32, "<<NULL TYPE>>", 13);
  v31[4] += 13;
  if (++v41 != a4)
  {
    do
    {
LABEL_38:
      v34 = v28[4];
      if (v28[3] - v34 > 1uLL)
      {
        *v34 = 8236;
        v28[4] += 2;
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
LABEL_43:
          if ((mlir::AsmPrinter::Impl::printAlias(v10, v35) & 1) == 0)
          {
            mlir::AsmPrinter::Impl::printTypeImpl(v10, v35);
          }

          goto LABEL_37;
        }
      }

      else
      {
        llvm::raw_ostream::write(v28, ", ", 2uLL);
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
          goto LABEL_43;
        }
      }

      v36 = *v10;
      v37 = *(*v10 + 32);
      if (*(*v10 + 24) - v37 > 0xCuLL)
      {
        qmemcpy(v37, "<<NULL TYPE>>", 13);
        v36[4] += 13;
      }

      else
      {
        llvm::raw_ostream::write(v36, "<<NULL TYPE>>", 0xDuLL);
      }

LABEL_37:
      ++v41;
    }

    while (v41 != a4);
  }

LABEL_30:
  result = *v10;
  v33 = *(*v10 + 32);
  if (v33 >= *(*v10 + 24))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v33 + 1;
  *v33 = 41;
  return result;
}

uint64_t anonymous namespace::OperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::OperationPrinter *this, mlir::Operation *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  if ((*(this + 72) & 4) != 0)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  v3 = *(a2 + 6);
  if (*(v3 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = *(*v3 + 56);

    return v4();
  }

  v80[0] = *(v3 + 8);
  v6 = a2;
  Values = mlir::SparseElementsAttr::getValues(v80);
  a2 = v6;
  if (!Values)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  (*(*Values + 72))(v84);
  if (v85 < 8)
  {
    a2 = v6;
    return (*(*this + 216))(this, a2, 1);
  }

  v80[0] = *(*(v6 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v80);
  if (v9)
  {
    v10 = AttrData;
    v11 = v9;
    if (v9 < 8)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_23;
    }

    if (v9 >= 0x20)
    {
      v14 = 0uLL;
      v15.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v15.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v16 = vdupq_n_s64(1uLL);
      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      v17 = 0uLL;
      v18 = (AttrData + 16);
      v19 = 0uLL;
      v20 = v9 & 0xFFFFFFFFFFFFFFE0;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = vceqq_s8(v18[-1], v15);
        v35 = vmovl_u8(*v34.i8);
        v36 = vmovl_high_u8(v34);
        v37 = vmovl_high_u16(v36);
        v38.i64[0] = v37.u32[2];
        v38.i64[1] = v37.u32[3];
        v25 = vaddq_s64(v25, vandq_s8(v38, v16));
        v39 = vmovl_high_u16(v35);
        v40 = vmovl_u16(*v36.i8);
        v38.i64[0] = v37.u32[0];
        v38.i64[1] = v37.u32[1];
        v24 = vaddq_s64(v24, vandq_s8(v38, v16));
        v38.i64[0] = v40.u32[2];
        v38.i64[1] = v40.u32[3];
        v23 = vaddq_s64(v23, vandq_s8(v38, v16));
        v38.i64[0] = v39.u32[2];
        v38.i64[1] = v39.u32[3];
        v21 = vaddq_s64(v21, vandq_s8(v38, v16));
        v41 = vmovl_u16(*v35.i8);
        v38.i64[0] = v40.u32[0];
        v38.i64[1] = v40.u32[1];
        v22 = vaddq_s64(v22, vandq_s8(v38, v16));
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v42 = vandq_s8(v38, v16);
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v43 = vandq_s8(v38, v16);
        v38.i64[0] = v39.u32[0];
        v38.i64[1] = v39.u32[1];
        v44 = vceqq_s8(*v18, v15);
        v19 = vaddq_s64(v19, vandq_s8(v38, v16));
        v45 = vmovl_u8(*v44.i8);
        v46 = vmovl_high_u8(v44);
        v17 = vaddq_s64(v17, v43);
        v47 = vmovl_high_u16(v46);
        v14 = vaddq_s64(v14, v42);
        v38.i64[0] = v47.u32[2];
        v38.i64[1] = v47.u32[3];
        v33 = vaddq_s64(v33, vandq_s8(v38, v16));
        v48 = vmovl_high_u16(v45);
        v49 = vmovl_u16(*v46.i8);
        v38.i64[0] = v47.u32[0];
        v38.i64[1] = v47.u32[1];
        v32 = vaddq_s64(v32, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[2];
        v38.i64[1] = v49.u32[3];
        v31 = vaddq_s64(v31, vandq_s8(v38, v16));
        v38.i64[0] = v48.u32[2];
        v38.i64[1] = v48.u32[3];
        v29 = vaddq_s64(v29, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[0];
        v38.i64[1] = v49.u32[1];
        v30 = vaddq_s64(v30, vandq_s8(v38, v16));
        v50 = vmovl_u16(*v45.i8);
        v38.i64[0] = v48.u32[0];
        v38.i64[1] = v48.u32[1];
        v28 = vaddq_s64(v28, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[2];
        v38.i64[1] = v50.u32[3];
        v27 = vaddq_s64(v27, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[0];
        v38.i64[1] = v50.u32[1];
        v26 = vaddq_s64(v26, vandq_s8(v38, v16));
        v18 += 2;
        v20 -= 32;
      }

      while (v20);
      v13 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v26, v14), vaddq_s64(v30, v22)), vaddq_s64(vaddq_s64(v28, v19), vaddq_s64(v32, v24))), vaddq_s64(vaddq_s64(vaddq_s64(v27, v17), vaddq_s64(v31, v23)), vaddq_s64(vaddq_s64(v29, v21), vaddq_s64(v33, v25)))));
      if (v9 == v12)
      {
        goto LABEL_27;
      }

      if ((v9 & 0x18) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v51 = v12;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    v52 = 0uLL;
    v53 = v13;
    v54 = (AttrData + v51);
    v55 = v51 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v56 = vdupq_n_s64(1uLL);
    v57 = 0uLL;
    v58 = 0uLL;
    do
    {
      v59 = *v54++;
      v60 = vmovl_u8(vceq_s8(v59, 0x2E2E2E2E2E2E2E2ELL));
      v61 = vmovl_u16(*v60.i8);
      v62.i64[0] = v61.u32[0];
      v62.i64[1] = v61.u32[1];
      v63 = vandq_s8(v62, v56);
      v62.i64[0] = v61.u32[2];
      v62.i64[1] = v61.u32[3];
      v64 = vandq_s8(v62, v56);
      v65 = vmovl_high_u16(v60);
      v62.i64[0] = v65.u32[0];
      v62.i64[1] = v65.u32[1];
      v66 = vandq_s8(v62, v56);
      v62.i64[0] = v65.u32[2];
      v62.i64[1] = v65.u32[3];
      v58 = vaddq_s64(v58, vandq_s8(v62, v56));
      v57 = vaddq_s64(v57, v66);
      v52 = vaddq_s64(v52, v64);
      v53 = vaddq_s64(v53, v63);
      v55 += 8;
    }

    while (v55);
    v13 = vaddvq_s64(vaddq_s64(vaddq_s64(v53, v57), vaddq_s64(v52, v58)));
    if (v9 != v12)
    {
LABEL_23:
      v67 = v9 - v12;
      v68 = (AttrData + v12);
      do
      {
        v69 = *v68++;
        if (v69 == 46)
        {
          ++v13;
        }

        --v67;
      }

      while (v67);
    }

LABEL_27:
    if (v13 == 1)
    {
      v70 = *(this + 11) + 16 * *(this + 24);
      v81 = 773;
      v80[0] = *(v70 - 16);
      v80[1] = *(v70 - 8);
      v80[2] = ".";
      llvm::Twine::str(v80, v82);
      v71 = v83;
      v72 = v82[0];
      if (v83 >= 0)
      {
        v73 = v82;
      }

      else
      {
        v73 = v82[0];
      }

      if (v83 >= 0)
      {
        v74 = v83;
      }

      else
      {
        v74 = v82[1];
      }

      if (v11 >= v74 && (!v74 || !memcmp(v10, v73, v74)))
      {
        v10 += v74;
        v11 -= v74;
      }

      if (v71 < 0)
      {
        operator delete(v72);
      }
    }

    v75 = *(this + 2);
    v76 = *(v75 + 32);
    if (v11 <= *(v75 + 24) - v76)
    {
      if (v11)
      {
        memcpy(v76, v10, v11);
        *(v75 + 32) += v11;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), v10, v11);
    }
  }

  if ((v85 & 2) != 0)
  {
    v77 = v84;
  }

  else
  {
    v77 = v84[0];
  }

  result = (*(v85 & 0xFFFFFFFFFFFFFFF8))(v77, v6, this);
  v78 = v85;
  if (v85 >= 8)
  {
    if ((v85 & 4) != 0)
    {
      if ((v85 & 2) != 0)
      {
        v79 = v84;
      }

      else
      {
        v79 = v84[0];
      }

      result = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 16))(v79);
    }

    if ((v78 & 2) == 0)
    {
      llvm::deallocate_buffer(v84[0], v84[1]);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegion(_anonymous_namespace_::OperationPrinter *this, mlir::Region *a2, int a3, char a4, int a5)
{
  v6 = *(this + 72);
  result = *(this + 2);
  v9 = *(result + 3);
  v8 = *(result + 4);
  if ((v6 & 8) == 0)
  {
    if (v9 == v8)
    {
      result = llvm::raw_ostream::write(result, "{", 1uLL);
      v14 = *(result + 4);
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
LABEL_4:
        *(result + 4) = v14 + 1;
        *v14 = 10;
        if (*a2 == a2)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v8 = 123;
      v14 = (*(result + 4) + 1);
      *(result + 4) = v14;
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
        goto LABEL_4;
      }
    }

    llvm::raw_ostream::write(result, 10);
    if (*a2 == a2)
    {
LABEL_5:
      result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
      v15 = *(result + 4);
      if (*(result + 3) != v15)
      {
LABEL_6:
        *v15 = 125;
        v16 = *(result + 4) + 1;
LABEL_10:
        *(result + 4) = v16;
        return result;
      }

      goto LABEL_38;
    }

LABEL_13:
    v19 = *(a2 + 2);
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19) && v19)
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
      v21 = (*(InterfaceFor + 24))();
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        v33 = v21;
        v34 = v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 88, this + 104, v23 + 1, 16);
        v21 = v33;
        v22 = v34;
        LODWORD(v23) = *(this + 24);
      }
    }

    else
    {
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 88, this + 104, v23 + 1, 16);
        v22 = 0;
        LODWORD(v23) = *(this + 24);
      }

      else
      {
        v22 = 0;
      }

      v21 = "";
    }

    v26 = (*v25 + 16 * v23);
    *v26 = v21;
    v26[1] = v22;
    ++*v24;
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v27 - 8);
    }

    else
    {
      v28 = 0;
    }

    if (a5)
    {
      v29 = *(v28 + 4);
      v30 = v29 == (v28 + 32);
      if (v29 == (v28 + 32) || !a3)
      {
LABEL_32:
        for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
        {
          if (i)
          {
            v32 = (i - 8);
          }

          else
          {
            v32 = 0;
          }
        }

        --*(this + 24);
        result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v15 = *(result + 4);
        if (*(result + 3) != v15)
        {
          goto LABEL_6;
        }

LABEL_38:
        v17 = "}";
        v18 = 1;
        goto LABEL_39;
      }
    }

    else if (!a3)
    {
      v30 = 0;
      goto LABEL_32;
    }

    v30 = ((*(v28 + 7) - *(v28 + 6)) & 0x7FFFFFFF8) != 0;
    goto LABEL_32;
  }

  if ((v9 - v8) > 4)
  {
    v8[4] = 125;
    *v8 = 774778491;
    v16 = *(result + 4) + 5;
    goto LABEL_10;
  }

  v17 = "{...}";
  v18 = 5;
LABEL_39:

  return llvm::raw_ostream::write(result, v17, v18);
}

void anonymous namespace::OperationPrinter::shadowRegionArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v32[0] = a3;
  v32[1] = a4;
  v29 = v31;
  v30 = xmmword_1A75DA800;
  v5 = a4;
  if (a4)
  {
    v7 = 0;
    do
    {
      v13 = mlir::ValueRange::dereference_iterator(v32, v7);
      if (v13)
      {
        v14 = v13;
        v15 = *(a2 + 8);
        if (v15)
        {
          v16 = v15 - 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(*(v16 + 48) + 8 * v7);
        v27 = &v29;
        v28 = v17;
        *&v30 = 0;
        v21 = 2;
        v25 = 0;
        v26 = 1;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v20 = &unk_1F1A36338;
        llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
        v11 = 0;
        v18 = v27[1];
        if (v18)
        {
          v10 = *v27 + 1;
        }

        else
        {
          v10 = *v27;
        }

        v19 = v18 - (v18 != 0);
        if (v18 >= 2)
        {
          v4[64] += v19;
          v11 = v4[54];
          if (v11 && &v11[v19] <= v4[55])
          {
            v4[54] = &v11[v19];
          }

          else
          {
            v8 = v10;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v4 + 54), v19, v19, 0);
            v10 = v8;
            v11 = Slow;
          }

          memmove(v11, v10, v19);
        }

        v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[]((v4 + 38), &v28);
        *v12 = v11;
        v12[1] = v19;
        llvm::raw_ostream::~raw_ostream(&v20);
      }

      ++v7;
    }

    while (v5 != v7);
    if (v29 != v31)
    {
      free(v29);
    }
  }
}

double anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23 = a2;
  v24[0] = a3;
  v24[1] = a4;
  if (a2)
  {
    Value = mlir::AffineMapAttr::getValue(&v23);
    NumDims = mlir::AffineMap::getNumDims(&Value);
    v20[0] = &NumDims;
    v20[1] = a1;
    v20[2] = v24;
    Results = mlir::AffineMap::getResults(&Value);
    if (v6)
    {
      v8 = Results;
      v9 = v6;
      v12 = *(a1 + 16);
      v10 = (a1 + 16);
      v11 = v12;
      if (v9 != 1)
      {
        v13 = 8 * v9;
        v14 = v8 + 1;
        v15 = v13 - 8;
        do
        {
          v17 = v11[4];
          if (v11[3] - v17 > 1uLL)
          {
            *v17 = 8236;
            v11[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v11, ", ", 2uLL);
          }

          v16 = *v14++;
          v15 -= 8;
        }

        while (v15);
      }
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = v18[4];
    if ((v18[3] - v19) > 0x12)
    {
      *(v19 + 15) = 1044271169;
      result = *"<<NULL AFFINE MAP>>";
      *v19 = *"<<NULL AFFINE MAP>>";
      v18[4] += 19;
    }

    else
    {

      llvm::raw_ostream::write(v18, "<<NULL AFFINE MAP>>", 0x13uLL);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v7[0] = a1;
  v7[1] = v9;
  v7[2] = v8;
}

uint64_t mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v18 = v23;
  }

  v19 = *(v4 + 435);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(v17, v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 24 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
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
        v9 = (v4 + 24 * (v15 & v7));
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

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = &result[3 * v11];
      do
      {
        *v13 = -4096;
        v13 += 3;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[3] = -4096;
      v15 += 6;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = &v4[3 * v3];
      do
      {
        *v6 = -4096;
        v6 += 3;
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = &v4[3 * (v7 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v13 >> 47) ^ v13);
      LODWORD(v13) = -348639895 * ((v14 >> 47) ^ v14);
      v15 = *(result + 16) - 1;
      v16 = v15 & v13;
      v11 = *result + 24 * v16;
      v17 = *v11;
      if (v12 != *v11)
      {
        v18 = 0;
        v19 = 1;
        while (v17 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == -8192;
          }

          if (v20)
          {
            v18 = v11;
          }

          v21 = v16 + v19++;
          v16 = v21 & v15;
          v11 = *result + 24 * (v21 & v15);
          v17 = *v11;
          if (v12 == *v11)
          {
            goto LABEL_13;
          }
        }

        if (v18)
        {
          v11 = v18;
        }
      }

LABEL_13:
      *v11 = v12;
      *(v11 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(mlir::AffineMapAttr,mlir::ValueRange)::$_0>(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  if (a3)
  {
    v4 = **a1 + a2;
    v5 = *(v3 + 16);
    v6 = *(v5 + 32);
    if (*(v5 + 24) - v6 > 6uLL)
    {
      *(v6 + 3) = 678195042;
      *v6 = 1651341683;
      *(v5 + 32) += 7;
    }

    else
    {
      v7 = a1;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(*(a1 + 16), v4);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(*(a1 + 16), a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(mlir::AffineExpr,mlir::ValueRange,mlir::ValueRange)::$_0>(void *a1, unsigned int a2, char a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(v4 + 32);
    if (*(v4 + 24) - v5 > 6uLL)
    {
      *(v5 + 3) = 678195042;
      *v5 = 1651341683;
      *(v4 + 32) += 7;
    }

    else
    {
      v6 = a1;
      v7 = a2;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v6;
      a2 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(a1[2], a2);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(a1[1], a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::DummyAliasOperationPrinter *this, mlir::Operation *a2)
{
  v3 = *(*(this + 2) + 40);
  if (v3)
  {
    v4 = a2;
    a2 = v4;
    v3 = *(*(this + 2) + 40);
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(*this + 216);

    return v7(this, a2, 1);
  }

  else
  {
    v5 = *(**(a2 + 6) + 56);

    return v5();
  }
}

void anonymous namespace::DummyAliasOperationPrinter::~DummyAliasOperationPrinter(_anonymous_namespace_::DummyAliasOperationPrinter *this)
{
  *this = &unk_1F19FC588;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));
}

{
  *this = &unk_1F19FC588;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printAlias(uint64_t a1, void **a2)
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printRegionArgument(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a1[2] + 40))
  {
    v5 = a1[3];
    v6 = *(a2 + 32);
  }

  return result;
}

void *anonymous namespace::DummyAliasOperationPrinter::printOperand(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3)
{
  v3 = *(a3 + 4);
  if (*(a3 + 3) == v3)
  {
    return llvm::raw_ostream::write(a3, "%", 1uLL);
  }

  *v3 = 37;
  ++*(a3 + 4);
  return result;
}

const void **anonymous namespace::DummyAliasOperationPrinter::printOptionalAttrDict(const void **result, uint64_t *a2, uint64_t a3, llvm::hashing::detail **a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    if (a5)
    {
      v13[0] = a4;
      CompressedBytes = &a4[2 * a5];
      llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v15, v13, &CompressedBytes);
      v8 = 16 * a3;
      while (1)
      {
        CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v6);
        v13[0] = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
        v13[1] = v9;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v15, v13);
        if (result)
        {
          if (v15)
          {
            if (result != &v18)
            {
              goto LABEL_5;
            }
          }

          else if (result != (v16 + 16 * v17))
          {
            goto LABEL_5;
          }
        }

        result = (*(*v7 + 5))(v7, v6[1]);
LABEL_5:
        v6 += 2;
        v8 -= 16;
        if (!v8)
        {
          if ((v15 & 1) == 0)
          {
            llvm::deallocate_buffer(v16, (16 * v17));
          }

          return result;
        }
      }
    }

    v10 = 16 * a3;
    v11 = a2 + 1;
    do
    {
      v12 = *v11;
      v11 += 2;
      result = (*(*v7 + 5))(v7, v12);
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

_anonymous_namespace_::AliasInitializer **anonymous namespace::DummyAliasOperationPrinter::printRegion(_anonymous_namespace_::AliasInitializer **this, mlir::Region *a2, BOOL a3, char a4)
{
  if (*a2 != a2)
  {
    v4 = this;
    if ((*(this[2] + 40) & 8) != 0)
    {
      v10 = this[8];
      if ((this[7] - v10) > 4)
      {
        *(v10 + 4) = 125;
        *v10 = 774778491;
        this[8] = (this[8] + 5);
      }

      else
      {
        v11 = this + 4;

        return llvm::raw_ostream::write(v11, "{...}", 5uLL);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      if (v6)
      {
        v7 = (v6 - 8);
      }

      else
      {
        v7 = 0;
      }

      for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
      {
        if (i)
        {
          v9 = (i - 8);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3)
{
  v62[6] = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[16] = 0;
  *&__src[24] = 0;
  v60 = v62;
  v61 = 0x600000000;
  v45[0] = a2;
  *&v45[1] = *__src;
  *(&v45[2] + 4) = *&__src[12];
  v46 = &v48;
  v47 = 0x600000000;
  v8 = v7;
  if (v46 != &v48)
  {
    free(v46);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (v8)
  {
    v42 = v6 - *(a1 + 5);
    v45[0] = &v45[3];
    *&v45[1] = xmmword_1A75A2980;
    v10 = *(*a1 + 32);
    v9 = *(*a1 + 40);
    if (v10 != v9)
    {
      do
      {
        while (1)
        {
          v11 = (*(**v10 + 24))(*v10, a2, a1 + 112);
          if (v11)
          {
            break;
          }

          if (++v10 == v9)
          {
            goto LABEL_15;
          }
        }

        v12 = v11;
        llvm::SmallVectorImpl<char>::operator=(v45, a1 + 7);
        ++v10;
      }

      while (v12 != 2 && v10 != v9);
LABEL_15:
      v14 = v45[0];
      if (v45[1])
      {
        *__src = &__src[24];
        *&__src[8] = xmmword_1A75DA800;
        v15 = sanitizeIdentifier(v45[0], v45[1], __src, "$_-", 3uLL, 0);
        v17 = v16;
        if (v16)
        {
          v18 = v15;
          v19 = *(a1 + 1);
          v19[10] = v19[10] + v16;
          v20 = *v19;
          v21 = *v19 + v16;
          if (*v19)
          {
            v22 = v21 > v19[1];
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v40 = v18;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v19, v16, v16, 0);
            v18 = v40;
            v20 = Slow;
          }

          else
          {
            *v19 = v21;
          }

          memmove(v20, v18, v17);
        }

        else
        {
          v20 = 0;
        }

        *(v6 + 8) = v20;
        *(v6 + 16) = v17;
        *(v6 + 24) = 1;
        *(v6 + 32) = 1;
        *(v6 + 48) = 0;
        if (*__src != &__src[24])
        {
          free(*__src);
        }

        v14 = v45[0];
      }

      if (v14 != &v45[3])
      {
        free(v14);
      }
    }

    if (a3)
    {
      v23 = -1073741824;
    }

    else
    {
      v23 = 0x40000000;
    }

    *(v6 + 32) = *(v6 + 32) & 0x3FFFFFFF | v23;
    *__src = &__src[16];
    *&__src[8] = 0x600000000;
    memset(&v45[1], 0, 28);
    v45[0] = &unk_1F19FC6C0;
    v46 = &v48;
    v47 = 0;
    v48 = a1;
    v49 = a3;
    v50 = __src;
    v51 = 0;
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &unk_1F1A363F8;
    v24 = *a2;
    v25 = **a2;
    if (v25[3] == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      if (v24[17] == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v44 = v31;
      if (v31)
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v44);
        (*(v45[0] + 4))(v45, RHS);
        v43[0] = mlir::DenseElementsAttr::getRawStringData(&v44);
        v43[1] = v33;
        if (*(*v43[0] + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::ElementsAttr::isSplat(v43) & 1) == 0)
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v44);
          (*(v45[0] + 5))(v45, RawStringData);
        }

        if (mlir::MemRefType::getMemorySpace(&v44))
        {
          MemorySpace = mlir::MemRefType::getMemorySpace(&v44);
          (*(v45[0] + 5))(v45, MemorySpace);
        }
      }

      else
      {
        v43[0] = v45;
        mlir::AbstractAttribute::walkImmediateSubElements(v24);
      }
    }

    else
    {
      (*(*v25 + 7))(**a2, a2, v45);
    }

    v26 = v51;
    v27 = *(a1 + 5) + v42;
    v28 = (v27 + 40);
    if ((v27 + 40) == __src)
    {
LABEL_64:
      if (v26)
      {
        *(v27 + 32) = *(v27 + 32) & 0xC0000000 | (v26 + 1) & 0x3FFFFFFF;
        v45[0] = &unk_1F19FC6C0;
        llvm::raw_null_ostream::~raw_null_ostream(&v52);
        v38 = v46;
        if (v46 == &v48)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v45[0] = &unk_1F19FC6C0;
        llvm::raw_null_ostream::~raw_null_ostream(&v52);
        v38 = v46;
        if (v46 == &v48)
        {
LABEL_67:
          llvm::deallocate_buffer(v45[2], (8 * LODWORD(v45[4])));
        }
      }

      free(v38);
      goto LABEL_67;
    }

    v29 = *__src;
    if (*__src != &__src[16])
    {
      v30 = *(v27 + 40);
      if (v30 != (v27 + 56))
      {
        free(v30);
        v29 = *__src;
      }

      *(v27 + 40) = v29;
      *(v27 + 48) = *&__src[8];
      *__src = &__src[16];
      *&__src[12] = 0;
      goto LABEL_63;
    }

    v36 = *&__src[8];
    v37 = *(v27 + 48);
    if (v37 >= *&__src[8])
    {
      if (*&__src[8])
      {
        memmove(*v28, *__src, 8 * *&__src[8]);
      }

      goto LABEL_62;
    }

    if (*(v27 + 52) >= *&__src[8])
    {
      if (v37)
      {
        memmove(*v28, *__src, 8 * v37);
        goto LABEL_60;
      }
    }

    else
    {
      *(v27 + 48) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 40, (v27 + 56), v36, 8);
    }

    v37 = 0;
LABEL_60:
    if (*&__src[8] != v37)
    {
      memcpy(*v28 + 8 * v37, (*__src + 8 * v37), 8 * (*&__src[8] - v37));
    }

LABEL_62:
    *(v27 + 48) = v36;
LABEL_63:
    *&__src[8] = 0;
    goto LABEL_64;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v6 + 32) & 0x3FFFFFFF;
}

uint64_t llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>>::insert(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 + 1);
  v13 = *a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>(a1, &v13, &v14, &v15);
  if (v16 != 1)
  {
    return *(a1 + 24) + 104 * *(v15 + 8);
  }

  v5 = *(a1 + 32);
  *(v15 + 8) = v5;
  v12 = v4;
  v13 = a2;
  if (v5 >= *(a1 + 36))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v6 = (*(a1 + 24) + 104 * v5);
    *v6 = *a2;
    v7 = *v4;
    v8 = *(v4 + 12);
    v6[5] = v6 + 7;
    v9 = (v6 + 5);
    *(v9 - 20) = v8;
    *(v9 - 32) = v7;
    *(v9 + 8) = 0x600000000;
    if (*(a2 + 12))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, a2 + 5);
    }

    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(a1 + 24) + 104 * v10 - 104;
}

_anonymous_namespace_::AliasInitializer *anonymous namespace::AliasInitializer::markAliasNonDeferrable(_anonymous_namespace_::AliasInitializer *this, uint64_t a2)
{
  v2 = *(this + 5) + 104 * a2;
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    *(v2 + 32) = v3 & 0x7FFFFFFF;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = this;
      v6 = *(v2 + 40);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

void anonymous namespace::DummyAliasDialectAsmPrinter::~DummyAliasDialectAsmPrinter(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this)
{
  *this = &unk_1F19FC6C0;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

{
  *this = &unk_1F19FC6C0;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          *(v22 + 8) = *(v16 + 2);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::AliasInitializer::InProgressAliasInfo&&>>(uint64_t *a1, void **a2, __int128 **a3)
{
  v24 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 104, &v24);
  v8 = &v7[104 * *(a1 + 2)];
  v9 = *a3;
  *v8 = **a2;
  v10 = *v9;
  v11 = *(v9 + 12);
  *(v8 + 5) = v8 + 56;
  v12 = (v8 + 40);
  *(v12 - 20) = v11;
  *(v12 - 32) = v10;
  *(v12 + 8) = 0x600000000;
  if (*(v9 + 10))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v12, v9 + 4);
  }

  v13 = *a1;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = &v13[13 * v14];
    v16 = v7 + 40;
    v17 = (v13 + 5);
    do
    {
      v18 = v17 - 40;
      *(v16 - 5) = *(v17 - 5);
      v19 = *(v17 - 2);
      *(v16 - 20) = *(v17 - 20);
      *(v16 - 2) = v19;
      *v16 = v16 + 2;
      v16[1] = 0x600000000;
      if (*(v17 + 2))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v16, v17);
      }

      v16 += 13;
      v17 += 104;
    }

    while (v18 + 104 != v15);
    v13 = *a1;
    v20 = *(a1 + 2);
    if (v20)
    {
      v21 = &v13[13 * v20 - 8];
      v22 = -104 * v20;
      do
      {
        if (v21 + 2 != *v21)
        {
          free(*v21);
        }

        v21 -= 13;
        v22 += 104;
      }

      while (v22);
      v13 = *a1;
    }
  }

  v23 = v24;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v7;
  ++*(a1 + 2);
  *(a1 + 3) = v23;
}

char *sanitizeIdentifier(char *a1, uint64_t a2, char **a3, void *__s, size_t __n, char a6)
{
  v10 = a1;
  v29[0] = a1;
  v29[1] = a2;
  v28[0] = __s;
  v28[1] = __n;
  v26[2] = a3;
  v27 = v28;
  v26[0] = v29;
  v26[1] = &v27;
  v11 = *a1;
  if ((v11 & 0x80000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) != 0)
  {
    goto LABEL_36;
  }

  if (v11 - 48 >= 0xA && ((v11 & 0xDF) - 65) >= 0x1Au)
  {
    if (__n)
    {
      v19 = a6;
      v20 = memchr(__s, v11, __n);
      a6 = v19;
      if (v20)
      {
        v21 = v20 - __s == -1;
      }

      else
      {
        v21 = 1;
      }

      v22 = !v21;
      if (v11 == 32 || (v22 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else if (v11 == 32)
    {
      goto LABEL_7;
    }

LABEL_36:
    v23 = a3[1];
    if (v23 + 1 > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, (v23 + 1), 1);
      v23 = a3[1];
    }

    v23[*a3] = 95;
    ++a3[1];
LABEL_39:
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    return *a3;
  }

LABEL_7:
  if ((a6 & 1) != 0 || (v13 = v10[a2 - 1], v13 < 0) || (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) == 0)
  {
    if (a2)
    {
      v14 = 0;
      while (1)
      {
        v15 = v10[v14];
        if ((v15 - 48) >= 0xA && ((v10[v14] & 0xDF) - 65) >= 0x1Au)
        {
          if (!__n)
          {
            break;
          }

          v17 = memchr(__s, v15, __n);
          if (!v17 || v17 - __s == -1)
          {
            break;
          }
        }

        if (a2 == ++v14)
        {
          return v10;
        }
      }

      goto LABEL_39;
    }
  }

  else
  {
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    v25 = a3[1];
    if (v25 + 1 > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, (v25 + 1), 1);
      v25 = a3[1];
    }

    v25[*a3] = 95;
    v10 = *a3;
    ++a3[1];
  }

  return v10;
}

void *llvm::SmallVectorImpl<char>::operator=(void *result, void *a2)
{
  if (result != a2)
  {
    v4 = a2 + 3;
    v3 = *a2;
    if (v3 == v4)
    {
      v6 = a2[1];
      v7 = result[1];
      if (v7 >= v6)
      {
        if (v6)
        {
          v9 = result;
          memmove(*result, v3, a2[1]);
          result = v9;
        }

        result[1] = v6;
      }

      else
      {
        if (result[2] >= v6)
        {
          v8 = result;
          if (v7)
          {
            memmove(*result, v3, v7);
          }
        }

        else
        {
          result[1] = 0;
          v8 = result;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v6, 1);
          v7 = 0;
        }

        v10 = a2[1];
        if (v10 != v7)
        {
          memcpy((*v8 + v7), (*a2 + v7), v10 - v7);
        }

        result = v8;
        v8[1] = v6;
      }
    }

    else
    {
      if (*result != result + 3)
      {
        v5 = result;
        free(*result);
        result = v5;
        v3 = *a2;
      }

      *result = v3;
      *(result + 1) = *(a2 + 1);
      a2[2] = 0;
      *a2 = v4;
    }

    a2[1] = 0;
  }

  return result;
}

void sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    v4 = *v1;
    v5 = &(*v1)[v2];
    do
    {
      v8 = *v4;
      v9 = *v4;
      v10 = (v8 - 48) >= 0xA && ((*v4 & 0xDF) - 65) >= 0x1Au;
      if (v10 && ((v11 = **(a1 + 8), (v12 = *(v11 + 8)) == 0) || ((v13 = *v11, (v14 = memchr(*v11, *v4, v12)) != 0) ? (v15 = v14 - v13 == -1) : (v15 = 1), v15)))
      {
        v6 = *(a1 + 16);
        if (v9 != 32)
        {
          if (v9)
          {
            v17 = v8;
            v18 = 16;
            do
            {
              v29[v18--] = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 & 0xF];
              v19 = v17 > 0xF;
              v17 >>= 4;
            }

            while (v19);
            v20 = v18 + 1;
            v21 = 16 - v18;
            if ((16 - v18) >= 0x7FFFFFFFFFFFFFF8)
            {
              std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
            }
          }

          else
          {
            v29[16] = 48;
            v20 = 16;
            v21 = 1;
          }

          if (v21 > 0x16)
          {
            operator new();
          }

          v28 = v21;
          if (v20 != 17)
          {
            memcpy(__dst, &v29[v20], v21);
          }

          *(__dst + v21) = 0;
          v22 = v28;
          v23 = __dst[0];
          if (v28 >= 0)
          {
            v24 = __dst;
          }

          else
          {
            v24 = __dst[0];
          }

          if (v28 >= 0)
          {
            v25 = v28;
          }

          else
          {
            v25 = __dst[1];
          }

          v26 = v6[1];
          if (v6[2] < v26 + v25)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v6, v6 + 3, v26 + v25, 1);
            v26 = v6[1];
          }

          if (v25)
          {
            memcpy((*v6 + v26), v24, v25);
            v26 = v6[1];
          }

          v6[1] = v26 + v25;
          if (v22 < 0)
          {
            operator delete(v23);
          }

          goto LABEL_7;
        }

        v16 = v6[1];
        if ((v16 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v16 + 1, 1);
          v16 = v6[1];
        }

        *(*v6 + v16) = 95;
      }

      else
      {
        v6 = *(a1 + 16);
        v7 = v6[1];
        if ((v7 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v7 + 1, 1);
          v7 = v6[1];
        }

        *(*v6 + v7) = v9;
      }

      ++v6[1];
LABEL_7:
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1A6BA2004()
{

  JUMPOUT(0x1AC55A070);
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttribute(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttributeWithoutType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAlias(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  return 1;
}

{
  (*(*a1 + 32))(a1);
  return 1;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::pushCyclicPrinting(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this, const void *a2)
{
  v7 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 2, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(this + 12);
    if (v5 >= *(this + 13))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(this + 40, this + 56, v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(this + 12);
    }

    *(*(this + 5) + 8 * v5) = v4;
    ++*(this + 12);
  }

  return result;
}

int32x2_t *anonymous namespace::DummyAliasDialectAsmPrinter::popCyclicPrinting(int32x2_t *this)
{
  v1 = this[4].i32[0];
  if (v1)
  {
    v2 = this[2];
    v3 = this[6].u32[0];
    v4 = *(*&this[5] + 8 * v3 - 8);
    v5 = v1 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v1 - 1);
    v7 = *(*&v2 + 8 * v6);
    if (v4 == v7)
    {
LABEL_3:
      *(*&v2 + 8 * v6) = -8192;
      this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(*&v2 + 8 * v6);
        if (v4 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    this[6].i32[0] = v3 - 1;
  }

  else
  {
    --this[6].i32[0];
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3, char a4)
{
  v98[6] = *MEMORY[0x1E69E9840];
  v95[0] = 0;
  v95[16] = 0;
  *&v95[24] = 0;
  v96 = v98;
  v97 = 0x600000000;
  v81[0] = a2;
  *&v81[1] = *v95;
  *(&v81[2] + 4) = *&v95[12];
  v82 = &v84;
  v83 = 0x600000000;
  v10 = v9;
  if (v82 != &v84)
  {
    free(v82);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v10)
  {
    v72 = v8 - *(a1 + 5);
    v71 = a4;
    v81[0] = &v81[3];
    *&v81[1] = xmmword_1A75A2980;
    v12 = *(*a1 + 32);
    v11 = *(*a1 + 40);
    if (v12 != v11)
    {
      do
      {
        while (1)
        {
          v13 = (*(**v12 + 16))(*v12, a2, a1 + 112);
          if (v13)
          {
            break;
          }

          if (++v12 == v11)
          {
            goto LABEL_15;
          }
        }

        v14 = v13;
        llvm::SmallVectorImpl<char>::operator=(v81, a1 + 7);
        ++v12;
      }

      while (v14 != 2 && v12 != v11);
LABEL_15:
      v16 = v81[0];
      if (v81[1])
      {
        *v95 = &v95[24];
        *&v95[8] = xmmword_1A75DA800;
        v17 = sanitizeIdentifier(v81[0], v81[1], v95, "$_-", 3uLL, 0);
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = *(a1 + 1);
          v21[10] = v21[10] + v18;
          v22 = *v21;
          v23 = *v21 + v18;
          if (*v21)
          {
            v24 = v23 > v21[1];
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v41 = v20;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v21, v18, v18, 0);
            v20 = v41;
            v22 = Slow;
          }

          else
          {
            *v21 = v23;
          }

          memmove(v22, v20, v19);
        }

        else
        {
          v22 = 0;
        }

        *(v8 + 8) = v22;
        *(v8 + 16) = v19;
        *(v8 + 24) = 1;
        *(v8 + 32) = 1;
        *(v8 + 48) = 0;
        if (*v95 != &v95[24])
        {
          free(*v95);
        }

        v16 = v81[0];
      }

      if (v16 != &v81[3])
      {
        free(v16);
      }
    }

    if (a3)
    {
      v25 = 0x80000000;
    }

    else
    {
      v25 = 0;
    }

    *(v8 + 32) = v25 & 0xC0000000 | *(v8 + 32) & 0x3FFFFFFF;
    *v95 = &v95[16];
    *&v95[8] = 0x600000000;
    memset(&v81[1], 0, 28);
    v81[0] = &unk_1F19FC6C0;
    v82 = &v84;
    v83 = 0;
    v84 = a1;
    v85 = a3;
    v86 = v95;
    v87 = 0;
    v89 = 0;
    v93 = 0;
    v94 = 1;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v88 = &unk_1F1A363F8;
    v26 = **a2;
    if (v26[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v26 + 5))(v26, a2, v81);
      goto LABEL_37;
    }

    v29 = (*a2)[17];
    if (v29 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_54;
    }

    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v30 = a2;
      }

      else
      {
        v30 = 0;
      }

      v73[0] = v30;
      if (v30)
      {
LABEL_52:
        Value = mlir::AffineMapAttr::getValue(v73);
        goto LABEL_53;
      }
    }

    else
    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v43 = a2;
      }

      else
      {
        v43 = 0;
      }

      v73[0] = v43;
      if (v43)
      {
        goto LABEL_52;
      }
    }

    v44 = (*a2)[17];
    if (v44 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v45 = a2;
    }

    else
    {
      v45 = 0;
    }

    v80 = v45;
    if (v45)
    {
      v46 = mlir::ArrayAttr::getValue(&v80);
      if (v47)
      {
        v48 = v46;
        v49 = (v46 + 16 * v47);
        do
        {
          CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v48);
          (*(v81[0] + 5))(v81, CompressedBytes);
          (*(v81[0] + 5))(v81, *(v48 + 1));
          v48 = (v48 + 16);
        }

        while (v48 != v49);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v51 = a2;
    }

    else
    {
      v51 = 0;
    }

    v79 = v51;
    if (v51)
    {
      v52 = mlir::ArrayAttr::getValue(&v79);
      if (v53)
      {
        v54 = v52;
        v55 = 8 * v53;
        do
        {
          v56 = *v54++;
          (*(v81[0] + 5))(v81, v56);
          v55 -= 8;
        }

        while (v55);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v78 = v57;
    if (v57)
    {
      v58 = mlir::AffineMapAttr::getValue(&v78);
      (*(v81[0] + 4))(v81, v58);
      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
    {
      v59 = a2;
    }

    else
    {
      v59 = 0;
    }

    v77 = v59;
    if (v59)
    {
      Value = mlir::AffineBinaryOpExpr::getRHS(&v77);
    }

    else
    {
      if (v44 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
      {
        v60 = a2;
      }

      else
      {
        v60 = 0;
      }

      v76 = v60;
      if (!v60)
      {
        if (v44 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
        {
          v61 = a2;
        }

        else
        {
          v61 = 0;
        }

        v75 = v61;
        if (v61)
        {
          v62 = mlir::AffineMapAttr::getValue(&v75);
          (*(v81[0] + 5))(v81, v62);
          LHS = mlir::AffineBinaryOpExpr::getLHS(&v75);
          (*(v81[0] + 5))(v81, LHS);
        }

        else
        {
          if (v44 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            v64 = a2;
          }

          else
          {
            v64 = 0;
          }

          v74 = v64;
          if (v64)
          {
            RHS = mlir::AffineBinaryOpExpr::getRHS(&v74);
            if (RHS)
            {
              (*(v81[0] + 5))(v81, RHS);
            }

            v66 = mlir::ArrayAttr::getValue(&v74);
            if (v67)
            {
              v68 = v66;
              v69 = 8 * v67;
              do
              {
                v70 = *v68++;
                (*(v81[0] + 5))(v81, v70);
                v69 -= 8;
              }

              while (v69);
            }
          }
        }

        goto LABEL_37;
      }

      if (*(*mlir::AffineBinaryOpExpr::getLHS(&v76) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
LABEL_37:
        if ((v71 & 1) == 0)
        {
          v73[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
          v73[1] = v27;
          if (v73[0])
          {
            FunctionType = mlir::FunctionOpInterface::getFunctionType(v73);
            if (*(*FunctionType + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              (*(v81[0] + 4))(v81, FunctionType);
            }
          }
        }

LABEL_54:
        v32 = v87;
        v33 = *(a1 + 5) + v72;
        v34 = (v33 + 40);
        if ((v33 + 40) == v95)
        {
          goto LABEL_71;
        }

        v35 = *v95;
        if (*v95 != &v95[16])
        {
          v36 = *(v33 + 40);
          if (v36 != (v33 + 56))
          {
            free(v36);
            v35 = *v95;
          }

          *(v33 + 40) = v35;
          *(v33 + 48) = *&v95[8];
          *v95 = &v95[16];
          *&v95[12] = 0;
          goto LABEL_70;
        }

        v37 = *&v95[8];
        v38 = *(v33 + 48);
        if (v38 >= *&v95[8])
        {
          if (*&v95[8])
          {
            memmove(*v34, *v95, 8 * *&v95[8]);
          }

          goto LABEL_69;
        }

        if (*(v33 + 52) >= *&v95[8])
        {
          if (v38)
          {
            memmove(*v34, *v95, 8 * v38);
            goto LABEL_67;
          }
        }

        else
        {
          *(v33 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33 + 40, (v33 + 56), v37, 8);
        }

        v38 = 0;
LABEL_67:
        v39 = *&v95[8] - v38;
        if (v39)
        {
          memcpy(*v34 + 8 * v38, (*v95 + 8 * v38), 8 * v39);
        }

LABEL_69:
        *(v33 + 48) = v37;
LABEL_70:
        *&v95[8] = 0;
LABEL_71:
        if (v32)
        {
          *(v33 + 32) = *(v33 + 32) & 0xC0000000 | (v32 + 1) & 0x3FFFFFFF;
        }

        v81[0] = &unk_1F19FC6C0;
        llvm::raw_null_ostream::~raw_null_ostream(&v88);
        if (v82 != &v84)
        {
          free(v82);
        }

        llvm::deallocate_buffer(v81[2], (8 * LODWORD(v81[4])));
      }

      Value = mlir::AffineBinaryOpExpr::getLHS(&v76);
    }

LABEL_53:
    (*(v81[0] + 5))(v81, Value);
    goto LABEL_37;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v8 + 32) & 0x3FFFFFFF;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplENS1_4TypeEEUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 56))();
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplES2_EUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 64))();
  }

  return result;
}

ZinIrHalH13g *anonymous namespace::DummyAliasOperationPrinter::print(_anonymous_namespace_::AliasInitializer **this, mlir::Block *a2, int a3, char a4)
{
  if (a3)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
    while (v7 != v8)
    {
      v9 = *v7;
      (*(*this + 4))(this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(this[2] + 40))
      {
      }

      ++v7;
    }
  }

  v11 = (a2 + 32);
  result = *(a2 + 4);
  if (result == (a2 + 32))
  {
    v13 = *(a2 + 5);
  }

  else
  {
    ZinIrHalH13g::~ZinIrHalH13g(result);
    {
      v15 = v12;
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
      v12 = v15;
    }

    result = (*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v13 = *(a2 + 5);
    if (result && (a4 & 1) == 0)
    {
      v11 = *v11;
    }
  }

  while (v13 != v11)
  {
    ZinIrHalH13g::~ZinIrHalH13g(v13);
    result = (*(*this + 26))(this, v14);
    v13 = *(v13 + 1);
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v81[6] = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 != 2)
  {
    v14 = a3;
    if (a3 > 0)
    {
      v16 = a3 >> 1;
      v17 = (a1 + 104 * (a3 >> 1));
      v18 = a3 - (a3 >> 1);
      v19 = a3 >> 1;
      if (v14 > a5)
      {

        return;
      }

      v54 = a4 + 104 * v16;
      v55 = a4 + 104 * v14;
      v56 = v54;
      v57 = a4;
      while (1)
      {
        if (v56 == v55)
        {
          if (v57 != v54)
          {
            v67 = 0;
            do
            {
              v68 = v6 + v67;
              v69 = v57 + v67;
              *v68 = *(v57 + v67);
              v70 = *(v57 + v67 + 8);
              *(v68 + 20) = *(v57 + v67 + 20);
              *(v68 + 8) = v70;
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v67 + 40, (v57 + v67 + 40));
              v67 += 104;
            }

            while (v69 + 104 != v54);
          }

LABEL_132:
          if (a4)
          {
            v75 = (a4 + 56);
            do
            {
              v76 = *(v75 - 2);
              if (v75 != v76)
              {
                free(v76);
              }

              v75 += 13;
              --v14;
            }

            while (v14);
          }

          return;
        }

        v59 = *(v56 + 32);
        v60 = *(v57 + 32);
        if ((v59 & 0x3FFFFFFF) != (v60 & 0x3FFFFFFF))
        {
          if ((v59 & 0x3FFFFFFFu) >= (v60 & 0x3FFFFFFF))
          {
            goto LABEL_101;
          }

          goto LABEL_117;
        }

        v61 = v59 & 0x40000000;
        if (((v60 >> 30) & 1) != v61 >> 30)
        {
          break;
        }

        if (*(v57 + 24) != 1)
        {
          goto LABEL_101;
        }

        if (*(v56 + 24) == 1)
        {
          v62 = *(v56 + 16);
          v63 = *(v57 + 16);
          if (v63 >= v62)
          {
            v64 = *(v56 + 16);
          }

          else
          {
            v64 = *(v57 + 16);
          }

          if (v64 && (v65 = memcmp(*(v56 + 8), *(v57 + 8), v64)) != 0)
          {
            if (v65 < 0)
            {
              goto LABEL_117;
            }
          }

          else if (v62 < v63)
          {
            goto LABEL_117;
          }

LABEL_101:
          *v6 = *v57;
          v58 = *(v57 + 8);
          *(v6 + 20) = *(v57 + 20);
          *(v6 + 8) = v58;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + 40, (v57 + 40));
          v57 += 104;
          v6 += 104;
          if (v57 == v54)
          {
            goto LABEL_129;
          }
        }

        else
        {
LABEL_117:
          *v6 = *v56;
          v66 = *(v56 + 8);
          *(v6 + 20) = *(v56 + 20);
          *(v6 + 8) = v66;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + 40, (v56 + 40));
          v56 += 104;
          v6 += 104;
          if (v57 == v54)
          {
LABEL_129:
            if (v56 != v55)
            {
              v71 = 0;
              do
              {
                v72 = v56 + v71;
                v73 = v6 + v71;
                *v73 = *(v56 + v71);
                v74 = *(v56 + v71 + 8);
                *(v73 + 20) = *(v56 + v71 + 20);
                *(v73 + 8) = v74;
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v71 + 40, (v56 + v71 + 40));
                v71 += 104;
              }

              while (v72 + 104 != v55);
            }

            goto LABEL_132;
          }
        }
      }

      if (!v61)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

    if (a1 == a2)
    {
      return;
    }

    v21 = (a1 + 104);
    if ((a1 + 104) == a2)
    {
      return;
    }

    v22 = 0;
    v23 = a1;
LABEL_26:
    v24 = v23;
    v23 = v21;
    v25 = *(v24 + 34);
    v26 = *(v24 + 8);
    if ((v25 & 0x3FFFFFFF) == (v26 & 0x3FFFFFFF))
    {
      v27 = v25 & 0x40000000;
      if (((v26 >> 30) & 1) == v27 >> 30)
      {
        if (*(v24 + 24) != 1)
        {
          goto LABEL_25;
        }

        if (*(v24 + 128) == 1)
        {
          v28 = v24[15];
          v29 = v24[2];
          if (v29 >= v28)
          {
            v30 = v24[15];
          }

          else
          {
            v30 = v24[2];
          }

          if (v30 && (v31 = memcmp(v24[14], v24[1], v30)) != 0)
          {
            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_25;
            }
          }

          else if (v28 >= v29)
          {
            goto LABEL_25;
          }
        }
      }

      else if (!v27)
      {
        goto LABEL_25;
      }
    }

    else if ((v25 & 0x3FFFFFFFu) >= (v26 & 0x3FFFFFFF))
    {
      goto LABEL_25;
    }

    v32 = *v23;
    *__s1 = *(v24 + 7);
    *&__s1[12] = *(v24 + 124);
    v77 = v32;
    __src = v81;
    v80 = 0x600000000;
    if (*(v24 + 38))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&__src, v24 + 18);
    }

    for (i = v22; ; i -= 104)
    {
      v34 = v6 + i;
      *(v34 + 104) = *(v6 + i);
      *(v34 + 112) = *(v6 + i + 8);
      *(v34 + 124) = *(v6 + i + 20);
      v35 = *(v6 + i + 40);
      v36 = v6 + i + 56;
      if (v36 == v35)
      {
        break;
      }

      v37 = *(v34 + 144);
      if ((v34 + 160) != v37)
      {
        free(v37);
        v35 = *(v34 + 40);
      }

      v38 = v6 + i;
      *(v34 + 144) = v35;
      *(v38 + 152) = *(v6 + i + 48);
      *(v34 + 40) = v36;
      *(v38 + 52) = 0;
      *(v24 + 12) = 0;
      if (!i)
      {
LABEL_78:
        v48 = v6;
LABEL_79:
        v49 = __src;
        *v48 = v77;
        v50 = v6 + i;
        *(v50 + 8) = *__s1;
        *(v50 + 20) = *&__s1[12];
        if (v48 == &v77)
        {
          goto LABEL_98;
        }

        if (v49 == v81)
        {
          v52 = v80;
          v53 = *(v48 + 48);
          if (v53 >= v80)
          {
            if (v80)
            {
              memmove(*(v50 + 40), v49, 8 * v80);
            }
          }

          else
          {
            if (*(v48 + 52) < v80)
            {
              *(v48 + 48) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v50 + 40, (v48 + 56), v52, 8);
              goto LABEL_93;
            }

            if (v53)
            {
              memmove(*(v50 + 40), v49, 8 * v53);
            }

            else
            {
LABEL_93:
              v53 = 0;
            }

            if (v80 != v53)
            {
              memcpy((*(v50 + 40) + 8 * v53), __src + 8 * v53, 8 * (v80 - v53));
            }
          }

          *(v48 + 48) = v52;
          goto LABEL_97;
        }

        v51 = *(v50 + 40);
        if (v51 != (v48 + 56))
        {
          free(v51);
          v49 = __src;
        }

        *(v50 + 40) = v49;
        *(v48 + 48) = v80;
        __src = v81;
        HIDWORD(v80) = 0;
LABEL_97:
        LODWORD(v80) = 0;
        v49 = __src;
LABEL_98:
        if (v49 != v81)
        {
          free(v49);
        }

LABEL_25:
        v21 = v23 + 13;
        v22 += 104;
        if (v23 + 13 == a2)
        {
          return;
        }

        goto LABEL_26;
      }

LABEL_60:
      v43 = *(v6 + i - 72);
      if ((*&__s1[24] & 0x3FFFFFFF) == (v43 & 0x3FFFFFFF))
      {
        if (((v43 >> 30) & 1) == (*&__s1[24] & 0x40000000u) >> 30)
        {
          if (*(v6 + i - 80) != 1)
          {
            goto LABEL_77;
          }

          if (__s1[16] == 1)
          {
            v44 = *&__s1[8];
            v45 = *(v6 + i - 88);
            if (v45 >= *&__s1[8])
            {
              v46 = *&__s1[8];
            }

            else
            {
              v46 = *(v6 + i - 88);
            }

            if (v46 && (v47 = memcmp(*__s1, *(v6 + i - 96), v46)) != 0)
            {
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (v44 >= v45)
            {
LABEL_77:
              v48 = v6 + i;
              goto LABEL_79;
            }
          }
        }

        else if ((*&__s1[24] & 0x40000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((*&__s1[24] & 0x3FFFFFFFu) >= (v43 & 0x3FFFFFFF))
      {
        goto LABEL_77;
      }

      v24 -= 13;
    }

    v40 = (v34 + 48);
    v39 = *(v34 + 48);
    v41 = *(v34 + 152);
    if (v41 >= v39)
    {
      if (v39)
      {
        memmove(*(v34 + 144), v35, 8 * v39);
      }
    }

    else
    {
      if (*(v6 + i + 156) < v39)
      {
        *(v34 + 152) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 144, (v6 + i + 160), v39, 8);
        v41 = 0;
        v42 = *v40;
        if (!*v40)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v41)
      {
        memmove(*(v34 + 144), v35, 8 * v41);
        v42 = *v40 - v41;
        if (!v42)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v41 = 0;
      v42 = *v40;
      if (*v40)
      {
LABEL_58:
        memcpy((*(v34 + 144) + 8 * v41), (*(v34 + 40) + 8 * v41), 8 * v42);
      }
    }

LABEL_59:
    *(v34 + 152) = v39;
    *v40 = 0;
    if (!i)
    {
      goto LABEL_78;
    }

    goto LABEL_60;
  }

  v7 = *(a2 - 18);
  v8 = *(a1 + 32);
  if ((v7 & 0x3FFFFFFF) == (v8 & 0x3FFFFFFF))
  {
    v9 = v7 & 0x40000000;
    if (((v8 >> 30) & 1) == v9 >> 30)
    {
      if (*(a1 + 24) != 1)
      {
        return;
      }

      if (*(a2 - 80) == 1)
      {
        v10 = *(a2 - 11);
        v11 = *(a1 + 16);
        if (v11 >= v10)
        {
          v12 = *(a2 - 11);
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if (v12 && (v13 = memcmp(*(a2 - 12), *(a1 + 8), v12)) != 0)
        {
          if ((v13 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v10 >= v11)
        {
          return;
        }
      }
    }

    else if (!v9)
    {
      return;
    }
  }

  else if ((v7 & 0x3FFFFFFFu) >= (v8 & 0x3FFFFFFF))
  {
    return;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&>(const void **a1, const void **a2)
{
  v15[7] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = (a2 + 1);
  v12[0] = *(a1 + 1);
  *(v12 + 12) = *(a1 + 20);
  __src = v15;
  v14 = 0x600000000;
  if (*(a1 + 12))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&__src, a1 + 5);
  }

  v6 = *v5;
  *(a1 + 20) = *(v5 + 12);
  *(a1 + 1) = v6;
  llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), a2 + 5);
  *v5 = v12[0];
  *(v5 + 12) = *(v12 + 12);
  v7 = __src;
  if (v12 != v5)
  {
    if (__src != v15)
    {
      v8 = a2[5];
      if (v8 != a2 + 7)
      {
        free(v8);
        v7 = __src;
      }

      a2[5] = v7;
      a2[6] = v14;
      __src = v15;
      HIDWORD(v14) = 0;
      goto LABEL_18;
    }

    v9 = v14;
    v10 = *(a2 + 12);
    if (v10 >= v14)
    {
      if (v14)
      {
        memmove(a2[5], __src, 8 * v14);
      }

      goto LABEL_17;
    }

    if (*(a2 + 13) >= v14)
    {
      if (v10)
      {
        memmove(a2[5], __src, 8 * v10);
        v11 = v14 - v10;
        if (v14 == v10)
        {
LABEL_17:
          *(a2 + 12) = v9;
LABEL_18:
          LODWORD(v14) = 0;
          v7 = __src;
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v11 = v14;
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a2 + 12) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 5), a2 + 7, v9, 8);
      v10 = 0;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    memcpy(a2[5] + 8 * v10, __src + 8 * v10, 8 * v11);
    goto LABEL_17;
  }

LABEL_19:
  if (v7 != v15)
  {
    free(v7);
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return;
  }

  v5 = a2;
  v6 = a1;
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      *a4 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 20);
      *(a4 + 40) = a4 + 56;
      v9 = a4 + 40;
      *(a4 + 20) = v8;
      *(a4 + 8) = v7;
      *(a4 + 48) = 0x600000000;
      if (!*(a1 + 48))
      {
        return;
      }

      goto LABEL_87;
    }

    if (a3 <= 8)
    {
      if (a1 == a2)
      {
        return;
      }

      *a4 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 20);
      *(a4 + 40) = a4 + 56;
      *(a4 + 20) = v19;
      *(a4 + 8) = v18;
      *(a4 + 48) = 0x600000000;
      if (*(a1 + 48))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a4 + 40, (a1 + 40));
      }

      v20 = (v6 + 104);
      if ((v6 + 104) == v5)
      {
        return;
      }

      v21 = 0;
      v22 = a4;
      v85 = v5;
LABEL_28:
      v24 = v20;
      v27 = *(v6 + 136);
      v28 = *(v22 + 32);
      if ((v27 & 0x3FFFFFFF) == (v28 & 0x3FFFFFFF))
      {
        v29 = v27 & 0x40000000;
        if (((v28 >> 30) & 1) == v29 >> 30)
        {
          if (*(v22 + 24) != 1)
          {
            goto LABEL_78;
          }

          if (*(v6 + 128) == 1)
          {
            v30 = *(v6 + 120);
            v31 = *(v22 + 16);
            if (v31 >= v30)
            {
              v32 = *(v6 + 120);
            }

            else
            {
              v32 = *(v22 + 16);
            }

            if (v32 && (v33 = memcmp(*(v6 + 112), *(v22 + 8), v32)) != 0)
            {
              if ((v33 & 0x80000000) == 0)
              {
                goto LABEL_78;
              }
            }

            else if (v30 >= v31)
            {
LABEL_78:
              *(v22 + 104) = *v24;
              v53 = *(v6 + 112);
              v54 = *(v6 + 124);
              *(v22 + 144) = v22 + 160;
              v26 = v22 + 144;
              *(v22 + 124) = v54;
              *(v22 + 112) = v53;
              *(v22 + 152) = 0x600000000;
              if (*(v6 + 152))
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }
          }
        }

        else if (!v29)
        {
          goto LABEL_78;
        }
      }

      else if ((v27 & 0x3FFFFFFFu) >= (v28 & 0x3FFFFFFF))
      {
        goto LABEL_78;
      }

      *(v22 + 104) = *v22;
      *(v22 + 112) = *(v22 + 8);
      *(v22 + 124) = *(v22 + 20);
      *(v22 + 144) = v22 + 160;
      *(v22 + 152) = 0x600000000;
      if (*(v22 + 48))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v22 + 144, (v22 + 40));
      }

      v23 = a4;
      if (v22 == a4)
      {
        goto LABEL_25;
      }

      v86 = v24;
      v34 = v21;
      v23 = v22;
      while (1)
      {
        while (1)
        {
          v35 = (a4 + v34 - 96);
          v36 = *(v6 + 136);
          v37 = *(a4 + v34 - 72);
          if ((v36 & 0x3FFFFFFF) == (v37 & 0x3FFFFFFF))
          {
            v38 = v36 & 0x40000000;
            if (((v37 >> 30) & 1) == v38 >> 30)
            {
              if (*(a4 + v34 - 80) != 1)
              {
                goto LABEL_24;
              }

              if (*(v6 + 128) == 1)
              {
                v39 = *(v6 + 120);
                v40 = *(a4 + v34 - 88);
                if (v40 >= v39)
                {
                  v41 = *(v6 + 120);
                }

                else
                {
                  v41 = *(a4 + v34 - 88);
                }

                if (v41 && (v42 = memcmp(*(v6 + 112), *v35, v41)) != 0)
                {
                  if ((v42 & 0x80000000) == 0)
                  {
                    goto LABEL_24;
                  }
                }

                else if (v39 >= v40)
                {
                  v23 = a4 + v34;
LABEL_24:
                  v24 = v86;
LABEL_25:
                  *v23 = *v24;
                  v25 = *(v6 + 112);
                  *(v23 + 20) = *(v6 + 124);
                  *(v23 + 8) = v25;
                  v26 = v23 + 40;
                  v5 = v85;
LABEL_26:
                  llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v26, (v6 + 144));
LABEL_27:
                  v22 += 104;
                  v20 = v24 + 13;
                  v21 += 104;
                  v6 = v24;
                  if (v24 + 13 == v5)
                  {
                    return;
                  }

                  goto LABEL_28;
                }
              }
            }

            else if (!v38)
            {
              goto LABEL_24;
            }
          }

          else if ((v36 & 0x3FFFFFFFu) >= (v37 & 0x3FFFFFFF))
          {
            goto LABEL_24;
          }

          v43 = a4 + v34;
          *v43 = *(a4 + v34 - 104);
          *(v43 + 8) = *v35;
          *(v43 + 20) = *(a4 + v34 - 84);
          v44 = *(a4 + v34 - 64);
          v45 = a4 + v34 - 48;
          if (v45 == v44)
          {
            break;
          }

          v46 = *(v43 + 40);
          if ((v43 + 56) != v46)
          {
            free(v46);
            v44 = *(v43 - 64);
          }

          v47 = a4 + v34;
          *(v43 + 40) = v44;
          v48 = (v23 - 56);
          *(v47 + 48) = *(a4 + v34 - 56);
          *(v43 - 64) = v45;
          *(v47 - 52) = 0;
          v23 -= 104;
          *v48 = 0;
          v34 -= 104;
          if (!v34)
          {
LABEL_23:
            v23 = a4;
            goto LABEL_24;
          }
        }

        v49 = (v43 - 56);
        v50 = *(v43 - 56);
        v51 = *(v43 + 48);
        if (v51 >= v50)
        {
          if (v50)
          {
            memmove(*(v43 + 40), v44, 8 * v50);
          }

          goto LABEL_44;
        }

        if (*(a4 + v34 + 52) >= v50)
        {
          if (v51)
          {
            memmove(*(v43 + 40), v44, 8 * v51);
            v52 = *v49 - v51;
            if (v52)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v51 = 0;
            v52 = *v49;
            if (*v49)
            {
LABEL_76:
              memcpy((*(v43 + 40) + 8 * v51), (*(v43 - 64) + 8 * v51), 8 * v52);
            }
          }
        }

        else
        {
          *(v43 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 40, (a4 + v34 + 56), v50, 8);
          v51 = 0;
          v52 = *v49;
          if (*v49)
          {
            goto LABEL_76;
          }
        }

LABEL_44:
        *(v43 + 48) = v50;
        v23 -= 104;
        *v49 = 0;
        v34 -= 104;
        if (!v34)
        {
          goto LABEL_23;
        }
      }
    }

    v60 = a3 >> 1;
    v61 = 104 * (a3 >> 1);
    v62 = a1 + v61;
    v64 = (a4 + 40);
    v65 = v6 + v61;
    while (1)
    {
      if (v65 == v5)
      {
        if (v6 != v62)
        {
          v75 = v6 + 40;
          do
          {
            v76 = v75 - 40;
            *(v64 - 5) = *(v75 - 40);
            v77 = *(v75 - 32);
            *(v64 - 20) = *(v75 - 20);
            *(v64 - 2) = v77;
            *v64 = v64 + 2;
            v64[1] = 0x600000000;
            if (*(v75 + 8))
            {
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v64, v75);
            }

            v64 += 13;
            v75 += 104;
          }

          while (v76 + 104 != v62);
        }

        return;
      }

      v66 = *(v65 + 32);
      v67 = *(v6 + 32);
      if ((v66 & 0x3FFFFFFF) != (v67 & 0x3FFFFFFF))
      {
        break;
      }

      v68 = v66 & 0x40000000;
      if (((v67 >> 30) & 1) != v68 >> 30)
      {
        if (!v68)
        {
          goto LABEL_108;
        }

        goto LABEL_103;
      }

      if (*(v6 + 24) != 1)
      {
        goto LABEL_108;
      }

      if (*(v65 + 24) == 1)
      {
        v69 = *(v65 + 16);
        v70 = *(v6 + 16);
        if (v70 >= v69)
        {
          v71 = *(v65 + 16);
        }

        else
        {
          v71 = *(v6 + 16);
        }

        if (!v71 || (v72 = memcmp(*(v65 + 8), *(v6 + 8), v71)) == 0)
        {
          if (v69 >= v70)
          {
            goto LABEL_108;
          }

          goto LABEL_103;
        }

        if (v72 < 0)
        {
          goto LABEL_103;
        }

LABEL_108:
        *(v64 - 5) = *v6;
        v74 = *(v6 + 8);
        *(v64 - 20) = *(v6 + 20);
        *(v64 - 2) = v74;
        *v64 = v64 + 2;
        v64[1] = 0x600000000;
        if (*(v6 + 48))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v64, (v6 + 40));
        }

        v6 += 104;
        v64 += 13;
        if (v6 == v62)
        {
LABEL_125:
          if (v65 != v5)
          {
            v82 = v65 + 40;
            do
            {
              v83 = v82 - 40;
              *(v64 - 5) = *(v82 - 40);
              v84 = *(v82 - 32);
              *(v64 - 20) = *(v82 - 20);
              *(v64 - 2) = v84;
              *v64 = v64 + 2;
              v64[1] = 0x600000000;
              if (*(v82 + 8))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v64, v82);
              }

              v64 += 13;
              v82 += 104;
            }

            while ((v83 + 104) != v5);
          }

          return;
        }
      }

      else
      {
LABEL_103:
        *(v64 - 5) = *v65;
        v73 = *(v65 + 8);
        *(v64 - 20) = *(v65 + 20);
        *(v64 - 2) = v73;
        *v64 = v64 + 2;
        v64[1] = 0x600000000;
        if (*(v65 + 48))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v64, (v65 + 40));
        }

        v65 += 104;
        v64 += 13;
        if (v6 == v62)
        {
          goto LABEL_125;
        }
      }
    }

    if ((v66 & 0x3FFFFFFFu) >= (v67 & 0x3FFFFFFF))
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

  v10 = (a2 - 12);
  v11 = *(a2 - 18);
  v12 = *(a1 + 32);
  if ((v11 & 0x3FFFFFFF) != (v12 & 0x3FFFFFFF))
  {
    if ((v11 & 0x3FFFFFFFu) < (v12 & 0x3FFFFFFF))
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  v13 = v11 & 0x40000000;
  if (((v12 >> 30) & 1) != v13 >> 30)
  {
    if (v13)
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  if (*(a1 + 24) != 1)
  {
    goto LABEL_118;
  }

  if (*(a2 - 80) != 1)
  {
    goto LABEL_84;
  }

  v14 = *(a2 - 11);
  v15 = *(a1 + 16);
  if (v15 >= v14)
  {
    v16 = *(a2 - 11);
  }

  else
  {
    v16 = *(a1 + 16);
  }

  if (!v16 || (v17 = memcmp(*v10, *(a1 + 8), v16)) == 0)
  {
    if (v14 < v15)
    {
      goto LABEL_84;
    }

LABEL_118:
    *a4 = *v6;
    v78 = *(v6 + 8);
    v79 = *(v6 + 20);
    *(a4 + 40) = a4 + 56;
    *(a4 + 20) = v79;
    *(a4 + 8) = v78;
    *(a4 + 48) = 0x600000000;
    if (*(v6 + 48))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a4 + 40, (v6 + 40));
    }

    *(a4 + 104) = *(v5 - 13);
    v80 = *v10;
    v81 = *(v5 - 84);
    *(a4 + 144) = a4 + 160;
    v9 = a4 + 144;
    *(v9 - 20) = v81;
    *(v9 - 32) = v80;
    *(v9 + 8) = 0x600000000;
    if (*(v5 - 14))
    {
      v59 = (v5 - 8);
      goto LABEL_122;
    }

    return;
  }

  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_84:
  *a4 = *(v5 - 13);
  v55 = *v10;
  v56 = *(v5 - 84);
  *(a4 + 40) = a4 + 56;
  *(a4 + 20) = v56;
  *(a4 + 8) = v55;
  *(a4 + 48) = 0x600000000;
  if (*(v5 - 14))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a4 + 40, v5 - 8);
  }

  *(a4 + 104) = *v6;
  v57 = *(v6 + 8);
  v58 = *(v6 + 20);
  *(a4 + 144) = a4 + 160;
  v9 = a4 + 144;
  *(v9 - 20) = v58;
  *(v9 - 32) = v57;
  *(v9 + 8) = 0x600000000;
  if (*(v6 + 48))
  {
LABEL_87:
    v59 = (v6 + 40);
LABEL_122:

    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, v59);
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = *(a2 + 8);
    v12 = v11 & 0x3FFFFFFF;
    v13 = v11 & 0x40000000;
    v14 = (v11 >> 30) & 1;
    v15 = -a4;
    v136 = a5;
    while (1)
    {
      v17 = a1[v10 + 4];
      if (v12 != (v17 & 0x3FFFFFFF))
      {
        if (v12 < (v17 & 0x3FFFFFFF))
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if (v14 == ((v17 >> 30) & 1))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 += 13;
      v16 = __CFADD__(v15++, 1);
      if (v16)
      {
        return;
      }
    }

    if (LOBYTE(a1[v10 + 3]) != 1)
    {
      goto LABEL_7;
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_22;
    }

    v18 = a2[2];
    v19 = a1[v10 + 2];
    if (v19 >= v18)
    {
      v20 = a2[2];
    }

    else
    {
      v20 = a1[v10 + 2];
    }

    if (v20)
    {
      v21 = memcmp(a2[1], a1[v10 + 1], v20);
      a5 = v136;
      if (v21)
      {
        if (v21 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }

    if (v18 >= v19)
    {
      goto LABEL_7;
    }

LABEL_22:
    v132 = &a1[v10];
    if (-v15 >= a5)
    {
      if (v15 == -1)
      {

        return;
      }

      v43 = -v15 / 2;
      if (a3 == a2)
      {
        v22 = 0;
LABEL_82:
        v23 = &a1[13 * v43 + v10];
        v58 = 0x4EC4EC4EC4EC4EC5 * (v22 >> 3);
        v59 = (a2 + v22);
        v60 = (a2 + v22);
        if (v23 == a2)
        {
          goto LABEL_133;
        }

LABEL_103:
        v60 = v23;
        if (v22)
        {
          v67 = v43;
          v60 = v23 + 13;
          v68 = v22 - 104;
          if (v22 != 104)
          {
            v69 = a2 + 13;
            do
            {
              if (v60 == a2)
              {
                a2 = v69;
              }

              v60 += 13;
              v69 += 13;
              v68 -= 104;
            }

            while (v68);
          }

          if (v60 != a2)
          {
            v70 = v60;
            v71 = a2;
            while (1)
            {
              a2 += 13;
              v72 = v70 + 13 == v71;
              if (a2 == v59)
              {
                if (v70 + 13 == v71)
                {
                  goto LABEL_132;
                }

                a2 = v71 + 13;
                v70 += 26;
                while (1)
                {
                  v72 = v70 == v71;
                  if (a2 != v59)
                  {
                    break;
                  }

                  v73 = v70 == v71;
                  v70 += 13;
                  if (v73)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v70 += 13;
              }

              if (v72)
              {
                v71 = a2;
              }
            }
          }

          v60 = a2;
LABEL_132:
          a5 = v136;
          v43 = v67;
        }

        goto LABEL_133;
      }

      v44 = 0x4EC4EC4EC4EC4EC5 * (a3 - a2);
      v45 = &a1[13 * v43 + v10];
      v46 = *(v45 + 8);
      v47 = v46 & 0x3FFFFFFF;
      v48 = (v46 >> 30) & 1;
      if (v45[3])
      {
        v22 = 0;
        v49 = v45[2];
        __s1a = v45[1];
        v128 = v49;
        v130 = (v46 >> 30) & 1;
        while (1)
        {
          v50 = v44 >> 1;
          v51 = v22 + 104 * (v44 >> 1);
          v52 = a2 + v51;
          v53 = *(a2 + v51 + 32);
          if ((v53 & 0x3FFFFFFF) == v47)
          {
            v54 = v53 & 0x40000000;
            if (v48 == v54 >> 30)
            {
              if (v52[24] == 1)
              {
                v55 = *(v52 + 2);
                if (v49 >= v55)
                {
                  v56 = *(v52 + 2);
                }

                else
                {
                  v56 = v49;
                }

                if (v56 && (v57 = memcmp(*(v52 + 1), __s1a, v56), v49 = v128, v48 = v130, v43 = -v15 / 2, a5 = v136, v57))
                {
                  if ((v57 & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                else if (v55 >= v49)
                {
                  goto LABEL_64;
                }
              }
            }

            else if (!v54)
            {
              goto LABEL_64;
            }
          }

          else if ((v53 & 0x3FFFFFFFu) >= v47)
          {
            goto LABEL_64;
          }

          v22 = v51 + 104;
          v50 = v44 + ~v50;
LABEL_64:
          v44 = v50;
          if (!v50)
          {
            goto LABEL_82;
          }
        }
      }

      v22 = 0;
      while (2)
      {
        v74 = v44 >> 1;
        v75 = v22 + 104 * (v44 >> 1);
        v76 = *(a2 + v75 + 32);
        if ((v76 & 0x3FFFFFFF) == v47)
        {
          if ((v76 & 0x40000000) == 0 || ((v76 >> 30) & 1) == v48)
          {
LABEL_124:
            v44 = v74;
            if (!v74)
            {
              goto LABEL_82;
            }

            continue;
          }
        }

        else if ((v76 & 0x3FFFFFFF) >= v47)
        {
          goto LABEL_124;
        }

        break;
      }

      v22 = v75 + 104;
      v74 = v44 + ~v74;
      goto LABEL_124;
    }

    v131 = a5 / 2;
    v22 = 104 * (a5 / 2);
    v23 = &a1[v10];
    if (&a1[v10] != a2)
    {
      v24 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v10 * 8) >> 3);
      v25 = a2 + v22;
      v26 = *(a2 + v22 + 32);
      v27 = v26 & 0x3FFFFFFF;
      v28 = v26 & 0x40000000;
      v29 = (v26 >> 30) & 1;
      if (*(a2 + v22 + 24))
      {
        v30 = *(v25 + 2);
        __s1 = *(v25 + 1);
        v127 = v30;
        v23 = &a1[v10];
        v129 = v29;
        if (!v28)
        {
          while (1)
          {
            v31 = v24 >> 1;
            v32 = &v23[13 * (v24 >> 1)];
            v33 = *(v32 + 8);
            if (v27 == (v33 & 0x3FFFFFFF))
            {
              if (v29 == ((v33 >> 30) & 1) && *(v32 + 24) == 1)
              {
                v34 = v32[2];
                if (v34 >= v30)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = v32[2];
                }

                if (v35 && (v123 = v32[2], v36 = memcmp(__s1, v32[1], v35), v34 = v123, v30 = v127, v29 = v129, a5 = v136, v36))
                {
                  if (v36 < 0)
                  {
                    goto LABEL_28;
                  }
                }

                else if (v30 < v34)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (v27 < (v33 & 0x3FFFFFFF))
            {
              goto LABEL_28;
            }

            v23 = v32 + 13;
            v31 = v24 + ~v31;
LABEL_28:
            v24 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }
          }
        }

        while (1)
        {
          v37 = v24 >> 1;
          v38 = &v23[13 * (v24 >> 1)];
          v39 = *(v38 + 8);
          if (v27 == (v39 & 0x3FFFFFFF))
          {
            if (v29 != ((v39 >> 30) & 1))
            {
              goto LABEL_44;
            }

            if (*(v38 + 24) == 1)
            {
              v40 = v38[2];
              if (v40 >= v30)
              {
                v41 = v30;
              }

              else
              {
                v41 = v38[2];
              }

              if (v41 && (v124 = v38[2], v42 = memcmp(__s1, v38[1], v41), v40 = v124, v30 = v127, v29 = v129, a5 = v136, v42))
              {
                if (v42 < 0)
                {
                  goto LABEL_44;
                }
              }

              else if (v30 < v40)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v27 < (v39 & 0x3FFFFFFF))
          {
            goto LABEL_44;
          }

          v23 = v38 + 13;
          v37 = v24 + ~v37;
LABEL_44:
          v24 = v37;
          if (!v37)
          {
            goto LABEL_102;
          }
        }
      }

      v23 = &a1[v10];
      if (!v28)
      {
        while (1)
        {
          v61 = v24 >> 1;
          v62 = &v23[13 * (v24 >> 1)];
          v63 = *(v62 + 8);
          if (v27 == (v63 & 0x3FFFFFFF))
          {
            if (v29 == ((v63 >> 30) & 1) && (v62[3] & 1) != 0)
            {
              goto LABEL_87;
            }
          }

          else if (v27 < (v63 & 0x3FFFFFFF))
          {
            goto LABEL_87;
          }

          v23 = v62 + 13;
          v61 = v24 + ~v61;
LABEL_87:
          v24 = v61;
          if (!v61)
          {
            goto LABEL_102;
          }
        }
      }

      do
      {
        v64 = v24 >> 1;
        v65 = &v23[13 * (v24 >> 1)];
        v66 = *(v65 + 8);
        if (v27 == (v66 & 0x3FFFFFFF))
        {
          if (v29 != ((v66 >> 30) & 1) || (v65[3] & 1) != 0)
          {
            goto LABEL_95;
          }
        }

        else if (v27 < (v66 & 0x3FFFFFFF))
        {
          goto LABEL_95;
        }

        v23 = v65 + 13;
        v64 = v24 + ~v64;
LABEL_95:
        v24 = v64;
      }

      while (v64);
    }

LABEL_102:
    v43 = 0x4EC4EC4EC4EC4EC5 * ((v23 - a1 - v10 * 8) >> 3);
    v58 = v131;
    v59 = (a2 + v22);
    v60 = (a2 + v22);
    if (v23 != a2)
    {
      goto LABEL_103;
    }

LABEL_133:
    a4 = -(v43 + v15);
    v77 = a5 - v58;
    a1 = v132;
    if (v43 + v58 >= a5 - (v43 + v58) - v15)
    {
      v78 = v43;
      a4 = v78;
      a3 = v60;
      a5 = v58;
      a2 = v23;
      if (!v58)
      {
        return;
      }
    }

    else
    {
      a1 = v60;
      a5 = v77;
      a2 = v59;
      if (!v77)
      {
        return;
      }
    }
  }

  if (a4 > a5)
  {
    if (a2 == a3)
    {
      return;
    }

    v79 = 0;
    v80 = 0;
    v81 = a6;
    do
    {
      v82 = &a2[v79];
      *(a6 + v79 * 8) = a2[v79];
      v83 = *&a2[v79 + 1];
      v84 = *(&a2[v79 + 2] + 4);
      *(a6 + v79 * 8 + 40) = a6 + v79 * 8 + 56;
      v85 = a6 + v79 * 8 + 40;
      *(v85 - 20) = v84;
      *(v85 - 32) = v83;
      *(v85 + 8) = 0x600000000;
      if (LODWORD(a2[v79 + 6]))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v85, v82 + 5);
      }

      ++v80;
      v79 += 13;
    }

    while (v82 + 13 != a3);
    v91 = a3 - 13;
    v92 = a6 + v79 * 8;
    while (1)
    {
      if (a2 == a1)
      {
        while (v92 != v81)
        {
          v103 = *(v92 - 104);
          v92 -= 104;
          *v91 = v103;
          v104 = *(v92 + 8);
          *(v91 + 20) = *(v92 + 20);
          *(v91 + 1) = v104;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v91 + 5), (v92 + 40));
          v91 -= 13;
        }

        goto LABEL_199;
      }

      v95 = (v92 - 96);
      v96 = *(v92 - 72);
      v97 = *(a2 - 18);
      if ((v96 & 0x3FFFFFFF) == (v97 & 0x3FFFFFFF))
      {
        v98 = v96 & 0x40000000;
        if (((v97 >> 30) & 1) == v98 >> 30)
        {
          if (*(a2 - 80) == 1)
          {
            if (*(v92 - 80) != 1)
            {
              goto LABEL_167;
            }

            v99 = *(v92 - 88);
            v100 = *(a2 - 11);
            if (v100 >= v99)
            {
              v101 = *(v92 - 88);
            }

            else
            {
              v101 = *(a2 - 11);
            }

            if (v101 && (v102 = memcmp(*v95, *(a2 - 12), v101)) != 0)
            {
              v81 = a6;
              if (v102 < 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v16 = v99 >= v100;
              v81 = a6;
              if (!v16)
              {
LABEL_167:
                v95 = a2 - 12;
                v93 = a2;
                a2 -= 13;
                goto LABEL_151;
              }
            }
          }
        }

        else if (v98)
        {
          goto LABEL_167;
        }
      }

      else if ((v96 & 0x3FFFFFFFu) < (v97 & 0x3FFFFFFF))
      {
        goto LABEL_167;
      }

      v93 = v92;
      v92 -= 104;
LABEL_151:
      *v91 = *(v93 - 13);
      v94 = *v95;
      *(v91 + 20) = *(v95 + 12);
      *(v91 + 1) = v94;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v91 + 5), v93 - 8);
      v91 -= 13;
      if (v92 == v81)
      {
        goto LABEL_199;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v86 = 0;
  v80 = 0;
  v81 = a6;
  do
  {
    v87 = &a1[v86];
    *(a6 + v86 * 8) = a1[v86];
    v88 = *&a1[v86 + 1];
    v89 = *(&a1[v86 + 2] + 4);
    *(a6 + v86 * 8 + 40) = a6 + v86 * 8 + 56;
    v90 = a6 + v86 * 8 + 40;
    *(v90 - 20) = v89;
    *(v90 - 32) = v88;
    *(v90 + 8) = 0x600000000;
    if (LODWORD(a1[v86 + 6]))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v90, v87 + 5);
    }

    ++v80;
    v86 += 13;
  }

  while (v87 + 13 != a2);
  v105 = a6 + v86 * 8;
  v106 = a6 + v86 * 8 - 104;
  v107 = a6;
  do
  {
    while (1)
    {
      if (a2 == a3)
      {
        v117 = 0;
        do
        {
          v118 = &a1[v117 / 8];
          v119 = v107 + v117;
          *v118 = *(v107 + v117);
          v120 = *(v107 + v117 + 8);
          *(v118 + 20) = *(v107 + v117 + 20);
          *(v118 + 1) = v120;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&a1[v117 / 8 + 5], (v107 + v117 + 40));
          v117 += 104;
        }

        while (v106 != v119);
        goto LABEL_199;
      }

      v109 = *(a2 + 8);
      v110 = *(v107 + 32);
      if ((v109 & 0x3FFFFFFF) != (v110 & 0x3FFFFFFF))
      {
        break;
      }

      v111 = v109 & 0x40000000;
      if (((v110 >> 30) & 1) != v111 >> 30)
      {
        if (v111)
        {
          goto LABEL_190;
        }

        goto LABEL_174;
      }

      if (*(v107 + 24) != 1)
      {
        goto LABEL_174;
      }

      if (*(a2 + 24) != 1)
      {
        goto LABEL_190;
      }

      v112 = a2[2];
      v113 = *(v107 + 16);
      if (v113 >= v112)
      {
        v114 = a2[2];
      }

      else
      {
        v114 = *(v107 + 16);
      }

      if (!v114 || (v115 = memcmp(a2[1], *(v107 + 8), v114)) == 0)
      {
        if (v112 >= v113)
        {
          goto LABEL_174;
        }

        goto LABEL_190;
      }

      if (v115 < 0)
      {
        goto LABEL_190;
      }

LABEL_174:
      *a1 = *v107;
      v108 = *(v107 + 8);
      *(a1 + 20) = *(v107 + 20);
      *(a1 + 1) = v108;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), (v107 + 40));
      v107 += 104;
      a1 += 13;
      if (v105 == v107)
      {
        goto LABEL_199;
      }
    }

    if ((v109 & 0x3FFFFFFFu) >= (v110 & 0x3FFFFFFF))
    {
      goto LABEL_174;
    }

LABEL_190:
    *a1 = *a2;
    v116 = *(a2 + 1);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 1) = v116;
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), a2 + 5);
    a2 += 13;
    a1 += 13;
  }

  while (v105 != v107);
LABEL_199:
  if (v81 && v80)
  {
    v121 = (a6 + 56);
    do
    {
      v122 = *(v121 - 2);
      if (v121 != v122)
      {
        free(v122);
      }

      v121 += 13;
      --v80;
    }

    while (v80);
  }
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[2] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

__n128 llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::SymbolAlias>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::SymbolAlias&&>>(unint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *(a3 + 2);
  v3 = *(a1 + 2);
  v4 = *a1;
  v5 = &v12;
  if (v3 >= *(a1 + 3))
  {
    if (v4 <= &v12 && v4 + 32 * v3 > &v12)
    {
      v10 = &v12 - v4;
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v3 + 1, 32);
      a1 = v11;
      v4 = *v11;
      v5 = &v10[*v11];
    }

    else
    {
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v3 + 1, 32);
      a1 = v9;
      v4 = *v9;
      v5 = &v12;
    }
  }

  v6 = (v4 + 32 * *(a1 + 2));
  result = *v5;
  v8 = *(v5 + 1);
  *v6 = *v5;
  v6[1] = v8;
  ++*(a1 + 2);
  return result;
}

llvm::raw_ostream *anonymous namespace::AliasState::printAliases(llvm::raw_ostream *result, unsigned int a2, llvm::raw_ostream **a3, _DWORD *a4, int a5)
{
  i = result;
  if (a2)
  {
    v9 = 32 * a2;
    for (i = result; a5 != *(i + 6) >> 31; i = (i + 32))
    {
      v9 -= 32;
      if (!v9)
      {
        return result;
      }
    }
  }

  v10 = (result + 32 * a2);
  while (i != v10)
  {
    v11 = *a3;
    if ((*(i + 27) & 0x40) != 0)
    {
      v12 = "!";
    }

    else
    {
      v12 = "#";
    }

    v13 = v11[4];
    if (v11[3] == v13)
    {
      v15 = llvm::raw_ostream::write(*a3, v12, 1uLL);
      v14 = v15[4];
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > v15[3] - v14)
      {
LABEL_14:
        llvm::raw_ostream::write(v15, v16, v17);
        goto LABEL_18;
      }
    }

    else
    {
      *v13 = *v12;
      v14 = (v11[4] + 1);
      v11[4] = v14;
      v15 = v11;
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > v11[3] - v14)
      {
        goto LABEL_14;
      }
    }

    if (v17)
    {
      v18 = v17;
      memcpy(v14, v16, v17);
      v15[4] += v18;
    }

LABEL_18:
    v19 = *(i + 6);
    if ((v19 & 0x3FFFFFFF) != 0)
    {
      llvm::raw_ostream::operator<<(v11, v19 & 0x3FFFFFFF);
    }

    v20 = *a3;
    v21 = *(*a3 + 4);
    if ((*(*a3 + 3) - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      v20[4] += 3;
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
LABEL_24:
        v23 = *v22;
        {
        }

        v24 = v23 + 9;
        v25 = v23[12];
        if ((v25 & 2) == 0)
        {
          v24 = *v24;
        }

        if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v26 = *a3;
          v28 = v22;
          mlir::Attribute::print(&v28, v26, 0);
        }

        else
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a3, v22, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
        goto LABEL_24;
      }
    }

    mlir::AsmPrinter::Impl::printTypeImpl(a3, v22);
    *(i + 28) = 1;
LABEL_31:
    result = *a3;
    ++*a4;
    v27 = *(result + 4);
    if (v27 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v27 + 1;
      *v27 = 10;
    }

    do
    {
      i = (i + 32);
    }

    while (i != v10 && a5 != *(i + 6) >> 31);
  }

  return result;
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJRNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F1A362A8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *_ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(char **a1)
{
  v2 = a1[2];
  v3 = **a1;
  **a1 = 1;
  if ((v3 & 1) == 0)
  {
    if (*a1[1] != 1)
    {
      goto LABEL_6;
    }

    v4 = *(v2 + 2);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      v4 = llvm::raw_ostream::write(v4, ",", 1uLL);
      v6 = *(v4 + 4);
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      *v5 = 44;
      v6 = (*(v4 + 4) + 1);
      *(v4 + 4) = v6;
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
LABEL_5:
        *(v4 + 4) = v6 + 1;
        *v6 = 10;
LABEL_6:
        v7 = *(v2 + 2);
        v8 = *(v7 + 4);
        if (*(v7 + 3) - v8 <= 1uLL)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    llvm::raw_ostream::write(v4, 10);
    v7 = *(v2 + 2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 <= 1uLL)
    {
LABEL_7:
      v7 = llvm::raw_ostream::write(v7, "  ", 2uLL);
      v9 = a1[3];
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v7 + 4);
      if (v11 <= *(v7 + 3) - v12)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    *v8 = 8224;
    v12 = (*(v7 + 4) + 2);
    *(v7 + 4) = v12;
    v23 = a1[3];
    v10 = *v23;
    v11 = *(v23 + 1);
    if (v11 <= *(v7 + 3) - v12)
    {
LABEL_8:
      if (v11)
      {
        v13 = v7;
        v14 = v11;
        memcpy(v12, v10, v11);
        v7 = v13;
        v12 = (*(v13 + 4) + v14);
        *(v13 + 4) = v12;
      }

      if (*(v7 + 3) - v12 <= 0xCuLL)
      {
LABEL_11:
        v7 = llvm::raw_ostream::write(v7, "_resources: {", 0xDuLL);
        v15 = *(v7 + 4);
        ++*(v2 + 20);
        if (v15 >= *(v7 + 3))
        {
LABEL_12:
          llvm::raw_ostream::write(v7, 10);
          goto LABEL_13;
        }

LABEL_22:
        *(v7 + 4) = v15 + 1;
        *v15 = 10;
        v24 = a1[4];
        v25 = *v24;
        *v24 = 1;
        if (v25)
        {
          goto LABEL_14;
        }

LABEL_23:
        if (*a1[5] != 1)
        {
          goto LABEL_27;
        }

        v26 = *(v2 + 2);
        v27 = *(v26 + 4);
        if (*(v26 + 3) == v27)
        {
          v26 = llvm::raw_ostream::write(v26, ",", 1uLL);
          v28 = *(v26 + 4);
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
            goto LABEL_26;
          }
        }

        else
        {
          *v27 = 44;
          v28 = (*(v26 + 4) + 1);
          *(v26 + 4) = v28;
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
LABEL_26:
            *(v26 + 4) = v28 + 1;
            *v28 = 10;
LABEL_27:
            result = *(v2 + 2);
            v29 = *(result + 4);
            if (*(result + 3) - v29 <= 3uLL)
            {
              goto LABEL_28;
            }

            goto LABEL_39;
          }
        }

        llvm::raw_ostream::write(v26, 10);
        result = *(v2 + 2);
        v29 = *(result + 4);
        if (*(result + 3) - v29 <= 3uLL)
        {
LABEL_28:
          result = llvm::raw_ostream::write(result, "    ", 4uLL);
          v30 = a1[6];
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(result + 4);
          if (v32 <= *(result + 3) - v33)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_39:
        *v29 = 538976288;
        v33 = (*(result + 4) + 4);
        *(result + 4) = v33;
        v36 = a1[6];
        v31 = *v36;
        v32 = *(v36 + 1);
        if (v32 <= *(result + 3) - v33)
        {
LABEL_29:
          if (v32)
          {
            v34 = result;
            v35 = v32;
            memcpy(v33, v31, v32);
            result = v34;
            v33 = (*(v34 + 4) + v35);
            *(v34 + 4) = v33;
          }

          if (*(result + 3) - v33 <= 2uLL)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }

LABEL_40:
        result = llvm::raw_ostream::write(result, v31, v32);
        v33 = *(result + 4);
        if (*(result + 3) - v33 <= 2uLL)
        {
LABEL_32:
          v21 = ": {";
          v22 = 3;
          goto LABEL_33;
        }

LABEL_41:
        v33[2] = 123;
        *v33 = 8250;
        v20 = (*(result + 4) + 3);
LABEL_42:
        *(result + 4) = v20;
        ++*(v2 + 20);
        if (v20 < *(result + 3))
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }

LABEL_21:
      qmemcpy(v12, "_resources: {", 13);
      v15 = (*(v7 + 4) + 13);
      *(v7 + 4) = v15;
      ++*(v2 + 20);
      if (v15 >= *(v7 + 3))
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_20:
    v7 = llvm::raw_ostream::write(v7, v10, v11);
    v12 = *(v7 + 4);
    if (*(v7 + 3) - v12 <= 0xCuLL)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_13:
  v16 = a1[4];
  v17 = *v16;
  *v16 = 1;
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  result = *(v2 + 2);
  v19 = *(result + 4);
  if (*(result + 3) != v19)
  {
    *v19 = 44;
    v20 = (*(result + 4) + 1);
    goto LABEL_42;
  }

  v21 = ",";
  v22 = 1;
LABEL_33:
  result = llvm::raw_ostream::write(result, v21, v22);
  v20 = *(result + 4);
  ++*(v2 + 20);
  if (v20 < *(result + 3))
  {
LABEL_43:
    *(result + 4) = v20 + 1;
    *v20 = 10;
    return result;
  }

LABEL_34:

  return llvm::raw_ostream::write(result, 10);
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v5 = &v6;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v6 = v7;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v8 = a6;
  v7[0] = &v8;
  v7[1] = v9;
}

void *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(llvm::StringRef,BOOL)::{lambda(llvm::raw_ostream &)#1}>(_BYTE **a1, llvm::raw_ostream *this)
{
  if (**a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (**a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *(this + 4);
  if (v4 <= *(this + 3) - v5)
  {
    result = memcpy(v5, v3, v4);
    *(this + 4) += v4;
  }

  else
  {

    return llvm::raw_ostream::write(this, v3, v4);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildString(llvm::StringRef,llvm::StringRef)::{lambda(llvm::raw_ostream &)#1}>(llvm::raw_ostream ***a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v4 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(**a1, (*a1)[1], this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v6 = 34;
    ++*(this + 4);
  }

  return result;
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(llvm::StringRef,llvm::ArrayRef<char>,unsigned int)::{lambda(llvm::raw_ostream &)#1}>(int **a1, llvm::raw_ostream *this)
{
  v2 = this;
  v16 = **a1;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 2)
  {
    *(v4 + 2) = 120;
    *v4 = 12322;
    *(this + 4) += 3;
  }

  else
  {
    v2 = llvm::raw_ostream::write(this, "0x", 3uLL);
  }

  llvm::toHex(&v16, 4, 0, v14);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14[1];
  }

  v7 = llvm::raw_ostream::write(v2, v5, v6);
  llvm::toHex(*a1[1], *(a1[1] + 1), 0, __p);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v7, v8, v9);
  v11 = v10[4];
  if (v10[3] != v11)
  {
    *v11 = 34;
    ++v10[4];
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v10, "", 1uLL);
  if (v13 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F1A362A8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_18AsmResourcePrinterEJEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F1A362A8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::OperationPrinter::printFileMetadataDictionary(mlir::Operation *)::$_0>(llvm::raw_ostream *result)
{
  v1 = *(result + 1);
  v2 = **result;
  **result = 1;
  if (v2)
  {
    return result;
  }

  result = *(v1 + 16);
  ++*(v1 + 80);
  v3 = *(result + 4);
  if (v3 < *(result + 3))
  {
    *(result + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(result + 4);
    if ((*(result + 3) - v4) > 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(result, "{-#", 3uLL);
    v5 = *(result + 4);
    ++*(v1 + 80);
    if (v5 >= *(result + 3))
    {
      goto LABEL_5;
    }

LABEL_10:
    *(result + 4) = v5 + 1;
    *v5 = 10;
    return result;
  }

  result = llvm::raw_ostream::write(result, 10);
  v4 = *(result + 4);
  if ((*(result + 3) - v4) <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  *(v4 + 2) = 35;
  *v4 = 11643;
  v5 = (*(result + 4) + 3);
  *(result + 4) = v5;
  ++*(v1 + 80);
  if (v5 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_5:

  return llvm::raw_ostream::write(result, 10);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>,mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOperationID(llvm::raw_ostream *this, mlir::Operation *a2, llvm::raw_ostream *a3, uint64_t a4)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
  v5 = *(a2 + 2 * v4);
  if (v5 != a4)
  {
    v10 = 1;
    while (v5 != -4096)
    {
      v11 = v4 + v10++;
      v4 = v11 & (a3 - 1);
      v5 = *(a2 + 2 * v4);
      if (v5 == a4)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v4 == a3)
  {
LABEL_4:
    v6 = *(this + 4);
    if (*(this + 3) - v6 > 0x14uLL)
    {
      qmemcpy(v6, "<<UNKNOWN OPERATION>>", 21);
      *(this + 4) += 21;
    }

    else
    {

      return llvm::raw_ostream::write(this, "<<UNKNOWN OPERATION>>", 0x15uLL);
    }

    return this;
  }

  v7 = *(this + 4);
  if (v7 >= *(this + 3))
  {
    this = llvm::raw_ostream::write(this, 37);
    v8 = *(a2 + 4 * v4 + 2);
  }

  else
  {
    *(this + 4) = v7 + 1;
    *v7 = 37;
    v8 = *(a2 + 4 * v4 + 2);
  }

  return llvm::raw_ostream::operator<<(this, v8);
}

void anonymous namespace::OperationPrinter::printValueUsers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = *(a1 + 16);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 25701;
      *v4 = 1937075829;
      v3[4] += 6;
    }

    else
    {
      v5 = a2;
      llvm::raw_ostream::write(v3, "unused", 6uLL);
      a2 = v5;
    }
  }

  v22 = &v26;
  v23 = &v26;
  v24 = 1;
  v25 = 0;
  v6 = *a2;
  if (*a2)
  {
    for (i = 0; ; ++i)
    {
      v8 = v6[2];
      if (v23 != v22)
      {
        goto LABEL_10;
      }

      v10 = HIDWORD(v24);
      if (HIDWORD(v24))
      {
        v11 = 8 * HIDWORD(v24);
        v12 = v22;
        while (*v12 != v8)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_8;
      }

LABEL_17:
      if (HIDWORD(v24) < v24)
      {
        ++HIDWORD(v24);
        v22[v10] = v8;
        if (!i)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_10:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v22, v6[2]);
        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (!i)
        {
          goto LABEL_21;
        }
      }

      v13 = *(a1 + 16);
      v14 = v13[4];
      if (v13[3] - v14 > 1uLL)
      {
        *v14 = 8236;
        v13[4] += 2;
        v15 = *(v8 + 36);
        if (v15)
        {
LABEL_24:
          v16 = v8 - 16;
          v17 = *(a1 + 16);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
          if (v15 != 1)
          {
            for (j = 1; j != v15; ++j)
            {
              v21 = v17[4];
              if (v17[3] - v21 > 1uLL)
              {
                *v21 = 8236;
                v17[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v17, ", ", 2uLL);
              }

              v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j);
            }
          }

          goto LABEL_8;
        }

        goto LABEL_7;
      }

      llvm::raw_ostream::write(v13, ", ", 2uLL);
LABEL_21:
      v15 = *(v8 + 36);
      if (v15)
      {
        goto LABEL_24;
      }

LABEL_7:
LABEL_8:
      v6 = *v6;
      if (!v6)
      {
        if (v23 != v22)
        {
          free(v23);
        }

        return;
      }
    }
  }
}

void anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 16);
  v5 = *v4;
  v6 = *(*v4 + 32);
  if (*(*v4 + 24) - v6 > 1uLL)
  {
    *v6 = 8250;
    v5[4] += 2;
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
LABEL_3:
      if ((mlir::AsmPrinter::Impl::printAlias(v4, v7) & 1) == 0)
      {
        mlir::AsmPrinter::Impl::printTypeImpl(v4, v7);
        if ((*(a1 + 72) & 1) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v5, ": ", 2uLL);
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = *v4;
  v9 = *(*v4 + 32);
  if (*(*v4 + 24) - v9 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v8, "<<NULL TYPE>>", 0xDuLL);
LABEL_9:
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  qmemcpy(v9, "<<NULL TYPE>>", 13);
  v8[4] += 13;
  if ((*(a1 + 72) & 1) == 0)
  {
    return;
  }

LABEL_10:
  v10 = *(a2 + 32);
  v11 = *v4;
  v12 = *(*v4 + 32);
  if (*(*v4 + 24) == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v12 = 32;
    ++v11[4];
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_12:
      v13 = *v4;
      v14 = *(*v4 + 32);
      if (*(*v4 + 24) - v14 > 3uLL)
      {
        *v14 = 677605228;
        v13[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v13, "loc(", 4uLL);
      }

      mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 0, 1);
      v15 = *v4;
      v16 = *(*v4 + 32);
      if (v16 >= *(*v4 + 24))
      {

        llvm::raw_ostream::write(v15, 41);
      }

      else
      {
        *(v15 + 4) = v16 + 1;
        *v16 = 41;
      }

      return;
    }
  }

  mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 1, 1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u32[2];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_u32[2];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v90 = a2[-2].n128_i32[2];
      v89 = &a2[-2].n128_i8[8];
      if (v90 >= *v12)
      {
        return result;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = (v12 + 24);
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v106 = v100;
            v107 = *(v104 + 24);
            if (v107 < *v104)
            {
              v179 = *(v104 + 28);
              v208 = *(v104 + 44);
              v108 = v103;
              do
              {
                v109 = v12 + v108;
                *(v109 + 24) = *(v12 + v108);
                *(v109 + 40) = *(v12 + v108 + 16);
                if (!v108)
                {
                  v105 = v12;
                  goto LABEL_122;
                }

                v108 -= 24;
              }

              while (v107 < *(v109 - 24));
              v105 = v12 + v108 + 24;
LABEL_122:
              *v105 = v107;
              result = v179;
              *(v105 + 20) = v208;
              *(v105 + 4) = v179;
            }

            v100 = (v106 + 24);
            v103 += 24;
            v104 = v106;
          }

          while (&v106[1].n128_i8[8] != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v144 = v100;
          v145 = *(a1 + 24);
          if (v145 < *a1)
          {
            v183 = *(a1 + 28);
            v212 = *(a1 + 44);
            do
            {
              *v100 = *(v100 - 24);
              v100[1].n128_u64[0] = v100[-1].n128_u64[1];
              v146 = v100[-3].n128_i32[0];
              v100 = (v100 - 24);
            }

            while (v145 < v146);
            v100->n128_u32[0] = v145;
            result = v183;
            v100[1].n128_u32[1] = v212;
            *(v100 + 4) = v183;
          }

          v100 = (v144 + 24);
          a1 = v144;
        }

        while ((v144 + 24) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          if (v110 >= v111)
          {
            v112 = (2 * (v111 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v113 = v12 + 24 * v112;
            v114 = *v113;
            if (2 * v111 + 2 < v14)
            {
              v115 = *(v113 + 24);
              v116 = v114 < v115;
              if (v114 <= v115)
              {
                v114 = *(v113 + 24);
              }

              if (v116)
              {
                v113 += 24;
                v112 = 2 * v111 + 2;
              }
            }

            v117 = v12 + 24 * v111;
            v118 = *v117;
            if (v114 >= *v117)
            {
              v209 = *(v117 + 20);
              v180 = *(v117 + 4);
              while (1)
              {
                v122 = v117;
                v117 = v113;
                v123 = *v113;
                *(v122 + 16) = *(v113 + 16);
                *v122 = v123;
                if (v110 < v112)
                {
                  break;
                }

                v124 = (2 * v112) | 1;
                v113 = v12 + 24 * v124;
                v112 = 2 * v112 + 2;
                v121 = *v113;
                if (v112 < v14)
                {
                  v119 = *(v113 + 24);
                  v120 = v121 < v119;
                  if (v121 <= v119)
                  {
                    v121 = *(v113 + 24);
                  }

                  if (v120)
                  {
                    v113 += 24;
                  }

                  else
                  {
                    v112 = v124;
                  }

                  if (v121 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v112 = v124;
                  if (v121 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              *(v117 + 20) = v209;
              *(v117 + 4) = v180;
            }
          }

          v116 = v111-- <= 0;
        }

        while (!v116);
        v125 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v126 = 0;
          v210 = *(v12 + 16);
          v181 = *v12;
          v127 = v12;
          do
          {
            v132 = v127 + 24 * v126;
            v130 = v132 + 24;
            v133 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 < v125)
            {
              v129 = *(v132 + 12);
              v128 = v132 + 48;
              if (*(v128 - 6) >= v129)
              {
                v126 = v133;
              }

              else
              {
                v130 = v128;
              }
            }

            else
            {
              v126 = v133;
            }

            v131 = *v130;
            v127[1].n128_u64[0] = *(v130 + 2);
            *v127 = v131;
            v127 = v130;
          }

          while (v126 <= ((v125 - 2) >> 1));
          a2 = (a2 - 24);
          if (v130 == a2)
          {
            result = v181;
            *(v130 + 2) = v210;
            *v130 = v181;
          }

          else
          {
            v134 = *a2;
            *(v130 + 2) = a2[1].n128_u64[0];
            *v130 = v134;
            result = v181;
            a2[1].n128_u64[0] = v210;
            *a2 = v181;
            v135 = &v130[-v12 + 24];
            if (v135 >= 25)
            {
              v136 = (-2 - 0x5555555555555555 * (v135 >> 3)) >> 1;
              v137 = v12 + 24 * v136;
              v138 = *v130;
              if (*v137 < *v130)
              {
                v157 = *(v130 + 5);
                v154 = *(v130 + 4);
                do
                {
                  v139 = v130;
                  v130 = v137;
                  v140 = *v137;
                  *(v139 + 2) = *(v137 + 16);
                  *v139 = v140;
                  if (!v136)
                  {
                    break;
                  }

                  v136 = (v136 - 1) >> 1;
                  v137 = v12 + 24 * v136;
                }

                while (*v137 < v138);
                *v130 = v138;
                result = v154;
                *(v130 + 5) = v157;
                *(v130 + 4) = v154;
              }
            }
          }

          v116 = v125-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 < 0xC01)
    {
      v20 = *v12;
      if (*v12 < v16->n128_u32[0])
      {
        if (v17 < v20)
        {
          v188 = v16[1].n128_u64[0];
          v159 = *v16;
          v21 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v21;
          goto LABEL_36;
        }

        v195 = v16[1].n128_u64[0];
        v166 = *v16;
        v42 = *v12;
        v16[1].n128_u64[0] = *(v12 + 16);
        *v16 = v42;
        *(v12 + 16) = v195;
        *v12 = v166;
        if (*v9 < *v12)
        {
          v188 = *(v12 + 16);
          v159 = *v12;
          v43 = *v9;
          *(v12 + 16) = a2[-1].n128_u64[1];
          *v12 = v43;
LABEL_36:
          a2[-1].n128_u64[1] = v188;
          *v9 = v159;
        }

LABEL_37:
        --a3;
        v26 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v191 = *(v12 + 16);
      v162 = *v12;
      v24 = *v9;
      *(v12 + 16) = a2[-1].n128_u64[1];
      *v12 = v24;
      a2[-1].n128_u64[1] = v191;
      *v9 = v162;
      if (*v12 >= v16->n128_u32[0])
      {
        goto LABEL_37;
      }

      v192 = v16[1].n128_u64[0];
      v163 = *v16;
      v25 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v25;
      *(v12 + 16) = v192;
      *v12 = v163;
      --a3;
      v26 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 24) < v26)
      {
        goto LABEL_62;
      }

      v156 = *(v12 + 20);
      v153 = *(v12 + 4);
      if (v26 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v26 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = v83[-2].n128_i32[2];
          v83 = (v83 - 24);
        }

        while (v26 < v84);
      }

      while (v12 < v83)
      {
        v205 = *(v12 + 16);
        v176 = *v12;
        v85 = *v83;
        *(v12 + 16) = v83[1].n128_u64[0];
        *v12 = v85;
        v83[1].n128_u64[0] = v205;
        *v83 = v176;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v86);
        do
        {
          v87 = v83[-2].n128_i32[2];
          v83 = (v83 - 24);
        }

        while (v26 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v26;
      result = v153;
      *(v12 - 4) = v156;
      *(v12 - 20) = v153;
    }

    else
    {
      v18 = v16->n128_u32[0];
      if (v16->n128_u32[0] >= *v12)
      {
        if (v17 < v18)
        {
          v189 = v16[1].n128_u64[0];
          v160 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v189;
          *v9 = v160;
          if (v16->n128_u32[0] < *v12)
          {
            v190 = *(v12 + 16);
            v161 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v190;
            *v16 = v161;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v193 = *(v12 + 16);
          v164 = *v12;
          v27 = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = v27;
          v16[1].n128_u64[0] = v193;
          *v16 = v164;
          if (*v9 >= v16->n128_u32[0])
          {
            goto LABEL_28;
          }

          v187 = v16[1].n128_u64[0];
          v158 = *v16;
          v28 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v28;
        }

        else
        {
          v187 = *(v12 + 16);
          v158 = *v12;
          v19 = *v9;
          *(v12 + 16) = a2[-1].n128_u64[1];
          *v12 = v19;
        }

        a2[-1].n128_u64[1] = v187;
        *v9 = v158;
      }

LABEL_28:
      v29 = (v12 + 24);
      v30 = v12 + 24 * v15;
      v33 = *(v30 - 24);
      v31 = (v30 - 24);
      v32 = v33;
      v34 = v10->n128_u32[0];
      if (v33 >= *(v12 + 24))
      {
        if (v34 < v32)
        {
          v194 = v31[1].n128_u64[0];
          v165 = *v31;
          v38 = *v10;
          v31[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v31 = v38;
          a2[-2].n128_u64[0] = v194;
          *v10 = v165;
          if (v31->n128_u32[0] < v29->n128_u32[0])
          {
            v39 = *v29;
            v40 = *(v12 + 40);
            v41 = v31[1].n128_i64[0];
            *v29 = *v31;
            *(v12 + 40) = v41;
            v31[1].n128_u64[0] = v40;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v44 = *v29;
          v45 = *(v12 + 40);
          v46 = v31[1].n128_i64[0];
          *v29 = *v31;
          *(v12 + 40) = v46;
          v31[1].n128_u64[0] = v45;
          *v31 = v44;
          if (v10->n128_u32[0] >= v31->n128_u32[0])
          {
            goto LABEL_42;
          }

          v196 = v31[1].n128_u64[0];
          v167 = *v31;
          v47 = *v10;
          v31[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v31 = v47;
          v35 = v167;
          a2[-2].n128_u64[0] = v196;
        }

        else
        {
          v35 = *v29;
          v36 = *(v12 + 40);
          v37 = a2[-2].n128_u64[0];
          *v29 = *v10;
          *(v12 + 40) = v37;
          a2[-2].n128_u64[0] = v36;
        }

        *v10 = v35;
      }

LABEL_42:
      v48 = (v12 + 48);
      v49 = v12 + 24 * v15;
      v52 = *(v49 + 24);
      v50 = (v49 + 24);
      v51 = v52;
      v53 = *v11;
      if (v52 >= *(v12 + 48))
      {
        if (v53 < v51)
        {
          v197 = v50[1].n128_u64[0];
          v168 = *v50;
          v57 = *v11;
          v50[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v50 = v57;
          a2[-4].n128_u64[1] = v197;
          *v11 = v168;
          if (v50->n128_u32[0] < v48->n128_u32[0])
          {
            v58 = *v48;
            v59 = *(v12 + 64);
            v60 = v50[1].n128_i64[0];
            *v48 = *v50;
            *(v12 + 64) = v60;
            v50[1].n128_u64[0] = v59;
            *v50 = v58;
          }
        }
      }

      else
      {
        if (v53 >= v51)
        {
          v61 = *v48;
          v62 = *(v12 + 64);
          v63 = v50[1].n128_i64[0];
          *v48 = *v50;
          *(v12 + 64) = v63;
          v50[1].n128_u64[0] = v62;
          *v50 = v61;
          if (*v11 >= v50->n128_u32[0])
          {
            goto LABEL_51;
          }

          v198 = v50[1].n128_u64[0];
          v169 = *v50;
          v64 = *v11;
          v50[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v50 = v64;
          v54 = v169;
          a2[-4].n128_u64[1] = v198;
        }

        else
        {
          v54 = *v48;
          v55 = *(v12 + 64);
          v56 = a2[-4].n128_u64[1];
          *v48 = *v11;
          *(v12 + 64) = v56;
          a2[-4].n128_u64[1] = v55;
        }

        *v11 = v54;
      }

LABEL_51:
      v65 = v16->n128_u32[0];
      v66 = v50->n128_u32[0];
      if (v16->n128_u32[0] >= v31->n128_u32[0])
      {
        if (v66 < v65)
        {
          v200 = v16[1].n128_u64[0];
          v171 = *v16;
          *v16 = *v50;
          v16[1].n128_u64[0] = v50[1].n128_u64[0];
          v50[1].n128_u64[0] = v200;
          *v50 = v171;
          if (v16->n128_u32[0] < v31->n128_u32[0])
          {
            v201 = v31[1].n128_u64[0];
            v172 = *v31;
            *v31 = *v16;
            v31[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v201;
            *v16 = v172;
          }
        }
      }

      else
      {
        if (v66 >= v65)
        {
          v202 = v31[1].n128_u64[0];
          v173 = *v31;
          *v31 = *v16;
          v31[1].n128_u64[0] = v16[1].n128_u64[0];
          v16[1].n128_u64[0] = v202;
          *v16 = v173;
          if (v50->n128_u32[0] >= v16->n128_u32[0])
          {
            goto LABEL_60;
          }

          v199 = v16[1].n128_u64[0];
          v170 = *v16;
          *v16 = *v50;
          v16[1].n128_u64[0] = v50[1].n128_u64[0];
        }

        else
        {
          v199 = v31[1].n128_u64[0];
          v170 = *v31;
          *v31 = *v50;
          v31[1].n128_u64[0] = v50[1].n128_u64[0];
        }

        v50[1].n128_u64[0] = v199;
        *v50 = v170;
      }

LABEL_60:
      v203 = *(v12 + 16);
      v174 = *v12;
      v67 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v67;
      v16[1].n128_u64[0] = v203;
      *v16 = v174;
      --a3;
      v26 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v68 = 0;
      v155 = *(v12 + 20);
      v152 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v26);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = v71[-2].n128_i32[2];
          v71 = (v71 - 24);
        }

        while (v73 >= v26);
      }

      else
      {
        do
        {
          v72 = v71[-2].n128_i32[2];
          v71 = (v71 - 24);
        }

        while (v72 >= v26);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v204 = *(v12 + 16);
          v175 = *v12;
          v75 = *v74;
          *(v12 + 16) = v74[1].n128_u64[0];
          *v12 = v75;
          v74[1].n128_u64[0] = v204;
          *v74 = v175;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v26);
          do
          {
            v77 = v74[-2].n128_i32[2];
            v74 = (v74 - 24);
          }

          while (v77 >= v26);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v26;
      result = v152;
      *(v12 - 4) = v155;
      *(v12 - 20) = v152;
      if (v70 < v71)
      {
        goto LABEL_81;
      }

      {
        a2 = (v12 - 24);
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_81:
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (v96 >= *v12)
      {
        if (v98 < v96)
        {
          v143 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v143;
          if (*(v12 + 24) < *v12)
          {
            v211 = *(v12 + 16);
            v182 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v182;
            *v91 = v182;
            *(v12 + 40) = v211;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v207 = *(v12 + 16);
          v178 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v178;
          *v97 = v178;
          v99 = v207;
          goto LABEL_184;
        }

        v214 = *(v12 + 16);
        v185 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v185;
        *v91 = v185;
        *(v12 + 40) = v214;
        if (v98 < *(v12 + 24))
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_184:
          *(v12 + 64) = v99;
        }
      }

      if (*v9 >= v97->n128_u32[0])
      {
        return result;
      }

      result = *v97;
      v149 = *(v12 + 64);
      v150 = a2[-1].n128_u64[1];
      *v97 = *v9;
      *(v12 + 64) = v150;
      a2[-1].n128_u64[1] = v149;
      *v9 = result;
      if (v97->n128_u32[0] >= v91->n128_u32[0])
      {
        return result;
      }

      v151 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v151;
LABEL_188:
      if (*(v12 + 24) < *v12)
      {
        v215 = *(v12 + 16);
        v186 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v186;
        *v91 = v186;
        v91[1].n128_u64[0] = v215;
      }

      return result;
    }

    if (v14 == 5)
    {

      return result;
    }

    goto LABEL_9;
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = a2[-2].n128_u32[2];
  v89 = &a2[-2].n128_i8[8];
  v93 = v94;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v141 = *(v12 + 40);
    v142 = *(v89 + 2);
    *v91 = *v89;
    *(v12 + 40) = v142;
    *(v89 + 2) = v141;
    *v89 = result;
    goto LABEL_188;
  }

  if (v93 < v92)
  {
LABEL_108:
    v206 = *(v12 + 16);
    v177 = *v12;
    v95 = *v89;
    *(v12 + 16) = *(v89 + 2);
    *v12 = v95;
    result = v177;
    *(v89 + 2) = v206;
    *v89 = v177;
    return result;
  }

  v213 = *(v12 + 16);
  v184 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v184;
  *v91 = v184;
  *(v12 + 40) = v213;
  if (*v89 < *(v12 + 24))
  {
    result = *v91;
    v147 = *(v12 + 40);
    v148 = *(v89 + 2);
    *v91 = *v89;
    *(v12 + 40) = v148;
    *(v89 + 2) = v147;
    *v89 = result;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *>(uint64_t a1, int *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 6);
      v4 = (a2 - 6);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u32[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_47:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 6);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_44;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_44:
    if (v23->n128_u32[0] >= v21->n128_u32[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_47;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 6);
    v4 = (a2 - 6);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u32[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v51 = *v47;
    if (*v47 < v13->n128_u32[0])
    {
      v64 = *(v47 + 1);
      v65 = v47[5];
      v52 = v48;
      do
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          v50 = a1;
          goto LABEL_34;
        }

        v52 -= 24;
      }

      while (v51 < *(v53 + 24));
      v50 = a1 + v52 + 72;
LABEL_34:
      *v50 = v51;
      *(v50 + 4) = v64;
      *(v50 + 20) = v65;
      if (++v49 == 8)
      {
        return v47 + 6 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 6;
    if (v47 == a2)
    {
      return 1;
    }
  }
}