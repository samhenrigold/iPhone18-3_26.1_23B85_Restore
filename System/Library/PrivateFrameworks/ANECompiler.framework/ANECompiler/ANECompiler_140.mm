void OUTLINED_FUNCTION_7_6()
{

  JUMPOUT(0x1AC55A040);
}

void mlir::invertPermutationVector(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (a2)
  {
    if (a2 < 7)
    {
      v6 = 0;
      v7 = a2;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, a2, 8);
      v6 = *(a3 + 2);
      v7 = a2 - v6;
      if (a2 == v6)
      {
LABEL_7:
        v8 = 0;
        *(a3 + 2) = a2;
        v9 = *a3;
        v10 = 8 * a2;
        do
        {
          *(v9 + 8 * *(a1 + 8 * v8)) = v8;
          ++v8;
          v10 -= 8;
        }

        while (v10);
        return;
      }
    }

    bzero((*a3 + 8 * v6), 8 * v7);
    goto LABEL_7;
  }
}

BOOL mlir::isIdentityPermutation(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2 == *(a1 + 8 * v2);
    v4 = v2 != *(a1 + 8 * v2) || a2 - 1 == v2;
    ++v2;
  }

  while (!v4);
  return v3;
}

void mlir::applyPermutationToVector<long long,6u>(uint64_t a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v15 = v17;
  v16 = 0x600000000;
  if (v5 < 7)
  {
    v6 = 0;
    v7 = v17;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v5, 8);
    v6 = v16;
    v7 = v15;
  }

  v8 = v6;
  v9 = v5;
  do
  {
    v10 = *a2++;
    v7[v8++] = v4[v10];
    --v9;
  }

  while (v9);
LABEL_6:
  v11 = v6 + v5;
  LODWORD(v16) = v11;
  if (&v15 == a1)
  {
    goto LABEL_22;
  }

  if (v7 != v17)
  {
    if (*a1 != a1 + 16)
    {
      free(*a1);
      v7 = v15;
      LODWORD(v11) = v16;
    }

    *a1 = v7;
    v12 = HIDWORD(v16);
    *(a1 + 8) = v11;
    *(a1 + 12) = v12;
    v15 = v17;
    HIDWORD(v16) = 0;
    goto LABEL_21;
  }

  v13 = *(a1 + 8);
  if (v13 >= v11)
  {
    if (v11)
    {
      memmove(*a1, v7, 8 * v11);
    }

    goto LABEL_20;
  }

  if (*(a1 + 12) < v11)
  {
    *(a1 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v13 = 0;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v13)
  {
    v13 = 0;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  memmove(*a1, v7, 8 * v13);
  v14 = v16 - v13;
  if (v16 != v13)
  {
LABEL_19:
    memcpy((*a1 + 8 * v13), &v15[v13], 8 * v14);
  }

LABEL_20:
  *(a1 + 8) = v11;
LABEL_21:
  LODWORD(v16) = 0;
  v7 = v15;
LABEL_22:
  if (v7 != v17)
  {
    free(v7);
  }
}

void *llvm::SmallVectorImpl<long long>::insert<long long const*,void>(uint64_t *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v6 = *a1;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 3;
  v13 = v12 + v9;
  if (*a1 + 8 * v9 == a2)
  {
    if (v13 > v10)
    {
      v23 = a4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v13, 8);
      a4 = v23;
      LODWORD(v9) = *(a1 + 2);
      v7 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v7 + 8 * v9), __src, v11);
      LODWORD(v9) = *(a1 + 2);
      v7 = *a1;
    }

    *(a1 + 2) = v9 + (v11 >> 3);
    return (v7 + v8);
  }

  __len = v11;
  v46 = __src;
  v48 = a4;
  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v13, 8);
    v7 = *a1;
    v9 = *(a1 + 2);
  }

  __srca = (v7 + v8);
  v15 = 8 * v9;
  v16 = (v7 + 8 * v9);
  v17 = 8 * v9 - v8;
  v18 = v17 >> 3;
  if (v17 >> 3 < v12)
  {
    v19 = v9 + (__len >> 3);
    *(a1 + 2) = v19;
    if (v15 == v8)
    {
      v20 = v46;
      v21 = v7 + v8;
      v22 = v48;
LABEL_34:
      if (v20 != v22)
      {
        memcpy(v16, v20, v22 - v20);
      }

      return v21;
    }

    v21 = v7 + v8;
    memcpy((v7 + 8 * v19 - 8 * v18), __srca, v17);
    if (v18 > 7)
    {
      if ((v7 + a2 - &v46[v6]) >= 0x20)
      {
        v40 = 8 * (v18 & 0xFFFFFFFFFFFFFFFCLL);
        v28 = &__srca[v40];
        v29 = (v17 >> 3) & 3;
        v20 = &v46[v40];
        v41 = (v46 + 16);
        v42 = (v8 + v7 + 16);
        v43 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v44 = *v41;
          *(v42 - 1) = *(v41 - 1);
          *v42 = v44;
          v41 += 2;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v22 = v48;
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    else
    {
      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    v22 = v48;
    do
    {
LABEL_33:
      v39 = *v20;
      v20 += 8;
      *v28 = v39;
      v28 += 8;
      --v29;
    }

    while (v29);
    goto LABEL_34;
  }

  v24 = 8 * v12;
  if (v12 + v9 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v12 + v9, 8);
    LODWORD(v9) = *(a1 + 2);
  }

  v25 = &v16[-v24];
  v21 = v7 + v8;
  if (v48 != v46)
  {
    v26 = (*a1 + 8 * v9);
    if (v24 - 8 < 0x38)
    {
      v27 = &v16[-v24];
      do
      {
LABEL_23:
        v37 = *v27;
        v27 += 8;
        *v26++ = v37;
      }

      while (v27 != v16);
      goto LABEL_24;
    }

    v30 = 8 * v9 + *a1;
    v27 = &v16[-v24];
    if ((v30 - v25) < 0x20)
    {
      goto LABEL_23;
    }

    v31 = ((v24 - 8) >> 3) + 1;
    v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
    v26 = (v26 + v32);
    v27 = &v25[v32];
    v33 = (v15 - v24 + v7 + 16);
    v34 = (v30 + 16);
    v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a1 + 2) = v9 + (v24 >> 3);
  if (v25 != __srca)
  {
    memmove(&__srca[v24], __srca, &v16[-v24] - __srca);
  }

  if (v48 == v46)
  {
    return v21;
  }

  return memmove(__srca, v46, __len);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = (37 * *a2) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == 0x8000000000000000;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, unsigned int a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v17 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, v5, &v17[v5]);

    llvm::deallocate_buffer(v5, v17);
  }

  v7 = &v18;
  if ((*(a1 + 8) - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v18 = *(a1 + 8);
    v7 = v19;
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_10;
    }
  }

  *v7++ = v8;
  v9 = *(a1 + 24);
  if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
LABEL_11:
    v10 = *(a1 + 32);
    if ((v10 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7++ = v10;
    if (a2 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7++ = v9;
  v10 = *(a1 + 32);
  if ((v10 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

LABEL_14:
  llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, &v18, v7);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v8 = 4;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 1);
  }

  memset_pattern16(v9, &unk_1A75DA410, 8 * v8);
LABEL_6:
  if (a2 != a3)
  {
    while (1)
    {
      v15 = *a2;
      if ((*a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        break;
      }

LABEL_14:
      if (++a2 == a3)
      {
        return;
      }
    }

    if (*a1)
    {
      v11 = 3;
      v10 = v7;
      v12 = (37 * v15) & 3;
      v13 = &v7[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = a1[4] - 1;
      v12 = v11 & (37 * v15);
      v13 = &v10[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
LABEL_13:
        *v13 = v15;
        *a1 += 2;
        goto LABEL_14;
      }
    }

    v16 = 0;
    v17 = 1;
    while (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 == 0x8000000000000000;
      }

      if (v18)
      {
        v16 = v13;
      }

      v19 = v12 + v17++;
      v12 = v19 & v11;
      v13 = &v10[2 * (v19 & v11)];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    goto LABEL_13;
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x8000000000000000;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t *a1, void *a2, void *a3)
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
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_1A75DA410, 8 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if ((*v14 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v18 = (37 * v17) & v13;
          v16 = &buffer[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000000000000000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {

    memset_pattern16(buffer, &unk_1A75DA410, 8 * v15);
  }
}

void mlir::getReassociationIndicesForCollapse(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45[4] = *MEMORY[0x1E69E9840];
  if (a2 <= a4)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  v43 = v45;
  v44 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, a4);
  }

  LODWORD(v9) = 0;
  v40 = v42;
  v41 = 0x200000000;
  while (1)
  {
    v10 = v44;
    if (a4 == v44)
    {
      break;
    }

    v11 = *(a3 + 8 * v44);
    v12 = v9;
    if (a2 <= v9)
    {
      v15 = 1;
LABEL_19:
      v18 = *(a1 + 8 * v12);
      if (v18 != 0x8000000000000000)
      {
LABEL_24:
        if (v11 == 0x8000000000000000)
        {
          goto LABEL_57;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = *(a1 + 8 * v12);
        v15 = v14 * v13;
        if (v14 == 0x8000000000000000 || v15 >= v11)
        {
          break;
        }

        v17 = v41;
        if (v41 >= HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 8);
          v17 = v41;
        }

        v9 = (v9 + 1);
        *(v40 + v17) = v12;
        LODWORD(v41) = v41 + 1;
        v12 = v9;
        v13 = v15;
        if (a2 <= v9)
        {
          goto LABEL_19;
        }
      }

      v15 = v13;
      v18 = *(a1 + 8 * v12);
      if (v18 != 0x8000000000000000)
      {
        goto LABEL_24;
      }
    }

    if (v11 != 0x8000000000000000 || v15 != 1)
    {
      goto LABEL_57;
    }

LABEL_25:
    if (v18 * v15 != v11)
    {
      goto LABEL_57;
    }

    v19 = v41;
    if (v41 >= HIDWORD(v41))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 8);
      v19 = v41;
    }

    *(v40 + v19) = v12;
    LODWORD(v41) = v41 + 1;
    __src = v39;
    v38 = 0x200000000;
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(&v43, &__src);
      v24 = __src;
      if (__src == v39)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v20 = (v43 + 32 * v44);
      *v20 = v20 + 2;
      v20[1] = 0x200000000;
      if (v20 != &__src)
      {
        v21 = v38;
        if (v38)
        {
          if (__src == v39)
          {
            v23 = v38;
            if (v38 < 3uLL || (llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v20 + 2, v38, 8), v23 = v38, v38))
            {
              memcpy(*v20, __src, 8 * v23);
            }

            *(v20 + 2) = v21;
          }

          else
          {
            *v20 = __src;
            v22 = HIDWORD(v38);
            *(v20 + 2) = v21;
            *(v20 + 3) = v22;
            __src = v39;
            HIDWORD(v38) = 0;
          }

          LODWORD(v38) = 0;
        }
      }

      LODWORD(v44) = v44 + 1;
      v24 = __src;
      if (__src == v39)
      {
        goto LABEL_5;
      }
    }

    free(v24);
LABEL_5:
    LODWORD(v9) = v9 + 1;
    llvm::SmallVectorImpl<long long>::swap(v43 + 8 * v44 - 8, &v40);
    if (a2 <= v9)
    {
      v10 = v44;
      break;
    }
  }

  if (a4 != v10)
  {
LABEL_57:
    *a5 = 0;
    *(a5 + 48) = 0;
    v31 = v40;
    if (v40 == v42)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v25 = v9;
  if (a2 > v9)
  {
    v26 = v9 + 1;
    while (1)
    {
      v27 = *(a1 + 8 * v25);
      if (v27 != 0x8000000000000000 && v27 != 1)
      {
        goto LABEL_57;
      }

      if (v44)
      {
        v29 = v43 + 32 * v44;
        v30 = *(v29 - 6);
        if (v30 >= *(v29 - 5))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v29 - 32), v29 - 16, v30 + 1, 8);
          v30 = *(v29 - 6);
        }

        *(*(v29 - 4) + 8 * v30) = v25;
        ++*(v29 - 6);
      }

      v25 = v26++;
      if (a2 <= v25)
      {
        LODWORD(v10) = v44;
        break;
      }
    }
  }

  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v43);
  }

  *(a5 + 48) = 1;
  v31 = v40;
  if (v40 != v42)
  {
LABEL_58:
    free(v31);
  }

LABEL_59:
  v32 = v43;
  if (v44)
  {
    v33 = v43 + 32 * v44 - 16;
    v34 = -32 * v44;
    do
    {
      v35 = *(v33 - 2);
      if (v33 != v35)
      {
        free(v35);
      }

      v33 -= 32;
      v34 += 32;
    }

    while (v34);
    v32 = v43;
  }

  if (v32 != v45)
  {
    free(v32);
  }
}

void mlir::composeReassociationIndices(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v43 = v45;
  v44 = 0x100000000;
  if (a2 == a4)
  {
    goto LABEL_43;
  }

  if (a2 < a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (a2 < a4)
  {
    v7 = a1;
  }

  else
  {
    v7 = a3;
  }

  if (a2 < a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (a2 < a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (!v6)
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x100000000;
    *(a5 + 48) = 1;
    return;
  }

  v10 = v7 + 32 * v6;
  v11 = 0;
  v12 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v16 = v7;
    do
    {
LABEL_22:
      v11 += *(v16 + 8);
      v16 += 32;
    }

    while (v16 != v10);
    goto LABEL_23;
  }

  v13 = 0;
  v14 = v12 + 1;
  v15 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
  v16 = v7 + 32 * v15;
  v17 = (v7 + 40);
  v18 = v15;
  do
  {
    v19 = *(v17 - 8);
    v20 = *v17;
    v17 += 16;
    v11 += v19;
    v13 += v20;
    v18 -= 2;
  }

  while (v18);
  v11 += v13;
  if (v14 != v15)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v9 != v11)
  {
LABEL_43:
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  do
  {
    v21 = *v7;
    v22 = *(v7 + 8);
    v40 = v42;
    v41 = 0x200000000;
    if (v22)
    {
      v23 = 0;
      v24 = 8 * v22;
      do
      {
        v25 = v8 + 32 * *v21;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v27 + v23;
        if (v28 > HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v28, 8);
          v23 = v41;
        }

        if (v27)
        {
          memcpy(v40 + 8 * v23, v26, 8 * v27);
          v23 = v41;
        }

        v23 += v27;
        LODWORD(v41) = v23;
        ++v21;
        v24 -= 8;
      }

      while (v24);
    }

    v29 = v43;
    if (v44 >= HIDWORD(v44))
    {
      if (v43 <= &v40 && v43 + 32 * v44 > &v40)
      {
        v32 = &v40 - v43;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, v44 + 1);
        v29 = v43;
        v30 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, v44 + 1);
        v30 = &v40;
        v29 = v43;
      }
    }

    else
    {
      v30 = &v40;
    }

    v31 = &v29[32 * v44];
    *v31 = v31 + 16;
    *(v31 + 1) = 0x200000000;
    if (*(v30 + 2))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(v31, v30);
    }

    LODWORD(v44) = v44 + 1;
    if (v40 != v42)
    {
      free(v40);
    }

    v7 += 32;
  }

  while (v7 != v10);
  v33 = v44;
  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v33)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v43);
    v34 = v44;
    *(a5 + 48) = 1;
    v35 = v43;
    if (!v34)
    {
      goto LABEL_53;
    }

    v36 = 32 * v34;
    v37 = v43 + v36 - 16;
    v38 = -v36;
    do
    {
      v39 = *(v37 - 2);
      if (v37 != v39)
      {
        free(v39);
      }

      v37 -= 32;
      v38 += 32;
    }

    while (v38);
  }

  else
  {
    *(a5 + 48) = 1;
  }

  v35 = v43;
LABEL_53:
  if (v35 != v45)
  {
    free(v35);
  }
}

void mlir::convertReassociationIndicesToExprs(mlir::MLIRContext *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[2] = *MEMORY[0x1E69E9840];
  *a4 = a4 + 16;
  *(a4 + 8) = 0x200000000;
  if (a3)
  {
    v5 = a2;
    v7 = &a2[4 * a3];
    do
    {
      v19 = v21;
      v20 = 0x200000000;
      v8 = *(v5 + 2);
      if (v8 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v8, 8);
        v8 = *(v5 + 2);
      }

      if (v8)
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          AffineDimExpr = mlir::getAffineDimExpr(*v9, a1, v8);
          v12 = v20;
          if (v20 >= HIDWORD(v20))
          {
            v13 = AffineDimExpr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
            AffineDimExpr = v13;
            v12 = v20;
          }

          *(v19 + v12) = AffineDimExpr;
          LODWORD(v20) = v20 + 1;
          v9 += 2;
          v10 -= 8;
        }

        while (v10);
      }

      v14 = *(a4 + 8);
      v15 = *a4;
      if (v14 >= *(a4 + 12))
      {
        if (v15 <= &v19 && v15 + 32 * v14 > &v19)
        {
          v18 = &v19 - v15;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a4, v14 + 1);
          v15 = *a4;
          v16 = &v18[*a4];
          goto LABEL_13;
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a4, v14 + 1);
        v15 = *a4;
      }

      v16 = &v19;
LABEL_13:
      v17 = (v15 + 32 * *(a4 + 8));
      *v17 = v17 + 2;
      v17[1] = 0x200000000;
      if (*(v16 + 2))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v17, v16);
      }

      ++*(a4 + 8);
      if (v19 != v21)
      {
        free(v19);
      }

      v5 += 4;
    }

    while (v5 != v7);
  }
}

uint64_t mlir::getReassociationIndicesAttribute(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x400000000;
  v6 = (32 * a3) >> 5;
  if (v6 < 5)
  {
    v7 = 0;
    v9 = 0;
    v8 = v17;
    v10 = 32 * a3;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_5:
    v11 = a2 + v10;
    v12 = &v8[2 * v7];
    do
    {
      *v12++ = mlir::Builder::getI64ArrayAttr(a1, *a2, *(a2 + 8));
      a2 += 32;
    }

    while (a2 != v11);
    v9 = v16;
    v8 = v15;
    goto LABEL_8;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
  v7 = v16;
  v8 = v15;
  v9 = v16;
  v10 = 32 * a3;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_8:
  LODWORD(v16) = v9 + (v10 >> 5);
  result = mlir::Builder::getArrayAttr(a1, v8, v16);
  if (v15 != v17)
  {
    v14 = result;
    free(v15);
    return v14;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(unsigned int *result, unint64_t a2)
{
  v3 = result[2];
  v4 = *result;
  if (v3 >= result[3])
  {
    v11 = a2;
    if (v4 <= a2 && v4 + 32 * v3 > a2)
    {
      v13 = a2 - v4;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(result, v3 + 1);
      v4 = *result;
      a2 = *result + v13;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(result, v3 + 1);
      v4 = *result;
      a2 = v11;
    }
  }

  v5 = (v4 + 32 * result[2]);
  v6 = v5 + 2;
  *v5 = v5 + 2;
  v5[1] = 0x200000000;
  v7 = *(a2 + 8);
  if (v5 != a2 && v7 != 0)
  {
    if (v7 < 3)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v9 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 2, v7, 8);
      v10 = *(v9 + 8);
      if (!v10)
      {
LABEL_11:
        *(v5 + 2) = v7;
        goto LABEL_12;
      }

      a2 = v9;
      v6 = *v5;
    }

    memcpy(v6, *a2, 8 * v10);
    goto LABEL_11;
  }

LABEL_12:
  ++result[2];
}

uint64_t mlir::getSymbolLessAffineMaps@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = 0;
  if (a2)
  {
    v5 = result;
    v6 = result + 32 * a2;
    v7 = result;
    do
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *v7;
        v10 = 8 * v8;
        do
        {
          v11 = *v9++;
          v18 = &v19;
          mlir::AffineExpr::walk<void>(v11, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>, &v18);
          v10 -= 8;
        }

        while (v10);
      }

      v7 += 32;
    }

    while (v7 != v6);
    v12 = v19;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), a2, 8);
    }

    do
    {
      v14 = *v5;
      v15 = *(v5 + 8);
      Context = mlir::AffineExpr::getContext(*v5);
      result = mlir::AffineMap::get(v12 + 1, 0, v14, v15, Context);
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        v13 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 8);
        result = v13;
        v17 = *(a3 + 8);
      }

      *(*a3 + 8 * v17) = result;
      ++*(a3 + 8);
      v5 += 32;
    }

    while (v5 != v6);
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
  }

  return result;
}

uint64_t mlir::isReassociationValid(mlir::AffineMap *a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a1;
  NumDims = mlir::AffineMap::getNumDims(a1);
  v7 = 0;
  v8 = 0;
  v9 = (v5 + 8 * a2);
  do
  {
    v17 = *v5;
    if (mlir::AffineMap::getNumDims(&v17) != NumDims || mlir::AffineMap::getNumSymbols(&v17))
    {
      goto LABEL_15;
    }

    Results = mlir::AffineMap::getResults(&v17);
    if (v11)
    {
      v12 = Results;
      v13 = 8 * v11;
      while (1)
      {
        v14 = *v12;
        v18 = *v12;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 6)
        {
          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, v14);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        else
        {
          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, 0);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        if (v7 != mlir::AffineDimExpr::getPosition(&v16))
        {
          break;
        }

        ++v7;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_3;
        }
      }

LABEL_15:
      if (a3)
      {
        *a3 = v8;
      }

      return 0;
    }

LABEL_3:
    ++v8;
    v5 = (v5 + 8);
  }

  while (v5 != v9);
  if (v7 == NumDims)
  {
    return 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = a2 - 1;
  }

  return result;
}

uint64_t mlir::reshapeLikeShapesAreCompatible(uint64_t (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a7 + 32 * a8;
  while (1)
  {
    v27 = 1;
    v11 = *(a7 + 8);
    v12 = 1;
    if (!v11)
    {
      break;
    }

    v13 = 0;
    v14 = (a5 + 8 * v8);
    v15 = &v14[v11];
    v12 = 1;
    do
    {
      while (*v14 == 0x8000000000000000)
      {
        ++v14;
        v13 = 1;
        if (v14 == v15)
        {
          goto LABEL_13;
        }
      }

      v12 *= *v14;
      v27 = v12;
      ++v14;
    }

    while (v14 != v15);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_13:
    if (*(a3 + 8 * v9) != 0x8000000000000000)
    {
      v19[0] = v9;
      v21[0] = "expected dimension ";
      v22 = v19;
      v23 = 2819;
      v24 = v21;
      v25 = " of collapsed type to be dynamic since one or more of the corresponding dimensions in the expanded type is dynamic";
      v16 = 770;
      goto LABEL_18;
    }

LABEL_4:
    v8 += v11;
    ++v9;
    a7 += 32;
    if (a7 == v10)
    {
      return 1;
    }
  }

  if (*(a3 + 8 * v9) == v12)
  {
    goto LABEL_4;
  }

  v18 = v9;
  v19[0] = "expected dimension ";
  v19[2] = &v18;
  v20 = 2819;
  v21[0] = v19;
  v22 = " of collapsed type to be static value of ";
  v23 = 770;
  v24 = v21;
  v25 = &v27;
  v16 = 3586;
LABEL_18:
  v26 = v16;
  return a1(a2, &v24);
}

uint64_t mlir::hasNonIdentityLayout(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (!v1)
  {
    return 0;
  }

  v4[0] = mlir::DenseElementsAttr::getRawStringData(&v5);
  v4[1] = v2;
  return mlir::ElementsAttr::isSplat(v4) ^ 1;
}

char **llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = 4 * v7;
        v9 = &v6[v8 - 2];
        v10 = -(v8 * 8);
        do
        {
          v11 = *(v9 - 16);
          if (v9 != v11)
          {
            free(v11);
          }

          v9 -= 32;
          v10 += 32;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != a1 + 2)
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = (a2 + 1);
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = (a2 + 1);
    v14 = *(a2 + 2);
    v15 = *(a1 + 2);
    if (v15 < v14)
    {
      if (*(a1 + 3) >= v14)
      {
        if (!v15)
        {
          v15 = 0;
          v24 = *a2;
          v25 = *(a2 + 2);
          if (*(a2 + 2))
          {
LABEL_32:
            v26 = *a1;
            v27 = 32 * v15;
            v28 = 32 * v25;
            do
            {
              v29 = &v26[v27 / 8];
              *v29 = &v26[v27 / 8 + 2];
              v29[1] = 0x200000000;
              if (*&v24[v27 + 8])
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(v29, &v24[v27]);
              }

              v26 += 4;
              v28 -= 32;
              v24 += 32;
            }

            while (v27 != v28);
            v24 = *a2;
          }

LABEL_37:
          *(a1 + 2) = v14;
          v30 = *v12;
          if (v30)
          {
            v31 = 32 * v30;
            v32 = &v24[v31 - 16];
            v33 = -v31;
            do
            {
              v34 = *(v32 - 16);
              if (v32 != v34)
              {
                free(v34);
              }

              v32 -= 32;
              v33 += 32;
            }

            while (v33);
          }

          goto LABEL_12;
        }

        v22 = *a1;
        v23 = 32 * v15;
        do
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v22, v5);
          v5 += 32;
          v22 += 32;
          v23 -= 32;
        }

        while (v23);
      }

      else
      {
        if (v15)
        {
          v16 = &(*a1)[32 * v15 - 16];
          v17 = -32 * v15;
          do
          {
            v18 = *(v16 - 2);
            if (v16 != v18)
            {
              free(v18);
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(a1 + 2) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v14);
        v15 = 0;
      }

      v24 = *a2;
      v25 = *(a2 + 2);
      if (v15 != v25)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    v19 = *a1;
    if (v14)
    {
      v20 = 32 * v14;
      do
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v19, v5);
        v5 += 32;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      v21 = &(*a1)[32 * *(a1 + 2)];
      if (v21 == v19)
      {
LABEL_47:
        *(a1 + 2) = v14;
        v38 = *(a2 + 2);
        if (v38)
        {
          v39 = 32 * v38;
          v40 = &(*a2)[v39 - 16];
          v41 = -v39;
          do
          {
            v42 = *(v40 - 2);
            if (v40 != v42)
            {
              free(v42);
            }

            v40 -= 4;
            v41 += 32;
          }

          while (v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = (v19 + 32 * v15);
      if (v21 == v19)
      {
        goto LABEL_47;
      }
    }

    v35 = v21 - 16;
    do
    {
      v37 = *(v35 - 2);
      if (v35 != v37)
      {
        free(v37);
      }

      v36 = v35 - 16;
      v35 -= 32;
    }

    while (v36 != v19);
    goto LABEL_47;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(uint64_t *a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 32, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x200000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v9, v6);
      }

      v9 += 4;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = v11 + v6 - 16;
      v13 = -v11;
      do
      {
        v14 = *(v12 - 16);
        if (v12 != v14)
        {
          free(v14);
        }

        v12 -= 32;
        v13 += 32;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 3) = v15;
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(uint64_t *a1, uint64_t a2)
{
  v21 = 0;
  v4 = a1 + 2;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 32, &v21);
  v6 = a2;
  v7 = v5;
  v8 = &v5[32 * *(a1 + 2)];
  *v8 = v8 + 16;
  *(v8 + 1) = 0x200000000;
  if (*(v6 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(v8, v6);
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = 32 * v10;
    v12 = v7;
    do
    {
      *v12 = v12 + 2;
      v12[1] = 0x200000000;
      if (*(v9 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v12, v9);
      }

      v12 += 4;
      v9 += 32;
      v11 -= 32;
    }

    while (v11);
    v9 = *a1;
    v13 = *(a1 + 2);
    if (v13)
    {
      v14 = 32 * v13;
      v15 = v14 + v9 - 16;
      v16 = -v14;
      do
      {
        v17 = *(v15 - 16);
        if (v15 != v17)
        {
          free(v17);
        }

        v15 -= 32;
        v16 += 32;
      }

      while (v16);
      v9 = *a1;
    }
  }

  v18 = v21;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v7;
  v19 = (*(a1 + 2) + 1);
  *(a1 + 2) = v19;
  *(a1 + 3) = v18;
  return &v7[4 * v19 - 4];
}

void llvm::SmallVectorImpl<long long>::swap(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v4 = *result;
    if (*result != result + 4 && *a2 != a2 + 4)
    {
      *result = *a2;
      *a2 = v4;
      v5 = result[2];
      result[2] = a2[2];
      a2[2] = v5;
      v6 = result[3];
      result[3] = a2[3];
      a2[3] = v6;
      return;
    }

    v7 = a2[2];
    if (result[3] < v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v7, 8);
      v8 = result[2];
      if (a2[3] >= v8)
      {
LABEL_7:
        v9 = v8;
        v10 = a2[2];
        if (v8 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (!v11)
        {
          goto LABEL_30;
        }

LABEL_17:
        v13 = *result;
        v14 = *a2;
        if (v11 > 3 && (v13 < v14 + 8 * v11 ? (v15 = v14 >= v13 + 8 * v11) : (v15 = 1), v15))
        {
          v16 = v11 & 0xFFFFFFFC;
          v17 = (v13 + 16);
          v18 = (v14 + 16);
          v19 = v16;
          do
          {
            v20 = *(v17 - 1);
            v21 = *v17;
            v22 = *v18;
            *(v17 - 1) = *(v18 - 1);
            *v17 = v22;
            *(v18 - 1) = v20;
            *v18 = v21;
            v17 += 2;
            v18 += 2;
            v19 -= 4;
          }

          while (v19);
          if (v16 == v11)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v16 = 0;
        }

        v23 = v11 - v16;
        v24 = 8 * v16;
        v25 = (v13 + v24);
        v26 = (v14 + v24);
        do
        {
          v27 = *v25;
          *v25++ = *v26;
          *v26++ = v27;
          --v23;
        }

        while (v23);
LABEL_30:
        if (v10 >= v9)
        {
          if (v10 > v9)
          {
            v29 = v10 - v9;
            memcpy((*result + 8 * v9), (*a2 + 8 * v11), 8 * (v10 - v11));
            result[2] += v29;
            a2[2] = v11;
          }
        }

        else
        {
          v28 = v9 - v10;
          memcpy((*a2 + 8 * v10), (*result + 8 * v11), 8 * (v9 - v11));
          a2[2] += v28;
          result[2] = v11;
        }

        return;
      }
    }

    else
    {
      v8 = result[2];
      if (a2[3] >= v8)
      {
        goto LABEL_7;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v8, 8);
    v12 = result[2];
    v9 = v12;
    v10 = a2[2];
    if (v12 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v12;
    }

    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(uint64_t *a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 32, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x200000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, v6);
      }

      v9 += 4;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = v11 + v6 - 16;
      v13 = -v11;
      do
      {
        v14 = *(v12 - 16);
        if (v12 != v14)
        {
          free(v14);
        }

        v12 -= 32;
        v13 += 32;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 3) = v15;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>(int **a1, uint64_t a2)
{
  v7 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, a2);
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, 0);
    if (!v7)
    {
      return result;
    }
  }

  v5 = *a1;
  result = mlir::AffineDimExpr::getPosition(&v7);
  v6 = *v5;
  if (*v5 <= result)
  {
    v6 = result;
  }

  **a1 = v6;
  return result;
}

void mlir::clone(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 24);
  v13 = *(a2 + 48);
  v19[0] = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::ArrayAttr::getValue(v19);
  v16 = v15;
  mlir::BlockRange::BlockRange(v18, 0, 0);
  mlir::OperationState::OperationState(v19, v12, v13, a5, a6, a3, a4, v17, Value, v16, v18[0], v18[1], 0, 0);
  if ((*(a2 + 44) & 0x7FFFFF) != 0)
  {
    mlir::OperationState::addRegion(v19);
  }

  mlir::OpBuilder::create(a1, v19);
  mlir::OperationState::~OperationState(v19);
  llvm::deallocate_buffer(0, 0);
}

void mlir::getPrunedAttributeList(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<X3>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0x800000000;
  if (a3)
  {
    v7 = a2;
    v8 = a2 + 16 * a3;
    do
    {
      v9 = *v7;
      v10 = *(v7 + 8);
      v7 += 16;
      v11 = llvm::StringMapImpl::hash(v9, v10, a3, a5);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(&v31, v9, v10, v11);
    }

    while (v7 != v8);
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x300000000;
  *&v30 = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&v30);
  if (v13)
  {
    v14 = Value;
    v15 = 16 * v13;
    do
    {
      v30 = *v14;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v30);
      AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      v20 = v19;
      v23 = llvm::StringMapImpl::hash(AttrData, v19, v21, v22);
      Key = llvm::StringMapImpl::FindKey(&v31, AttrData, v20, v23);
      if (Key == -1 || Key == v32)
      {
        v16 = v30;
        v17 = *(a4 + 8);
        if (v17 >= *(a4 + 12))
        {
          v28 = v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v17 + 1, 16);
          v16 = v28;
          v17 = *(a4 + 8);
        }

        *(*a4 + 16 * v17) = v16;
        ++*(a4 + 8);
      }

      ++v14;
      v15 -= 16;
    }

    while (v15);
  }

  if (HIDWORD(v32) && v32)
  {
    v25 = 0;
    do
    {
      v26 = *(v31 + v25);
      if (v26 != -8 && v26 != 0)
      {
        llvm::deallocate_buffer(v26, (*v26 + 9));
      }

      v25 += 8;
    }

    while (8 * v32 != v25);
  }

  free(v31);
}

BOOL mlir::isZeroIndex(unint64_t a1, uint64_t a2)
{
  if (a1 < 8)
  {
    return 0;
  }

  v2 = mlir::getConstantIntValue(a1) == 0;
  return (v3 & 1) != 0 && v2;
}

unint64_t mlir::getConstantIntValue(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v1)
  {
    v12 = 1;
    v13 = 0;
    v10 = &v11;
    v11 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFFF8;
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    if (DefiningOp)
    {
      v15 = &v16;
      v16 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v15, DefiningOp))
      {
        v3 = *(*(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v5 = v4 || v3 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        v6 = v5 || v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
        if (v6 && mlir::detail::constant_int_value_binder::match(&v10, v16))
        {
          if (v12 > 0x40)
          {
            DefiningOp = *v11;
          }

          else if (v12)
          {
            DefiningOp = (v11 << -v12) >> -v12;
          }

          else
          {
            DefiningOp = 0;
          }

          v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
          if (v12 < 0x41)
          {
            return v8 | DefiningOp;
          }

LABEL_29:
          if (v11)
          {
            MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
          }

          return v8 | DefiningOp;
        }
      }

      LOBYTE(DefiningOp) = 0;
    }

    v8 = 0;
    if (v12 < 0x41)
    {
      return v8 | DefiningOp;
    }

    goto LABEL_29;
  }

  if (!v1 || (a1 & 4) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(*v1 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v1 = 0;
  }

  v16 = v1;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    mlir::IntegerAttr::getValue(&v16, &v11);
    if (v12 > 0x40)
    {
      DefiningOp = *v11;
      MEMORY[0x1AC55A040]();
    }

    else if (v12)
    {
      DefiningOp = (v11 << -v12) >> -v12;
    }

    else
    {
      DefiningOp = 0;
    }

    v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_26:
    LOBYTE(DefiningOp) = 0;
    v8 = 0;
  }

  return v8 | DefiningOp;
}

void mlir::dispatchIndexOpFoldResult(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result & 0xFFFFFFFFFFFFFFF8;
  if ((result & 4) != 0 && v4)
  {
    v5 = *(a2 + 8);
    if (v5 >= *(a2 + 12))
    {
      v9 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v5 + 1, 8);
      a2 = v9;
      LODWORD(v5) = *(v9 + 8);
    }

    *(*a2 + 8 * v5) = v4;
    ++*(a2 + 8);
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v6 + 1, 8);
      LODWORD(v6) = *(a3 + 8);
    }

    *(*a3 + 8 * v6) = 0x8000000000000000;
    ++*(a3 + 8);
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFFFF8;
    mlir::IntegerAttr::getValue(&v10, &v11);
    if (v12 > 0x40)
    {
      v7 = *v11;
    }

    else if (v12)
    {
      v7 = (v11 << -v12) >> -v12;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a3 + 8);
    if (v8 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8 + 1, 8);
      LODWORD(v8) = *(a3 + 8);
    }

    *(*a3 + 8 * v8) = v7;
    ++*(a3 + 8);
    if (v12 >= 0x41 && v11)
    {
      MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }
}

void mlir::dispatchIndexOpFoldResults(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 8 * a2;
    do
    {
      v8 = *result++;
      mlir::dispatchIndexOpFoldResult(v8, a3, a4);
      v7 -= 8;
    }

    while (v7);
  }
}

unint64_t mlir::getAsOpFoldResult(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = &v4;
    v4 = 0;
    v5 = result;
    DefiningOp = mlir::Value::getDefiningOp(&v5);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::Attribute>::match(&v3, DefiningOp))
    {
      return v4 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return v1 | 4;
    }
  }

  return result;
}

uint64_t mlir::getAsOpFoldResult@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v17 = *MEMORY[0x1E69E9840];
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (a2 < 7)
  {
    v15 = result;
    v16 = xmmword_1A75A2970;
    if (!a2)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, a2, 8);
    v6 = *(a3 + 2);
    v15 = v4;
    v16 = xmmword_1A75A2970;
  }

  v7 = 0;
  v8 = (*a3 + 8 * v6);
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v15, v7);
    if (result)
    {
      v10 = result;
      v12 = &v13;
      v13 = 0;
      v14 = result;
      result = mlir::Value::getDefiningOp(&v14);
      if (result && (result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result), result))
      {
        v9 = v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v9 = v10 | 4;
      }
    }

    else
    {
      v9 = 0;
    }

    *v8++ = v9;
    v7 = v16 + 1;
    *&v16 = v7;
  }

  while (v7 != a2);
  v11 = *(a3 + 2);
LABEL_14:
  *(a3 + 2) = v11 + a2;
  return result;
}

BOOL mlir::isEqualConstantIntOrValue(uint64_t a1, uint64_t a2)
{
  ConstantIntValue = mlir::getConstantIntValue(a1);
  v6 = v5;
  v7 = mlir::getConstantIntValue(a2);
  if ((v6 & 1) != 0 && (v8 & 1) != 0 && ConstantIntValue == v7)
  {
    return 1;
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFFF8) != 0 && (a1 & 0xFFFFFFFFFFFFFFF8) == (a2 & (a2 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8);
  return (a1 & 4) != 0 && v10;
}

void mlir::getMixedValues(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v7) = a2;
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a3;
  v16[1] = a4;
  v10 = (a6 + 16);
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, a2, 8);
  }

  v7 = v7;
  if (v7)
  {
    v11 = 0;
    do
    {
      v13 = *result++;
      v12 = v13;
      if (v13 == 0x8000000000000000)
      {
        v14 = mlir::ValueRange::dereference_iterator(v16, v11++) | 4;
      }

      else
      {
        v14 = mlir::Builder::getI64IntegerAttr(a5, v12) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v15 = *(a6 + 8);
      if (v15 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, v15 + 1, 8);
        v15 = *(a6 + 8);
      }

      *(*a6 + 8 * v15) = v14;
      ++*(a6 + 8);
      --v7;
    }

    while (v7);
  }
}

void mlir::decomposeMixedValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[6] = *MEMORY[0x1E69E9840];
  __src = v24;
  v23 = 0x600000000;
  v19 = v21;
  v20 = 0x600000000;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      while ((*v4 & 4) != 0)
      {
        v9 = v23;
        if (v23 >= HIDWORD(v23))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v23 + 1, 8);
          v9 = v23;
        }

        *(__src + v9) = 0x8000000000000000;
        LODWORD(v23) = v23 + 1;
        v10 = *v4;
        v11 = v20;
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
          v11 = v20;
        }

        *(v19 + v11) = v10 & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v20) = v20 + 1;
        ++v4;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v18 = *v4 & 0xFFFFFFFFFFFFFFF8;
      Int = mlir::IntegerAttr::getInt(&v18);
      v7 = v23;
      if (v23 >= HIDWORD(v23))
      {
        v8 = Int;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v23 + 1, 8);
        Int = v8;
        v7 = v23;
      }

      *(__src + v7) = Int;
      LODWORD(v23) = v23 + 1;
      ++v4;
      v5 -= 8;
    }

    while (v5);
LABEL_12:
    v12 = v23;
    v13 = (a2 + 16);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (&__src != a2 && v12)
    {
      if (v12 < 7)
      {
        v14 = v12;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v12, 8);
        v14 = v23;
        if (!v23)
        {
LABEL_20:
          *(a2 + 8) = v12;
          goto LABEL_21;
        }

        v13 = *a2;
      }

      memcpy(v13, __src, 8 * v14);
      goto LABEL_20;
    }
  }

  else
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
  }

LABEL_21:
  v15 = (a2 + 80);
  *(a2 + 64) = a2 + 80;
  *(a2 + 72) = 0x600000000;
  if ((a2 + 64) != &v19)
  {
    v16 = v20;
    if (v20)
    {
      if (v20 < 7)
      {
        v17 = v20;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v20, 8);
        v17 = v20;
        if (!v20)
        {
LABEL_28:
          *(a2 + 72) = v16;
          goto LABEL_29;
        }

        v15 = *(a2 + 64);
      }

      memcpy(v15, v19, 8 * v17);
      goto LABEL_28;
    }
  }

LABEL_29:
  if (v19 != v21)
  {
    free(v19);
  }

  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::constantTripCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = ConstantIntValue;
  v9 = mlir::getConstantIntValue(a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = mlir::getConstantIntValue(a3);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v11 - v8;
  if (v11 != v8)
  {
    if ((v12 ^ v14) < 0)
    {
      v14 /= v12;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v14 - 1;
      }

      return v15 / v12 + 1;
    }
  }

  return v14;
}

BOOL mlir::hasValidSizesOffsets(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 < 0x8000000000000001;
    v6 = v4 > 0x8000000000000000 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

BOOL mlir::hasValidStrides(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::foldDynamicIndexList(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 0;
    v6 = 8 * v3;
    if (a2)
    {
      if (a3)
      {
        do
        {
          v7 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v7 & 0xFFFFFFFFFFFFFFF8;
            DefiningOp = mlir::Value::getDefiningOp(&v18);
            if (DefiningOp)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, DefiningOp) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0 && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        do
        {
          v9 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v9 & 0xFFFFFFFFFFFFFFF8;
            v10 = mlir::Value::getDefiningOp(&v18);
            if (v10)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v10) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }
    }

    else if (a3)
    {
      do
      {
        v12 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v12 & 0xFFFFFFFFFFFFFFF8;
          v13 = mlir::Value::getDefiningOp(&v18);
          if (v13)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v13) && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }

    else
    {
      do
      {
        v14 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v14 & 0xFFFFFFFFFFFFFFF8;
          v15 = mlir::Value::getDefiningOp(&v18);
          if (v15)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v15))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::foldDynamicOffsetSizeList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && (mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t mlir::foldDynamicStrideList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL))
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void mlir::func::FuncDialect::FuncDialect(mlir::func::FuncDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "func", 4, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id);
  *v2 = &unk_1F19FBA20;
  mlir::func::FuncDialect::initialize(v2);
}

void sub_1A6B6D650()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

ZinIrHalH13g *mlir::func::FuncDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v13 = v5;
  if (!v5)
  {
    return 0;
  }

  mlir::OpaqueAttr::getAttrData(&v13);
  if (v10 || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 0;
  }

  v13 = a3;
  return mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(a2, a5, &v12, &v13);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::func::ConstantOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

BOOL mlir::func::CallOp::verifySymbolUses(mlir::OpState *a1, uint64_t a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*(*a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*a1, "callee", 6), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v4 + 56, "callee", 6uLL);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (v112 = v7) == 0))
  {
    v107 = 0;
    goto LABEL_39;
  }

  v8 = InherentAttr;
  mlir::OpaqueAttr::getAttrData(&v112);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v107 = v10;
  if (!v10)
  {
LABEL_39:
    Value = "requires a 'callee' symbol reference attribute";
    v111 = 259;
    mlir::OpState::emitOpError(a1, &Value, &v112);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
    if (v112)
    {
      mlir::InFlightDiagnostic::report(&v112);
    }

    if (v123 == 1)
    {
      if (v122 != &v123)
      {
        free(v122);
      }

      v31 = v120;
      if (v120)
      {
        v32 = v121;
        v33 = v120;
        if (v121 != v120)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = v120;
        }

        v121 = v31;
        operator delete(v33);
      }

      v26 = v118;
      if (!v118)
      {
        goto LABEL_139;
      }

      v34 = v119;
      v28 = v118;
      if (v119 == v118)
      {
        goto LABEL_138;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v26);
      goto LABEL_137;
    }

    return v22;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *a1, v10);
  if (!v11 || *(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v106 = 257;
    mlir::OpState::emitOpError(a1, &v103, &v112);
    if (v112)
    {
      LODWORD(Value) = 3;
      v109 = "'";
      v110 = 1;
      v12 = &Value;
      v13 = v114;
      if (v115 >= v116)
      {
        if (v114 <= &Value && &v114[3 * v115] > &Value)
        {
          v94 = &Value - v114;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v13 = v114;
          v12 = (v114 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v12 = &Value;
          v13 = v114;
        }
      }

      v14 = &v13[3 * v115];
      v15 = *v12;
      v14[2] = v12[2];
      *v14 = v15;
      ++v115;
    }

    Value = mlir::AffineMapAttr::getValue(&v107);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    if (v112)
    {
      v111 = 261;
      Value = AttrData;
      v109 = v17;
      mlir::Diagnostic::operator<<(v113, &Value);
      if (v112)
      {
        LODWORD(Value) = 3;
        v109 = "' does not reference a valid function";
        v110 = 37;
        p_Value = &Value;
        v19 = v114;
        if (v115 >= v116)
        {
          if (v114 <= &Value && &v114[3 * v115] > &Value)
          {
            v95 = &Value - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v19 = v114;
            p_Value = (v114 + v95);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            p_Value = &Value;
            v19 = v114;
          }
        }

        v20 = &v19[3 * v115];
        v21 = *p_Value;
        v20[2] = p_Value[2];
        *v20 = v21;
        ++v115;
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
    if (v112)
    {
      mlir::InFlightDiagnostic::report(&v112);
    }

    if (v123 == 1)
    {
      if (v122 != &v123)
      {
        free(v122);
      }

      v23 = v120;
      if (v120)
      {
        v24 = v121;
        v25 = v120;
        if (v121 != v120)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = v120;
        }

        v121 = v23;
        operator delete(v25);
      }

      v26 = v118;
      if (!v118)
      {
        goto LABEL_139;
      }

      v27 = v119;
      v28 = v118;
      if (v119 == v118)
      {
LABEL_138:
        v119 = v26;
        operator delete(v28);
LABEL_139:
        if (v114 != v117)
        {
          free(v114);
        }

        return v22;
      }

      do
      {
        v30 = *--v27;
        v29 = v30;
        *v27 = 0;
        if (v30)
        {
          MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
        }
      }

      while (v27 != v26);
LABEL_137:
      v28 = v118;
      goto LABEL_138;
    }

    return v22;
  }

  v112 = *(v11 + 16 * ((*(v11 + 44) >> 23) & 1) + 72);
  v102 = mlir::AffineMapAttr::getValue(&v112);
  v37 = mlir::arith::FastMathFlagsAttr::getValue(&v102);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    if (v37 == *(*a1 + 68))
    {
      goto LABEL_57;
    }

LABEL_121:
    Value = "incorrect number of operands for callee";
    v111 = 259;
    mlir::OpState::emitOpError(a1, &Value, &v112);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
    if (v112)
    {
      mlir::InFlightDiagnostic::report(&v112);
    }

    if (v123 == 1)
    {
      if (v122 != &v123)
      {
        free(v122);
      }

      v87 = v120;
      if (v120)
      {
        v88 = v121;
        v89 = v120;
        if (v121 != v120)
        {
          do
          {
            v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
          }

          while (v88 != v87);
          v89 = v120;
        }

        v121 = v87;
        operator delete(v89);
      }

      v26 = v118;
      if (!v118)
      {
        goto LABEL_139;
      }

      v90 = v119;
      v28 = v118;
      if (v119 == v118)
      {
        goto LABEL_138;
      }

      do
      {
        v92 = *--v90;
        v91 = v92;
        *v90 = 0;
        if (v92)
        {
          MEMORY[0x1AC55A040](v91, 0x1000C8077774924);
        }
      }

      while (v90 != v26);
      goto LABEL_137;
    }

    return v22;
  }

  if (v37)
  {
    goto LABEL_121;
  }

LABEL_57:
  v38 = mlir::arith::FastMathFlagsAttr::getValue(&v102);
  if (!v38)
  {
LABEL_61:
    if (mlir::FunctionType::getNumResults(&v102) != *(*a1 + 36))
    {
      Value = "incorrect number of results for callee";
      v111 = 259;
      mlir::OpState::emitOpError(a1, &Value, &v112);
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
      if (v112)
      {
        mlir::InFlightDiagnostic::report(&v112);
      }

      if (v123 == 1)
      {
        mlir::Diagnostic::~Diagnostic(v113);
      }

      return v22;
    }

    v101 = 0;
    NumResults = mlir::FunctionType::getNumResults(&v102);
    if (!NumResults)
    {
      return 1;
    }

    v44 = NumResults;
    v45 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    if (*mlir::FunctionType::getResults(&v102) != v45)
    {
      goto LABEL_64;
    }

    v101 = 1;
    if (v44 == 1)
    {
      return 1;
    }

    v78 = *(*a1 - 24) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getResults(&v102) + 8) == v78)
    {
      v101 = 2;
      if (v44 == 2)
      {
        return 1;
      }

      v79 = *(*a1 - 40) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::FunctionType::getResults(&v102) + 16) == v79)
      {
        v101 = 3;
        if (v44 == 3)
        {
          return 1;
        }

        v80 = *(*a1 - 56) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&v102) + 24) == v80)
        {
          v101 = 4;
          if (v44 == 4)
          {
            return 1;
          }

          v81 = *(*a1 - 72) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&v102) + 32) == v81)
          {
            v101 = 5;
            if (v44 == 5)
            {
              return 1;
            }

            v82 = *(*a1 - 88) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&v102) + 40) == v82)
            {
              v101 = 6;
              if (v44 == 6)
              {
                return 1;
              }

              v83 = 6;
              while (1)
              {
                v84 = v83 + 1;
                v85 = *a1 - 16 * (v83 + 1);
                if (v83 > 5)
                {
                  v85 = *a1 - 24 * (v83 - 5) - 96;
                }

                v86 = *(v85 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&v102) + 8 * v83) != v86)
                {
                  break;
                }

                v101 = ++v83;
                if (v44 == v84)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }

LABEL_64:
    v103 = "result type mismatch at index ";
    v106 = 259;
    mlir::OpState::emitOpError(a1, &v103, &Value);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&Value, &v101);
    mlir::InFlightDiagnostic::InFlightDiagnostic(&v112, v46);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    mlir::Diagnostic::attachNote(v113, 0, 0);
  }

  v39 = 0;
  v40 = v38;
  v41 = 24;
  while (1)
  {
    v42 = *(*(*(*a1 + 72) + v41) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&v102) + 8 * v39) != v42)
    {
      break;
    }

    ++v39;
    v41 += 32;
    if (v40 == v39)
    {
      goto LABEL_61;
    }
  }

  Value = "operand type mismatch: expected operand type ";
  v111 = 259;
  mlir::OpState::emitOpError(a1, &Value, &v112);
  Inputs = mlir::FunctionType::getInputs(&v102);
  if (v112)
  {
    v48 = &v103;
    mlir::DiagnosticArgument::DiagnosticArgument(&v103, *(Inputs + 8 * v39));
    v49 = v114;
    if (v115 >= v116)
    {
      if (v114 <= &v103 && &v114[3 * v115] > &v103)
      {
        v96 = &v103 - v114;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
        v49 = v114;
        v48 = (v114 + v96);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
        v48 = &v103;
        v49 = v114;
      }
    }

    v50 = &v49[3 * v115];
    v51 = *v48;
    v50[2] = v48[2];
    *v50 = v51;
    v52 = ++v115;
    if (v112)
    {
      LODWORD(v103) = 3;
      v104 = ", but provided ";
      v105 = 15;
      v53 = &v103;
      v54 = v114;
      if (v52 >= v116)
      {
        if (v114 <= &v103 && &v114[3 * v52] > &v103)
        {
          v97 = &v103 - v114;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v52 + 1, 24);
          v54 = v114;
          v53 = (v114 + v97);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v52 + 1, 24);
          v53 = &v103;
          v54 = v114;
        }
      }

      v55 = &v54[3 * v115];
      v56 = *v53;
      v55[2] = v53[2];
      *v55 = v56;
      ++v115;
      if (v112)
      {
        v57 = *(*(*(*a1 + 72) + v41) + 8);
        v58 = &v103;
        mlir::DiagnosticArgument::DiagnosticArgument(&v103, v57 & 0xFFFFFFFFFFFFFFF8);
        v59 = v114;
        if (v115 >= v116)
        {
          if (v114 <= &v103 && &v114[3 * v115] > &v103)
          {
            v98 = &v103 - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v59 = v114;
            v58 = (v114 + v98);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v58 = &v103;
            v59 = v114;
          }
        }

        v60 = &v59[3 * v115];
        v61 = *v58;
        v60[2] = v58[2];
        *v60 = v61;
        v62 = ++v115;
        if (v112)
        {
          LODWORD(v103) = 3;
          v104 = " for operand number ";
          v105 = 20;
          v63 = &v103;
          v64 = v114;
          if (v62 >= v116)
          {
            if (v114 <= &v103 && &v114[3 * v62] > &v103)
            {
              v99 = &v103 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v62 + 1, 24);
              v64 = v114;
              v63 = (v114 + v99);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v62 + 1, 24);
              v63 = &v103;
              v64 = v114;
            }
          }

          v65 = &v64[3 * v115];
          v66 = *v63;
          v65[2] = v63[2];
          *v65 = v66;
          v67 = ++v115;
          if (v112)
          {
            LODWORD(v103) = 5;
            v104 = v39;
            v68 = &v103;
            v69 = v114;
            if (v67 >= v116)
            {
              if (v114 <= &v103 && &v114[3 * v67] > &v103)
              {
                v100 = &v103 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v67 + 1, 24);
                v69 = v114;
                v68 = (v114 + v100);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v67 + 1, 24);
                v68 = &v103;
                v69 = v114;
              }
            }

            v70 = &v69[3 * v115];
            v71 = *v68;
            v70[2] = v68[2];
            *v70 = v71;
            ++v115;
          }
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    mlir::InFlightDiagnostic::report(&v112);
  }

  if (v123)
  {
    if (v122 != &v123)
    {
      free(v122);
    }

    v72 = v120;
    if (v120)
    {
      v73 = v121;
      v74 = v120;
      if (v121 != v120)
      {
        do
        {
          v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
        }

        while (v73 != v72);
        v74 = v120;
      }

      v121 = v72;
      operator delete(v74);
    }

    v26 = v118;
    if (!v118)
    {
      goto LABEL_139;
    }

    v75 = v119;
    v28 = v118;
    if (v119 == v118)
    {
      goto LABEL_138;
    }

    do
    {
      v77 = *--v75;
      v76 = v77;
      *v75 = 0;
      if (v77)
      {
        MEMORY[0x1AC55A040](v76, 0x1000C8077774924);
      }
    }

    while (v75 != v26);
    goto LABEL_137;
  }

  return v22;
}

uint64_t mlir::Diagnostic::operator<<<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Type>(uint64_t a1, mlir::detail::OpResultImpl **a2)
{
  v4 = ", ";
  llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(*a2, a2[1], a2[2], a2[3], a1, a1, &v4);
  return a1;
}

uint64_t mlir::func::CallIndirectOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(*(a1 + 72) + 24);
  v13 = &v12;
  v11[0] = v4;
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(&v13, result);
    if (result)
    {
      v6 = *(a1 + 36);
      v7 = (a1 - 16);
      if (!v6)
      {
        v7 = 0;
      }

      v13 = v7;
      v14 = v6;
      mlir::OperandRange::getTypes(v11, &v13);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v13 = (v8 + 32);
      v14 = v9;
      v10 = mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v12, v11, &v13);
      (*(*a2 + 8))(a2, a1, v10);
      return 1;
    }
  }

  return result;
}

BOOL mlir::func::ConstantOp::verifySymbolUses(uint64_t **a1, mlir::SymbolTableCollection *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = (*a1)[2 * ((*(*a1 + 11) >> 23) & 1) + 8];
  Value = mlir::AffineMapAttr::getValue(&v40);
  AttrData = mlir::OpaqueAttr::getAttrData(&Value);
  v6 = v5;
  v7 = *a1;
  v8 = *(*a1 - 1);
  Context = mlir::Attribute::getContext((*a1 + 3));
  LOWORD(v47) = 261;
  Value = AttrData;
  v45 = v6;
  v10 = mlir::StringAttr::get(Context, &Value);
  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, v7, v10);
  if (v11 && *(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    Value = *(v11 + 2 * ((*(v11 + 11) >> 23) & 1) + 9);
    if (mlir::AffineMapAttr::getValue(&Value) == (v8 & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v40 = "reference to function with mismatched type";
    v43 = 259;
    mlir::OpState::emitOpError(a1, &v40, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v53;
        v31 = __p;
        if (v53 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v53 = v29;
        operator delete(v31);
      }

      v24 = v50;
      if (!v50)
      {
        goto LABEL_45;
      }

      v32 = v51;
      v26 = v50;
      if (v51 == v50)
      {
        goto LABEL_44;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v24);
      goto LABEL_43;
    }
  }

  else
  {
    v39 = 257;
    mlir::OpState::emitOpError(a1, v38, &Value);
    if (Value)
    {
      LODWORD(v40) = 3;
      v41 = "reference to undefined function '";
      v42 = 33;
      v12 = &v40;
      v13 = v46;
      if (v47 >= v48)
      {
        if (v46 <= &v40 && v46 + 24 * v47 > &v40)
        {
          v36 = &v40 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v13 = v46;
          v12 = (v46 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v12 = &v40;
          v13 = v46;
        }
      }

      v14 = &v13[24 * v47];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v47;
      if (Value)
      {
        v43 = 261;
        v40 = AttrData;
        v41 = v6;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (Value)
        {
          LODWORD(v40) = 3;
          v41 = "'";
          v42 = 1;
          v16 = &v40;
          v17 = v46;
          if (v47 >= v48)
          {
            if (v46 <= &v40 && v46 + 24 * v47 > &v40)
            {
              v37 = &v40 - v46;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v17 = v46;
              v16 = (v46 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v16 = &v40;
              v17 = v46;
            }
          }

          v18 = &v17[24 * v47];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v47;
        }
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v53;
        v23 = __p;
        if (v53 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v53 = v21;
        operator delete(v23);
      }

      v24 = v50;
      if (!v50)
      {
        goto LABEL_45;
      }

      v25 = v51;
      v26 = v50;
      if (v51 == v50)
      {
LABEL_44:
        v51 = v24;
        operator delete(v26);
LABEL_45:
        if (v46 != v49)
        {
          free(v46);
        }

        return v20;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
LABEL_43:
      v26 = v50;
      goto LABEL_44;
    }
  }

  return v20;
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = 261;
  v21[0] = a3;
  v21[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v21);
  Context = mlir::Attribute::getContext(a2);
  v25 = 261;
  v23 = "sym_name";
  v24 = 8;
  v16 = mlir::StringAttr::get(Context, &v23);
  ZinMirCacheTensors::ZinMirCacheTensors(v26, v16, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v26[0], v26[1]);
  v17 = *(*(*(a2 + 8) + 96) + 8);
  v18 = mlir::TypeAttr::get(a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&v23, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v23, v24);
  *(a2 + 192) = 0;
  v19 = *(a2 + 120);
  v20 = v19 + ((16 * a7) >> 4);
  if (v20 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v20, 16);
    LODWORD(v19) = *(a2 + 120);
  }

  if (a7)
  {
    memcpy((*(a2 + 112) + 16 * v19), a6, 16 * a7);
    LODWORD(v19) = *(a2 + 120);
  }

  *(a2 + 120) = v19 + a7;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::func::CallIndirectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*(v2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v74 = 261;
    v72 = "operand";
    v73 = 7;
    mlir::Operation::emitOpError(v2, &v72, &v78);
    if (v78)
    {
      LODWORD(v75) = 3;
      v76 = " #";
      v77 = 2;
      v4 = &v75;
      v5 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v68 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v5 = v80;
          v4 = (v80 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v4 = &v75;
          v5 = v80;
        }
      }

      v6 = &v5[24 * v81];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      v8 = ++v81;
      if (v78)
      {
        LODWORD(v75) = 5;
        v76 = 0;
        v9 = &v75;
        v10 = v80;
        if (v8 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v8 > &v75)
          {
            v69 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v8 + 1, 24);
            v10 = v80;
            v9 = (v80 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v8 + 1, 24);
            v9 = &v75;
            v10 = v80;
          }
        }

        v11 = &v10[24 * v81];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        v13 = ++v81;
        if (v78)
        {
          LODWORD(v75) = 3;
          v76 = " must be function type, but got ";
          v77 = 32;
          v14 = &v75;
          v15 = v80;
          if (v13 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v13 > &v75)
            {
              v70 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v13 + 1, 24);
              v15 = v80;
              v14 = (v80 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v13 + 1, 24);
              v14 = &v75;
              v15 = v80;
            }
          }

          v16 = &v15[24 * v81];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v81;
          if (v78)
          {
            v18 = &v75;
            mlir::DiagnosticArgument::DiagnosticArgument(&v75, v3);
            v19 = v80;
            if (v81 >= v82)
            {
              if (v80 <= &v75 && v80 + 24 * v81 > &v75)
              {
                v71 = &v75 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                v19 = v80;
                v18 = (v80 + v71);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                v18 = &v75;
                v19 = v80;
              }
            }

            v20 = &v19[24 * v81];
            v21 = *v18;
            *(v20 + 2) = v18[2];
            *v20 = v21;
            ++v81;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v87;
        v25 = __p;
        if (v87 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v87 = v23;
        operator delete(v25);
      }

      v26 = v84;
      if (v84)
      {
        v27 = v85;
        v28 = v84;
        if (v85 != v84)
        {
          do
          {
            v30 = *--v27;
            v29 = v30;
            *v27 = 0;
            if (v30)
            {
              MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
            }
          }

          while (v27 != v26);
          v28 = v84;
        }

        v85 = v26;
        operator delete(v28);
      }

      if (v80 != v83)
      {
        free(v80);
      }
    }

    if (!v22)
    {
      return 0;
    }
  }

  v31 = *this;
  v32 = *(*this + 9);
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    for (i = 0; i != v32; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v33, i);
    }

    v31 = *this;
  }

  v75 = *(*(v31[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Inputs = mlir::FunctionType::getInputs(&v75);
  v37 = v36;
  v38 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v39 = *(v38 + 17);
    v40 = v38[9];
    v41 = v39 - 1;
  }

  else
  {
    v40 = 0;
    v41 = -1;
  }

  v72 = (v40 + 32);
  v73 = v41;
  mlir::OperandRange::getTypes(&v78, &v72);
  if (v37 != v80 - v79)
  {
LABEL_54:
    v72 = "failed to verify that callee input types match argument types";
    v74 = 259;
    mlir::OpState::emitOpError(this, &v72, &v78);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v87;
        v55 = __p;
        if (v87 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v87 = v53;
        operator delete(v55);
      }

      v56 = v84;
      if (!v84)
      {
        goto LABEL_89;
      }

      v57 = v85;
      v58 = v84;
      if (v85 == v84)
      {
        goto LABEL_88;
      }

      do
      {
        v60 = *--v57;
        v59 = v60;
        *v57 = 0;
        if (v60)
        {
          MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
        }
      }

      while (v57 != v56);
      goto LABEL_87;
    }

    return v52;
  }

  if (v37)
  {
    v42 = 8 * v37;
    v43 = v78 + 32 * v79 + 24;
    while (*Inputs == (*(*v43 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      ++Inputs;
      v43 += 32;
      v42 -= 8;
      if (!v42)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_54;
  }

LABEL_46:
  v75 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Results = mlir::FunctionType::getResults(&v75);
  v46 = v45;
  v47 = *(*this + 9);
  v48 = *this - 16;
  if (!v47)
  {
    v48 = 0;
  }

  v72 = v48;
  v73 = v47;
  mlir::OperandRange::getTypes(&v78, &v72);
  v49 = v79;
  if (v46 == v80 - v79)
  {
    if (!v46)
    {
      return 1;
    }

    v50 = v78;
    v51 = 8 * v46;
    while (*Results == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, v49) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      ++Results;
      ++v49;
      v51 -= 8;
      if (!v51)
      {
        return 1;
      }
    }
  }

  v72 = "failed to verify that callee result types match result types";
  v74 = 259;
  mlir::OpState::emitOpError(this, &v72, &v78);
  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
  if (v78)
  {
    mlir::InFlightDiagnostic::report(&v78);
  }

  if (v89 == 1)
  {
    if (v88 != &v89)
    {
      free(v88);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v87;
      v63 = __p;
      if (v87 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v87 = v61;
      operator delete(v63);
    }

    v56 = v84;
    if (!v84)
    {
      goto LABEL_89;
    }

    v64 = v85;
    v58 = v84;
    if (v85 == v84)
    {
LABEL_88:
      v85 = v56;
      operator delete(v58);
LABEL_89:
      if (v80 != v83)
      {
        free(v80);
      }

      return v52;
    }

    do
    {
      v66 = *--v64;
      v65 = v66;
      *v64 = 0;
      if (v66)
      {
        MEMORY[0x1AC55A040](v65, 0x1000C8077774924);
      }
    }

    while (v64 != v56);
LABEL_87:
    v58 = v84;
    goto LABEL_88;
  }

  return v52;
}

BOOL mlir::func::CallIndirectOp::parse(uint64_t a1, unsigned int *a2)
{
  v24[16] = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v23[0] = v24;
  v23[1] = 0x400000000;
  v17[1] = 1;
  v18 = 0;
  v17[0] = &v18;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, v22))
  {
    goto LABEL_12;
  }

  v18 = v22[0];
  v16 = v22[0];
  if (*(*v22[0] + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v6 = (*(*a1 + 16))(a1);
    v15 = 257;
    (*(*a1 + 24))(v22, a1, v6, v14);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, "'callee' must be function type, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v7, &v16);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    goto LABEL_13;
  }

  Results = mlir::FunctionType::getResults(v22);
  mlir::OperationState::addTypes(a2, Results, v11);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v17, v4, (a2 + 4)))
  {
    v14[0] = *v17[0];
    v22[0] = mlir::FunctionType::getInputs(v14);
    v22[1] = v12;
    v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v23, v22, v5, (a2 + 4));
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

LABEL_13:
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  return v9;
}

uint64_t mlir::func::CallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      v43 = 3;
      v44 = "expected DictionaryAttr to set properties";
      v45 = 41;
      v28 = &v43;
      v29 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = v47;
          v28 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v28 = &v43;
          v29 = v47;
        }
      }

      v30 = &v29[24 * v48];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v54;
      v34 = __p;
      if (v54 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v54 = v32;
      operator delete(v34);
    }

    v23 = v51;
    if (!v51)
    {
      goto LABEL_51;
    }

    v35 = v52;
    v25 = v51;
    if (v52 == v51)
    {
      goto LABEL_50;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v23);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v42, "callee", 6uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v46[0] = v10;
  if (v10)
  {
    mlir::OpaqueAttr::getAttrData(v46);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 51;
    v12 = &v43;
    v13 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v13 = v47;
        v12 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v12 = &v43;
        v13 = v47;
      }
    }

    v14 = &v13[24 * v48];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v48;
    if (v46[0])
    {
      v16 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v17 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v17 = v47;
          v16 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v16 = &v43;
          v17 = v47;
        }
      }

      v18 = &v17[24 * v48];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
  }

  if (v55 != &v56)
  {
    free(v55);
  }

  v20 = __p;
  if (__p)
  {
    v21 = v54;
    v22 = __p;
    if (v54 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v54 = v20;
    operator delete(v22);
  }

  v23 = v51;
  if (v51)
  {
    v24 = v52;
    v25 = v51;
    if (v52 == v51)
    {
LABEL_50:
      v52 = v23;
      operator delete(v25);
      goto LABEL_51;
    }

    do
    {
      v27 = *--v24;
      v26 = v27;
      *v24 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v24 != v23);
LABEL_49:
    v25 = v51;
    goto LABEL_50;
  }

LABEL_51:
  if (v47 != v50)
  {
    free(v47);
  }

  return 0;
}

uint64_t mlir::func::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "callee", 6uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v9 = *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a1 : 0;
  v35 = v9;
  if (v9)
  {
    mlir::OpaqueAttr::getAttrData(&v35);
    if (!v10)
    {
      return 1;
    }
  }

  a4(&v35, a5);
  if (v35)
  {
    LODWORD(v31) = 3;
    v32 = "attribute '";
    v33 = 11;
    v11 = &v31;
    v12 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v29 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v12 = v37;
        v11 = (v37 + v29);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v11 = &v31;
        v12 = v37;
      }
    }

    v13 = &v12[24 * v38];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v38;
    if (v35)
    {
      v34 = 261;
      v31 = a2;
      v32 = a3;
      mlir::Diagnostic::operator<<(&v36, &v31);
      if (v35)
      {
        LODWORD(v31) = 3;
        v32 = "' failed to satisfy constraint: flat symbol reference attribute";
        v33 = 63;
        v15 = &v31;
        v16 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v31 && v37 + 24 * v38 > &v31)
          {
            v30 = &v31 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v16 = v37;
            v15 = (v37 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = &v31;
            v16 = v37;
          }
        }

        v17 = &v16[24 * v38];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v38;
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v44;
      v22 = __p;
      if (v44 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v44 = v20;
      operator delete(v22);
    }

    v23 = v41;
    if (v41)
    {
      v24 = v42;
      v25 = v41;
      if (v42 != v41)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v41;
      }

      v42 = v23;
      operator delete(v25);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v19;
}

BOOL mlir::func::CallOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, uint64_t *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (((*(*a1 + 48))(a1, &v38) & 1) == 0)
  {
    return 0;
  }

  v4 = v38;
  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v5 = v38;
  }

  else
  {
    v5 = 0;
  }

  v43 = v5;
  if (v5)
  {
    mlir::OpaqueAttr::getAttrData(&v43);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    *a2 = v7;
    if (v7)
    {
      return 1;
    }
  }

  else
  {
    *a2 = 0;
  }

  v37[16] = 257;
  (*(*a1 + 16))(&v43, a1, v37);
  if (v43)
  {
    LODWORD(v39) = 3;
    v40 = "expected ";
    v41 = 9;
    v9 = &v39;
    v10 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v39 && v45 + 24 * v46 > &v39)
      {
        v34 = &v39 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = v45;
        v9 = (v45 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v9 = &v39;
        v10 = v45;
      }
    }

    v11 = &v10[24 * v46];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v46;
  }

  v39 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FlatSymbolRefAttr]";
  v40 = 73;
  v13 = llvm::StringRef::find(&v39, "DesiredTypeName = ", 0x12uLL, 0);
  if (v43)
  {
    if (v40 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v40;
    }

    v15 = 18;
    if (v40 - v14 < 0x12)
    {
      v15 = v40 - v14;
    }

    v16 = v40 - v14 - v15;
    if (v16 >= v16 - 1)
    {
      --v16;
    }

    v42 = 261;
    v39 += v14 + v15;
    v40 = v16;
    mlir::Diagnostic::operator<<(&v44, &v39);
    if (v43)
    {
      LODWORD(v39) = 3;
      v40 = ", but got: ";
      v41 = 11;
      v17 = &v39;
      v18 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v39 && v45 + 24 * v46 > &v39)
        {
          v35 = &v39 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v18 = v45;
          v17 = (v45 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v17 = &v39;
          v18 = v45;
        }
      }

      v19 = &v18[24 * v46];
      v20 = *v17;
      *(v19 + 2) = v17[2];
      *v19 = v20;
      ++v46;
      if (v43)
      {
        v21 = &v39;
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, v38);
        v22 = v45;
        if (v46 >= v47)
        {
          if (v45 <= &v39 && v45 + 24 * v46 > &v39)
          {
            v36 = &v39 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v22 = v45;
            v21 = (v45 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v21 = &v39;
            v22 = v45;
          }
        }

        v23 = &v22[24 * v46];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v46;
      }
    }
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    mlir::InFlightDiagnostic::report(&v43);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v52;
      v27 = __p;
      if (v52 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v52 = v25;
      operator delete(v27);
    }

    v28 = v49;
    if (v49)
    {
      v29 = v50;
      v30 = v49;
      if (v50 != v49)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v49;
      }

      v50 = v28;
      operator delete(v30);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v8;
}

void mlir::func::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  Context = mlir::Attribute::getContext(a2);
  v17 = 261;
  v16[0] = "callee";
  v16[1] = 6;
  v12 = mlir::StringAttr::get(Context, v16);
  ZinMirCacheTensors::ZinMirCacheTensors(v18, v12, a3);
  mlir::NamedAttrList::push_back(a2 + 112, v18[0], v18[1]);
  v13 = *(a2 + 72);
  if (a5 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a5 + v13, 8);
    v13 = *(a2 + 72);
  }

  if (a5)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      *(v15 + 8 * v14) = mlir::TypeRange::dereference_iterator(a4, v14);
      ++v14;
    }

    while (a5 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a5;
}

BOOL mlir::func::CallOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v1)
  {
    v18[0] = *this;
    if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v1, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 9);
      if (*(*this + 9))
      {
        v4 = (*this - 2);
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'callee'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

BOOL mlir::func::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21[0] = v22;
  v21[1] = 0x400000000;
  Inputs = 0;
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v20, v6))
  {
    goto LABEL_15;
  }

  if (v20)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v20;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v21, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v17 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((v9 = *(a2 + 8), v16[0] = a1, v16[1] = &v17, v16[2] = a2, (v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96))) == 0) || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v16[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v16)))
  {
    Inputs = mlir::FunctionType::getInputs(v16);
    v19 = v11;
    Results = mlir::FunctionType::getResults(v16);
    mlir::OperationState::addTypes(a2, Results, v13);
    v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v21, &Inputs, v8, a2 + 16);
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return v14;
}

BOOL mlir::AsmParser::parseType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  v11 = *a2 + 32 * v9;
  (*(*a1 + 32))(a1, *(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 + 1 != v10)
  {
    v14 = ~v9 + v10;
    v15 = (v11 + 56);
    do
    {
      v17 = (*(*a1 + 16))(a1);
      v18 = v17[4];
      if (v17[3] - v18 > 1uLL)
      {
        *v18 = 8236;
        v17[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v17, ", ", 2uLL);
      }

      v16 = *v15;
      v15 += 4;
      (*(*a1 + 32))(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v14;
    }

    while (v14);
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a1, a3);
}

uint64_t mlir::func::ConstantOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      v43 = 3;
      v44 = "expected DictionaryAttr to set properties";
      v45 = 41;
      v28 = &v43;
      v29 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = v47;
          v28 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v28 = &v43;
          v29 = v47;
        }
      }

      v30 = &v29[24 * v48];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v54;
      v34 = __p;
      if (v54 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v54 = v32;
      operator delete(v34);
    }

    v23 = v51;
    if (!v51)
    {
      goto LABEL_51;
    }

    v35 = v52;
    v25 = v51;
    if (v52 == v51)
    {
      goto LABEL_50;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v23);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v42, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v46[0] = v10;
  if (v10)
  {
    mlir::OpaqueAttr::getAttrData(v46);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 50;
    v12 = &v43;
    v13 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v13 = v47;
        v12 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v12 = &v43;
        v13 = v47;
      }
    }

    v14 = &v13[24 * v48];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v48;
    if (v46[0])
    {
      v16 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v17 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v17 = v47;
          v16 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v16 = &v43;
          v17 = v47;
        }
      }

      v18 = &v17[24 * v48];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
  }

  if (v55 != &v56)
  {
    free(v55);
  }

  v20 = __p;
  if (__p)
  {
    v21 = v54;
    v22 = __p;
    if (v54 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v54 = v20;
    operator delete(v22);
  }

  v23 = v51;
  if (v51)
  {
    v24 = v52;
    v25 = v51;
    if (v52 == v51)
    {
LABEL_50:
      v52 = v23;
      operator delete(v25);
      goto LABEL_51;
    }

    do
    {
      v27 = *--v24;
      v26 = v27;
      *v24 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v24 != v23);
LABEL_49:
    v25 = v51;
    goto LABEL_50;
  }

LABEL_51:
  if (v47 != v50)
  {
    free(v47);
  }

  return 0;
}

BOOL mlir::func::ConstantOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2);
}

void mlir::func::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 256);
  if (!v6)
  {
    operator new();
  }

  *v6 = a4;
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

BOOL mlir::func::ConstantOp::verifyInvariantsImpl(uint64_t **this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v1)
  {
    v16[0] = *this;
    if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v1, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
    {
      if (*(*this + 9))
      {
        v3 = (*this - 2);
      }

      else
      {
        v3 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'value'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
            }
          }

          while (v9 != v8);
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

uint64_t mlir::func::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18 = 0;
  __src = v21;
  v20 = 0x100000000;
  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = a2;
  v5 = mlir::NamedAttrList::get(a2 + 112, **(v4 + 96));
  if (v5)
  {
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v5, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
    {
      goto LABEL_16;
    }
  }

  v6 = (*(*a1 + 32))(a1);
  v8 = mlir::NoneType::get(*v6, v7);
  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v18, v8))
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = v18;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    v10 = __src;
    v11 = v20;
    v12 = *(a2 + 72);
    v13 = v12 + v20;
    if (v13 > *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v13, 8);
      LODWORD(v12) = *(a2 + 72);
    }

    if (v11)
    {
      memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v11);
      LODWORD(v12) = *(a2 + 72);
    }

    *(a2 + 72) = v12 + v11;
    v14 = 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v14;
}

void mlir::func::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v28 = v30;
  v30[0] = "value";
  v30[1] = 5;
  v29 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v28, v29);
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = *(*this + 9);
  v15 = *this - 16;
  if (!v14)
  {
    v15 = 0;
  }

  v27[0] = v15;
  v27[1] = v14;
  mlir::OperandRange::getTypes(&AttrDictionary, v27);
  v16 = v25;
  v17 = v26;
  if (v25 != v26)
  {
    v18 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v25);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v16 + 1; v17 != i; ++i)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = v22[4];
      if (v22[3] - v23 > 1uLL)
      {
        *v23 = 8236;
        v22[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v22, ", ", 2uLL);
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, i);
      (*(*a2 + 32))(a2, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::func::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v73 = v6;
  if (!v6)
  {
    a3(&v77, a4);
    if (v77)
    {
      LODWORD(v74) = 3;
      v75 = "expected DictionaryAttr to set properties";
      v76 = 41;
      v26 = &v74;
      v27 = v79;
      if (v80 >= v81)
      {
        if (v79 <= &v74 && v79 + 24 * v80 > &v74)
        {
          v66 = &v74 - v79;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v27 = v79;
          v26 = (v79 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v26 = &v74;
          v27 = v79;
        }
      }

      v28 = &v27[24 * v80];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v80;
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v86;
      v32 = __p;
      if (v86 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v86 = v30;
      operator delete(v32);
    }

    v21 = v83;
    if (!v83)
    {
      goto LABEL_70;
    }

    v33 = v84;
    v23 = v83;
    if (v84 == v83)
    {
LABEL_69:
      v84 = v21;
      operator delete(v23);
LABEL_70:
      if (v79 != v82)
      {
        free(v79);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v83;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v73, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 54;
        v10 = &v74;
        v11 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v67 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v11 = v79;
            v10 = (v79 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v10 = &v74;
            v11 = v79;
          }
        }

        v12 = &v11[24 * v80];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v80;
        if (v77)
        {
          v14 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v9);
          v15 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v68 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v15 = v79;
              v14 = (v79 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v14 = &v74;
              v15 = v79;
            }
          }

          v16 = &v15[24 * v80];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v86;
        v20 = __p;
        if (v86 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v86 = v18;
        operator delete(v20);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v22 = v84;
      v23 = v83;
      if (v84 == v83)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v73, "function_type", 0xDuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v37 = v36;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 58;
        v38 = &v74;
        v39 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v69 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v39 = v79;
            v38 = (v79 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v38 = &v74;
            v39 = v79;
          }
        }

        v40 = &v39[24 * v80];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v80;
        if (v77)
        {
          v42 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v37);
          v43 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v70 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v43 = v79;
              v42 = (v79 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v42 = &v74;
              v43 = v79;
            }
          }

          v44 = &v43[24 * v80];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v86;
        v48 = __p;
        if (v86 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v86 = v46;
        operator delete(v48);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v49 = v84;
      v23 = v83;
      if (v84 == v83)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v73, "res_attrs", 9uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v53 = v52;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 54;
        v54 = &v74;
        v55 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v71 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v55 = v79;
            v54 = (v79 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v54 = &v74;
            v55 = v79;
          }
        }

        v56 = &v55[24 * v80];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v80;
        if (v77)
        {
          v58 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v53);
          v59 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v72 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v59 = v79;
              v58 = (v79 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v58 = &v74;
              v59 = v79;
            }
          }

          v60 = &v59[24 * v80];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if (v88 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v78);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v73, "sym_name", 8uLL);
  v74 = v62;
  if (!v62)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v73, "sym_visibility", 0xEuLL);
    v74 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v77, a4);
        goto LABEL_91;
      }

      a1[4] = v64;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v77, a4);
LABEL_91:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v74);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
  return 0;
}

uint64_t mlir::func::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v41 = a1;
  v42 = v44;
  v43 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v41, "arg_attrs", 9uLL, *a2);
  v5 = v43;
  if (v43 >= HIDWORD(v43))
  {
    v31 = NamedAttr;
    v32 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
    v4 = v32;
    NamedAttr = v31;
    v5 = v43;
  }

  v6 = (v42 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v43 + 1;
  LODWORD(v43) = v43 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v41, "function_type", 0xDuLL, v8);
    v11 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v33 = v9;
      v34 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v10 = v34;
      v9 = v33;
      v11 = v43;
    }

    v12 = (v42 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v41, "res_attrs", 9uLL, v13);
    v16 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v35 = v14;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v15 = v36;
      v14 = v35;
      v16 = v43;
    }

    v17 = (v42 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v41, "sym_name", 8uLL, v18);
    v21 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v37 = v19;
      v38 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v20 = v38;
      v19 = v37;
      v21 = v43;
    }

    v22 = (v42 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v41, "sym_visibility", 0xEuLL, v23);
    v26 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v39 = v24;
      v40 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v25 = v40;
      v24 = v39;
      v26 = v43;
    }

    v27 = (v42 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v28 = v42;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v42 == v44)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v41, v42, v7);
  v28 = v42;
  if (v42 != v44)
  {
LABEL_24:
    free(v28);
  }

  return DictionaryAttr;
}

unint64_t mlir::func::FuncOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = HIDWORD(a1[4]);
  v14 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v13);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v23[0] = v3;
  v23[1] = v6;
  v20 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v20, v24, v25, v9);
  v21 = v20;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v21, v16, v25, v12);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v22, v17, v25, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v23, v22, v18, v25);
}

uint64_t mlir::func::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::func::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    if (a3 == 13)
    {
      result = memcmp(__s1, "function_type", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[1] = v9;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 14)
    {
      result = memcmp(__s1, "sym_visibility", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[4] = v7;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "sym_name", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[3] = v8;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *result = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[2] = v11;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

void mlir::func::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "function_type", 0xDuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v8);
  }
}

BOOL mlir::func::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "arg_attrs", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v9, "function_type", 0xD, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v10, "res_attrs", 9, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v11, "sym_name", 8, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v12, "sym_visibility", 0xE, a3, a4))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v37 = a1;
    v24 = a4;
    v25 = a5;
    Value = mlir::ArrayAttr::getValue(&v37);
    v27 = mlir::ArrayAttr::getValue(&v37);
    v29 = v27 + 8 * v28;
    if (v29 != Value)
    {
      a5 = v25;
      a4 = v24;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v37, a5);
  if (v37)
  {
    LODWORD(v33) = 3;
    v34 = "attribute '";
    v35 = 11;
    v7 = &v33;
    v8 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v31 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v8 = v39;
        v7 = (v39 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v7 = &v33;
        v8 = v39;
      }
    }

    v9 = &v8[24 * v40];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v40;
    if (v37)
    {
      v36 = 261;
      v33 = a2;
      v34 = a3;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (v37)
      {
        LODWORD(v33) = 3;
        v34 = "' failed to satisfy constraint: Array of dictionary attributes";
        v35 = 62;
        v11 = &v33;
        v12 = v39;
        if (v40 >= v41)
        {
          if (v39 <= &v33 && v39 + 24 * v40 > &v33)
          {
            v32 = &v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v12 = v39;
            v11 = (v39 + v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v11 = &v33;
            v12 = v39;
          }
        }

        v13 = &v12[24 * v40];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v40;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v46;
      v18 = __p;
      if (v46 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v46 = v16;
      operator delete(v18);
    }

    v19 = v43;
    if (v43)
    {
      v20 = v44;
      v21 = v43;
      if (v44 != v43)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v43;
      }

      v44 = v19;
      operator delete(v21);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v15;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v36 = a1;
    v8 = a4;
    v9 = a5;
    Value = mlir::AffineMapAttr::getValue(&v36);
    a5 = v9;
    a4 = v8;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      v32 = a1;
      v11 = mlir::AffineMapAttr::getValue(&v32);
      a5 = v9;
      a4 = v8;
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
      {
        return 1;
      }
    }
  }

  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v12 = &v32;
    v13 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v30 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v13 = v38;
        v12 = (v38 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v12 = &v32;
        v13 = v38;
      }
    }

    v14 = &v13[24 * v39];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    ++v39;
    if (v36)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: type attribute of function type";
        v34 = 63;
        v16 = &v32;
        v17 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v31 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v17 = v38;
            v16 = (v38 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v16 = &v32;
            v17 = v38;
          }
        }

        v18 = &v17[24 * v39];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v39;
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v45;
      v23 = __p;
      if (v45 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v45 = v21;
      operator delete(v23);
    }

    v24 = v42;
    if (v42)
    {
      v25 = v43;
      v26 = v42;
      if (v43 != v42)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v42;
      }

      v43 = v24;
      operator delete(v26);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v20;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: string attribute";
        v29 = 48;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::func::FuncOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ArrayAttr]";
  v38 = 65;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypeAttr]";
  v38 = 64;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::StringAttr]";
  v38 = 66;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::func::FuncOp::verifyInvariantsImpl(uint64_t **this)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (v4)
  {
    v5 = v2[3];
    if (v5)
    {
      v7 = v2[2];
      v8 = v2[4];
      v30[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v4, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v8, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      return mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30);
    }

    v28[0] = "requires attribute 'sym_name'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v36;
        v20 = __p;
        if (v36 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v36 = v18;
        operator delete(v20);
      }

      v21 = v33;
      if (v33)
      {
        v22 = v34;
        v23 = v33;
        if (v34 != v33)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v33;
        }

        v34 = v21;
        operator delete(v23);
      }

      v26 = v31;
      if (v31 != v32)
      {
LABEL_48:
        free(v26);
      }
    }
  }

  else
  {
    v28[0] = "requires attribute 'function_type'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v26 = v31;
      if (v31 != v32)
      {
        goto LABEL_48;
      }
    }
  }

  return v9;
}

BOOL mlir::func::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v11 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0))
  {
    v5 = 0;
    v6 = v8[0];
    if (v8[0] == &v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16);
  v6 = v8[0];
  if (v8[0] != &v9)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = *(v4 + 423);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::FunctionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 75;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}